@interface PKProvisioningProximitySetupAssistantMessage
- (BOOL)configureWithContent:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKProvisioningProximitySetupAssistantMessage)initWithRequestIdentifier:(id)a3 message:(id)a4 conversationIdentifier:(id)a5 isReply:(BOOL)a6;
- (id)description;
@end

@implementation PKProvisioningProximitySetupAssistantMessage

- (PKProvisioningProximitySetupAssistantMessage)initWithRequestIdentifier:(id)a3 message:(id)a4 conversationIdentifier:(id)a5 isReply:(BOOL)a6
{
  v6 = a6;
  v10 = MEMORY[0x1E695DF90];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  [v14 setObject:v13 forKeyedSubscript:@"requestIdentifier"];

  [v14 setObject:v12 forKeyedSubscript:@"content"];
  [v14 setObject:v11 forKeyedSubscript:@"conversationIdentifier"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  [v14 setObject:v15 forKeyedSubscript:@"isReply"];

  v18.receiver = self;
  v18.super_class = PKProvisioningProximitySetupAssistantMessage;
  v16 = [(PKSharingGenericMessage *)&v18 initWithFormat:3 type:2003 genericSharingDict:MEMORY[0x1E695E0F8] appleSharingDict:v14];

  return v16;
}

- (BOOL)configureWithContent:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKProvisioningProximitySetupAssistantMessage;
  if ([(PKSharingGenericMessage *)&v14 configureWithContent:v4])
  {
    v5 = [v4 PKDictionaryForKey:@"apple"];
    v6 = [v5 PKStringForKey:@"requestIdentifier"];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = v6;

    if (self->_requestIdentifier && ([v5 PKDictionaryForKey:@"content"], v8 = objc_claimAutoreleasedReturnValue(), message = self->_message, self->_message = v8, message, self->_message) && (objc_msgSend(v5, "PKStringForKey:", @"conversationIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), conversationIdentifier = self->_conversationIdentifier, self->_conversationIdentifier = v10, conversationIdentifier, self->_conversationIdentifier))
    {
      self->_isReply = [v5 PKBoolForKey:@"isReply"];
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKSharingMessage *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", v4];

  [v3 appendFormat:@"requestIdentifier: '%@'; ", self->_requestIdentifier];
  [v3 appendFormat:@"content: '%@'; ", self->_message];
  [v3 appendFormat:@"conversationIdentifier: '%@'; ", self->_conversationIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isReply];
  [v3 appendFormat:@"isReply: '%@'; ", v5];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self)
    {
      v7.receiver = self;
      v7.super_class = PKProvisioningProximitySetupAssistantMessage;
      LOBYTE(self) = [(PKSharingGenericMessage *)&v7 isEqual:v5];
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

@end
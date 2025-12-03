@interface PKIdentityProofingDisplayMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessage:(id)message;
- (PKIdentityProofingDisplayMessage)initWithCIDVUIProofingDisplayMessage:(id)message;
- (PKIdentityProofingDisplayMessage)initWithCoder:(id)coder;
- (PKIdentityProofingDisplayMessage)initWithDictionary:(id)dictionary;
- (PKIdentityProofingDisplayMessage)initWithTitle:(id)title message:(id)message actions:(id)actions;
- (PKIdentityProofingDisplayMessage)initWithTitle:(id)title message:(id)message primaryButtonTitle:(id)buttonTitle retryableError:(BOOL)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIdentityProofingDisplayMessage

- (PKIdentityProofingDisplayMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actions"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PKIdentityProofingDisplayMessage *)self initWithTitle:v5 message:v6 actions:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (PKIdentityProofingDisplayMessage)initWithCIDVUIProofingDisplayMessage:(id)message
{
  v26 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = messageCopy;
  if (!messageCopy)
  {
    goto LABEL_12;
  }

  selfCopy = [messageCopy title];
  if (!selfCopy)
  {
    goto LABEL_13;
  }

  message = [v5 message];

  if (!message)
  {
LABEL_12:
    selfCopy = 0;
    goto LABEL_13;
  }

  actions = [v5 actions];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(actions, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = actions;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = [PKIdentityProofingDisplayMessageAction alloc];
        v17 = [(PKIdentityProofingDisplayMessageAction *)v16 initWithCIDVUIProofingDisplayMessageAction:v15, v21];
        [v9 safelyAddObject:v17];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  title = [v5 title];
  message2 = [v5 message];
  self = [(PKIdentityProofingDisplayMessage *)self initWithTitle:title message:message2 actions:v9];

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (PKIdentityProofingDisplayMessage)initWithTitle:(id)title message:(id)message actions:(id)actions
{
  titleCopy = title;
  messageCopy = message;
  actionsCopy = actions;
  v19.receiver = self;
  v19.super_class = PKIdentityProofingDisplayMessage;
  v11 = [(PKIdentityProofingDisplayMessage *)&v19 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [messageCopy copy];
    message = v11->_message;
    v11->_message = v14;

    v16 = [actionsCopy copy];
    actions = v11->_actions;
    v11->_actions = v16;
  }

  return v11;
}

- (PKIdentityProofingDisplayMessage)initWithTitle:(id)title message:(id)message primaryButtonTitle:(id)buttonTitle retryableError:(BOOL)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  v12 = [[PKIdentityProofingDisplayMessageAction alloc] initWithTitle:buttonTitleCopy actionType:1 actionURL:0];

  v16[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v14 = [(PKIdentityProofingDisplayMessage *)self initWithTitle:titleCopy message:messageCopy actions:v13];

  return v14;
}

- (PKIdentityProofingDisplayMessage)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v5 = [dictionaryCopy PKStringForKey:@"title"];
    v6 = [dictionaryCopy PKStringForKey:@"message"];
    v7 = [dictionaryCopy PKArrayForKey:@"actions"];

    selfCopy = 0;
    if (v5 && v6 && v7)
    {
      self = [(PKIdentityProofingDisplayMessage *)self initWithTitle:v5 message:v6 actions:v7];
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [PKIdentityProofingDisplayMessage allocWithZone:?];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = [(NSString *)self->_message copyWithZone:zone];
  actions = self->_actions;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__PKIdentityProofingDisplayMessage_copyWithZone___block_invoke;
  v12[3] = &__block_descriptor_40_e48__16__0__PKIdentityProofingDisplayMessageAction_8l;
  v12[4] = zone;
  v9 = [(NSArray *)actions pk_arrayBySafelyApplyingBlock:v12];
  v10 = [(PKIdentityProofingDisplayMessage *)v5 initWithTitle:v6 message:v7 actions:v9];

  return v10;
}

id __49__PKIdentityProofingDisplayMessage_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_title forKeyedSubscript:@"title"];
  [v3 setObject:self->_message forKeyedSubscript:@"message"];
  [v3 setObject:self->_actions forKeyedSubscript:@"actions"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_message forKey:@"message"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIdentityProofingDisplayMessage *)self isEqualToMessage:v5];
  }

  return v6;
}

- (BOOL)isEqualToMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy[1];
  v6 = self->_title;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_14;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_15;
    }
  }

  v11 = messageCopy[2];
  v6 = self->_message;
  v12 = v11;
  v8 = v12;
  if (v6 != v12)
  {
    if (v6 && v12)
    {
      v13 = [(NSString *)v6 isEqualToString:v12];

      if (v13)
      {
        goto LABEL_18;
      }

LABEL_15:
      v14 = 0;
      goto LABEL_16;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_18:
  actions = self->_actions;
  v17 = messageCopy[3];
  if (actions && v17)
  {
    v14 = [(NSArray *)actions isEqual:?];
  }

  else
  {
    v14 = actions == v17;
  }

LABEL_16:

  return v14;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_title];
  [array safelyAddObject:self->_message];
  [array safelyAddObject:self->_actions];
  v4 = PKCombinedHash(17, array);

  return v4;
}

@end
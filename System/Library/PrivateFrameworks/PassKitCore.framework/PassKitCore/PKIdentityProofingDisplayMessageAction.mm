@interface PKIdentityProofingDisplayMessageAction
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessage:(id)message;
- (PKIdentityProofingDisplayMessageAction)initWithCIDVUIProofingDisplayMessageAction:(id)action;
- (PKIdentityProofingDisplayMessageAction)initWithCoder:(id)coder;
- (PKIdentityProofingDisplayMessageAction)initWithDictionary:(id)dictionary;
- (PKIdentityProofingDisplayMessageAction)initWithTitle:(id)title actionType:(int64_t)type actionURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIdentityProofingDisplayMessageAction

- (PKIdentityProofingDisplayMessageAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionType"];
  v7 = PKIdentityProofingDisplayMessageActionTypeFromString(v6);
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];

  if (v5)
  {
    self = [(PKIdentityProofingDisplayMessageAction *)self initWithTitle:v5 actionType:v7 actionURL:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKIdentityProofingDisplayMessageAction)initWithCIDVUIProofingDisplayMessageAction:(id)action
{
  if (action)
  {
    actionCopy = action;
    title = [actionCopy title];
    actionType = [actionCopy actionType];
    if (actionType)
    {
      v7 = 2 * (actionType == 1);
    }

    else
    {
      v7 = 1;
    }

    actionURL = [actionCopy actionURL];

    self = [(PKIdentityProofingDisplayMessageAction *)self initWithTitle:title actionType:v7 actionURL:actionURL];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKIdentityProofingDisplayMessageAction)initWithTitle:(id)title actionType:(int64_t)type actionURL:(id)l
{
  titleCopy = title;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = PKIdentityProofingDisplayMessageAction;
  v10 = [(PKIdentityProofingDisplayMessageAction *)&v16 init];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    v10->_actionType = type;
    v13 = [lCopy copy];
    actionURL = v10->_actionURL;
    v10->_actionURL = v13;
  }

  return v10;
}

- (PKIdentityProofingDisplayMessageAction)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v5 = [dictionaryCopy PKStringForKey:@"title"];
    v6 = [dictionaryCopy PKStringForKey:@"actionType"];
    v7 = PKIdentityProofingDisplayMessageActionTypeFromString(v6);
    v8 = [dictionaryCopy PKURLForKey:@"actionURL"];

    if (v5)
    {
      self = [(PKIdentityProofingDisplayMessageAction *)self initWithTitle:v5 actionType:v7 actionURL:v8];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_title forKeyedSubscript:@"title"];
  actionType = self->_actionType;
  v5 = @"PKIdentityProofingDisplayMessageActionTypeUnknown";
  if (actionType == 1)
  {
    v5 = @"PKIdentityProofingDisplayMessageActionTypeRetryProofing";
  }

  if (actionType == 2)
  {
    v6 = @"PKIdentityProofingDisplayMessageActionTypeOpenURL";
  }

  else
  {
    v6 = v5;
  }

  [v3 setObject:v6 forKeyedSubscript:@"actionType"];
  [v3 setObject:self->_actionURL forKeyedSubscript:@"actionURL"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  actionType = self->_actionType;
  v6 = @"PKIdentityProofingDisplayMessageActionTypeUnknown";
  if (actionType == 1)
  {
    v6 = @"PKIdentityProofingDisplayMessageActionTypeRetryProofing";
  }

  if (actionType == 2)
  {
    v7 = @"PKIdentityProofingDisplayMessageActionTypeOpenURL";
  }

  else
  {
    v7 = v6;
  }

  [coderCopy encodeObject:v7 forKey:@"title"];
  [coderCopy encodeObject:self->_actionURL forKey:@"actionURL"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [PKIdentityProofingDisplayMessageAction allocWithZone:?];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  actionType = self->_actionType;
  v8 = [(NSURL *)self->_actionURL copyWithZone:zone];
  v9 = [(PKIdentityProofingDisplayMessageAction *)v5 initWithTitle:v6 actionType:actionType actionURL:v8];

  return v9;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIdentityProofingDisplayMessageAction *)self isEqualToMessage:v5];
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

LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_14;
    }
  }

  if (self->_actionType != messageCopy[2])
  {
    goto LABEL_14;
  }

  actionURL = self->_actionURL;
  v12 = messageCopy[3];
  if (actionURL && v12)
  {
    v13 = [(NSURL *)actionURL isEqual:?];
  }

  else
  {
    v13 = actionURL == v12;
  }

LABEL_15:

  return v13;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_title];
  actionType = self->_actionType;
  v5 = @"PKIdentityProofingDisplayMessageActionTypeUnknown";
  if (actionType == 1)
  {
    v5 = @"PKIdentityProofingDisplayMessageActionTypeRetryProofing";
  }

  if (actionType == 2)
  {
    v6 = @"PKIdentityProofingDisplayMessageActionTypeOpenURL";
  }

  else
  {
    v6 = v5;
  }

  [array safelyAddObject:v6];
  [array safelyAddObject:self->_actionURL];
  v7 = PKCombinedHash(17, array);

  return v7;
}

@end
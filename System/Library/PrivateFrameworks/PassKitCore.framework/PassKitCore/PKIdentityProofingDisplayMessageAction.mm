@interface PKIdentityProofingDisplayMessageAction
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessage:(id)a3;
- (PKIdentityProofingDisplayMessageAction)initWithCIDVUIProofingDisplayMessageAction:(id)a3;
- (PKIdentityProofingDisplayMessageAction)initWithCoder:(id)a3;
- (PKIdentityProofingDisplayMessageAction)initWithDictionary:(id)a3;
- (PKIdentityProofingDisplayMessageAction)initWithTitle:(id)a3 actionType:(int64_t)a4 actionURL:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKIdentityProofingDisplayMessageAction

- (PKIdentityProofingDisplayMessageAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionType"];
  v7 = PKIdentityProofingDisplayMessageActionTypeFromString(v6);
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];

  if (v5)
  {
    self = [(PKIdentityProofingDisplayMessageAction *)self initWithTitle:v5 actionType:v7 actionURL:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PKIdentityProofingDisplayMessageAction)initWithCIDVUIProofingDisplayMessageAction:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 title];
    v6 = [v4 actionType];
    if (v6)
    {
      v7 = 2 * (v6 == 1);
    }

    else
    {
      v7 = 1;
    }

    v8 = [v4 actionURL];

    self = [(PKIdentityProofingDisplayMessageAction *)self initWithTitle:v5 actionType:v7 actionURL:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PKIdentityProofingDisplayMessageAction)initWithTitle:(id)a3 actionType:(int64_t)a4 actionURL:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = PKIdentityProofingDisplayMessageAction;
  v10 = [(PKIdentityProofingDisplayMessageAction *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    v10->_actionType = a4;
    v13 = [v9 copy];
    actionURL = v10->_actionURL;
    v10->_actionURL = v13;
  }

  return v10;
}

- (PKIdentityProofingDisplayMessageAction)initWithDictionary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 PKStringForKey:@"title"];
    v6 = [v4 PKStringForKey:@"actionType"];
    v7 = PKIdentityProofingDisplayMessageActionTypeFromString(v6);
    v8 = [v4 PKURLForKey:@"actionURL"];

    if (v5)
    {
      self = [(PKIdentityProofingDisplayMessageAction *)self initWithTitle:v5 actionType:v7 actionURL:v8];
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
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

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v8 = a3;
  [v8 encodeObject:title forKey:@"title"];
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

  [v8 encodeObject:v7 forKey:@"title"];
  [v8 encodeObject:self->_actionURL forKey:@"actionURL"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PKIdentityProofingDisplayMessageAction allocWithZone:?];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  actionType = self->_actionType;
  v8 = [(NSURL *)self->_actionURL copyWithZone:a3];
  v9 = [(PKIdentityProofingDisplayMessageAction *)v5 initWithTitle:v6 actionType:actionType actionURL:v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIdentityProofingDisplayMessageAction *)self isEqualToMessage:v5];
  }

  return v6;
}

- (BOOL)isEqualToMessage:(id)a3
{
  v4 = a3;
  v5 = v4[1];
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

  if (self->_actionType != v4[2])
  {
    goto LABEL_14;
  }

  actionURL = self->_actionURL;
  v12 = v4[3];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_title];
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

  [v3 safelyAddObject:v6];
  [v3 safelyAddObject:self->_actionURL];
  v7 = PKCombinedHash(17, v3);

  return v7;
}

@end
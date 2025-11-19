@interface PKIdentityProofingDisplayMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessage:(id)a3;
- (PKIdentityProofingDisplayMessage)initWithCIDVUIProofingDisplayMessage:(id)a3;
- (PKIdentityProofingDisplayMessage)initWithCoder:(id)a3;
- (PKIdentityProofingDisplayMessage)initWithDictionary:(id)a3;
- (PKIdentityProofingDisplayMessage)initWithTitle:(id)a3 message:(id)a4 actions:(id)a5;
- (PKIdentityProofingDisplayMessage)initWithTitle:(id)a3 message:(id)a4 primaryButtonTitle:(id)a5 retryableError:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKIdentityProofingDisplayMessage

- (PKIdentityProofingDisplayMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actions"];

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
    v10 = 0;
  }

  else
  {
    self = [(PKIdentityProofingDisplayMessage *)self initWithTitle:v5 message:v6 actions:v7];
    v10 = self;
  }

  return v10;
}

- (PKIdentityProofingDisplayMessage)initWithCIDVUIProofingDisplayMessage:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = [v4 title];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [v5 message];

  if (!v7)
  {
LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v8 = [v5 actions];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v8;
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

  v18 = [v5 title];
  v19 = [v5 message];
  self = [(PKIdentityProofingDisplayMessage *)self initWithTitle:v18 message:v19 actions:v9];

  v6 = self;
LABEL_13:

  return v6;
}

- (PKIdentityProofingDisplayMessage)initWithTitle:(id)a3 message:(id)a4 actions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PKIdentityProofingDisplayMessage;
  v11 = [(PKIdentityProofingDisplayMessage *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v9 copy];
    message = v11->_message;
    v11->_message = v14;

    v16 = [v10 copy];
    actions = v11->_actions;
    v11->_actions = v16;
  }

  return v11;
}

- (PKIdentityProofingDisplayMessage)initWithTitle:(id)a3 message:(id)a4 primaryButtonTitle:(id)a5 retryableError:(BOOL)a6
{
  v16[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[PKIdentityProofingDisplayMessageAction alloc] initWithTitle:v9 actionType:1 actionURL:0];

  v16[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v14 = [(PKIdentityProofingDisplayMessage *)self initWithTitle:v11 message:v10 actions:v13];

  return v14;
}

- (PKIdentityProofingDisplayMessage)initWithDictionary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 PKStringForKey:@"title"];
    v6 = [v4 PKStringForKey:@"message"];
    v7 = [v4 PKArrayForKey:@"actions"];

    v8 = 0;
    if (v5 && v6 && v7)
    {
      self = [(PKIdentityProofingDisplayMessage *)self initWithTitle:v5 message:v6 actions:v7];
      v8 = self;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PKIdentityProofingDisplayMessage allocWithZone:?];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = [(NSString *)self->_message copyWithZone:a3];
  actions = self->_actions;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__PKIdentityProofingDisplayMessage_copyWithZone___block_invoke;
  v12[3] = &__block_descriptor_40_e48__16__0__PKIdentityProofingDisplayMessageAction_8l;
  v12[4] = a3;
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

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_message forKey:@"message"];
  [v5 encodeObject:self->_actions forKey:@"actions"];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIdentityProofingDisplayMessage *)self isEqualToMessage:v5];
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
      goto LABEL_14;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_15;
    }
  }

  v11 = v4[2];
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
  v17 = v4[3];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_message];
  [v3 safelyAddObject:self->_actions];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end
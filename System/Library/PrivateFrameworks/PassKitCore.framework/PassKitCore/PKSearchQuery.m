@interface PKSearchQuery
- (BOOL)isEqual:(id)a3;
- (PKSearchQuery)initWithCoder:(id)a3;
- (PKSearchQuery)initWithIdentifier:(id)a3 keyboardLanguage:(id)a4;
- (id)_groupTokenOfType:(unint64_t)a3;
- (id)accountUserToken;
- (id)categoryToken;
- (id)dateToken;
- (id)description;
- (id)displayNameToken;
- (id)objectTypeToken;
- (id)peerPaymentSubTypeToken;
- (id)peerPaymentToken;
- (id)rewardsToken;
- (id)tags;
- (id)transactionSources;
- (id)transactionStatuses;
- (id)transactionTypes;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSearchQuery

- (PKSearchQuery)initWithIdentifier:(id)a3 keyboardLanguage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKSearchQuery;
  v9 = [(PKSearchQuery *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_keyboardLanguage, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_tokens forKey:@"tokens"];
  [v5 encodeObject:self->_text forKey:@"text"];
  [v5 encodeObject:self->_keyboardLanguage forKey:@"keyboardLanguage"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeInteger:self->_domain forKey:@"domain"];
}

- (PKSearchQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKSearchQuery;
  v5 = [(PKSearchQuery *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v28 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v26 = objc_opt_class();
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v28 setWithObjects:{v27, v26, v25, v24, v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"tokens"];
    tokens = v5->_tokens;
    v5->_tokens = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardLanguage"];
    keyboardLanguage = v5->_keyboardLanguage;
    v5->_keyboardLanguage = v21;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_domain = [v4 decodeIntegerForKey:@"domain"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"language '%@'; ", self->_keyboardLanguage];
  [v3 appendFormat:@"text: '%@'; ", self->_text];
  [v3 appendFormat:@"tokens: '%@'; ", self->_tokens];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  tokens = self->_tokens;
  v6 = v4[6];
  if (tokens && v6)
  {
    if (([(NSArray *)tokens isEqual:?]& 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (tokens != v6)
  {
    goto LABEL_12;
  }

  text = self->_text;
  v8 = v4[5];
  if (!text || !v8)
  {
    if (text == v8)
    {
      goto LABEL_10;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (([(NSString *)text isEqual:?]& 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v9 = self->_type == v4[4];
LABEL_13:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_text];
  [v3 safelyAddObject:self->_tokens];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (id)_groupTokenOfType:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_tokens;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 group];
          v11 = [v10 type];

          if (v11 == a3)
          {
            v12 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)categoryToken
{
  v2 = PKSearchTokensOfGroupTypeFromTokens(0, self->_tokens);
  v3 = [v2 firstObject];

  return v3;
}

- (id)peerPaymentToken
{
  v2 = PKSearchTokensOfGroupTypeFromTokens(12, self->_tokens);
  v3 = [v2 firstObject];

  return v3;
}

- (id)accountUserToken
{
  v2 = PKSearchTokensOfGroupTypeFromTokens(16, self->_tokens);
  v3 = [v2 firstObject];

  return v3;
}

- (id)dateToken
{
  v2 = PKSearchTokensOfTypeFromTokens(2, self->_tokens);
  v3 = [v2 firstObject];

  return v3;
}

- (id)displayNameToken
{
  v2 = PKSearchTokensOfTypeFromTokens(9, self->_tokens);
  v3 = [v2 firstObject];

  return v3;
}

- (id)objectTypeToken
{
  v2 = PKSearchTokensOfTypeFromTokens(10, self->_tokens);
  v3 = [v2 firstObject];

  return v3;
}

- (id)transactionTypes
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = PKSearchTokensOfTypeFromTokens(3, self->_tokens);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "transactionType")}];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)transactionStatuses
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = PKSearchTokensOfTypeFromTokens(4, self->_tokens);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) transactionStatus];
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
        [v3 addObject:v10];

        if (!v9)
        {
          [v3 addObject:&unk_1F23B4C28];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)transactionSources
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = PKSearchTokensOfTypeFromTokens(5, self->_tokens);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "transactionSource")}];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)peerPaymentSubTypeToken
{
  v2 = PKSearchTokensOfTypeFromTokens(6, self->_tokens);
  v3 = [v2 firstObject];

  return v3;
}

- (id)rewardsToken
{
  v2 = PKSearchTokensOfTypeFromTokens(7, self->_tokens);
  v3 = [v2 firstObject];

  return v3;
}

- (id)tags
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = PKSearchTokensOfTypeFromTokens(8, self->_tokens);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) tag];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

@end
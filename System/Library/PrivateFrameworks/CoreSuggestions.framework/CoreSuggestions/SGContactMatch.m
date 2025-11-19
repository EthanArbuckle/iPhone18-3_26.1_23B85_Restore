@interface SGContactMatch
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContactMatch:(id)a3;
- (SGContactMatch)initWithCoder:(id)a3;
- (SGContactMatch)initWithContact:(id)a3 matchTokens:(id)a4 matchInfo:(id)a5;
- (SGContactMatch)initWithContact:(id)a3 matchingEmailAddressRecordId:(id)a4 matchTokens:(id)a5;
- (SGContactMatch)initWithContact:(id)a3 matchingFieldRecordId:(id)a4 matchTokens:(id)a5;
- (SGContactMatch)initWithContact:(id)a3 matchingNameRecordId:(id)a4 matchTokens:(id)a5;
- (SGContactMatch)initWithContact:(id)a3 matchingPhoneRecordId:(id)a4 matchTokens:(id)a5;
- (SGContactMatch)initWithContact:(id)a3 matchingRecordId:(id)a4 matchType:(int64_t)a5 matchTokens:(id)a6;
- (SGObject)matchingField;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGContactMatch

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  matchingFieldType = self->_matchingFieldType;
  v5 = [v3 initWithFormat:@"<SGContactMatch contact=%@ matchingFieldRecordId=%@ tokens=%@ type=%lld matchesDetails=%@>", self->_contact, self->_matchingFieldRecordId, self->_matchTokens, matchingFieldType, self->_matchedDetails];

  return v5;
}

- (SGObject)matchingField
{
  v24 = *MEMORY[0x1E69E9840];
  matchingFieldType = self->_matchingFieldType;
  v4 = MEMORY[0x1E695E0F0];
  if (matchingFieldType <= 2)
  {
    if (matchingFieldType == 1)
    {
      v5 = [(SGContact *)self->_contact name];
      v6 = [v5 recordId];
      v7 = [v6 isEqualToRecordId:self->_matchingFieldRecordId];

      if (v7)
      {
        v8 = [(SGContact *)self->_contact name];
        v9 = MEMORY[0x1E695E0F0];
        goto LABEL_24;
      }

      v4 = MEMORY[0x1E695E0F0];
    }

    else if (matchingFieldType == 2)
    {
      v4 = [(SGContact *)self->_contact phones];
    }
  }

  else
  {
    switch(matchingFieldType)
    {
      case 3:
        v4 = [(SGContact *)self->_contact emailAddresses];
        break;
      case 4:
        v4 = [(SGContact *)self->_contact postalAddresses];
        break;
      case 5:
        v4 = [(SGContact *)self->_contact socialProfiles];
        break;
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 recordId];
        v16 = [v15 isEqualToRecordId:self->_matchingFieldRecordId];

        if (v16)
        {
          v8 = v14;

          goto LABEL_24;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_24:

  v17 = *MEMORY[0x1E69E9840];

  return v8;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGContactMatch *)self isEqualToContactMatch:v5];
  }

  return v6;
}

- (BOOL)isEqualToContactMatch:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = self->_matchingFieldRecordId;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(SGRecordId *)v5 isEqual:?];

    if (!v7)
    {
LABEL_15:
      v16 = 0;
      goto LABEL_16;
    }
  }

  v8 = self->_contact;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(SGContact *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_15;
    }
  }

  if (self->_matchingFieldType != v4[2])
  {
    goto LABEL_15;
  }

  matchTokens = self->_matchTokens;
  if (matchTokens != v4[4] && ![(NSArray *)matchTokens isEqual:?])
  {
    goto LABEL_15;
  }

  matchedDetails = self->_matchedDetails;
  v13 = [v4 matchedDetails];
  if (matchedDetails == v13)
  {
    v16 = 1;
  }

  else
  {
    v14 = self->_matchedDetails;
    v15 = [v4 matchedDetails];
    v16 = [(SGMatchedDetails *)v14 isEqual:v15];
  }

LABEL_16:
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  contact = self->_contact;
  v5 = a3;
  [v5 encodeObject:contact forKey:@"contact"];
  [v5 encodeObject:self->_matchingFieldRecordId forKey:@"matchingFieldRecordId"];
  [v5 encodeInt64:self->_matchingFieldType forKey:@"matchingFieldType"];
  [v5 encodeObject:self->_matchTokens forKey:@"matchTokens"];
  [v5 encodeObject:self->_matchedDetails forKey:@"matchedDetails"];
}

- (SGContactMatch)initWithCoder:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = SGContactMatch;
  v6 = [(SGContactMatch *)&v23 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [v5 decodeObjectOfClasses:v7 forKey:@"contact"];

    if (v8)
    {
      v9 = v8;
      contact = v6->_contact;
      v6->_contact = v9;
    }

    else
    {
      contact = [MEMORY[0x1E696AAA8] currentHandler];
      [contact handleFailureInMethod:a2 object:v6 file:@"SGContactMatch.m" lineNumber:119 description:{@"nonnull property %s *%s was null when decoded", "SGContact", "contact"}];
    }

    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [v5 decodeObjectOfClasses:v11 forKey:@"matchingFieldRecordId"];
    matchingFieldRecordId = v6->_matchingFieldRecordId;
    v6->_matchingFieldRecordId = v12;

    v6->_matchingFieldType = [v5 decodeInt64ForKey:@"matchingFieldType"];
    v14 = objc_alloc(MEMORY[0x1E695DFD8]);
    v15 = objc_opt_class();
    v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v5 decodeObjectOfClasses:v16 forKey:@"matchTokens"];
    matchTokens = v6->_matchTokens;
    v6->_matchTokens = v17;

    v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v20 = [v5 decodeObjectOfClasses:v19 forKey:@"matchedDetails"];
    matchedDetails = v6->_matchedDetails;
    v6->_matchedDetails = v20;
  }

  return v6;
}

- (SGContactMatch)initWithContact:(id)a3 matchingRecordId:(id)a4 matchType:(int64_t)a5 matchTokens:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"matchingRecordId"}];

LABEL_3:
  v14 = [(SGContactMatch *)self initWithContact:v11 matchingFieldRecordId:v12 matchTokens:v13];
  v15 = v14;
  if (v14)
  {
    v14->_matchingFieldType = a5;
  }

  return v15;
}

- (SGContactMatch)initWithContact:(id)a3 matchingPhoneRecordId:(id)a4 matchTokens:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"matchingPhoneRecordId"}];

LABEL_3:
  v12 = [(SGContactMatch *)self initWithContact:v9 matchingFieldRecordId:v10 matchTokens:v11];
  v13 = v12;
  if (v12)
  {
    v12->_matchingFieldType = 2;
  }

  return v13;
}

- (SGContactMatch)initWithContact:(id)a3 matchingEmailAddressRecordId:(id)a4 matchTokens:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"matchingEmailAddressRecordId"}];

LABEL_3:
  v12 = [(SGContactMatch *)self initWithContact:v9 matchingFieldRecordId:v10 matchTokens:v11];
  v13 = v12;
  if (v12)
  {
    v12->_matchingFieldType = 3;
  }

  return v13;
}

- (SGContactMatch)initWithContact:(id)a3 matchingNameRecordId:(id)a4 matchTokens:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"matchingNameRecordId"}];

LABEL_3:
  v12 = [(SGContactMatch *)self initWithContact:v9 matchingFieldRecordId:v10 matchTokens:v11];
  v13 = v12;
  if (v12)
  {
    v12->_matchingFieldType = 1;
  }

  return v13;
}

- (SGContactMatch)initWithContact:(id)a3 matchingFieldRecordId:(id)a4 matchTokens:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"matchingFieldRecordId"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = SGContactMatch;
  v12 = [(SGContactMatch *)&v22 init];
  if (v12)
  {
    v13 = [v9 copy];
    contact = v12->_contact;
    v12->_contact = v13;

    v15 = [v10 copy];
    matchingFieldRecordId = v12->_matchingFieldRecordId;
    v12->_matchingFieldRecordId = v15;

    v17 = [v11 copy];
    matchTokens = v12->_matchTokens;
    v12->_matchTokens = v17;
  }

  return v12;
}

- (SGContactMatch)initWithContact:(id)a3 matchTokens:(id)a4 matchInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"tokens"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"matchinfoData"}];

LABEL_4:
  v23.receiver = self;
  v23.super_class = SGContactMatch;
  v12 = [(SGContactMatch *)&v23 init];
  if (v12)
  {
    v13 = [v9 copy];
    contact = v12->_contact;
    v12->_contact = v13;

    v15 = [SGFn simpleDedupe:v10];
    matchTokens = v12->_matchTokens;
    v12->_matchTokens = v15;

    v17 = [SGMatchedDetails matchedDetailsWithContact:v9 matchinfoData:v11 tokens:v10];
    matchedDetails = v12->_matchedDetails;
    v12->_matchedDetails = v17;
  }

  return v12;
}

@end
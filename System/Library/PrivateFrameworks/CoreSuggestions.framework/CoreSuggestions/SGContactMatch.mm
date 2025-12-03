@interface SGContactMatch
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContactMatch:(id)match;
- (SGContactMatch)initWithCoder:(id)coder;
- (SGContactMatch)initWithContact:(id)contact matchTokens:(id)tokens matchInfo:(id)info;
- (SGContactMatch)initWithContact:(id)contact matchingEmailAddressRecordId:(id)id matchTokens:(id)tokens;
- (SGContactMatch)initWithContact:(id)contact matchingFieldRecordId:(id)id matchTokens:(id)tokens;
- (SGContactMatch)initWithContact:(id)contact matchingNameRecordId:(id)id matchTokens:(id)tokens;
- (SGContactMatch)initWithContact:(id)contact matchingPhoneRecordId:(id)id matchTokens:(id)tokens;
- (SGContactMatch)initWithContact:(id)contact matchingRecordId:(id)id matchType:(int64_t)type matchTokens:(id)tokens;
- (SGObject)matchingField;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  phones = MEMORY[0x1E695E0F0];
  if (matchingFieldType <= 2)
  {
    if (matchingFieldType == 1)
    {
      name = [(SGContact *)self->_contact name];
      recordId = [name recordId];
      v7 = [recordId isEqualToRecordId:self->_matchingFieldRecordId];

      if (v7)
      {
        name2 = [(SGContact *)self->_contact name];
        v9 = MEMORY[0x1E695E0F0];
        goto LABEL_24;
      }

      phones = MEMORY[0x1E695E0F0];
    }

    else if (matchingFieldType == 2)
    {
      phones = [(SGContact *)self->_contact phones];
    }
  }

  else
  {
    switch(matchingFieldType)
    {
      case 3:
        phones = [(SGContact *)self->_contact emailAddresses];
        break;
      case 4:
        phones = [(SGContact *)self->_contact postalAddresses];
        break;
      case 5:
        phones = [(SGContact *)self->_contact socialProfiles];
        break;
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = phones;
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
        recordId2 = [v14 recordId];
        v16 = [recordId2 isEqualToRecordId:self->_matchingFieldRecordId];

        if (v16)
        {
          name2 = v14;

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

  name2 = 0;
LABEL_24:

  v17 = *MEMORY[0x1E69E9840];

  return name2;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGContactMatch *)self isEqualToContactMatch:v5];
  }

  return v6;
}

- (BOOL)isEqualToContactMatch:(id)match
{
  matchCopy = match;
  if (!matchCopy)
  {
    goto LABEL_15;
  }

  v5 = self->_matchingFieldRecordId;
  v6 = v5;
  if (v5 == matchCopy[1])
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
  if (v8 == matchCopy[3])
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

  if (self->_matchingFieldType != matchCopy[2])
  {
    goto LABEL_15;
  }

  matchTokens = self->_matchTokens;
  if (matchTokens != matchCopy[4] && ![(NSArray *)matchTokens isEqual:?])
  {
    goto LABEL_15;
  }

  matchedDetails = self->_matchedDetails;
  matchedDetails = [matchCopy matchedDetails];
  if (matchedDetails == matchedDetails)
  {
    v16 = 1;
  }

  else
  {
    v14 = self->_matchedDetails;
    matchedDetails2 = [matchCopy matchedDetails];
    v16 = [(SGMatchedDetails *)v14 isEqual:matchedDetails2];
  }

LABEL_16:
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  contact = self->_contact;
  coderCopy = coder;
  [coderCopy encodeObject:contact forKey:@"contact"];
  [coderCopy encodeObject:self->_matchingFieldRecordId forKey:@"matchingFieldRecordId"];
  [coderCopy encodeInt64:self->_matchingFieldType forKey:@"matchingFieldType"];
  [coderCopy encodeObject:self->_matchTokens forKey:@"matchTokens"];
  [coderCopy encodeObject:self->_matchedDetails forKey:@"matchedDetails"];
}

- (SGContactMatch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = SGContactMatch;
  v6 = [(SGContactMatch *)&v23 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"contact"];

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
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"matchingFieldRecordId"];
    matchingFieldRecordId = v6->_matchingFieldRecordId;
    v6->_matchingFieldRecordId = v12;

    v6->_matchingFieldType = [coderCopy decodeInt64ForKey:@"matchingFieldType"];
    v14 = objc_alloc(MEMORY[0x1E695DFD8]);
    v15 = objc_opt_class();
    v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"matchTokens"];
    matchTokens = v6->_matchTokens;
    v6->_matchTokens = v17;

    v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"matchedDetails"];
    matchedDetails = v6->_matchedDetails;
    v6->_matchedDetails = v20;
  }

  return v6;
}

- (SGContactMatch)initWithContact:(id)contact matchingRecordId:(id)id matchType:(int64_t)type matchTokens:(id)tokens
{
  contactCopy = contact;
  idCopy = id;
  tokensCopy = tokens;
  if (contactCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"matchingRecordId"}];

LABEL_3:
  v14 = [(SGContactMatch *)self initWithContact:contactCopy matchingFieldRecordId:idCopy matchTokens:tokensCopy];
  v15 = v14;
  if (v14)
  {
    v14->_matchingFieldType = type;
  }

  return v15;
}

- (SGContactMatch)initWithContact:(id)contact matchingPhoneRecordId:(id)id matchTokens:(id)tokens
{
  contactCopy = contact;
  idCopy = id;
  tokensCopy = tokens;
  if (contactCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"matchingPhoneRecordId"}];

LABEL_3:
  v12 = [(SGContactMatch *)self initWithContact:contactCopy matchingFieldRecordId:idCopy matchTokens:tokensCopy];
  v13 = v12;
  if (v12)
  {
    v12->_matchingFieldType = 2;
  }

  return v13;
}

- (SGContactMatch)initWithContact:(id)contact matchingEmailAddressRecordId:(id)id matchTokens:(id)tokens
{
  contactCopy = contact;
  idCopy = id;
  tokensCopy = tokens;
  if (contactCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"matchingEmailAddressRecordId"}];

LABEL_3:
  v12 = [(SGContactMatch *)self initWithContact:contactCopy matchingFieldRecordId:idCopy matchTokens:tokensCopy];
  v13 = v12;
  if (v12)
  {
    v12->_matchingFieldType = 3;
  }

  return v13;
}

- (SGContactMatch)initWithContact:(id)contact matchingNameRecordId:(id)id matchTokens:(id)tokens
{
  contactCopy = contact;
  idCopy = id;
  tokensCopy = tokens;
  if (contactCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"matchingNameRecordId"}];

LABEL_3:
  v12 = [(SGContactMatch *)self initWithContact:contactCopy matchingFieldRecordId:idCopy matchTokens:tokensCopy];
  v13 = v12;
  if (v12)
  {
    v12->_matchingFieldType = 1;
  }

  return v13;
}

- (SGContactMatch)initWithContact:(id)contact matchingFieldRecordId:(id)id matchTokens:(id)tokens
{
  contactCopy = contact;
  idCopy = id;
  tokensCopy = tokens;
  if (contactCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"matchingFieldRecordId"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = SGContactMatch;
  v12 = [(SGContactMatch *)&v22 init];
  if (v12)
  {
    v13 = [contactCopy copy];
    contact = v12->_contact;
    v12->_contact = v13;

    v15 = [idCopy copy];
    matchingFieldRecordId = v12->_matchingFieldRecordId;
    v12->_matchingFieldRecordId = v15;

    v17 = [tokensCopy copy];
    matchTokens = v12->_matchTokens;
    v12->_matchTokens = v17;
  }

  return v12;
}

- (SGContactMatch)initWithContact:(id)contact matchTokens:(id)tokens matchInfo:(id)info
{
  contactCopy = contact;
  tokensCopy = tokens;
  infoCopy = info;
  if (contactCopy)
  {
    if (tokensCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"tokens"}];

    if (infoCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

  if (!tokensCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (infoCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGContactMatch.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"matchinfoData"}];

LABEL_4:
  v23.receiver = self;
  v23.super_class = SGContactMatch;
  v12 = [(SGContactMatch *)&v23 init];
  if (v12)
  {
    v13 = [contactCopy copy];
    contact = v12->_contact;
    v12->_contact = v13;

    v15 = [SGFn simpleDedupe:tokensCopy];
    matchTokens = v12->_matchTokens;
    v12->_matchTokens = v15;

    v17 = [SGMatchedDetails matchedDetailsWithContact:contactCopy matchinfoData:infoCopy tokens:tokensCopy];
    matchedDetails = v12->_matchedDetails;
    v12->_matchedDetails = v17;
  }

  return v12;
}

@end
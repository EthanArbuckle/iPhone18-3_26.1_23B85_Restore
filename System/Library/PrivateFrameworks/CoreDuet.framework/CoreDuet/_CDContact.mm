@interface _CDContact
+ (_CDContact)contactWithIdentifier:(id)identifier identifierType:(id)type displayName:(id)name personId:(id)id personIdType:(unint64_t)idType;
+ (_CDContact)contactWithIdentifier:(id)identifier type:(unint64_t)type displayName:(id)name personId:(id)id personIdType:(unint64_t)idType;
+ (id)normalizedStringKey:(id)key;
+ (id)predicateForContact:(id)contact;
+ (id)predicateForContactWithPersonId:(id)id personIdType:(unint64_t)type;
+ (id)predicateForContactWithType:(unint64_t)type;
+ (id)typeAsCNContactPropertyKey:(unint64_t)key;
+ (unint64_t)typeFromString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)mayContainPrefix:(id)prefix;
- (BOOL)mayRepresentSamePersonAs:(id)as;
- (NSString)identifierType;
- (_CDContact)initWithCoder:(id)coder;
- (_CDContact)initWithINPerson:(id)person;
- (_CDContact)initWithIdentifier:(id)identifier type:(unint64_t)type customIdentifier:(id)customIdentifier displayName:(id)name displayType:(unint64_t)displayType personId:(id)id personIdType:(unint64_t)idType displayImageURL:(id)self0 participantStatus:(int64_t)self1 contactIdType:(int64_t)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)mergeWithContact:(id)contact;
- (void)setIdentifierType:(id)type;
@end

@implementation _CDContact

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = self->_type - v3 + 32 * v3;
  return self->_personIdType - v4 + 32 * v4;
}

- (_CDContact)initWithINPerson:(id)person
{
  personCopy = person;
  v5 = personCopy;
  if (personCopy)
  {
    selfCopy = [personCopy personHandle];

    if (selfCopy)
    {
      personHandle = [v5 personHandle];
      value = [personHandle value];
      v9 = [value length];

      if (!v9)
      {
        goto LABEL_5;
      }

      personHandle2 = [v5 personHandle];
      value2 = [personHandle2 value];
      v12 = [_CDContactResolver resolveContactIfPossibleFromContactIdentifierString:value2];

      identifier = [v12 identifier];

      if (!identifier)
      {
LABEL_5:
        contactIdentifier = [v5 contactIdentifier];
        v15 = [contactIdentifier length];

        if (v15)
        {
          identifier = [v5 contactIdentifier];
        }

        else
        {
          identifier = 0;
        }
      }

      personHandle3 = [v5 personHandle];
      value3 = [personHandle3 value];
      v18 = [_CDContactResolver normalizedStringFromContactString:value3];

      _stripFZIDPrefix = [v18 _stripFZIDPrefix];

      image = [v5 image];
      _uri = [image _uri];

      v34 = identifier;
      if (_uri)
      {
        _uri2 = [image _uri];
      }

      else
      {
        _uri2 = [image _identifier];

        if (_uri2)
        {
          v22 = MEMORY[0x1E695DFF8];
          _identifier = [image _identifier];
          _uri2 = [v22 URLWithString:_identifier];
        }
      }

      personHandle4 = [v5 personHandle];
      type = [personHandle4 type];
      objc_opt_self();
      if (type == 1)
      {
        v26 = 2;
      }

      else
      {
        v26 = type == 2;
      }

      customIdentifier = [v5 customIdentifier];
      displayName = [v5 displayName];
      suggestionType = [v5 suggestionType];
      objc_opt_self();
      if (suggestionType == 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2 * (suggestionType == 2);
      }

      v31 = 3;
      if (!v34)
      {
        v31 = 0;
      }

      self = [(_CDContact *)self initWithIdentifier:_stripFZIDPrefix type:v26 customIdentifier:customIdentifier displayName:displayName displayType:v30 personId:v34 personIdType:v31 displayImageURL:_uri2];

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (_CDContact)contactWithIdentifier:(id)identifier type:(unint64_t)type displayName:(id)name personId:(id)id personIdType:(unint64_t)idType
{
  idCopy = id;
  nameCopy = name;
  identifierCopy = identifier;
  v14 = [[_CDContact alloc] initWithIdentifier:identifierCopy type:type displayName:nameCopy personId:idCopy personIdType:idType];

  return v14;
}

- (_CDContact)initWithIdentifier:(id)identifier type:(unint64_t)type customIdentifier:(id)customIdentifier displayName:(id)name displayType:(unint64_t)displayType personId:(id)id personIdType:(unint64_t)idType displayImageURL:(id)self0 participantStatus:(int64_t)self1 contactIdType:(int64_t)self2
{
  identifierCopy = identifier;
  customIdentifierCopy = customIdentifier;
  nameCopy = name;
  idCopy = id;
  lCopy = l;
  v27.receiver = self;
  v27.super_class = _CDContact;
  v21 = [(_CDContact *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_identifier, identifier);
    objc_storeStrong(&v22->_customIdentifier, customIdentifier);
    v22->_type = type;
    objc_storeStrong(&v22->_displayName, name);
    v22->_displayType = displayType;
    objc_storeStrong(&v22->_personId, id);
    v22->_personIdType = idType;
    objc_storeStrong(&v22->_displayImageURL, l);
    v22->_participantStatus = status;
    v22->_contactIdType = contactIdType;
  }

  return v22;
}

- (_CDContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = _CDContact;
  v5 = [(_CDContact *)&v26 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"customIdentifier"];
    customIdentifier = v5->_customIdentifier;
    v5->_customIdentifier = v10;

    v5->_type = [coderCopy decodeInt64ForKey:@"type"];
    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"personId"];
    personId = v5->_personId;
    v5->_personId = v13;

    v5->_personIdType = [coderCopy decodeInt64ForKey:@"personIdType"];
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v16;

    v5->_displayType = [coderCopy decodeInt64ForKey:@"displayType"];
    v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"statistics"];
    statistics = v5->_statistics;
    v5->_statistics = v19;

    v5->_participantStatus = [coderCopy decodeInt64ForKey:@"participantStatus"];
    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"displayImageURL"];
    displayImageURL = v5->_displayImageURL;
    v5->_displayImageURL = v22;

    v5->_contactIdType = [coderCopy decodeInt64ForKey:@"contactIdType"];
    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_customIdentifier forKey:@"customIdentifier"];
  [coderCopy encodeInt64:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_personId forKey:@"personId"];
  [coderCopy encodeInt64:self->_personIdType forKey:@"personIdType"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeInt64:self->_displayType forKey:@"displayType"];
  [coderCopy encodeObject:self->_statistics forKey:@"statistics"];
  [coderCopy encodeObject:self->_displayImageURL forKey:@"displayImageURL"];
  [coderCopy encodeInt64:self->_participantStatus forKey:@"participantStatus"];
  [coderCopy encodeInt64:self->_contactIdType forKey:@"contactIdType"];
}

- (id)description
{
  v3 = self->_identifier;
  if (self->_type)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [_CDContact typeAsCNContactPropertyKey:self->_type];
    v6 = [v4 initWithFormat:@"%@=%@", v5, self->_identifier];

    v3 = v6;
  }

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  displayName = self->_displayName;
  v9 = &stru_1F05B9908;
  if (!displayName)
  {
    displayName = &stru_1F05B9908;
  }

  displayName = [v7 initWithFormat:@"'%@'", displayName];
  v11 = self->_personIdType - 1;
  if (v11 <= 2)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:off_1E7368770[v11], self->_personId];
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = meetingStatusToString(self->_participantStatus);
  v14 = [v12 initWithFormat:@"ParticipantStatus=%@", v13];

  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  contactIdType = self->_contactIdType;
  v17 = @"Person";
  if (contactIdType == 1)
  {
    v17 = @"Organization";
  }

  if (contactIdType == 2)
  {
    v18 = @"None";
  }

  else
  {
    v18 = v17;
  }

  v19 = [v15 initWithFormat:@"ContactIdType=%@", v18];
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteString = [(NSURL *)self->_displayImageURL absoluteString];
  v22 = [v20 initWithFormat:@"%@; %@; %@; %@; displayImageURL=%@; %@", v3, displayName, v9, v14, absoluteString, v19];

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_CDContact allocWithZone:?]];
  objc_storeStrong(&v4->_identifier, self->_identifier);
  objc_storeStrong(&v4->_customIdentifier, self->_customIdentifier);
  v4->_type = self->_type;
  objc_storeStrong(&v4->_personId, self->_personId);
  v4->_personIdType = self->_personIdType;
  objc_storeStrong(&v4->_displayName, self->_displayName);
  v4->_displayType = self->_displayType;
  objc_storeStrong(&v4->_displayImageURL, self->_displayImageURL);
  v4->_participantStatus = self->_participantStatus;
  v4->_contactIdType = self->_contactIdType;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v5 = equalCopy;
  v6 = v5;
  if (self->_type != v5->_type || self->_personIdType != v5->_personIdType)
  {
    goto LABEL_7;
  }

  v7 = self->_identifier;
  v8 = v7;
  if (v7 == v6->_identifier)
  {

LABEL_13:
    displayName = self->_displayName;
    if ((displayName == 0) == (v6->_displayName != 0))
    {
      v10 = 1;
    }

    else
    {
      v13 = displayName;
      v14 = v13;
      if (v13 == v6->_displayName)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSString *)v13 isEqual:?];
      }
    }

    goto LABEL_8;
  }

  v9 = [(NSString *)v7 isEqual:?];

  if (v9)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = 0;
LABEL_8:

LABEL_11:
  return v10;
}

- (BOOL)mayRepresentSamePersonAs:(id)as
{
  asCopy = as;
  personIdType = self->_personIdType;
  personIdType = [asCopy personIdType];
  v7 = self->_personIdType;
  if (personIdType == personIdType)
  {
    if (v7)
    {
      if (!self->_personId)
      {
        LOBYTE(personId) = 0;
        goto LABEL_15;
      }

      personId = [asCopy personId];
      if (personId)
      {
        personId = self->_personId;
        personId2 = [asCopy personId];
        LOBYTE(personId) = [(NSString *)personId isEqualToString:personId2];
      }

      else
      {
        LOBYTE(personId) = 0;
      }

      goto LABEL_14;
    }
  }

  else if (v7)
  {
    goto LABEL_9;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    personId = [asCopy identifier];
    identifier2 = identifier;
LABEL_12:
    v13 = personId;
LABEL_13:
    LOBYTE(personId) = [identifier2 isEqualToString:v13];
LABEL_14:

    goto LABEL_15;
  }

LABEL_9:
  if (![asCopy personIdType])
  {
    identifier = [asCopy identifier];

    if (identifier)
    {
      identifier2 = [asCopy identifier];
      personId = identifier2;
      v13 = self->_identifier;
      goto LABEL_13;
    }
  }

  personId = self->_displayName;
  if (personId)
  {
    personId = [asCopy displayName];
    identifier2 = personId;
    goto LABEL_12;
  }

LABEL_15:

  return personId;
}

- (void)mergeWithContact:(id)contact
{
  contactCopy = contact;
  identifier = [contactCopy identifier];
  identifier2 = [(_CDContact *)self identifier];
  v6 = [identifier isEqualToString:identifier2];

  if (!v6)
  {
    goto LABEL_27;
  }

  displayName = [(_CDContact *)self displayName];
  if (!displayName)
  {
    goto LABEL_35;
  }

  v8 = displayName;
  identifier3 = [(_CDContact *)self identifier];
  displayName2 = [(_CDContact *)self displayName];
  v11 = [identifier3 isEqualToString:displayName2];

  if (v11)
  {
LABEL_35:
    displayName3 = [contactCopy displayName];
    if (displayName3)
    {
      v13 = displayName3;
      identifier4 = [contactCopy identifier];
      displayName4 = [contactCopy displayName];
      v16 = [identifier4 isEqualToString:displayName4];

      if ((v16 & 1) == 0)
      {
        displayName5 = [contactCopy displayName];
        [(_CDContact *)self setDisplayName:displayName5];
      }
    }
  }

  personId = [(_CDContact *)self personId];
  if (personId)
  {
  }

  else
  {
    personId2 = [contactCopy personId];
    if (personId2)
    {
      v30 = personId2;
      personIdType = [contactCopy personIdType];

      if (personIdType)
      {
        personId3 = [contactCopy personId];
        [(_CDContact *)self setPersonId:personId3];

        -[_CDContact setPersonIdType:](self, "setPersonIdType:", [contactCopy personIdType]);
      }
    }
  }

  if (![(_CDContact *)self displayType])
  {
    displayType = [contactCopy displayType];
    if (displayType != [(_CDContact *)self displayType])
    {
      -[_CDContact setDisplayType:](self, "setDisplayType:", [contactCopy displayType]);
    }
  }

  customIdentifier = [(_CDContact *)self customIdentifier];
  if (customIdentifier)
  {
    goto LABEL_15;
  }

  customIdentifier2 = [contactCopy customIdentifier];

  if (customIdentifier2)
  {
    customIdentifier = [contactCopy customIdentifier];
    [(_CDContact *)self setCustomIdentifier:customIdentifier];
LABEL_15:
  }

  statistics = [(_CDContact *)self statistics];
  if (statistics)
  {
    v23 = statistics;
    statistics2 = [contactCopy statistics];

    if (statistics2)
    {
      statistics3 = [(_CDContact *)self statistics];
      statistics4 = [contactCopy statistics];
      [statistics3 updateWithStatistics:statistics4];
LABEL_22:

      goto LABEL_23;
    }
  }

  statistics3 = [(_CDContact *)self statistics];
  if (statistics3)
  {
LABEL_23:

    goto LABEL_24;
  }

  statistics5 = [contactCopy statistics];

  if (statistics5)
  {
    statistics3 = [contactCopy statistics];
    statistics4 = [statistics3 copy];
    [(_CDContact *)self setStatistics:statistics4];
    goto LABEL_22;
  }

LABEL_24:
  contactIdType = [(_CDContact *)self contactIdType];
  if (contactIdType != [contactCopy contactIdType] && objc_msgSend(contactCopy, "contactIdType") != 2)
  {
    -[_CDContact setContactIdType:](self, "setContactIdType:", [contactCopy contactIdType]);
  }

LABEL_27:
}

- (BOOL)mayContainPrefix:(id)prefix
{
  v29 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  array = [MEMORY[0x1E695DF70] array];
  identifier = [(_CDContact *)self identifier];
  v7 = [identifier length];

  if (v7)
  {
    identifier2 = [(_CDContact *)self identifier];
    [array addObject:identifier2];
  }

  displayName = [(_CDContact *)self displayName];
  v10 = [displayName length];

  if (v10)
  {
    displayName2 = [(_CDContact *)self displayName];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v13 = [displayName2 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
    [array addObjectsFromArray:v13];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = array;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v18 length];
        if (v19 >= [prefixCopy length])
        {
          v20 = [v18 substringToIndex:{objc_msgSend(prefixCopy, "length")}];
          v21 = [v20 compare:prefixCopy options:129];

          if (!v21)
          {
            LOBYTE(v15) = 1;
            goto LABEL_16;
          }
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)predicateForContactWithType:(unint64_t)type
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v5 = [v3 predicateWithFormat:@"type == %@", v4];

  return v5;
}

+ (id)predicateForContactWithPersonId:(id)id personIdType:(unint64_t)type
{
  v15[2] = *MEMORY[0x1E69E9840];
  idCopy = id;
  v6 = MEMORY[0x1E696AE18];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v8 = [v6 predicateWithFormat:@"personIdType == %@", v7];

  if (type)
  {
    idCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"personId == %@", idCopy];
    v10 = MEMORY[0x1E696AB28];
    v15[0] = v8;
    v15[1] = idCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];

    v8 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)predicateForContact:(id)contact
{
  contactCopy = contact;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [self predicateForContactWithType:{objc_msgSend(contactCopy, "type")}];
  [array addObject:v6];

  personId = [contactCopy personId];
  v8 = [self predicateForContactWithPersonId:personId personIdType:{objc_msgSend(contactCopy, "personIdType")}];
  [array addObject:v8];

  identifier = [contactCopy identifier];
  v10 = [self predicateForContactWithIdentifier:identifier];
  [array addObject:v10];

  displayName = [contactCopy displayName];
  v12 = [displayName length];

  if (v12)
  {
    displayName2 = [contactCopy displayName];
    v14 = [self predicateForContactWithDisplayName:displayName2];
    [array addObject:v14];
  }

  v15 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];

  return v15;
}

+ (_CDContact)contactWithIdentifier:(id)identifier identifierType:(id)type displayName:(id)name personId:(id)id personIdType:(unint64_t)idType
{
  idCopy = id;
  nameCopy = name;
  identifierCopy = identifier;
  v14 = [_CDContact contactWithIdentifier:identifierCopy type:[_CDContact typeFromString:type] displayName:nameCopy personId:idCopy personIdType:idType];

  return v14;
}

- (NSString)identifierType
{
  type = [(_CDContact *)self type];

  return [_CDContact typeAsCNContactPropertyKey:type];
}

- (void)setIdentifierType:(id)type
{
  v4 = [_CDContact typeFromString:type];

  [(_CDContact *)self setType:v4];
}

+ (id)normalizedStringKey:(id)key
{
  lowercaseString = [key lowercaseString];
  if (!lowercaseString)
  {
    lowercaseString = @"<NIL>";
  }

  return lowercaseString;
}

+ (unint64_t)typeFromString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52___CDContact_BackwardCompatability__typeFromString___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (typeFromString__onceToken != -1)
    {
      dispatch_once(&typeFromString__onceToken, block);
    }

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [stringCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    v7 = [self normalizedStringKey:v6];

    v8 = [typeFromString__lookup objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      unsignedIntegerValue = [v8 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

+ (id)typeAsCNContactPropertyKey:(unint64_t)key
{
  v3 = 0;
  if (key <= 3)
  {
    switch(key)
    {
      case 1uLL:
        v3 = getCNContactPhoneNumbersKey();
        break;
      case 2uLL:
        v3 = getCNContactEmailAddressesKey();
        break;
      case 3uLL:
        v3 = getCNContactInstantMessageAddressesKey();
        break;
    }
  }

  else if (key > 5)
  {
    if (key == 6)
    {
      v3 = getCNContactUrlAddressesKey();
    }

    else if (key == 7)
    {
      v3 = getCNContactPostalAddressesKey();
    }
  }

  else
  {
    if (key == 4)
    {
      getCNContactGivenNameKey();
    }

    else
    {
      getCNContactSocialProfilesKey();
    }
    v3 = ;
  }

  return v3;
}

@end
@interface _CDContact
+ (_CDContact)contactWithIdentifier:(id)a3 identifierType:(id)a4 displayName:(id)a5 personId:(id)a6 personIdType:(unint64_t)a7;
+ (_CDContact)contactWithIdentifier:(id)a3 type:(unint64_t)a4 displayName:(id)a5 personId:(id)a6 personIdType:(unint64_t)a7;
+ (id)normalizedStringKey:(id)a3;
+ (id)predicateForContact:(id)a3;
+ (id)predicateForContactWithPersonId:(id)a3 personIdType:(unint64_t)a4;
+ (id)predicateForContactWithType:(unint64_t)a3;
+ (id)typeAsCNContactPropertyKey:(unint64_t)a3;
+ (unint64_t)typeFromString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)mayContainPrefix:(id)a3;
- (BOOL)mayRepresentSamePersonAs:(id)a3;
- (NSString)identifierType;
- (_CDContact)initWithCoder:(id)a3;
- (_CDContact)initWithINPerson:(id)a3;
- (_CDContact)initWithIdentifier:(id)a3 type:(unint64_t)a4 customIdentifier:(id)a5 displayName:(id)a6 displayType:(unint64_t)a7 personId:(id)a8 personIdType:(unint64_t)a9 displayImageURL:(id)a10 participantStatus:(int64_t)a11 contactIdType:(int64_t)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)mergeWithContact:(id)a3;
- (void)setIdentifierType:(id)a3;
@end

@implementation _CDContact

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = self->_type - v3 + 32 * v3;
  return self->_personIdType - v4 + 32 * v4;
}

- (_CDContact)initWithINPerson:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 personHandle];

    if (v6)
    {
      v7 = [v5 personHandle];
      v8 = [v7 value];
      v9 = [v8 length];

      if (!v9)
      {
        goto LABEL_5;
      }

      v10 = [v5 personHandle];
      v11 = [v10 value];
      v12 = [_CDContactResolver resolveContactIfPossibleFromContactIdentifierString:v11];

      v13 = [v12 identifier];

      if (!v13)
      {
LABEL_5:
        v14 = [v5 contactIdentifier];
        v15 = [v14 length];

        if (v15)
        {
          v13 = [v5 contactIdentifier];
        }

        else
        {
          v13 = 0;
        }
      }

      v16 = [v5 personHandle];
      v17 = [v16 value];
      v18 = [_CDContactResolver normalizedStringFromContactString:v17];

      v33 = [v18 _stripFZIDPrefix];

      v19 = [v5 image];
      v20 = [v19 _uri];

      v34 = v13;
      if (v20)
      {
        v21 = [v19 _uri];
      }

      else
      {
        v21 = [v19 _identifier];

        if (v21)
        {
          v22 = MEMORY[0x1E695DFF8];
          v23 = [v19 _identifier];
          v21 = [v22 URLWithString:v23];
        }
      }

      v24 = [v5 personHandle];
      v25 = [v24 type];
      objc_opt_self();
      if (v25 == 1)
      {
        v26 = 2;
      }

      else
      {
        v26 = v25 == 2;
      }

      v27 = [v5 customIdentifier];
      v28 = [v5 displayName];
      v29 = [v5 suggestionType];
      objc_opt_self();
      if (v29 == 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2 * (v29 == 2);
      }

      v31 = 3;
      if (!v34)
      {
        v31 = 0;
      }

      self = [(_CDContact *)self initWithIdentifier:v33 type:v26 customIdentifier:v27 displayName:v28 displayType:v30 personId:v34 personIdType:v31 displayImageURL:v21];

      v6 = self;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (_CDContact)contactWithIdentifier:(id)a3 type:(unint64_t)a4 displayName:(id)a5 personId:(id)a6 personIdType:(unint64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [[_CDContact alloc] initWithIdentifier:v13 type:a4 displayName:v12 personId:v11 personIdType:a7];

  return v14;
}

- (_CDContact)initWithIdentifier:(id)a3 type:(unint64_t)a4 customIdentifier:(id)a5 displayName:(id)a6 displayType:(unint64_t)a7 personId:(id)a8 personIdType:(unint64_t)a9 displayImageURL:(id)a10 participantStatus:(int64_t)a11 contactIdType:(int64_t)a12
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v26 = a8;
  v20 = a10;
  v27.receiver = self;
  v27.super_class = _CDContact;
  v21 = [(_CDContact *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_identifier, a3);
    objc_storeStrong(&v22->_customIdentifier, a5);
    v22->_type = a4;
    objc_storeStrong(&v22->_displayName, a6);
    v22->_displayType = a7;
    objc_storeStrong(&v22->_personId, a8);
    v22->_personIdType = a9;
    objc_storeStrong(&v22->_displayImageURL, a10);
    v22->_participantStatus = a11;
    v22->_contactIdType = a12;
  }

  return v22;
}

- (_CDContact)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = _CDContact;
  v5 = [(_CDContact *)&v26 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"customIdentifier"];
    customIdentifier = v5->_customIdentifier;
    v5->_customIdentifier = v10;

    v5->_type = [v4 decodeInt64ForKey:@"type"];
    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"personId"];
    personId = v5->_personId;
    v5->_personId = v13;

    v5->_personIdType = [v4 decodeInt64ForKey:@"personIdType"];
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v16;

    v5->_displayType = [v4 decodeInt64ForKey:@"displayType"];
    v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"statistics"];
    statistics = v5->_statistics;
    v5->_statistics = v19;

    v5->_participantStatus = [v4 decodeInt64ForKey:@"participantStatus"];
    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"displayImageURL"];
    displayImageURL = v5->_displayImageURL;
    v5->_displayImageURL = v22;

    v5->_contactIdType = [v4 decodeInt64ForKey:@"contactIdType"];
    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_customIdentifier forKey:@"customIdentifier"];
  [v5 encodeInt64:self->_type forKey:@"type"];
  [v5 encodeObject:self->_personId forKey:@"personId"];
  [v5 encodeInt64:self->_personIdType forKey:@"personIdType"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeInt64:self->_displayType forKey:@"displayType"];
  [v5 encodeObject:self->_statistics forKey:@"statistics"];
  [v5 encodeObject:self->_displayImageURL forKey:@"displayImageURL"];
  [v5 encodeInt64:self->_participantStatus forKey:@"participantStatus"];
  [v5 encodeInt64:self->_contactIdType forKey:@"contactIdType"];
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

  v10 = [v7 initWithFormat:@"'%@'", displayName];
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
  v21 = [(NSURL *)self->_displayImageURL absoluteString];
  v22 = [v20 initWithFormat:@"%@; %@; %@; %@; displayImageURL=%@; %@", v3, v10, v9, v14, v21, v19];

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
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

- (BOOL)mayRepresentSamePersonAs:(id)a3
{
  v4 = a3;
  personIdType = self->_personIdType;
  v6 = [v4 personIdType];
  v7 = self->_personIdType;
  if (personIdType == v6)
  {
    if (v7)
    {
      if (!self->_personId)
      {
        LOBYTE(personId) = 0;
        goto LABEL_15;
      }

      v8 = [v4 personId];
      if (v8)
      {
        personId = self->_personId;
        v9 = [v4 personId];
        LOBYTE(personId) = [(NSString *)personId isEqualToString:v9];
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
    v8 = [v4 identifier];
    v12 = identifier;
LABEL_12:
    v13 = v8;
LABEL_13:
    LOBYTE(personId) = [v12 isEqualToString:v13];
LABEL_14:

    goto LABEL_15;
  }

LABEL_9:
  if (![v4 personIdType])
  {
    v15 = [v4 identifier];

    if (v15)
    {
      v12 = [v4 identifier];
      v8 = v12;
      v13 = self->_identifier;
      goto LABEL_13;
    }
  }

  personId = self->_displayName;
  if (personId)
  {
    v8 = [v4 displayName];
    v12 = personId;
    goto LABEL_12;
  }

LABEL_15:

  return personId;
}

- (void)mergeWithContact:(id)a3
{
  v33 = a3;
  v4 = [v33 identifier];
  v5 = [(_CDContact *)self identifier];
  v6 = [v4 isEqualToString:v5];

  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = [(_CDContact *)self displayName];
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = v7;
  v9 = [(_CDContact *)self identifier];
  v10 = [(_CDContact *)self displayName];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
LABEL_35:
    v12 = [v33 displayName];
    if (v12)
    {
      v13 = v12;
      v14 = [v33 identifier];
      v15 = [v33 displayName];
      v16 = [v14 isEqualToString:v15];

      if ((v16 & 1) == 0)
      {
        v17 = [v33 displayName];
        [(_CDContact *)self setDisplayName:v17];
      }
    }
  }

  v18 = [(_CDContact *)self personId];
  if (v18)
  {
  }

  else
  {
    v29 = [v33 personId];
    if (v29)
    {
      v30 = v29;
      v31 = [v33 personIdType];

      if (v31)
      {
        v32 = [v33 personId];
        [(_CDContact *)self setPersonId:v32];

        -[_CDContact setPersonIdType:](self, "setPersonIdType:", [v33 personIdType]);
      }
    }
  }

  if (![(_CDContact *)self displayType])
  {
    v19 = [v33 displayType];
    if (v19 != [(_CDContact *)self displayType])
    {
      -[_CDContact setDisplayType:](self, "setDisplayType:", [v33 displayType]);
    }
  }

  v20 = [(_CDContact *)self customIdentifier];
  if (v20)
  {
    goto LABEL_15;
  }

  v21 = [v33 customIdentifier];

  if (v21)
  {
    v20 = [v33 customIdentifier];
    [(_CDContact *)self setCustomIdentifier:v20];
LABEL_15:
  }

  v22 = [(_CDContact *)self statistics];
  if (v22)
  {
    v23 = v22;
    v24 = [v33 statistics];

    if (v24)
    {
      v25 = [(_CDContact *)self statistics];
      v26 = [v33 statistics];
      [v25 updateWithStatistics:v26];
LABEL_22:

      goto LABEL_23;
    }
  }

  v25 = [(_CDContact *)self statistics];
  if (v25)
  {
LABEL_23:

    goto LABEL_24;
  }

  v27 = [v33 statistics];

  if (v27)
  {
    v25 = [v33 statistics];
    v26 = [v25 copy];
    [(_CDContact *)self setStatistics:v26];
    goto LABEL_22;
  }

LABEL_24:
  v28 = [(_CDContact *)self contactIdType];
  if (v28 != [v33 contactIdType] && objc_msgSend(v33, "contactIdType") != 2)
  {
    -[_CDContact setContactIdType:](self, "setContactIdType:", [v33 contactIdType]);
  }

LABEL_27:
}

- (BOOL)mayContainPrefix:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(_CDContact *)self identifier];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(_CDContact *)self identifier];
    [v5 addObject:v8];
  }

  v9 = [(_CDContact *)self displayName];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(_CDContact *)self displayName];
    v12 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v13 = [v11 componentsSeparatedByCharactersInSet:v12];
    [v5 addObjectsFromArray:v13];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v5;
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
        if (v19 >= [v4 length])
        {
          v20 = [v18 substringToIndex:{objc_msgSend(v4, "length")}];
          v21 = [v20 compare:v4 options:129];

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

+ (id)predicateForContactWithType:(unint64_t)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [v3 predicateWithFormat:@"type == %@", v4];

  return v5;
}

+ (id)predicateForContactWithPersonId:(id)a3 personIdType:(unint64_t)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E696AE18];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v8 = [v6 predicateWithFormat:@"personIdType == %@", v7];

  if (a4)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personId == %@", v5];
    v10 = MEMORY[0x1E696AB28];
    v15[0] = v8;
    v15[1] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];

    v8 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)predicateForContact:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [a1 predicateForContactWithType:{objc_msgSend(v4, "type")}];
  [v5 addObject:v6];

  v7 = [v4 personId];
  v8 = [a1 predicateForContactWithPersonId:v7 personIdType:{objc_msgSend(v4, "personIdType")}];
  [v5 addObject:v8];

  v9 = [v4 identifier];
  v10 = [a1 predicateForContactWithIdentifier:v9];
  [v5 addObject:v10];

  v11 = [v4 displayName];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v4 displayName];
    v14 = [a1 predicateForContactWithDisplayName:v13];
    [v5 addObject:v14];
  }

  v15 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v5];

  return v15;
}

+ (_CDContact)contactWithIdentifier:(id)a3 identifierType:(id)a4 displayName:(id)a5 personId:(id)a6 personIdType:(unint64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [_CDContact contactWithIdentifier:v13 type:[_CDContact typeFromString:a4] displayName:v12 personId:v11 personIdType:a7];

  return v14;
}

- (NSString)identifierType
{
  v2 = [(_CDContact *)self type];

  return [_CDContact typeAsCNContactPropertyKey:v2];
}

- (void)setIdentifierType:(id)a3
{
  v4 = [_CDContact typeFromString:a3];

  [(_CDContact *)self setType:v4];
}

+ (id)normalizedStringKey:(id)a3
{
  v3 = [a3 lowercaseString];
  if (!v3)
  {
    v3 = @"<NIL>";
  }

  return v3;
}

+ (unint64_t)typeFromString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52___CDContact_BackwardCompatability__typeFromString___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (typeFromString__onceToken != -1)
    {
      dispatch_once(&typeFromString__onceToken, block);
    }

    v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];
    v7 = [a1 normalizedStringKey:v6];

    v8 = [typeFromString__lookup objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 unsignedIntegerValue];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)typeAsCNContactPropertyKey:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 3)
  {
    switch(a3)
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

  else if (a3 > 5)
  {
    if (a3 == 6)
    {
      v3 = getCNContactUrlAddressesKey();
    }

    else if (a3 == 7)
    {
      v3 = getCNContactPostalAddressesKey();
    }
  }

  else
  {
    if (a3 == 4)
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
@interface SGRealtimeContact
+ (id)realtimeContactForNewContact:(id)contact;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRealtimeContact:(id)contact;
- (NSString)description;
- (SGRealtimeContact)initWithCoder:(id)coder;
- (SGRealtimeContact)initWithState:(int)state updatedFields:(int)fields contact:(id)contact identifier:(id)identifier;
- (id)markedAsHarvested;
- (void)encodeWithCoder:(id)coder;
- (void)setExtractionInfo;
@end

@implementation SGRealtimeContact

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGRealtimeContact state=%i identifier=%@\ncontact = %@\n>", self->_state, self->_cnContactIdentifier, self->_contact];

  return v2;
}

- (void)setExtractionInfo
{
  v110 = *MEMORY[0x1E69E9840];
  name = [(SGContact *)self->_contact name];
  if (name)
  {
    name2 = [(SGContact *)self->_contact name];
    extractionInfo = [name2 extractionInfo];
    extractionType = [extractionInfo extractionType];
  }

  else
  {
    extractionType = 0;
  }

  v7 = objc_opt_new();
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  selfCopy = self;
  phones = [(SGContact *)self->_contact phones];
  v9 = [phones countByEnumeratingWithState:&v102 objects:v109 count:16];
  __asm { FMOV            V0.2S, #1.0 }

  v88 = DWORD1(_Q0);
  if (v9)
  {
    extractionInfo = v9;
    v15 = *v103;
    *&_Q0 = 0;
    v89 = _Q0;
    do
    {
      for (i = 0; i != extractionInfo; i = i + 1)
      {
        if (*v103 != v15)
        {
          objc_enumerationMutation(phones);
        }

        v17 = *(*(&v102 + 1) + 8 * i);
        extractionInfo2 = [v17 extractionInfo];
        extractionType |= [extractionInfo2 extractionType];

        extractionInfo3 = [v17 extractionInfo];
        confidence = [extractionInfo3 confidence];
        [confidence floatValue];
        *(&v21 + 1) = *(&v89 + 1);
        *&v21 = vadd_f32(*&v89, __PAIR64__(v88, v22));
        v89 = v21;

        extractionInfo4 = [v17 extractionInfo];
        modelVersion = [extractionInfo4 modelVersion];
        v25 = modelVersion;
        if (modelVersion)
        {
          v26 = modelVersion;
        }

        else
        {
          v26 = &unk_1F38742C8;
        }

        [v7 addObject:v26];
      }

      extractionInfo = [phones countByEnumeratingWithState:&v102 objects:v109 count:16];
    }

    while (extractionInfo);
  }

  else
  {
    *&_Q0 = 0;
    v89 = _Q0;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  postalAddresses = [(SGContact *)selfCopy->_contact postalAddresses];
  v28 = [postalAddresses countByEnumeratingWithState:&v98 objects:v108 count:16];
  if (v28)
  {
    extractionInfo = v28;
    v29 = *v99;
    do
    {
      for (j = 0; j != extractionInfo; j = j + 1)
      {
        if (*v99 != v29)
        {
          objc_enumerationMutation(postalAddresses);
        }

        v31 = *(*(&v98 + 1) + 8 * j);
        extractionInfo5 = [v31 extractionInfo];
        extractionType |= [extractionInfo5 extractionType];

        extractionInfo6 = [v31 extractionInfo];
        confidence2 = [extractionInfo6 confidence];
        [confidence2 floatValue];
        *(&v35 + 1) = *(&v89 + 1);
        *&v35 = vadd_f32(*&v89, __PAIR64__(v88, v36));
        v89 = v35;

        extractionInfo7 = [v31 extractionInfo];
        modelVersion2 = [extractionInfo7 modelVersion];
        v39 = modelVersion2;
        if (modelVersion2)
        {
          v40 = modelVersion2;
        }

        else
        {
          v40 = &unk_1F38742C8;
        }

        [v7 addObject:v40];
      }

      extractionInfo = [postalAddresses countByEnumeratingWithState:&v98 objects:v108 count:16];
    }

    while (extractionInfo);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  emailAddresses = [(SGContact *)selfCopy->_contact emailAddresses];
  v42 = [emailAddresses countByEnumeratingWithState:&v94 objects:v107 count:16];
  if (v42)
  {
    extractionInfo = v42;
    v43 = *v95;
    do
    {
      for (k = 0; k != extractionInfo; k = k + 1)
      {
        if (*v95 != v43)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v45 = *(*(&v94 + 1) + 8 * k);
        extractionInfo8 = [v45 extractionInfo];
        extractionType |= [extractionInfo8 extractionType];

        extractionInfo9 = [v45 extractionInfo];
        confidence3 = [extractionInfo9 confidence];
        [confidence3 floatValue];
        *(&v49 + 1) = *(&v89 + 1);
        *&v49 = vadd_f32(*&v89, __PAIR64__(v88, v50));
        v89 = v49;

        extractionInfo10 = [v45 extractionInfo];
        modelVersion3 = [extractionInfo10 modelVersion];
        v53 = modelVersion3;
        if (modelVersion3)
        {
          v54 = modelVersion3;
        }

        else
        {
          v54 = &unk_1F38742C8;
        }

        [v7 addObject:v54];
      }

      extractionInfo = [emailAddresses countByEnumeratingWithState:&v94 objects:v107 count:16];
    }

    while (extractionInfo);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  socialProfiles = [(SGContact *)selfCopy->_contact socialProfiles];
  v56 = [socialProfiles countByEnumeratingWithState:&v90 objects:v106 count:16];
  if (v56)
  {
    extractionInfo = v56;
    v57 = *v91;
    do
    {
      for (m = 0; m != extractionInfo; m = m + 1)
      {
        if (*v91 != v57)
        {
          objc_enumerationMutation(socialProfiles);
        }

        v59 = *(*(&v90 + 1) + 8 * m);
        extractionInfo11 = [v59 extractionInfo];
        extractionType |= [extractionInfo11 extractionType];

        extractionInfo12 = [v59 extractionInfo];
        confidence4 = [extractionInfo12 confidence];
        [confidence4 floatValue];
        *(&v63 + 1) = *(&v89 + 1);
        *&v63 = vadd_f32(*&v89, __PAIR64__(v88, v64));
        v89 = v63;

        extractionInfo13 = [v59 extractionInfo];
        modelVersion4 = [extractionInfo13 modelVersion];
        v67 = modelVersion4;
        if (modelVersion4)
        {
          v68 = modelVersion4;
        }

        else
        {
          v68 = &unk_1F38742C8;
        }

        [v7 addObject:v68];
      }

      extractionInfo = [socialProfiles countByEnumeratingWithState:&v90 objects:v106 count:16];
    }

    while (extractionInfo);
  }

  birthday = [(SGContact *)selfCopy->_contact birthday];

  if (birthday)
  {
    birthday2 = [(SGContact *)selfCopy->_contact birthday];
    extractionInfo14 = [birthday2 extractionInfo];
    extractionType |= [extractionInfo14 extractionType];

    birthday3 = [(SGContact *)selfCopy->_contact birthday];
    extractionInfo15 = [birthday3 extractionInfo];
    confidence5 = [extractionInfo15 confidence];
    [confidence5 floatValue];
    *&v89 = vadd_f32(*&v89, __PAIR64__(v88, v75));

    birthday4 = [(SGContact *)selfCopy->_contact birthday];
    extractionInfo = [birthday4 extractionInfo];
    modelVersion5 = [extractionInfo modelVersion];
    v78 = modelVersion5;
    if (modelVersion5)
    {
      v79 = modelVersion5;
    }

    else
    {
      v79 = &unk_1F38742C8;
    }

    [v7 addObject:v79];
  }

  v80 = [v7 count];
  if (v80 == 1)
  {
    extractionInfo = [v7 allObjects];
    firstObject = [extractionInfo firstObject];
  }

  else
  {
    firstObject = &unk_1F38742E0;
  }

  HIDWORD(v82) = DWORD1(v89);
  if (*(&v89 + 1) <= 0.0)
  {
    v83 = 0;
  }

  else
  {
    *&v82 = *&v89 / *(&v89 + 1);
    v83 = [MEMORY[0x1E696AD98] numberWithFloat:v82];
  }

  v84 = [SGExtractionInfo extractionInfoWithExtractionType:extractionType modelVersion:firstObject confidence:v83];
  extractionInfo = selfCopy->_extractionInfo;
  selfCopy->_extractionInfo = v84;

  if (*(&v89 + 1) > 0.0)
  {
  }

  if (v80 == 1)
  {
  }

  v86 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqualToRealtimeContact:(id)contact
{
  contactCopy = contact;
  state = self->_state;
  if (state != [contactCopy state])
  {
    v8 = 0;
    goto LABEL_6;
  }

  cnContactIdentifier = self->_cnContactIdentifier;
  cnContactIdentifier = [contactCopy cnContactIdentifier];
  if (cnContactIdentifier != cnContactIdentifier)
  {
    goto LABEL_3;
  }

  v10 = self->_extractionInfo;
  v11 = v10;
  if (v10 == contactCopy[5])
  {
  }

  else
  {
    v12 = [(SGExtractionInfo *)v10 isEqual:?];

    if ((v12 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v13 = self->_contact;
  v14 = v13;
  if (v13 == contactCopy[3])
  {

LABEL_15:
    isHarvested = self->_isHarvested;
    v8 = isHarvested == [contactCopy isHarvested];
    goto LABEL_4;
  }

  v15 = [(SGContact *)v13 isEqual:?];

  if (v15)
  {
    goto LABEL_15;
  }

LABEL_3:
  v8 = 0;
LABEL_4:

LABEL_6:
  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGRealtimeContact *)self isEqualToRealtimeContact:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInt32:state forKey:@"state"];
  [coderCopy encodeObject:self->_extractionInfo forKey:@"extractionInfo"];
  [coderCopy encodeObject:self->_contact forKey:@"contact"];
  [coderCopy encodeObject:self->_cnContactIdentifier forKey:@"cnContactIdentifier"];
  [coderCopy encodeBool:self->_isHarvested forKey:@"isHarvested"];
  [coderCopy encodeInt32:self->_updatedFields forKey:@"updatedFields"];
}

- (SGRealtimeContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SGRealtimeContact;
  v6 = [(SGRealtimeContact *)&v18 init];
  if (v6)
  {
    v6->_state = [coderCopy decodeInt32ForKey:@"state"];
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"extractionInfo"];
    extractionInfo = v6->_extractionInfo;
    v6->_extractionInfo = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"contact"];

    if (v11)
    {
      v12 = v11;
      contact = v6->_contact;
      v6->_contact = v12;
    }

    else
    {
      contact = [MEMORY[0x1E696AAA8] currentHandler];
      [contact handleFailureInMethod:a2 object:v6 file:@"SGRealtimeContact.m" lineNumber:67 description:{@"nonnull property %s *%s was null when decoded", "SGContact", "contact"}];
    }

    v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"cnContactIdentifier"];
    cnContactIdentifier = v6->_cnContactIdentifier;
    v6->_cnContactIdentifier = v15;

    v6->_isHarvested = [coderCopy decodeBoolForKey:@"isHarvested"];
    v6->_updatedFields = [coderCopy decodeInt32ForKey:@"updatedFields"];
  }

  return v6;
}

- (id)markedAsHarvested
{
  v2 = [[SGRealtimeContact alloc] initWithState:self->_state updatedFields:self->_updatedFields contact:self->_contact identifier:self->_cnContactIdentifier];
  v2->_isHarvested = 1;

  return v2;
}

- (SGRealtimeContact)initWithState:(int)state updatedFields:(int)fields contact:(id)contact identifier:(id)identifier
{
  contactCopy = contact;
  identifierCopy = identifier;
  if (!contactCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGRealtimeContact.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v17.receiver = self;
  v17.super_class = SGRealtimeContact;
  v13 = [(SGRealtimeContact *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_state = state;
    v13->_updatedFields = [contactCopy updatedFields];
    objc_storeStrong(&v14->_contact, contact);
    objc_storeStrong(&v14->_cnContactIdentifier, identifier);
    v14->_extractionSource = 0;
    [(SGRealtimeContact *)v14 setExtractionInfo];
  }

  return v14;
}

+ (id)realtimeContactForNewContact:(id)contact
{
  contactCopy = contact;
  v4 = [[SGRealtimeContact alloc] initWithState:1 updatedFields:0 contact:contactCopy identifier:&stru_1F385B250];

  return v4;
}

@end
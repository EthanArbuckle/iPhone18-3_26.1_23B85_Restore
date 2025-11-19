@interface SGRealtimeContact
+ (id)realtimeContactForNewContact:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRealtimeContact:(id)a3;
- (NSString)description;
- (SGRealtimeContact)initWithCoder:(id)a3;
- (SGRealtimeContact)initWithState:(int)a3 updatedFields:(int)a4 contact:(id)a5 identifier:(id)a6;
- (id)markedAsHarvested;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(SGContact *)self->_contact name];
  if (v4)
  {
    v5 = [(SGContact *)self->_contact name];
    v2 = [v5 extractionInfo];
    v6 = [v2 extractionType];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_new();
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v87 = self;
  v8 = [(SGContact *)self->_contact phones];
  v9 = [v8 countByEnumeratingWithState:&v102 objects:v109 count:16];
  __asm { FMOV            V0.2S, #1.0 }

  v88 = DWORD1(_Q0);
  if (v9)
  {
    v2 = v9;
    v15 = *v103;
    *&_Q0 = 0;
    v89 = _Q0;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v103 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v102 + 1) + 8 * i);
        v18 = [v17 extractionInfo];
        v6 |= [v18 extractionType];

        v19 = [v17 extractionInfo];
        v20 = [v19 confidence];
        [v20 floatValue];
        *(&v21 + 1) = *(&v89 + 1);
        *&v21 = vadd_f32(*&v89, __PAIR64__(v88, v22));
        v89 = v21;

        v23 = [v17 extractionInfo];
        v24 = [v23 modelVersion];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = &unk_1F38742C8;
        }

        [v7 addObject:v26];
      }

      v2 = [v8 countByEnumeratingWithState:&v102 objects:v109 count:16];
    }

    while (v2);
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
  v27 = [(SGContact *)v87->_contact postalAddresses];
  v28 = [v27 countByEnumeratingWithState:&v98 objects:v108 count:16];
  if (v28)
  {
    v2 = v28;
    v29 = *v99;
    do
    {
      for (j = 0; j != v2; j = j + 1)
      {
        if (*v99 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v98 + 1) + 8 * j);
        v32 = [v31 extractionInfo];
        v6 |= [v32 extractionType];

        v33 = [v31 extractionInfo];
        v34 = [v33 confidence];
        [v34 floatValue];
        *(&v35 + 1) = *(&v89 + 1);
        *&v35 = vadd_f32(*&v89, __PAIR64__(v88, v36));
        v89 = v35;

        v37 = [v31 extractionInfo];
        v38 = [v37 modelVersion];
        v39 = v38;
        if (v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = &unk_1F38742C8;
        }

        [v7 addObject:v40];
      }

      v2 = [v27 countByEnumeratingWithState:&v98 objects:v108 count:16];
    }

    while (v2);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v41 = [(SGContact *)v87->_contact emailAddresses];
  v42 = [v41 countByEnumeratingWithState:&v94 objects:v107 count:16];
  if (v42)
  {
    v2 = v42;
    v43 = *v95;
    do
    {
      for (k = 0; k != v2; k = k + 1)
      {
        if (*v95 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v45 = *(*(&v94 + 1) + 8 * k);
        v46 = [v45 extractionInfo];
        v6 |= [v46 extractionType];

        v47 = [v45 extractionInfo];
        v48 = [v47 confidence];
        [v48 floatValue];
        *(&v49 + 1) = *(&v89 + 1);
        *&v49 = vadd_f32(*&v89, __PAIR64__(v88, v50));
        v89 = v49;

        v51 = [v45 extractionInfo];
        v52 = [v51 modelVersion];
        v53 = v52;
        if (v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = &unk_1F38742C8;
        }

        [v7 addObject:v54];
      }

      v2 = [v41 countByEnumeratingWithState:&v94 objects:v107 count:16];
    }

    while (v2);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v55 = [(SGContact *)v87->_contact socialProfiles];
  v56 = [v55 countByEnumeratingWithState:&v90 objects:v106 count:16];
  if (v56)
  {
    v2 = v56;
    v57 = *v91;
    do
    {
      for (m = 0; m != v2; m = m + 1)
      {
        if (*v91 != v57)
        {
          objc_enumerationMutation(v55);
        }

        v59 = *(*(&v90 + 1) + 8 * m);
        v60 = [v59 extractionInfo];
        v6 |= [v60 extractionType];

        v61 = [v59 extractionInfo];
        v62 = [v61 confidence];
        [v62 floatValue];
        *(&v63 + 1) = *(&v89 + 1);
        *&v63 = vadd_f32(*&v89, __PAIR64__(v88, v64));
        v89 = v63;

        v65 = [v59 extractionInfo];
        v66 = [v65 modelVersion];
        v67 = v66;
        if (v66)
        {
          v68 = v66;
        }

        else
        {
          v68 = &unk_1F38742C8;
        }

        [v7 addObject:v68];
      }

      v2 = [v55 countByEnumeratingWithState:&v90 objects:v106 count:16];
    }

    while (v2);
  }

  v69 = [(SGContact *)v87->_contact birthday];

  if (v69)
  {
    v70 = [(SGContact *)v87->_contact birthday];
    v71 = [v70 extractionInfo];
    v6 |= [v71 extractionType];

    v72 = [(SGContact *)v87->_contact birthday];
    v73 = [v72 extractionInfo];
    v74 = [v73 confidence];
    [v74 floatValue];
    *&v89 = vadd_f32(*&v89, __PAIR64__(v88, v75));

    v76 = [(SGContact *)v87->_contact birthday];
    v2 = [v76 extractionInfo];
    v77 = [v2 modelVersion];
    v78 = v77;
    if (v77)
    {
      v79 = v77;
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
    v2 = [v7 allObjects];
    v81 = [v2 firstObject];
  }

  else
  {
    v81 = &unk_1F38742E0;
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

  v84 = [SGExtractionInfo extractionInfoWithExtractionType:v6 modelVersion:v81 confidence:v83];
  extractionInfo = v87->_extractionInfo;
  v87->_extractionInfo = v84;

  if (*(&v89 + 1) > 0.0)
  {
  }

  if (v80 == 1)
  {
  }

  v86 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqualToRealtimeContact:(id)a3
{
  v4 = a3;
  state = self->_state;
  if (state != [v4 state])
  {
    v8 = 0;
    goto LABEL_6;
  }

  cnContactIdentifier = self->_cnContactIdentifier;
  v7 = [v4 cnContactIdentifier];
  if (cnContactIdentifier != v7)
  {
    goto LABEL_3;
  }

  v10 = self->_extractionInfo;
  v11 = v10;
  if (v10 == v4[5])
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
  if (v13 == v4[3])
  {

LABEL_15:
    isHarvested = self->_isHarvested;
    v8 = isHarvested == [v4 isHarvested];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGRealtimeContact *)self isEqualToRealtimeContact:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInt32:state forKey:@"state"];
  [v5 encodeObject:self->_extractionInfo forKey:@"extractionInfo"];
  [v5 encodeObject:self->_contact forKey:@"contact"];
  [v5 encodeObject:self->_cnContactIdentifier forKey:@"cnContactIdentifier"];
  [v5 encodeBool:self->_isHarvested forKey:@"isHarvested"];
  [v5 encodeInt32:self->_updatedFields forKey:@"updatedFields"];
}

- (SGRealtimeContact)initWithCoder:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = SGRealtimeContact;
  v6 = [(SGRealtimeContact *)&v18 init];
  if (v6)
  {
    v6->_state = [v5 decodeInt32ForKey:@"state"];
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [v5 decodeObjectOfClasses:v7 forKey:@"extractionInfo"];
    extractionInfo = v6->_extractionInfo;
    v6->_extractionInfo = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v11 = [v5 decodeObjectOfClasses:v10 forKey:@"contact"];

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
    v15 = [v5 decodeObjectOfClasses:v14 forKey:@"cnContactIdentifier"];
    cnContactIdentifier = v6->_cnContactIdentifier;
    v6->_cnContactIdentifier = v15;

    v6->_isHarvested = [v5 decodeBoolForKey:@"isHarvested"];
    v6->_updatedFields = [v5 decodeInt32ForKey:@"updatedFields"];
  }

  return v6;
}

- (id)markedAsHarvested
{
  v2 = [[SGRealtimeContact alloc] initWithState:self->_state updatedFields:self->_updatedFields contact:self->_contact identifier:self->_cnContactIdentifier];
  v2->_isHarvested = 1;

  return v2;
}

- (SGRealtimeContact)initWithState:(int)a3 updatedFields:(int)a4 contact:(id)a5 identifier:(id)a6
{
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"SGRealtimeContact.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v17.receiver = self;
  v17.super_class = SGRealtimeContact;
  v13 = [(SGRealtimeContact *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_state = a3;
    v13->_updatedFields = [v11 updatedFields];
    objc_storeStrong(&v14->_contact, a5);
    objc_storeStrong(&v14->_cnContactIdentifier, a6);
    v14->_extractionSource = 0;
    [(SGRealtimeContact *)v14 setExtractionInfo];
  }

  return v14;
}

+ (id)realtimeContactForNewContact:(id)a3
{
  v3 = a3;
  v4 = [[SGRealtimeContact alloc] initWithState:1 updatedFields:0 contact:v3 identifier:&stru_1F385B250];

  return v4;
}

@end
@interface WFContact
+ (id)addContactsChangeObserver:(id)a3;
+ (id)cnContactWithINPerson:(id)a3;
+ (id)contactWithVCardData:(id)a3 propertyID:(int)a4 multivalueIndex:(int64_t)a5;
+ (id)contactsWithVCardData:(id)a3;
+ (id)labelFromINPersonHandleLabel:(id)a3;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
+ (int64_t)predictedTypeForHandleValue:(id)a3 allowsCustomHandles:(BOOL)a4;
+ (void)removeContactsChangeObserver:(id)a3;
- (NSString)description;
- (WFContact)initWithCoder:(id)a3;
- (WFFileRepresentation)fullDataVCardRepresentation;
- (WFFileRepresentation)vCardRepresentation;
- (id)INPersonRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)wfSerializedRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFContact

- (id)wfSerializedRepresentation
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = [(WFContact *)self vCardRepresentation];
  v4 = [v3 data];

  if (v4)
  {
    v5 = [(WFContact *)self multivalueIndex];
    v14[0] = v4;
    v13[0] = @"WFContactData";
    v13[1] = @"WFContactProperty";
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[WFContact propertyID](self, "propertyID")}];
    v14[1] = v6;
    v13[2] = @"WFContactMultivalue";
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    v14[2] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

    v11 = @"link.contentkit.contact";
    v12 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFContact *)self fullDataVCardRepresentation];
  [v4 encodeObject:v5 forKey:@"vCardFile"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[WFContact propertyID](self, "propertyID")}];
  [v4 encodeObject:v6 forKey:@"propertyId"];

  v7 = [MEMORY[0x277CCABB0] numberWithLong:{-[WFContact multivalueIndex](self, "multivalueIndex")}];
  [v4 encodeObject:v7 forKey:@"multivalueId"];
}

- (WFContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vCardFile"];
  v6 = [v5 data];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"propertyId"];
  v8 = [v7 integerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multivalueId"];

  v10 = [v9 longValue];
  v11 = [objc_opt_class() contactWithVCardData:v6 propertyID:v8 multivalueIndex:v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = WFContact;
  v4 = [(WFContact *)&v8 description];
  v5 = [(WFContact *)self formattedName];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (WFFileRepresentation)fullDataVCardRepresentation
{
  fullDataVCardRepresentation = self->_fullDataVCardRepresentation;
  if (!fullDataVCardRepresentation)
  {
    v4 = [(WFContact *)self vCardRepresentationWithFullData:1];
    v5 = self->_fullDataVCardRepresentation;
    self->_fullDataVCardRepresentation = v4;

    fullDataVCardRepresentation = self->_fullDataVCardRepresentation;
  }

  return fullDataVCardRepresentation;
}

- (WFFileRepresentation)vCardRepresentation
{
  vCardRepresentation = self->_vCardRepresentation;
  if (!vCardRepresentation)
  {
    v4 = [(WFContact *)self vCardRepresentationWithFullData:0];
    v5 = self->_vCardRepresentation;
    self->_vCardRepresentation = v4;

    vCardRepresentation = self->_vCardRepresentation;
  }

  return vCardRepresentation;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.contact"];
  v6 = [v5 objectForKeyedSubscript:@"WFIsINPerson"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [WFINPersonContact objectWithWFSerializedRepresentation:v4];
  }

  else
  {
    v9 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"WFContactData"];
    v10 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"WFContactProperty"];
    v11 = [v10 intValue];

    v12 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"WFContactMultivalue"];
    v13 = [v12 longLongValue];

    if (v13 == 0x7FFFFFFF || v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = -1;
    }

    else
    {
      v15 = v13;
    }

    if (v11 - 3 < 2 && v15 == -1)
    {
      v17 = 0xFFFFFFFFLL;
    }

    else
    {
      v17 = v11;
    }

    v8 = [a1 contactWithVCardData:v9 propertyID:v17 multivalueIndex:v15];
  }

  return v8;
}

+ (void)removeContactsChangeObserver:(id)a3
{
  v4 = a3;
  [objc_msgSend(a1 "preferredConcreteSubclass")];
}

+ (id)addContactsChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "preferredConcreteSubclass")];

  return v5;
}

+ (int64_t)predictedTypeForHandleValue:(id)a3 allowsCustomHandles:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [WFEmailAddress stringContainsEmailAddresses:v5];
  v7 = [WFPhoneNumber stringContainsPhoneNumbers:v5];

  if (v6 && !v7)
  {
    return 1;
  }

  if (v7 && !v6)
  {
    return 0;
  }

  v9 = 2;
  if (!v4)
  {
    v9 = 0;
  }

  if (!v6 || !v7)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

+ (id)contactWithVCardData:(id)a3 propertyID:(int)a4 multivalueIndex:(int64_t)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = [objc_msgSend(a1 "preferredConcreteSubclass")];

  return v9;
}

+ (id)contactsWithVCardData:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "preferredConcreteSubclass")];

  return v5;
}

- (id)INPersonRepresentation
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(WFContact *)self namePrefix];
  [v3 setNamePrefix:v4];

  v5 = [(WFContact *)self firstName];
  [v3 setGivenName:v5];

  v6 = [(WFContact *)self middleName];
  [v3 setMiddleName:v6];

  v7 = [(WFContact *)self lastName];
  [v3 setFamilyName:v7];

  v8 = [(WFContact *)self nameSuffix];
  [v3 setNameSuffix:v8];

  v9 = [(WFContact *)self nickname];
  v44 = v3;
  [v3 setNickname:v9];

  v10 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v45 = self;
  obj = [(WFContact *)self phoneNumbers];
  v11 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v52 + 1) + 8 * i);
        v16 = objc_alloc(MEMORY[0x277CD3E98]);
        v17 = [v15 value];
        v18 = [v17 normalizedPhoneNumber];
        v19 = [v15 value];
        v20 = [v19 label];
        v21 = INPersonHandleLabelForContactLabel(v20);
        v22 = [v16 initWithValue:v18 type:2 label:v21];

        [v10 addObject:v22];
      }

      v12 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v12);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obja = [(WFContact *)v45 emailAddresses];
  v23 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v49;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v48 + 1) + 8 * j);
        v28 = objc_alloc(MEMORY[0x277CD3E98]);
        v29 = [v27 value];
        v30 = [v29 address];
        v31 = [v27 value];
        v32 = [v31 label];
        v33 = INPersonHandleLabelForContactLabel(v32);
        v34 = [v28 initWithValue:v30 type:1 label:v33];

        [v10 addObject:v34];
      }

      v24 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v24);
  }

  v35 = [v10 firstObject];
  if ([v10 count] < 2)
  {

    v10 = 0;
  }

  else
  {
    [v10 removeObjectAtIndex:0];
  }

  v36 = [(WFContact *)v45 imageData];
  if ([v36 length])
  {
    v37 = MEMORY[0x277CD3D10];
    v38 = [(WFContact *)v45 imageData];
    v39 = [v37 imageWithImageData:v38];
  }

  else
  {
    v39 = 0;
  }

  v40 = objc_alloc(MEMORY[0x277CD3E90]);
  v41 = [(WFContact *)v45 contactIdentifierForINPerson];
  v42 = [v40 initWithPersonHandle:v35 nameComponents:v44 displayName:0 image:v39 contactIdentifier:v41 customIdentifier:0 aliases:v10 suggestionType:0];

  return v42;
}

+ (id)cnContactWithINPerson:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2050000000;
  v4 = getCNMutableContactClass_softClass;
  v65 = getCNMutableContactClass_softClass;
  if (!getCNMutableContactClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v68 = __getCNMutableContactClass_block_invoke;
    v69 = &unk_27834A178;
    v70 = &v62;
    __getCNMutableContactClass_block_invoke(&buf);
    v4 = v63[3];
  }

  v5 = v4;
  _Block_object_dispose(&v62, 8);
  v54 = objc_opt_new();
  v56 = objc_opt_new();
  v57 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [v55 personHandle];

  if (v7)
  {
    v8 = [v55 personHandle];
    [v6 addObject:v8];
  }

  v9 = [v55 aliases];
  [v6 addObjectsFromArray:v9];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v11)
  {
    v12 = *v59;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v58 + 1) + 8 * i);
        v15 = [v14 value];

        if (v15)
        {
          v16 = [v14 type];
          if (v16 == 1)
          {
            CNLabeledValueClass_11888 = getCNLabeledValueClass_11888();
            v18 = [v14 label];
            v19 = [a1 labelFromINPersonHandleLabel:v18];
            v22 = [v14 value];
            v23 = [CNLabeledValueClass_11888 labeledValueWithLabel:v19 value:v22];
            [v57 addObject:v23];
          }

          else
          {
            if (v16 != 2)
            {
              continue;
            }

            v17 = getCNLabeledValueClass_11888();
            v18 = [v14 label];
            v19 = [a1 labelFromINPersonHandleLabel:v18];
            v62 = 0;
            v63 = &v62;
            v64 = 0x2050000000;
            v20 = getCNPhoneNumberClass_softClass_11889;
            v65 = getCNPhoneNumberClass_softClass_11889;
            if (!getCNPhoneNumberClass_softClass_11889)
            {
              *&buf = MEMORY[0x277D85DD0];
              *(&buf + 1) = 3221225472;
              v68 = __getCNPhoneNumberClass_block_invoke_11890;
              v69 = &unk_27834A178;
              v70 = &v62;
              __getCNPhoneNumberClass_block_invoke_11890(&buf);
              v20 = v63[3];
            }

            v21 = v20;
            _Block_object_dispose(&v62, 8);
            v22 = [v14 value];
            v23 = [v20 phoneNumberWithStringValue:v22];
            v24 = [v17 labeledValueWithLabel:v19 value:v23];
            [v56 addObject:v24];
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v11);
  }

  v26 = [v55 contactIdentifier];
  if (v26 && ![v57 count])
  {
    v32 = [v56 count] == 0;

    if (v32)
    {
      v27 = objc_alloc_init(WFCNContactStore);
      v33 = [v55 contactIdentifier];
      v34 = [(WFCNContactStore *)v27 contactWithIdentifier:v33];

      goto LABEL_51;
    }
  }

  else
  {
  }

  v27 = [v55 nameComponents];
  if (!v27)
  {
    v28 = [v55 displayName];
    v29 = v28 == 0;

    if (v29)
    {
      v27 = 0;
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x277CCAC08]);
      v31 = [v55 displayName];
      v27 = [v30 personNameComponentsFromString:v31];
    }
  }

  v35 = [(WFCNContactStore *)v27 namePrefix];

  if (v35)
  {
    v36 = [(WFCNContactStore *)v27 namePrefix];
    [v54 setNamePrefix:v36];
  }

  v37 = [(WFCNContactStore *)v27 nameSuffix];

  if (v37)
  {
    v38 = [(WFCNContactStore *)v27 nameSuffix];
    [v54 setNameSuffix:v38];
  }

  v39 = [(WFCNContactStore *)v27 givenName];

  if (v39)
  {
    v40 = [(WFCNContactStore *)v27 givenName];
    [v54 setGivenName:v40];
  }

  v41 = [(WFCNContactStore *)v27 middleName];

  if (v41)
  {
    v42 = [(WFCNContactStore *)v27 middleName];
    [v54 setMiddleName:v42];
  }

  v43 = [(WFCNContactStore *)v27 familyName];

  if (v43)
  {
    v44 = [(WFCNContactStore *)v27 familyName];
    [v54 setFamilyName:v44];
  }

  v45 = [(WFCNContactStore *)v27 nickname];

  if (v45)
  {
    v46 = [(WFCNContactStore *)v27 nickname];
    [v54 setNickname:v46];
  }

  v47 = [v55 image];
  if (([v47 _requiresRetrieval] & 1) == 0)
  {
    v48 = [v55 image];
    v49 = [v48 _imageData];
    v50 = v49 == 0;

    if (v50)
    {
      goto LABEL_45;
    }

    v47 = [v55 image];
    v51 = [v47 _imageData];
    [v54 setImageData:v51];
  }

LABEL_45:
  [v54 setPhoneNumbers:v56];
  [v54 setEmailAddresses:v57];
  if (![v57 count] && !objc_msgSend(v56, "count"))
  {
    v52 = getWFWFContactLogObject();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[WFContact(INPerson) cnContactWithINPerson:]";
      _os_log_impl(&dword_21E1BD000, v52, OS_LOG_TYPE_ERROR, "%s Warning no email addresses or phone numbers found for contact!", &buf, 0xCu);
    }
  }

  v34 = [WFCNContact contactWithCNContact:v54];
LABEL_51:

  return v34;
}

+ (id)labelFromINPersonHandleLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CD3870]])
  {
    v4 = getCNLabelHome();
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CD38A8]])
  {
    v4 = getCNLabelWork();
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CD3890]])
  {
    v4 = getCNLabelOther();
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CD38B8]])
  {
    v4 = getCNLabelPhoneNumberiPhone();
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CD3888]])
  {
    v4 = getCNLabelPhoneNumberMobile();
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CD3880]])
  {
    v4 = getCNLabelPhoneNumberMain();
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CD3878]])
  {
    v4 = getCNLabelPhoneNumberHomeFax();
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CD38B0]])
  {
    v4 = getCNLabelPhoneNumberWorkFax();
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CD3898]])
  {
    v4 = getCNLabelPhoneNumberPager();
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

@end
@interface WFContact
+ (id)addContactsChangeObserver:(id)observer;
+ (id)cnContactWithINPerson:(id)person;
+ (id)contactWithVCardData:(id)data propertyID:(int)d multivalueIndex:(int64_t)index;
+ (id)contactsWithVCardData:(id)data;
+ (id)labelFromINPersonHandleLabel:(id)label;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
+ (int64_t)predictedTypeForHandleValue:(id)value allowsCustomHandles:(BOOL)handles;
+ (void)removeContactsChangeObserver:(id)observer;
- (NSString)description;
- (WFContact)initWithCoder:(id)coder;
- (WFFileRepresentation)fullDataVCardRepresentation;
- (WFFileRepresentation)vCardRepresentation;
- (id)INPersonRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)wfSerializedRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContact

- (id)wfSerializedRepresentation
{
  v14[3] = *MEMORY[0x277D85DE8];
  vCardRepresentation = [(WFContact *)self vCardRepresentation];
  data = [vCardRepresentation data];

  if (data)
  {
    multivalueIndex = [(WFContact *)self multivalueIndex];
    v14[0] = data;
    v13[0] = @"WFContactData";
    v13[1] = @"WFContactProperty";
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[WFContact propertyID](self, "propertyID")}];
    v14[1] = v6;
    v13[2] = @"WFContactMultivalue";
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:multivalueIndex];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fullDataVCardRepresentation = [(WFContact *)self fullDataVCardRepresentation];
  [coderCopy encodeObject:fullDataVCardRepresentation forKey:@"vCardFile"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[WFContact propertyID](self, "propertyID")}];
  [coderCopy encodeObject:v6 forKey:@"propertyId"];

  v7 = [MEMORY[0x277CCABB0] numberWithLong:{-[WFContact multivalueIndex](self, "multivalueIndex")}];
  [coderCopy encodeObject:v7 forKey:@"multivalueId"];
}

- (WFContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vCardFile"];
  data = [v5 data];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyId"];
  integerValue = [v7 integerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multivalueId"];

  longValue = [v9 longValue];
  v11 = [objc_opt_class() contactWithVCardData:data propertyID:integerValue multivalueIndex:longValue];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = WFContact;
  v4 = [(WFContact *)&v8 description];
  formattedName = [(WFContact *)self formattedName];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, formattedName];

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

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.contact"];
  v6 = [v5 objectForKeyedSubscript:@"WFIsINPerson"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = [WFINPersonContact objectWithWFSerializedRepresentation:representationCopy];
  }

  else
  {
    v9 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"WFContactData"];
    v10 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"WFContactProperty"];
    intValue = [v10 intValue];

    v12 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"WFContactMultivalue"];
    longLongValue = [v12 longLongValue];

    if (longLongValue == 0x7FFFFFFF || longLongValue == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = -1;
    }

    else
    {
      v15 = longLongValue;
    }

    if (intValue - 3 < 2 && v15 == -1)
    {
      v17 = 0xFFFFFFFFLL;
    }

    else
    {
      v17 = intValue;
    }

    v8 = [self contactWithVCardData:v9 propertyID:v17 multivalueIndex:v15];
  }

  return v8;
}

+ (void)removeContactsChangeObserver:(id)observer
{
  observerCopy = observer;
  [objc_msgSend(self "preferredConcreteSubclass")];
}

+ (id)addContactsChangeObserver:(id)observer
{
  observerCopy = observer;
  v5 = [objc_msgSend(self "preferredConcreteSubclass")];

  return v5;
}

+ (int64_t)predictedTypeForHandleValue:(id)value allowsCustomHandles:(BOOL)handles
{
  handlesCopy = handles;
  valueCopy = value;
  v6 = [WFEmailAddress stringContainsEmailAddresses:valueCopy];
  v7 = [WFPhoneNumber stringContainsPhoneNumbers:valueCopy];

  if (v6 && !v7)
  {
    return 1;
  }

  if (v7 && !v6)
  {
    return 0;
  }

  v9 = 2;
  if (!handlesCopy)
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

+ (id)contactWithVCardData:(id)data propertyID:(int)d multivalueIndex:(int64_t)index
{
  v6 = *&d;
  dataCopy = data;
  v9 = [objc_msgSend(self "preferredConcreteSubclass")];

  return v9;
}

+ (id)contactsWithVCardData:(id)data
{
  dataCopy = data;
  v5 = [objc_msgSend(self "preferredConcreteSubclass")];

  return v5;
}

- (id)INPersonRepresentation
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  namePrefix = [(WFContact *)self namePrefix];
  [v3 setNamePrefix:namePrefix];

  firstName = [(WFContact *)self firstName];
  [v3 setGivenName:firstName];

  middleName = [(WFContact *)self middleName];
  [v3 setMiddleName:middleName];

  lastName = [(WFContact *)self lastName];
  [v3 setFamilyName:lastName];

  nameSuffix = [(WFContact *)self nameSuffix];
  [v3 setNameSuffix:nameSuffix];

  nickname = [(WFContact *)self nickname];
  v44 = v3;
  [v3 setNickname:nickname];

  v10 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  selfCopy = self;
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
        value = [v15 value];
        normalizedPhoneNumber = [value normalizedPhoneNumber];
        value2 = [v15 value];
        label = [value2 label];
        v21 = INPersonHandleLabelForContactLabel(label);
        v22 = [v16 initWithValue:normalizedPhoneNumber type:2 label:v21];

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
  obja = [(WFContact *)selfCopy emailAddresses];
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
        value3 = [v27 value];
        address = [value3 address];
        value4 = [v27 value];
        label2 = [value4 label];
        v33 = INPersonHandleLabelForContactLabel(label2);
        v34 = [v28 initWithValue:address type:1 label:v33];

        [v10 addObject:v34];
      }

      v24 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v24);
  }

  firstObject = [v10 firstObject];
  if ([v10 count] < 2)
  {

    v10 = 0;
  }

  else
  {
    [v10 removeObjectAtIndex:0];
  }

  imageData = [(WFContact *)selfCopy imageData];
  if ([imageData length])
  {
    v37 = MEMORY[0x277CD3D10];
    imageData2 = [(WFContact *)selfCopy imageData];
    v39 = [v37 imageWithImageData:imageData2];
  }

  else
  {
    v39 = 0;
  }

  v40 = objc_alloc(MEMORY[0x277CD3E90]);
  contactIdentifierForINPerson = [(WFContact *)selfCopy contactIdentifierForINPerson];
  v42 = [v40 initWithPersonHandle:firstObject nameComponents:v44 displayName:0 image:v39 contactIdentifier:contactIdentifierForINPerson customIdentifier:0 aliases:v10 suggestionType:0];

  return v42;
}

+ (id)cnContactWithINPerson:(id)person
{
  v71 = *MEMORY[0x277D85DE8];
  personCopy = person;
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
  personHandle = [personCopy personHandle];

  if (personHandle)
  {
    personHandle2 = [personCopy personHandle];
    [v6 addObject:personHandle2];
  }

  aliases = [personCopy aliases];
  [v6 addObjectsFromArray:aliases];

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
        value = [v14 value];

        if (value)
        {
          type = [v14 type];
          if (type == 1)
          {
            CNLabeledValueClass_11888 = getCNLabeledValueClass_11888();
            label = [v14 label];
            v19 = [self labelFromINPersonHandleLabel:label];
            value2 = [v14 value];
            v23 = [CNLabeledValueClass_11888 labeledValueWithLabel:v19 value:value2];
            [v57 addObject:v23];
          }

          else
          {
            if (type != 2)
            {
              continue;
            }

            v17 = getCNLabeledValueClass_11888();
            label = [v14 label];
            v19 = [self labelFromINPersonHandleLabel:label];
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
            value2 = [v14 value];
            v23 = [v20 phoneNumberWithStringValue:value2];
            v24 = [v17 labeledValueWithLabel:v19 value:v23];
            [v56 addObject:v24];
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v11);
  }

  contactIdentifier = [personCopy contactIdentifier];
  if (contactIdentifier && ![v57 count])
  {
    v32 = [v56 count] == 0;

    if (v32)
    {
      nameComponents = objc_alloc_init(WFCNContactStore);
      contactIdentifier2 = [personCopy contactIdentifier];
      v34 = [(WFCNContactStore *)nameComponents contactWithIdentifier:contactIdentifier2];

      goto LABEL_51;
    }
  }

  else
  {
  }

  nameComponents = [personCopy nameComponents];
  if (!nameComponents)
  {
    displayName = [personCopy displayName];
    v29 = displayName == 0;

    if (v29)
    {
      nameComponents = 0;
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x277CCAC08]);
      displayName2 = [personCopy displayName];
      nameComponents = [v30 personNameComponentsFromString:displayName2];
    }
  }

  namePrefix = [(WFCNContactStore *)nameComponents namePrefix];

  if (namePrefix)
  {
    namePrefix2 = [(WFCNContactStore *)nameComponents namePrefix];
    [v54 setNamePrefix:namePrefix2];
  }

  nameSuffix = [(WFCNContactStore *)nameComponents nameSuffix];

  if (nameSuffix)
  {
    nameSuffix2 = [(WFCNContactStore *)nameComponents nameSuffix];
    [v54 setNameSuffix:nameSuffix2];
  }

  givenName = [(WFCNContactStore *)nameComponents givenName];

  if (givenName)
  {
    givenName2 = [(WFCNContactStore *)nameComponents givenName];
    [v54 setGivenName:givenName2];
  }

  middleName = [(WFCNContactStore *)nameComponents middleName];

  if (middleName)
  {
    middleName2 = [(WFCNContactStore *)nameComponents middleName];
    [v54 setMiddleName:middleName2];
  }

  familyName = [(WFCNContactStore *)nameComponents familyName];

  if (familyName)
  {
    familyName2 = [(WFCNContactStore *)nameComponents familyName];
    [v54 setFamilyName:familyName2];
  }

  nickname = [(WFCNContactStore *)nameComponents nickname];

  if (nickname)
  {
    nickname2 = [(WFCNContactStore *)nameComponents nickname];
    [v54 setNickname:nickname2];
  }

  image = [personCopy image];
  if (([image _requiresRetrieval] & 1) == 0)
  {
    image2 = [personCopy image];
    _imageData = [image2 _imageData];
    v50 = _imageData == 0;

    if (v50)
    {
      goto LABEL_45;
    }

    image = [personCopy image];
    _imageData2 = [image _imageData];
    [v54 setImageData:_imageData2];
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

+ (id)labelFromINPersonHandleLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:*MEMORY[0x277CD3870]])
  {
    v4 = getCNLabelHome();
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CD38A8]])
  {
    v4 = getCNLabelWork();
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CD3890]])
  {
    v4 = getCNLabelOther();
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CD38B8]])
  {
    v4 = getCNLabelPhoneNumberiPhone();
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CD3888]])
  {
    v4 = getCNLabelPhoneNumberMobile();
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CD3880]])
  {
    v4 = getCNLabelPhoneNumberMain();
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CD3878]])
  {
    v4 = getCNLabelPhoneNumberHomeFax();
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CD38B0]])
  {
    v4 = getCNLabelPhoneNumberWorkFax();
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CD3898]])
  {
    v4 = getCNLabelPhoneNumberPager();
  }

  else
  {
    v4 = labelCopy;
  }

  v5 = v4;

  return v5;
}

@end
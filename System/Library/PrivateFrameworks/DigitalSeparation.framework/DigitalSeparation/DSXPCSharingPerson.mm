@interface DSXPCSharingPerson
+ (id)sortedXPCArray:(id)array;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIdentity:(id)identity;
- (BOOL)isLikeContact:(id)contact;
- (BOOL)isMe:(id)me;
- (DSXPCSharingPerson)init;
- (DSXPCSharingPerson)initWithSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role contact:(id)contact;
- (DSXPCSharingPerson)initWithSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role unknownHandle:(id)handle;
- (NSArray)sortedSourceNames;
- (NSArray)sourceNames;
- (NSArray)termsOfAddress;
- (NSString)displayGivenName;
- (NSString)displayName;
- (id)alertTextForSource:(id)source;
- (id)detailTextForSource:(id)source;
- (id)localizedDetail;
- (id)participationForSources:(id)sources;
- (id)sharedResourcesForSourceName:(id)name;
- (uint64_t)priority;
- (unint64_t)hash;
- (unint64_t)shareDirectionForSharedResource:(id)resource;
- (unint64_t)shareDirectionForSourceName:(id)name;
- (void)_setPriority;
- (void)addName:(id)name;
- (void)addSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role;
- (void)displayName;
- (void)removeSources:(id)sources;
- (void)setPriority:(void *)priority;
- (void)updateContactFromIdentity:(id)identity;
- (void)updateKnownEmailAddressesForParticipant:(id)participant;
- (void)updateKnownNameForParticipant:(id)participant;
- (void)updateKnownPhoneNumbersForParticipant:(id)participant;
- (void)updateShareDirectionForParticipant:(id)participant source:(id)source sharedResource:(id)resource deviceOwnerRole:(int64_t)role;
@end

@implementation DSXPCSharingPerson

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    DSLog_10 = os_log_create("com.apple.DigitalSeparation", "DSXPCSharingPerson");

    MEMORY[0x2821F96F8]();
  }
}

- (DSXPCSharingPerson)initWithSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role contact:(id)contact
{
  sourceCopy = source;
  resourceCopy = resource;
  participantCopy = participant;
  contactCopy = contact;
  v16 = [(DSXPCSharingPerson *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_contact, contact);
    identifier = [contactCopy identifier];
    identifier = v17->_identifier;
    v17->_identifier = identifier;

    [(DSXPCSharingPerson *)v17 addSource:sourceCopy sharedResource:resourceCopy participant:participantCopy deviceOwnerRole:role];
  }

  return v17;
}

- (DSXPCSharingPerson)initWithSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role unknownHandle:(id)handle
{
  sourceCopy = source;
  resourceCopy = resource;
  participantCopy = participant;
  handleCopy = handle;
  v16 = [(DSXPCSharingPerson *)self init];
  v17 = v16;
  if (v16)
  {
    [(DSXPCSharingPerson *)v16 updateContactFromIdentity:handleCopy];
    [(DSXPCSharingPerson *)v17 addSource:sourceCopy sharedResource:resourceCopy participant:participantCopy deviceOwnerRole:role];
  }

  return v17;
}

- (DSXPCSharingPerson)init
{
  v20.receiver = self;
  v20.super_class = DSXPCSharingPerson;
  v2 = [(DSXPCSharingPerson *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    sources = v2->_sources;
    v2->_sources = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    participantsBySource = v2->_participantsBySource;
    v2->_participantsBySource = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    sharedResourcesBySource = v2->_sharedResourcesBySource;
    v2->_sharedResourcesBySource = dictionary2;

    v9 = [MEMORY[0x277CBEB58] set];
    emailAddresses = v2->_emailAddresses;
    v2->_emailAddresses = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    names = v2->_names;
    v2->_names = v11;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    shareDirectionBySourceName = v2->_shareDirectionBySourceName;
    v2->_shareDirectionBySourceName = dictionary3;

    v15 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:1282];
    shareDirectionByResource = v2->_shareDirectionByResource;
    v2->_shareDirectionByResource = v15;

    v17 = [MEMORY[0x277CBEB58] set];
    phoneNumbers = v2->_phoneNumbers;
    v2->_phoneNumbers = v17;
  }

  return v2;
}

- (void)updateContactFromIdentity:(id)identity
{
  identityCopy = identity;
  nameComponents = [identityCopy nameComponents];

  if (nameComponents)
  {
    v6 = MEMORY[0x277CCAC08];
    nameComponents2 = [identityCopy nameComponents];
    v8 = [v6 localizedStringFromPersonNameComponents:nameComponents2 style:3 options:0];

    if ([v8 length])
    {
      ds_formattedPotentialPhoneNumber = [v8 ds_formattedPotentialPhoneNumber];
      phoneNumber = [identityCopy phoneNumber];
      ds_formattedPotentialPhoneNumber2 = [phoneNumber ds_formattedPotentialPhoneNumber];
      v12 = [ds_formattedPotentialPhoneNumber isEqualToString:ds_formattedPotentialPhoneNumber2];

      if ((v12 & 1) == 0)
      {
        [(DSXPCSharingPerson *)v8 updateContactFromIdentity:?];
        goto LABEL_11;
      }
    }
  }

  emailAddress = [identityCopy emailAddress];
  v14 = [emailAddress length];

  if (v14)
  {
    [(DSXPCSharingPerson *)identityCopy updateContactFromIdentity:&v17];
LABEL_10:
    v8 = v17;
LABEL_11:

    goto LABEL_7;
  }

  phoneNumber2 = [identityCopy phoneNumber];
  v16 = [phoneNumber2 length];

  if (v16)
  {
    [(DSXPCSharingPerson *)identityCopy updateContactFromIdentity:&v17];
    goto LABEL_10;
  }

LABEL_7:
}

- (BOOL)isIdentity:(id)identity
{
  v35 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  unifiedContactIdentifier = [identityCopy unifiedContactIdentifier];
  if ([unifiedContactIdentifier length])
  {
    contact = [(DSXPCSharingPerson *)self contact];
    identifier = [contact identifier];
    unifiedContactIdentifier2 = [identityCopy unifiedContactIdentifier];
    v9 = [identifier isEqualToString:unifiedContactIdentifier2];

    if (v9)
    {
LABEL_3:
      v10 = 1;
      goto LABEL_24;
    }
  }

  else
  {
  }

  emailAddress = [identityCopy emailAddress];
  if ([emailAddress length])
  {
    if (([(DSXPCSharingPerson *)self isIdentity:identityCopy, emailAddress]& 1) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  phoneNumber = [identityCopy phoneNumber];
  v13 = [phoneNumber length];

  if (v13)
  {
    v14 = MEMORY[0x277CBDB70];
    phoneNumber2 = [identityCopy phoneNumber];
    v16 = [v14 phoneNumberWithStringValue:phoneNumber2];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    if (self)
    {
      phoneNumbers = self->_phoneNumbers;
    }

    else
    {
      phoneNumbers = 0;
    }

    displayName = phoneNumbers;
    v19 = [(NSMutableSet *)displayName countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(displayName);
          }

          v23 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:{*(*(&v30 + 1) + 8 * i), v30}];
          v24 = [v16 isLikePhoneNumber:v23];

          if (v24)
          {
            v10 = 1;
            goto LABEL_22;
          }
        }

        v20 = [(NSMutableSet *)displayName countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  nameComponents = [identityCopy nameComponents];

  if (nameComponents)
  {
    v26 = MEMORY[0x277CCAC08];
    nameComponents2 = [identityCopy nameComponents];
    v16 = [v26 localizedStringFromPersonNameComponents:nameComponents2 style:0 options:0];

    displayName = [(DSXPCSharingPerson *)self displayName];
    v10 = [v16 isEqualToString:displayName];
LABEL_22:
  }

  else
  {
    v10 = 0;
  }

LABEL_24:

  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)addName:(id)name
{
  v12 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  contact = [(DSXPCSharingPerson *)self contact];

  v6 = DSLog_10;
  v7 = os_log_type_enabled(DSLog_10, OS_LOG_TYPE_INFO);
  if (!contact)
  {
    if (v7)
    {
      [(DSXPCSharingPerson *)nameCopy addName:v6];
      if (self)
      {
        goto LABEL_6;
      }
    }

    else if (self)
    {
LABEL_6:
      names = self->_names;
LABEL_7:
      [(NSMutableSet *)names addObject:nameCopy];
      goto LABEL_8;
    }

    names = 0;
    goto LABEL_7;
  }

  if (v7)
  {
    v10 = 138412290;
    v11 = nameCopy;
    _os_log_impl(&dword_248C40000, v6, OS_LOG_TYPE_INFO, "Not adding display name %@ because we have a contact to use", &v10, 0xCu);
  }

LABEL_8:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateKnownEmailAddressesForParticipant:(id)participant
{
  v25 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  contact = [(DSXPCSharingPerson *)self contact];
  emailAddresses = [contact emailAddresses];

  if (emailAddresses)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = emailAddresses;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          if (self)
          {
            emailAddresses = self->_emailAddresses;
          }

          else
          {
            emailAddresses = 0;
          }

          v14 = emailAddresses;
          value = [v12 value];
          [(NSMutableSet *)v14 addObject:value];

          ++v11;
        }

        while (v9 != v11);
        v16 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v9 = v16;
      }

      while (v16);
    }
  }

  identity = [participantCopy identity];
  emailAddress = [identity emailAddress];

  if ([emailAddress length] && (objc_msgSend(emailAddress, "isPhoneNumber") & 1) == 0)
  {
    [(DSXPCSharingPerson *)self updateKnownEmailAddressesForParticipant:emailAddress];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateKnownNameForParticipant:(id)participant
{
  participantCopy = participant;
  v4 = MEMORY[0x277CBDA78];
  contact = [(DSXPCSharingPerson *)self contact];
  v6 = [v4 stringFromContact:contact style:0];

  if ([v6 length])
  {
    [(DSXPCSharingPerson *)self updateKnownNameForParticipant:v6];
  }

  identity = [participantCopy identity];
  nameComponents = [identity nameComponents];

  if (nameComponents)
  {
    v9 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:nameComponents style:0 options:0];

    if (([MEMORY[0x277CFBE08] isStringEmailAddress:v9] & 1) == 0 && (objc_msgSend(MEMORY[0x277CFBE78], "isStringPhoneNumber:", v9) & 1) == 0 && (objc_msgSend(v9, "isPhoneNumber") & 1) == 0 && objc_msgSend(v9, "length"))
    {
      [(DSXPCSharingPerson *)self updateKnownNameForParticipant:v9];
    }
  }

  else
  {
    v9 = v6;
  }
}

- (void)updateKnownPhoneNumbersForParticipant:(id)participant
{
  v27 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  contact = [(DSXPCSharingPerson *)self contact];
  phoneNumbers = [contact phoneNumbers];

  if (phoneNumbers)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = phoneNumbers;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          if (self)
          {
            phoneNumbers = self->_phoneNumbers;
          }

          else
          {
            phoneNumbers = 0;
          }

          v14 = phoneNumbers;
          value = [v12 value];
          stringValue = [value stringValue];
          [(NSMutableSet *)v14 addObject:stringValue];

          ++v11;
        }

        while (v9 != v11);
        v17 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v9 = v17;
      }

      while (v17);
    }
  }

  identity = [participantCopy identity];
  phoneNumber = [identity phoneNumber];
  ds_formattedPotentialPhoneNumber = [phoneNumber ds_formattedPotentialPhoneNumber];

  if ([ds_formattedPotentialPhoneNumber length])
  {
    [(DSXPCSharingPerson *)self updateKnownPhoneNumbersForParticipant:ds_formattedPotentialPhoneNumber];
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)sortedXPCArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count] > 1)
  {
    v4 = [arrayCopy sortedArrayUsingComparator:&__block_literal_global_10];
  }

  else
  {
    v4 = arrayCopy;
  }

  v5 = v4;

  return v5;
}

uint64_t __39__DSXPCSharingPerson_sortedSourceNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [DSSourceDescriptor sourceDescriptorForSource:a2];
  v6 = [DSSourceDescriptor sourceDescriptorForSource:v4];

  v7 = [v5 priority];
  if (v7 >= [v6 priority])
  {
    v9 = [v5 priority];
    if (v9 <= [v6 priority])
    {
      v10 = [v5 localizedName];
      v11 = [v6 localizedName];
      v8 = [v10 localizedStandardCompare:v11];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (NSString)displayName
{
  contact = [(DSXPCSharingPerson *)self contact];

  if (contact)
  {
    v4 = MEMORY[0x277CBDA78];
    contact2 = [(DSXPCSharingPerson *)self contact];
    contact5 = [v4 stringFromContact:contact2 style:0];

    if (contact5)
    {
      v7 = MEMORY[0x277CCACA8];
      emailAddresses2 = DSLocStringForKey(@"SHARING_PERSON_DISPLAY_NAME");
      value = [v7 stringWithFormat:emailAddresses2, contact5];
LABEL_9:

      goto LABEL_10;
    }

    contact3 = [(DSXPCSharingPerson *)self contact];
    emailAddresses = [contact3 emailAddresses];
    v12 = [emailAddresses count];

    contact4 = [(DSXPCSharingPerson *)self contact];
    contact5 = contact4;
    if (v12)
    {
      emailAddresses2 = [contact4 emailAddresses];
      firstObject = [emailAddresses2 firstObject];
      value = [firstObject value];
LABEL_8:

      goto LABEL_9;
    }

    phoneNumbers = [contact4 phoneNumbers];
    v16 = [phoneNumbers count];

    if (v16)
    {
      contact5 = [(DSXPCSharingPerson *)self contact];
      emailAddresses2 = [contact5 phoneNumbers];
      firstObject = [emailAddresses2 firstObject];
      value2 = [firstObject value];
      value = [value2 stringValue];

      goto LABEL_8;
    }
  }

  [(DSXPCSharingPerson *)self displayName];
  value = v19;
LABEL_10:

  return value;
}

- (NSString)displayGivenName
{
  v3 = objc_alloc_init(MEMORY[0x277CCAC00]);
  contact = [(DSXPCSharingPerson *)self contact];
  givenName = [contact givenName];
  [v3 setGivenName:givenName];

  contact2 = [(DSXPCSharingPerson *)self contact];
  familyName = [contact2 familyName];
  [v3 setFamilyName:familyName];

  v8 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v3 style:1 options:0];
  if ([v8 length])
  {
    displayName = v8;
  }

  else
  {
    displayName = [(DSXPCSharingPerson *)self displayName];
  }

  v10 = displayName;

  return v10;
}

- (NSArray)termsOfAddress
{
  contact = [(DSXPCSharingPerson *)self contact];

  if (contact)
  {
    contact2 = [(DSXPCSharingPerson *)self contact];
    termsOfAddress = [contact2 termsOfAddress];
  }

  else
  {
    termsOfAddress = MEMORY[0x277CBEBF8];
  }

  return termsOfAddress;
}

- (id)localizedDetail
{
  v19 = *MEMORY[0x277D85DE8];
  sortedSourceNames = [(DSXPCSharingPerson *)self sortedSourceNames];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = sortedSourceNames;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [DSSourceDescriptor sourceDescriptorForSource:*(*(&v14 + 1) + 8 * i), v14];
        localizedName = [v9 localizedName];
        [array addObject:localizedName];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [DSUtilities localizedDetailStringWithTruncationFromArray:array withType:@"com.apple.DigitalSeparation.Resources"];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)alertTextForSource:(id)source
{
  v4 = [DSSourceDescriptor sourceDescriptorForSource:source];
  v5 = [v4 localizedAlertTextForPerson:self];

  return v5;
}

- (id)detailTextForSource:(id)source
{
  v4 = [DSSourceDescriptor sourceDescriptorForSource:source];
  v5 = [v4 localizedStopByPersonBlocking:self];

  return v5;
}

- (id)participationForSources:(id)sources
{
  v25 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = sourcesCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        if (self)
        {
          participantsBySource = self->_participantsBySource;
        }

        else
        {
          participantsBySource = 0;
        }

        v13 = [(NSMutableDictionary *)participantsBySource objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v10), v20];
        v14 = [v13 copy];

        if ([v14 count])
        {
          v15 = [DSXPCParticipant participants:v14];
          [dictionary setObject:v15 forKey:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v16 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v8 = v16;
    }

    while (v16);
  }

  v17 = [dictionary copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      contact = [(DSXPCSharingPerson *)v5 contact];

      if (contact)
      {
        contact2 = [(DSXPCSharingPerson *)v5 contact];
        v8 = [(DSXPCSharingPerson *)self isLikeContact:contact2];
LABEL_11:
        v9 = v8;

        goto LABEL_12;
      }

      if (self)
      {
        identifier = self->_identifier;
        if (v5)
        {
LABEL_9:
          v11 = v5->_identifier;
LABEL_10:
          contact2 = identifier;
          v8 = [(NSString *)contact2 isEqualToString:v11];
          goto LABEL_11;
        }
      }

      else
      {
        identifier = 0;
        if (v5)
        {
          goto LABEL_9;
        }
      }

      v11 = 0;
      goto LABEL_10;
    }

    v9 = 0;
  }

LABEL_12:

  return v9;
}

- (BOOL)isLikeContact:(id)contact
{
  v44 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  contact = [(DSXPCSharingPerson *)self contact];

  if (contact)
  {
    contact2 = [(DSXPCSharingPerson *)self contact];
    v7 = [contact2 ds_isLikeContact:contactCopy];
  }

  else
  {
    identifier = [contactCopy identifier];
    if ([identifier length])
    {
      if (([(DSXPCSharingPerson *)self isLikeContact:contactCopy, identifier]& 1) != 0)
      {
        v7 = 1;
        goto LABEL_40;
      }
    }

    else
    {
    }

    contact2 = [contactCopy ds_name];
    if ([contact2 length] && (!self ? (v9 = 0) : (v9 = self->_identifier), -[NSString isEqualToString:](v9, "isEqualToString:", contact2)))
    {
      v7 = 1;
    }

    else
    {
      phoneNumbers = [contactCopy phoneNumbers];
      v11 = [phoneNumbers valueForKey:@"value"];
      v12 = [v11 valueForKey:@"stringValue"];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v39;
        do
        {
          v17 = 0;
          do
          {
            if (*v39 != v16)
            {
              objc_enumerationMutation(v13);
            }

            ds_formattedPotentialPhoneNumber = [*(*(&v38 + 1) + 8 * v17) ds_formattedPotentialPhoneNumber];
            v19 = ds_formattedPotentialPhoneNumber;
            if (self)
            {
              identifier = self->_identifier;
            }

            else
            {
              identifier = 0;
            }

            v21 = [ds_formattedPotentialPhoneNumber isEqualToString:identifier];

            if (v21)
            {
              v7 = 1;
              v25 = v13;
              goto LABEL_38;
            }

            ++v17;
          }

          while (v15 != v17);
          v22 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
          v15 = v22;
        }

        while (v22);
      }

      emailAddresses = [contactCopy emailAddresses];
      v24 = [emailAddresses valueForKey:@"value"];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v35;
        do
        {
          v29 = 0;
          do
          {
            if (*v35 != v28)
            {
              objc_enumerationMutation(v25);
            }

            if (self)
            {
              v30 = self->_identifier;
            }

            else
            {
              v30 = 0;
            }

            if ([*(*(&v34 + 1) + 8 * v29) isEqualToString:{v30, v34}])
            {
              v7 = 1;
              goto LABEL_37;
            }

            ++v29;
          }

          while (v27 != v29);
          v31 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
          v27 = v31;
        }

        while (v31);
      }

      v7 = 0;
LABEL_37:

LABEL_38:
    }
  }

LABEL_40:
  v32 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)addSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role
{
  sourceCopy = source;
  resourceCopy = resource;
  participantCopy = participant;
  if (self)
  {
    [(NSMutableSet *)self->_sources addObject:sourceCopy];
    participantsBySource = self->_participantsBySource;
  }

  else
  {
    [0 addObject:sourceCopy];
    participantsBySource = 0;
  }

  array = [(NSMutableDictionary *)participantsBySource objectForKeyedSubscript:sourceCopy];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  [array addObject:participantCopy];
  if (self)
  {
    [(NSMutableDictionary *)self->_participantsBySource setObject:array forKeyedSubscript:sourceCopy];
    sharedResourcesBySource = self->_sharedResourcesBySource;
  }

  else
  {
    [0 setObject:array forKeyedSubscript:sourceCopy];
    sharedResourcesBySource = 0;
  }

  v14 = [(NSMutableDictionary *)sharedResourcesBySource objectForKeyedSubscript:sourceCopy];
  if (!v14)
  {
    v14 = [MEMORY[0x277CBEB58] set];
  }

  [v14 addObject:resourceCopy];
  if (self)
  {
    v15 = self->_sharedResourcesBySource;
  }

  else
  {
    v15 = 0;
  }

  [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:sourceCopy];
  [OUTLINED_FUNCTION_8_0() updateKnownEmailAddressesForParticipant:?];
  [OUTLINED_FUNCTION_8_0() updateKnownNameForParticipant:?];
  [OUTLINED_FUNCTION_8_0() updateShareDirectionForParticipant:? source:? sharedResource:? deviceOwnerRole:?];
  [OUTLINED_FUNCTION_8_0() updateKnownPhoneNumbersForParticipant:?];
}

- (BOOL)isMe:(id)me
{
  v39 = *MEMORY[0x277D85DE8];
  meCopy = me;
  meCardIdentifier = [meCopy meCardIdentifier];
  v6 = meCardIdentifier;
  if (self)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = 0;
  }

  v8 = [meCardIdentifier isEqualToString:identifier];

  if (!v8)
  {
    emails = [meCopy emails];
    if (self)
    {
      emailAddresses = self->_emailAddresses;
    }

    else
    {
      emailAddresses = 0;
    }

    if ([(NSMutableSet *)emailAddresses intersectsSet:emails])
    {
      v14 = DSLog_10;
      LOBYTE(v10) = 1;
      if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v15 = self->_emailAddresses;
        }

        OUTLINED_FUNCTION_9_0();
        v38 = emails;
        v16 = v14;
        OUTLINED_FUNCTION_0_4(&dword_248C40000, v17, v18, "%{private}@ is one of the email addresses in the Apple ID primary account: %{private}@", v19, v20, v21, v22, v36);
      }
    }

    else
    {
      phoneNumbers = [meCopy phoneNumbers];
      if (self)
      {
        phoneNumbers = self->_phoneNumbers;
      }

      else
      {
        phoneNumbers = 0;
      }

      v10 = [(NSMutableSet *)phoneNumbers intersectsSet:phoneNumbers];
      if (v10)
      {
        v25 = DSLog_10;
        if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_INFO))
        {
          if (self)
          {
            v26 = self->_phoneNumbers;
          }

          OUTLINED_FUNCTION_9_0();
          v38 = phoneNumbers;
          v27 = v25;
          OUTLINED_FUNCTION_0_4(&dword_248C40000, v28, v29, "%{private}@ is one of the phone numbers in the Apple ID primary account: %{private}@", v30, v31, v32, v33, v36);
        }
      }
    }

    goto LABEL_23;
  }

  v9 = DSLog_10;
  LOBYTE(v10) = 1;
  if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v11 = self->_identifier;
    }

    else
    {
      v11 = 0;
    }

    v36 = 138477827;
    v37 = v11;
    emails = v9;
    _os_log_impl(&dword_248C40000, emails, OS_LOG_TYPE_INFO, "%{private}@ is the me card", &v36, 0xCu);
LABEL_23:
  }

  v34 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)updateShareDirectionForParticipant:(id)participant source:(id)source sharedResource:(id)resource deviceOwnerRole:(int64_t)role
{
  participantCopy = participant;
  sourceCopy = source;
  resourceCopy = resource;
  if (role == 2)
  {
    role = [participantCopy role];
    if (role == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 4 * (role == 2);
    }

    if (self)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (role == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    if (self)
    {
LABEL_6:
      shareDirectionBySourceName = self->_shareDirectionBySourceName;
      goto LABEL_7;
    }
  }

  shareDirectionBySourceName = 0;
LABEL_7:
  v14 = [(NSMutableDictionary *)shareDirectionBySourceName objectForKeyedSubscript:sourceCopy];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue | v12];
  if (self)
  {
    [(NSMutableDictionary *)self->_shareDirectionBySourceName setObject:v16 forKeyedSubscript:sourceCopy];

    shareDirectionByResource = self->_shareDirectionByResource;
  }

  else
  {
    [0 setObject:v16 forKeyedSubscript:sourceCopy];

    shareDirectionByResource = 0;
  }

  NSMapInsert(shareDirectionByResource, resourceCopy, v12);
}

uint64_t __37__DSXPCSharingPerson_sortedXPCArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = v4[11];
    if (v5)
    {
LABEL_3:
      v8 = v5[11];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_4:
  if (v7 >= v8)
  {
    if (v4)
    {
      v10 = v4[11];
      if (v5)
      {
LABEL_8:
        v11 = v5[11];
        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_9:
    if (v10 <= v11)
    {
      v13 = [v4 sourceNames];
      v14 = [v13 count];
      v15 = [v6 sourceNames];
      v16 = [v15 count];

      if (v14 < v16)
      {
        goto LABEL_5;
      }

      v17 = [v4 sourceNames];
      v18 = [v17 count];
      v19 = [v6 sourceNames];
      v20 = [v19 count];

      if (v18 <= v20)
      {
        v21 = [v4 displayName];
        v22 = [v6 displayName];
        v9 = [v21 localizedStandardCompare:v22];

        goto LABEL_11;
      }
    }

    v9 = -1;
    goto LABEL_11;
  }

LABEL_5:
  v9 = 1;
LABEL_11:

  return v9;
}

- (uint64_t)priority
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (void)removeSources:(id)sources
{
  v20 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [sourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(sourcesCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (self)
        {
          [(NSMutableSet *)self->_sources removeObject:*(*(&v15 + 1) + 8 * v8)];
          sharedResourcesBySource = self->_sharedResourcesBySource;
        }

        else
        {
          [0 removeObject:*(*(&v15 + 1) + 8 * v8)];
          sharedResourcesBySource = 0;
        }

        [(NSMutableDictionary *)sharedResourcesBySource removeObjectForKey:v9];
        if (self)
        {
          participantsBySource = self->_participantsBySource;
        }

        else
        {
          participantsBySource = 0;
        }

        [(NSMutableDictionary *)participantsBySource removeObjectForKey:v9];
        ++v8;
      }

      while (v6 != v8);
      v12 = [sourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      v6 = v12;
    }

    while (v12);
  }

  if (self)
  {
    sources = self->_sources;
  }

  else
  {
    sources = 0;
  }

  if ([(NSMutableSet *)sources count])
  {
    [(DSXPCSharingPerson *)self _setPriority];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setPriority
{
  sortedSourceNames = [(DSXPCSharingPerson *)self sortedSourceNames];
  firstObject = [sortedSourceNames firstObject];

  v4 = [DSSourceDescriptor sourceDescriptorForSource:firstObject];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "priority")}];
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v5, v6, 88);
  }
}

- (void)setPriority:(void *)priority
{
  if (priority)
  {
    objc_setProperty_nonatomic_copy(priority, newValue, newValue, 88);
  }
}

- (NSArray)sourceNames
{
  if (self)
  {
    self = self->_sources;
  }

  return [(DSXPCSharingPerson *)self allObjects];
}

- (NSArray)sortedSourceNames
{
  if (self)
  {
    self = self->_sources;
  }

  allObjects = [(DSXPCSharingPerson *)self allObjects];
  v3 = [allObjects sortedArrayUsingComparator:&__block_literal_global_317];

  return v3;
}

- (unint64_t)shareDirectionForSharedResource:(id)resource
{
  if (self)
  {
    shareDirectionByResource = self->_shareDirectionByResource;
  }

  else
  {
    shareDirectionByResource = 0;
  }

  v5 = shareDirectionByResource;
  v6 = NSMapGet(v5, resource);

  return v6;
}

- (unint64_t)shareDirectionForSourceName:(id)name
{
  if (self)
  {
    self = self->_shareDirectionBySourceName;
  }

  v3 = [(DSXPCSharingPerson *)self objectForKeyedSubscript:name];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)sharedResourcesForSourceName:(id)name
{
  if (self)
  {
    self = self->_sharedResourcesBySource;
  }

  v3 = [(DSXPCSharingPerson *)self objectForKeyedSubscript:name];
  v4 = [v3 copy];

  return v4;
}

- (unint64_t)hash
{
  if (self)
  {
    self = self->_identifier;
  }

  return [(DSXPCSharingPerson *)self hash];
}

- (void)updateContactFromIdentity:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DSLog_10;
  if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_INFO))
  {
    v6 = 138478083;
    v7 = a1;
    v8 = 2114;
    v9 = a2;
    _os_log_impl(&dword_248C40000, v4, OS_LOG_TYPE_INFO, "Falling back to name component %{private}@ for %{public}@", &v6, 0x16u);
  }

  [(DSSharingPerson *)a2 setSharedResourcesBySource:a1];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateContactFromIdentity:(void *)a3 .cold.2(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = DSLog_10;
  if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [a1 emailAddress];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0_4(&dword_248C40000, v9, v10, "Falling back to email %{private}@ for %{public}@", v11, v12, v13, v14, v18);
  }

  v15 = [a1 emailAddress];
  *a3 = v15;
  v16 = [v15 ds_formattedPotentialPhoneNumber];
  [(DSSharingPerson *)a2 setSharedResourcesBySource:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateContactFromIdentity:(void *)a3 .cold.3(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = DSLog_10;
  if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [a1 phoneNumber];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0_4(&dword_248C40000, v9, v10, "Falling back to phone number %{private}@ for %{public}@", v11, v12, v13, v14, v18);
  }

  v15 = [a1 phoneNumber];
  *a3 = v15;
  v16 = [v15 ds_formattedPotentialPhoneNumber];
  [(DSSharingPerson *)a2 setSharedResourcesBySource:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (uint64_t)isIdentity:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [a2 emailAddress];
  v8 = [v6 containsObject:v7];

  return v8;
}

- (void)addName:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a2 + 32);
  }

  else
  {
    v3 = 0;
  }

  v6 = 138478083;
  v7 = a1;
  v8 = 2114;
  v9 = v3;
  v4 = a3;
  _os_log_impl(&dword_248C40000, v4, OS_LOG_TYPE_INFO, "Adding display name %{private}@ for %{public}@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (uint64_t)updateKnownEmailAddressesForParticipant:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = a1[5];
  }

  return [a1 addObject:a2];
}

- (uint64_t)updateKnownNameForParticipant:(void *)a1 .cold.1(void *a1, const char *a2)
{
  if (a1)
  {
    a1 = a1[6];
  }

  return OUTLINED_FUNCTION_2_2(a1, a2);
}

- (uint64_t)updateKnownPhoneNumbersForParticipant:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = a1[7];
  }

  return [a1 addObject:a2];
}

- (void)displayName
{
  selfCopy = self;
  if (self)
  {
    self = self[6];
  }

  anyObject = [self anyObject];
  if (anyObject)
  {
    v5 = anyObject;
    v6 = MEMORY[0x277CCACA8];
    v7 = DSLocStringForKey(@"SHARING_PERSON_DISPLAY_NAME");
    v8 = [v6 stringWithFormat:v7, v5];
  }

  else
  {
    if (selfCopy)
    {
      v9 = selfCopy[4];
    }

    else
    {
      v9 = 0;
    }

    v8 = v9;
  }

  *a2 = v8;
}

- (uint64_t)isLikeContact:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [a2 identifier];
  v8 = [v6 isEqualToString:v7];

  return v8;
}

@end
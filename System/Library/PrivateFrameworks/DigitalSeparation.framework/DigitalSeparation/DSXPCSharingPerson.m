@interface DSXPCSharingPerson
+ (id)sortedXPCArray:(id)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isIdentity:(id)a3;
- (BOOL)isLikeContact:(id)a3;
- (BOOL)isMe:(id)a3;
- (DSXPCSharingPerson)init;
- (DSXPCSharingPerson)initWithSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6 contact:(id)a7;
- (DSXPCSharingPerson)initWithSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6 unknownHandle:(id)a7;
- (NSArray)sortedSourceNames;
- (NSArray)sourceNames;
- (NSArray)termsOfAddress;
- (NSString)displayGivenName;
- (NSString)displayName;
- (id)alertTextForSource:(id)a3;
- (id)detailTextForSource:(id)a3;
- (id)localizedDetail;
- (id)participationForSources:(id)a3;
- (id)sharedResourcesForSourceName:(id)a3;
- (uint64_t)priority;
- (unint64_t)hash;
- (unint64_t)shareDirectionForSharedResource:(id)a3;
- (unint64_t)shareDirectionForSourceName:(id)a3;
- (void)_setPriority;
- (void)addName:(id)a3;
- (void)addSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6;
- (void)displayName;
- (void)removeSources:(id)a3;
- (void)setPriority:(void *)a1;
- (void)updateContactFromIdentity:(id)a3;
- (void)updateKnownEmailAddressesForParticipant:(id)a3;
- (void)updateKnownNameForParticipant:(id)a3;
- (void)updateKnownPhoneNumbersForParticipant:(id)a3;
- (void)updateShareDirectionForParticipant:(id)a3 source:(id)a4 sharedResource:(id)a5 deviceOwnerRole:(int64_t)a6;
@end

@implementation DSXPCSharingPerson

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLog_10 = os_log_create("com.apple.DigitalSeparation", "DSXPCSharingPerson");

    MEMORY[0x2821F96F8]();
  }
}

- (DSXPCSharingPerson)initWithSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6 contact:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(DSXPCSharingPerson *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_contact, a7);
    v18 = [v15 identifier];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    [(DSXPCSharingPerson *)v17 addSource:v12 sharedResource:v13 participant:v14 deviceOwnerRole:a6];
  }

  return v17;
}

- (DSXPCSharingPerson)initWithSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6 unknownHandle:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(DSXPCSharingPerson *)self init];
  v17 = v16;
  if (v16)
  {
    [(DSXPCSharingPerson *)v16 updateContactFromIdentity:v15];
    [(DSXPCSharingPerson *)v17 addSource:v12 sharedResource:v13 participant:v14 deviceOwnerRole:a6];
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

    v5 = [MEMORY[0x277CBEB38] dictionary];
    participantsBySource = v2->_participantsBySource;
    v2->_participantsBySource = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    sharedResourcesBySource = v2->_sharedResourcesBySource;
    v2->_sharedResourcesBySource = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    emailAddresses = v2->_emailAddresses;
    v2->_emailAddresses = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    names = v2->_names;
    v2->_names = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    shareDirectionBySourceName = v2->_shareDirectionBySourceName;
    v2->_shareDirectionBySourceName = v13;

    v15 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:1282];
    shareDirectionByResource = v2->_shareDirectionByResource;
    v2->_shareDirectionByResource = v15;

    v17 = [MEMORY[0x277CBEB58] set];
    phoneNumbers = v2->_phoneNumbers;
    v2->_phoneNumbers = v17;
  }

  return v2;
}

- (void)updateContactFromIdentity:(id)a3
{
  v4 = a3;
  v5 = [v4 nameComponents];

  if (v5)
  {
    v6 = MEMORY[0x277CCAC08];
    v7 = [v4 nameComponents];
    v8 = [v6 localizedStringFromPersonNameComponents:v7 style:3 options:0];

    if ([v8 length])
    {
      v9 = [v8 ds_formattedPotentialPhoneNumber];
      v10 = [v4 phoneNumber];
      v11 = [v10 ds_formattedPotentialPhoneNumber];
      v12 = [v9 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        [(DSXPCSharingPerson *)v8 updateContactFromIdentity:?];
        goto LABEL_11;
      }
    }
  }

  v13 = [v4 emailAddress];
  v14 = [v13 length];

  if (v14)
  {
    [(DSXPCSharingPerson *)v4 updateContactFromIdentity:&v17];
LABEL_10:
    v8 = v17;
LABEL_11:

    goto LABEL_7;
  }

  v15 = [v4 phoneNumber];
  v16 = [v15 length];

  if (v16)
  {
    [(DSXPCSharingPerson *)v4 updateContactFromIdentity:&v17];
    goto LABEL_10;
  }

LABEL_7:
}

- (BOOL)isIdentity:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 unifiedContactIdentifier];
  if ([v5 length])
  {
    v6 = [(DSXPCSharingPerson *)self contact];
    v7 = [v6 identifier];
    v8 = [v4 unifiedContactIdentifier];
    v9 = [v7 isEqualToString:v8];

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

  v11 = [v4 emailAddress];
  if ([v11 length])
  {
    if (([(DSXPCSharingPerson *)self isIdentity:v4, v11]& 1) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v12 = [v4 phoneNumber];
  v13 = [v12 length];

  if (v13)
  {
    v14 = MEMORY[0x277CBDB70];
    v15 = [v4 phoneNumber];
    v16 = [v14 phoneNumberWithStringValue:v15];

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

    v18 = phoneNumbers;
    v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(v18);
          }

          v23 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:{*(*(&v30 + 1) + 8 * i), v30}];
          v24 = [v16 isLikePhoneNumber:v23];

          if (v24)
          {
            v10 = 1;
            goto LABEL_22;
          }
        }

        v20 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  v25 = [v4 nameComponents];

  if (v25)
  {
    v26 = MEMORY[0x277CCAC08];
    v27 = [v4 nameComponents];
    v16 = [v26 localizedStringFromPersonNameComponents:v27 style:0 options:0];

    v18 = [(DSXPCSharingPerson *)self displayName];
    v10 = [v16 isEqualToString:v18];
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

- (void)addName:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DSXPCSharingPerson *)self contact];

  v6 = DSLog_10;
  v7 = os_log_type_enabled(DSLog_10, OS_LOG_TYPE_INFO);
  if (!v5)
  {
    if (v7)
    {
      [(DSXPCSharingPerson *)v4 addName:v6];
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
      [(NSMutableSet *)names addObject:v4];
      goto LABEL_8;
    }

    names = 0;
    goto LABEL_7;
  }

  if (v7)
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_248C40000, v6, OS_LOG_TYPE_INFO, "Not adding display name %@ because we have a contact to use", &v10, 0xCu);
  }

LABEL_8:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateKnownEmailAddressesForParticipant:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DSXPCSharingPerson *)self contact];
  v6 = [v5 emailAddresses];

  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v6;
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
          v15 = [v12 value];
          [(NSMutableSet *)v14 addObject:v15];

          ++v11;
        }

        while (v9 != v11);
        v16 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v9 = v16;
      }

      while (v16);
    }
  }

  v17 = [v4 identity];
  v18 = [v17 emailAddress];

  if ([v18 length] && (objc_msgSend(v18, "isPhoneNumber") & 1) == 0)
  {
    [(DSXPCSharingPerson *)self updateKnownEmailAddressesForParticipant:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateKnownNameForParticipant:(id)a3
{
  v10 = a3;
  v4 = MEMORY[0x277CBDA78];
  v5 = [(DSXPCSharingPerson *)self contact];
  v6 = [v4 stringFromContact:v5 style:0];

  if ([v6 length])
  {
    [(DSXPCSharingPerson *)self updateKnownNameForParticipant:v6];
  }

  v7 = [v10 identity];
  v8 = [v7 nameComponents];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v8 style:0 options:0];

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

- (void)updateKnownPhoneNumbersForParticipant:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DSXPCSharingPerson *)self contact];
  v6 = [v5 phoneNumbers];

  if (v6)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v6;
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
          v15 = [v12 value];
          v16 = [v15 stringValue];
          [(NSMutableSet *)v14 addObject:v16];

          ++v11;
        }

        while (v9 != v11);
        v17 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v9 = v17;
      }

      while (v17);
    }
  }

  v18 = [v4 identity];
  v19 = [v18 phoneNumber];
  v20 = [v19 ds_formattedPotentialPhoneNumber];

  if ([v20 length])
  {
    [(DSXPCSharingPerson *)self updateKnownPhoneNumbersForParticipant:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)sortedXPCArray:(id)a3
{
  v3 = a3;
  if ([v3 count] > 1)
  {
    v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_10];
  }

  else
  {
    v4 = v3;
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
  v3 = [(DSXPCSharingPerson *)self contact];

  if (v3)
  {
    v4 = MEMORY[0x277CBDA78];
    v5 = [(DSXPCSharingPerson *)self contact];
    v6 = [v4 stringFromContact:v5 style:0];

    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = DSLocStringForKey(@"SHARING_PERSON_DISPLAY_NAME");
      v9 = [v7 stringWithFormat:v8, v6];
LABEL_9:

      goto LABEL_10;
    }

    v10 = [(DSXPCSharingPerson *)self contact];
    v11 = [v10 emailAddresses];
    v12 = [v11 count];

    v13 = [(DSXPCSharingPerson *)self contact];
    v6 = v13;
    if (v12)
    {
      v8 = [v13 emailAddresses];
      v14 = [v8 firstObject];
      v9 = [v14 value];
LABEL_8:

      goto LABEL_9;
    }

    v15 = [v13 phoneNumbers];
    v16 = [v15 count];

    if (v16)
    {
      v6 = [(DSXPCSharingPerson *)self contact];
      v8 = [v6 phoneNumbers];
      v14 = [v8 firstObject];
      v17 = [v14 value];
      v9 = [v17 stringValue];

      goto LABEL_8;
    }
  }

  [(DSXPCSharingPerson *)self displayName];
  v9 = v19;
LABEL_10:

  return v9;
}

- (NSString)displayGivenName
{
  v3 = objc_alloc_init(MEMORY[0x277CCAC00]);
  v4 = [(DSXPCSharingPerson *)self contact];
  v5 = [v4 givenName];
  [v3 setGivenName:v5];

  v6 = [(DSXPCSharingPerson *)self contact];
  v7 = [v6 familyName];
  [v3 setFamilyName:v7];

  v8 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v3 style:1 options:0];
  if ([v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = [(DSXPCSharingPerson *)self displayName];
  }

  v10 = v9;

  return v10;
}

- (NSArray)termsOfAddress
{
  v3 = [(DSXPCSharingPerson *)self contact];

  if (v3)
  {
    v4 = [(DSXPCSharingPerson *)self contact];
    v5 = [v4 termsOfAddress];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)localizedDetail
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(DSXPCSharingPerson *)self sortedSourceNames];
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
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
        v10 = [v9 localizedName];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [DSUtilities localizedDetailStringWithTruncationFromArray:v3 withType:@"com.apple.DigitalSeparation.Resources"];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)alertTextForSource:(id)a3
{
  v4 = [DSSourceDescriptor sourceDescriptorForSource:a3];
  v5 = [v4 localizedAlertTextForPerson:self];

  return v5;
}

- (id)detailTextForSource:(id)a3
{
  v4 = [DSSourceDescriptor sourceDescriptorForSource:a3];
  v5 = [v4 localizedStopByPersonBlocking:self];

  return v5;
}

- (id)participationForSources:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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
          [v5 setObject:v15 forKey:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v16 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v8 = v16;
    }

    while (v16);
  }

  v17 = [v5 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DSXPCSharingPerson *)v5 contact];

      if (v6)
      {
        v7 = [(DSXPCSharingPerson *)v5 contact];
        v8 = [(DSXPCSharingPerson *)self isLikeContact:v7];
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
          v7 = identifier;
          v8 = [(NSString *)v7 isEqualToString:v11];
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

- (BOOL)isLikeContact:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DSXPCSharingPerson *)self contact];

  if (v5)
  {
    v6 = [(DSXPCSharingPerson *)self contact];
    v7 = [v6 ds_isLikeContact:v4];
  }

  else
  {
    v8 = [v4 identifier];
    if ([v8 length])
    {
      if (([(DSXPCSharingPerson *)self isLikeContact:v4, v8]& 1) != 0)
      {
        v7 = 1;
        goto LABEL_40;
      }
    }

    else
    {
    }

    v6 = [v4 ds_name];
    if ([v6 length] && (!self ? (v9 = 0) : (v9 = self->_identifier), -[NSString isEqualToString:](v9, "isEqualToString:", v6)))
    {
      v7 = 1;
    }

    else
    {
      v10 = [v4 phoneNumbers];
      v11 = [v10 valueForKey:@"value"];
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

            v18 = [*(*(&v38 + 1) + 8 * v17) ds_formattedPotentialPhoneNumber];
            v19 = v18;
            if (self)
            {
              identifier = self->_identifier;
            }

            else
            {
              identifier = 0;
            }

            v21 = [v18 isEqualToString:identifier];

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

      v23 = [v4 emailAddresses];
      v24 = [v23 valueForKey:@"value"];

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

- (void)addSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    [(NSMutableSet *)self->_sources addObject:v16];
    participantsBySource = self->_participantsBySource;
  }

  else
  {
    [0 addObject:v16];
    participantsBySource = 0;
  }

  v12 = [(NSMutableDictionary *)participantsBySource objectForKeyedSubscript:v16];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB18] array];
  }

  [v12 addObject:v10];
  if (self)
  {
    [(NSMutableDictionary *)self->_participantsBySource setObject:v12 forKeyedSubscript:v16];
    sharedResourcesBySource = self->_sharedResourcesBySource;
  }

  else
  {
    [0 setObject:v12 forKeyedSubscript:v16];
    sharedResourcesBySource = 0;
  }

  v14 = [(NSMutableDictionary *)sharedResourcesBySource objectForKeyedSubscript:v16];
  if (!v14)
  {
    v14 = [MEMORY[0x277CBEB58] set];
  }

  [v14 addObject:v9];
  if (self)
  {
    v15 = self->_sharedResourcesBySource;
  }

  else
  {
    v15 = 0;
  }

  [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];
  [OUTLINED_FUNCTION_8_0() updateKnownEmailAddressesForParticipant:?];
  [OUTLINED_FUNCTION_8_0() updateKnownNameForParticipant:?];
  [OUTLINED_FUNCTION_8_0() updateShareDirectionForParticipant:? source:? sharedResource:? deviceOwnerRole:?];
  [OUTLINED_FUNCTION_8_0() updateKnownPhoneNumbersForParticipant:?];
}

- (BOOL)isMe:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 meCardIdentifier];
  v6 = v5;
  if (self)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = 0;
  }

  v8 = [v5 isEqualToString:identifier];

  if (!v8)
  {
    v12 = [v4 emails];
    if (self)
    {
      emailAddresses = self->_emailAddresses;
    }

    else
    {
      emailAddresses = 0;
    }

    if ([(NSMutableSet *)emailAddresses intersectsSet:v12])
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
        v38 = v12;
        v16 = v14;
        OUTLINED_FUNCTION_0_4(&dword_248C40000, v17, v18, "%{private}@ is one of the email addresses in the Apple ID primary account: %{private}@", v19, v20, v21, v22, v36);
      }
    }

    else
    {
      v23 = [v4 phoneNumbers];
      if (self)
      {
        phoneNumbers = self->_phoneNumbers;
      }

      else
      {
        phoneNumbers = 0;
      }

      v10 = [(NSMutableSet *)phoneNumbers intersectsSet:v23];
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
          v38 = v23;
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
    v12 = v9;
    _os_log_impl(&dword_248C40000, v12, OS_LOG_TYPE_INFO, "%{private}@ is the me card", &v36, 0xCu);
LABEL_23:
  }

  v34 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)updateShareDirectionForParticipant:(id)a3 source:(id)a4 sharedResource:(id)a5 deviceOwnerRole:(int64_t)a6
{
  v19 = a3;
  v10 = a4;
  v11 = a5;
  if (a6 == 2)
  {
    v18 = [v19 role];
    if (v18 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 4 * (v18 == 2);
    }

    if (self)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (a6 == 1)
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
  v14 = [(NSMutableDictionary *)shareDirectionBySourceName objectForKeyedSubscript:v10];
  v15 = [v14 unsignedIntegerValue];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15 | v12];
  if (self)
  {
    [(NSMutableDictionary *)self->_shareDirectionBySourceName setObject:v16 forKeyedSubscript:v10];

    shareDirectionByResource = self->_shareDirectionByResource;
  }

  else
  {
    [0 setObject:v16 forKeyedSubscript:v10];

    shareDirectionByResource = 0;
  }

  NSMapInsert(shareDirectionByResource, v11, v12);
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

- (void)removeSources:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
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
      v12 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(DSXPCSharingPerson *)self sortedSourceNames];
  v7 = [v3 firstObject];

  v4 = [DSSourceDescriptor sourceDescriptorForSource:v7];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "priority")}];
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v5, v6, 88);
  }
}

- (void)setPriority:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 88);
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

  v2 = [(DSXPCSharingPerson *)self allObjects];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_317];

  return v3;
}

- (unint64_t)shareDirectionForSharedResource:(id)a3
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
  v6 = NSMapGet(v5, a3);

  return v6;
}

- (unint64_t)shareDirectionForSourceName:(id)a3
{
  if (self)
  {
    self = self->_shareDirectionBySourceName;
  }

  v3 = [(DSXPCSharingPerson *)self objectForKeyedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)sharedResourcesForSourceName:(id)a3
{
  if (self)
  {
    self = self->_sharedResourcesBySource;
  }

  v3 = [(DSXPCSharingPerson *)self objectForKeyedSubscript:a3];
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
  v3 = a1;
  if (a1)
  {
    a1 = a1[6];
  }

  v4 = [a1 anyObject];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277CCACA8];
    v7 = DSLocStringForKey(@"SHARING_PERSON_DISPLAY_NAME");
    v8 = [v6 stringWithFormat:v7, v5];
  }

  else
  {
    if (v3)
    {
      v9 = v3[4];
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
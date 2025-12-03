@interface DSSharingPerson
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMe:(id)me;
- (DSSharingPerson)init;
- (DSSharingPerson)initWithSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role;
- (DSSharingPerson)initWithSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role contact:(id)contact;
- (DSSharingPerson)initWithSource:(id)source sharedResource:(id)resource unknownParticipant:(id)participant deviceOwnerRole:(int64_t)role;
- (NSArray)allSources;
- (NSArray)sortedSourceNames;
- (NSArray)termsOfAddress;
- (NSString)displayGivenName;
- (NSString)displayName;
- (NSString)localizedDetail;
- (id)participationForSourceName:(id)name;
- (id)sharedResourcesForSourceName:(id)name;
- (id)valueForKey:(id)key;
- (int64_t)score;
- (uint64_t)emailAddresses;
- (uint64_t)identifier;
- (uint64_t)names;
- (uint64_t)phoneNumbers;
- (uint64_t)shareDirectionByResource;
- (uint64_t)shareDirectionBySourceName;
- (uint64_t)sharedResourcesBySource;
- (unint64_t)hash;
- (unint64_t)shareDirectionForSharedResource:(id)resource;
- (unint64_t)shareDirectionForSourceName:(id)name;
- (void)addSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role;
- (void)displayName;
- (void)removeParticipant:(id)participant fromSource:(id)source;
- (void)removeSourceWithName:(id)name;
- (void)setEmailAddresses:(uint64_t)addresses;
- (void)setIdentifier:(uint64_t)identifier;
- (void)setNames:(uint64_t)names;
- (void)setPhoneNumbers:(uint64_t)numbers;
- (void)setShareDirectionByResource:(uint64_t)resource;
- (void)setShareDirectionBySourceName:(uint64_t)name;
- (void)setSharedResourcesBySource:(uint64_t)source;
- (void)stopAllSharingOnQueue:(id)queue completion:(id)completion;
- (void)stopSharingSourceNames:(id)names queue:(id)queue completion:(id)completion;
- (void)stopSharingSources:(id)sources queue:(id)queue completion:(id)completion;
- (void)updateContactFromIdentity:(id)identity;
- (void)updateContactFromParticipant:(id)participant;
- (void)updateKnownEmailAddressesForParticipant:(id)participant;
- (void)updateKnownNameForParticipant:(id)participant;
- (void)updateKnownPhoneNumbersForParticipant:(id)participant;
- (void)updateShareDirectionForParticipant:(id)participant source:(id)source sharedResource:(id)resource deviceOwnerRole:(int64_t)role;
@end

@implementation DSSharingPerson

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    DSLogSharingPerson = os_log_create("com.apple.DigitalSeparation", "DSSharingPerson");

    MEMORY[0x2821F96F8]();
  }
}

- (DSSharingPerson)initWithSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role
{
  sourceCopy = source;
  resourceCopy = resource;
  participantCopy = participant;
  v13 = [(DSSharingPerson *)self init];
  v14 = v13;
  if (v13)
  {
    [(DSSharingPerson *)v13 updateContactFromParticipant:participantCopy];
    [(DSSharingPerson *)v14 addSource:sourceCopy sharedResource:resourceCopy participant:participantCopy deviceOwnerRole:role];
  }

  return v14;
}

- (DSSharingPerson)initWithSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role contact:(id)contact
{
  sourceCopy = source;
  resourceCopy = resource;
  participantCopy = participant;
  contactCopy = contact;
  v16 = [(DSSharingPerson *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_contact, contact);
    identifier = [contactCopy identifier];
    identifier = v17->_identifier;
    v17->_identifier = identifier;

    [(DSSharingPerson *)v17 addSource:sourceCopy sharedResource:resourceCopy participant:participantCopy deviceOwnerRole:role];
  }

  return v17;
}

- (DSSharingPerson)initWithSource:(id)source sharedResource:(id)resource unknownParticipant:(id)participant deviceOwnerRole:(int64_t)role
{
  sourceCopy = source;
  resourceCopy = resource;
  participantCopy = participant;
  v13 = [(DSSharingPerson *)self init];
  if (v13)
  {
    identity = [participantCopy identity];
    [(DSSharingPerson *)v13 updateContactFromIdentity:identity];

    [(DSSharingPerson *)v13 addSource:sourceCopy sharedResource:resourceCopy participant:participantCopy deviceOwnerRole:role];
  }

  return v13;
}

- (DSSharingPerson)init
{
  v20.receiver = self;
  v20.super_class = DSSharingPerson;
  v2 = [(DSSharingPerson *)&v20 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sources = v2->_sources;
    v2->_sources = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    participantsBySource = v2->_participantsBySource;
    v2->_participantsBySource = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    sharedResourcesBySource = v2->_sharedResourcesBySource;
    v2->_sharedResourcesBySource = dictionary3;

    v9 = [MEMORY[0x277CBEB58] set];
    emailAddresses = v2->_emailAddresses;
    v2->_emailAddresses = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    names = v2->_names;
    v2->_names = v11;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    shareDirectionBySourceName = v2->_shareDirectionBySourceName;
    v2->_shareDirectionBySourceName = dictionary4;

    v15 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:1282];
    shareDirectionByResource = v2->_shareDirectionByResource;
    v2->_shareDirectionByResource = v15;

    v17 = [MEMORY[0x277CBEB58] set];
    phoneNumbers = v2->_phoneNumbers;
    v2->_phoneNumbers = v17;
  }

  return v2;
}

- (void)updateContactFromParticipant:(id)participant
{
  v18 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  contact = [(DSSharingPerson *)self contact];

  if (!contact)
  {
    identity = [(DSSharingPerson *)participantCopy identity];
    contact2 = [(DSSharingPerson *)self contactMatchingIdentity:identity];
    v9 = DSLogSharingPerson;
    if (contact2)
    {
      if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
      {
        v12 = 138478339;
        v13 = contact2;
        v14 = 2114;
        selfCopy2 = self;
        v16 = 2113;
        selfCopy3 = identity;
        _os_log_impl(&dword_248C40000, v9, OS_LOG_TYPE_INFO, "Found contact %{private}@ for %{public}@ source: %{private}@", &v12, 0x20u);
      }

      identifier = [contact2 identifier];
      [(DSSharingPerson *)self setIdentifier:identifier];

      [(DSSourceDescriptor *)self setSourceName:contact2];
    }

    else
    {
      if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138478083;
        v13 = identity;
        v14 = 2114;
        selfCopy2 = self;
        _os_log_impl(&dword_248C40000, v9, OS_LOG_TYPE_DEFAULT, "No contact found for identity: %{private}@, person: %{public}@ . Trying other fallbacks...", &v12, 0x16u);
      }

      [(DSSharingPerson *)self updateContactFromIdentity:identity];
    }

    goto LABEL_8;
  }

  v6 = DSLogSharingPerson;
  if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
  {
    identity = v6;
    contact2 = [(DSSharingPerson *)self contact];
    v12 = 138478339;
    v13 = contact2;
    v14 = 2113;
    selfCopy2 = participantCopy;
    v16 = 2114;
    selfCopy3 = self;
    _os_log_impl(&dword_248C40000, identity, OS_LOG_TYPE_INFO, "Using cached contact %{private}@ for participant %{private}@, person %{public}@", &v12, 0x20u);
LABEL_8:
  }

  v10 = *MEMORY[0x277D85DE8];
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
        [(DSSharingPerson *)v8 updateContactFromIdentity:?];
        goto LABEL_11;
      }
    }
  }

  emailAddress = [identityCopy emailAddress];
  v14 = [emailAddress length];

  if (v14)
  {
    [(DSSharingPerson *)identityCopy updateContactFromIdentity:&v17];
LABEL_10:
    v8 = v17;
LABEL_11:

    goto LABEL_7;
  }

  phoneNumber2 = [identityCopy phoneNumber];
  v16 = [phoneNumber2 length];

  if (v16)
  {
    [(DSSharingPerson *)identityCopy updateContactFromIdentity:&v17];
    goto LABEL_10;
  }

LABEL_7:
}

- (void)updateKnownEmailAddressesForParticipant:(id)participant
{
  v25 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  contact = [(DSSharingPerson *)self contact];
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
    [(DSSharingPerson *)self updateKnownEmailAddressesForParticipant:emailAddress];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateKnownNameForParticipant:(id)participant
{
  participantCopy = participant;
  v4 = MEMORY[0x277CBDA78];
  contact = [(DSSharingPerson *)self contact];
  v6 = [v4 stringFromContact:contact style:0];

  if ([v6 length])
  {
    [(DSSharingPerson *)self updateKnownNameForParticipant:v6];
  }

  identity = [participantCopy identity];
  nameComponents = [identity nameComponents];

  if (nameComponents)
  {
    v9 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:nameComponents style:0 options:0];

    if (([MEMORY[0x277CFBE08] isStringEmailAddress:v9] & 1) == 0 && (objc_msgSend(MEMORY[0x277CFBE78], "isStringPhoneNumber:", v9) & 1) == 0 && (objc_msgSend(v9, "isPhoneNumber") & 1) == 0 && objc_msgSend(v9, "length"))
    {
      [(DSSharingPerson *)self updateKnownNameForParticipant:v9];
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
  contact = [(DSSharingPerson *)self contact];
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
    [(DSSharingPerson *)self updateKnownPhoneNumbersForParticipant:ds_formattedPotentialPhoneNumber];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)removeParticipant:(id)participant fromSource:(id)source
{
  participantCopy = participant;
  sourceCopy = source;
  v7 = sourceCopy;
  if (self)
  {
    v8 = self->_participantsBySource;
    name = [v7 name];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:name];

    [v10 removeObject:participantCopy];
    participantsBySource = self->_participantsBySource;
  }

  else
  {
    [DSSharingPerson removeParticipant:sourceCopy fromSource:participantCopy];
    participantsBySource = 0;
  }

  v12 = participantsBySource;
  name2 = [v7 name];
  v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:name2];

  v15 = [v14 count];
  if (!v15)
  {
    [DSSharingPerson removeParticipant:self fromSource:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(DSSharingPerson *)self isEqual:equalCopy, &v7];
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)displayName
{
  contact = [(DSSharingPerson *)self contact];

  if (contact)
  {
    v4 = MEMORY[0x277CBDA78];
    contact2 = [(DSSharingPerson *)self contact];
    contact5 = [v4 stringFromContact:contact2 style:0];

    if (contact5)
    {
      v7 = MEMORY[0x277CCACA8];
      emailAddresses2 = DSLocStringForKey(@"SHARING_PERSON_DISPLAY_NAME");
      value = [v7 stringWithFormat:emailAddresses2, contact5];
LABEL_9:

      goto LABEL_10;
    }

    contact3 = [(DSSharingPerson *)self contact];
    emailAddresses = [contact3 emailAddresses];
    v12 = [emailAddresses count];

    contact4 = [(DSSharingPerson *)self contact];
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
      contact5 = [(DSSharingPerson *)self contact];
      emailAddresses2 = [contact5 phoneNumbers];
      firstObject = [emailAddresses2 firstObject];
      value2 = [firstObject value];
      value = [value2 stringValue];

      goto LABEL_8;
    }

    value = 0;
  }

  else
  {
    [(DSSharingPerson *)self displayName];
    value = v19;
  }

LABEL_10:

  return value;
}

- (NSString)displayGivenName
{
  v3 = objc_alloc_init(MEMORY[0x277CCAC00]);
  contact = [(DSSharingPerson *)self contact];
  givenName = [contact givenName];
  [v3 setGivenName:givenName];

  contact2 = [(DSSharingPerson *)self contact];
  familyName = [contact2 familyName];
  [v3 setFamilyName:familyName];

  v8 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v3 style:1 options:0];
  if ([v8 length])
  {
    displayName = v8;
  }

  else
  {
    displayName = [(DSSharingPerson *)self displayName];
  }

  v10 = displayName;

  return v10;
}

- (NSArray)termsOfAddress
{
  contact = [(DSSharingPerson *)self contact];

  if (contact)
  {
    contact2 = [(DSSharingPerson *)self contact];
    termsOfAddress = [contact2 termsOfAddress];
  }

  else
  {
    termsOfAddress = MEMORY[0x277CBEBF8];
  }

  return termsOfAddress;
}

uint64_t __36__DSSharingPerson_sortedSourceNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (NSString)localizedDetail
{
  v19 = *MEMORY[0x277D85DE8];
  sortedSourceNames = [(DSSharingPerson *)self sortedSourceNames];
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

- (void)stopSharingSources:(id)sources queue:(id)queue completion:(id)completion
{
  v155 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  queue = queue;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v8 = dispatch_group_create();
  v9 = os_signpost_id_generate(DSLogSharingPerson);
  v10 = DSLogSharingPerson;
  v11 = v10;
  spid = v9;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "stop", " enableTelemetry=YES ", buf, 2u);
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = sourcesCopy;
  v122 = [obj countByEnumeratingWithState:&v145 objects:v154 count:16];
  if (v122)
  {
    v120 = *v146;
    do
    {
      v12 = 0;
      do
      {
        if (*v146 != v120)
        {
          v13 = v12;
          objc_enumerationMutation(obj);
          v12 = v13;
        }

        v123 = v12;
        v14 = *(*(&v145 + 1) + 8 * v12);
        name = [v14 name];
        v16 = [DSRestrictionStore isSourceRestricted:name];

        if (v16)
        {
          v17 = DSLogSharingPerson;
          if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
          {
            v18 = v17;
            name2 = [v14 name];
            *buf = 138412290;
            v151 = name2;
            _os_log_impl(&dword_248C40000, v18, OS_LOG_TYPE_INFO, "Cannot reset %@ due to restrictions", buf, 0xCu);
          }

          name3 = [v14 name];
          v21 = [DSError errorWithCode:6 sourceName:name3];
          [array addObject:v21];

          goto LABEL_127;
        }

        objc_initWeak(&location, self);
        if (self)
        {
          participantsBySource = self->_participantsBySource;
        }

        else
        {
          participantsBySource = 0;
        }

        v23 = participantsBySource;
        name4 = [v14 name];
        v25 = [(NSMutableDictionary *)v23 objectForKeyedSubscript:name4];
        v124 = [v25 copy];

        if ([v124 count] < 2 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v125 = v124;
          v34 = [v125 countByEnumeratingWithState:&v135 objects:v149 count:16];
          if (!v34)
          {
            goto LABEL_81;
          }

          v35 = *v136;
          while (1)
          {
            v36 = 0;
            do
            {
              if (*v136 != v35)
              {
                objc_enumerationMutation(v125);
              }

              v37 = *(*(&v135 + 1) + 8 * v36);
              dispatch_group_enter(v8);
              v38 = os_signpost_id_generate(DSLogSharingPerson);
              name5 = [v14 name];
              v40 = [name5 isEqualToString:@"com.apple.DigitalSeparation.Calendars"];

              if (v40)
              {
                v41 = DSLogSharingPerson;
                v42 = v41;
                if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
                {
                  *buf = 0;
                  v43 = v42;
                  v44 = v38;
                  v45 = "stop.Calendars";
LABEL_70:
                  _os_signpost_emit_with_name_impl(&dword_248C40000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v44, v45, " enableTelemetry=YES ", buf, 2u);
                }
              }

              else
              {
                name6 = [v14 name];
                v47 = [name6 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

                if (v47)
                {
                  v48 = DSLogSharingPerson;
                  v42 = v48;
                  if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
                  {
                    *buf = 0;
                    v43 = v42;
                    v44 = v38;
                    v45 = "stop.FindMy";
                    goto LABEL_70;
                  }
                }

                else
                {
                  name7 = [v14 name];
                  v50 = [name7 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

                  if (v50)
                  {
                    v51 = DSLogSharingPerson;
                    v42 = v51;
                    if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
                    {
                      *buf = 0;
                      v43 = v42;
                      v44 = v38;
                      v45 = "stop.Photos";
                      goto LABEL_70;
                    }
                  }

                  else
                  {
                    name8 = [v14 name];
                    v53 = [name8 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

                    if (v53)
                    {
                      v54 = DSLogSharingPerson;
                      v42 = v54;
                      if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
                      {
                        *buf = 0;
                        v43 = v42;
                        v44 = v38;
                        v45 = "stop.Home";
                        goto LABEL_70;
                      }
                    }

                    else
                    {
                      name9 = [v14 name];
                      v56 = [name9 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

                      if (v56)
                      {
                        v57 = DSLogSharingPerson;
                        v42 = v57;
                        if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
                        {
                          *buf = 0;
                          v43 = v42;
                          v44 = v38;
                          v45 = "stop.Health";
                          goto LABEL_70;
                        }
                      }

                      else
                      {
                        name10 = [v14 name];
                        v59 = [name10 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

                        if (v59)
                        {
                          v60 = DSLogSharingPerson;
                          v42 = v60;
                          if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
                          {
                            *buf = 0;
                            v43 = v42;
                            v44 = v38;
                            v45 = "stop.Notes";
                            goto LABEL_70;
                          }
                        }

                        else
                        {
                          name11 = [v14 name];
                          v62 = [name11 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

                          if (v62)
                          {
                            v63 = DSLogSharingPerson;
                            v42 = v63;
                            if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
                            {
                              *buf = 0;
                              v43 = v42;
                              v44 = v38;
                              v45 = "stop.Zelkova";
                              goto LABEL_70;
                            }
                          }

                          else
                          {
                            name12 = [v14 name];
                            v65 = [name12 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

                            if (v65)
                            {
                              v66 = DSLogSharingPerson;
                              v42 = v66;
                              if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
                              {
                                *buf = 0;
                                v43 = v42;
                                v44 = v38;
                                v45 = "stop.Activity";
                                goto LABEL_70;
                              }
                            }

                            else
                            {
                              name13 = [v14 name];
                              v68 = [name13 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

                              if (v68)
                              {
                                v69 = DSLogSharingPerson;
                                v42 = v69;
                                if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
                                {
                                  *buf = 0;
                                  v43 = v42;
                                  v44 = v38;
                                  v45 = "stop.Passkeys";
                                  goto LABEL_70;
                                }
                              }

                              else
                              {
                                name14 = [v14 name];
                                v71 = [name14 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

                                if (v71)
                                {
                                  v72 = DSLogSharingPerson;
                                  v42 = v72;
                                  if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
                                  {
                                    *buf = 0;
                                    v43 = v42;
                                    v44 = v38;
                                    v45 = "stop.ItemSharing";
                                    goto LABEL_70;
                                  }
                                }

                                else
                                {
                                  name15 = [v14 name];
                                  v74 = [name15 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

                                  v75 = DSLogSharingPerson;
                                  v42 = v75;
                                  if (v74)
                                  {
                                    if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
                                    {
                                      *buf = 0;
                                      v43 = v42;
                                      v44 = v38;
                                      v45 = "stop.Maps";
                                      goto LABEL_70;
                                    }
                                  }

                                  else
                                  {
                                    if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
                                    {
                                      *buf = 0;
                                      _os_signpost_emit_with_name_impl(&dword_248C40000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v38, "stop.Notes", " enableTelemetry=YES ", buf, 2u);
                                    }

                                    v42 = DSLogSharingPerson;
                                    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
                                    {
                                      [v14 name];
                                      objc_claimAutoreleasedReturnValue();
                                      [DSSharingPerson stopSharingSources:queue:completion:];
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              v76 = DSLogSharingPerson;
              if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
              {
                name16 = [v14 name];
                *buf = 138478083;
                v151 = v37;
                v152 = 2114;
                v153 = name16;
                _os_log_impl(&dword_248C40000, v76, OS_LOG_TYPE_INFO, "Stopping sharing of %{private}@ from source %{public}@", buf, 0x16u);
              }

              v131[0] = MEMORY[0x277D85DD0];
              v131[1] = 3221225472;
              v131[2] = __55__DSSharingPerson_stopSharingSources_queue_completion___block_invoke_328;
              v131[3] = &unk_278F73050;
              v131[4] = v14;
              v131[5] = v37;
              v132 = array;
              objc_copyWeak(v134, &location);
              v134[1] = v38;
              v133 = v8;
              [v14 stopSharingWithParticipant:v37 completion:v131];

              objc_destroyWeak(v134);
              ++v36;
            }

            while (v34 != v36);
            v78 = [v125 countByEnumeratingWithState:&v135 objects:v149 count:16];
            v34 = v78;
            if (!v78)
            {
LABEL_81:

              goto LABEL_126;
            }
          }
        }

        dispatch_group_enter(v8);
        v26 = os_signpost_id_generate(DSLogSharingPerson);
        name17 = [v14 name];
        v28 = [name17 isEqualToString:@"com.apple.DigitalSeparation.Calendars"];

        if (v28)
        {
          v29 = DSLogSharingPerson;
          v30 = v29;
          if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
          {
            *buf = 0;
            v31 = v30;
            v32 = v26;
            v33 = "stopParticipants.Calendars";
LABEL_122:
            _os_signpost_emit_with_name_impl(&dword_248C40000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v32, v33, " enableTelemetry=YES ", buf, 2u);
          }
        }

        else
        {
          name18 = [v14 name];
          v80 = [name18 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

          if (v80)
          {
            v81 = DSLogSharingPerson;
            v30 = v81;
            if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
            {
              *buf = 0;
              v31 = v30;
              v32 = v26;
              v33 = "stopParticipants.FindMy";
              goto LABEL_122;
            }
          }

          else
          {
            name19 = [v14 name];
            v83 = [name19 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

            if (v83)
            {
              v84 = DSLogSharingPerson;
              v30 = v84;
              if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
              {
                *buf = 0;
                v31 = v30;
                v32 = v26;
                v33 = "stopParticipants.Photos";
                goto LABEL_122;
              }
            }

            else
            {
              name20 = [v14 name];
              v86 = [name20 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

              if (v86)
              {
                v87 = DSLogSharingPerson;
                v30 = v87;
                if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v87))
                {
                  *buf = 0;
                  v31 = v30;
                  v32 = v26;
                  v33 = "stopParticipants.Home";
                  goto LABEL_122;
                }
              }

              else
              {
                name21 = [v14 name];
                v89 = [name21 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

                if (v89)
                {
                  v90 = DSLogSharingPerson;
                  v30 = v90;
                  if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v90))
                  {
                    *buf = 0;
                    v31 = v30;
                    v32 = v26;
                    v33 = "stopParticipants.Health";
                    goto LABEL_122;
                  }
                }

                else
                {
                  name22 = [v14 name];
                  v92 = [name22 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

                  if (v92)
                  {
                    v93 = DSLogSharingPerson;
                    v30 = v93;
                    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v93))
                    {
                      *buf = 0;
                      v31 = v30;
                      v32 = v26;
                      v33 = "stopParticipants.Notes";
                      goto LABEL_122;
                    }
                  }

                  else
                  {
                    name23 = [v14 name];
                    v95 = [name23 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

                    if (v95)
                    {
                      v96 = DSLogSharingPerson;
                      v30 = v96;
                      if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v96))
                      {
                        *buf = 0;
                        v31 = v30;
                        v32 = v26;
                        v33 = "stopParticipants.Zelkova";
                        goto LABEL_122;
                      }
                    }

                    else
                    {
                      name24 = [v14 name];
                      v98 = [name24 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

                      if (v98)
                      {
                        v99 = DSLogSharingPerson;
                        v30 = v99;
                        if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
                        {
                          *buf = 0;
                          v31 = v30;
                          v32 = v26;
                          v33 = "stopParticipants.Activity";
                          goto LABEL_122;
                        }
                      }

                      else
                      {
                        name25 = [v14 name];
                        v101 = [name25 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

                        if (v101)
                        {
                          v102 = DSLogSharingPerson;
                          v30 = v102;
                          if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v102))
                          {
                            *buf = 0;
                            v31 = v30;
                            v32 = v26;
                            v33 = "stopParticipants.Passkeys";
                            goto LABEL_122;
                          }
                        }

                        else
                        {
                          name26 = [v14 name];
                          v104 = [name26 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

                          if (v104)
                          {
                            v105 = DSLogSharingPerson;
                            v30 = v105;
                            if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v105))
                            {
                              *buf = 0;
                              v31 = v30;
                              v32 = v26;
                              v33 = "stopParticipants.ItemSharing";
                              goto LABEL_122;
                            }
                          }

                          else
                          {
                            name27 = [v14 name];
                            v107 = [name27 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

                            v108 = DSLogSharingPerson;
                            v30 = v108;
                            if (v107)
                            {
                              if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
                              {
                                *buf = 0;
                                v31 = v30;
                                v32 = v26;
                                v33 = "stopParticipants.Maps";
                                goto LABEL_122;
                              }
                            }

                            else
                            {
                              if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
                              {
                                *buf = 0;
                                _os_signpost_emit_with_name_impl(&dword_248C40000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v26, "stopParticipants.Notes", " enableTelemetry=YES ", buf, 2u);
                              }

                              v30 = DSLogSharingPerson;
                              if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                              {
                                [v14 name];
                                objc_claimAutoreleasedReturnValue();
                                [DSSharingPerson stopSharingSources:queue:completion:];
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v109 = DSLogSharingPerson;
        if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
        {
          name28 = [v14 name];
          *buf = 138478083;
          v151 = v124;
          v152 = 2114;
          v153 = name28;
          _os_log_impl(&dword_248C40000, v109, OS_LOG_TYPE_INFO, "Stopping sharing of participants %{private}@ from source %{public}@", buf, 0x16u);
        }

        v139[0] = MEMORY[0x277D85DD0];
        v139[1] = 3221225472;
        v139[2] = __55__DSSharingPerson_stopSharingSources_queue_completion___block_invoke;
        v139[3] = &unk_278F73050;
        v139[4] = v14;
        v111 = v124;
        v140 = v111;
        v141 = array;
        objc_copyWeak(v143, &location);
        v143[1] = v26;
        v142 = v8;
        [v14 stopSharingWithParticipants:v111 completion:v139];

        objc_destroyWeak(v143);
LABEL_126:

        objc_destroyWeak(&location);
LABEL_127:
        v12 = v123 + 1;
      }

      while (v123 + 1 != v122);
      v112 = [obj countByEnumeratingWithState:&v145 objects:v154 count:16];
      v122 = v112;
    }

    while (v112);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DSSharingPerson_stopSharingSources_queue_completion___block_invoke_329;
  block[3] = &unk_278F72BB0;
  v129 = completionCopy;
  v130 = spid;
  v128 = array;
  v113 = completionCopy;
  v114 = array;
  dispatch_group_notify(v8, queue, block);

  v115 = *MEMORY[0x277D85DE8];
}

void __55__DSSharingPerson_stopSharingSources_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DSLogSharingPerson;
  if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 name];
    *buf = 138543362;
    v73 = v7;
    _os_log_impl(&dword_248C40000, v6, OS_LOG_TYPE_INFO, "Stopping sharing with %{public}@ for participants complete", buf, 0xCu);
  }

  v8 = MEMORY[0x277CCA9B8];
  v9 = (a1 + 32);
  v10 = [*(a1 + 32) name];
  v11 = [v8 ds_errorFromIgnorableError:v3 sourceName:v10];

  if (v11)
  {
    v12 = DSLogSharingPerson;
    if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 32);
      v41 = v12;
      v42 = [v40 name];
      v43 = *(a1 + 40);
      *buf = 138543875;
      v73 = v42;
      v74 = 2113;
      v75 = v43;
      v76 = 2114;
      v77 = v11;
      _os_log_error_impl(&dword_248C40000, v41, OS_LOG_TYPE_ERROR, "Failed to stop sharing on source %{public}@ for participants %{private}@ because %{public}@", buf, 0x20u);
    }

    v13 = [*(a1 + 32) name];
    v71 = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
    v15 = [DSError errorWithCode:2 sourceName:v13 underlyingErrors:v14];

    [*(a1 + 48) addObject:v15];
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v15 = *(a1 + 40);
    v16 = [v15 countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v67;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v67 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v66 + 1) + 8 * i);
          WeakRetained = objc_loadWeakRetained((a1 + 64));
          [WeakRetained removeParticipant:v20 fromSource:{*v9, v66}];
        }

        v17 = [v15 countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v17);
    }
  }

  v22 = [*v9 name];
  v23 = [v22 isEqualToString:@"com.apple.DigitalSeparation.Calendars"];

  if (v23)
  {
    v24 = DSLogSharingPerson;
    v25 = v24;
    v26 = *(a1 + 72);
    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v24))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v27 = "stopParticipants.Calendars";
LABEL_54:
    _os_signpost_emit_with_name_impl(&dword_248C40000, v25, OS_SIGNPOST_INTERVAL_END, v26, v27, " enableTelemetry=YES ", buf, 2u);
LABEL_55:

    goto LABEL_56;
  }

  v28 = [*v9 name];
  v29 = [v28 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

  if (v29)
  {
    v30 = DSLogSharingPerson;
    v25 = v30;
    v26 = *(a1 + 72);
    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v30))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v27 = "stopParticipants.FindMy";
    goto LABEL_54;
  }

  v31 = [*v9 name];
  v32 = [v31 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

  if (v32)
  {
    v33 = DSLogSharingPerson;
    v25 = v33;
    v26 = *(a1 + 72);
    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v33))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v27 = "stopParticipants.Photos";
    goto LABEL_54;
  }

  v34 = [*v9 name];
  v35 = [v34 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

  if (v35)
  {
    v36 = DSLogSharingPerson;
    v25 = v36;
    v26 = *(a1 + 72);
    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v36))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v27 = "stopParticipants.Home";
    goto LABEL_54;
  }

  v37 = [*v9 name];
  v38 = [v37 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

  if (v38)
  {
    v39 = DSLogSharingPerson;
    v25 = v39;
    v26 = *(a1 + 72);
    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v39))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v27 = "stopParticipants.Health";
    goto LABEL_54;
  }

  v44 = [*v9 name];
  v45 = [v44 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

  if (v45)
  {
    v46 = DSLogSharingPerson;
    v25 = v46;
    v26 = *(a1 + 72);
    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v46))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v27 = "stopParticipants.Notes";
    goto LABEL_54;
  }

  v47 = [*v9 name];
  v48 = [v47 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

  if (v48)
  {
    v49 = DSLogSharingPerson;
    v25 = v49;
    v26 = *(a1 + 72);
    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v49))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v27 = "stopParticipants.Zelkova";
    goto LABEL_54;
  }

  v50 = [*v9 name];
  v51 = [v50 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

  if (v51)
  {
    v52 = DSLogSharingPerson;
    v25 = v52;
    v26 = *(a1 + 72);
    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v52))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v27 = "stopParticipants.Activity";
    goto LABEL_54;
  }

  v53 = [*v9 name];
  v54 = [v53 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

  if (v54)
  {
    v55 = DSLogSharingPerson;
    v25 = v55;
    v26 = *(a1 + 72);
    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v55))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v27 = "stopParticipants.Passkeys";
    goto LABEL_54;
  }

  v56 = [*v9 name];
  v57 = [v56 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

  if (v57)
  {
    v58 = DSLogSharingPerson;
    v25 = v58;
    v26 = *(a1 + 72);
    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v58))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v27 = "stopParticipants.ItemSharing";
    goto LABEL_54;
  }

  v60 = [*(a1 + 32) name];
  v61 = [v60 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

  v62 = DSLogSharingPerson;
  v63 = v62;
  v64 = *(a1 + 72);
  if (v61)
  {
    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v63, OS_SIGNPOST_INTERVAL_END, v64, "stopParticipants.Maps", " enableTelemetry=YES ", buf, 2u);
    }
  }

  else
  {
    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v63, OS_SIGNPOST_INTERVAL_END, v64, "stopParticipants.Notes", " enableTelemetry=YES ", buf, 2u);
    }

    v65 = DSLogSharingPerson;
    if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_FAULT))
    {
      __55__DSSharingPerson_stopSharingSources_queue_completion___block_invoke_cold_1((a1 + 32), v65);
    }
  }

LABEL_56:
  dispatch_group_leave(*(a1 + 56));

  v59 = *MEMORY[0x277D85DE8];
}

void __55__DSSharingPerson_stopSharingSources_queue_completion___block_invoke_328(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DSLogSharingPerson;
  if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 name];
    *buf = 138543362;
    v62 = v7;
    _os_log_impl(&dword_248C40000, v6, OS_LOG_TYPE_INFO, "Stopping sharing with %{public}@ complete", buf, 0xCu);
  }

  v8 = MEMORY[0x277CCA9B8];
  v9 = (a1 + 32);
  v10 = [*(a1 + 32) name];
  v11 = [v8 ds_errorFromIgnorableError:v3 sourceName:v10];

  if (v11)
  {
    v12 = DSLogSharingPerson;
    if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 32);
      v35 = v12;
      v36 = [v34 name];
      v37 = *(a1 + 40);
      *buf = 138543874;
      v62 = v36;
      v63 = 2114;
      v64 = v37;
      v65 = 2114;
      v66 = v11;
      _os_log_error_impl(&dword_248C40000, v35, OS_LOG_TYPE_ERROR, "Failed to stop sharing on source %{public}@ for %{public}@ because %{public}@", buf, 0x20u);
    }

    v13 = [*(a1 + 32) name];
    v60 = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    WeakRetained = [DSError errorWithCode:2 sourceName:v13 underlyingErrors:v14];

    [*(a1 + 48) addObject:WeakRetained];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained removeParticipant:*(a1 + 40) fromSource:*(a1 + 32)];
  }

  v16 = [*v9 name];
  v17 = [v16 isEqualToString:@"com.apple.DigitalSeparation.Calendars"];

  if (v17)
  {
    v18 = DSLogSharingPerson;
    v19 = v18;
    v20 = *(a1 + 72);
    if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v18))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = "stop.Calendars";
LABEL_48:
    _os_signpost_emit_with_name_impl(&dword_248C40000, v19, OS_SIGNPOST_INTERVAL_END, v20, v21, " enableTelemetry=YES ", buf, 2u);
LABEL_49:

    goto LABEL_50;
  }

  v22 = [*v9 name];
  v23 = [v22 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

  if (v23)
  {
    v24 = DSLogSharingPerson;
    v19 = v24;
    v20 = *(a1 + 72);
    if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v24))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = "stop.FindMy";
    goto LABEL_48;
  }

  v25 = [*v9 name];
  v26 = [v25 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

  if (v26)
  {
    v27 = DSLogSharingPerson;
    v19 = v27;
    v20 = *(a1 + 72);
    if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v27))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = "stop.Photos";
    goto LABEL_48;
  }

  v28 = [*v9 name];
  v29 = [v28 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

  if (v29)
  {
    v30 = DSLogSharingPerson;
    v19 = v30;
    v20 = *(a1 + 72);
    if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v30))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = "stop.Home";
    goto LABEL_48;
  }

  v31 = [*v9 name];
  v32 = [v31 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

  if (v32)
  {
    v33 = DSLogSharingPerson;
    v19 = v33;
    v20 = *(a1 + 72);
    if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v33))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = "stop.Health";
    goto LABEL_48;
  }

  v38 = [*v9 name];
  v39 = [v38 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

  if (v39)
  {
    v40 = DSLogSharingPerson;
    v19 = v40;
    v20 = *(a1 + 72);
    if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v40))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = "stop.Notes";
    goto LABEL_48;
  }

  v41 = [*v9 name];
  v42 = [v41 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

  if (v42)
  {
    v43 = DSLogSharingPerson;
    v19 = v43;
    v20 = *(a1 + 72);
    if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v43))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = "stop.Zelkova";
    goto LABEL_48;
  }

  v44 = [*v9 name];
  v45 = [v44 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

  if (v45)
  {
    v46 = DSLogSharingPerson;
    v19 = v46;
    v20 = *(a1 + 72);
    if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v46))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = "stop.Activity";
    goto LABEL_48;
  }

  v47 = [*v9 name];
  v48 = [v47 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

  if (v48)
  {
    v49 = DSLogSharingPerson;
    v19 = v49;
    v20 = *(a1 + 72);
    if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v49))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = "stop.Passkeys";
    goto LABEL_48;
  }

  v50 = [*v9 name];
  v51 = [v50 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

  if (v51)
  {
    v52 = DSLogSharingPerson;
    v19 = v52;
    v20 = *(a1 + 72);
    if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v52))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = "stop.ItemSharing";
    goto LABEL_48;
  }

  v54 = [*(a1 + 32) name];
  v55 = [v54 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

  v56 = DSLogSharingPerson;
  v57 = v56;
  v58 = *(a1 + 72);
  if (v55)
  {
    if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v57, OS_SIGNPOST_INTERVAL_END, v58, "stop.Maps", " enableTelemetry=YES ", buf, 2u);
    }
  }

  else
  {
    if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v57, OS_SIGNPOST_INTERVAL_END, v58, "stop.Notes", " enableTelemetry=YES ", buf, 2u);
    }

    v59 = DSLogSharingPerson;
    if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_FAULT))
    {
      __55__DSSharingPerson_stopSharingSources_queue_completion___block_invoke_cold_1((a1 + 32), v59);
    }
  }

LABEL_50:
  dispatch_group_leave(*(a1 + 56));

  v53 = *MEMORY[0x277D85DE8];
}

void __55__DSSharingPerson_stopSharingSources_queue_completion___block_invoke_329(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [DSError errorWithCode:2 underlyingErrors:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = DSLogSharingPerson;
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v4, OS_SIGNPOST_INTERVAL_END, v5, "stop", " enableTelemetry=YES ", v6, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)stopSharingSourceNames:(id)names queue:(id)queue completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  queueCopy = queue;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = namesCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (self)
        {
          sources = self->_sources;
        }

        else
        {
          sources = 0;
        }

        v18 = [(NSMutableDictionary *)sources objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v16), v21];
        if (v18)
        {
          [array addObject:v18];
        }

        ++v16;
      }

      while (v14 != v16);
      v19 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v14 = v19;
    }

    while (v19);
  }

  [(DSSharingPerson *)self stopSharingSources:array queue:queueCopy completion:completionCopy];
  v20 = *MEMORY[0x277D85DE8];
}

- (id)valueForKey:(id)key
{
  if ([key isEqualToString:@"displayName"])
  {
    displayName = [(DSSharingPerson *)self displayName];
  }

  else
  {
    displayName = 0;
  }

  return displayName;
}

- (void)setIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    objc_storeStrong((identifier + 40), a2);
  }
}

- (void)setSharedResourcesBySource:(uint64_t)source
{
  if (source)
  {
    objc_storeStrong((source + 32), a2);
  }
}

- (void)setEmailAddresses:(uint64_t)addresses
{
  if (addresses)
  {
    objc_storeStrong((addresses + 48), a2);
  }
}

- (void)setNames:(uint64_t)names
{
  if (names)
  {
    objc_storeStrong((names + 56), a2);
  }
}

- (void)setShareDirectionBySourceName:(uint64_t)name
{
  if (name)
  {
    objc_storeStrong((name + 72), a2);
  }
}

- (void)setShareDirectionByResource:(uint64_t)resource
{
  if (resource)
  {
    objc_storeStrong((resource + 80), a2);
  }
}

- (void)setPhoneNumbers:(uint64_t)numbers
{
  if (numbers)
  {
    objc_storeStrong((numbers + 64), a2);
  }
}

- (uint64_t)emailAddresses
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)names
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)phoneNumbers
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
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
  v14 = shareDirectionBySourceName;
  name = [sourceCopy name];
  v16 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:name];

  unsignedIntegerValue = [v16 unsignedIntegerValue];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue | v12];
  if (self)
  {
    v19 = self->_shareDirectionBySourceName;
    name2 = [sourceCopy name];
    OUTLINED_FUNCTION_10_0(name2);

    shareDirectionByResource = self->_shareDirectionByResource;
  }

  else
  {
    name3 = [sourceCopy name];
    [0 setObject:v18 forKeyedSubscript:name3];

    shareDirectionByResource = 0;
  }

  NSMapInsert(shareDirectionByResource, resourceCopy, v12);
}

- (uint64_t)shareDirectionBySourceName
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)shareDirectionByResource
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (unint64_t)shareDirectionForSourceName:(id)name
{
  if (self)
  {
    self = self->_shareDirectionBySourceName;
  }

  v3 = [(DSSharingPerson *)self objectForKeyedSubscript:name];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
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

- (void)addSource:(id)source sharedResource:(id)resource participant:(id)participant deviceOwnerRole:(int64_t)role
{
  sourceCopy = source;
  resourceCopy = resource;
  participantCopy = participant;
  if (self)
  {
    v11 = self->_sources;
    name = [sourceCopy name];
    [(NSMutableDictionary *)v11 setObject:sourceCopy forKeyedSubscript:name];

    participantsBySource = self->_participantsBySource;
  }

  else
  {
    name2 = [sourceCopy name];
    [0 setObject:sourceCopy forKeyedSubscript:name2];

    participantsBySource = 0;
  }

  v14 = participantsBySource;
  name3 = [sourceCopy name];
  array = [(NSMutableDictionary *)v14 objectForKeyedSubscript:name3];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  [array addObject:participantCopy];
  if (self)
  {
    v17 = self->_participantsBySource;
    name4 = [sourceCopy name];
    OUTLINED_FUNCTION_10_0(name4);

    sharedResourcesBySource = self->_sharedResourcesBySource;
  }

  else
  {
    name5 = [sourceCopy name];
    [0 setObject:array forKeyedSubscript:name5];

    sharedResourcesBySource = 0;
  }

  v20 = sharedResourcesBySource;
  name6 = [sourceCopy name];
  v22 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:name6];

  if (!v22)
  {
    v22 = [MEMORY[0x277CBEB58] set];
  }

  [v22 addObject:resourceCopy];
  if (self)
  {
    v23 = self->_sharedResourcesBySource;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  name7 = [sourceCopy name];
  [(NSMutableDictionary *)v24 setObject:v22 forKeyedSubscript:name7];

  [OUTLINED_FUNCTION_8_0() updateKnownEmailAddressesForParticipant:?];
  [OUTLINED_FUNCTION_8_0() updateKnownNameForParticipant:?];
  [OUTLINED_FUNCTION_8_0() updateShareDirectionForParticipant:? source:? sharedResource:? deviceOwnerRole:?];
  [OUTLINED_FUNCTION_8_0() updateKnownPhoneNumbersForParticipant:?];
}

- (uint64_t)sharedResourcesBySource
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)removeSourceWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (self)
  {
    sources = self->_sources;
  }

  else
  {
    sources = 0;
  }

  v6 = [(NSMutableDictionary *)sources objectForKey:nameCopy];

  if (v6)
  {
    if (self)
    {
      v7 = [(NSMutableDictionary *)self->_participantsBySource objectForKeyedSubscript:nameCopy];
      [v7 removeAllObjects];

      v8 = self->_sources;
    }

    else
    {
      v16 = [0 objectForKeyedSubscript:nameCopy];
      [v16 removeAllObjects];

      v8 = 0;
    }

    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:nameCopy];
  }

  else if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_3_1(&dword_248C40000, v9, v10, "Failed to find source named %{public}@", v11, v12, v13, v14, 2u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)score
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (self)
  {
    sources = self->_sources;
  }

  else
  {
    sources = 0;
  }

  v4 = sources;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [DSSourceDescriptor sourceDescriptorForSource:*(*(&v19 + 1) + 8 * i), v19];
        priority = [v10 priority];
        v12 = __OFADD__(v7, priority);
        v7 += priority;
        if (v12)
        {
          v13 = DSLogSharingPerson;
          if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_FAULT))
          {
            if (self)
            {
              v17 = self->_sources;
            }

            else
            {
              v17 = 0;
            }

            *buf = 138412290;
            v24 = v17;
            v18 = v13;
            _os_log_fault_impl(&dword_248C40000, v18, OS_LOG_TYPE_FAULT, "Counting any more priorities in %@ will overflow", buf, 0xCu);
          }

          result = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_18;
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  if (self)
  {
    names = self->_names;
  }

  else
  {
    names = 0;
  }

  result = (__PAIR128__(v7, [(NSMutableSet *)names count]) - 1) >> 64;
LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)sharedResourcesForSourceName:(id)name
{
  if (self)
  {
    self = self->_sharedResourcesBySource;
  }

  v3 = [(DSSharingPerson *)self objectForKeyedSubscript:name];
  v4 = [v3 copy];

  return v4;
}

- (id)participationForSourceName:(id)name
{
  if (self)
  {
    self = self->_participantsBySource;
  }

  v3 = [(DSSharingPerson *)self objectForKeyedSubscript:name];
  v4 = [v3 copy];

  return v4;
}

- (unint64_t)hash
{
  if (self)
  {
    self = self->_identifier;
  }

  return [(DSSharingPerson *)self hash];
}

- (uint64_t)identifier
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
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
      v14 = DSLogSharingPerson;
      LOBYTE(v10) = 1;
      if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
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
        v25 = DSLogSharingPerson;
        if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
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

  v9 = DSLogSharingPerson;
  LOBYTE(v10) = 1;
  if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
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

- (NSArray)sortedSourceNames
{
  if (self)
  {
    self = self->_sources;
  }

  allKeys = [(DSSharingPerson *)self allKeys];
  v3 = [allKeys sortedArrayUsingComparator:&__block_literal_global_9];

  return v3;
}

- (NSArray)allSources
{
  if (self)
  {
    self = self->_sources;
  }

  return [(DSSharingPerson *)self allValues];
}

- (void)stopAllSharingOnQueue:(id)queue completion:(id)completion
{
  if (self)
  {
    sources = self->_sources;
  }

  else
  {
    sources = 0;
  }

  completionCopy = completion;
  queueCopy = queue;
  allValues = [(NSMutableDictionary *)sources allValues];
  [(DSSharingPerson *)self stopSharingSources:allValues queue:queueCopy completion:completionCopy];
}

- (void)updateContactFromIdentity:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DSLogSharingPerson;
  if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
  {
    v6 = 138478083;
    v7 = a1;
    v8 = 2114;
    v9 = a2;
    _os_log_impl(&dword_248C40000, v4, OS_LOG_TYPE_INFO, "Falling back to name component %{private}@ for %{public}@", &v6, 0x16u);
  }

  [(DSSharingPerson *)a2 setIdentifier:a1];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateContactFromIdentity:(void *)a3 .cold.2(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = DSLogSharingPerson;
  if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [a1 emailAddress];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0_4(&dword_248C40000, v8, v9, "Falling back to email %{private}@ for %{public}@", v10, v11, v12, v13, v17);
  }

  v14 = [a1 emailAddress];
  *a3 = v14;
  [v14 ds_formattedPotentialPhoneNumber];
  objc_claimAutoreleasedReturnValue();
  v15 = OUTLINED_FUNCTION_5_1();
  [(DSSharingPerson *)v15 setIdentifier:a3];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateContactFromIdentity:(void *)a3 .cold.3(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = DSLogSharingPerson;
  if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [a1 phoneNumber];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0_4(&dword_248C40000, v8, v9, "Falling back to phone number %{private}@ for %{public}@", v10, v11, v12, v13, v17);
  }

  v14 = [a1 phoneNumber];
  *a3 = v14;
  [v14 ds_formattedPotentialPhoneNumber];
  objc_claimAutoreleasedReturnValue();
  v15 = OUTLINED_FUNCTION_5_1();
  [(DSSharingPerson *)v15 setIdentifier:a3];

  v16 = *MEMORY[0x277D85DE8];
}

- (uint64_t)updateKnownEmailAddressesForParticipant:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = a1[6];
  }

  return [a1 addObject:a2];
}

- (uint64_t)updateKnownNameForParticipant:(void *)a1 .cold.1(void *a1, const char *a2)
{
  if (a1)
  {
    a1 = a1[7];
  }

  return OUTLINED_FUNCTION_2_2(a1, a2);
}

- (uint64_t)updateKnownPhoneNumbersForParticipant:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = a1[8];
  }

  return [a1 addObject:a2];
}

- (void)removeParticipant:(void *)a1 fromSource:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v4 = [a1 name];
  v3 = [0 objectForKeyedSubscript:v4];
  [v3 removeObject:a2];
}

- (void)removeParticipant:(char)a1 fromSource:(uint64_t)a2 .cold.2(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a2 + 16);
  }

  v4 = v3;
  v5 = [OUTLINED_FUNCTION_5_1() name];
  [v2 setObject:0 forKeyedSubscript:v5];
}

- (void)isEqual:(_BYTE *)a3 .cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    if (a2)
    {
LABEL_3:
      v5 = *(a2 + 40);
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_4:
  v6 = v4;
  *a3 = [v6 isEqualToString:v5];
}

- (void)displayName
{
  selfCopy = self;
  if (self)
  {
    self = self[7];
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
      v9 = selfCopy[5];
    }

    else
    {
      v9 = 0;
    }

    v8 = v9;
  }

  *a2 = v8;
}

- (void)stopSharingSources:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0(v1, v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_4_0(&dword_248C40000, "Signpost for unsupported source name %{public}@", v4, v5);
}

void __55__DSSharingPerson_stopSharingSources_queue_completion___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_5_1() name];
  OUTLINED_FUNCTION_3_1(&dword_248C40000, v6, v7, "Signpost for unsupported source name %{public}@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

@end
@interface DSSharingPerson
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMe:(id)a3;
- (DSSharingPerson)init;
- (DSSharingPerson)initWithSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6;
- (DSSharingPerson)initWithSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6 contact:(id)a7;
- (DSSharingPerson)initWithSource:(id)a3 sharedResource:(id)a4 unknownParticipant:(id)a5 deviceOwnerRole:(int64_t)a6;
- (NSArray)allSources;
- (NSArray)sortedSourceNames;
- (NSArray)termsOfAddress;
- (NSString)displayGivenName;
- (NSString)displayName;
- (NSString)localizedDetail;
- (id)participationForSourceName:(id)a3;
- (id)sharedResourcesForSourceName:(id)a3;
- (id)valueForKey:(id)a3;
- (int64_t)score;
- (uint64_t)emailAddresses;
- (uint64_t)identifier;
- (uint64_t)names;
- (uint64_t)phoneNumbers;
- (uint64_t)shareDirectionByResource;
- (uint64_t)shareDirectionBySourceName;
- (uint64_t)sharedResourcesBySource;
- (unint64_t)hash;
- (unint64_t)shareDirectionForSharedResource:(id)a3;
- (unint64_t)shareDirectionForSourceName:(id)a3;
- (void)addSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6;
- (void)displayName;
- (void)removeParticipant:(id)a3 fromSource:(id)a4;
- (void)removeSourceWithName:(id)a3;
- (void)setEmailAddresses:(uint64_t)a1;
- (void)setIdentifier:(uint64_t)a1;
- (void)setNames:(uint64_t)a1;
- (void)setPhoneNumbers:(uint64_t)a1;
- (void)setShareDirectionByResource:(uint64_t)a1;
- (void)setShareDirectionBySourceName:(uint64_t)a1;
- (void)setSharedResourcesBySource:(uint64_t)a1;
- (void)stopAllSharingOnQueue:(id)a3 completion:(id)a4;
- (void)stopSharingSourceNames:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)stopSharingSources:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)updateContactFromIdentity:(id)a3;
- (void)updateContactFromParticipant:(id)a3;
- (void)updateKnownEmailAddressesForParticipant:(id)a3;
- (void)updateKnownNameForParticipant:(id)a3;
- (void)updateKnownPhoneNumbersForParticipant:(id)a3;
- (void)updateShareDirectionForParticipant:(id)a3 source:(id)a4 sharedResource:(id)a5 deviceOwnerRole:(int64_t)a6;
@end

@implementation DSSharingPerson

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLogSharingPerson = os_log_create("com.apple.DigitalSeparation", "DSSharingPerson");

    MEMORY[0x2821F96F8]();
  }
}

- (DSSharingPerson)initWithSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(DSSharingPerson *)self init];
  v14 = v13;
  if (v13)
  {
    [(DSSharingPerson *)v13 updateContactFromParticipant:v12];
    [(DSSharingPerson *)v14 addSource:v10 sharedResource:v11 participant:v12 deviceOwnerRole:a6];
  }

  return v14;
}

- (DSSharingPerson)initWithSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6 contact:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(DSSharingPerson *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_contact, a7);
    v18 = [v15 identifier];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    [(DSSharingPerson *)v17 addSource:v12 sharedResource:v13 participant:v14 deviceOwnerRole:a6];
  }

  return v17;
}

- (DSSharingPerson)initWithSource:(id)a3 sharedResource:(id)a4 unknownParticipant:(id)a5 deviceOwnerRole:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(DSSharingPerson *)self init];
  if (v13)
  {
    v14 = [v12 identity];
    [(DSSharingPerson *)v13 updateContactFromIdentity:v14];

    [(DSSharingPerson *)v13 addSource:v10 sharedResource:v11 participant:v12 deviceOwnerRole:a6];
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
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

- (void)updateContactFromParticipant:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DSSharingPerson *)self contact];

  if (!v5)
  {
    v7 = [(DSSharingPerson *)v4 identity];
    v8 = [(DSSharingPerson *)self contactMatchingIdentity:v7];
    v9 = DSLogSharingPerson;
    if (v8)
    {
      if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
      {
        v12 = 138478339;
        v13 = v8;
        v14 = 2114;
        v15 = self;
        v16 = 2113;
        v17 = v7;
        _os_log_impl(&dword_248C40000, v9, OS_LOG_TYPE_INFO, "Found contact %{private}@ for %{public}@ source: %{private}@", &v12, 0x20u);
      }

      v11 = [v8 identifier];
      [(DSSharingPerson *)self setIdentifier:v11];

      [(DSSourceDescriptor *)self setSourceName:v8];
    }

    else
    {
      if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138478083;
        v13 = v7;
        v14 = 2114;
        v15 = self;
        _os_log_impl(&dword_248C40000, v9, OS_LOG_TYPE_DEFAULT, "No contact found for identity: %{private}@, person: %{public}@ . Trying other fallbacks...", &v12, 0x16u);
      }

      [(DSSharingPerson *)self updateContactFromIdentity:v7];
    }

    goto LABEL_8;
  }

  v6 = DSLogSharingPerson;
  if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(DSSharingPerson *)self contact];
    v12 = 138478339;
    v13 = v8;
    v14 = 2113;
    v15 = v4;
    v16 = 2114;
    v17 = self;
    _os_log_impl(&dword_248C40000, v7, OS_LOG_TYPE_INFO, "Using cached contact %{private}@ for participant %{private}@, person %{public}@", &v12, 0x20u);
LABEL_8:
  }

  v10 = *MEMORY[0x277D85DE8];
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
        [(DSSharingPerson *)v8 updateContactFromIdentity:?];
        goto LABEL_11;
      }
    }
  }

  v13 = [v4 emailAddress];
  v14 = [v13 length];

  if (v14)
  {
    [(DSSharingPerson *)v4 updateContactFromIdentity:&v17];
LABEL_10:
    v8 = v17;
LABEL_11:

    goto LABEL_7;
  }

  v15 = [v4 phoneNumber];
  v16 = [v15 length];

  if (v16)
  {
    [(DSSharingPerson *)v4 updateContactFromIdentity:&v17];
    goto LABEL_10;
  }

LABEL_7:
}

- (void)updateKnownEmailAddressesForParticipant:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DSSharingPerson *)self contact];
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
    [(DSSharingPerson *)self updateKnownEmailAddressesForParticipant:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateKnownNameForParticipant:(id)a3
{
  v10 = a3;
  v4 = MEMORY[0x277CBDA78];
  v5 = [(DSSharingPerson *)self contact];
  v6 = [v4 stringFromContact:v5 style:0];

  if ([v6 length])
  {
    [(DSSharingPerson *)self updateKnownNameForParticipant:v6];
  }

  v7 = [v10 identity];
  v8 = [v7 nameComponents];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v8 style:0 options:0];

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

- (void)updateKnownPhoneNumbersForParticipant:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DSSharingPerson *)self contact];
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
    [(DSSharingPerson *)self updateKnownPhoneNumbersForParticipant:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)removeParticipant:(id)a3 fromSource:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = v6;
  if (self)
  {
    v8 = self->_participantsBySource;
    v9 = [v7 name];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];

    [v10 removeObject:v16];
    participantsBySource = self->_participantsBySource;
  }

  else
  {
    [DSSharingPerson removeParticipant:v6 fromSource:v16];
    participantsBySource = 0;
  }

  v12 = participantsBySource;
  v13 = [v7 name];
  v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];

  v15 = [v14 count];
  if (!v15)
  {
    [DSSharingPerson removeParticipant:self fromSource:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(DSSharingPerson *)self isEqual:v4, &v7];
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
  v3 = [(DSSharingPerson *)self contact];

  if (v3)
  {
    v4 = MEMORY[0x277CBDA78];
    v5 = [(DSSharingPerson *)self contact];
    v6 = [v4 stringFromContact:v5 style:0];

    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = DSLocStringForKey(@"SHARING_PERSON_DISPLAY_NAME");
      v9 = [v7 stringWithFormat:v8, v6];
LABEL_9:

      goto LABEL_10;
    }

    v10 = [(DSSharingPerson *)self contact];
    v11 = [v10 emailAddresses];
    v12 = [v11 count];

    v13 = [(DSSharingPerson *)self contact];
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
      v6 = [(DSSharingPerson *)self contact];
      v8 = [v6 phoneNumbers];
      v14 = [v8 firstObject];
      v17 = [v14 value];
      v9 = [v17 stringValue];

      goto LABEL_8;
    }

    v9 = 0;
  }

  else
  {
    [(DSSharingPerson *)self displayName];
    v9 = v19;
  }

LABEL_10:

  return v9;
}

- (NSString)displayGivenName
{
  v3 = objc_alloc_init(MEMORY[0x277CCAC00]);
  v4 = [(DSSharingPerson *)self contact];
  v5 = [v4 givenName];
  [v3 setGivenName:v5];

  v6 = [(DSSharingPerson *)self contact];
  v7 = [v6 familyName];
  [v3 setFamilyName:v7];

  v8 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v3 style:1 options:0];
  if ([v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = [(DSSharingPerson *)self displayName];
  }

  v10 = v9;

  return v10;
}

- (NSArray)termsOfAddress
{
  v3 = [(DSSharingPerson *)self contact];

  if (v3)
  {
    v4 = [(DSSharingPerson *)self contact];
    v5 = [v4 termsOfAddress];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
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
  v2 = [(DSSharingPerson *)self sortedSourceNames];
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

- (void)stopSharingSources:(id)a3 queue:(id)a4 completion:(id)a5
{
  v155 = *MEMORY[0x277D85DE8];
  v7 = a3;
  queue = a4;
  v116 = a5;
  v126 = [MEMORY[0x277CBEB18] array];
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
  obj = v7;
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
        v15 = [v14 name];
        v16 = [DSRestrictionStore isSourceRestricted:v15];

        if (v16)
        {
          v17 = DSLogSharingPerson;
          if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
          {
            v18 = v17;
            v19 = [v14 name];
            *buf = 138412290;
            v151 = v19;
            _os_log_impl(&dword_248C40000, v18, OS_LOG_TYPE_INFO, "Cannot reset %@ due to restrictions", buf, 0xCu);
          }

          v20 = [v14 name];
          v21 = [DSError errorWithCode:6 sourceName:v20];
          [v126 addObject:v21];

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
        v24 = [v14 name];
        v25 = [(NSMutableDictionary *)v23 objectForKeyedSubscript:v24];
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
              v39 = [v14 name];
              v40 = [v39 isEqualToString:@"com.apple.DigitalSeparation.Calendars"];

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
                v46 = [v14 name];
                v47 = [v46 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

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
                  v49 = [v14 name];
                  v50 = [v49 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

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
                    v52 = [v14 name];
                    v53 = [v52 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

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
                      v55 = [v14 name];
                      v56 = [v55 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

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
                        v58 = [v14 name];
                        v59 = [v58 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

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
                          v61 = [v14 name];
                          v62 = [v61 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

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
                            v64 = [v14 name];
                            v65 = [v64 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

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
                              v67 = [v14 name];
                              v68 = [v67 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

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
                                v70 = [v14 name];
                                v71 = [v70 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

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
                                  v73 = [v14 name];
                                  v74 = [v73 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

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
                v77 = [v14 name];
                *buf = 138478083;
                v151 = v37;
                v152 = 2114;
                v153 = v77;
                _os_log_impl(&dword_248C40000, v76, OS_LOG_TYPE_INFO, "Stopping sharing of %{private}@ from source %{public}@", buf, 0x16u);
              }

              v131[0] = MEMORY[0x277D85DD0];
              v131[1] = 3221225472;
              v131[2] = __55__DSSharingPerson_stopSharingSources_queue_completion___block_invoke_328;
              v131[3] = &unk_278F73050;
              v131[4] = v14;
              v131[5] = v37;
              v132 = v126;
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
        v27 = [v14 name];
        v28 = [v27 isEqualToString:@"com.apple.DigitalSeparation.Calendars"];

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
          v79 = [v14 name];
          v80 = [v79 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

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
            v82 = [v14 name];
            v83 = [v82 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

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
              v85 = [v14 name];
              v86 = [v85 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

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
                v88 = [v14 name];
                v89 = [v88 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

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
                  v91 = [v14 name];
                  v92 = [v91 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

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
                    v94 = [v14 name];
                    v95 = [v94 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

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
                      v97 = [v14 name];
                      v98 = [v97 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

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
                        v100 = [v14 name];
                        v101 = [v100 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

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
                          v103 = [v14 name];
                          v104 = [v103 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

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
                            v106 = [v14 name];
                            v107 = [v106 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

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
          v110 = [v14 name];
          *buf = 138478083;
          v151 = v124;
          v152 = 2114;
          v153 = v110;
          _os_log_impl(&dword_248C40000, v109, OS_LOG_TYPE_INFO, "Stopping sharing of participants %{private}@ from source %{public}@", buf, 0x16u);
        }

        v139[0] = MEMORY[0x277D85DD0];
        v139[1] = 3221225472;
        v139[2] = __55__DSSharingPerson_stopSharingSources_queue_completion___block_invoke;
        v139[3] = &unk_278F73050;
        v139[4] = v14;
        v111 = v124;
        v140 = v111;
        v141 = v126;
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
  v129 = v116;
  v130 = spid;
  v128 = v126;
  v113 = v116;
  v114 = v126;
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

- (void)stopSharingSourceNames:(id)a3 queue:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v8;
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
          [v11 addObject:v18];
        }

        ++v16;
      }

      while (v14 != v16);
      v19 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v14 = v19;
    }

    while (v19);
  }

  [(DSSharingPerson *)self stopSharingSources:v11 queue:v9 completion:v10];
  v20 = *MEMORY[0x277D85DE8];
}

- (id)valueForKey:(id)a3
{
  if ([a3 isEqualToString:@"displayName"])
  {
    v4 = [(DSSharingPerson *)self displayName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIdentifier:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

- (void)setSharedResourcesBySource:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (void)setEmailAddresses:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (void)setNames:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

- (void)setShareDirectionBySourceName:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

- (void)setShareDirectionByResource:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

- (void)setPhoneNumbers:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
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

- (void)updateShareDirectionForParticipant:(id)a3 source:(id)a4 sharedResource:(id)a5 deviceOwnerRole:(int64_t)a6
{
  v24 = a3;
  v10 = a4;
  v11 = a5;
  if (a6 == 2)
  {
    v22 = [v24 role];
    if (v22 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 4 * (v22 == 2);
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
  v14 = shareDirectionBySourceName;
  v15 = [v10 name];
  v16 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];

  v17 = [v16 unsignedIntegerValue];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17 | v12];
  if (self)
  {
    v19 = self->_shareDirectionBySourceName;
    v20 = [v10 name];
    OUTLINED_FUNCTION_10_0(v20);

    shareDirectionByResource = self->_shareDirectionByResource;
  }

  else
  {
    v23 = [v10 name];
    [0 setObject:v18 forKeyedSubscript:v23];

    shareDirectionByResource = 0;
  }

  NSMapInsert(shareDirectionByResource, v11, v12);
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

- (unint64_t)shareDirectionForSourceName:(id)a3
{
  if (self)
  {
    self = self->_shareDirectionBySourceName;
  }

  v3 = [(DSSharingPerson *)self objectForKeyedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
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

- (void)addSource:(id)a3 sharedResource:(id)a4 participant:(id)a5 deviceOwnerRole:(int64_t)a6
{
  v28 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    v11 = self->_sources;
    v12 = [v28 name];
    [(NSMutableDictionary *)v11 setObject:v28 forKeyedSubscript:v12];

    participantsBySource = self->_participantsBySource;
  }

  else
  {
    v26 = [v28 name];
    [0 setObject:v28 forKeyedSubscript:v26];

    participantsBySource = 0;
  }

  v14 = participantsBySource;
  v15 = [v28 name];
  v16 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];

  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB18] array];
  }

  [v16 addObject:v10];
  if (self)
  {
    v17 = self->_participantsBySource;
    v18 = [v28 name];
    OUTLINED_FUNCTION_10_0(v18);

    sharedResourcesBySource = self->_sharedResourcesBySource;
  }

  else
  {
    v27 = [v28 name];
    [0 setObject:v16 forKeyedSubscript:v27];

    sharedResourcesBySource = 0;
  }

  v20 = sharedResourcesBySource;
  v21 = [v28 name];
  v22 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:v21];

  if (!v22)
  {
    v22 = [MEMORY[0x277CBEB58] set];
  }

  [v22 addObject:v9];
  if (self)
  {
    v23 = self->_sharedResourcesBySource;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  v25 = [v28 name];
  [(NSMutableDictionary *)v24 setObject:v22 forKeyedSubscript:v25];

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

- (void)removeSourceWithName:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    sources = self->_sources;
  }

  else
  {
    sources = 0;
  }

  v6 = [(NSMutableDictionary *)sources objectForKey:v4];

  if (v6)
  {
    if (self)
    {
      v7 = [(NSMutableDictionary *)self->_participantsBySource objectForKeyedSubscript:v4];
      [v7 removeAllObjects];

      v8 = self->_sources;
    }

    else
    {
      v16 = [0 objectForKeyedSubscript:v4];
      [v16 removeAllObjects];

      v8 = 0;
    }

    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v4];
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
        v11 = [v10 priority];
        v12 = __OFADD__(v7, v11);
        v7 += v11;
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

- (id)sharedResourcesForSourceName:(id)a3
{
  if (self)
  {
    self = self->_sharedResourcesBySource;
  }

  v3 = [(DSSharingPerson *)self objectForKeyedSubscript:a3];
  v4 = [v3 copy];

  return v4;
}

- (id)participationForSourceName:(id)a3
{
  if (self)
  {
    self = self->_participantsBySource;
  }

  v3 = [(DSSharingPerson *)self objectForKeyedSubscript:a3];
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
      v14 = DSLogSharingPerson;
      LOBYTE(v10) = 1;
      if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
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
        v25 = DSLogSharingPerson;
        if (os_log_type_enabled(DSLogSharingPerson, OS_LOG_TYPE_INFO))
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
    v12 = v9;
    _os_log_impl(&dword_248C40000, v12, OS_LOG_TYPE_INFO, "%{private}@ is the me card", &v36, 0xCu);
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

  v2 = [(DSSharingPerson *)self allKeys];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_9];

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

- (void)stopAllSharingOnQueue:(id)a3 completion:(id)a4
{
  if (self)
  {
    sources = self->_sources;
  }

  else
  {
    sources = 0;
  }

  v7 = a4;
  v8 = a3;
  v9 = [(NSMutableDictionary *)sources allValues];
  [(DSSharingPerson *)self stopSharingSources:v9 queue:v8 completion:v7];
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
  v3 = a1;
  if (a1)
  {
    a1 = a1[7];
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
      v9 = v3[5];
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
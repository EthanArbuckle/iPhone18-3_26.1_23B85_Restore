@interface SGPipelineEntity
+ (id)fromCloudKitRecord:(id)a3;
- ($1A3E566C64BD7EB8CFED4F6C8FE6621B)inhumanFeatures;
- (BOOL)hasEventEnrichment;
- (BOOL)isInhuman;
- (NSArray)taggedCharacterRanges;
- (SGPipelineEntity)initWithDuplicateKey:(id)a3 title:(id)a4;
- (SGPipelineEntity)initWithEmailMessage:(id)a3;
- (SGPipelineEntity)initWithIntentPersonAtDate:(id)a3 bundleId:(id)a4 handle:(id)a5 displayName:(id)a6;
- (SGPipelineEntity)initWithInteraction:(id)a3 fromBundleIdentifier:(id)a4;
- (SGPipelineEntity)initWithInteraction:(id)a3 identifier:(id)a4 fromBundleIdentifier:(id)a5;
- (SGPipelineEntity)initWithMessage:(id)a3;
- (SGPipelineEntity)initWithMessageId:(id)a3 uniqueIdentifier:(id)a4 appleMailMessageId:(id)a5 mailboxIdentifiers:(id)a6 accountType:(id)a7 mailingList:(id)a8 source:(id)a9 subject:(id)a10 date:(id)a11 author:(id)a12 textContentSnippet:(id)a13 isSent:(BOOL)a14 isPartiallyDownloaded:(BOOL)a15 hasInhumanHeaders:(BOOL)a16 primaryRecipients:(id)a17 accountHandles:(id)a18;
- (SGPipelineEntity)initWithTextMessage:(id)a3;
- (SGPipelineEntity)initWithUniqueIdentifier:(id)a3 source:(id)a4 subject:(id)a5 textContent:(id)a6 date:(id)a7 author:(id)a8 authorNickname:(id)a9 authorPhotoPath:(id)a10 isSent:(BOOL)a11;
- (_NSRange)plainTextSigRange;
- (id)_initWithInteractionIdentifier:(id)a3 fromBundleIdentifier:(id)a4 creationTime:(id)a5;
- (id)contactDetailsWithType:(unint64_t)a3;
- (unint64_t)eventEnrichmentsCount;
- (void)_lazyCheckMessageForHumanness;
- (void)addBirthdayEnrichment:(id)a3;
- (void)addDetectedBirthday:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7;
- (void)addDetectedEmailAddress:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7;
- (void)addDetectedInstantMessageAddress:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7;
- (void)addDetectedPhoneNumber:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7;
- (void)addDetectedPostalAddress:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7;
- (void)addDetectedSocialProfile:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7;
- (void)addDetection:(id)a3 forIdentity:(id)a4 extractionInfo:(id)a5;
- (void)addEmailAddressEnrichment:(id)a3;
- (void)addEnrichments:(id)a3;
- (void)addOrReplaceEventEnrichment:(id)a3;
- (void)addOrReplacePreferredEnrichment:(id)a3;
- (void)addTaggedCharacterRanges:(id)a3;
- (void)dealloc;
- (void)enumeratePeople:(id)a3;
- (void)requestFullDownload;
- (void)runWithDissectorLock:(id)a3;
- (void)setCreationTimestamp:(SGUnixTimestamp_)a3;
- (void)setLastModifiedTimestamp:(SGUnixTimestamp_)a3;
- (void)stripEventInformation;
@end

@implementation SGPipelineEntity

- (_NSRange)plainTextSigRange
{
  p_plainTextSigRange = &self->_plainTextSigRange;
  location = self->_plainTextSigRange.location;
  length = p_plainTextSigRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)runWithDissectorLock:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_dissectorLock);
  v4[2](v4);

  pthread_mutex_unlock(&self->_dissectorLock);
}

- (unint64_t)eventEnrichmentsCount
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_enrichments;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) isEvent];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)hasEventEnrichment
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_enrichments;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isEvent])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)requestFullDownload
{
  if ([(SGEntity *)self isPartiallyDownloaded])
  {
    self->_fullDownloadRequested = 1;
  }
}

- (BOOL)isInhuman
{
  if (self->_message && !self->_messageInhumannessChecked)
  {
    [(SGPipelineEntity *)self _lazyCheckMessageForHumanness];
  }

  v4.receiver = self;
  v4.super_class = SGPipelineEntity;
  return [(SGEntity *)&v4 isInhuman];
}

- ($1A3E566C64BD7EB8CFED4F6C8FE6621B)inhumanFeatures
{
  if (self->_message && !self->_messageInhumannessChecked)
  {
    [(SGPipelineEntity *)self _lazyCheckMessageForHumanness];
  }

  return &self->_inhumanFeatures;
}

- (void)_lazyCheckMessageForHumanness
{
  v3 = [(SGPipelineEntity *)self message];
  v4 = [v3 isInhumanSender];

  if (v4)
  {
    v5 = [MEMORY[0x277D01FA0] inhuman];
    [(SGEntity *)self addTag:v5];
  }

  v6 = [(SGPipelineEntity *)self message];
  self->_inhumanFeatures.inhumanBody = [v6 isInhumanContent];

  if (self->_inhumanFeatures.inhumanBody)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "Tagging as inhuman: Body", buf, 2u);
    }

    v8 = [MEMORY[0x277D01FA0] inhuman];
    [(SGEntity *)self addTag:v8];
  }

  if ([(SGSimpleMailMessage *)self->_mailMessage hasHumanHeaders])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "Tagging as human: Headers", v11, 2u);
    }

    v10 = [MEMORY[0x277D01FA0] human];
    [(SGEntity *)self addTag:v10];
  }

  self->_messageInhumannessChecked = 1;
}

- (void)enumeratePeople:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SGPipelineEntity *)self enrichments];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        if ([v10 isPerson])
        {
          v4[2](v4, v10);
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)contactDetailsWithType:(unint64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3 > 6)
  {
    v22 = 0;
    v4 = 0;
  }

  else
  {
    v22 = qword_23210C450[a3];
    v4 = qword_23210C488[a3];
  }

  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(SGPipelineEntity *)self enrichments];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 duplicateKey];
        if ([v11 entityType] == v4)
        {
        }

        else
        {
          v12 = [v10 duplicateKey];
          v13 = [v12 entityType];

          if (v13 != v22)
          {
            continue;
          }
        }

        v14 = [v10 duplicateKey];
        v15 = [v14 contactDetailKey];
        v16 = [v15 label];
        v17 = [v10 title];
        v18 = v16;
        v19 = [[SGLabeledValue alloc] initWithLabel:v18 value:v17];

        [v5 addObject:v19];
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)addDetectedSocialProfile:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7
{
  length = a6.length;
  location = a6.location;
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [(SGEntity *)self duplicateKey];
  [v17 entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:722 description:@"Contacts can't have associated detected instant message addresses."];
  }

  v19 = [SGPipelineEnrichment socialProfile:v21 forIdentity:v14 parent:self curated:0 context:v15 contextRangeOfInterest:location extractionInfo:length, v16];
  [(SGPipelineEntity *)self addSocialProfileEnrichment:v19];
}

- (void)addDetectedInstantMessageAddress:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7
{
  length = a6.length;
  location = a6.location;
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [(SGEntity *)self duplicateKey];
  [v17 entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:697 description:@"Contacts can't have associated detected instant message addresses."];
  }

  v19 = [SGPipelineEnrichment instantMessageAddress:v21 forIdentity:v14 parent:self curated:0 context:v15 contextRangeOfInterest:location extractionInfo:length, v16];
  [(SGPipelineEntity *)self addInstantMessageAddressEnrichment:v19];
}

- (void)addDetectedBirthday:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7
{
  length = a6.length;
  location = a6.location;
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [(SGEntity *)self duplicateKey];
  [v17 entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:675 description:@"Contacts can't have associated detected birthdays."];
  }

  v19 = [(SGPipelineEntity *)self birthday:v21 forIdentity:v14 context:v15 contextRangeOfInterest:location extractionInfo:length, v16];
  [(SGPipelineEntity *)self addBirthdayEnrichment:v19];
}

- (void)addDetectedEmailAddress:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7
{
  length = a6.length;
  location = a6.location;
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [(SGEntity *)self duplicateKey];
  [v17 entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:646 description:@"Contacts can't have associated detected email addresses."];
  }

  v19 = [SGPipelineEnrichment emailAddress:v21 forIdentity:v14 parent:self curated:0 context:v15 contextRangeOfInterest:location extractionInfo:length, v16];
  [(SGPipelineEntity *)self addEmailAddressEnrichment:v19];
}

- (void)addBirthdayEnrichment:(id)a3
{
  v8 = a3;
  v5 = [(SGEntity *)self duplicateKey];
  [v5 entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:631 description:@"Contacts can't have associated detected birthdays."];
  }

  [v8 title];

  [(NSMutableArray *)self->_enrichments addObject:v8];
}

- (void)addEmailAddressEnrichment:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 title];
  v6 = [MEMORY[0x277D06F10] isLegalEmailAddress:v5];

  if (v6)
  {
    [(NSMutableArray *)self->_enrichments addObject:v4];
  }

  else
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v4 title];
      v10 = 136315138;
      v11 = [v8 UTF8String];
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "Ignoring invalid email: %s", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addDetectedPhoneNumber:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7
{
  length = a6.length;
  location = a6.location;
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [(SGEntity *)self duplicateKey];
  [v17 entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:607 description:@"Contacts can't have associated detected phone numbers."];
  }

  v19 = [SGPipelineEnrichment phoneNumber:v21 forIdentity:v14 parent:self curated:0 context:v15 contextRangeOfInterest:location extractionInfo:length, v16];
  [(SGPipelineEntity *)self addEnrichment:v19];
}

- (void)addDetectedPostalAddress:(id)a3 forIdentity:(id)a4 context:(id)a5 contextRangeOfInterest:(_NSRange)a6 extractionInfo:(id)a7
{
  length = a6.length;
  location = a6.location;
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [(SGEntity *)self duplicateKey];
  [v17 entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:591 description:@"Contacts can't have associated detected addresses."];
  }

  v19 = [SGPipelineEnrichment address:v21 forIdentity:v14 parent:self curated:0 context:v15 contextRangeOfInterest:location extractionInfo:length, v16];
  [(SGPipelineEntity *)self addEnrichment:v19];
}

- (void)addDetection:(id)a3 forIdentity:(id)a4 extractionInfo:(id)a5
{
  v24 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v24 label];
  v11 = [v24 extraction];
  v12 = v10;
  v13 = [[SGLabeledValue alloc] initWithLabel:v12 value:v11];

  v14 = [v24 type];
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = [v24 context];
      v22 = [v24 contextRangeOfInterest];
      [(SGPipelineEntity *)self addDetectedEmailAddress:v13 forIdentity:v8 context:v15 contextRangeOfInterest:v22 extractionInfo:v23, v9];
    }

    else
    {
      if (v14 != 3)
      {
        goto LABEL_11;
      }

      v15 = [v24 context];
      v18 = [v24 contextRangeOfInterest];
      [(SGPipelineEntity *)self addDetectedBirthday:v13 forIdentity:v8 context:v15 contextRangeOfInterest:v18 extractionInfo:v19, v9];
    }
  }

  else if (v14)
  {
    if (v14 != 1)
    {
      goto LABEL_11;
    }

    v15 = [v24 context];
    v16 = [v24 contextRangeOfInterest];
    [(SGPipelineEntity *)self addDetectedPostalAddress:v13 forIdentity:v8 context:v15 contextRangeOfInterest:v16 extractionInfo:v17, v9];
  }

  else
  {
    v15 = [v24 context];
    v20 = [v24 contextRangeOfInterest];
    [(SGPipelineEntity *)self addDetectedPhoneNumber:v13 forIdentity:v8 context:v15 contextRangeOfInterest:v20 extractionInfo:v21, v9];
  }

LABEL_11:
}

- (void)setLastModifiedTimestamp:(SGUnixTimestamp_)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_enrichments;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) setLastModifiedTimestamp:a3.secondsFromUnixEpoch];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11.receiver = self;
  v11.super_class = SGPipelineEntity;
  [(SGEntity *)&v11 setLastModifiedTimestamp:a3.secondsFromUnixEpoch];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCreationTimestamp:(SGUnixTimestamp_)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_enrichments;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) setCreationTimestamp:a3.secondsFromUnixEpoch];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11.receiver = self;
  v11.super_class = SGPipelineEntity;
  [(SGEntity *)&v11 setCreationTimestamp:a3.secondsFromUnixEpoch];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)stripEventInformation
{
  enrichments = self->_enrichments;
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_48];
  [(NSMutableArray *)enrichments filterUsingPredicate:v3];
}

BOOL __41__SGPipelineEntity_stripEventInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 duplicateKey];
  v3 = [v2 entityType] != 2;

  return v3;
}

- (void)addTaggedCharacterRanges:(id)a3
{
  v4 = a3;
  taggedCharacterRanges = self->_taggedCharacterRanges;
  v12 = v4;
  if (!taggedCharacterRanges)
  {
    v6 = [(SGPipelineEntity *)self message];
    v7 = [v6 taggedCharacterRanges];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = self->_taggedCharacterRanges;
    self->_taggedCharacterRanges = v10;

    taggedCharacterRanges = self->_taggedCharacterRanges;
    v4 = v12;
  }

  [(NSMutableArray *)taggedCharacterRanges addObjectsFromArray:v4];
}

- (NSArray)taggedCharacterRanges
{
  taggedCharacterRanges = self->_taggedCharacterRanges;
  if (taggedCharacterRanges)
  {
    v3 = taggedCharacterRanges;
  }

  else
  {
    v5 = [(SGPipelineEntity *)self message];
    v6 = [v5 taggedCharacterRanges];
    v7 = [v6 mutableCopy];
    v8 = v7;
    if (!v7)
    {
      v8 = objc_opt_new();
    }

    objc_storeStrong(&self->_taggedCharacterRanges, v8);
    v3 = v8;
    if (!v7)
    {
    }
  }

  return v3;
}

- (void)addOrReplacePreferredEnrichment:(id)a3
{
  v13 = a3;
  v5 = [v13 duplicateKey];

  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:477 description:@"a preferred enrichment must have a duplicateKey"];
  }

  if (![(NSMutableArray *)self->_enrichments count])
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = [(NSMutableArray *)self->_enrichments objectAtIndexedSubscript:v6];
    v9 = [v8 duplicateKey];
    v10 = [v13 duplicateKey];
    v11 = [v9 isEqualToDuplicateKey:v10];

    if (v11)
    {
      [(NSMutableArray *)self->_enrichments setObject:v13 atIndexedSubscript:v6];
      v7 = 1;
    }

    ++v6;
  }

  while (v6 < [(NSMutableArray *)self->_enrichments count]);
  if ((v7 & 1) == 0)
  {
LABEL_9:
    [(SGPipelineEntity *)self addEnrichment:v13];
  }
}

- (void)addOrReplaceEventEnrichment:(id)a3
{
  v11 = a3;
  v5 = [v11 duplicateKey];

  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:459 description:@"a preferred enrichment must have a duplicateKey"];
  }

  if (![(NSMutableArray *)self->_enrichments count])
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = [v11 duplicateKey];
    v9 = [v8 entityType];

    if (v9 == 2)
    {
      [(NSMutableArray *)self->_enrichments setObject:v11 atIndexedSubscript:v6];
      v7 = 1;
    }

    ++v6;
  }

  while (v6 < [(NSMutableArray *)self->_enrichments count]);
  if ((v7 & 1) == 0)
  {
LABEL_9:
    [(SGPipelineEntity *)self addEnrichment:v11];
  }
}

- (void)addEnrichments:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableArray *)self->_enrichments addObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (self->_flushExternalEnrichments)
  {
    v3 = self->_externalEnrichments;
    if (dealloc__pasOnceToken9 != -1)
    {
      dispatch_once(&dealloc__pasOnceToken9, &__block_literal_global_7827);
    }

    v4 = dealloc__pasExprOnceResult;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__SGPipelineEntity_dealloc__block_invoke_2;
    block[3] = &unk_278954A30;
    v9 = v3;
    v5 = v3;
    v6 = v4;
    dispatch_async(v6, block);
  }

  v7.receiver = self;
  v7.super_class = SGPipelineEntity;
  [(SGEntity *)&v7 dealloc];
}

void __27__SGPipelineEntity_dealloc__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        [v6 flushWrites];
        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __27__SGPipelineEntity_dealloc__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"SGPipelineEntity.flush" qosClass:9];
  v2 = dealloc__pasExprOnceResult;
  dealloc__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_initWithInteractionIdentifier:(id)a3 fromBundleIdentifier:(id)a4 creationTime:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  if (![v11 length])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"interactionIdentifier.length > 0"}];
  }

  if (![v9 length])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier.length > 0"}];
  }

  v12 = [SGDuplicateKey duplicateKeyForInteractionIdentifier:v11 fromBundleIdentifier:v9];
  v13 = [(SGPipelineEntity *)self initWithDuplicateKey:v12 title:v11];

  if (v10 && v13)
  {
    [v10 timeIntervalSince1970];
    [(SGPipelineEntity *)v13 setCreationTimestamp:?];
  }

  return v13;
}

- (SGPipelineEntity)initWithInteraction:(id)a3 identifier:(id)a4 fromBundleIdentifier:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:368 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];
  }

  if (![v11 length])
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:369 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];
  }

  if (![v12 length])
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:370 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier.length > 0"}];
  }

  v13 = [v10 dateInterval];
  v14 = [v13 startDate];
  v15 = [(SGPipelineEntity *)self _initWithInteractionIdentifier:v11 fromBundleIdentifier:v12 creationTime:v14];

  if (v15)
  {
    objc_storeStrong(&v15->_interaction, a3);
  }

  return v15;
}

- (SGPipelineEntity)initWithInteraction:(id)a3 fromBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [(SGPipelineEntity *)self initWithInteraction:v7 identifier:v8 fromBundleIdentifier:v6];

  return v9;
}

- (SGPipelineEntity)initWithIntentPersonAtDate:(id)a3 bundleId:(id)a4 handle:(id)a5 displayName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

LABEL_3:
  v15 = [SGDuplicateKey duplicateKeyForInteractionWithBundleId:v12 personHandle:v13];
  v16 = [(SGPipelineEntity *)self initWithDuplicateKey:v15 title:v14];
  if (v16)
  {
    [v11 timeIntervalSince1970];
    [(SGPipelineEntity *)v16 setCreationTimestamp:?];
  }

  return v16;
}

- (SGPipelineEntity)initWithMessage:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SGPipelineEntity *)self initWithEmailMessage:v4];
LABEL_5:
    self = v5;
    v6 = self;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SGPipelineEntity *)self initWithTextMessage:v4];
    goto LABEL_5;
  }

  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "Unknown SGMessage subclass", v9, 2u);
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (SGPipelineEntity)initWithUniqueIdentifier:(id)a3 source:(id)a4 subject:(id)a5 textContent:(id)a6 date:(id)a7 author:(id)a8 authorNickname:(id)a9 authorPhotoPath:(id)a10 isSent:(BOOL)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v34 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  context = objc_autoreleasePoolPush();
  v24 = [SGDuplicateKey duplicateKeyForTextMessageWithSource:v18 uniqueIdentifier:v17];
  v25 = [(SGPipelineEntity *)self initWithDuplicateKey:v24 title:v19];
  v26 = v25;
  if (v25)
  {
    [(SGEntity *)v25 setContent:v20];
    [v34 timeIntervalSince1970];
    v28 = v27;
    [(SGPipelineEntity *)v26 setLastModifiedTimestamp:?];
    [(SGPipelineEntity *)v26 setCreationTimestamp:v28];
    [(SGEntity *)v26 setAuthor:v21];
    [(SGEntity *)v26 setSourceKey:v18];
    [(SGEntity *)v26 setAuthorNickname:v22];
    [(SGEntity *)v26 setAuthorPhotoPath:v23];
    [MEMORY[0x277D01FA0] fromTextMessage];
    v30 = v29 = v20;
    [(SGEntity *)v26 addTag:v30];

    v20 = v29;
    if (a11)
    {
      v31 = [MEMORY[0x277D01FA0] isSent];
      [(SGEntity *)v26 addTag:v31];

      v20 = v29;
    }
  }

  objc_autoreleasePoolPop(context);
  return v26;
}

- (SGPipelineEntity)initWithTextMessage:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 source];
  v8 = [v5 uniqueIdentifier];
  v9 = [SGDuplicateKey duplicateKeyForTextMessageWithSource:v7 uniqueIdentifier:v8];

  v10 = [v5 subject];
  v11 = [(SGPipelineEntity *)self initWithDuplicateKey:v9 title:v10];

  if (v11)
  {
    v12 = [v5 textContent];
    [(SGEntity *)v11 setContent:v12];

    v13 = [v5 date];
    [v13 timeIntervalSince1970];
    v15 = v14;
    [(SGPipelineEntity *)v11 setLastModifiedTimestamp:?];
    [(SGPipelineEntity *)v11 setCreationTimestamp:v15];

    v16 = [v5 author];
    [(SGEntity *)v11 setAuthor:v16];

    v17 = [v5 source];
    [(SGEntity *)v11 setSourceKey:v17];

    v18 = [v5 nickname];
    [(SGEntity *)v11 setAuthorNickname:v18];

    v19 = [v5 photoPath];
    [(SGEntity *)v11 setAuthorPhotoPath:v19];

    v20 = [MEMORY[0x277D01FA0] fromTextMessage];
    [(SGEntity *)v11 addTag:v20];

    objc_storeStrong(&v11->_message, a3);
    objc_storeStrong(&v11->_textMessage, a3);
    if ([v5 isSent])
    {
      v21 = [MEMORY[0x277D01FA0] isSent];
      [(SGEntity *)v11 addTag:v21];
    }
  }

  objc_autoreleasePoolPop(v6);
  return v11;
}

- (SGPipelineEntity)initWithMessageId:(id)a3 uniqueIdentifier:(id)a4 appleMailMessageId:(id)a5 mailboxIdentifiers:(id)a6 accountType:(id)a7 mailingList:(id)a8 source:(id)a9 subject:(id)a10 date:(id)a11 author:(id)a12 textContentSnippet:(id)a13 isSent:(BOOL)a14 isPartiallyDownloaded:(BOOL)a15 hasInhumanHeaders:(BOOL)a16 primaryRecipients:(id)a17 accountHandles:(id)a18
{
  v82 = *MEMORY[0x277D85DE8];
  v62 = a3;
  v23 = a4;
  v70 = a5;
  v24 = a6;
  obj = a7;
  v69 = a7;
  v72 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v71 = a13;
  v67 = a17;
  v29 = self;
  v30 = a18;
  context = objc_autoreleasePoolPush();
  v31 = v62;
  v32 = v31;
  v68 = v27;
  if (!v31)
  {
    v32 = v23;
    v33 = sgLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v81 = 0;
      _os_log_impl(&dword_231E60000, v33, OS_LOG_TYPE_INFO, "Message-Id header not found. Using hash: %@", buf, 0xCu);
    }

    v29 = self;
  }

  v65 = v32;
  v63 = [SGDuplicateKey duplicateKeyForEmailWithSource:v25 messageId:v32];
  v34 = [SGPipelineEntity initWithDuplicateKey:v29 title:"initWithDuplicateKey:title:"];
  v35 = v34;
  v36 = v72;
  if (v34)
  {
    v57 = v30;
    v58 = v28;
    v60 = v23;
    [(SGEntity *)v34 setSourceKey:v25];
    v37 = v25;
    if (v70)
    {
      v38 = [MEMORY[0x277D01FA0] appleMailMessageId:v70 fromSource:v25];
      [(SGEntity *)v35 addTag:v38];
    }

    v59 = v37;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v39 = v24;
    v40 = [v39 countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v76;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v76 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [MEMORY[0x277D01FA0] mailboxIdentifier:*(*(&v75 + 1) + 8 * i)];
          [(SGEntity *)v35 addTag:v44];
        }

        v41 = [v39 countByEnumeratingWithState:&v75 objects:v79 count:16];
      }

      while (v41);
    }

    if (a14)
    {
      v45 = [MEMORY[0x277D01FA0] isSent];
      [(SGEntity *)v35 addTag:v45];
    }

    v27 = v68;
    [v68 timeIntervalSince1970];
    v47 = v46;
    [(SGPipelineEntity *)v35 setLastModifiedTimestamp:?];
    [(SGPipelineEntity *)v35 setCreationTimestamp:v47];
    v35->_inhumanFeatures.hasInhumanHeaders = a16;
    v36 = v72;
    v28 = v58;
    if (v58)
    {
      if ([MEMORY[0x277D02098] detectContacts])
      {
        [(SGEntity *)v35 setAuthor:v58];
      }

      else
      {
        v48 = sgLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_231E60000, v48, OS_LOG_TYPE_DEBUG, "Skipping setAuthor: detectContacts is OFF", buf, 2u);
        }
      }
    }

    v23 = v60;
    v30 = v57;
    if (a16)
    {
      v35->_messageInhumannessChecked = 1;
      v49 = [MEMORY[0x277D01FA0] inhuman];
      [(SGEntity *)v35 addTag:v49];
    }

    if (a15)
    {
      v50 = [MEMORY[0x277D01FA0] isPartiallyDownloaded];
      [(SGEntity *)v35 addTag:v50];
    }

    if (v72)
    {
      v51 = [MEMORY[0x277D01FA0] mailingListId:v72];
      [(SGEntity *)v35 addTag:v51];
    }

    objc_storeStrong(&v35->_accountType, obj);
    objc_storeStrong(&v35->_primaryRecipients, a17);
    objc_storeStrong(&v35->_accountHandles, a18);
    v52 = objc_alloc(MEMORY[0x277D425F0]);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __243__SGPipelineEntity_initWithMessageId_uniqueIdentifier_appleMailMessageId_mailboxIdentifiers_accountType_mailingList_source_subject_date_author_textContentSnippet_isSent_isPartiallyDownloaded_hasInhumanHeaders_primaryRecipients_accountHandles___block_invoke;
    v73[3] = &unk_278951348;
    v74 = v71;
    v53 = [v52 initWithBlock:v73];
    lazySnippetsContent = v35->_lazySnippetsContent;
    v35->_lazySnippetsContent = v53;

    v25 = v59;
  }

  objc_autoreleasePoolPop(context);
  v55 = *MEMORY[0x277D85DE8];
  return v35;
}

- (SGPipelineEntity)initWithEmailMessage:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 messageId];
  if (!v7)
  {
    v7 = [v5 uniqueIdentifier];
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v54 = v7;
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "Message-Id header not found. Using hash: %@", buf, 0xCu);
    }
  }

  v9 = [v5 source];
  v10 = [SGDuplicateKey duplicateKeyForEmailWithSource:v9 messageId:v7];
  v11 = [v5 subject];
  v12 = [(SGPipelineEntity *)self initWithDuplicateKey:v10 title:v11];

  if (v12)
  {
    v45 = v6;
    v13 = [v5 source];
    [(SGEntity *)v12 setSourceKey:v13];

    v14 = [v5 appleMailMessageId];

    if (v14)
    {
      v15 = MEMORY[0x277D01FA0];
      v16 = [v5 appleMailMessageId];
      v17 = [v5 source];
      v18 = [v15 appleMailMessageId:v16 fromSource:v17];
      [(SGEntity *)v12 addTag:v18];
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = [v5 mailboxIdentifiers];
    v20 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      do
      {
        v23 = 0;
        do
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [MEMORY[0x277D01FA0] mailboxIdentifier:*(*(&v48 + 1) + 8 * v23)];
          [(SGEntity *)v12 addTag:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v21);
    }

    if ([v5 isSent])
    {
      v25 = [MEMORY[0x277D01FA0] isSent];
      [(SGEntity *)v12 addTag:v25];
    }

    v26 = [v5 date];
    [v26 timeIntervalSince1970];
    v28 = v27;
    [(SGPipelineEntity *)v12 setLastModifiedTimestamp:?];
    [(SGPipelineEntity *)v12 setCreationTimestamp:v28];

    v12->_inhumanFeatures.hasInhumanHeaders = [v5 hasInhumanHeaders];
    v29 = [v5 from];

    if (v29)
    {
      if ([MEMORY[0x277D02098] detectContacts])
      {
        v30 = [v5 author];
        [(SGEntity *)v12 setAuthor:v30];
      }

      else
      {
        v30 = sgLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_231E60000, v30, OS_LOG_TYPE_DEBUG, "Skipping setAuthor: detectContacts is OFF", buf, 2u);
        }
      }
    }

    v6 = v45;
    if ([v5 hasInhumanHeaders])
    {
      v12->_messageInhumannessChecked = 1;
      v31 = [MEMORY[0x277D01FA0] inhuman];
      [(SGEntity *)v12 addTag:v31];
    }

    if ([v5 isPartiallyDownloaded])
    {
      v32 = [MEMORY[0x277D01FA0] isPartiallyDownloaded];
      [(SGEntity *)v12 addTag:v32];
    }

    v33 = [v5 mailingList];
    v34 = v33;
    if (v33)
    {
      v35 = MEMORY[0x277D01FA0];
      v36 = [v33 emailAddress];
      v37 = [v35 mailingListId:v36];
      [(SGEntity *)v12 addTag:v37];
    }

    v38 = [v5 accountType];
    accountType = v12->_accountType;
    v12->_accountType = v38;

    objc_storeStrong(&v12->_message, a3);
    objc_storeStrong(&v12->_mailMessage, a3);
    v40 = objc_alloc(MEMORY[0x277D425F0]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __41__SGPipelineEntity_initWithEmailMessage___block_invoke;
    v46[3] = &unk_278951348;
    v47 = v5;
    v41 = [v40 initWithBlock:v46];
    lazySnippetsContent = v12->_lazySnippetsContent;
    v12->_lazySnippetsContent = v41;
  }

  objc_autoreleasePoolPop(v6);
  v43 = *MEMORY[0x277D85DE8];
  return v12;
}

id __41__SGPipelineEntity_initWithEmailMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textContent];
  v3 = [*(a1 + 32) textContent];
  v4 = [v3 length];

  if (v4 >= 0x190)
  {
    v5 = 400;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v2 substringToIndex:v5];

  return v6;
}

- (SGPipelineEntity)initWithDuplicateKey:(id)a3 title:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = SGPipelineEntity;
  v8 = [(SGEntity *)&v17 init];
  if (v8)
  {
    v9 = objc_opt_new();
    v10 = *(v8 + 32);
    *(v8 + 32) = v9;

    v11 = objc_opt_new();
    v12 = *(v8 + 33);
    *(v8 + 33) = v11;

    v8[272] = 0;
    v8[288] = 0;
    *(v8 + 520) = xmmword_232106CE0;
    v13 = objc_opt_new();
    v14 = *(v8 + 53);
    *(v8 + 53) = v13;

    *(v8 + 290) = 196351;
    v8[298] = 0;
    v8[368] = 0;
    v8[392] = 0;
    *(v8 + 376) = xmmword_232106CE0;
    v18.__sig = 0;
    *v18.__opaque = 0;
    pthread_mutexattr_init(&v18);
    pthread_mutexattr_settype(&v18, 2);
    pthread_mutex_init((v8 + 304), &v18);
    pthread_mutexattr_destroy(&v18);
    [v8 setDuplicateKey:v6];
    [v8 setTitle:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)fromCloudKitRecord:(id)a3
{
  v129 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"m"];
  v5 = [v4 unsignedLongLongValue];

  if (v5 >= 5)
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 objectForKeyedSubscript:@"v"];
      v8 = [v3 objectForKeyedSubscript:@"m"];
      *buf = 138412802;
      v124 = v7;
      v125 = 2112;
      v126 = v8;
      v127 = 2112;
      v128 = &unk_284749A40;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_INFO, "SGCK Skipping unsupported CloudKit record (record created by version: %@, version required to process record: %@, version running on this device: %@)", buf, 0x20u);
    }

    goto LABEL_27;
  }

  v9 = [v3 objectForKeyedSubscript:@"v"];
  v10 = [v9 unsignedLongLongValue];

  if (v10 < 3)
  {
    v50 = sgLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v50, OS_LOG_TYPE_INFO, "SGCK Reading pre-Manatee CloudKit record.", buf, 2u);
    }

    v6 = [v3 objectForKeyedSubscript:@"p"];
    if (!v6)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v11 = [v3 encryptedValues];
    v6 = [v11 objectForKeyedSubscript:@"pe"];

    if (!v6)
    {
LABEL_27:
      v51 = 0;
      goto LABEL_90;
    }
  }

  v12 = [MEMORY[0x277D42570] decompress:v6];
  if (v12)
  {
    v13 = [[SGDCKEvent alloc] initWithData:v12];
    if (!v13)
    {
      v51 = 0;
LABEL_88:

      goto LABEL_89;
    }

    v14 = [v3 objectForKeyedSubscript:@"v"];
    v15 = [v14 unsignedLongLongValue];

    if (v15 < 4)
    {
      goto LABEL_9;
    }

    if ([(SGDCKEvent *)v13 hasParentEntityType])
    {
      v52 = [(SGDCKEvent *)v13 parentEntityType];
      if (v52 != 16)
      {
        v53 = v52;
        if (v52 == 18)
        {
LABEL_9:
          v16 = *MEMORY[0x277D021F8];
          v17 = [SGDuplicateKey duplicateKeyForWebPageFromSource:*MEMORY[0x277D021F8]];
          v18 = [[SGPipelineEntity alloc] initWithDuplicateKey:v17 title:@"ck"];
          [(SGEntity *)v18 setSourceKey:v16];
          goto LABEL_10;
        }

        v54 = sgLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v124 = v53;
          v55 = "SGCK Error: Record contained unsupported entity type %lld";
          v56 = v54;
          v57 = 12;
LABEL_100:
          _os_log_error_impl(&dword_231E60000, v56, OS_LOG_TYPE_ERROR, v55, buf, v57);
        }

LABEL_47:
        v51 = 0;
LABEL_87:

        goto LABEL_88;
      }

      if ([(SGDCKEvent *)v13 hasInteractionInfo])
      {
        v54 = [(SGDCKEvent *)v13 interactionInfo];
        if (([v54 hasInteractionBundleId]& 1) != 0)
        {
          v17 = [v54 interactionBundleId];
          v75 = [SGPipelineEntity alloc];
          v76 = [v54 interactionId];
          v18 = [(SGPipelineEntity *)v75 initWithInteractionIdentifier:v76 fromBundleIdentifier:v17];

LABEL_10:
          v19 = [(SGDCKEvent *)v13 groupId];
          v20 = [(SGEntity *)v18 duplicateKey];
          v21 = [SGDuplicateKey duplicateKeyForPseudoEventWithGroupId:v19 parentKey:v20];

          v22 = [SGPipelineEnrichment alloc];
          v23 = [(SGDCKEvent *)v13 title];
          v119 = v21;
          v24 = [(SGPipelineEnrichment *)v22 initWithDuplicateKey:v21 title:v23 parent:v18];

          [(SGDCKEvent *)v13 creationTimestamp];
          [(SGPipelineEnrichment *)v24 setCreationTimestamp:?];
          [(SGDCKEvent *)v13 lastModifiedTimestamp];
          [(SGPipelineEnrichment *)v24 setLastModifiedTimestamp:?];
          v25 = [(SGDCKEvent *)v13 extraKey];

          if (v25)
          {
            v26 = MEMORY[0x277D01FA0];
            v27 = [(SGDCKEvent *)v13 extraKey];
            v28 = [v26 extraKey:v27];
            [(SGEntity *)v24 addTag:v28];
          }

          if ([(SGDCKEvent *)v13 cancelled])
          {
            v29 = [MEMORY[0x277D01FA0] extractedEventCancellation];
            [(SGEntity *)v24 addTag:v29];
          }

          if ([(SGDCKEvent *)v13 allDay])
          {
            v30 = [MEMORY[0x277D01FA0] allDay];
            [(SGEntity *)v24 addTag:v30];
          }

          v31 = [(SGDCKEvent *)v13 domain];

          if (v31)
          {
            v32 = MEMORY[0x277D01FA0];
            v33 = [(SGDCKEvent *)v13 domain];
            v34 = [v32 domain:v33];
            [(SGEntity *)v24 addTag:v34];
          }

          v35 = [(SGDCKEvent *)v13 templateName];

          if (v35)
          {
            v36 = MEMORY[0x277D01FA0];
            v37 = [(SGDCKEvent *)v13 templateName];
            v38 = [v36 extractedFromTemplateWithName:v37];
            [(SGEntity *)v24 addTag:v38];
          }

          v39 = [MEMORY[0x277D01FA0] categoryTagWithCategoryType:{-[SGDCKEvent categoryType](v13, "categoryType")}];
          if (v39)
          {
            [(SGEntity *)v24 addTag:v39];
          }

          v40 = [(SGDCKEvent *)v13 when];
          [v40 start];
          v42 = v41;
          [v40 end];
          v44 = v43;
          v45 = [v40 hasStartUTCOffsetSeconds];
          v46 = MEMORY[0x277D020E8];
          v117 = v40;
          v118 = v39;
          if (v45)
          {
            v47 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{objc_msgSend(v40, "startUTCOffsetSeconds")}];
            v48 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{objc_msgSend(v40, "endUTCOffsetSeconds")}];
            v49 = [v46 rangeWithStart:v47 startTimeZone:v48 end:v42 endTimeZone:v44];
          }

          else
          {
            v49 = [MEMORY[0x277D020E8] floatingRangeWithUTCStart:v42 end:v44];
          }

          [(SGEntity *)v24 setTimeRange:v49];
          v58 = [(SGEntity *)v24 locations];
          v59 = [(SGDCKEvent *)v13 locations];
          v60 = sgMap();
          [v58 addObjectsFromArray:v60];

          v61 = [(SGDCKEvent *)v13 content];

          if (v61)
          {
            v62 = [(SGDCKEvent *)v13 content];
            [(SGEntity *)v24 setContent:v62];
          }

          v63 = 0x277D01000uLL;
          if ([(SGDCKEvent *)v13 hasExtraKey])
          {
            v64 = MEMORY[0x277D01FA0];
            v65 = [(SGDCKEvent *)v13 extraKey];
            v66 = [v64 extraKey:v65];
            [(SGEntity *)v24 addTag:v66];
          }

          v116 = v49;
          if ([(SGDCKEvent *)v13 cancelled])
          {
            v67 = [MEMORY[0x277D01FA0] extractedEventCancellation];
            [(SGEntity *)v24 addTag:v67];
          }

          if ([(SGDCKEvent *)v13 hasSchemaOrg])
          {
            v68 = v18;
            v69 = MEMORY[0x277CCAC58];
            v70 = [(SGDCKEvent *)v13 schemaOrg];
            v122 = 0;
            v71 = [v69 propertyListWithData:v70 options:0 format:0 error:&v122];
            v72 = v122;

            if (v71)
            {
              v73 = [MEMORY[0x277D01FA0] schemaOrg:v71];
              if (v73)
              {
                v74 = v73;
                [(SGEntity *)v24 addTag:v73];
              }

              else
              {
                v77 = sgLogHandle();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v124 = v72;
                  _os_log_error_impl(&dword_231E60000, v77, OS_LOG_TYPE_ERROR, "SGCK Error decoding schema.org plist: %@", buf, 0xCu);
                }

                v74 = 0;
              }
            }

            else
            {
              v74 = sgLogHandle();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v124 = v72;
                _os_log_error_impl(&dword_231E60000, v74, OS_LOG_TYPE_ERROR, "SGCK error decoding schema.org plist: %@", buf, 0xCu);
              }
            }

            v18 = v68;
            v63 = 0x277D01000;
          }

          if ([(SGDCKEvent *)v13 hasMetadata])
          {
            v115 = v18;
            v78 = MEMORY[0x277CCAC58];
            v79 = [(SGDCKEvent *)v13 metadata];
            v121 = 0;
            v80 = [v78 propertyListWithData:v79 options:0 format:0 error:&v121];
            v81 = v121;

            if (v80)
            {
              v120 = v81;
              v82 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v80 options:0 error:&v120];
              v83 = v120;

              if (v82)
              {
                v84 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v82 encoding:4];
                if (v84)
                {
                  v85 = [MEMORY[0x277D01FA0] eventMetadata:v84];
                  [(SGEntity *)v24 addTag:v85];
                }
              }
            }

            else
            {
              v82 = sgLogHandle();
              if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v124 = v81;
                _os_log_error_impl(&dword_231E60000, v82, OS_LOG_TYPE_ERROR, "SGCK Error decoding metadata plist: %@", buf, 0xCu);
              }

              v83 = v81;
            }

            v18 = v115;
            v63 = 0x277D01000uLL;
          }

          v86 = [(SGEntity *)v18 duplicateKey];
          if ([v86 entityType] == 16)
          {
            v87 = [(SGEntity *)v24 duplicateKey];
            v88 = [v87 entityType];

            if (v88 != 2)
            {
LABEL_84:
              v111 = [*(v63 + 4000) fromSync];
              [(SGEntity *)v24 addTag:v111];

              if (v24)
              {
                [(SGEntity *)v24 lastModifiedTimestamp];
                [(SGPipelineEntity *)v18 setLastModifiedTimestamp:?];
                [(SGEntity *)v24 creationTimestamp];
                [(SGPipelineEntity *)v18 setCreationTimestamp:?];
                [(SGPipelineEntity *)v18 addEnrichment:v24];
              }

              v54 = v18;

              v51 = v54;
              goto LABEL_87;
            }

            v86 = [(SGDCKEvent *)v13 interactionInfo];
            if ([v86 hasInteractionId])
            {
              v89 = [*(v63 + 4000) fromInteraction];
              [(SGEntity *)v24 addTag:v89];

              v90 = *(v63 + 4000);
              v91 = [v86 interactionId];
              v92 = [v90 interactionId:v91];
              [(SGEntity *)v24 addTag:v92];
            }

            if ([v86 hasInteractionGroupId])
            {
              v93 = *(v63 + 4000);
              v94 = [v86 interactionGroupId];
              v95 = [v93 interactionGroupId:v94];
              [(SGEntity *)v24 addTag:v95];
            }

            if ([v86 hasInteractionTeamId])
            {
              v96 = *(v63 + 4000);
              v97 = [v86 interactionTeamId];
              v98 = [v96 interactionTeamId:v97];
              [(SGEntity *)v24 addTag:v98];
            }

            if ([v86 hasInteractionBundleId])
            {
              v99 = *(v63 + 4000);
              v100 = [v86 interactionBundleId];
              v101 = [v99 interactionBundleId:v100];
              [(SGEntity *)v24 addTag:v101];
            }

            if ([v86 hasReservationItemReferences])
            {
              v102 = *(v63 + 4000);
              v103 = [v86 reservationItemReferences];
              v104 = [v102 reservationItemReferencesWithData:v103];
              [(SGEntity *)v24 addTag:v104];
            }

            if ([v86 hasReservationContainerReference])
            {
              v105 = *(v63 + 4000);
              v106 = [v86 reservationContainerReference];
              v107 = [v105 reservationContainerReferenceWithData:v106];
              [(SGEntity *)v24 addTag:v107];
            }

            if ([v86 hasIntentResponseUserActivityString])
            {
              v108 = *(v63 + 4000);
              v109 = [v86 intentResponseUserActivityString];
              v110 = [v108 intentResponseUserActivityString:v109];
              [(SGEntity *)v24 addTag:v110];
            }
          }

          goto LABEL_84;
        }

        v114 = sgLogHandle();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v114, OS_LOG_TYPE_ERROR, "SGCK Error: Record with type interaction is missing interaction bundle id.", buf, 2u);
        }

        goto LABEL_47;
      }

      v54 = sgLogHandle();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v55 = "SGCK Error: Record with type interaction is missing interaction info.";
    }

    else
    {
      v54 = sgLogHandle();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v55 = "SGCK Error: Record version higher than 3 did not contain parent entity type.";
    }

    v56 = v54;
    v57 = 2;
    goto LABEL_100;
  }

  v51 = 0;
LABEL_89:

LABEL_90:
  v112 = *MEMORY[0x277D85DE8];

  return v51;
}

SGStorageLocation *__55__SGPipelineEntity_CloudKitRecord__fromCloudKitRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SGStorageLocation alloc];
  v4 = [v2 locationType];
  v5 = [v2 label];
  v6 = [v2 address];
  v7 = [v2 airportCode];
  if ([v2 hasLatitude])
  {
    [v2 latitude];
    v9 = v8;
  }

  else
  {
    v9 = NAN;
  }

  if ([v2 hasLongitude])
  {
    [v2 longitude];
    v11 = v10;
  }

  else
  {
    v11 = NAN;
  }

  [v2 accuracy];
  v13 = v12;
  [v2 quality];
  v15 = v14;
  v16 = [v2 handle];
  v17 = [(SGStorageLocation *)v3 initWithType:v4 label:v5 address:v6 airportCode:v7 latitude:v16 longitude:v9 accuracy:v11 quality:v13 handle:v15];

  return v17;
}

@end
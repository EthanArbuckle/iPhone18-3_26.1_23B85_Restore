@interface SGPipelineEntity
+ (id)fromCloudKitRecord:(id)record;
- ($1A3E566C64BD7EB8CFED4F6C8FE6621B)inhumanFeatures;
- (BOOL)hasEventEnrichment;
- (BOOL)isInhuman;
- (NSArray)taggedCharacterRanges;
- (SGPipelineEntity)initWithDuplicateKey:(id)key title:(id)title;
- (SGPipelineEntity)initWithEmailMessage:(id)message;
- (SGPipelineEntity)initWithIntentPersonAtDate:(id)date bundleId:(id)id handle:(id)handle displayName:(id)name;
- (SGPipelineEntity)initWithInteraction:(id)interaction fromBundleIdentifier:(id)identifier;
- (SGPipelineEntity)initWithInteraction:(id)interaction identifier:(id)identifier fromBundleIdentifier:(id)bundleIdentifier;
- (SGPipelineEntity)initWithMessage:(id)message;
- (SGPipelineEntity)initWithMessageId:(id)id uniqueIdentifier:(id)identifier appleMailMessageId:(id)messageId mailboxIdentifiers:(id)identifiers accountType:(id)type mailingList:(id)list source:(id)source subject:(id)self0 date:(id)self1 author:(id)self2 textContentSnippet:(id)self3 isSent:(BOOL)self4 isPartiallyDownloaded:(BOOL)self5 hasInhumanHeaders:(BOOL)self6 primaryRecipients:(id)self7 accountHandles:(id)self8;
- (SGPipelineEntity)initWithTextMessage:(id)message;
- (SGPipelineEntity)initWithUniqueIdentifier:(id)identifier source:(id)source subject:(id)subject textContent:(id)content date:(id)date author:(id)author authorNickname:(id)nickname authorPhotoPath:(id)self0 isSent:(BOOL)self1;
- (_NSRange)plainTextSigRange;
- (id)_initWithInteractionIdentifier:(id)identifier fromBundleIdentifier:(id)bundleIdentifier creationTime:(id)time;
- (id)contactDetailsWithType:(unint64_t)type;
- (unint64_t)eventEnrichmentsCount;
- (void)_lazyCheckMessageForHumanness;
- (void)addBirthdayEnrichment:(id)enrichment;
- (void)addDetectedBirthday:(id)birthday forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info;
- (void)addDetectedEmailAddress:(id)address forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info;
- (void)addDetectedInstantMessageAddress:(id)address forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info;
- (void)addDetectedPhoneNumber:(id)number forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info;
- (void)addDetectedPostalAddress:(id)address forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info;
- (void)addDetectedSocialProfile:(id)profile forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info;
- (void)addDetection:(id)detection forIdentity:(id)identity extractionInfo:(id)info;
- (void)addEmailAddressEnrichment:(id)enrichment;
- (void)addEnrichments:(id)enrichments;
- (void)addOrReplaceEventEnrichment:(id)enrichment;
- (void)addOrReplacePreferredEnrichment:(id)enrichment;
- (void)addTaggedCharacterRanges:(id)ranges;
- (void)dealloc;
- (void)enumeratePeople:(id)people;
- (void)requestFullDownload;
- (void)runWithDissectorLock:(id)lock;
- (void)setCreationTimestamp:(SGUnixTimestamp_)timestamp;
- (void)setLastModifiedTimestamp:(SGUnixTimestamp_)timestamp;
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

- (void)runWithDissectorLock:(id)lock
{
  lockCopy = lock;
  pthread_mutex_lock(&self->_dissectorLock);
  lockCopy[2](lockCopy);

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
  message = [(SGPipelineEntity *)self message];
  isInhumanSender = [message isInhumanSender];

  if (isInhumanSender)
  {
    inhuman = [MEMORY[0x277D01FA0] inhuman];
    [(SGEntity *)self addTag:inhuman];
  }

  message2 = [(SGPipelineEntity *)self message];
  self->_inhumanFeatures.inhumanBody = [message2 isInhumanContent];

  if (self->_inhumanFeatures.inhumanBody)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "Tagging as inhuman: Body", buf, 2u);
    }

    inhuman2 = [MEMORY[0x277D01FA0] inhuman];
    [(SGEntity *)self addTag:inhuman2];
  }

  if ([(SGSimpleMailMessage *)self->_mailMessage hasHumanHeaders])
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "Tagging as human: Headers", v11, 2u);
    }

    human = [MEMORY[0x277D01FA0] human];
    [(SGEntity *)self addTag:human];
  }

  self->_messageInhumannessChecked = 1;
}

- (void)enumeratePeople:(id)people
{
  v18 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  enrichments = [(SGPipelineEntity *)self enrichments];
  v6 = [enrichments countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(enrichments);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        if ([v10 isPerson])
        {
          peopleCopy[2](peopleCopy, v10);
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [enrichments countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)contactDetailsWithType:(unint64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  if (type > 6)
  {
    v22 = 0;
    v4 = 0;
  }

  else
  {
    v22 = qword_23210C450[type];
    v4 = qword_23210C488[type];
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
        duplicateKey = [v10 duplicateKey];
        if ([duplicateKey entityType] == v4)
        {
        }

        else
        {
          duplicateKey2 = [v10 duplicateKey];
          entityType = [duplicateKey2 entityType];

          if (entityType != v22)
          {
            continue;
          }
        }

        duplicateKey3 = [v10 duplicateKey];
        contactDetailKey = [duplicateKey3 contactDetailKey];
        label = [contactDetailKey label];
        title = [v10 title];
        v18 = label;
        v19 = [[SGLabeledValue alloc] initWithLabel:v18 value:title];

        [v5 addObject:v19];
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)addDetectedSocialProfile:(id)profile forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info
{
  length = interest.length;
  location = interest.location;
  profileCopy = profile;
  identityCopy = identity;
  contextCopy = context;
  infoCopy = info;
  duplicateKey = [(SGEntity *)self duplicateKey];
  [duplicateKey entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:722 description:@"Contacts can't have associated detected instant message addresses."];
  }

  infoCopy = [SGPipelineEnrichment socialProfile:profileCopy forIdentity:identityCopy parent:self curated:0 context:contextCopy contextRangeOfInterest:location extractionInfo:length, infoCopy];
  [(SGPipelineEntity *)self addSocialProfileEnrichment:infoCopy];
}

- (void)addDetectedInstantMessageAddress:(id)address forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info
{
  length = interest.length;
  location = interest.location;
  addressCopy = address;
  identityCopy = identity;
  contextCopy = context;
  infoCopy = info;
  duplicateKey = [(SGEntity *)self duplicateKey];
  [duplicateKey entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:697 description:@"Contacts can't have associated detected instant message addresses."];
  }

  infoCopy = [SGPipelineEnrichment instantMessageAddress:addressCopy forIdentity:identityCopy parent:self curated:0 context:contextCopy contextRangeOfInterest:location extractionInfo:length, infoCopy];
  [(SGPipelineEntity *)self addInstantMessageAddressEnrichment:infoCopy];
}

- (void)addDetectedBirthday:(id)birthday forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info
{
  length = interest.length;
  location = interest.location;
  birthdayCopy = birthday;
  identityCopy = identity;
  contextCopy = context;
  infoCopy = info;
  duplicateKey = [(SGEntity *)self duplicateKey];
  [duplicateKey entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:675 description:@"Contacts can't have associated detected birthdays."];
  }

  infoCopy = [(SGPipelineEntity *)self birthday:birthdayCopy forIdentity:identityCopy context:contextCopy contextRangeOfInterest:location extractionInfo:length, infoCopy];
  [(SGPipelineEntity *)self addBirthdayEnrichment:infoCopy];
}

- (void)addDetectedEmailAddress:(id)address forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info
{
  length = interest.length;
  location = interest.location;
  addressCopy = address;
  identityCopy = identity;
  contextCopy = context;
  infoCopy = info;
  duplicateKey = [(SGEntity *)self duplicateKey];
  [duplicateKey entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:646 description:@"Contacts can't have associated detected email addresses."];
  }

  infoCopy = [SGPipelineEnrichment emailAddress:addressCopy forIdentity:identityCopy parent:self curated:0 context:contextCopy contextRangeOfInterest:location extractionInfo:length, infoCopy];
  [(SGPipelineEntity *)self addEmailAddressEnrichment:infoCopy];
}

- (void)addBirthdayEnrichment:(id)enrichment
{
  enrichmentCopy = enrichment;
  duplicateKey = [(SGEntity *)self duplicateKey];
  [duplicateKey entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:631 description:@"Contacts can't have associated detected birthdays."];
  }

  [enrichmentCopy title];

  [(NSMutableArray *)self->_enrichments addObject:enrichmentCopy];
}

- (void)addEmailAddressEnrichment:(id)enrichment
{
  v12 = *MEMORY[0x277D85DE8];
  enrichmentCopy = enrichment;
  title = [enrichmentCopy title];
  v6 = [MEMORY[0x277D06F10] isLegalEmailAddress:title];

  if (v6)
  {
    [(NSMutableArray *)self->_enrichments addObject:enrichmentCopy];
  }

  else
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      title2 = [enrichmentCopy title];
      v10 = 136315138;
      uTF8String = [title2 UTF8String];
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "Ignoring invalid email: %s", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addDetectedPhoneNumber:(id)number forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info
{
  length = interest.length;
  location = interest.location;
  numberCopy = number;
  identityCopy = identity;
  contextCopy = context;
  infoCopy = info;
  duplicateKey = [(SGEntity *)self duplicateKey];
  [duplicateKey entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:607 description:@"Contacts can't have associated detected phone numbers."];
  }

  infoCopy = [SGPipelineEnrichment phoneNumber:numberCopy forIdentity:identityCopy parent:self curated:0 context:contextCopy contextRangeOfInterest:location extractionInfo:length, infoCopy];
  [(SGPipelineEntity *)self addEnrichment:infoCopy];
}

- (void)addDetectedPostalAddress:(id)address forIdentity:(id)identity context:(id)context contextRangeOfInterest:(_NSRange)interest extractionInfo:(id)info
{
  length = interest.length;
  location = interest.location;
  addressCopy = address;
  identityCopy = identity;
  contextCopy = context;
  infoCopy = info;
  duplicateKey = [(SGEntity *)self duplicateKey];
  [duplicateKey entityType];
  IsContact = SGEntityTypeIsContact();

  if (IsContact)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:591 description:@"Contacts can't have associated detected addresses."];
  }

  infoCopy = [SGPipelineEnrichment address:addressCopy forIdentity:identityCopy parent:self curated:0 context:contextCopy contextRangeOfInterest:location extractionInfo:length, infoCopy];
  [(SGPipelineEntity *)self addEnrichment:infoCopy];
}

- (void)addDetection:(id)detection forIdentity:(id)identity extractionInfo:(id)info
{
  detectionCopy = detection;
  identityCopy = identity;
  infoCopy = info;
  label = [detectionCopy label];
  extraction = [detectionCopy extraction];
  v12 = label;
  v13 = [[SGLabeledValue alloc] initWithLabel:v12 value:extraction];

  type = [detectionCopy type];
  if (type > 1)
  {
    if (type == 2)
    {
      context = [detectionCopy context];
      contextRangeOfInterest = [detectionCopy contextRangeOfInterest];
      [(SGPipelineEntity *)self addDetectedEmailAddress:v13 forIdentity:identityCopy context:context contextRangeOfInterest:contextRangeOfInterest extractionInfo:v23, infoCopy];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      context = [detectionCopy context];
      contextRangeOfInterest2 = [detectionCopy contextRangeOfInterest];
      [(SGPipelineEntity *)self addDetectedBirthday:v13 forIdentity:identityCopy context:context contextRangeOfInterest:contextRangeOfInterest2 extractionInfo:v19, infoCopy];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    context = [detectionCopy context];
    contextRangeOfInterest3 = [detectionCopy contextRangeOfInterest];
    [(SGPipelineEntity *)self addDetectedPostalAddress:v13 forIdentity:identityCopy context:context contextRangeOfInterest:contextRangeOfInterest3 extractionInfo:v17, infoCopy];
  }

  else
  {
    context = [detectionCopy context];
    contextRangeOfInterest4 = [detectionCopy contextRangeOfInterest];
    [(SGPipelineEntity *)self addDetectedPhoneNumber:v13 forIdentity:identityCopy context:context contextRangeOfInterest:contextRangeOfInterest4 extractionInfo:v21, infoCopy];
  }

LABEL_11:
}

- (void)setLastModifiedTimestamp:(SGUnixTimestamp_)timestamp
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

        [*(*(&v12 + 1) + 8 * v9++) setLastModifiedTimestamp:timestamp.secondsFromUnixEpoch];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11.receiver = self;
  v11.super_class = SGPipelineEntity;
  [(SGEntity *)&v11 setLastModifiedTimestamp:timestamp.secondsFromUnixEpoch];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCreationTimestamp:(SGUnixTimestamp_)timestamp
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

        [*(*(&v12 + 1) + 8 * v9++) setCreationTimestamp:timestamp.secondsFromUnixEpoch];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11.receiver = self;
  v11.super_class = SGPipelineEntity;
  [(SGEntity *)&v11 setCreationTimestamp:timestamp.secondsFromUnixEpoch];
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

- (void)addTaggedCharacterRanges:(id)ranges
{
  rangesCopy = ranges;
  taggedCharacterRanges = self->_taggedCharacterRanges;
  v12 = rangesCopy;
  if (!taggedCharacterRanges)
  {
    message = [(SGPipelineEntity *)self message];
    taggedCharacterRanges = [message taggedCharacterRanges];
    v8 = [taggedCharacterRanges mutableCopy];
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
    rangesCopy = v12;
  }

  [(NSMutableArray *)taggedCharacterRanges addObjectsFromArray:rangesCopy];
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
    message = [(SGPipelineEntity *)self message];
    taggedCharacterRanges = [message taggedCharacterRanges];
    v7 = [taggedCharacterRanges mutableCopy];
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

- (void)addOrReplacePreferredEnrichment:(id)enrichment
{
  enrichmentCopy = enrichment;
  duplicateKey = [enrichmentCopy duplicateKey];

  if (!duplicateKey)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:477 description:@"a preferred enrichment must have a duplicateKey"];
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
    duplicateKey2 = [v8 duplicateKey];
    duplicateKey3 = [enrichmentCopy duplicateKey];
    v11 = [duplicateKey2 isEqualToDuplicateKey:duplicateKey3];

    if (v11)
    {
      [(NSMutableArray *)self->_enrichments setObject:enrichmentCopy atIndexedSubscript:v6];
      v7 = 1;
    }

    ++v6;
  }

  while (v6 < [(NSMutableArray *)self->_enrichments count]);
  if ((v7 & 1) == 0)
  {
LABEL_9:
    [(SGPipelineEntity *)self addEnrichment:enrichmentCopy];
  }
}

- (void)addOrReplaceEventEnrichment:(id)enrichment
{
  enrichmentCopy = enrichment;
  duplicateKey = [enrichmentCopy duplicateKey];

  if (!duplicateKey)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:459 description:@"a preferred enrichment must have a duplicateKey"];
  }

  if (![(NSMutableArray *)self->_enrichments count])
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    duplicateKey2 = [enrichmentCopy duplicateKey];
    entityType = [duplicateKey2 entityType];

    if (entityType == 2)
    {
      [(NSMutableArray *)self->_enrichments setObject:enrichmentCopy atIndexedSubscript:v6];
      v7 = 1;
    }

    ++v6;
  }

  while (v6 < [(NSMutableArray *)self->_enrichments count]);
  if ((v7 & 1) == 0)
  {
LABEL_9:
    [(SGPipelineEntity *)self addEnrichment:enrichmentCopy];
  }
}

- (void)addEnrichments:(id)enrichments
{
  v15 = *MEMORY[0x277D85DE8];
  enrichmentsCopy = enrichments;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [enrichmentsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(enrichmentsCopy);
        }

        [(NSMutableArray *)self->_enrichments addObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [enrichmentsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)_initWithInteractionIdentifier:(id)identifier fromBundleIdentifier:(id)bundleIdentifier creationTime:(id)time
{
  bundleIdentifierCopy = bundleIdentifier;
  timeCopy = time;
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"interactionIdentifier.length > 0"}];
  }

  if (![bundleIdentifierCopy length])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier.length > 0"}];
  }

  v12 = [SGDuplicateKey duplicateKeyForInteractionIdentifier:identifierCopy fromBundleIdentifier:bundleIdentifierCopy];
  v13 = [(SGPipelineEntity *)self initWithDuplicateKey:v12 title:identifierCopy];

  if (timeCopy && v13)
  {
    [timeCopy timeIntervalSince1970];
    [(SGPipelineEntity *)v13 setCreationTimestamp:?];
  }

  return v13;
}

- (SGPipelineEntity)initWithInteraction:(id)interaction identifier:(id)identifier fromBundleIdentifier:(id)bundleIdentifier
{
  interactionCopy = interaction;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (!interactionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:368 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];
  }

  if (![identifierCopy length])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:369 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];
  }

  if (![bundleIdentifierCopy length])
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:370 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier.length > 0"}];
  }

  dateInterval = [interactionCopy dateInterval];
  startDate = [dateInterval startDate];
  v15 = [(SGPipelineEntity *)self _initWithInteractionIdentifier:identifierCopy fromBundleIdentifier:bundleIdentifierCopy creationTime:startDate];

  if (v15)
  {
    objc_storeStrong(&v15->_interaction, interaction);
  }

  return v15;
}

- (SGPipelineEntity)initWithInteraction:(id)interaction fromBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  interactionCopy = interaction;
  identifier = [interactionCopy identifier];
  v9 = [(SGPipelineEntity *)self initWithInteraction:interactionCopy identifier:identifier fromBundleIdentifier:identifierCopy];

  return v9;
}

- (SGPipelineEntity)initWithIntentPersonAtDate:(id)date bundleId:(id)id handle:(id)handle displayName:(id)name
{
  dateCopy = date;
  idCopy = id;
  handleCopy = handle;
  nameCopy = name;
  if (idCopy)
  {
    if (handleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    if (handleCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

LABEL_3:
  v15 = [SGDuplicateKey duplicateKeyForInteractionWithBundleId:idCopy personHandle:handleCopy];
  v16 = [(SGPipelineEntity *)self initWithDuplicateKey:v15 title:nameCopy];
  if (v16)
  {
    [dateCopy timeIntervalSince1970];
    [(SGPipelineEntity *)v16 setCreationTimestamp:?];
  }

  return v16;
}

- (SGPipelineEntity)initWithMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SGPipelineEntity *)self initWithEmailMessage:messageCopy];
LABEL_5:
    self = v5;
    selfCopy = self;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SGPipelineEntity *)self initWithTextMessage:messageCopy];
    goto LABEL_5;
  }

  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "Unknown SGMessage subclass", v9, 2u);
  }

  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (SGPipelineEntity)initWithUniqueIdentifier:(id)identifier source:(id)source subject:(id)subject textContent:(id)content date:(id)date author:(id)author authorNickname:(id)nickname authorPhotoPath:(id)self0 isSent:(BOOL)self1
{
  identifierCopy = identifier;
  sourceCopy = source;
  subjectCopy = subject;
  contentCopy = content;
  dateCopy = date;
  authorCopy = author;
  nicknameCopy = nickname;
  pathCopy = path;
  context = objc_autoreleasePoolPush();
  v24 = [SGDuplicateKey duplicateKeyForTextMessageWithSource:sourceCopy uniqueIdentifier:identifierCopy];
  v25 = [(SGPipelineEntity *)self initWithDuplicateKey:v24 title:subjectCopy];
  v26 = v25;
  if (v25)
  {
    [(SGEntity *)v25 setContent:contentCopy];
    [dateCopy timeIntervalSince1970];
    v28 = v27;
    [(SGPipelineEntity *)v26 setLastModifiedTimestamp:?];
    [(SGPipelineEntity *)v26 setCreationTimestamp:v28];
    [(SGEntity *)v26 setAuthor:authorCopy];
    [(SGEntity *)v26 setSourceKey:sourceCopy];
    [(SGEntity *)v26 setAuthorNickname:nicknameCopy];
    [(SGEntity *)v26 setAuthorPhotoPath:pathCopy];
    [MEMORY[0x277D01FA0] fromTextMessage];
    v30 = v29 = contentCopy;
    [(SGEntity *)v26 addTag:v30];

    contentCopy = v29;
    if (sent)
    {
      isSent = [MEMORY[0x277D01FA0] isSent];
      [(SGEntity *)v26 addTag:isSent];

      contentCopy = v29;
    }
  }

  objc_autoreleasePoolPop(context);
  return v26;
}

- (SGPipelineEntity)initWithTextMessage:(id)message
{
  messageCopy = message;
  v6 = objc_autoreleasePoolPush();
  source = [messageCopy source];
  uniqueIdentifier = [messageCopy uniqueIdentifier];
  v9 = [SGDuplicateKey duplicateKeyForTextMessageWithSource:source uniqueIdentifier:uniqueIdentifier];

  subject = [messageCopy subject];
  v11 = [(SGPipelineEntity *)self initWithDuplicateKey:v9 title:subject];

  if (v11)
  {
    textContent = [messageCopy textContent];
    [(SGEntity *)v11 setContent:textContent];

    date = [messageCopy date];
    [date timeIntervalSince1970];
    v15 = v14;
    [(SGPipelineEntity *)v11 setLastModifiedTimestamp:?];
    [(SGPipelineEntity *)v11 setCreationTimestamp:v15];

    author = [messageCopy author];
    [(SGEntity *)v11 setAuthor:author];

    source2 = [messageCopy source];
    [(SGEntity *)v11 setSourceKey:source2];

    nickname = [messageCopy nickname];
    [(SGEntity *)v11 setAuthorNickname:nickname];

    photoPath = [messageCopy photoPath];
    [(SGEntity *)v11 setAuthorPhotoPath:photoPath];

    fromTextMessage = [MEMORY[0x277D01FA0] fromTextMessage];
    [(SGEntity *)v11 addTag:fromTextMessage];

    objc_storeStrong(&v11->_message, message);
    objc_storeStrong(&v11->_textMessage, message);
    if ([messageCopy isSent])
    {
      isSent = [MEMORY[0x277D01FA0] isSent];
      [(SGEntity *)v11 addTag:isSent];
    }
  }

  objc_autoreleasePoolPop(v6);
  return v11;
}

- (SGPipelineEntity)initWithMessageId:(id)id uniqueIdentifier:(id)identifier appleMailMessageId:(id)messageId mailboxIdentifiers:(id)identifiers accountType:(id)type mailingList:(id)list source:(id)source subject:(id)self0 date:(id)self1 author:(id)self2 textContentSnippet:(id)self3 isSent:(BOOL)self4 isPartiallyDownloaded:(BOOL)self5 hasInhumanHeaders:(BOOL)self6 primaryRecipients:(id)self7 accountHandles:(id)self8
{
  v82 = *MEMORY[0x277D85DE8];
  idCopy = id;
  identifierCopy = identifier;
  messageIdCopy = messageId;
  identifiersCopy = identifiers;
  obj = type;
  typeCopy = type;
  listCopy = list;
  sourceCopy = source;
  subjectCopy = subject;
  dateCopy = date;
  authorCopy = author;
  snippetCopy = snippet;
  recipientsCopy = recipients;
  selfCopy2 = self;
  handlesCopy = handles;
  context = objc_autoreleasePoolPush();
  v31 = idCopy;
  v32 = v31;
  v68 = dateCopy;
  if (!v31)
  {
    v32 = identifierCopy;
    v33 = sgLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v81 = 0;
      _os_log_impl(&dword_231E60000, v33, OS_LOG_TYPE_INFO, "Message-Id header not found. Using hash: %@", buf, 0xCu);
    }

    selfCopy2 = self;
  }

  v65 = v32;
  v63 = [SGDuplicateKey duplicateKeyForEmailWithSource:sourceCopy messageId:v32];
  v34 = [SGPipelineEntity initWithDuplicateKey:selfCopy2 title:"initWithDuplicateKey:title:"];
  v35 = v34;
  v36 = listCopy;
  if (v34)
  {
    v57 = handlesCopy;
    v58 = authorCopy;
    v60 = identifierCopy;
    [(SGEntity *)v34 setSourceKey:sourceCopy];
    v37 = sourceCopy;
    if (messageIdCopy)
    {
      v38 = [MEMORY[0x277D01FA0] appleMailMessageId:messageIdCopy fromSource:sourceCopy];
      [(SGEntity *)v35 addTag:v38];
    }

    v59 = v37;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v39 = identifiersCopy;
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

    if (sent)
    {
      isSent = [MEMORY[0x277D01FA0] isSent];
      [(SGEntity *)v35 addTag:isSent];
    }

    dateCopy = v68;
    [v68 timeIntervalSince1970];
    v47 = v46;
    [(SGPipelineEntity *)v35 setLastModifiedTimestamp:?];
    [(SGPipelineEntity *)v35 setCreationTimestamp:v47];
    v35->_inhumanFeatures.hasInhumanHeaders = headers;
    v36 = listCopy;
    authorCopy = v58;
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

    identifierCopy = v60;
    handlesCopy = v57;
    if (headers)
    {
      v35->_messageInhumannessChecked = 1;
      inhuman = [MEMORY[0x277D01FA0] inhuman];
      [(SGEntity *)v35 addTag:inhuman];
    }

    if (downloaded)
    {
      isPartiallyDownloaded = [MEMORY[0x277D01FA0] isPartiallyDownloaded];
      [(SGEntity *)v35 addTag:isPartiallyDownloaded];
    }

    if (listCopy)
    {
      v51 = [MEMORY[0x277D01FA0] mailingListId:listCopy];
      [(SGEntity *)v35 addTag:v51];
    }

    objc_storeStrong(&v35->_accountType, obj);
    objc_storeStrong(&v35->_primaryRecipients, recipients);
    objc_storeStrong(&v35->_accountHandles, handles);
    v52 = objc_alloc(MEMORY[0x277D425F0]);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __243__SGPipelineEntity_initWithMessageId_uniqueIdentifier_appleMailMessageId_mailboxIdentifiers_accountType_mailingList_source_subject_date_author_textContentSnippet_isSent_isPartiallyDownloaded_hasInhumanHeaders_primaryRecipients_accountHandles___block_invoke;
    v73[3] = &unk_278951348;
    v74 = snippetCopy;
    v53 = [v52 initWithBlock:v73];
    lazySnippetsContent = v35->_lazySnippetsContent;
    v35->_lazySnippetsContent = v53;

    sourceCopy = v59;
  }

  objc_autoreleasePoolPop(context);
  v55 = *MEMORY[0x277D85DE8];
  return v35;
}

- (SGPipelineEntity)initWithEmailMessage:(id)message
{
  v55 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = objc_autoreleasePoolPush();
  messageId = [messageCopy messageId];
  if (!messageId)
  {
    messageId = [messageCopy uniqueIdentifier];
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v54 = messageId;
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "Message-Id header not found. Using hash: %@", buf, 0xCu);
    }
  }

  source = [messageCopy source];
  v10 = [SGDuplicateKey duplicateKeyForEmailWithSource:source messageId:messageId];
  subject = [messageCopy subject];
  v12 = [(SGPipelineEntity *)self initWithDuplicateKey:v10 title:subject];

  if (v12)
  {
    v45 = v6;
    source2 = [messageCopy source];
    [(SGEntity *)v12 setSourceKey:source2];

    appleMailMessageId = [messageCopy appleMailMessageId];

    if (appleMailMessageId)
    {
      v15 = MEMORY[0x277D01FA0];
      appleMailMessageId2 = [messageCopy appleMailMessageId];
      source3 = [messageCopy source];
      v18 = [v15 appleMailMessageId:appleMailMessageId2 fromSource:source3];
      [(SGEntity *)v12 addTag:v18];
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    mailboxIdentifiers = [messageCopy mailboxIdentifiers];
    v20 = [mailboxIdentifiers countByEnumeratingWithState:&v48 objects:v52 count:16];
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
            objc_enumerationMutation(mailboxIdentifiers);
          }

          v24 = [MEMORY[0x277D01FA0] mailboxIdentifier:*(*(&v48 + 1) + 8 * v23)];
          [(SGEntity *)v12 addTag:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [mailboxIdentifiers countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v21);
    }

    if ([messageCopy isSent])
    {
      isSent = [MEMORY[0x277D01FA0] isSent];
      [(SGEntity *)v12 addTag:isSent];
    }

    date = [messageCopy date];
    [date timeIntervalSince1970];
    v28 = v27;
    [(SGPipelineEntity *)v12 setLastModifiedTimestamp:?];
    [(SGPipelineEntity *)v12 setCreationTimestamp:v28];

    v12->_inhumanFeatures.hasInhumanHeaders = [messageCopy hasInhumanHeaders];
    from = [messageCopy from];

    if (from)
    {
      if ([MEMORY[0x277D02098] detectContacts])
      {
        author = [messageCopy author];
        [(SGEntity *)v12 setAuthor:author];
      }

      else
      {
        author = sgLogHandle();
        if (os_log_type_enabled(author, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_231E60000, author, OS_LOG_TYPE_DEBUG, "Skipping setAuthor: detectContacts is OFF", buf, 2u);
        }
      }
    }

    v6 = v45;
    if ([messageCopy hasInhumanHeaders])
    {
      v12->_messageInhumannessChecked = 1;
      inhuman = [MEMORY[0x277D01FA0] inhuman];
      [(SGEntity *)v12 addTag:inhuman];
    }

    if ([messageCopy isPartiallyDownloaded])
    {
      isPartiallyDownloaded = [MEMORY[0x277D01FA0] isPartiallyDownloaded];
      [(SGEntity *)v12 addTag:isPartiallyDownloaded];
    }

    mailingList = [messageCopy mailingList];
    v34 = mailingList;
    if (mailingList)
    {
      v35 = MEMORY[0x277D01FA0];
      emailAddress = [mailingList emailAddress];
      v37 = [v35 mailingListId:emailAddress];
      [(SGEntity *)v12 addTag:v37];
    }

    accountType = [messageCopy accountType];
    accountType = v12->_accountType;
    v12->_accountType = accountType;

    objc_storeStrong(&v12->_message, message);
    objc_storeStrong(&v12->_mailMessage, message);
    v40 = objc_alloc(MEMORY[0x277D425F0]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __41__SGPipelineEntity_initWithEmailMessage___block_invoke;
    v46[3] = &unk_278951348;
    v47 = messageCopy;
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

- (SGPipelineEntity)initWithDuplicateKey:(id)key title:(id)title
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  titleCopy = title;
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
    [v8 setDuplicateKey:keyCopy];
    [v8 setTitle:titleCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)fromCloudKitRecord:(id)record
{
  v129 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v4 = [recordCopy objectForKeyedSubscript:@"m"];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  if (unsignedLongLongValue >= 5)
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [recordCopy objectForKeyedSubscript:@"v"];
      v8 = [recordCopy objectForKeyedSubscript:@"m"];
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

  v9 = [recordCopy objectForKeyedSubscript:@"v"];
  unsignedLongLongValue2 = [v9 unsignedLongLongValue];

  if (unsignedLongLongValue2 < 3)
  {
    v50 = sgLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v50, OS_LOG_TYPE_INFO, "SGCK Reading pre-Manatee CloudKit record.", buf, 2u);
    }

    v6 = [recordCopy objectForKeyedSubscript:@"p"];
    if (!v6)
    {
      goto LABEL_27;
    }
  }

  else
  {
    encryptedValues = [recordCopy encryptedValues];
    v6 = [encryptedValues objectForKeyedSubscript:@"pe"];

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

    v14 = [recordCopy objectForKeyedSubscript:@"v"];
    unsignedLongLongValue3 = [v14 unsignedLongLongValue];

    if (unsignedLongLongValue3 < 4)
    {
      goto LABEL_9;
    }

    if ([(SGDCKEvent *)v13 hasParentEntityType])
    {
      parentEntityType = [(SGDCKEvent *)v13 parentEntityType];
      if (parentEntityType != 16)
      {
        v53 = parentEntityType;
        if (parentEntityType == 18)
        {
LABEL_9:
          v16 = *MEMORY[0x277D021F8];
          interactionBundleId = [SGDuplicateKey duplicateKeyForWebPageFromSource:*MEMORY[0x277D021F8]];
          v18 = [[SGPipelineEntity alloc] initWithDuplicateKey:interactionBundleId title:@"ck"];
          [(SGEntity *)v18 setSourceKey:v16];
          goto LABEL_10;
        }

        interactionInfo = sgLogHandle();
        if (os_log_type_enabled(interactionInfo, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v124 = v53;
          v55 = "SGCK Error: Record contained unsupported entity type %lld";
          v56 = interactionInfo;
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
        interactionInfo = [(SGDCKEvent *)v13 interactionInfo];
        if (([interactionInfo hasInteractionBundleId]& 1) != 0)
        {
          interactionBundleId = [interactionInfo interactionBundleId];
          v75 = [SGPipelineEntity alloc];
          interactionId = [interactionInfo interactionId];
          v18 = [(SGPipelineEntity *)v75 initWithInteractionIdentifier:interactionId fromBundleIdentifier:interactionBundleId];

LABEL_10:
          groupId = [(SGDCKEvent *)v13 groupId];
          duplicateKey = [(SGEntity *)v18 duplicateKey];
          v21 = [SGDuplicateKey duplicateKeyForPseudoEventWithGroupId:groupId parentKey:duplicateKey];

          v22 = [SGPipelineEnrichment alloc];
          title = [(SGDCKEvent *)v13 title];
          v119 = v21;
          v24 = [(SGPipelineEnrichment *)v22 initWithDuplicateKey:v21 title:title parent:v18];

          [(SGDCKEvent *)v13 creationTimestamp];
          [(SGPipelineEnrichment *)v24 setCreationTimestamp:?];
          [(SGDCKEvent *)v13 lastModifiedTimestamp];
          [(SGPipelineEnrichment *)v24 setLastModifiedTimestamp:?];
          extraKey = [(SGDCKEvent *)v13 extraKey];

          if (extraKey)
          {
            v26 = MEMORY[0x277D01FA0];
            extraKey2 = [(SGDCKEvent *)v13 extraKey];
            v28 = [v26 extraKey:extraKey2];
            [(SGEntity *)v24 addTag:v28];
          }

          if ([(SGDCKEvent *)v13 cancelled])
          {
            extractedEventCancellation = [MEMORY[0x277D01FA0] extractedEventCancellation];
            [(SGEntity *)v24 addTag:extractedEventCancellation];
          }

          if ([(SGDCKEvent *)v13 allDay])
          {
            allDay = [MEMORY[0x277D01FA0] allDay];
            [(SGEntity *)v24 addTag:allDay];
          }

          domain = [(SGDCKEvent *)v13 domain];

          if (domain)
          {
            v32 = MEMORY[0x277D01FA0];
            domain2 = [(SGDCKEvent *)v13 domain];
            v34 = [v32 domain:domain2];
            [(SGEntity *)v24 addTag:v34];
          }

          templateName = [(SGDCKEvent *)v13 templateName];

          if (templateName)
          {
            v36 = MEMORY[0x277D01FA0];
            templateName2 = [(SGDCKEvent *)v13 templateName];
            v38 = [v36 extractedFromTemplateWithName:templateName2];
            [(SGEntity *)v24 addTag:v38];
          }

          v39 = [MEMORY[0x277D01FA0] categoryTagWithCategoryType:{-[SGDCKEvent categoryType](v13, "categoryType")}];
          if (v39)
          {
            [(SGEntity *)v24 addTag:v39];
          }

          when = [(SGDCKEvent *)v13 when];
          [when start];
          v42 = v41;
          [when end];
          v44 = v43;
          hasStartUTCOffsetSeconds = [when hasStartUTCOffsetSeconds];
          v46 = MEMORY[0x277D020E8];
          v117 = when;
          v118 = v39;
          if (hasStartUTCOffsetSeconds)
          {
            v47 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{objc_msgSend(when, "startUTCOffsetSeconds")}];
            v48 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{objc_msgSend(when, "endUTCOffsetSeconds")}];
            v49 = [v46 rangeWithStart:v47 startTimeZone:v48 end:v42 endTimeZone:v44];
          }

          else
          {
            v49 = [MEMORY[0x277D020E8] floatingRangeWithUTCStart:v42 end:v44];
          }

          [(SGEntity *)v24 setTimeRange:v49];
          locations = [(SGEntity *)v24 locations];
          locations2 = [(SGDCKEvent *)v13 locations];
          v60 = sgMap();
          [locations addObjectsFromArray:v60];

          content = [(SGDCKEvent *)v13 content];

          if (content)
          {
            content2 = [(SGDCKEvent *)v13 content];
            [(SGEntity *)v24 setContent:content2];
          }

          v63 = 0x277D01000uLL;
          if ([(SGDCKEvent *)v13 hasExtraKey])
          {
            v64 = MEMORY[0x277D01FA0];
            extraKey3 = [(SGDCKEvent *)v13 extraKey];
            v66 = [v64 extraKey:extraKey3];
            [(SGEntity *)v24 addTag:v66];
          }

          v116 = v49;
          if ([(SGDCKEvent *)v13 cancelled])
          {
            extractedEventCancellation2 = [MEMORY[0x277D01FA0] extractedEventCancellation];
            [(SGEntity *)v24 addTag:extractedEventCancellation2];
          }

          if ([(SGDCKEvent *)v13 hasSchemaOrg])
          {
            v68 = v18;
            v69 = MEMORY[0x277CCAC58];
            schemaOrg = [(SGDCKEvent *)v13 schemaOrg];
            v122 = 0;
            v71 = [v69 propertyListWithData:schemaOrg options:0 format:0 error:&v122];
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
            metadata = [(SGDCKEvent *)v13 metadata];
            v121 = 0;
            v80 = [v78 propertyListWithData:metadata options:0 format:0 error:&v121];
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

          duplicateKey2 = [(SGEntity *)v18 duplicateKey];
          if ([duplicateKey2 entityType] == 16)
          {
            duplicateKey3 = [(SGEntity *)v24 duplicateKey];
            entityType = [duplicateKey3 entityType];

            if (entityType != 2)
            {
LABEL_84:
              fromSync = [*(v63 + 4000) fromSync];
              [(SGEntity *)v24 addTag:fromSync];

              if (v24)
              {
                [(SGEntity *)v24 lastModifiedTimestamp];
                [(SGPipelineEntity *)v18 setLastModifiedTimestamp:?];
                [(SGEntity *)v24 creationTimestamp];
                [(SGPipelineEntity *)v18 setCreationTimestamp:?];
                [(SGPipelineEntity *)v18 addEnrichment:v24];
              }

              interactionInfo = v18;

              v51 = interactionInfo;
              goto LABEL_87;
            }

            duplicateKey2 = [(SGDCKEvent *)v13 interactionInfo];
            if ([duplicateKey2 hasInteractionId])
            {
              fromInteraction = [*(v63 + 4000) fromInteraction];
              [(SGEntity *)v24 addTag:fromInteraction];

              v90 = *(v63 + 4000);
              interactionId2 = [duplicateKey2 interactionId];
              v92 = [v90 interactionId:interactionId2];
              [(SGEntity *)v24 addTag:v92];
            }

            if ([duplicateKey2 hasInteractionGroupId])
            {
              v93 = *(v63 + 4000);
              interactionGroupId = [duplicateKey2 interactionGroupId];
              v95 = [v93 interactionGroupId:interactionGroupId];
              [(SGEntity *)v24 addTag:v95];
            }

            if ([duplicateKey2 hasInteractionTeamId])
            {
              v96 = *(v63 + 4000);
              interactionTeamId = [duplicateKey2 interactionTeamId];
              v98 = [v96 interactionTeamId:interactionTeamId];
              [(SGEntity *)v24 addTag:v98];
            }

            if ([duplicateKey2 hasInteractionBundleId])
            {
              v99 = *(v63 + 4000);
              interactionBundleId2 = [duplicateKey2 interactionBundleId];
              v101 = [v99 interactionBundleId:interactionBundleId2];
              [(SGEntity *)v24 addTag:v101];
            }

            if ([duplicateKey2 hasReservationItemReferences])
            {
              v102 = *(v63 + 4000);
              reservationItemReferences = [duplicateKey2 reservationItemReferences];
              v104 = [v102 reservationItemReferencesWithData:reservationItemReferences];
              [(SGEntity *)v24 addTag:v104];
            }

            if ([duplicateKey2 hasReservationContainerReference])
            {
              v105 = *(v63 + 4000);
              reservationContainerReference = [duplicateKey2 reservationContainerReference];
              v107 = [v105 reservationContainerReferenceWithData:reservationContainerReference];
              [(SGEntity *)v24 addTag:v107];
            }

            if ([duplicateKey2 hasIntentResponseUserActivityString])
            {
              v108 = *(v63 + 4000);
              intentResponseUserActivityString = [duplicateKey2 intentResponseUserActivityString];
              v110 = [v108 intentResponseUserActivityString:intentResponseUserActivityString];
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

      interactionInfo = sgLogHandle();
      if (!os_log_type_enabled(interactionInfo, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v55 = "SGCK Error: Record with type interaction is missing interaction info.";
    }

    else
    {
      interactionInfo = sgLogHandle();
      if (!os_log_type_enabled(interactionInfo, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v55 = "SGCK Error: Record version higher than 3 did not contain parent entity type.";
    }

    v56 = interactionInfo;
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
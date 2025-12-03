@interface ICBaseAttachment
+ (id)attachmentWithIdentifier:(id)identifier includeDeleted:(BOOL)deleted context:(id)context;
+ (id)newAttachmentWithIdentifier:(id)identifier note:(id)note;
+ (id)predicateForVisibleAttachmentsIncludingTrash:(BOOL)trash inContext:(id)context;
+ (id)predicateForVisibleObjects;
+ (void)deleteAttachment:(id)attachment;
+ (void)undeleteAttachment:(id)attachment;
- (BOOL)isUsed;
- (BOOL)isVisible;
- (ICBaseAttachment)rootParentAttachment;
- (_NSRange)rangeInNote;
- (id)cloudAccount;
- (id)parentCloudObjectForMinimumSupportedVersionPropagation;
- (void)setParentAttachment:(id)attachment;
@end

@implementation ICBaseAttachment

+ (id)predicateForVisibleObjects
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA920];
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___ICBaseAttachment;
  v3 = objc_msgSendSuper2(&v8, sel_predicateForVisibleObjects);
  v9[0] = v3;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.needsInitialFetchFromCloud == NO"];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  return v6;
}

- (id)parentCloudObjectForMinimumSupportedVersionPropagation
{
  parentAttachment = [(ICBaseAttachment *)self parentAttachment];
  v4 = parentAttachment;
  if (parentAttachment)
  {
    note = parentAttachment;
  }

  else
  {
    note = [(ICBaseAttachment *)self note];
  }

  v6 = note;

  return v6;
}

- (_NSRange)rangeInNote
{
  note = [(ICBaseAttachment *)self note];

  if (note)
  {
    note2 = [(ICBaseAttachment *)self note];
    v5 = [note2 rangeForAttachment:self];
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0;
  }

  result.length = v9;
  result.location = v8;
  return result;
}

- (BOOL)isUsed
{
  if (([(ICBaseAttachment *)self markedForDeletion]& 1) != 0)
  {
    return 0;
  }

  parentAttachment = [(ICBaseAttachment *)self parentAttachment];

  if (!parentAttachment)
  {
    return [(ICBaseAttachment *)self rangeInNote]!= 0x7FFFFFFFFFFFFFFFLL;
  }

  parentAttachment2 = [(ICBaseAttachment *)self parentAttachment];
  if ([parentAttachment2 isUsed])
  {
    parentAttachment3 = [(ICBaseAttachment *)self parentAttachment];
    attachmentModel = [parentAttachment3 attachmentModel];
    v3 = [attachmentModel usesChildAttachment:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)newAttachmentWithIdentifier:(id)identifier note:(id)note
{
  noteCopy = note;
  identifierCopy = identifier;
  managedObjectContext = [noteCopy managedObjectContext];
  v9 = [self newObjectWithIdentifier:identifierCopy context:managedObjectContext];

  account = [noteCopy account];
  [v9 setAccount:account];

  [v9 setNote:noteCopy];
  account2 = [noteCopy account];

  persistentStore = [account2 persistentStore];
  [v9 assignToPersistentStore:persistentStore];

  return v9;
}

+ (void)deleteAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  v3 = ICDynamicCast();

  if (v3)
  {
    media = [attachmentCopy media];
    [ICMedia deleteMedia:media];
  }

  [attachmentCopy markForDeletion];
}

+ (void)undeleteAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  v3 = ICDynamicCast();

  if (v3)
  {
    media = [attachmentCopy media];
    [ICMedia undeleteMedia:media];
  }

  [attachmentCopy unmarkForDeletion];
}

- (BOOL)isVisible
{
  note = [(ICBaseAttachment *)self note];
  if ([note isVisible])
  {
    v6.receiver = self;
    v6.super_class = ICBaseAttachment;
    isVisible = [(ICCloudSyncingObject *)&v6 isVisible];
  }

  else
  {
    isVisible = 0;
  }

  return isVisible;
}

+ (id)attachmentWithIdentifier:(id)identifier includeDeleted:(BOOL)deleted context:(id)context
{
  v18[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifier = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", identifier];
  v10 = identifier;
  v11 = identifier;
  if (!deleted)
  {
    v12 = MEMORY[0x277CCA920];
    v18[0] = identifier;
    v13 = [self predicateForVisibleAttachmentsInContext:contextCopy];
    v18[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v11 = [v12 andPredicateWithSubpredicates:v14];
  }

  v15 = [self ic_objectsMatchingPredicate:v11 context:contextCopy];
  firstObject = [v15 firstObject];

  return firstObject;
}

+ (id)predicateForVisibleAttachmentsIncludingTrash:(BOOL)trash inContext:(id)context
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB18];
  contextCopy = context;
  v8 = objc_alloc_init(v6);
  predicateForVisibleObjects = [self predicateForVisibleObjects];
  [v8 addObject:predicateForVisibleObjects];

  if (!trash)
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.folder.folderType != %d", 1];
    [v8 addObject:v10];
  }

  v11 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];
  v12 = MEMORY[0x277CCA920];
  v17[0] = v11;
  v13 = [ICUnsupportedObjectPredicateHelper predicateForSupportedAttachmentsInContext:contextCopy];

  v17[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v15 = [v12 andPredicateWithSubpredicates:v14];

  return v15;
}

- (id)cloudAccount
{
  account = [(ICBaseAttachment *)self account];
  v4 = account;
  if (account)
  {
    cloudAccount = account;
  }

  else
  {
    note = [(ICBaseAttachment *)self note];
    cloudAccount = [note cloudAccount];
  }

  return cloudAccount;
}

- (void)setParentAttachment:(id)attachment
{
  attachmentCopy = attachment;
  parentAttachment = [(ICBaseAttachment *)self parentAttachment];

  if (parentAttachment != attachmentCopy)
  {
    [(ICBaseAttachment *)self willChangeValueForKey:@"parentAttachment"];
    [(ICBaseAttachment *)self willChangeValueForKey:@"parentCloudObject"];
    [(ICBaseAttachment *)self setPrimitiveValue:attachmentCopy forKey:@"parentAttachment"];
    [(ICBaseAttachment *)self didChangeValueForKey:@"parentAttachment"];
    [(ICBaseAttachment *)self didChangeValueForKey:@"parentCloudObject"];
    [attachmentCopy resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  }
}

- (ICBaseAttachment)rootParentAttachment
{
  parentAttachment = [(ICBaseAttachment *)self parentAttachment];
  if (parentAttachment)
  {
    parentAttachment2 = [(ICBaseAttachment *)self parentAttachment];
    selfCopy = [parentAttachment2 rootParentAttachment];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end
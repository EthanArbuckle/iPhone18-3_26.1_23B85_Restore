@interface ICBaseAttachment
+ (id)attachmentWithIdentifier:(id)a3 includeDeleted:(BOOL)a4 context:(id)a5;
+ (id)newAttachmentWithIdentifier:(id)a3 note:(id)a4;
+ (id)predicateForVisibleAttachmentsIncludingTrash:(BOOL)a3 inContext:(id)a4;
+ (id)predicateForVisibleObjects;
+ (void)deleteAttachment:(id)a3;
+ (void)undeleteAttachment:(id)a3;
- (BOOL)isUsed;
- (BOOL)isVisible;
- (ICBaseAttachment)rootParentAttachment;
- (_NSRange)rangeInNote;
- (id)cloudAccount;
- (id)parentCloudObjectForMinimumSupportedVersionPropagation;
- (void)setParentAttachment:(id)a3;
@end

@implementation ICBaseAttachment

+ (id)predicateForVisibleObjects
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA920];
  v8.receiver = a1;
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
  v3 = [(ICBaseAttachment *)self parentAttachment];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ICBaseAttachment *)self note];
  }

  v6 = v5;

  return v6;
}

- (_NSRange)rangeInNote
{
  v3 = [(ICBaseAttachment *)self note];

  if (v3)
  {
    v4 = [(ICBaseAttachment *)self note];
    v5 = [v4 rangeForAttachment:self];
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

  v4 = [(ICBaseAttachment *)self parentAttachment];

  if (!v4)
  {
    return [(ICBaseAttachment *)self rangeInNote]!= 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(ICBaseAttachment *)self parentAttachment];
  if ([v5 isUsed])
  {
    v6 = [(ICBaseAttachment *)self parentAttachment];
    v7 = [v6 attachmentModel];
    v3 = [v7 usesChildAttachment:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)newAttachmentWithIdentifier:(id)a3 note:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 managedObjectContext];
  v9 = [a1 newObjectWithIdentifier:v7 context:v8];

  v10 = [v6 account];
  [v9 setAccount:v10];

  [v9 setNote:v6];
  v11 = [v6 account];

  v12 = [v11 persistentStore];
  [v9 assignToPersistentStore:v12];

  return v9;
}

+ (void)deleteAttachment:(id)a3
{
  v5 = a3;
  objc_opt_class();
  v3 = ICDynamicCast();

  if (v3)
  {
    v4 = [v5 media];
    [ICMedia deleteMedia:v4];
  }

  [v5 markForDeletion];
}

+ (void)undeleteAttachment:(id)a3
{
  v5 = a3;
  objc_opt_class();
  v3 = ICDynamicCast();

  if (v3)
  {
    v4 = [v5 media];
    [ICMedia undeleteMedia:v4];
  }

  [v5 unmarkForDeletion];
}

- (BOOL)isVisible
{
  v3 = [(ICBaseAttachment *)self note];
  if ([v3 isVisible])
  {
    v6.receiver = self;
    v6.super_class = ICBaseAttachment;
    v4 = [(ICCloudSyncingObject *)&v6 isVisible];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)attachmentWithIdentifier:(id)a3 includeDeleted:(BOOL)a4 context:(id)a5
{
  v18[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", a3];
  v10 = v9;
  v11 = v9;
  if (!a4)
  {
    v12 = MEMORY[0x277CCA920];
    v18[0] = v9;
    v13 = [a1 predicateForVisibleAttachmentsInContext:v8];
    v18[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v11 = [v12 andPredicateWithSubpredicates:v14];
  }

  v15 = [a1 ic_objectsMatchingPredicate:v11 context:v8];
  v16 = [v15 firstObject];

  return v16;
}

+ (id)predicateForVisibleAttachmentsIncludingTrash:(BOOL)a3 inContext:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB18];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v9 = [a1 predicateForVisibleObjects];
  [v8 addObject:v9];

  if (!a3)
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.folder.folderType != %d", 1];
    [v8 addObject:v10];
  }

  v11 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];
  v12 = MEMORY[0x277CCA920];
  v17[0] = v11;
  v13 = [ICUnsupportedObjectPredicateHelper predicateForSupportedAttachmentsInContext:v7];

  v17[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v15 = [v12 andPredicateWithSubpredicates:v14];

  return v15;
}

- (id)cloudAccount
{
  v3 = [(ICBaseAttachment *)self account];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(ICBaseAttachment *)self note];
    v5 = [v6 cloudAccount];
  }

  return v5;
}

- (void)setParentAttachment:(id)a3
{
  v5 = a3;
  v4 = [(ICBaseAttachment *)self parentAttachment];

  if (v4 != v5)
  {
    [(ICBaseAttachment *)self willChangeValueForKey:@"parentAttachment"];
    [(ICBaseAttachment *)self willChangeValueForKey:@"parentCloudObject"];
    [(ICBaseAttachment *)self setPrimitiveValue:v5 forKey:@"parentAttachment"];
    [(ICBaseAttachment *)self didChangeValueForKey:@"parentAttachment"];
    [(ICBaseAttachment *)self didChangeValueForKey:@"parentCloudObject"];
    [v5 resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  }
}

- (ICBaseAttachment)rootParentAttachment
{
  v3 = [(ICBaseAttachment *)self parentAttachment];
  if (v3)
  {
    v4 = [(ICBaseAttachment *)self parentAttachment];
    v5 = [v4 rootParentAttachment];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

@end
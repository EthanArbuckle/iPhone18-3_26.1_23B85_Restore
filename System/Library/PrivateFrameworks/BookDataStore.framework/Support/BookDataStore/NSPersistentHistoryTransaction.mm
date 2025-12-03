@interface NSPersistentHistoryTransaction
- (BOOL)bds_atOffset:(int64_t *)offset getAtMost:(int64_t)most moc:(id)moc entityClass:(Class)class privacyDelegate:(id)delegate updated:(id *)updated tombstones:(id *)tombstones;
@end

@implementation NSPersistentHistoryTransaction

- (BOOL)bds_atOffset:(int64_t *)offset getAtMost:(int64_t)most moc:(id)moc entityClass:(Class)class privacyDelegate:(id)delegate updated:(id *)updated tombstones:(id *)tombstones
{
  mocCopy = moc;
  delegateCopy = delegate;
  changes = [(NSPersistentHistoryTransaction *)self changes];
  v16 = [changes count];
  v39 = +[NSMutableArray array];
  v37 = +[NSMutableArray array];
  v41 = NSStringFromClass(class);
  v42 = v16;
  v17 = *offset;
  updatedCopy = updated;
  if (*offset < v16 && most >= 1)
  {
    v18 = 0;
    mostCopy = most;
    offsetCopy = offset;
    while (1)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = [changes objectAtIndexedSubscript:v17];
      if (![v20 changeType] || objc_msgSend(v20, "changeType") == 1)
      {
        break;
      }

      if ([v20 changeType] != 2)
      {
        goto LABEL_22;
      }

      changedObjectID = [v20 changedObjectID];
      entity = [changedObjectID entity];
      name = [entity name];
      v31 = [name isEqualToString:v41];

      if (v31)
      {
        tombstone = [v20 tombstone];
        if (tombstone)
        {
          [v39 addObject:tombstone];
          ++v18;
        }

LABEL_15:
      }

      most = mostCopy;
LABEL_22:

      objc_autoreleasePoolPop(v19);
      [mocCopy processPendingChanges];
LABEL_23:
      if (++v17 >= v42 || v18 >= most)
      {
        goto LABEL_25;
      }
    }

    tombstone = [v20 changedObjectID];
    entity2 = [tombstone entity];
    name2 = [entity2 name];
    v24 = [name2 isEqualToString:v41];

    if (!v24)
    {

      objc_autoreleasePoolPop(v19);
      most = mostCopy;
      goto LABEL_23;
    }

    v25 = [mocCopy existingObjectWithID:tombstone error:0];
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v25 isDeleted] & 1) == 0)
    {
      v26 = v25;
      if (([v26 deletedFlag] & 1) == 0)
      {
        [v26 setPrivacyDelegate:delegateCopy];
        v27 = [v26 mutableCopy];
        [v27 setPrivacyDelegate:delegateCopy];
        if (v27)
        {
          [v37 addObject:v27];
          ++v18;
        }

        offset = offsetCopy;
      }
    }

    [mocCopy refreshObject:v25 mergeChanges:0];

    goto LABEL_15;
  }

LABEL_25:
  v32 = v37;
  *updatedCopy = v37;
  v33 = v39;
  *tombstones = v39;
  *offset = v17;

  return v17 == v42;
}

@end
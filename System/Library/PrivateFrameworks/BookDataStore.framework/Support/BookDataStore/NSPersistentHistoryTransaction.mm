@interface NSPersistentHistoryTransaction
- (BOOL)bds_atOffset:(int64_t *)a3 getAtMost:(int64_t)a4 moc:(id)a5 entityClass:(Class)a6 privacyDelegate:(id)a7 updated:(id *)a8 tombstones:(id *)a9;
@end

@implementation NSPersistentHistoryTransaction

- (BOOL)bds_atOffset:(int64_t *)a3 getAtMost:(int64_t)a4 moc:(id)a5 entityClass:(Class)a6 privacyDelegate:(id)a7 updated:(id *)a8 tombstones:(id *)a9
{
  v15 = a5;
  v38 = a7;
  v43 = [(NSPersistentHistoryTransaction *)self changes];
  v16 = [v43 count];
  v39 = +[NSMutableArray array];
  v37 = +[NSMutableArray array];
  v41 = NSStringFromClass(a6);
  v42 = v16;
  v17 = *a3;
  v36 = a8;
  if (*a3 < v16 && a4 >= 1)
  {
    v18 = 0;
    v40 = a4;
    v35 = a3;
    while (1)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = [v43 objectAtIndexedSubscript:v17];
      if (![v20 changeType] || objc_msgSend(v20, "changeType") == 1)
      {
        break;
      }

      if ([v20 changeType] != 2)
      {
        goto LABEL_22;
      }

      v28 = [v20 changedObjectID];
      v29 = [v28 entity];
      v30 = [v29 name];
      v31 = [v30 isEqualToString:v41];

      if (v31)
      {
        v21 = [v20 tombstone];
        if (v21)
        {
          [v39 addObject:v21];
          ++v18;
        }

LABEL_15:
      }

      a4 = v40;
LABEL_22:

      objc_autoreleasePoolPop(v19);
      [v15 processPendingChanges];
LABEL_23:
      if (++v17 >= v42 || v18 >= a4)
      {
        goto LABEL_25;
      }
    }

    v21 = [v20 changedObjectID];
    v22 = [v21 entity];
    v23 = [v22 name];
    v24 = [v23 isEqualToString:v41];

    if (!v24)
    {

      objc_autoreleasePoolPop(v19);
      a4 = v40;
      goto LABEL_23;
    }

    v25 = [v15 existingObjectWithID:v21 error:0];
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v25 isDeleted] & 1) == 0)
    {
      v26 = v25;
      if (([v26 deletedFlag] & 1) == 0)
      {
        [v26 setPrivacyDelegate:v38];
        v27 = [v26 mutableCopy];
        [v27 setPrivacyDelegate:v38];
        if (v27)
        {
          [v37 addObject:v27];
          ++v18;
        }

        a3 = v35;
      }
    }

    [v15 refreshObject:v25 mergeChanges:0];

    goto LABEL_15;
  }

LABEL_25:
  v32 = v37;
  *v36 = v37;
  v33 = v39;
  *a9 = v39;
  *a3 = v17;

  return v17 == v42;
}

@end
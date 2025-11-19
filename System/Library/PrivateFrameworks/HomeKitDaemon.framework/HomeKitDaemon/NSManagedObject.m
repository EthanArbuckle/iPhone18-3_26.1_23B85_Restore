@interface NSManagedObject
@end

@implementation NSManagedObject

void __78__NSManagedObject_HomeKitDaemon__mkf_synchronizeRelation_items_allowCreation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entity];
  v7 = __keyNameForEntity(v4);

  v5 = *(a1 + 32);
  v6 = [v3 valueForKey:v7];
  [v5 setObject:v3 forKey:v6];
}

void __78__NSManagedObject_HomeKitDaemon__mkf_synchronizeRelation_items_allowCreation___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 backingModelKey];
  if (!v3)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [*(a1 + 32) objectForKey:v3];
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) removeObjectForKey:v4];
  }

  else
  {
    v7 = [v13 backingModelType];
    v8 = [HMCContext managedObjectClassFromProtocol:v7];

    if (*(a1 + 72) != 1)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      goto LABEL_8;
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [v13 backingModelKey];
    v6 = __createNewObject(v9, v8, v10, v11);
  }

  if (([v13 updateBackingModel:v6 error:0] & 1) == 0)
  {
LABEL_13:
    v12 = _HMFPreconditionFailure();
    __78__NSManagedObject_HomeKitDaemon__mkf_synchronizeRelation_items_allowCreation___block_invoke_3(v12);
    return;
  }

  [*(a1 + 56) addObject:v6];

LABEL_8:
}

void __78__NSManagedObject_HomeKitDaemon__mkf_synchronizeRelation_items_allowCreation___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 managedObjectContext];
  [v3 deleteObject:v2];
}

@end
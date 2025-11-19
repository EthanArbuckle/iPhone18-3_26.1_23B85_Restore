@interface NSManagedObject
@end

@implementation NSManagedObject

BOOL __57__NSManagedObject_IC__ic_containsFaultingManagedObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 faultingState] != 0;

  return v3;
}

uint64_t __56__NSManagedObject_IC__ic_permanentObjectIDsFromObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];
  v3 = [v2 isTemporaryID];

  return v3;
}

void __63__NSManagedObject_IC__ic_postNotificationOnMainThreadWithName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained ic_permanentObjectID];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __63__NSManagedObject_IC__ic_postNotificationOnMainThreadWithName___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:*(*(*(a1 + 40) + 8) + 40)];
}

void __72__NSManagedObject_IC__ic_postNotificationOnMainThreadAfterSaveWithName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained ic_permanentObjectID];

  if (v3)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __72__NSManagedObject_IC__ic_postNotificationOnMainThreadAfterSaveWithName___block_invoke_2;
    v9 = &unk_1E8484980;
    v10 = *(a1 + 32);
    v11 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], &v6);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  [v4 removeObserver:v5];
}

void __72__NSManagedObject_IC__ic_postNotificationOnMainThreadAfterSaveWithName___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:*(a1 + 40)];
}

@end
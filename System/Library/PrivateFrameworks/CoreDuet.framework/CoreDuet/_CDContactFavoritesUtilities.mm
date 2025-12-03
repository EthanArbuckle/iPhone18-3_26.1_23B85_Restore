@interface _CDContactFavoritesUtilities
+ (id)sharedInstance;
- (_CDContactFavoritesUtilities)init;
- (void)accessEntriesForContact:(id)contact withBlock:(id)block;
- (void)accessFavoriteContactEntriesWithBlock:(id)block;
- (void)runWithLockAcquired:(id)acquired;
@end

@implementation _CDContactFavoritesUtilities

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken20_0 != -1)
  {
    +[_CDContactFavoritesUtilities sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_2;

  return v3;
}

- (_CDContactFavoritesUtilities)init
{
  v8.receiver = self;
  v8.super_class = _CDContactFavoritesUtilities;
  v2 = [(_CDContactFavoritesUtilities *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(getCNFavoritesClass());
    getCNContactStoreClass();
    v4 = objc_opt_new();
    v5 = [v3 initWithContactStore:v4];
    contactFavorites = v2->_contactFavorites;
    v2->_contactFavorites = v5;
  }

  return v2;
}

- (void)runWithLockAcquired:(id)acquired
{
  acquiredCopy = acquired;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  isMainThread = [currentThread isMainThread];

  if (isMainThread)
  {
    acquiredCopy[2](acquiredCopy, self->_contactFavorites);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52___CDContactFavoritesUtilities_runWithLockAcquired___block_invoke;
    v7[3] = &unk_1E7367818;
    v7[4] = self;
    v8 = acquiredCopy;
    dispatch_sync(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)accessFavoriteContactEntriesWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70___CDContactFavoritesUtilities_accessFavoriteContactEntriesWithBlock___block_invoke;
  v6[3] = &unk_1E7369D00;
  v7 = blockCopy;
  v5 = blockCopy;
  [(_CDContactFavoritesUtilities *)self runWithLockAcquired:v6];
}

- (void)accessEntriesForContact:(id)contact withBlock:(id)block
{
  contactCopy = contact;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66___CDContactFavoritesUtilities_accessEntriesForContact_withBlock___block_invoke;
  v10[3] = &unk_1E7369D28;
  v11 = contactCopy;
  v12 = blockCopy;
  v8 = contactCopy;
  v9 = blockCopy;
  [(_CDContactFavoritesUtilities *)self runWithLockAcquired:v10];
}

@end
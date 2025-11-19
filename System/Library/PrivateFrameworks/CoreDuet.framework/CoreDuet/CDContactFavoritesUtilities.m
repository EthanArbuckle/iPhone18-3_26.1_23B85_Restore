@interface CDContactFavoritesUtilities
@end

@implementation CDContactFavoritesUtilities

void __46___CDContactFavoritesUtilities_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_2;
  sharedInstance__pasExprOnceResult_2 = v1;

  objc_autoreleasePoolPop(v0);
}

void __70___CDContactFavoritesUtilities_accessFavoriteContactEntriesWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 entries];
  (*(v2 + 16))(v2, v3);
}

void __66___CDContactFavoritesUtilities_accessEntriesForContact_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 entriesForContact:*(a1 + 32)];
  (*(v2 + 16))(v2, v3);
}

@end
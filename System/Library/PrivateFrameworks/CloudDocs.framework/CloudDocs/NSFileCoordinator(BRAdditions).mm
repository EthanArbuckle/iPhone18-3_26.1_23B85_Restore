@interface NSFileCoordinator(BRAdditions)
+ (void)br_boostFilePresenter:()BRAdditions;
@end

@implementation NSFileCoordinator(BRAdditions)

+ (void)br_boostFilePresenter:()BRAdditions
{
  v3 = a3;
  v4 = [v3 presentedItemURL];
  v5 = [v4 _br_itemServiceSyncProxy];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__NSFileCoordinator_BRAdditions__br_boostFilePresenter___block_invoke;
  v7[3] = &unk_1E7A14830;
  v8 = v3;
  v6 = v3;
  [v5 boostFilePresenter:v7];
}

@end
@interface REVideoPlayerItemsLooper
- (REVideoPlayerItemsLooper)initWithPlayer:(id)player assets:(id)assets;
- (void)dealloc;
- (void)enqueueAssetItems;
- (void)observeLastAndEnqueueAssetItems;
- (void)playerItemAtEnd:(id)end;
@end

@implementation REVideoPlayerItemsLooper

- (REVideoPlayerItemsLooper)initWithPlayer:(id)player assets:(id)assets
{
  playerCopy = player;
  assetsCopy = assets;
  v8 = [(REVideoPlayerItemsLooper *)self init];
  v9 = v8;
  if (v8)
  {
    [(REVideoPlayerItemsLooper *)v8 setPlayer:playerCopy];
    [(REVideoPlayerItemsLooper *)v9 setLoopedAssets:assetsCopy];
    [(REVideoPlayerItemsLooper *)v9 enqueueAssetItems];
    [(REVideoPlayerItemsLooper *)v9 observeLastAndEnqueueAssetItems];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = REVideoPlayerItemsLooper;
  [(REVideoPlayerItemsLooper *)&v4 dealloc];
}

- (void)enqueueAssetItems
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  loopedAssets = [(REVideoPlayerItemsLooper *)self loopedAssets];
  v4 = [loopedAssets countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(loopedAssets);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        player = [(REVideoPlayerItemsLooper *)self player];
        v9 = [MEMORY[0x1E69880B0] playerItemWithAsset:v7];
        [player insertItem:v9 afterItem:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [loopedAssets countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)observeLastAndEnqueueAssetItems
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  player = [(REVideoPlayerItemsLooper *)self player];
  items = [player items];
  lastObject = [items lastObject];
  [defaultCenter addObserver:self selector:sel_playerItemAtEnd_ name:*MEMORY[0x1E6987A10] object:lastObject];

  [(REVideoPlayerItemsLooper *)self enqueueAssetItems];
  player2 = [(REVideoPlayerItemsLooper *)self player];
  [player2 play];
}

- (void)playerItemAtEnd:(id)end
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(REVideoPlayerItemsLooper *)self observeLastAndEnqueueAssetItems];
}

@end
@interface REVideoPlayerItemsLooper
- (REVideoPlayerItemsLooper)initWithPlayer:(id)a3 assets:(id)a4;
- (void)dealloc;
- (void)enqueueAssetItems;
- (void)observeLastAndEnqueueAssetItems;
- (void)playerItemAtEnd:(id)a3;
@end

@implementation REVideoPlayerItemsLooper

- (REVideoPlayerItemsLooper)initWithPlayer:(id)a3 assets:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(REVideoPlayerItemsLooper *)self init];
  v9 = v8;
  if (v8)
  {
    [(REVideoPlayerItemsLooper *)v8 setPlayer:v6];
    [(REVideoPlayerItemsLooper *)v9 setLoopedAssets:v7];
    [(REVideoPlayerItemsLooper *)v9 enqueueAssetItems];
    [(REVideoPlayerItemsLooper *)v9 observeLastAndEnqueueAssetItems];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v3 = [(REVideoPlayerItemsLooper *)self loopedAssets];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [(REVideoPlayerItemsLooper *)self player];
        v9 = [MEMORY[0x1E69880B0] playerItemWithAsset:v7];
        [v8 insertItem:v9 afterItem:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)observeLastAndEnqueueAssetItems
{
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [(REVideoPlayerItemsLooper *)self player];
  v4 = [v3 items];
  v5 = [v4 lastObject];
  [v6 addObserver:self selector:sel_playerItemAtEnd_ name:*MEMORY[0x1E6987A10] object:v5];

  [(REVideoPlayerItemsLooper *)self enqueueAssetItems];
  v7 = [(REVideoPlayerItemsLooper *)self player];
  [v7 play];
}

- (void)playerItemAtEnd:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  [(REVideoPlayerItemsLooper *)self observeLastAndEnqueueAssetItems];
}

@end
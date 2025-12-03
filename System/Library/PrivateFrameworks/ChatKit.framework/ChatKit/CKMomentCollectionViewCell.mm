@interface CKMomentCollectionViewCell
- (void)addEffectView:(id)view;
- (void)animate;
- (void)prepareForReuse;
- (void)setupEffectIfNeeded;
- (void)stopAnimation;
@end

@implementation CKMomentCollectionViewCell

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = CKMomentCollectionViewCell;
  [(CKMomentCollectionViewCell *)&v6 prepareForReuse];
  contentView = [(CKMomentCollectionViewCell *)self contentView];
  subviews = [contentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  effectViews = [(CKMomentCollectionViewCell *)self effectViews];
  [effectViews removeAllObjects];

  [(CKMomentCollectionViewCell *)self setEffect:0];
}

- (void)addEffectView:(id)view
{
  viewCopy = view;
  effectViews = [(CKMomentCollectionViewCell *)self effectViews];

  if (!effectViews)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(CKMomentCollectionViewCell *)self setEffectViews:array];
  }

  contentView = [(CKMomentCollectionViewCell *)self contentView];
  [contentView addSubview:viewCopy];

  effectViews2 = [(CKMomentCollectionViewCell *)self effectViews];
  [effectViews2 addObject:viewCopy];
}

- (void)setupEffectIfNeeded
{
  effect = [(CKMomentCollectionViewCell *)self effect];
  effectViews = [(CKMomentCollectionViewCell *)self effectViews];
  v4 = [effectViews count];

  if (!v4)
  {
    -[CKMomentCollectionViewCell setClipsToBounds:](self, "setClipsToBounds:", [effect effectIsDark]);
    if ([effect layerCount])
    {
      v5 = 0;
      v6 = -2;
      do
      {
        v7 = objc_alloc([effect effectViewClass]);
        [(CKMomentCollectionViewCell *)self bounds];
        v8 = [v7 initWithFrame:?];
        [v8 setUserInteractionEnabled:0];
        [(CKMomentCollectionViewCell *)self addEffectView:v8];
        if (v5)
        {
          if (v5 == [effect layerCount] - 1)
          {
            v9 = 3;
          }

          else
          {
            v9 = v6 / ([effect layerCount] - 2) + 1;
          }
        }

        else
        {
          v9 = 0;
        }

        [v8 setZIndex:v9];

        ++v5;
        v6 += 2;
      }

      while ([effect layerCount] > v5);
    }
  }
}

- (void)animate
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  effectViews = [(CKMomentCollectionViewCell *)self effectViews];
  v3 = [effectViews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(effectViews);
        }

        [*(*(&v7 + 1) + 8 * v6++) startAnimation];
      }

      while (v4 != v6);
      v4 = [effectViews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)stopAnimation
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  effectViews = [(CKMomentCollectionViewCell *)self effectViews];
  v3 = [effectViews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(effectViews);
        }

        [*(*(&v7 + 1) + 8 * v6++) stopAnimation];
      }

      while (v4 != v6);
      v4 = [effectViews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end
@interface CKMomentCollectionViewCell
- (void)addEffectView:(id)a3;
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
  v3 = [(CKMomentCollectionViewCell *)self contentView];
  v4 = [v3 subviews];
  [v4 makeObjectsPerformSelector:sel_removeFromSuperview];

  v5 = [(CKMomentCollectionViewCell *)self effectViews];
  [v5 removeAllObjects];

  [(CKMomentCollectionViewCell *)self setEffect:0];
}

- (void)addEffectView:(id)a3
{
  v4 = a3;
  v5 = [(CKMomentCollectionViewCell *)self effectViews];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [(CKMomentCollectionViewCell *)self setEffectViews:v6];
  }

  v7 = [(CKMomentCollectionViewCell *)self contentView];
  [v7 addSubview:v4];

  v8 = [(CKMomentCollectionViewCell *)self effectViews];
  [v8 addObject:v4];
}

- (void)setupEffectIfNeeded
{
  v10 = [(CKMomentCollectionViewCell *)self effect];
  v3 = [(CKMomentCollectionViewCell *)self effectViews];
  v4 = [v3 count];

  if (!v4)
  {
    -[CKMomentCollectionViewCell setClipsToBounds:](self, "setClipsToBounds:", [v10 effectIsDark]);
    if ([v10 layerCount])
    {
      v5 = 0;
      v6 = -2;
      do
      {
        v7 = objc_alloc([v10 effectViewClass]);
        [(CKMomentCollectionViewCell *)self bounds];
        v8 = [v7 initWithFrame:?];
        [v8 setUserInteractionEnabled:0];
        [(CKMomentCollectionViewCell *)self addEffectView:v8];
        if (v5)
        {
          if (v5 == [v10 layerCount] - 1)
          {
            v9 = 3;
          }

          else
          {
            v9 = v6 / ([v10 layerCount] - 2) + 1;
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

      while ([v10 layerCount] > v5);
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
  v2 = [(CKMomentCollectionViewCell *)self effectViews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) startAnimation];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v2 = [(CKMomentCollectionViewCell *)self effectViews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) stopAnimation];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end
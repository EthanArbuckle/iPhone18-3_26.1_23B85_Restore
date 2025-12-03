@interface UIStackView(MUXCrossPlatformOperations)
- (uint64_t)_mapsui_setContentEdgeInsets:()MUXCrossPlatformOperations;
- (void)_mapsui_removeArrangedSubview:()MUXCrossPlatformOperations;
- (void)_mapsui_setArrangedSubviews:()MUXCrossPlatformOperations;
@end

@implementation UIStackView(MUXCrossPlatformOperations)

- (void)_mapsui_removeArrangedSubview:()MUXCrossPlatformOperations
{
  v6 = a3;
  if (v6)
  {
    subviews = [self subviews];
    v5 = [subviews containsObject:v6];

    if (v5)
    {
      [self removeArrangedSubview:v6];
      [v6 removeFromSuperview];
    }
  }
}

- (void)_mapsui_setArrangedSubviews:()MUXCrossPlatformOperations
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  subviews = [self subviews];
  v7 = [v5 arrayWithArray:subviews];

  [v7 removeObjectsInArray:v4];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [self _mapsui_removeArrangedSubview:*(*(&v24 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        [self removeArrangedSubview:{v18, v20}];
        [self addArrangedSubview:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_mapsui_setContentEdgeInsets:()MUXCrossPlatformOperations
{
  [self setLayoutMargins:?];

  return [self setLayoutMarginsRelativeArrangement:1];
}

@end
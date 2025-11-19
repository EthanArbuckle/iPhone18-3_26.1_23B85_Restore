@interface CFXCounterRotationLayer
- (void)addAnimation:(id)a3 forKey:(id)a4;
@end

@implementation CFXCounterRotationLayer

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"transform"])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v9 = [v8 fromValue];
    v10 = v9;
    if (v9)
    {
      [v9 CATransform3DValue];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
    }

    v11 = atan2(*(&v14 + 1), *&v14);
    [v8 setKeyPath:@"transform.rotation.z"];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v8 setFromValue:v12];

    [v8 setToValue:&unk_28556D260];
  }

  v13.receiver = self;
  v13.super_class = CFXCounterRotationLayer;
  [(CFXCounterRotationLayer *)&v13 addAnimation:v6 forKey:v7];
}

@end
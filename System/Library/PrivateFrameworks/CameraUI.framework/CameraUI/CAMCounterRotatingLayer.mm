@interface CAMCounterRotatingLayer
- (void)addAnimation:(id)animation forKey:(id)key;
@end

@implementation CAMCounterRotatingLayer

- (void)addAnimation:(id)animation forKey:(id)key
{
  animationCopy = animation;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"transform"])
  {
    v8 = animationCopy;
    if ([v8 isAdditive])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      fromValue = [v8 fromValue];
      v10 = fromValue;
      if (fromValue)
      {
        [fromValue CATransform3DValue];
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
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      [v8 setFromValue:v12];

      [v8 setToValue:&unk_1F16C71C0];
    }
  }

  v13.receiver = self;
  v13.super_class = CAMCounterRotatingLayer;
  [(CAMCounterRotatingLayer *)&v13 addAnimation:animationCopy forKey:keyCopy];
}

@end
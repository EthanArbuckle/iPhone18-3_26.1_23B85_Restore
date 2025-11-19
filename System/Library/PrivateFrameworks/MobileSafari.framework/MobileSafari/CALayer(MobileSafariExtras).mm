@interface CALayer(MobileSafariExtras)
- (void)safari_copyAnimationsFromLayer:()MobileSafariExtras applyingModifications:;
- (void)safari_presentationOrSelf;
@end

@implementation CALayer(MobileSafariExtras)

- (void)safari_presentationOrSelf
{
  v1 = a1;
  v2 = [a1 presentationLayer];
  v3 = v2;
  if (v2)
  {
    v1 = v2;
  }

  v4 = v1;

  return v1;
}

- (void)safari_copyAnimationsFromLayer:()MobileSafariExtras applyingModifications:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 animationKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v6 animationForKey:v13];
        v15 = [v14 copy];
        if (v15)
        {
          if (v7)
          {
            v7[2](v7, v14, v15);
          }

          [a1 addAnimation:v15 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

@end
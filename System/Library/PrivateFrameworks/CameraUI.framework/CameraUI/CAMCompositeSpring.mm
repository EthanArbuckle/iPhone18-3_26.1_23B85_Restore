@interface CAMCompositeSpring
- (void)updateForTimestamp:(double)timestamp;
@end

@implementation CAMCompositeSpring

- (void)updateForTimestamp:(double)timestamp
{
  v19 = *MEMORY[0x1E69E9840];
  [(CAMSpring *)self _currentForce];
  v6 = v5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  addedSprings = [(CAMCompositeSpring *)self addedSprings];
  v8 = [addedSprings countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(addedSprings);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        [(CAMSpring *)self _current];
        [v12 _setCurrent:?];
        [(CAMSpring *)self velocity];
        [v12 setVelocity:?];
        [v12 _currentForce];
        v6 = v6 + v13;
        ++v11;
      }

      while (v9 != v11);
      v9 = [addedSprings countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(CAMSpring *)self _updateWithForce:v6 timestamp:timestamp];
}

@end
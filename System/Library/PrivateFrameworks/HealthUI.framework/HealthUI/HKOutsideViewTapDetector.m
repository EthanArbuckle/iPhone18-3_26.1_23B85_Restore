@interface HKOutsideViewTapDetector
+ (id)_detectorSingleton;
+ (void)addOutsideTouchCallbackForView:(id)a3 outsideTapBlock:(id)a4;
+ (void)removeOutsideTouchCallbackForView:(id)a3;
- (HKOutsideViewTapDetector)init;
- (id)_callbacksForWindow:(id)a3;
- (void)_removeCallbacksForView:(id)a3;
@end

@implementation HKOutsideViewTapDetector

- (HKOutsideViewTapDetector)init
{
  v6.receiver = self;
  v6.super_class = HKOutsideViewTapDetector;
  v2 = [(HKOutsideViewTapDetector *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    windowCallbacks = v2->_windowCallbacks;
    v2->_windowCallbacks = v3;
  }

  return v2;
}

+ (id)_detectorSingleton
{
  if (_detectorSingleton_onceToken != -1)
  {
    +[HKOutsideViewTapDetector _detectorSingleton];
  }

  v3 = _detectorSingleton__detector;

  return v3;
}

uint64_t __46__HKOutsideViewTapDetector__detectorSingleton__block_invoke()
{
  v0 = objc_alloc_init(HKOutsideViewTapDetector);
  v1 = _detectorSingleton__detector;
  _detectorSingleton__detector = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)addOutsideTouchCallbackForView:(id)a3 outsideTapBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = +[HKOutsideViewTapDetector _detectorSingleton];
  v7 = [v6 window];
  v8 = [v9 _callbacksForWindow:v7];

  [v8 addCallbackForView:v6 outsideTapBlock:v5];
}

+ (void)removeOutsideTouchCallbackForView:(id)a3
{
  v3 = a3;
  v4 = +[HKOutsideViewTapDetector _detectorSingleton];
  [v4 _removeCallbacksForView:v3];
}

- (id)_callbacksForWindow:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(HKOutsideViewTapDetector *)self windowCallbacks];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 matchesWindow:v4])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [[_HKOutsideTapWindowCallbacks alloc] initWithWindow:v4];
  v5 = [(HKOutsideViewTapDetector *)self windowCallbacks];
  [v5 addObject:v11];
LABEL_11:

  return v11;
}

- (void)_removeCallbacksForView:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HKOutsideViewTapDetector *)self windowCallbacks];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeCallbackForView:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end
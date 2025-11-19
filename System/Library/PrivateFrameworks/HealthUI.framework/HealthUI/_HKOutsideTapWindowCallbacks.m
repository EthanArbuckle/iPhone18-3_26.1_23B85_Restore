@interface _HKOutsideTapWindowCallbacks
- (BOOL)matchesWindow:(id)a3;
- (UIWindow)window;
- (_HKOutsideTapWindowCallbacks)initWithWindow:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_installTapGestureRecognizerIfNeeded;
- (void)_removeTapGestureRecognizerIfNeeded;
- (void)addCallbackForView:(id)a3 outsideTapBlock:(id)a4;
- (void)removeCallbackForView:(id)a3;
@end

@implementation _HKOutsideTapWindowCallbacks

- (_HKOutsideTapWindowCallbacks)initWithWindow:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _HKOutsideTapWindowCallbacks;
  v5 = [(_HKOutsideTapWindowCallbacks *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_window, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    callbacks = v6->_callbacks;
    v6->_callbacks = v7;

    recognizer = v6->_recognizer;
    v6->_recognizer = 0;
  }

  return v6;
}

- (BOOL)matchesWindow:(id)a3
{
  v4 = a3;
  v5 = [(_HKOutsideTapWindowCallbacks *)self window];

  return v5 == v4;
}

- (void)addCallbackForView:(id)a3 outsideTapBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[_HKOutsideTapCallback alloc] initWithView:v7 outsideTapBlock:v6];

  v8 = [(_HKOutsideTapWindowCallbacks *)self callbacks];
  [v8 addObject:v9];

  [(_HKOutsideTapWindowCallbacks *)self _installTapGestureRecognizerIfNeeded];
}

- (void)removeCallbackForView:(id)a3
{
  v4 = a3;
  v5 = [(_HKOutsideTapWindowCallbacks *)self callbacks];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54___HKOutsideTapWindowCallbacks_removeCallbackForView___block_invoke;
  v7[3] = &unk_1E81B8B68;
  v8 = v4;
  v6 = v4;
  [v5 hk_removeObjectsPassingTest:v7];

  [(_HKOutsideTapWindowCallbacks *)self _removeTapGestureRecognizerIfNeeded];
}

- (void)_installTapGestureRecognizerIfNeeded
{
  v3 = [(_HKOutsideTapWindowCallbacks *)self recognizer];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
    [(_HKOutsideTapWindowCallbacks *)self setRecognizer:v4];

    v5 = [(_HKOutsideTapWindowCallbacks *)self recognizer];
    [v5 setNumberOfTapsRequired:1];

    v6 = [(_HKOutsideTapWindowCallbacks *)self recognizer];
    [v6 setNumberOfTouchesRequired:1];

    v7 = [(_HKOutsideTapWindowCallbacks *)self recognizer];
    [v7 setCancelsTouchesInView:0];

    v8 = [(_HKOutsideTapWindowCallbacks *)self window];
    [v8 addGestureRecognizer:self->_recognizer];
  }
}

- (void)_removeTapGestureRecognizerIfNeeded
{
  v3 = [(_HKOutsideTapWindowCallbacks *)self recognizer];
  if (v3)
  {
    v4 = v3;
    v5 = [(_HKOutsideTapWindowCallbacks *)self callbacks];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = [(_HKOutsideTapWindowCallbacks *)self window];
      v8 = [(_HKOutsideTapWindowCallbacks *)self recognizer];
      [v7 removeGestureRecognizer:v8];

      [(_HKOutsideTapWindowCallbacks *)self setRecognizer:0];
    }
  }
}

- (void)_handleTap:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(_HKOutsideTapWindowCallbacks *)self callbacks];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 view];

        if (v12)
        {
          v13 = [v11 view];
          [v4 locationInView:v13];
          v15 = v14;
          v17 = v16;

          v18 = [v11 view];
          [v18 frame];
          v29.x = v15;
          v29.y = v17;
          v19 = CGRectContainsPoint(v30, v29);

          if (!v19)
          {
            v20 = [v11 outsideTapBlock];
            v21 = [v11 view];
            (v20)[2](v20, v21);
          }
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v22 = [(_HKOutsideTapWindowCallbacks *)self callbacks];
  [v22 removeObjectsInArray:v5];

  [(_HKOutsideTapWindowCallbacks *)self _removeTapGestureRecognizerIfNeeded];
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end
@interface _HKOutsideTapWindowCallbacks
- (BOOL)matchesWindow:(id)window;
- (UIWindow)window;
- (_HKOutsideTapWindowCallbacks)initWithWindow:(id)window;
- (void)_handleTap:(id)tap;
- (void)_installTapGestureRecognizerIfNeeded;
- (void)_removeTapGestureRecognizerIfNeeded;
- (void)addCallbackForView:(id)view outsideTapBlock:(id)block;
- (void)removeCallbackForView:(id)view;
@end

@implementation _HKOutsideTapWindowCallbacks

- (_HKOutsideTapWindowCallbacks)initWithWindow:(id)window
{
  windowCopy = window;
  v11.receiver = self;
  v11.super_class = _HKOutsideTapWindowCallbacks;
  v5 = [(_HKOutsideTapWindowCallbacks *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_window, windowCopy);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    callbacks = v6->_callbacks;
    v6->_callbacks = v7;

    recognizer = v6->_recognizer;
    v6->_recognizer = 0;
  }

  return v6;
}

- (BOOL)matchesWindow:(id)window
{
  windowCopy = window;
  window = [(_HKOutsideTapWindowCallbacks *)self window];

  return window == windowCopy;
}

- (void)addCallbackForView:(id)view outsideTapBlock:(id)block
{
  blockCopy = block;
  viewCopy = view;
  v9 = [[_HKOutsideTapCallback alloc] initWithView:viewCopy outsideTapBlock:blockCopy];

  callbacks = [(_HKOutsideTapWindowCallbacks *)self callbacks];
  [callbacks addObject:v9];

  [(_HKOutsideTapWindowCallbacks *)self _installTapGestureRecognizerIfNeeded];
}

- (void)removeCallbackForView:(id)view
{
  viewCopy = view;
  callbacks = [(_HKOutsideTapWindowCallbacks *)self callbacks];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54___HKOutsideTapWindowCallbacks_removeCallbackForView___block_invoke;
  v7[3] = &unk_1E81B8B68;
  v8 = viewCopy;
  v6 = viewCopy;
  [callbacks hk_removeObjectsPassingTest:v7];

  [(_HKOutsideTapWindowCallbacks *)self _removeTapGestureRecognizerIfNeeded];
}

- (void)_installTapGestureRecognizerIfNeeded
{
  recognizer = [(_HKOutsideTapWindowCallbacks *)self recognizer];

  if (!recognizer)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
    [(_HKOutsideTapWindowCallbacks *)self setRecognizer:v4];

    recognizer2 = [(_HKOutsideTapWindowCallbacks *)self recognizer];
    [recognizer2 setNumberOfTapsRequired:1];

    recognizer3 = [(_HKOutsideTapWindowCallbacks *)self recognizer];
    [recognizer3 setNumberOfTouchesRequired:1];

    recognizer4 = [(_HKOutsideTapWindowCallbacks *)self recognizer];
    [recognizer4 setCancelsTouchesInView:0];

    window = [(_HKOutsideTapWindowCallbacks *)self window];
    [window addGestureRecognizer:self->_recognizer];
  }
}

- (void)_removeTapGestureRecognizerIfNeeded
{
  recognizer = [(_HKOutsideTapWindowCallbacks *)self recognizer];
  if (recognizer)
  {
    v4 = recognizer;
    callbacks = [(_HKOutsideTapWindowCallbacks *)self callbacks];
    v6 = [callbacks count];

    if (!v6)
    {
      window = [(_HKOutsideTapWindowCallbacks *)self window];
      recognizer2 = [(_HKOutsideTapWindowCallbacks *)self recognizer];
      [window removeGestureRecognizer:recognizer2];

      [(_HKOutsideTapWindowCallbacks *)self setRecognizer:0];
    }
  }
}

- (void)_handleTap:(id)tap
{
  v28 = *MEMORY[0x1E69E9840];
  tapCopy = tap;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  callbacks = [(_HKOutsideTapWindowCallbacks *)self callbacks];
  v7 = [callbacks countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(callbacks);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        view = [v11 view];

        if (view)
        {
          view2 = [v11 view];
          [tapCopy locationInView:view2];
          v15 = v14;
          v17 = v16;

          view3 = [v11 view];
          [view3 frame];
          v29.x = v15;
          v29.y = v17;
          v19 = CGRectContainsPoint(v30, v29);

          if (!v19)
          {
            outsideTapBlock = [v11 outsideTapBlock];
            view4 = [v11 view];
            (outsideTapBlock)[2](outsideTapBlock, view4);
          }
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [callbacks countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  callbacks2 = [(_HKOutsideTapWindowCallbacks *)self callbacks];
  [callbacks2 removeObjectsInArray:v5];

  [(_HKOutsideTapWindowCallbacks *)self _removeTapGestureRecognizerIfNeeded];
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end
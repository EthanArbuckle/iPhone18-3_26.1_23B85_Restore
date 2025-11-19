@interface DBScreenshotFlasher
- (DBScreenshotFlasher)initWithWindowScene:(id)a3;
- (void)_createUIWithColor:(id)a3;
- (void)_orderWindowFrontAndThenOut:(id)a3 withColor:(id)a4;
- (void)_orderWindowOut:(id)a3;
- (void)_tearDown;
- (void)flashColor:(id)a3 withCompletion:(id)a4;
@end

@implementation DBScreenshotFlasher

- (DBScreenshotFlasher)initWithWindowScene:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBScreenshotFlasher;
  v6 = [(DBScreenshotFlasher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_windowScene, a3);
  }

  return v7;
}

- (void)flashColor:(id)a3 withCompletion:(id)a4
{
  v8 = a3;
  if (a4)
  {
    flashCompletionBlocks = self->_flashCompletionBlocks;
    v7 = [a4 copy];
    [(NSMutableArray *)flashCompletionBlocks addObject:v7];
  }

  [(DBScreenshotFlasher *)self _orderWindowFrontAndThenOut:self withColor:v8];
}

- (void)_createUIWithColor:(id)a3
{
  if (!self->_flashWindow)
  {
    windowScene = self->_windowScene;
    v6 = a3;
    v7 = [(UIWindowScene *)windowScene coordinateSpace];
    [v7 bounds];
    v9 = v8;
    v11 = v10;

    v12 = [[_TtC9DashBoard23DBScreenshotFlashWindow alloc] initWithWindowScene:self->_windowScene frame:0.0, 0.0, v9, v11];
    flashWindow = self->_flashWindow;
    self->_flashWindow = &v12->super.super;

    [(UIWindow *)self->_flashWindow setUserInteractionEnabled:0];
    v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v9, v11}];
    flashView = self->_flashView;
    self->_flashView = v14;

    [(UIView *)self->_flashView setBackgroundColor:v6];
    v16 = self->_flashWindow;
    v17 = self->_flashView;

    [(UIWindow *)v16 setContentView:v17];
  }
}

- (void)_tearDown
{
  [(UIWindow *)self->_flashWindow setHidden:1];
  self->_windowVisible = 0;
  flashWindow = self->_flashWindow;
  self->_flashWindow = 0;

  flashView = self->_flashView;
  self->_flashView = 0;
}

- (void)_orderWindowOut:(id)a3
{
  v4 = a3;
  flashView = self->_flashView;
  if (flashView)
  {
    [(UIView *)flashView alpha];
    if (v6 != 0.0)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __39__DBScreenshotFlasher__orderWindowOut___block_invoke;
      v8[3] = &unk_278F01580;
      v8[4] = self;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __39__DBScreenshotFlasher__orderWindowOut___block_invoke_2;
      v7[3] = &unk_278F01690;
      v7[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v8 animations:v7 completion:1.0];
    }
  }
}

void __39__DBScreenshotFlasher__orderWindowOut___block_invoke_2(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (*(v3 + 24))
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    [v3 _tearDown];
    v3 = *(a1 + 32);
  }

  v5 = [*(v3 + 8) copy];
  [*(*(a1 + 32) + 8) removeAllObjects];
  if ([v5 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_orderWindowFrontAndThenOut:(id)a3 withColor:(id)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__orderWindowOut_ object:0];
  if (!self->_windowVisible)
  {
    if (self->_flashWindow)
    {
      [(UIView *)self->_flashView setAlpha:1.0];
      [(UIView *)self->_flashView setBackgroundColor:v5];
    }

    else
    {
      [(DBScreenshotFlasher *)self _createUIWithColor:v5];
    }

    [(UIWindow *)self->_flashWindow _orderFrontWithoutMakingKey];
    self->_windowVisible = 1;
  }

  v7[0] = *MEMORY[0x277CBE738];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(DBScreenshotFlasher *)self performSelector:sel__orderWindowOut_ withObject:0 afterDelay:v6 inModes:0.1];
}

@end
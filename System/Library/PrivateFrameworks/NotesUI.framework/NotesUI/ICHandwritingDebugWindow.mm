@interface ICHandwritingDebugWindow
+ (CGRect)preferredFrame;
+ (void)savePreferredFrame:(CGRect)a3;
- (CGPoint)initialTouchLocation;
- (ICHandwritingDebugDelegate)delegate;
- (ICHandwritingDebugWindow)initWithDelegate:(id)a3;
- (void)layoutSubviews;
- (void)refresh;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateResizeTriangleFrame;
@end

@implementation ICHandwritingDebugWindow

- (ICHandwritingDebugWindow)initWithDelegate:(id)a3
{
  v4 = a3;
  [objc_opt_class() preferredFrame];
  v37.receiver = self;
  v37.super_class = ICHandwritingDebugWindow;
  v5 = [(ICHandwritingDebugWindow *)&v37 initWithFrame:?];
  if (v5)
  {
    v6 = [[ICHandwritingDebugViewController alloc] initWithDelegate:v4];
    handwritingDebugViewController = v5->_handwritingDebugViewController;
    v5->_handwritingDebugViewController = v6;

    v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v9 = [(ICHandwritingDebugViewController *)v5->_handwritingDebugViewController view];
    [v9 setBackgroundColor:v8];

    v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5->_handwritingDebugViewController];
    [(ICHandwritingDebugWindow *)v5 setRootViewController:v10];
    v11 = [(ICHandwritingDebugWindow *)v5 rootViewController];
    v12 = [v11 view];
    v13 = [v12 layer];
    [v13 setCornerRadius:8.0];

    v14 = [(ICHandwritingDebugWindow *)v5 rootViewController];
    v15 = [v14 view];
    v16 = [v15 layer];
    [v16 setMasksToBounds:1];

    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 48.0, 48.0}];
    [(ICHandwritingDebugWindow *)v5 setResizeTriangle:v17];

    CGAffineTransformMakeRotation(&v36, 0.785398163);
    v18 = [(ICHandwritingDebugWindow *)v5 resizeTriangle];
    v35 = v36;
    [v18 setTransform:&v35];

    v19 = [MEMORY[0x1E69DC888] tintColor];
    v20 = [(ICHandwritingDebugWindow *)v5 resizeTriangle];
    [v20 setBackgroundColor:v19];

    v21 = [(ICHandwritingDebugWindow *)v5 resizeTriangle];
    v22 = [v21 layer];
    [v22 setZPosition:1000.0];

    v23 = [(ICHandwritingDebugWindow *)v5 rootViewController];
    v24 = [v23 view];
    v25 = [(ICHandwritingDebugWindow *)v5 resizeTriangle];
    [v24 addSubview:v25];

    v26 = [(ICHandwritingDebugWindow *)v5 layer];
    [v26 setCornerRadius:8.0];

    v27 = [(ICHandwritingDebugWindow *)v5 layer];
    LODWORD(v28) = 1050253722;
    [v27 setShadowOpacity:v28];

    v29 = [(ICHandwritingDebugWindow *)v5 layer];
    [v29 setShadowRadius:16.0];

    v30 = [(ICHandwritingDebugWindow *)v5 layer];
    [v30 setShadowOffset:{0.0, 4.0}];

    v31 = [MEMORY[0x1E69DC888] blackColor];
    v32 = [v31 CGColor];
    v33 = [(ICHandwritingDebugWindow *)v5 layer];
    [v33 setShadowColor:v32];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICHandwritingDebugWindow;
  [(ICHandwritingDebugWindow *)&v3 layoutSubviews];
  [(ICHandwritingDebugWindow *)self updateResizeTriangleFrame];
}

- (void)updateResizeTriangleFrame
{
  v11 = [(ICHandwritingDebugWindow *)self rootViewController];
  v3 = [v11 view];
  [v3 frame];
  v5 = v4;
  v6 = [(ICHandwritingDebugWindow *)self rootViewController];
  v7 = [v6 view];
  [v7 frame];
  v9 = v8;
  v10 = [(ICHandwritingDebugWindow *)self resizeTriangle];
  [v10 setCenter:{v5, v9}];
}

- (ICHandwritingDebugDelegate)delegate
{
  v2 = [(ICHandwritingDebugWindow *)self handwritingDebugViewController];
  v3 = [v2 delegate];

  return v3;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v17.receiver = self;
  v17.super_class = ICHandwritingDebugWindow;
  v6 = a3;
  [(ICHandwritingDebugWindow *)&v17 touchesBegan:v6 withEvent:a4];
  v7 = [v6 anyObject];

  v8 = [v7 view];
  v9 = [(ICHandwritingDebugWindow *)self navigationController];
  v10 = [v9 navigationBar];
  v11 = [v8 isDescendantOfView:v10];

  if (v11)
  {
    [(ICHandwritingDebugWindow *)self setDraggingWindow:1];
  }

  else
  {
    v12 = [v7 view];
    v13 = [(ICHandwritingDebugWindow *)self resizeTriangle];
    v14 = [v12 isDescendantOfView:v13];

    if (v14)
    {
      [(ICHandwritingDebugWindow *)self setResizingWindow:1];
    }
  }

  v15 = [(ICHandwritingDebugWindow *)self navigationController];
  v16 = [v15 navigationBar];
  [v7 locationInView:v16];
  [(ICHandwritingDebugWindow *)self setInitialTouchLocation:?];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v28.receiver = self;
  v28.super_class = ICHandwritingDebugWindow;
  v6 = a3;
  [(ICHandwritingDebugWindow *)&v28 touchesMoved:v6 withEvent:a4];
  v7 = [(ICHandwritingDebugWindow *)self navigationController:v28.receiver];
  v8 = [v7 navigationBar];

  v9 = [v6 anyObject];

  [v9 locationInView:v8];
  v11 = v10;
  v13 = v12;

  [(ICHandwritingDebugWindow *)self initialTouchLocation];
  v15 = v11 - v14;
  [(ICHandwritingDebugWindow *)self initialTouchLocation];
  v17 = v13 - v16;
  if ([(ICHandwritingDebugWindow *)self isDraggingWindow])
  {
    [(ICHandwritingDebugWindow *)self center];
    [(ICHandwritingDebugWindow *)self setCenter:v15 + v18, v17 + v19];
  }

  else if ([(ICHandwritingDebugWindow *)self isResizingWindow])
  {
    [(ICHandwritingDebugWindow *)self frame];
    v21 = v20;
    v23 = v22;
    v25 = v15 + v24;
    v27 = v17 + v26;
    [(ICHandwritingDebugWindow *)self setInitialTouchLocation:v11, v13];
    [(ICHandwritingDebugWindow *)self setFrame:v21, v23, v25, v27];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = ICHandwritingDebugWindow;
  [(ICHandwritingDebugWindow *)&v6 touchesEnded:a3 withEvent:a4];
  [(ICHandwritingDebugWindow *)self setDraggingWindow:0];
  [(ICHandwritingDebugWindow *)self setResizingWindow:0];
  v5 = objc_opt_class();
  [(ICHandwritingDebugWindow *)self frame];
  [v5 savePreferredFrame:?];
}

- (void)refresh
{
  v2 = [(ICHandwritingDebugWindow *)self handwritingDebugViewController];
  [v2 refresh];
}

+ (CGRect)preferredFrame
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"HandwritingWindowWidth"];
  v4 = v3;
  v5 = &unk_1F4FC3F18;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [v7 objectForKey:@"HandwritingWindowHeight"];
  v9 = v8;
  v10 = &unk_1F4FC3F30;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [v12 objectForKey:@"HandwritingWindowX"];

  if (!v13)
  {
    v14 = MEMORY[0x1E696AD98];
    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 bounds];
    v17 = v16;
    [v6 doubleValue];
    v13 = [v14 numberWithDouble:v17 - v18 + -24.0];
  }

  v19 = [MEMORY[0x1E695E000] standardUserDefaults];
  v20 = [v19 objectForKey:@"HandwritingWindowY"];

  if (!v20)
  {
    v21 = MEMORY[0x1E696AD98];
    v22 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v22 bounds];
    v24 = v23;
    [v11 doubleValue];
    v20 = [v21 numberWithDouble:v24 - v25 + -44.0];
  }

  [v13 doubleValue];
  v27 = v26;
  [v20 doubleValue];
  v29 = v28;
  [v6 doubleValue];
  v31 = v30;
  [v11 doubleValue];
  v33 = v32;

  v34 = v27;
  v35 = v29;
  v36 = v31;
  v37 = v33;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

+ (void)savePreferredFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v7 setDouble:@"HandwritingWindowX" forKey:x];

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v8 setDouble:@"HandwritingWindowY" forKey:y];

  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v9 setDouble:@"HandwritingWindowWidth" forKey:width];

  v10 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v10 setDouble:@"HandwritingWindowHeight" forKey:height];
}

- (CGPoint)initialTouchLocation
{
  x = self->_initialTouchLocation.x;
  y = self->_initialTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
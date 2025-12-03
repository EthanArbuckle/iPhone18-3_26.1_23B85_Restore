@interface ICHandwritingDebugWindow
+ (CGRect)preferredFrame;
+ (void)savePreferredFrame:(CGRect)frame;
- (CGPoint)initialTouchLocation;
- (ICHandwritingDebugDelegate)delegate;
- (ICHandwritingDebugWindow)initWithDelegate:(id)delegate;
- (void)layoutSubviews;
- (void)refresh;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateResizeTriangleFrame;
@end

@implementation ICHandwritingDebugWindow

- (ICHandwritingDebugWindow)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  [objc_opt_class() preferredFrame];
  v37.receiver = self;
  v37.super_class = ICHandwritingDebugWindow;
  v5 = [(ICHandwritingDebugWindow *)&v37 initWithFrame:?];
  if (v5)
  {
    v6 = [[ICHandwritingDebugViewController alloc] initWithDelegate:delegateCopy];
    handwritingDebugViewController = v5->_handwritingDebugViewController;
    v5->_handwritingDebugViewController = v6;

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    view = [(ICHandwritingDebugViewController *)v5->_handwritingDebugViewController view];
    [view setBackgroundColor:systemBackgroundColor];

    v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5->_handwritingDebugViewController];
    [(ICHandwritingDebugWindow *)v5 setRootViewController:v10];
    rootViewController = [(ICHandwritingDebugWindow *)v5 rootViewController];
    view2 = [rootViewController view];
    layer = [view2 layer];
    [layer setCornerRadius:8.0];

    rootViewController2 = [(ICHandwritingDebugWindow *)v5 rootViewController];
    view3 = [rootViewController2 view];
    layer2 = [view3 layer];
    [layer2 setMasksToBounds:1];

    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 48.0, 48.0}];
    [(ICHandwritingDebugWindow *)v5 setResizeTriangle:v17];

    CGAffineTransformMakeRotation(&v36, 0.785398163);
    resizeTriangle = [(ICHandwritingDebugWindow *)v5 resizeTriangle];
    v35 = v36;
    [resizeTriangle setTransform:&v35];

    tintColor = [MEMORY[0x1E69DC888] tintColor];
    resizeTriangle2 = [(ICHandwritingDebugWindow *)v5 resizeTriangle];
    [resizeTriangle2 setBackgroundColor:tintColor];

    resizeTriangle3 = [(ICHandwritingDebugWindow *)v5 resizeTriangle];
    layer3 = [resizeTriangle3 layer];
    [layer3 setZPosition:1000.0];

    rootViewController3 = [(ICHandwritingDebugWindow *)v5 rootViewController];
    view4 = [rootViewController3 view];
    resizeTriangle4 = [(ICHandwritingDebugWindow *)v5 resizeTriangle];
    [view4 addSubview:resizeTriangle4];

    layer4 = [(ICHandwritingDebugWindow *)v5 layer];
    [layer4 setCornerRadius:8.0];

    layer5 = [(ICHandwritingDebugWindow *)v5 layer];
    LODWORD(v28) = 1050253722;
    [layer5 setShadowOpacity:v28];

    layer6 = [(ICHandwritingDebugWindow *)v5 layer];
    [layer6 setShadowRadius:16.0];

    layer7 = [(ICHandwritingDebugWindow *)v5 layer];
    [layer7 setShadowOffset:{0.0, 4.0}];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    layer8 = [(ICHandwritingDebugWindow *)v5 layer];
    [layer8 setShadowColor:cGColor];
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
  rootViewController = [(ICHandwritingDebugWindow *)self rootViewController];
  view = [rootViewController view];
  [view frame];
  v5 = v4;
  rootViewController2 = [(ICHandwritingDebugWindow *)self rootViewController];
  view2 = [rootViewController2 view];
  [view2 frame];
  v9 = v8;
  resizeTriangle = [(ICHandwritingDebugWindow *)self resizeTriangle];
  [resizeTriangle setCenter:{v5, v9}];
}

- (ICHandwritingDebugDelegate)delegate
{
  handwritingDebugViewController = [(ICHandwritingDebugWindow *)self handwritingDebugViewController];
  delegate = [handwritingDebugViewController delegate];

  return delegate;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v17.receiver = self;
  v17.super_class = ICHandwritingDebugWindow;
  beganCopy = began;
  [(ICHandwritingDebugWindow *)&v17 touchesBegan:beganCopy withEvent:event];
  anyObject = [beganCopy anyObject];

  view = [anyObject view];
  navigationController = [(ICHandwritingDebugWindow *)self navigationController];
  navigationBar = [navigationController navigationBar];
  v11 = [view isDescendantOfView:navigationBar];

  if (v11)
  {
    [(ICHandwritingDebugWindow *)self setDraggingWindow:1];
  }

  else
  {
    view2 = [anyObject view];
    resizeTriangle = [(ICHandwritingDebugWindow *)self resizeTriangle];
    v14 = [view2 isDescendantOfView:resizeTriangle];

    if (v14)
    {
      [(ICHandwritingDebugWindow *)self setResizingWindow:1];
    }
  }

  navigationController2 = [(ICHandwritingDebugWindow *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [anyObject locationInView:navigationBar2];
  [(ICHandwritingDebugWindow *)self setInitialTouchLocation:?];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v28.receiver = self;
  v28.super_class = ICHandwritingDebugWindow;
  movedCopy = moved;
  [(ICHandwritingDebugWindow *)&v28 touchesMoved:movedCopy withEvent:event];
  v7 = [(ICHandwritingDebugWindow *)self navigationController:v28.receiver];
  navigationBar = [v7 navigationBar];

  anyObject = [movedCopy anyObject];

  [anyObject locationInView:navigationBar];
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = ICHandwritingDebugWindow;
  [(ICHandwritingDebugWindow *)&v6 touchesEnded:ended withEvent:event];
  [(ICHandwritingDebugWindow *)self setDraggingWindow:0];
  [(ICHandwritingDebugWindow *)self setResizingWindow:0];
  v5 = objc_opt_class();
  [(ICHandwritingDebugWindow *)self frame];
  [v5 savePreferredFrame:?];
}

- (void)refresh
{
  handwritingDebugViewController = [(ICHandwritingDebugWindow *)self handwritingDebugViewController];
  [handwritingDebugViewController refresh];
}

+ (CGRect)preferredFrame
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"HandwritingWindowWidth"];
  v4 = v3;
  v5 = &unk_1F4FC3F18;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [standardUserDefaults2 objectForKey:@"HandwritingWindowHeight"];
  v9 = v8;
  v10 = &unk_1F4FC3F30;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [standardUserDefaults3 objectForKey:@"HandwritingWindowX"];

  if (!v13)
  {
    v14 = MEMORY[0x1E696AD98];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v17 = v16;
    [v6 doubleValue];
    v13 = [v14 numberWithDouble:v17 - v18 + -24.0];
  }

  standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v20 = [standardUserDefaults4 objectForKey:@"HandwritingWindowY"];

  if (!v20)
  {
    v21 = MEMORY[0x1E696AD98];
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 bounds];
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

+ (void)savePreferredFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setDouble:@"HandwritingWindowX" forKey:x];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 setDouble:@"HandwritingWindowY" forKey:y];

  standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults3 setDouble:@"HandwritingWindowWidth" forKey:width];

  standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults4 setDouble:@"HandwritingWindowHeight" forKey:height];
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
@interface DBHelloView
- (DBHelloView)initWithFrame:(CGRect)frame;
- (void)_animateCursiveForTimePassed;
- (void)_completeAsFinished:(BOOL)finished;
- (void)_createDisplayLink;
- (void)_onDisplayLink:(id)link;
- (void)_removeDisplayLink;
- (void)startAnimatingWithCompletion:(id)completion;
- (void)stopAnimating;
- (void)updateStrokeColor;
@end

@implementation DBHelloView

- (DBHelloView)initWithFrame:(CGRect)frame
{
  v25[4] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = DBHelloView;
  v3 = [(DBHelloView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v4 URLForResource:@"CursiveHello" withExtension:@"plist"];

    v5 = [[DBCursiveTextView alloc] initWithTextURL:v22 pointSize:64.0];
    [(DBCursiveTextView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBHelloView *)v3 addSubview:v5];
    centerXAnchor = [(DBCursiveTextView *)v5 centerXAnchor];
    centerXAnchor2 = [(DBHelloView *)v3 centerXAnchor];
    v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v25[0] = v19;
    centerYAnchor = [(DBCursiveTextView *)v5 centerYAnchor];
    centerYAnchor2 = [(DBHelloView *)v3 centerYAnchor];
    v6 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v25[1] = v6;
    widthAnchor = [(DBCursiveTextView *)v5 widthAnchor];
    widthAnchor2 = [(DBHelloView *)v3 widthAnchor];
    v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v25[2] = v9;
    heightAnchor = [(DBCursiveTextView *)v5 heightAnchor];
    heightAnchor2 = [(DBHelloView *)v3 heightAnchor];
    v12 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v25[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    [(DBHelloView *)v3 addConstraints:v13];

    objc_storeStrong(&v3->_cursiveTextView, v5);
    v24 = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v15 = [(DBHelloView *)v3 registerForTraitChanges:v14 withAction:sel_updateStrokeColor];
  }

  return v3;
}

- (void)startAnimatingWithCompletion:(id)completion
{
  [(DBHelloView *)self setCurrentCompletion:completion];
  cursiveTextView = [(DBHelloView *)self cursiveTextView];
  [cursiveTextView duration];
  [(DBHelloView *)self setDesiredDuration:?];

  cursiveTextView2 = [(DBHelloView *)self cursiveTextView];
  [cursiveTextView2 setTime:0.0];

  cursiveTextView3 = [(DBHelloView *)self cursiveTextView];
  [cursiveTextView3 setAlpha:1.0];

  [(DBHelloView *)self updateStrokeColor];
  [(DBHelloView *)self _createDisplayLink];
  Current = CFAbsoluteTimeGetCurrent();

  [(DBHelloView *)self setStartTime:Current];
}

- (void)stopAnimating
{
  [(DBHelloView *)self _removeDisplayLink];

  [(DBHelloView *)self _completeAsFinished:0];
}

- (void)_completeAsFinished:(BOOL)finished
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__DBHelloView__completeAsFinished___block_invoke;
  v5[3] = &unk_278F01580;
  v5[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__DBHelloView__completeAsFinished___block_invoke_2;
  v3[3] = &unk_278F038B8;
  v3[4] = self;
  finishedCopy = finished;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v3 completion:0.25];
}

void __35__DBHelloView__completeAsFinished___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cursiveTextView];
  [v1 setAlpha:0.0];
}

void __35__DBHelloView__completeAsFinished___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentCompletion];
  if (v2)
  {
    v2[2](v2, *(a1 + 40));
  }

  [*(a1 + 32) setCurrentCompletion:0];
}

- (void)updateStrokeColor
{
  traitCollection = [(DBHelloView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v5 = ;

  cursiveTextView = [(DBHelloView *)self cursiveTextView];
  [cursiveTextView setFillColor:v5];
}

- (void)_createDisplayLink
{
  displayLink = [(DBHelloView *)self displayLink];

  if (displayLink)
  {
    [(DBHelloView *)self _removeDisplayLink];
  }

  window = [(DBHelloView *)self window];
  screen = [window screen];

  v5 = [screen displayLinkWithTarget:self selector:sel__onDisplayLink_];
  [(DBHelloView *)self setDisplayLink:v5];

  displayLink2 = [(DBHelloView *)self displayLink];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [displayLink2 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
}

- (void)_removeDisplayLink
{
  displayLink = [(DBHelloView *)self displayLink];
  [displayLink invalidate];

  [(DBHelloView *)self setDisplayLink:0];
}

- (void)_onDisplayLink:(id)link
{
  linkCopy = link;
  displayLink = [(DBHelloView *)self displayLink];

  if (displayLink == linkCopy)
  {

    [(DBHelloView *)self _animateCursiveForTimePassed];
  }
}

- (void)_animateCursiveForTimePassed
{
  Current = CFAbsoluteTimeGetCurrent();
  [(DBHelloView *)self startTime];
  v5 = Current - v4;
  cursiveTextView = [(DBHelloView *)self cursiveTextView];
  *&v7 = v5;
  [cursiveTextView setTime:v7];

  [(DBHelloView *)self desiredDuration];
  if (BSFloatGreaterThanFloat())
  {
    [(DBHelloView *)self _removeDisplayLink];

    [(DBHelloView *)self _completeAsFinished:1];
  }
}

@end
@interface SidebarContentDimmingView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (SidebarContentDimmingView)initWithFrame:(CGRect)a3 dimmedContentFrame:(CGRect)a4;
- (SidebarContentDimmingViewDelegate)delegate;
- (void)_dismissRecognized:(id)a3;
- (void)setTransparent:(BOOL)a3;
@end

@implementation SidebarContentDimmingView

- (SidebarContentDimmingView)initWithFrame:(CGRect)a3 dimmedContentFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17.receiver = self;
  v17.super_class = SidebarContentDimmingView;
  v8 = [(SidebarContentDimmingView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    dimmingView = v8->_dimmingView;
    v8->_dimmingView = v9;

    v11 = v8->_dimmingView;
    v12 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v11 setBackgroundColor:v12];

    [(SidebarContentDimmingView *)v8 addSubview:v8->_dimmingView];
    v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel__dismissRecognized_];
    dismissRecognizer = v8->_dismissRecognizer;
    v8->_dismissRecognizer = v13;

    [(UITapGestureRecognizer *)v8->_dismissRecognizer setDelegate:v8];
    [(SidebarContentDimmingView *)v8 addGestureRecognizer:v8->_dismissRecognizer];
    [(SidebarContentDimmingView *)v8 setAccessibilityIdentifier:@"sidebarContentDimmingView"];
    v15 = v8;
  }

  return v8;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (([a4 type] | 2) != 0xB || (-[UIView bounds](self->_dimmingView, "bounds"), v8 = v7, v10 = v9, v12 = v11, v14 = v13, -[SidebarContentDimmingView convertPoint:toView:](self, "convertPoint:toView:", self->_dimmingView, x, y), v29.x = v15, v29.y = v16, v31.origin.x = v8, v31.origin.y = v10, v31.size.width = v12, v31.size.height = v14, v17 = CGRectContainsPoint(v31, v29)))
  {
    [(UIView *)self->_passthroughView bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(SidebarContentDimmingView *)self convertPoint:self->_passthroughView toView:x, y];
    v30.x = v26;
    v30.y = v27;
    v32.origin.x = v19;
    v32.origin.y = v21;
    v32.size.width = v23;
    v32.size.height = v25;
    LOBYTE(v17) = !CGRectContainsPoint(v32, v30);
  }

  return v17;
}

- (void)setTransparent:(BOOL)a3
{
  dimmingView = self->_dimmingView;
  v4 = 0.5;
  if (a3)
  {
    v4 = 0.0;
  }

  [(UIView *)dimmingView setAlpha:v4];
}

- (void)_dismissRecognized:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sidebarDimmingViewDismiss:self];
}

- (SidebarContentDimmingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
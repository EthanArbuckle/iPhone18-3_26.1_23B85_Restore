@interface CSBackgroundContentView
- (CSBackgroundContentView)initWithPresentationView:(id)view;
- (void)layoutSubviews;
@end

@implementation CSBackgroundContentView

- (CSBackgroundContentView)initWithPresentationView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = CSBackgroundContentView;
  v6 = [(CSBackgroundContentView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentationView, view);
    [(CSBackgroundContentView *)v7 addSubview:v7->_presentationView];
  }

  return v7;
}

- (void)layoutSubviews
{
  presentationView = self->_presentationView;
  [(CSBackgroundContentView *)self bounds];

  [(UIScenePresentation *)presentationView setFrame:?];
}

@end
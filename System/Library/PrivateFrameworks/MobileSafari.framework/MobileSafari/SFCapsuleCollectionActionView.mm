@interface SFCapsuleCollectionActionView
- (SFCapsuleCollectionActionView)initWithFrame:(CGRect)frame;
- (void)setAction:(id)action;
@end

@implementation SFCapsuleCollectionActionView

- (SFCapsuleCollectionActionView)initWithFrame:(CGRect)frame
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = SFCapsuleCollectionActionView;
  v3 = [(SFCapsuleCollectionActionView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFCapsuleCollectionActionView *)v3 addSubview:v3->_imageView];
    v6 = MEMORY[0x1E696ACD8];
    centerYAnchor = [(UIImageView *)v3->_imageView centerYAnchor];
    centerYAnchor2 = [(SFCapsuleCollectionActionView *)v3 centerYAnchor];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v17[0] = v9;
    centerXAnchor = [(UIImageView *)v3->_imageView centerXAnchor];
    centerXAnchor2 = [(SFCapsuleCollectionActionView *)v3 centerXAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    [v6 activateConstraints:v13];

    [(SFCapsuleCollectionActionView *)v3 setAccessibilityIdentifier:@"CapsuleCollectionActionView"];
    v14 = v3;
  }

  return v3;
}

- (void)setAction:(id)action
{
  actionCopy = action;
  if (self->_action != actionCopy)
  {
    v7 = actionCopy;
    objc_storeStrong(&self->_action, action);
    image = [(UIAction *)v7 image];
    [(UIImageView *)self->_imageView setImage:image];

    actionCopy = v7;
  }
}

@end
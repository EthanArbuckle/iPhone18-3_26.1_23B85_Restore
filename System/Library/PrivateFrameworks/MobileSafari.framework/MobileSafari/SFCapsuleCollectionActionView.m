@interface SFCapsuleCollectionActionView
- (SFCapsuleCollectionActionView)initWithFrame:(CGRect)a3;
- (void)setAction:(id)a3;
@end

@implementation SFCapsuleCollectionActionView

- (SFCapsuleCollectionActionView)initWithFrame:(CGRect)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = SFCapsuleCollectionActionView;
  v3 = [(SFCapsuleCollectionActionView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFCapsuleCollectionActionView *)v3 addSubview:v3->_imageView];
    v6 = MEMORY[0x1E696ACD8];
    v7 = [(UIImageView *)v3->_imageView centerYAnchor];
    v8 = [(SFCapsuleCollectionActionView *)v3 centerYAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v17[0] = v9;
    v10 = [(UIImageView *)v3->_imageView centerXAnchor];
    v11 = [(SFCapsuleCollectionActionView *)v3 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    [v6 activateConstraints:v13];

    [(SFCapsuleCollectionActionView *)v3 setAccessibilityIdentifier:@"CapsuleCollectionActionView"];
    v14 = v3;
  }

  return v3;
}

- (void)setAction:(id)a3
{
  v5 = a3;
  if (self->_action != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_action, a3);
    v6 = [(UIAction *)v7 image];
    [(UIImageView *)self->_imageView setImage:v6];

    v5 = v7;
  }
}

@end
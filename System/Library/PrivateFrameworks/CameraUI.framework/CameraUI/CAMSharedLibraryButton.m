@interface CAMSharedLibraryButton
- (CAMSharedLibraryButton)initWithLayoutStyle:(int64_t)a3;
- (id)imageForAccessibilityHUD;
- (void)_updateImageForCurrentState;
- (void)setSharedLibraryMode:(int64_t)a3;
@end

@implementation CAMSharedLibraryButton

- (CAMSharedLibraryButton)initWithLayoutStyle:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = CAMSharedLibraryButton;
  v3 = [(CAMExpandableMenuButton *)&v9 initWithLayoutStyle:a3];
  v4 = v3;
  if (v3)
  {
    v3->_sharedLibraryMode = 0;
    [(CAMExpandableMenuButton *)v3 setHighlighted:1 forIndex:1];
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
    glyphView = v4->__glyphView;
    v4->__glyphView = v5;

    [(CAMSharedLibraryButton *)v4 _updateImageForCurrentState];
    v7 = v4;
  }

  return v4;
}

- (void)setSharedLibraryMode:(int64_t)a3
{
  if (self->_sharedLibraryMode != a3)
  {
    self->_sharedLibraryMode = a3;
    [(CAMExpandableMenuButton *)self setSelectedIndex:[(CAMSharedLibraryButton *)self _indexForSharedLibraryMode:?]];

    [(CAMSharedLibraryButton *)self _updateImageForCurrentState];
  }
}

- (void)_updateImageForCurrentState
{
  v3 = [(CAMSharedLibraryButton *)self _indexForSharedLibraryMode:[(CAMSharedLibraryButton *)self sharedLibraryMode]];
  v4 = @"CAMSharedLibraryButton";
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"CAMSharedLibraryButtonOff";
  }

  v6 = MEMORY[0x1E69DCAB8];
  v10 = CAMCameraUIFrameworkBundle();
  v7 = [v6 imageNamed:v5 inBundle:v10];
  v8 = [v7 imageWithRenderingMode:2];
  v9 = [(CAMSharedLibraryButton *)self _glyphView];
  [v9 setImage:v8];
}

- (id)imageForAccessibilityHUD
{
  v2 = [(CAMSharedLibraryButton *)self _indexForSharedLibraryMode:[(CAMSharedLibraryButton *)self sharedLibraryMode]];
  v3 = @"CAMSharedLibraryButton-AXHUD";
  if (v2 != 1)
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"CAMSharedLibraryButtonOff-AXHUD";
  }

  v5 = MEMORY[0x1E69DCAB8];
  v6 = CAMCameraUIFrameworkBundle();
  v7 = [v5 imageNamed:v4 inBundle:v6];
  v8 = [v7 imageWithRenderingMode:2];

  return v8;
}

@end
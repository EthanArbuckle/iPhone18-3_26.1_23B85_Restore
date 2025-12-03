@interface SUUIStorePagePinnedBackdropDecorationView
- (SUUIStorePagePinnedBackdropDecorationView)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation SUUIStorePagePinnedBackdropDecorationView

- (SUUIStorePagePinnedBackdropDecorationView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = SUUIStorePagePinnedBackdropDecorationView;
  v3 = [(SUUIStorePagePinnedBackdropDecorationView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    backdropView = v3->_backdropView;
    v3->_backdropView = v4;

    [(_UIBackdropView *)v3->_backdropView setAutoresizingMask:18];
    v6 = v3->_backdropView;
    [(SUUIStorePagePinnedBackdropDecorationView *)v3 bounds];
    [(_UIBackdropView *)v6 setFrame:?];
    [(SUUIStorePagePinnedBackdropDecorationView *)v3 addSubview:v3->_backdropView];
    v7 = [MEMORY[0x277D75DF0] settingsForStyle:{-[_UIBackdropView style](v3->_backdropView, "style")}];
    backdropStyleDefaultSettings = v3->_backdropStyleDefaultSettings;
    v3->_backdropStyleDefaultSettings = v7;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIStorePagePinnedBackdropDecorationView *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy transitionProgress];
  v6 = v5;
  hidesBackdropView = [attributesCopy hidesBackdropView];
  if (v6 <= 0.00000011920929)
  {
    v8 = 1;
  }

  else
  {
    v8 = hidesBackdropView;
  }

  inputSettings = [(_UIBackdropView *)self->_backdropView inputSettings];
  backdropStyle = [attributesCopy backdropStyle];
  if ((v8 & 1) == 0)
  {
    v11 = backdropStyle;
    if ([(_UIBackdropView *)self->_backdropView style]!= backdropStyle)
    {
      [(_UIBackdropView *)self->_backdropView transitionToPrivateStyle:v11];
      v12 = [MEMORY[0x277D75DF0] settingsForStyle:{-[_UIBackdropView style](self->_backdropView, "style")}];
      backdropStyleDefaultSettings = self->_backdropStyleDefaultSettings;
      self->_backdropStyleDefaultSettings = v12;
    }
  }

  if (v8 != [(_UIBackdropView *)self->_backdropView isHidden])
  {
    [(_UIBackdropView *)self->_backdropView setHidden:v8];
    if (!v8 || ([attributesCopy backdropColor], (clearColor = objc_claimAutoreleasedReturnValue()) == 0))
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
    }

    backgroundView = self->_backgroundView;
    if (!backgroundView)
    {
      v16 = objc_alloc(MEMORY[0x277D75D18]);
      [(SUUIStorePagePinnedBackdropDecorationView *)self bounds];
      v17 = [v16 initWithFrame:?];
      v18 = self->_backgroundView;
      self->_backgroundView = v17;

      [(UIView *)self->_backgroundView setAutoresizingMask:18];
      [(SUUIStorePagePinnedBackdropDecorationView *)self insertSubview:self->_backgroundView atIndex:0];
      backgroundView = self->_backgroundView;
    }

    [(UIView *)backgroundView setHidden:v8 ^ 1];
    [(UIView *)self->_backgroundView setBackgroundColor:clearColor];
  }

  [(UIView *)self->_backgroundView setAlpha:v6];
  groupName = [(_UIBackdropView *)self->_backdropView groupName];
  v20 = 1.0 - v6;
  if (1.0 - v6 <= 0.00000011920929)
  {
    backdropGroupName = [attributesCopy backdropGroupName];
    v23 = backdropGroupName;
    v24 = @"_SUUIStorePagePinnedBackdropGroupName";
    if (backdropGroupName)
    {
      v24 = backdropGroupName;
    }

    v21 = v24;
  }

  else
  {
    v21 = 0;
  }

  if (groupName != v21 && ([(__CFString *)groupName isEqualToString:v21, v20]& 1) == 0)
  {
    [(_UIBackdropView *)self->_backdropView setGroupName:v21];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings blurRadius];
  v26 = v25;
  v27 = v6 * v25;
  [inputSettings blurRadius];
  v29 = vabdd_f64(v27, v28);
  if (v29 >= 1.0 || (vabdd_f64(v26, v27) <= 1.0 ? (v30 = v29 <= 0.00000011920929) : (v30 = 1), !v30))
  {
    [inputSettings setBlurRadius:v27];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings saturationDeltaFactor];
  v32 = v6 * v31;
  [inputSettings saturationDeltaFactor];
  if (vabdd_f64(v32, v33) > 0.00000011920929)
  {
    [inputSettings setSaturationDeltaFactor:v32];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings darkeningTintAlpha];
  v35 = v6 * v34;
  [inputSettings darkeningTintAlpha];
  if (vabdd_f64(v35, v36) > 0.00000011920929)
  {
    [inputSettings setDarkeningTintAlpha:v35];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings grayscaleTintAlpha];
  v38 = v6 * v37;
  [inputSettings grayscaleTintAlpha];
  if (vabdd_f64(v38, v39) > 0.00000011920929)
  {
    [inputSettings setGrayscaleTintAlpha:v38];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings colorBurnTintAlpha];
  v41 = v6 * v40;
  [inputSettings colorBurnTintAlpha];
  if (vabdd_f64(v41, v42) > 0.00000011920929)
  {
    [inputSettings setColorBurnTintAlpha:v41];
  }

  [(_UIBackdropViewSettings *)self->_backdropStyleDefaultSettings colorTintAlpha];
  v44 = v6 * v43;
  [inputSettings colorTintAlpha];
  if (vabdd_f64(v44, v45) > 0.00000011920929)
  {
    [inputSettings setColorTintAlpha:v44];
  }

  v46.receiver = self;
  v46.super_class = SUUIStorePagePinnedBackdropDecorationView;
  [(SUUIStorePagePinnedBackdropDecorationView *)&v46 applyLayoutAttributes:attributesCopy];
}

@end
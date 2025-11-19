@interface SUUIDefaultSettingDescriptionView
+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5;
+ (UIEdgeInsets)_paddingForStyle:(id)a3;
+ (void)requestLayoutForSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUIDefaultSettingDescriptionView

+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a5;
  v8 = [a3 viewElement];
  v9 = [v8 lockupViewType];
  v10 = off_2798F4338;
  if (v9 != 8)
  {
    v10 = off_2798F3EC0;
  }

  v11 = [(__objc2_class *)*v10 prefetchResourcesForViewElement:v8 reason:a4 context:v7];

  return v11;
}

+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a5;
  v10 = [a3 viewElement];
  v8 = [v10 lockupViewType];
  v9 = off_2798F4338;
  if (v8 != 8)
  {
    v9 = off_2798F3EC0;
  }

  [(__objc2_class *)*v9 requestLayoutForViewElement:v10 width:v7 context:a4];
}

+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = [a4 viewElement];
  v10 = [v9 lockupViewType];
  v11 = off_2798F4338;
  if (v10 != 8)
  {
    v11 = off_2798F3EC0;
  }

  [(__objc2_class *)*v11 sizeThatFitsWidth:v9 viewElement:v8 context:a3];
  v13 = v12;
  v15 = v14;

  v16 = [v9 style];
  [a1 _paddingForStyle:v16];
  v19 = v15 + v17 + v18;

  v20 = v13;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = [a3 viewElement];
  viewReuseView = self->_viewReuseView;
  if (!viewReuseView)
  {
    v11 = objc_alloc_init(SUUIViewReuseView);
    v12 = self->_viewReuseView;
    self->_viewReuseView = v11;

    [(SUUIDefaultSettingDescriptionView *)self addSubview:self->_viewReuseView];
    viewReuseView = self->_viewReuseView;
  }

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __80__SUUIDefaultSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke;
  v25 = &unk_2798F5EF0;
  v26 = v9;
  v27 = self;
  v29 = a4;
  v28 = v8;
  v13 = v8;
  v14 = v9;
  [(SUUIViewReuseView *)viewReuseView modifyUsingBlock:&v22];
  v15 = [v14 style];
  [objc_opt_class() _paddingForStyle:v15];
  self->_padding.top = v16;
  self->_padding.left = v17;
  self->_padding.bottom = v18;
  self->_padding.right = v19;
  v20 = [MEMORY[0x277D75348] clearColor];
  [(SUUIDefaultSettingDescriptionView *)self setBackgroundColor:v20];

  v21 = [v14 firstChildForElementType:29];
  self->_hasDisclosureChevron = v21 != 0;
}

void __80__SUUIDefaultSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = a2;
  v5 = [v3 lockupViewType];
  v6 = *(a1 + 4);
  v7 = a1[7];
  v8 = *(a1 + 6);
  if (v5 == 8)
  {
    [v4 addTabularLockupWithElement:v6 width:v8 context:v7];
  }

  else
  {
    [v4 addHorizontalLockupWithElement:v6 width:v8 context:v7];
  }
  v9 = ;

  v10 = *(a1 + 5);
  v11 = *(v10 + 480);
  *(v10 + 480) = v9;
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(UIView *)self->_viewElementView conformsToProtocol:&unk_286BDBC58])
  {
    v11 = [(UIView *)self->_viewElementView setImage:v8 forArtworkRequest:v9 context:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = SUUIDefaultSettingDescriptionView;
  [(SUUIDefaultSettingDescriptionView *)&v19 layoutSubviews];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 userInterfaceLayoutDirection];

  [(SUUIDefaultSettingDescriptionView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SUUISettingDescriptionView *)self layoutMargins];
  if (v4)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if (v4)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  v17 = CGRectGetWidth(v20) - v15 - v16;
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  [(SUUIViewReuseView *)self->_viewReuseView setFrame:v15, 0.0, v17, CGRectGetHeight(v21)];
  viewElementView = self->_viewElementView;
  [(SUUIViewReuseView *)self->_viewReuseView bounds];
  [(UIView *)viewElementView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = SUUIDefaultSettingDescriptionView;
  v4 = a3;
  [(SUUIDefaultSettingDescriptionView *)&v5 setBackgroundColor:v4];
  [(UIView *)self->_viewElementView setBackgroundColor:v4, v5.receiver, v5.super_class];
}

+ (UIEdgeInsets)_paddingForStyle:(id)a3
{
  v7 = 0;
  v3 = SUUIViewElementPaddingForStyle(a3, &v7);
  if ((v7 & 1) == 0)
  {
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v5 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end
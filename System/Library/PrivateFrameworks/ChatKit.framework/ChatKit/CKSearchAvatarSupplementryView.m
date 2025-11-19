@interface CKSearchAvatarSupplementryView
+ (double)desiredZPositionForMode:(unint64_t)a3;
- (CKSearchAvatarSupplementryView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)marginInsets;
- (void)_parentPreviewDidChange:(id)a3;
- (void)_updateVisibilityIfNeeded;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContact:(id)a3;
- (void)setParentContentType:(unint64_t)a3;
@end

@implementation CKSearchAvatarSupplementryView

+ (double)desiredZPositionForMode:(unint64_t)a3
{
  if (CKIsRunningInMacCatalyst())
  {
    v4 = a3 >= 3;
  }

  else
  {
    v4 = 0;
  }

  result = 1.0;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (void)setContact:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(CKSearchAvatarSupplementryView *)self contact];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_contact, a3);
    if (v5)
    {
      v10[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = [(CKSearchAvatarSupplementryView *)self avatarView];
    [v9 setContacts:v8];

    [(CKSearchAvatarSupplementryView *)self setNeedsLayout];
  }
}

- (void)setParentContentType:(unint64_t)a3
{
  if (self->_parentContentType != a3)
  {
    self->_parentContentType = a3;
  }

  [(CKSearchAvatarSupplementryView *)self _updateVisibilityIfNeeded];
}

- (CKSearchAvatarSupplementryView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22.receiver = self;
  v22.super_class = CKSearchAvatarSupplementryView;
  v7 = [(CKSearchAvatarSupplementryView *)&v22 initWithFrame:?];
  if (v7)
  {
    v8 = [[CKAvatarView alloc] initWithFrame:x, y, width, height];
    [(CNAvatarView *)v8 setAsynchronousRendering:1];
    [(CKAvatarView *)v8 setUserInteractionEnabled:0];
    [(CNAvatarView *)v8 setShowsContactOnTap:0];
    [(CNAvatarView *)v8 setBypassActionValidation:1];
    [(CKSearchAvatarSupplementryView *)v7 setAvatarView:v8];
    [(CKSearchAvatarSupplementryView *)v7 addSubview:v8];
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [(CKSearchAvatarSupplementryView *)v7 setBackgroundColor:v9];

    v10 = [(CKSearchAvatarSupplementryView *)v7 layer];
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 searchResultAvatarSize];
    [v10 setCornerRadius:v12 * 0.5];

    v13 = [(CKSearchAvatarSupplementryView *)v7 layer];
    v14 = [MEMORY[0x1E69DC888] blackColor];
    [v13 setShadowColor:{objc_msgSend(v14, "CGColor")}];

    v15 = [(CKSearchAvatarSupplementryView *)v7 layer];
    LODWORD(v16) = 1051931443;
    [v15 setShadowOpacity:v16];

    v17 = [(CKSearchAvatarSupplementryView *)v7 layer];
    if (CKPixelWidth_once_7 != -1)
    {
      [CKSearchAvatarSupplementryView initWithFrame:];
    }

    [v17 setShadowOffset:{0.0, *&CKPixelWidth_sPixel_7}];

    v18 = [(CKSearchAvatarSupplementryView *)v7 layer];
    if (CKPixelWidth_once_7 != -1)
    {
      [CKSearchAvatarSupplementryView initWithFrame:];
    }

    [v18 setShadowRadius:*&CKPixelWidth_sPixel_7 * 4.0];

    v19 = [(CKSearchAvatarSupplementryView *)v7 layer];
    [v19 setShadowPathIsBounds:1];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v7 selector:sel__parentPreviewDidChange_ name:@"CKSearchThumbnailDidChange" object:0];
    [v20 addObserver:v7 selector:sel__parentPreviewDidChange_ name:@"CKSearchLPLinkMetadataDidChange" object:0];
  }

  return v7;
}

- (void)_parentPreviewDidChange:(id)a3
{
  v9 = a3;
  if ([(CKSearchAvatarSupplementryView *)self parentContentType]!= 3 && [(CKSearchAvatarSupplementryView *)self parentContentType]!= 1)
  {
    v4 = [v9 object];
    v5 = [v4 identifier];
    v6 = [(CKSearchAvatarSupplementryView *)self associatedResult];
    v7 = [v6 identifier];
    v8 = [v5 isEqualToString:v7];

    if (v8)
    {
      [(CKSearchAvatarSupplementryView *)self _updateVisibilityIfNeeded];
    }
  }
}

- (void)_updateVisibilityIfNeeded
{
  if ([(CKSearchAvatarSupplementryView *)self parentContentType]== 3)
  {
    return;
  }

  if ([(CKSearchAvatarSupplementryView *)self parentContentType]== 1)
  {

    [(CKSearchAvatarSupplementryView *)self setHidden:0];
    return;
  }

  v9 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v3 = [(CKSearchAvatarSupplementryView *)self parentContentType];
  if (v3 == 2)
  {
    v4 = [(CKSearchAvatarSupplementryView *)self associatedResult];
    v5 = [v9 hasCachedLinkMetadataForQueryResult:v4];
LABEL_12:
    v7 = v5;
    goto LABEL_13;
  }

  if (v3 != 1)
  {
    if (v3)
    {
      v8 = 0;
      goto LABEL_15;
    }

    v4 = [(CKSearchAvatarSupplementryView *)self associatedResult];
    v5 = [v9 hasCachedPreviewForQueryResult:v4];
    goto LABEL_12;
  }

  v4 = [(CKSearchAvatarSupplementryView *)self associatedResult];
  v6 = [(CKSearchAvatarSupplementryView *)self traitCollection];
  v7 = [v9 hasCachedMapPreviewForQueryResult:v4 traitCollection:v6];

LABEL_13:
  v8 = v7 ^ 1u;
LABEL_15:
  [(CKSearchAvatarSupplementryView *)self setHidden:v8];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = CKSearchAvatarSupplementryView;
  [(CKSearchAvatarSupplementryView *)&v21 layoutSubviews];
  [(CKSearchAvatarSupplementryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (CKPixelWidth_once_7 != -1)
  {
    [CKSearchAvatarSupplementryView initWithFrame:];
  }

  v11 = *&CKPixelWidth_sPixel_7;
  v12 = *&CKPixelWidth_sPixel_7;
  v13 = *&CKPixelWidth_sPixel_7;
  v14 = *&CKPixelWidth_sPixel_7;
  if (CKMainScreenScale_once_53 != -1)
  {
    [CKSearchAvatarSupplementryView layoutSubviews];
  }

  v15 = v10 - (v11 + v13);
  v16 = v8 - (v12 + v14);
  v17 = *&CKMainScreenScale_sMainScreenScale_53;
  if (*&CKMainScreenScale_sMainScreenScale_53 == 0.0)
  {
    v17 = 1.0;
  }

  v18 = floor((v4 + (v8 - v16) * 0.5) * v17) / v17;
  v19 = floor((v6 + (v10 - v15) * 0.5) * v17) / v17;
  v20 = [(CKSearchAvatarSupplementryView *)self avatarView];
  [v20 setFrame:{v18, v19, v16, v15}];

  [(CKSearchAvatarSupplementryView *)self _updateVisibilityIfNeeded];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKSearchAvatarSupplementryView;
  [(CKSearchAvatarSupplementryView *)&v3 prepareForReuse];
  [(CKSearchAvatarSupplementryView *)self setAssociatedResult:0];
}

- (UIEdgeInsets)marginInsets
{
  top = self->marginInsets.top;
  left = self->marginInsets.left;
  bottom = self->marginInsets.bottom;
  right = self->marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
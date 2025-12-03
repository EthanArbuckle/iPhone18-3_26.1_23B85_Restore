@interface CKSearchAvatarSupplementryView
+ (double)desiredZPositionForMode:(unint64_t)mode;
- (CKSearchAvatarSupplementryView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)marginInsets;
- (void)_parentPreviewDidChange:(id)change;
- (void)_updateVisibilityIfNeeded;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContact:(id)contact;
- (void)setParentContentType:(unint64_t)type;
@end

@implementation CKSearchAvatarSupplementryView

+ (double)desiredZPositionForMode:(unint64_t)mode
{
  if (CKIsRunningInMacCatalyst())
  {
    v4 = mode >= 3;
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

- (void)setContact:(id)contact
{
  v10[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  contact = [(CKSearchAvatarSupplementryView *)self contact];
  v7 = [contactCopy isEqual:contact];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_contact, contact);
    if (contactCopy)
    {
      v10[0] = contactCopy;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    avatarView = [(CKSearchAvatarSupplementryView *)self avatarView];
    [avatarView setContacts:v8];

    [(CKSearchAvatarSupplementryView *)self setNeedsLayout];
  }
}

- (void)setParentContentType:(unint64_t)type
{
  if (self->_parentContentType != type)
  {
    self->_parentContentType = type;
  }

  [(CKSearchAvatarSupplementryView *)self _updateVisibilityIfNeeded];
}

- (CKSearchAvatarSupplementryView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v22.receiver = self;
  v22.super_class = CKSearchAvatarSupplementryView;
  v7 = [(CKSearchAvatarSupplementryView *)&v22 initWithFrame:?];
  if (v7)
  {
    height = [[CKAvatarView alloc] initWithFrame:x, y, width, height];
    [(CNAvatarView *)height setAsynchronousRendering:1];
    [(CKAvatarView *)height setUserInteractionEnabled:0];
    [(CNAvatarView *)height setShowsContactOnTap:0];
    [(CNAvatarView *)height setBypassActionValidation:1];
    [(CKSearchAvatarSupplementryView *)v7 setAvatarView:height];
    [(CKSearchAvatarSupplementryView *)v7 addSubview:height];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(CKSearchAvatarSupplementryView *)v7 setBackgroundColor:whiteColor];

    layer = [(CKSearchAvatarSupplementryView *)v7 layer];
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 searchResultAvatarSize];
    [layer setCornerRadius:v12 * 0.5];

    layer2 = [(CKSearchAvatarSupplementryView *)v7 layer];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [layer2 setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    layer3 = [(CKSearchAvatarSupplementryView *)v7 layer];
    LODWORD(v16) = 1051931443;
    [layer3 setShadowOpacity:v16];

    layer4 = [(CKSearchAvatarSupplementryView *)v7 layer];
    if (CKPixelWidth_once_7 != -1)
    {
      [CKSearchAvatarSupplementryView initWithFrame:];
    }

    [layer4 setShadowOffset:{0.0, *&CKPixelWidth_sPixel_7}];

    layer5 = [(CKSearchAvatarSupplementryView *)v7 layer];
    if (CKPixelWidth_once_7 != -1)
    {
      [CKSearchAvatarSupplementryView initWithFrame:];
    }

    [layer5 setShadowRadius:*&CKPixelWidth_sPixel_7 * 4.0];

    layer6 = [(CKSearchAvatarSupplementryView *)v7 layer];
    [layer6 setShadowPathIsBounds:1];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__parentPreviewDidChange_ name:@"CKSearchThumbnailDidChange" object:0];
    [defaultCenter addObserver:v7 selector:sel__parentPreviewDidChange_ name:@"CKSearchLPLinkMetadataDidChange" object:0];
  }

  return v7;
}

- (void)_parentPreviewDidChange:(id)change
{
  changeCopy = change;
  if ([(CKSearchAvatarSupplementryView *)self parentContentType]!= 3 && [(CKSearchAvatarSupplementryView *)self parentContentType]!= 1)
  {
    object = [changeCopy object];
    identifier = [object identifier];
    associatedResult = [(CKSearchAvatarSupplementryView *)self associatedResult];
    identifier2 = [associatedResult identifier];
    v8 = [identifier isEqualToString:identifier2];

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
  parentContentType = [(CKSearchAvatarSupplementryView *)self parentContentType];
  if (parentContentType == 2)
  {
    associatedResult = [(CKSearchAvatarSupplementryView *)self associatedResult];
    v5 = [v9 hasCachedLinkMetadataForQueryResult:associatedResult];
LABEL_12:
    v7 = v5;
    goto LABEL_13;
  }

  if (parentContentType != 1)
  {
    if (parentContentType)
    {
      v8 = 0;
      goto LABEL_15;
    }

    associatedResult = [(CKSearchAvatarSupplementryView *)self associatedResult];
    v5 = [v9 hasCachedPreviewForQueryResult:associatedResult];
    goto LABEL_12;
  }

  associatedResult = [(CKSearchAvatarSupplementryView *)self associatedResult];
  traitCollection = [(CKSearchAvatarSupplementryView *)self traitCollection];
  v7 = [v9 hasCachedMapPreviewForQueryResult:associatedResult traitCollection:traitCollection];

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
  avatarView = [(CKSearchAvatarSupplementryView *)self avatarView];
  [avatarView setFrame:{v18, v19, v16, v15}];

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
@interface CKPinnedConversationMediaObjectBubble
- (BOOL)isAnimojiVideo;
- (BOOL)isSticker;
- (CGSize)_imageViewSize;
- (CKPinnedConversationMediaObjectBubble)initWithMediaObjectActivityItem:(id)item;
- (UIEdgeInsets)contentViewPadding;
- (id)_previewImage;
- (int64_t)contentViewContentMode;
- (void)_updateImageViewSizeConstraints;
- (void)_updateMediaObjectPreview;
- (void)_updatePillCornerRadius;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)setActivityItem:(id)item;
- (void)setParentAvatarViewSize:(CGSize)size;
@end

@implementation CKPinnedConversationMediaObjectBubble

- (CKPinnedConversationMediaObjectBubble)initWithMediaObjectActivityItem:(id)item
{
  itemCopy = item;
  v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v6 setContentMode:2];
  [v6 setClipsToBounds:1];
  v11.receiver = self;
  v11.super_class = CKPinnedConversationMediaObjectBubble;
  v7 = [(CKPinnedConversationTailedActivityItemView *)&v11 initWithActivityItem:itemCopy contentView:v6 needsContentViewStroke:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaObjectActivityItem, item);
    objc_storeStrong(&v8->_imageView, v6);
    [(CKPinnedConversationMediaObjectBubble *)v8 _updateMediaObjectPreview];
    [(CKPinnedConversationMediaObjectBubble *)v8 _updatePillCornerRadius];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v8;
}

- (UIEdgeInsets)contentViewPadding
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_updatePillCornerRadius
{
  v5 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0 options:1];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];
  [v3 lineHeight];
  UIRoundToViewScale();
  self->_pillCornerRadius = v4;
}

- (void)setActivityItem:(id)item
{
  itemCopy = item;
  v6.receiver = self;
  v6.super_class = CKPinnedConversationMediaObjectBubble;
  [(CKPinnedConversationTailedActivityItemView *)&v6 setActivityItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_mediaObjectActivityItem, item);
    [(CKPinnedConversationMediaObjectBubble *)self _updateMediaObjectPreview];
  }
}

- (id)_previewImage
{
  mediaObject = [(CKPinnedConversationMediaObjectActivityItem *)self->_mediaObjectActivityItem mediaObject];
  v3 = [CKPinnedConversationMediaObjectActivityItem previewImageForMediaObject:mediaObject];

  return v3;
}

- (void)_updateMediaObjectPreview
{
  _previewImage = [(CKPinnedConversationMediaObjectBubble *)self _previewImage];
  [(UIImageView *)self->_imageView setImage:_previewImage];
  contentViewContentMode = [(CKPinnedConversationMediaObjectBubble *)self contentViewContentMode];
  if (contentViewContentMode)
  {
    v4 = 2 * (contentViewContentMode == 1);
  }

  else
  {
    v4 = 1;
  }

  [(UIImageView *)self->_imageView setContentMode:v4];
  [(CKPinnedConversationMediaObjectBubble *)self setNeedsLayout];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  [(CKPinnedConversationMediaObjectBubble *)self _updatePillCornerRadius];

  [(CKPinnedConversationMediaObjectBubble *)self setNeedsLayout];
}

- (void)setParentAvatarViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CKPinnedConversationTailedActivityItemView *)self parentAvatarViewSize];
  if (v7 != width || v6 != height)
  {
    v9.receiver = self;
    v9.super_class = CKPinnedConversationMediaObjectBubble;
    [(CKPinnedConversationTailedActivityItemView *)&v9 setParentAvatarViewSize:width, height];
    [(CKPinnedConversationMediaObjectBubble *)self _updateImageViewSizeConstraints];
  }
}

- (CGSize)_imageViewSize
{
  [(CKPinnedConversationTailedActivityItemView *)self parentAvatarViewSize];
  v4 = v3 * 0.55;
  v6 = v5 * 0.55;
  contentViewContentMode = [(CKPinnedConversationMediaObjectBubble *)self contentViewContentMode];
  if (contentViewContentMode == 1)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    if (!contentViewContentMode)
    {
      _previewImage = [(CKPinnedConversationMediaObjectBubble *)self _previewImage];
      [_previewImage size];
      v13 = v11 <= v12;
      v14 = v6 * (v11 / v12);
      v15 = v4 * (v12 / v11);
      if (v13)
      {
        v9 = v14;
      }

      else
      {
        v9 = v4;
      }

      if (v13)
      {
        v8 = v6;
      }

      else
      {
        v8 = v15;
      }
    }
  }

  v16 = v9;
  v17 = v8;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_updateImageViewSizeConstraints
{
  [(CKPinnedConversationMediaObjectBubble *)self _imageViewSize];
  v4 = v3;
  v6 = v5;
  imageViewWidthConstraint = self->_imageViewWidthConstraint;
  if (imageViewWidthConstraint)
  {
    [(NSLayoutConstraint *)imageViewWidthConstraint setConstant:v3];
  }

  else
  {
    imageView = [(CKPinnedConversationMediaObjectBubble *)self imageView];
    widthAnchor = [imageView widthAnchor];
    v10 = [widthAnchor constraintEqualToConstant:v4];
    v11 = self->_imageViewWidthConstraint;
    self->_imageViewWidthConstraint = v10;

    [(NSLayoutConstraint *)self->_imageViewWidthConstraint setActive:1];
  }

  imageViewHeightConstraint = self->_imageViewHeightConstraint;
  if (imageViewHeightConstraint)
  {

    [(NSLayoutConstraint *)imageViewHeightConstraint setConstant:v6];
  }

  else
  {
    imageView2 = [(CKPinnedConversationMediaObjectBubble *)self imageView];
    heightAnchor = [imageView2 heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:v6];
    v16 = self->_imageViewHeightConstraint;
    self->_imageViewHeightConstraint = v15;

    v17 = self->_imageViewHeightConstraint;

    [(NSLayoutConstraint *)v17 setActive:1];
  }
}

- (BOOL)isSticker
{
  mediaObject = [(CKPinnedConversationMediaObjectActivityItem *)self->_mediaObjectActivityItem mediaObject];
  transfer = [mediaObject transfer];
  isSticker = [transfer isSticker];

  return isSticker;
}

- (BOOL)isAnimojiVideo
{
  mediaObject = [(CKPinnedConversationMediaObjectActivityItem *)self->_mediaObjectActivityItem mediaObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isJellyfishVideo = [mediaObject isJellyfishVideo];
  }

  else
  {
    isJellyfishVideo = 0;
  }

  return isJellyfishVideo;
}

- (int64_t)contentViewContentMode
{
  if ([(CKPinnedConversationMediaObjectBubble *)self isSticker])
  {
    return 0;
  }

  else
  {
    return [(CKPinnedConversationMediaObjectBubble *)self isAnimojiVideo]^ 1;
  }
}

@end
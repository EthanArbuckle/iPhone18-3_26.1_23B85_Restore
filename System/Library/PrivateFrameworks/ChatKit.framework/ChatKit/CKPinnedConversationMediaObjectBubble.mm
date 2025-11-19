@interface CKPinnedConversationMediaObjectBubble
- (BOOL)isAnimojiVideo;
- (BOOL)isSticker;
- (CGSize)_imageViewSize;
- (CKPinnedConversationMediaObjectBubble)initWithMediaObjectActivityItem:(id)a3;
- (UIEdgeInsets)contentViewPadding;
- (id)_previewImage;
- (int64_t)contentViewContentMode;
- (void)_updateImageViewSizeConstraints;
- (void)_updateMediaObjectPreview;
- (void)_updatePillCornerRadius;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)setActivityItem:(id)a3;
- (void)setParentAvatarViewSize:(CGSize)a3;
@end

@implementation CKPinnedConversationMediaObjectBubble

- (CKPinnedConversationMediaObjectBubble)initWithMediaObjectActivityItem:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v6 setContentMode:2];
  [v6 setClipsToBounds:1];
  v11.receiver = self;
  v11.super_class = CKPinnedConversationMediaObjectBubble;
  v7 = [(CKPinnedConversationTailedActivityItemView *)&v11 initWithActivityItem:v5 contentView:v6 needsContentViewStroke:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaObjectActivityItem, a3);
    objc_storeStrong(&v8->_imageView, v6);
    [(CKPinnedConversationMediaObjectBubble *)v8 _updateMediaObjectPreview];
    [(CKPinnedConversationMediaObjectBubble *)v8 _updatePillCornerRadius];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v8 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
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

- (void)setActivityItem:(id)a3
{
  v5 = a3;
  v6.receiver = self;
  v6.super_class = CKPinnedConversationMediaObjectBubble;
  [(CKPinnedConversationTailedActivityItemView *)&v6 setActivityItem:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_mediaObjectActivityItem, a3);
    [(CKPinnedConversationMediaObjectBubble *)self _updateMediaObjectPreview];
  }
}

- (id)_previewImage
{
  v2 = [(CKPinnedConversationMediaObjectActivityItem *)self->_mediaObjectActivityItem mediaObject];
  v3 = [CKPinnedConversationMediaObjectActivityItem previewImageForMediaObject:v2];

  return v3;
}

- (void)_updateMediaObjectPreview
{
  v5 = [(CKPinnedConversationMediaObjectBubble *)self _previewImage];
  [(UIImageView *)self->_imageView setImage:v5];
  v3 = [(CKPinnedConversationMediaObjectBubble *)self contentViewContentMode];
  if (v3)
  {
    v4 = 2 * (v3 == 1);
  }

  else
  {
    v4 = 1;
  }

  [(UIImageView *)self->_imageView setContentMode:v4];
  [(CKPinnedConversationMediaObjectBubble *)self setNeedsLayout];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  [(CKPinnedConversationMediaObjectBubble *)self _updatePillCornerRadius];

  [(CKPinnedConversationMediaObjectBubble *)self setNeedsLayout];
}

- (void)setParentAvatarViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v7 = [(CKPinnedConversationMediaObjectBubble *)self contentViewContentMode];
  if (v7 == 1)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    if (!v7)
    {
      v10 = [(CKPinnedConversationMediaObjectBubble *)self _previewImage];
      [v10 size];
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
    v8 = [(CKPinnedConversationMediaObjectBubble *)self imageView];
    v9 = [v8 widthAnchor];
    v10 = [v9 constraintEqualToConstant:v4];
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
    v13 = [(CKPinnedConversationMediaObjectBubble *)self imageView];
    v14 = [v13 heightAnchor];
    v15 = [v14 constraintEqualToConstant:v6];
    v16 = self->_imageViewHeightConstraint;
    self->_imageViewHeightConstraint = v15;

    v17 = self->_imageViewHeightConstraint;

    [(NSLayoutConstraint *)v17 setActive:1];
  }
}

- (BOOL)isSticker
{
  v2 = [(CKPinnedConversationMediaObjectActivityItem *)self->_mediaObjectActivityItem mediaObject];
  v3 = [v2 transfer];
  v4 = [v3 isSticker];

  return v4;
}

- (BOOL)isAnimojiVideo
{
  v2 = [(CKPinnedConversationMediaObjectActivityItem *)self->_mediaObjectActivityItem mediaObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isJellyfishVideo];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
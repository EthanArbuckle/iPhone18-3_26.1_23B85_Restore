@interface HUWallpaperThumbnailCollectionCell
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (CGSize)imageSize;
- (HUWallpaperThumbnailCellDelegate)delegate;
- (HUWallpaperThumbnailCollectionCell)initWithFrame:(CGRect)a3;
- (UIImage)image;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)prepareForReuse;
- (void)setContentMode:(int64_t)a3;
- (void)setImage:(id)a3;
- (void)setImageSize:(CGSize)a3;
@end

@implementation HUWallpaperThumbnailCollectionCell

- (HUWallpaperThumbnailCollectionCell)initWithFrame:(CGRect)a3
{
  v44.receiver = self;
  v44.super_class = HUWallpaperThumbnailCollectionCell;
  v3 = [(HUWallpaperThumbnailCollectionCell *)&v44 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    p_width = &v3->_imageSize.width;
    v3->_imageSize = vdupq_n_s64(0x4049000000000000uLL);
    v3->_contentMode = 2;
    v6 = objc_alloc(MEMORY[0x277D755E8]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    imageThumbnailView = v4->_imageThumbnailView;
    v4->_imageThumbnailView = v7;

    [(UIImageView *)v4->_imageThumbnailView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_imageThumbnailView setContentMode:v4->_contentMode];
    [(UIImageView *)v4->_imageThumbnailView setClipsToBounds:1];
    [(HUWallpaperThumbnailCollectionCell *)v4 addSubview:v4->_imageThumbnailView];
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [(UIImageView *)v4->_imageThumbnailView centerXAnchor];
    v11 = [(HUWallpaperThumbnailCollectionCell *)v4 layoutMarginsGuide];
    v12 = [v11 centerXAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    [v9 addObject:v13];

    v14 = [(UIImageView *)v4->_imageThumbnailView leadingAnchor];
    v15 = [(HUWallpaperThumbnailCollectionCell *)v4 layoutMarginsGuide];
    v16 = [v15 leadingAnchor];
    v17 = [v14 constraintGreaterThanOrEqualToAnchor:v16];
    [v9 addObject:v17];

    v18 = [(UIImageView *)v4->_imageThumbnailView trailingAnchor];
    v19 = [(HUWallpaperThumbnailCollectionCell *)v4 layoutMarginsGuide];
    v20 = [v19 trailingAnchor];
    v21 = [v18 constraintLessThanOrEqualToAnchor:v20];
    [v9 addObject:v21];

    v22 = [(UIImageView *)v4->_imageThumbnailView heightAnchor];
    v23 = [v22 constraintEqualToConstant:v4->_imageSize.height];
    imageHeightConstraint = v4->_imageHeightConstraint;
    v4->_imageHeightConstraint = v23;

    LODWORD(v25) = 1144750080;
    [(NSLayoutConstraint *)v4->_imageHeightConstraint setPriority:v25];
    [v9 addObject:v4->_imageHeightConstraint];
    v26 = [(UIImageView *)v4->_imageThumbnailView widthAnchor];
    v27 = [v26 constraintEqualToConstant:*p_width];
    imageWidthConstraint = v4->_imageWidthConstraint;
    v4->_imageWidthConstraint = v27;

    [v9 addObject:v4->_imageWidthConstraint];
    v29 = [(UIImageView *)v4->_imageThumbnailView centerYAnchor];
    v30 = [(HUWallpaperThumbnailCollectionCell *)v4 layoutMarginsGuide];
    v31 = [v30 centerYAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [v9 addObject:v32];

    v33 = [(UIImageView *)v4->_imageThumbnailView topAnchor];
    v34 = [(HUWallpaperThumbnailCollectionCell *)v4 topAnchor];
    v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34 constant:16.0];
    [v9 addObject:v35];

    v36 = [(UIImageView *)v4->_imageThumbnailView bottomAnchor];
    v37 = [(HUWallpaperThumbnailCollectionCell *)v4 bottomAnchor];
    v38 = [v36 constraintLessThanOrEqualToAnchor:v37 constant:16.0];
    [v9 addObject:v38];

    [MEMORY[0x277CCAAD0] activateConstraints:v9];
    v39 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:v4];
    dropInteraction = v4->_dropInteraction;
    v4->_dropInteraction = v39;

    v41 = [(HUWallpaperThumbnailCollectionCell *)v4 contentView];
    v42 = [(HUWallpaperThumbnailCollectionCell *)v4 dropInteraction];
    [v41 addInteraction:v42];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUWallpaperThumbnailCollectionCell;
  [(HUWallpaperThumbnailCollectionCell *)&v3 prepareForReuse];
  [(HUWallpaperThumbnailCollectionCell *)self setImage:0];
  [(HUWallpaperThumbnailCollectionCell *)self setImageSize:50.0, 50.0];
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v4 = a4;
  v5 = [v4 canLoadObjectsOfClass:objc_opt_class()];

  return v5;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v4 = [a4 items];
  v5 = [v4 count] < 2;

  v6 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:2 * v5];

  return v6;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = [a4 items];
  v6 = [v5 firstObject];
  v7 = [v6 itemProvider];
  v8 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HUWallpaperThumbnailCollectionCell_dropInteraction_performDrop___block_invoke;
  v10[3] = &unk_277DB8998;
  v10[4] = self;
  v9 = [v7 loadObjectOfClass:v8 completionHandler:v10];
}

void __66__HUWallpaperThumbnailCollectionCell_dropInteraction_performDrop___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __66__HUWallpaperThumbnailCollectionCell_dropInteraction_performDrop___block_invoke_2;
      v7[3] = &unk_277DB7558;
      v7[4] = *(a1 + 32);
      v8 = v3;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

void __66__HUWallpaperThumbnailCollectionCell_dropInteraction_performDrop___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 wallpaperThumbnailCell:*(a1 + 32) didReceiveDroppedImage:*(a1 + 40)];
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v5 = [a4 items];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [(HUWallpaperThumbnailCollectionCell *)self configurationState];
    [v7 setSelected:1];
    [(HUWallpaperThumbnailCollectionCell *)self updateConfigurationUsingState:v7];
  }
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v5 = [(HUWallpaperThumbnailCollectionCell *)self configurationState:a3];
  [v5 setSelected:0];
  [(HUWallpaperThumbnailCollectionCell *)self updateConfigurationUsingState:v5];
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v5 = [(HUWallpaperThumbnailCollectionCell *)self configurationState:a3];
  [v5 setSelected:0];
  [(HUWallpaperThumbnailCollectionCell *)self updateConfigurationUsingState:v5];
}

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  p_imageSize = &self->_imageSize;
  self->_imageSize = a3;
  v6 = [(HUWallpaperThumbnailCollectionCell *)self imageHeightConstraint];
  [v6 setConstant:height];

  width = p_imageSize->width;
  v8 = [(HUWallpaperThumbnailCollectionCell *)self imageWidthConstraint];
  [v8 setConstant:width];
}

- (UIImage)image
{
  v2 = [(HUWallpaperThumbnailCollectionCell *)self imageThumbnailView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(HUWallpaperThumbnailCollectionCell *)self imageThumbnailView];
  [v5 setImage:v4];
}

- (void)setContentMode:(int64_t)a3
{
  self->_contentMode = a3;
  v4 = [(HUWallpaperThumbnailCollectionCell *)self imageThumbnailView];
  [v4 setContentMode:a3];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (HUWallpaperThumbnailCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
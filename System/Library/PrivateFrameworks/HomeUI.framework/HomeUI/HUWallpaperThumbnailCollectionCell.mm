@interface HUWallpaperThumbnailCollectionCell
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (CGSize)imageSize;
- (HUWallpaperThumbnailCellDelegate)delegate;
- (HUWallpaperThumbnailCollectionCell)initWithFrame:(CGRect)frame;
- (UIImage)image;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)prepareForReuse;
- (void)setContentMode:(int64_t)mode;
- (void)setImage:(id)image;
- (void)setImageSize:(CGSize)size;
@end

@implementation HUWallpaperThumbnailCollectionCell

- (HUWallpaperThumbnailCollectionCell)initWithFrame:(CGRect)frame
{
  v44.receiver = self;
  v44.super_class = HUWallpaperThumbnailCollectionCell;
  v3 = [(HUWallpaperThumbnailCollectionCell *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    array = [MEMORY[0x277CBEB18] array];
    centerXAnchor = [(UIImageView *)v4->_imageThumbnailView centerXAnchor];
    layoutMarginsGuide = [(HUWallpaperThumbnailCollectionCell *)v4 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v13];

    leadingAnchor = [(UIImageView *)v4->_imageThumbnailView leadingAnchor];
    layoutMarginsGuide2 = [(HUWallpaperThumbnailCollectionCell *)v4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v17 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    [array addObject:v17];

    trailingAnchor = [(UIImageView *)v4->_imageThumbnailView trailingAnchor];
    layoutMarginsGuide3 = [(HUWallpaperThumbnailCollectionCell *)v4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v21 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    [array addObject:v21];

    heightAnchor = [(UIImageView *)v4->_imageThumbnailView heightAnchor];
    v23 = [heightAnchor constraintEqualToConstant:v4->_imageSize.height];
    imageHeightConstraint = v4->_imageHeightConstraint;
    v4->_imageHeightConstraint = v23;

    LODWORD(v25) = 1144750080;
    [(NSLayoutConstraint *)v4->_imageHeightConstraint setPriority:v25];
    [array addObject:v4->_imageHeightConstraint];
    widthAnchor = [(UIImageView *)v4->_imageThumbnailView widthAnchor];
    v27 = [widthAnchor constraintEqualToConstant:*p_width];
    imageWidthConstraint = v4->_imageWidthConstraint;
    v4->_imageWidthConstraint = v27;

    [array addObject:v4->_imageWidthConstraint];
    centerYAnchor = [(UIImageView *)v4->_imageThumbnailView centerYAnchor];
    layoutMarginsGuide4 = [(HUWallpaperThumbnailCollectionCell *)v4 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide4 centerYAnchor];
    v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v32];

    topAnchor = [(UIImageView *)v4->_imageThumbnailView topAnchor];
    topAnchor2 = [(HUWallpaperThumbnailCollectionCell *)v4 topAnchor];
    v35 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:16.0];
    [array addObject:v35];

    bottomAnchor = [(UIImageView *)v4->_imageThumbnailView bottomAnchor];
    bottomAnchor2 = [(HUWallpaperThumbnailCollectionCell *)v4 bottomAnchor];
    v38 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:16.0];
    [array addObject:v38];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    v39 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:v4];
    dropInteraction = v4->_dropInteraction;
    v4->_dropInteraction = v39;

    contentView = [(HUWallpaperThumbnailCollectionCell *)v4 contentView];
    dropInteraction = [(HUWallpaperThumbnailCollectionCell *)v4 dropInteraction];
    [contentView addInteraction:dropInteraction];
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

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  sessionCopy = session;
  v5 = [sessionCopy canLoadObjectsOfClass:objc_opt_class()];

  return v5;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  items = [update items];
  v5 = [items count] < 2;

  v6 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:2 * v5];

  return v6;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  items = [drop items];
  firstObject = [items firstObject];
  itemProvider = [firstObject itemProvider];
  v8 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HUWallpaperThumbnailCollectionCell_dropInteraction_performDrop___block_invoke;
  v10[3] = &unk_277DB8998;
  v10[4] = self;
  v9 = [itemProvider loadObjectOfClass:v8 completionHandler:v10];
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

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  items = [enter items];
  v6 = [items count];

  if (v6 == 1)
  {
    configurationState = [(HUWallpaperThumbnailCollectionCell *)self configurationState];
    [configurationState setSelected:1];
    [(HUWallpaperThumbnailCollectionCell *)self updateConfigurationUsingState:configurationState];
  }
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  v5 = [(HUWallpaperThumbnailCollectionCell *)self configurationState:interaction];
  [v5 setSelected:0];
  [(HUWallpaperThumbnailCollectionCell *)self updateConfigurationUsingState:v5];
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  v5 = [(HUWallpaperThumbnailCollectionCell *)self configurationState:interaction];
  [v5 setSelected:0];
  [(HUWallpaperThumbnailCollectionCell *)self updateConfigurationUsingState:v5];
}

- (void)setImageSize:(CGSize)size
{
  height = size.height;
  p_imageSize = &self->_imageSize;
  self->_imageSize = size;
  imageHeightConstraint = [(HUWallpaperThumbnailCollectionCell *)self imageHeightConstraint];
  [imageHeightConstraint setConstant:height];

  width = p_imageSize->width;
  imageWidthConstraint = [(HUWallpaperThumbnailCollectionCell *)self imageWidthConstraint];
  [imageWidthConstraint setConstant:width];
}

- (UIImage)image
{
  imageThumbnailView = [(HUWallpaperThumbnailCollectionCell *)self imageThumbnailView];
  image = [imageThumbnailView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageThumbnailView = [(HUWallpaperThumbnailCollectionCell *)self imageThumbnailView];
  [imageThumbnailView setImage:imageCopy];
}

- (void)setContentMode:(int64_t)mode
{
  self->_contentMode = mode;
  imageThumbnailView = [(HUWallpaperThumbnailCollectionCell *)self imageThumbnailView];
  [imageThumbnailView setContentMode:mode];
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
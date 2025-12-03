@interface HUWallpaperThumbnailCell
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (CGSize)imageSize;
- (HUWallpaperThumbnailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUWallpaperThumbnailCellDelegate)delegate;
- (UIImage)image;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)prepareForReuse;
- (void)setContentMode:(int64_t)mode;
- (void)setImage:(id)image;
- (void)setImageSize:(CGSize)size;
@end

@implementation HUWallpaperThumbnailCell

- (HUWallpaperThumbnailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v52.receiver = self;
  v52.super_class = HUWallpaperThumbnailCell;
  v4 = [(HUWallpaperThumbnailCell *)&v52 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    p_width = &v4->_imageSize.width;
    v4->_imageSize = vdupq_n_s64(0x4049000000000000uLL);
    v4->_contentMode = 2;
    v7 = objc_alloc(MEMORY[0x277D755E8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    imageThumbnailView = v5->_imageThumbnailView;
    v5->_imageThumbnailView = v8;

    [(UIImageView *)v5->_imageThumbnailView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v5->_imageThumbnailView setContentMode:v5->_contentMode];
    [(UIImageView *)v5->_imageThumbnailView setClipsToBounds:1];
    contentView = [(HUWallpaperThumbnailCell *)v5 contentView];
    [contentView addSubview:v5->_imageThumbnailView];

    array = [MEMORY[0x277CBEB18] array];
    centerXAnchor = [(UIImageView *)v5->_imageThumbnailView centerXAnchor];
    contentView2 = [(HUWallpaperThumbnailCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v16];

    leadingAnchor = [(UIImageView *)v5->_imageThumbnailView leadingAnchor];
    contentView3 = [(HUWallpaperThumbnailCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v21 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    [array addObject:v21];

    trailingAnchor = [(UIImageView *)v5->_imageThumbnailView trailingAnchor];
    contentView4 = [(HUWallpaperThumbnailCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v26 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    [array addObject:v26];

    heightAnchor = [(UIImageView *)v5->_imageThumbnailView heightAnchor];
    v28 = [heightAnchor constraintEqualToConstant:v5->_imageSize.height];
    imageHeightConstraint = v5->_imageHeightConstraint;
    v5->_imageHeightConstraint = v28;

    LODWORD(v30) = 1144750080;
    [(NSLayoutConstraint *)v5->_imageHeightConstraint setPriority:v30];
    [array addObject:v5->_imageHeightConstraint];
    widthAnchor = [(UIImageView *)v5->_imageThumbnailView widthAnchor];
    v32 = [widthAnchor constraintEqualToConstant:*p_width];
    imageWidthConstraint = v5->_imageWidthConstraint;
    v5->_imageWidthConstraint = v32;

    [array addObject:v5->_imageWidthConstraint];
    centerYAnchor = [(UIImageView *)v5->_imageThumbnailView centerYAnchor];
    contentView5 = [(HUWallpaperThumbnailCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide4 centerYAnchor];
    v38 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v38];

    topAnchor = [(UIImageView *)v5->_imageThumbnailView topAnchor];
    contentView6 = [(HUWallpaperThumbnailCell *)v5 contentView];
    topAnchor2 = [contentView6 topAnchor];
    v42 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:16.0];
    [array addObject:v42];

    bottomAnchor = [(UIImageView *)v5->_imageThumbnailView bottomAnchor];
    contentView7 = [(HUWallpaperThumbnailCell *)v5 contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v46 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:16.0];
    [array addObject:v46];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    v47 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:v5];
    dropInteraction = v5->_dropInteraction;
    v5->_dropInteraction = v47;

    contentView8 = [(HUWallpaperThumbnailCell *)v5 contentView];
    dropInteraction = [(HUWallpaperThumbnailCell *)v5 dropInteraction];
    [contentView8 addInteraction:dropInteraction];
  }

  return v5;
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
  v10[2] = __56__HUWallpaperThumbnailCell_dropInteraction_performDrop___block_invoke;
  v10[3] = &unk_277DB8998;
  v10[4] = self;
  v9 = [itemProvider loadObjectOfClass:v8 completionHandler:v10];
}

void __56__HUWallpaperThumbnailCell_dropInteraction_performDrop___block_invoke(uint64_t a1, void *a2)
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
      v7[2] = __56__HUWallpaperThumbnailCell_dropInteraction_performDrop___block_invoke_2;
      v7[3] = &unk_277DB7558;
      v7[4] = *(a1 + 32);
      v8 = v3;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

void __56__HUWallpaperThumbnailCell_dropInteraction_performDrop___block_invoke_2(uint64_t a1)
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

    [(HUWallpaperThumbnailCell *)self setSelected:1 animated:1];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUWallpaperThumbnailCell;
  [(HUWallpaperThumbnailCell *)&v3 prepareForReuse];
  [(HUWallpaperThumbnailCell *)self setImage:0];
  [(HUWallpaperThumbnailCell *)self setImageSize:50.0, 50.0];
}

- (void)setImageSize:(CGSize)size
{
  height = size.height;
  p_imageSize = &self->_imageSize;
  self->_imageSize = size;
  imageHeightConstraint = [(HUWallpaperThumbnailCell *)self imageHeightConstraint];
  [imageHeightConstraint setConstant:height];

  width = p_imageSize->width;
  imageWidthConstraint = [(HUWallpaperThumbnailCell *)self imageWidthConstraint];
  [imageWidthConstraint setConstant:width];
}

- (UIImage)image
{
  imageThumbnailView = [(HUWallpaperThumbnailCell *)self imageThumbnailView];
  image = [imageThumbnailView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageThumbnailView = [(HUWallpaperThumbnailCell *)self imageThumbnailView];
  [imageThumbnailView setImage:imageCopy];
}

- (void)setContentMode:(int64_t)mode
{
  self->_contentMode = mode;
  imageThumbnailView = [(HUWallpaperThumbnailCell *)self imageThumbnailView];
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
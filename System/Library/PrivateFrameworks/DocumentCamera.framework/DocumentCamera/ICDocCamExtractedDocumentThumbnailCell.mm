@interface ICDocCamExtractedDocumentThumbnailCell
- (ICDocCamExtractedDocumentThumbnailCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)prepareForReuse;
@end

@implementation ICDocCamExtractedDocumentThumbnailCell

- (ICDocCamExtractedDocumentThumbnailCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v42.receiver = self;
  v42.super_class = ICDocCamExtractedDocumentThumbnailCell;
  v7 = [(ICDocCamExtractedDocumentThumbnailCell *)&v42 initWithFrame:?];
  if (v7)
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    cGColor = [v8 CGColor];
    layer = [(ICDocCamExtractedDocumentThumbnailCell *)v7 layer];
    [layer setBorderColor:cGColor];

    layer2 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 layer];
    [layer2 setBorderWidth:0.5];

    v12 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(ICDocCamExtractedDocumentThumbnailCell *)v7 setImageView:v12];

    imageView = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [imageView setContentMode:2];

    imageView2 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [imageView2 setClipsToBounds:1];

    imageView3 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [imageView3 setFrame:{x, y, width, height}];

    imageView4 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [imageView4 setAccessibilityIgnoresInvertColors:1];

    imageView5 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [imageView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(ICDocCamExtractedDocumentThumbnailCell *)v7 contentView];
    imageView6 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [contentView addSubview:imageView6];

    array = [MEMORY[0x277CBEB18] array];
    contentView2 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 contentView];
    leadingAnchor = [contentView2 leadingAnchor];
    imageView7 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    leadingAnchor2 = [imageView7 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v25];

    contentView3 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 contentView];
    trailingAnchor = [contentView3 trailingAnchor];
    imageView8 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    trailingAnchor2 = [imageView8 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v30];

    contentView4 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 contentView];
    topAnchor = [contentView4 topAnchor];
    imageView9 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    topAnchor2 = [imageView9 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v35];

    contentView5 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    imageView10 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    bottomAnchor2 = [imageView10 bottomAnchor];
    v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v40];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v7;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = ICDocCamExtractedDocumentThumbnailCell;
  [(ICDocCamExtractedDocumentThumbnailCell *)&v4 prepareForReuse];
  imageView = [(ICDocCamExtractedDocumentThumbnailCell *)self imageView];
  [imageView setImage:0];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v3.receiver = self;
  v3.super_class = ICDocCamExtractedDocumentThumbnailCell;
  [(ICDocCamExtractedDocumentThumbnailCell *)&v3 applyLayoutAttributes:attributes];
}

@end
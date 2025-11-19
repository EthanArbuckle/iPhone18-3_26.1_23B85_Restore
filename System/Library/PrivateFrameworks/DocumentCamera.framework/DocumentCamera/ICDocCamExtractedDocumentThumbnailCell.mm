@interface ICDocCamExtractedDocumentThumbnailCell
- (ICDocCamExtractedDocumentThumbnailCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)prepareForReuse;
@end

@implementation ICDocCamExtractedDocumentThumbnailCell

- (ICDocCamExtractedDocumentThumbnailCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v42.receiver = self;
  v42.super_class = ICDocCamExtractedDocumentThumbnailCell;
  v7 = [(ICDocCamExtractedDocumentThumbnailCell *)&v42 initWithFrame:?];
  if (v7)
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    v9 = [v8 CGColor];
    v10 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 layer];
    [v10 setBorderColor:v9];

    v11 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 layer];
    [v11 setBorderWidth:0.5];

    v12 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(ICDocCamExtractedDocumentThumbnailCell *)v7 setImageView:v12];

    v13 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [v13 setContentMode:2];

    v14 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [v14 setClipsToBounds:1];

    v15 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [v15 setFrame:{x, y, width, height}];

    v16 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [v16 setAccessibilityIgnoresInvertColors:1];

    v17 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 contentView];
    v19 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    [v18 addSubview:v19];

    v20 = [MEMORY[0x277CBEB18] array];
    v21 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 contentView];
    v22 = [v21 leadingAnchor];
    v23 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    v24 = [v23 leadingAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    [v20 addObject:v25];

    v26 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 contentView];
    v27 = [v26 trailingAnchor];
    v28 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    v29 = [v28 trailingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    [v20 addObject:v30];

    v31 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 contentView];
    v32 = [v31 topAnchor];
    v33 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    v34 = [v33 topAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    [v20 addObject:v35];

    v36 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 contentView];
    v37 = [v36 bottomAnchor];
    v38 = [(ICDocCamExtractedDocumentThumbnailCell *)v7 imageView];
    v39 = [v38 bottomAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
    [v20 addObject:v40];

    [MEMORY[0x277CCAAD0] activateConstraints:v20];
  }

  return v7;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = ICDocCamExtractedDocumentThumbnailCell;
  [(ICDocCamExtractedDocumentThumbnailCell *)&v4 prepareForReuse];
  v3 = [(ICDocCamExtractedDocumentThumbnailCell *)self imageView];
  [v3 setImage:0];
}

- (void)applyLayoutAttributes:(id)a3
{
  v3.receiver = self;
  v3.super_class = ICDocCamExtractedDocumentThumbnailCell;
  [(ICDocCamExtractedDocumentThumbnailCell *)&v3 applyLayoutAttributes:a3];
}

@end
@interface BRShareDocumentInfoView
- (BRShareDocumentInfoView)initWithFrame:(CGRect)frame;
- (void)setCompactMode:(BOOL)mode;
@end

@implementation BRShareDocumentInfoView

- (BRShareDocumentInfoView)initWithFrame:(CGRect)frame
{
  v37.receiver = self;
  v37.super_class = BRShareDocumentInfoView;
  v3 = [(BRShareDocumentInfoView *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BRShareDocumentInfoView *)v3 setAlignment:3];
    [(BRShareDocumentInfoView *)v4 setDistribution:0];
    [(BRShareDocumentInfoView *)v4 setAxis:1];
    [(BRShareDocumentInfoView *)v4 setLayoutMarginsRelativeArrangement:1];
    [(BRShareDocumentInfoView *)v4 setDirectionalLayoutMargins:0.0, 16.0, 0.0, 16.0];
    v5 = +[NSMutableArray array];
    v44 = UIFontWeightTrait;
    v6 = [NSNumber numberWithDouble:UIFontWeightBold];
    v45 = v6;
    v36 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];

    v7 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
    v42 = UIFontDescriptorTraitsAttribute;
    v43 = v36;
    v8 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v35 = [v7 fontDescriptorByAddingAttributes:v8];

    v9 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    v11 = [UIFont fontWithDescriptor:v35 size:0.0];
    [(UILabel *)v4->_titleLabel setFont:v11];

    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(UILabel *)v4->_titleLabel setText:@" "];
    [(BRShareDocumentInfoView *)v4 addArrangedSubview:v4->_titleLabel];
    v12 = objc_opt_new();
    infoTextLabel = v4->_infoTextLabel;
    v4->_infoTextLabel = v12;

    [(UILabel *)v4->_infoTextLabel setNumberOfLines:0];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_infoTextLabel setFont:v14];

    [(UILabel *)v4->_infoTextLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_infoTextLabel setTextAlignment:1];
    [(UILabel *)v4->_infoTextLabel setText:@" "];
    [(BRShareDocumentInfoView *)v4 addArrangedSubview:v4->_infoTextLabel];
    v15 = objc_opt_new();
    thumbnailView = v4->_thumbnailView;
    v4->_thumbnailView = v15;

    [(BRShareFittingImageView *)v4->_thumbnailView setContentMode:1];
    [(BRShareFittingImageView *)v4->_thumbnailView setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [(BRShareFittingImageView *)v4->_thumbnailView heightAnchor];
    v18 = [heightAnchor constraintEqualToConstant:110.0];
    thumbnailHeightConstraint = v4->_thumbnailHeightConstraint;
    v4->_thumbnailHeightConstraint = v18;

    LODWORD(v20) = 1144586240;
    [(NSLayoutConstraint *)v4->_thumbnailHeightConstraint setPriority:v20];
    [v5 addObject:v4->_thumbnailHeightConstraint];
    [(BRShareDocumentInfoView *)v4 addArrangedSubview:v4->_thumbnailView];
    v40 = UIFontWeightTrait;
    v21 = [NSNumber numberWithDouble:UIFontWeightSemibold];
    v41 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];

    v23 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
    v38 = UIFontDescriptorTraitsAttribute;
    v39 = v22;
    v24 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v25 = [v23 fontDescriptorByAddingAttributes:v24];

    v26 = objc_opt_new();
    itemTitleLabel = v4->_itemTitleLabel;
    v4->_itemTitleLabel = v26;

    [(UILabel *)v4->_itemTitleLabel setNumberOfLines:0];
    [v25 pointSize];
    v28 = [UIFont fontWithDescriptor:v25 size:?];
    [(UILabel *)v4->_itemTitleLabel setFont:v28];

    [(UILabel *)v4->_itemTitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_itemTitleLabel setTextAlignment:1];
    [(UILabel *)v4->_itemTitleLabel setText:@" "];
    [(BRShareDocumentInfoView *)v4 addArrangedSubview:v4->_itemTitleLabel];
    v29 = objc_opt_new();
    ownerLabel = v4->_ownerLabel;
    v4->_ownerLabel = v29;

    [(UILabel *)v4->_ownerLabel setNumberOfLines:0];
    v31 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v4->_ownerLabel setFont:v31];

    [(UILabel *)v4->_ownerLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_ownerLabel setTextAlignment:1];
    [(UILabel *)v4->_ownerLabel setLineBreakMode:5];
    [(UILabel *)v4->_ownerLabel setText:@" "];
    v32 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_ownerLabel setTextColor:v32];

    [(BRShareDocumentInfoView *)v4 addArrangedSubview:v4->_ownerLabel];
    v33 = +[UIColor clearColor];
    [(BRShareDocumentInfoView *)v4 setBackgroundColor:v33];

    [NSLayoutConstraint activateConstraints:v5];
  }

  return v4;
}

- (void)setCompactMode:(BOOL)mode
{
  self->_compactMode = mode;
  titleLabel = self->_titleLabel;
  v5 = 20.0;
  if (mode)
  {
    v5 = 16.0;
    v6 = 10.0;
  }

  else
  {
    v6 = 12.0;
  }

  if (mode)
  {
    v7 = 75.0;
  }

  else
  {
    v7 = 110.0;
  }

  if (mode)
  {
    v8 = 4.0;
  }

  else
  {
    v8 = 6.0;
  }

  [(BRShareDocumentInfoView *)self setCustomSpacing:self->_titleLabel afterView:v5];
  [(BRShareDocumentInfoView *)self setCustomSpacing:self->_infoTextLabel afterView:v6];
  [(BRShareDocumentInfoView *)self setCustomSpacing:self->_thumbnailView afterView:v6];
  [(NSLayoutConstraint *)self->_thumbnailHeightConstraint setConstant:v7];
  itemTitleLabel = self->_itemTitleLabel;

  [(BRShareDocumentInfoView *)self setCustomSpacing:itemTitleLabel afterView:v8];
}

@end
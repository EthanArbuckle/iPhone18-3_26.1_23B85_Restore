@interface NSSArticleView
- (CGSize)preferredSize;
- (NSSArticleView)init;
- (NSSArticleView)initWithCoder:(id)coder;
- (NSSArticleView)initWithFrame:(CGRect)frame;
- (UIImageView)publisherLogoImageView;
- (UIImageView)thumbnailImageView;
- (UILabel)dateLabel;
- (UILabel)excerptLabel;
- (UILabel)publisherLabel;
- (UILabel)titleLabel;
- (UIView)thumbnailContainerView;
- (double)calculateHeightForWidth:(double)width;
- (void)_commonInit;
- (void)_updateFonts;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setArticle:(id)article;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NSSArticleView

- (NSSArticleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NSSArticleView;
  v3 = [(NSSArticleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NSSArticleView *)v3 _commonInit];
  }

  return v4;
}

- (NSSArticleView)init
{
  v5.receiver = self;
  v5.super_class = NSSArticleView;
  v2 = [(NSSArticleView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NSSArticleView *)v2 _commonInit];
  }

  return v3;
}

- (void)setArticle:(id)article
{
  articleCopy = article;
  if (self->_article != articleCopy)
  {
    objc_storeStrong(&self->_article, article);
    thumbnailImage = [(NSSArticleInternal *)articleCopy thumbnailImage];
    thumbnailImageView = [(NSSArticleView *)self thumbnailImageView];
    [thumbnailImageView setImage:thumbnailImage];

    title = [(NSSArticleInternal *)articleCopy title];
    titleLabel = [(NSSArticleView *)self titleLabel];
    [titleLabel setText:title];

    shortExcerpt = [(NSSArticleInternal *)articleCopy shortExcerpt];
    excerptLabel = [(NSSArticleView *)self excerptLabel];
    [excerptLabel setText:shortExcerpt];

    publisherName = [(NSSArticleInternal *)articleCopy publisherName];
    publisherLabel = [(NSSArticleView *)self publisherLabel];
    [publisherLabel setText:publisherName];

    traitCollection = [(NSSArticleView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      [(NSSArticleInternal *)articleCopy publisherLogoMaskImage];
    }

    else
    {
      [(NSSArticleInternal *)articleCopy publisherLogoImage];
    }
    v16 = ;
    publisherLogoImageView = [(NSSArticleView *)self publisherLogoImageView];
    [publisherLogoImageView setImage:v16];

    publishDate = [(NSSArticleInternal *)articleCopy publishDate];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __29__NSSArticleView_setArticle___block_invoke;
    v21[3] = &unk_279980808;
    v21[4] = self;
    [publishDate nss_gregorianDescriptionWithFlags:1 options:0 completion:v21];

    [(NSSArticleView *)self bounds];
    v19 = CGRectGetWidth(v22) + -32.0;
    [(NSSArticleView *)self calculateHeightForWidth:v19];
    [(NSSArticleView *)self setPreferredSize:v19, round(v20)];
    [(NSSArticleView *)self setNeedsLayout];
  }
}

void __29__NSSArticleView_setArticle___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dateLabel];
  [v4 setText:v3];
}

- (double)calculateHeightForWidth:(double)width
{
  thumbnailImageView = [(NSSArticleView *)self thumbnailImageView];
  image = [thumbnailImageView image];

  publisherLogoImageView = [(NSSArticleView *)self publisherLogoImageView];
  image2 = [publisherLogoImageView image];

  publisherLabel = [(NSSArticleView *)self publisherLabel];
  text = [publisherLabel text];

  titleLabel = [(NSSArticleView *)self titleLabel];
  text2 = [titleLabel text];

  excerptLabel = [(NSSArticleView *)self excerptLabel];
  text3 = [excerptLabel text];

  dateLabel = [(NSSArticleView *)self dateLabel];
  text4 = [dateLabel text];

  v17 = 16.0;
  v18 = width * 3.0 * 0.25 + 16.0;
  if (image)
  {
    v19 = 18.0;
  }

  else
  {
    v19 = 0.0;
  }

  if (image)
  {
    v20 = width * 3.0 * 0.25 + 16.0;
  }

  else
  {
    v20 = 16.0;
  }

  if (image2)
  {
    v17 = v19 + 16.0;
    v20 = v20 + v19 + 16.0;
  }

  else
  {
    if (!text)
    {
      goto LABEL_12;
    }

    v21 = [(NSSArticleView *)self publisherLabel:16.0];
    [v21 sizeToFit];

    publisherLabel2 = [(NSSArticleView *)self publisherLabel];
    [publisherLabel2 frame];
    v20 = v20 + v19 + CGRectGetHeight(v33);
  }

  v19 = 8.0;
LABEL_12:
  if (text2)
  {
    v23 = [(NSSArticleView *)self titleLabel:v17];
    [v23 sizeToFit];

    titleLabel2 = [(NSSArticleView *)self titleLabel];
    [titleLabel2 frame];
    v20 = v20 + v19 + CGRectGetHeight(v34);

    v19 = 5.0;
  }

  if (text3)
  {
    if (image)
    {
      v25 = 2;
    }

    else
    {
      v25 = 8;
    }

    v26 = [(NSSArticleView *)self excerptLabel:v17];
    [v26 setNumberOfLines:v25];

    excerptLabel2 = [(NSSArticleView *)self excerptLabel];
    [excerptLabel2 setFrame:{0.0, 0.0, width, 0.0}];

    excerptLabel3 = [(NSSArticleView *)self excerptLabel];
    [excerptLabel3 sizeToFit];

    excerptLabel4 = [(NSSArticleView *)self excerptLabel];
    [excerptLabel4 frame];
    v20 = v20 + v19 + CGRectGetHeight(v35);

    v19 = 8.0;
  }

  if (text4)
  {
    v30 = [(NSSArticleView *)self dateLabel:v17];
    [v30 sizeToFit];

    dateLabel2 = [(NSSArticleView *)self dateLabel];
    [dateLabel2 frame];
    v20 = v20 + v19 + CGRectGetHeight(v36);
  }

  return v20 + 16.0;
}

- (void)layoutSubviews
{
  v85.receiver = self;
  v85.super_class = NSSArticleView;
  [(NSSArticleView *)&v85 layoutSubviews];
  [(NSSArticleView *)self bounds];
  v3 = CGRectGetWidth(v86) + -32.0;
  thumbnailImageView = [(NSSArticleView *)self thumbnailImageView];
  image = [thumbnailImageView image];

  publisherLogoImageView = [(NSSArticleView *)self publisherLogoImageView];
  image2 = [publisherLogoImageView image];

  thumbnailContainerView = [(NSSArticleView *)self thumbnailContainerView];
  v9 = thumbnailContainerView;
  if (image)
  {
    [thumbnailContainerView setHidden:0];

    thumbnailContainerView2 = [(NSSArticleView *)self thumbnailContainerView];
    [thumbnailContainerView2 setFrame:{16.0, 16.0, v3, v3 * 3.0 * 0.25}];

    thumbnailContainerView3 = [(NSSArticleView *)self thumbnailContainerView];
    [thumbnailContainerView3 frame];
    v88 = CGRectIntegral(v87);
    x = v88.origin.x;
    y = v88.origin.y;
    width = v88.size.width;
    height = v88.size.height;
    thumbnailContainerView4 = [(NSSArticleView *)self thumbnailContainerView];
    [thumbnailContainerView4 setFrame:{x, y, width, height}];

    v17 = v3 * 3.0 * 0.25 + 16.0;
    v18 = 18.0;
  }

  else
  {
    [thumbnailContainerView setHidden:1];

    v19 = *MEMORY[0x277CBF3A0];
    v20 = *(MEMORY[0x277CBF3A0] + 8);
    v21 = *(MEMORY[0x277CBF3A0] + 16);
    v22 = *(MEMORY[0x277CBF3A0] + 24);
    thumbnailContainerView5 = [(NSSArticleView *)self thumbnailContainerView];
    [thumbnailContainerView5 setFrame:{v19, v20, v21, v22}];

    v17 = 16.0;
    v18 = 0.0;
  }

  if (image2)
  {
    publisherLogoImageView2 = [(NSSArticleView *)self publisherLogoImageView];
    [publisherLogoImageView2 setHidden:0];

    publisherLabel = [(NSSArticleView *)self publisherLabel];
    [publisherLabel setHidden:1];

    publisherLogoImageView3 = [(NSSArticleView *)self publisherLogoImageView];
    image3 = [publisherLogoImageView3 image];
    [image3 size];
    v29 = v28;
    v31 = v30;

    v32 = 16.0;
    publisherLogoImageView4 = [(NSSArticleView *)self publisherLogoImageView];
    v34 = publisherLogoImageView4;
    v35 = 16.0;
    v36 = 16.0;
    v37 = v18 + v17;
    v38 = v29 * 16.0 / v31;
  }

  else
  {
    publisherLabel2 = [(NSSArticleView *)self publisherLabel];
    [publisherLabel2 setHidden:0];

    publisherLogoImageView5 = [(NSSArticleView *)self publisherLogoImageView];
    [publisherLogoImageView5 setHidden:1];

    publisherLabel3 = [(NSSArticleView *)self publisherLabel];
    [publisherLabel3 setFrame:{0.0, 0.0, v3, 0.0}];

    publisherLabel4 = [(NSSArticleView *)self publisherLabel];
    [publisherLabel4 sizeToFit];

    publisherLabel5 = [(NSSArticleView *)self publisherLabel];
    [publisherLabel5 frame];
    v32 = CGRectGetHeight(v89);

    v90.origin.y = v18 + v17;
    v90.origin.x = 16.0;
    v90.size.width = v3;
    v90.size.height = v32;
    v91 = CGRectIntegral(v90);
    v44 = v91.origin.x;
    v45 = v91.origin.y;
    v46 = v91.size.width;
    v47 = v91.size.height;
    publisherLogoImageView4 = [(NSSArticleView *)self publisherLabel];
    v34 = publisherLogoImageView4;
    v35 = v44;
    v37 = v45;
    v38 = v46;
    v36 = v47;
  }

  [publisherLogoImageView4 setFrame:{v35, v37, v38, v36}];

  v48 = v17 + v18 + v32;
  titleLabel = [(NSSArticleView *)self titleLabel];
  text = [titleLabel text];

  if (text)
  {
    titleLabel2 = [(NSSArticleView *)self titleLabel];
    [titleLabel2 setFrame:{0.0, 0.0, v3, 0.0}];

    titleLabel3 = [(NSSArticleView *)self titleLabel];
    [titleLabel3 sizeToFit];

    titleLabel4 = [(NSSArticleView *)self titleLabel];
    [titleLabel4 frame];
    v54 = CGRectGetHeight(v92);

    v93.origin.y = v48 + 8.0;
    v93.origin.x = 16.0;
    v93.size.width = v3;
    v93.size.height = v54;
    v94 = CGRectIntegral(v93);
    v55 = v94.origin.x;
    v56 = v94.origin.y;
    v57 = v94.size.width;
    v58 = v94.size.height;
    titleLabel5 = [(NSSArticleView *)self titleLabel];
    [titleLabel5 setFrame:{v55, v56, v57, v58}];

    v48 = v48 + v54 + 8.0;
    v60 = 5.0;
  }

  else
  {
    v60 = 8.0;
  }

  excerptLabel = [(NSSArticleView *)self excerptLabel];
  text2 = [excerptLabel text];

  if (text2)
  {
    if (image)
    {
      v63 = 2;
    }

    else
    {
      v63 = 8;
    }

    excerptLabel2 = [(NSSArticleView *)self excerptLabel];
    [excerptLabel2 setNumberOfLines:v63];

    excerptLabel3 = [(NSSArticleView *)self excerptLabel];
    [excerptLabel3 setFrame:{0.0, 0.0, v3, 0.0}];

    excerptLabel4 = [(NSSArticleView *)self excerptLabel];
    [excerptLabel4 sizeToFit];

    excerptLabel5 = [(NSSArticleView *)self excerptLabel];
    [excerptLabel5 frame];
    v68 = CGRectGetHeight(v95);

    v96.origin.y = v60 + v48;
    v96.origin.x = 16.0;
    v96.size.width = v3;
    v96.size.height = v68;
    v97 = CGRectIntegral(v96);
    v69 = v97.origin.x;
    v70 = v97.origin.y;
    v71 = v97.size.width;
    v72 = v97.size.height;
    excerptLabel6 = [(NSSArticleView *)self excerptLabel];
    [excerptLabel6 setFrame:{v69, v70, v71, v72}];

    v48 = v48 + v60 + v68;
    v60 = 8.0;
  }

  dateLabel = [(NSSArticleView *)self dateLabel];
  text3 = [dateLabel text];

  if (text3)
  {
    dateLabel2 = [(NSSArticleView *)self dateLabel];
    [dateLabel2 setFrame:{0.0, 0.0, v3, 0.0}];

    dateLabel3 = [(NSSArticleView *)self dateLabel];
    [dateLabel3 sizeToFit];

    dateLabel4 = [(NSSArticleView *)self dateLabel];
    [dateLabel4 frame];
    v79 = CGRectGetHeight(v98);

    v99.origin.y = v60 + v48;
    v99.origin.x = 16.0;
    v99.size.width = v3;
    v99.size.height = v79;
    v100 = CGRectIntegral(v99);
    v80 = v100.origin.x;
    v81 = v100.origin.y;
    v82 = v100.size.width;
    v83 = v100.size.height;
    dateLabel5 = [(NSSArticleView *)self dateLabel];
    [dateLabel5 setFrame:{v80, v81, v82, v83}];
  }

  [(NSSArticleView *)self preferredSize];
  [(NSSArticleView *)self setPreferredSize:?];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NSSArticleView;
  [(NSSArticleView *)&v7 encodeWithCoder:coderCopy];
  article = [(NSSArticleView *)self article];

  if (article)
  {
    article2 = [(NSSArticleView *)self article];
    [coderCopy encodeObject:article2 forKey:@"article"];
  }
}

- (NSSArticleView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NSSArticleView;
  v5 = [(NSSArticleView *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(NSSArticleView *)v5 _commonInit];
    v7 = [coderCopy decodeObjectForKey:@"article"];
    [(NSSArticleView *)v6 setArticle:v7];
  }

  return v6;
}

- (void)_commonInit
{
  v3 = MEMORY[0x277D75348];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.62745098 alpha:1.0];
  v5 = [MEMORY[0x277D75348] colorWithWhite:0.37254902 alpha:1.0];
  v29 = [v3 nss_dynamicColor:v4 withDarkStyleVariant:v5];

  v6 = objc_alloc(MEMORY[0x277D756B8]);
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
  [v11 setNumberOfLines:3];
  [v11 setTextAlignment:0];
  [v11 setLineBreakMode:4];
  [v11 setAutoresizingMask:2];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v11 setTextColor:labelColor];

  [(NSSArticleView *)self addSubview:v11];
  [(NSSArticleView *)self setTitleLabel:v11];
  v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  [v13 setNumberOfLines:2];
  [v13 setTextAlignment:0];
  [v13 setLineBreakMode:4];
  [v13 setAutoresizingMask:2];
  v14 = MEMORY[0x277D75348];
  v15 = [MEMORY[0x277D75348] colorWithWhite:0.431372549 alpha:1.0];
  v16 = [MEMORY[0x277D75348] colorWithWhite:0.568627451 alpha:1.0];
  v17 = [v14 nss_dynamicColor:v15 withDarkStyleVariant:v16];
  [v13 setTextColor:v17];

  [(NSSArticleView *)self addSubview:v13];
  [(NSSArticleView *)self setExcerptLabel:v13];
  v18 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  [v18 setTextAlignment:0];
  [v18 setTextColor:v29];
  [(NSSArticleView *)self addSubview:v18];
  [(NSSArticleView *)self setPublisherLabel:v18];
  v19 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  [v19 setTextAlignment:0];
  [v19 setTextColor:v29];
  [(NSSArticleView *)self addSubview:v19];
  [(NSSArticleView *)self setDateLabel:v19];
  v20 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
  layer = [v20 layer];
  [layer setMasksToBounds:1];

  layer2 = [v20 layer];
  [layer2 setCornerRadius:8.0];

  [(NSSArticleView *)self addSubview:v20];
  [(NSSArticleView *)self setThumbnailContainerView:v20];
  v23 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
  [v23 setAutoresizingMask:18];
  [v23 setContentMode:2];
  [v20 addSubview:v23];
  [(NSSArticleView *)self setThumbnailImageView:v23];
  v24 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
  v25 = *MEMORY[0x277CDA630];
  layer3 = [v24 layer];
  [layer3 setMinificationFilter:v25];

  layer4 = [v24 layer];
  [layer4 setMagnificationFilter:v25];

  [v24 setAutoresizingMask:18];
  [v24 setContentMode:2];
  labelColor2 = [MEMORY[0x277D75348] labelColor];
  [v24 setTintColor:labelColor2];

  [(NSSArticleView *)self addSubview:v24];
  [(NSSArticleView *)self setPublisherLogoImageView:v24];
  [(NSSArticleView *)self _updateFonts];
}

- (void)_updateFonts
{
  v12 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:64 options:0];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] addingSymbolicTraits:2 options:0];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v12 size:0.0];
  titleLabel = [(NSSArticleView *)self titleLabel];
  [titleLabel setFont:v4];

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
  excerptLabel = [(NSSArticleView *)self excerptLabel];
  [excerptLabel setFont:v6];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  publisherLabel = [(NSSArticleView *)self publisherLabel];
  [publisherLabel setFont:v8];

  v10 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  dateLabel = [(NSSArticleView *)self dateLabel];
  [dateLabel setFont:v10];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = NSSArticleView;
  [(NSSArticleView *)&v6 traitCollectionDidChange:change];
  [(NSSArticleView *)self bounds];
  v4 = CGRectGetWidth(v7) + -32.0;
  [(NSSArticleView *)self calculateHeightForWidth:v4];
  [(NSSArticleView *)self setPreferredSize:v4, round(v5)];
  [(NSSArticleView *)self setNeedsLayout];
}

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)excerptLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_excerptLabel);

  return WeakRetained;
}

- (UIImageView)thumbnailImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailImageView);

  return WeakRetained;
}

- (UIView)thumbnailContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailContainerView);

  return WeakRetained;
}

- (UILabel)publisherLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_publisherLabel);

  return WeakRetained;
}

- (UILabel)dateLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_dateLabel);

  return WeakRetained;
}

- (UIImageView)publisherLogoImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_publisherLogoImageView);

  return WeakRetained;
}

@end
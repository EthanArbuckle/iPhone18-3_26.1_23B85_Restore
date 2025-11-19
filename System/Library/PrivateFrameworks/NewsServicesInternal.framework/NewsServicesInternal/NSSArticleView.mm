@interface NSSArticleView
- (CGSize)preferredSize;
- (NSSArticleView)init;
- (NSSArticleView)initWithCoder:(id)a3;
- (NSSArticleView)initWithFrame:(CGRect)a3;
- (UIImageView)publisherLogoImageView;
- (UIImageView)thumbnailImageView;
- (UILabel)dateLabel;
- (UILabel)excerptLabel;
- (UILabel)publisherLabel;
- (UILabel)titleLabel;
- (UIView)thumbnailContainerView;
- (double)calculateHeightForWidth:(double)a3;
- (void)_commonInit;
- (void)_updateFonts;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setArticle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NSSArticleView

- (NSSArticleView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NSSArticleView;
  v3 = [(NSSArticleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setArticle:(id)a3
{
  v5 = a3;
  if (self->_article != v5)
  {
    objc_storeStrong(&self->_article, a3);
    v6 = [(NSSArticleInternal *)v5 thumbnailImage];
    v7 = [(NSSArticleView *)self thumbnailImageView];
    [v7 setImage:v6];

    v8 = [(NSSArticleInternal *)v5 title];
    v9 = [(NSSArticleView *)self titleLabel];
    [v9 setText:v8];

    v10 = [(NSSArticleInternal *)v5 shortExcerpt];
    v11 = [(NSSArticleView *)self excerptLabel];
    [v11 setText:v10];

    v12 = [(NSSArticleInternal *)v5 publisherName];
    v13 = [(NSSArticleView *)self publisherLabel];
    [v13 setText:v12];

    v14 = [(NSSArticleView *)self traitCollection];
    v15 = [v14 userInterfaceStyle];

    if (v15 == 2)
    {
      [(NSSArticleInternal *)v5 publisherLogoMaskImage];
    }

    else
    {
      [(NSSArticleInternal *)v5 publisherLogoImage];
    }
    v16 = ;
    v17 = [(NSSArticleView *)self publisherLogoImageView];
    [v17 setImage:v16];

    v18 = [(NSSArticleInternal *)v5 publishDate];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __29__NSSArticleView_setArticle___block_invoke;
    v21[3] = &unk_279980808;
    v21[4] = self;
    [v18 nss_gregorianDescriptionWithFlags:1 options:0 completion:v21];

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

- (double)calculateHeightForWidth:(double)a3
{
  v5 = [(NSSArticleView *)self thumbnailImageView];
  v6 = [v5 image];

  v7 = [(NSSArticleView *)self publisherLogoImageView];
  v8 = [v7 image];

  v9 = [(NSSArticleView *)self publisherLabel];
  v10 = [v9 text];

  v11 = [(NSSArticleView *)self titleLabel];
  v12 = [v11 text];

  v13 = [(NSSArticleView *)self excerptLabel];
  v14 = [v13 text];

  v15 = [(NSSArticleView *)self dateLabel];
  v16 = [v15 text];

  v17 = 16.0;
  v18 = a3 * 3.0 * 0.25 + 16.0;
  if (v6)
  {
    v19 = 18.0;
  }

  else
  {
    v19 = 0.0;
  }

  if (v6)
  {
    v20 = a3 * 3.0 * 0.25 + 16.0;
  }

  else
  {
    v20 = 16.0;
  }

  if (v8)
  {
    v17 = v19 + 16.0;
    v20 = v20 + v19 + 16.0;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_12;
    }

    v21 = [(NSSArticleView *)self publisherLabel:16.0];
    [v21 sizeToFit];

    v22 = [(NSSArticleView *)self publisherLabel];
    [v22 frame];
    v20 = v20 + v19 + CGRectGetHeight(v33);
  }

  v19 = 8.0;
LABEL_12:
  if (v12)
  {
    v23 = [(NSSArticleView *)self titleLabel:v17];
    [v23 sizeToFit];

    v24 = [(NSSArticleView *)self titleLabel];
    [v24 frame];
    v20 = v20 + v19 + CGRectGetHeight(v34);

    v19 = 5.0;
  }

  if (v14)
  {
    if (v6)
    {
      v25 = 2;
    }

    else
    {
      v25 = 8;
    }

    v26 = [(NSSArticleView *)self excerptLabel:v17];
    [v26 setNumberOfLines:v25];

    v27 = [(NSSArticleView *)self excerptLabel];
    [v27 setFrame:{0.0, 0.0, a3, 0.0}];

    v28 = [(NSSArticleView *)self excerptLabel];
    [v28 sizeToFit];

    v29 = [(NSSArticleView *)self excerptLabel];
    [v29 frame];
    v20 = v20 + v19 + CGRectGetHeight(v35);

    v19 = 8.0;
  }

  if (v16)
  {
    v30 = [(NSSArticleView *)self dateLabel:v17];
    [v30 sizeToFit];

    v31 = [(NSSArticleView *)self dateLabel];
    [v31 frame];
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
  v4 = [(NSSArticleView *)self thumbnailImageView];
  v5 = [v4 image];

  v6 = [(NSSArticleView *)self publisherLogoImageView];
  v7 = [v6 image];

  v8 = [(NSSArticleView *)self thumbnailContainerView];
  v9 = v8;
  if (v5)
  {
    [v8 setHidden:0];

    v10 = [(NSSArticleView *)self thumbnailContainerView];
    [v10 setFrame:{16.0, 16.0, v3, v3 * 3.0 * 0.25}];

    v11 = [(NSSArticleView *)self thumbnailContainerView];
    [v11 frame];
    v88 = CGRectIntegral(v87);
    x = v88.origin.x;
    y = v88.origin.y;
    width = v88.size.width;
    height = v88.size.height;
    v16 = [(NSSArticleView *)self thumbnailContainerView];
    [v16 setFrame:{x, y, width, height}];

    v17 = v3 * 3.0 * 0.25 + 16.0;
    v18 = 18.0;
  }

  else
  {
    [v8 setHidden:1];

    v19 = *MEMORY[0x277CBF3A0];
    v20 = *(MEMORY[0x277CBF3A0] + 8);
    v21 = *(MEMORY[0x277CBF3A0] + 16);
    v22 = *(MEMORY[0x277CBF3A0] + 24);
    v23 = [(NSSArticleView *)self thumbnailContainerView];
    [v23 setFrame:{v19, v20, v21, v22}];

    v17 = 16.0;
    v18 = 0.0;
  }

  if (v7)
  {
    v24 = [(NSSArticleView *)self publisherLogoImageView];
    [v24 setHidden:0];

    v25 = [(NSSArticleView *)self publisherLabel];
    [v25 setHidden:1];

    v26 = [(NSSArticleView *)self publisherLogoImageView];
    v27 = [v26 image];
    [v27 size];
    v29 = v28;
    v31 = v30;

    v32 = 16.0;
    v33 = [(NSSArticleView *)self publisherLogoImageView];
    v34 = v33;
    v35 = 16.0;
    v36 = 16.0;
    v37 = v18 + v17;
    v38 = v29 * 16.0 / v31;
  }

  else
  {
    v39 = [(NSSArticleView *)self publisherLabel];
    [v39 setHidden:0];

    v40 = [(NSSArticleView *)self publisherLogoImageView];
    [v40 setHidden:1];

    v41 = [(NSSArticleView *)self publisherLabel];
    [v41 setFrame:{0.0, 0.0, v3, 0.0}];

    v42 = [(NSSArticleView *)self publisherLabel];
    [v42 sizeToFit];

    v43 = [(NSSArticleView *)self publisherLabel];
    [v43 frame];
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
    v33 = [(NSSArticleView *)self publisherLabel];
    v34 = v33;
    v35 = v44;
    v37 = v45;
    v38 = v46;
    v36 = v47;
  }

  [v33 setFrame:{v35, v37, v38, v36}];

  v48 = v17 + v18 + v32;
  v49 = [(NSSArticleView *)self titleLabel];
  v50 = [v49 text];

  if (v50)
  {
    v51 = [(NSSArticleView *)self titleLabel];
    [v51 setFrame:{0.0, 0.0, v3, 0.0}];

    v52 = [(NSSArticleView *)self titleLabel];
    [v52 sizeToFit];

    v53 = [(NSSArticleView *)self titleLabel];
    [v53 frame];
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
    v59 = [(NSSArticleView *)self titleLabel];
    [v59 setFrame:{v55, v56, v57, v58}];

    v48 = v48 + v54 + 8.0;
    v60 = 5.0;
  }

  else
  {
    v60 = 8.0;
  }

  v61 = [(NSSArticleView *)self excerptLabel];
  v62 = [v61 text];

  if (v62)
  {
    if (v5)
    {
      v63 = 2;
    }

    else
    {
      v63 = 8;
    }

    v64 = [(NSSArticleView *)self excerptLabel];
    [v64 setNumberOfLines:v63];

    v65 = [(NSSArticleView *)self excerptLabel];
    [v65 setFrame:{0.0, 0.0, v3, 0.0}];

    v66 = [(NSSArticleView *)self excerptLabel];
    [v66 sizeToFit];

    v67 = [(NSSArticleView *)self excerptLabel];
    [v67 frame];
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
    v73 = [(NSSArticleView *)self excerptLabel];
    [v73 setFrame:{v69, v70, v71, v72}];

    v48 = v48 + v60 + v68;
    v60 = 8.0;
  }

  v74 = [(NSSArticleView *)self dateLabel];
  v75 = [v74 text];

  if (v75)
  {
    v76 = [(NSSArticleView *)self dateLabel];
    [v76 setFrame:{0.0, 0.0, v3, 0.0}];

    v77 = [(NSSArticleView *)self dateLabel];
    [v77 sizeToFit];

    v78 = [(NSSArticleView *)self dateLabel];
    [v78 frame];
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
    v84 = [(NSSArticleView *)self dateLabel];
    [v84 setFrame:{v80, v81, v82, v83}];
  }

  [(NSSArticleView *)self preferredSize];
  [(NSSArticleView *)self setPreferredSize:?];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NSSArticleView;
  [(NSSArticleView *)&v7 encodeWithCoder:v4];
  v5 = [(NSSArticleView *)self article];

  if (v5)
  {
    v6 = [(NSSArticleView *)self article];
    [v4 encodeObject:v6 forKey:@"article"];
  }
}

- (NSSArticleView)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NSSArticleView;
  v5 = [(NSSArticleView *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(NSSArticleView *)v5 _commonInit];
    v7 = [v4 decodeObjectForKey:@"article"];
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
  v12 = [MEMORY[0x277D75348] labelColor];
  [v11 setTextColor:v12];

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
  v21 = [v20 layer];
  [v21 setMasksToBounds:1];

  v22 = [v20 layer];
  [v22 setCornerRadius:8.0];

  [(NSSArticleView *)self addSubview:v20];
  [(NSSArticleView *)self setThumbnailContainerView:v20];
  v23 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
  [v23 setAutoresizingMask:18];
  [v23 setContentMode:2];
  [v20 addSubview:v23];
  [(NSSArticleView *)self setThumbnailImageView:v23];
  v24 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
  v25 = *MEMORY[0x277CDA630];
  v26 = [v24 layer];
  [v26 setMinificationFilter:v25];

  v27 = [v24 layer];
  [v27 setMagnificationFilter:v25];

  [v24 setAutoresizingMask:18];
  [v24 setContentMode:2];
  v28 = [MEMORY[0x277D75348] labelColor];
  [v24 setTintColor:v28];

  [(NSSArticleView *)self addSubview:v24];
  [(NSSArticleView *)self setPublisherLogoImageView:v24];
  [(NSSArticleView *)self _updateFonts];
}

- (void)_updateFonts
{
  v12 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:64 options:0];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] addingSymbolicTraits:2 options:0];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v12 size:0.0];
  v5 = [(NSSArticleView *)self titleLabel];
  [v5 setFont:v4];

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
  v7 = [(NSSArticleView *)self excerptLabel];
  [v7 setFont:v6];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  v9 = [(NSSArticleView *)self publisherLabel];
  [v9 setFont:v8];

  v10 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  v11 = [(NSSArticleView *)self dateLabel];
  [v11 setFont:v10];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSSArticleView;
  [(NSSArticleView *)&v6 traitCollectionDidChange:a3];
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
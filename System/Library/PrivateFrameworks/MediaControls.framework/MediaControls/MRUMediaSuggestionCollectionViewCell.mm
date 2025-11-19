@interface MRUMediaSuggestionCollectionViewCell
- (MRUMediaSuggestionCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setArtworkImage:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIconImage:(id)a3;
- (void)setLayout:(int64_t)a3;
- (void)setSelected:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateContentSizeCategory;
- (void)updateIconView;
- (void)updateVisiblity;
- (void)updateVisualStyling;
@end

@implementation MRUMediaSuggestionCollectionViewCell

- (MRUMediaSuggestionCollectionViewCell)initWithFrame:(CGRect)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = MRUMediaSuggestionCollectionViewCell;
  v3 = [(MRUMediaSuggestionCollectionViewCell *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MRUArtworkView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(MRUArtworkView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    artworkView = v3->_artworkView;
    v3->_artworkView = v9;

    v11 = [(MRUArtworkView *)v3->_artworkView pointerInteraction];
    [v11 setEnabled:1];

    [(MRUArtworkView *)v3->_artworkView setStyle:4];
    [(MRUArtworkView *)v3->_artworkView setUserInteractionEnabled:0];
    v12 = [(MRUMediaSuggestionCollectionViewCell *)v3 contentView];
    [v12 addSubview:v3->_artworkView];

    v13 = objc_alloc_init(MRUShadowView);
    iconShadowView = v3->_iconShadowView;
    v3->_iconShadowView = v13;

    v15 = [MEMORY[0x1E69DC888] blackColor];
    [(MRUShadowView *)v3->_iconShadowView setColor:v15];

    HIDWORD(v16) = 1070176665;
    *&v16 = 0.2;
    [(MRUShadowView *)v3->_iconShadowView setOpacity:v16];
    [(MRUMediaSuggestionCollectionViewCell *)v3 addSubview:v3->_iconShadowView];
    v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
    iconView = v3->_iconView;
    v3->_iconView = v17;

    [(UIImageView *)v3->_iconView setUserInteractionEnabled:0];
    [(UIImageView *)v3->_iconView setContentMode:1];
    [(UIImageView *)v3->_iconView setClipsToBounds:1];
    [(MRUMediaSuggestionCollectionViewCell *)v3 addSubview:v3->_iconView];
    v19 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityView = v3->_activityView;
    v3->_activityView = v19;

    [(MRUMediaSuggestionCollectionViewCell *)v3 addSubview:v3->_activityView];
    v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v21;

    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    v23 = [(MRUMediaSuggestionCollectionViewCell *)v3 contentView];
    [v23 addSubview:v3->_titleLabel];

    v24 = objc_alloc_init(MEMORY[0x1E698E7E0]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v24;

    [(BSUIEmojiLabelView *)v3->_subtitleLabel setNumberOfLines:1];
    [(BSUIEmojiLabelView *)v3->_subtitleLabel setTextAlignment:1];
    v26 = [(MRUMediaSuggestionCollectionViewCell *)v3 contentView];
    [v26 addSubview:v3->_subtitleLabel];

    v34[0] = objc_opt_class();
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v28 = [(MRUMediaSuggestionCollectionViewCell *)v3 registerForTraitChanges:v27 withAction:sel_updateVisualStyling];

    v33 = objc_opt_class();
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    v30 = [(MRUMediaSuggestionCollectionViewCell *)v3 registerForTraitChanges:v29 withAction:sel_updateContentSizeCategory];

    [(MRUMediaSuggestionCollectionViewCell *)v3 updateContentSizeCategory];
    [(MRUMediaSuggestionCollectionViewCell *)v3 updateIconView];
    [(MRUMediaSuggestionCollectionViewCell *)v3 updateVisiblity];
  }

  return v3;
}

- (void)layoutSubviews
{
  v60.receiver = self;
  v60.super_class = MRUMediaSuggestionCollectionViewCell;
  [(MRUMediaSuggestionCollectionViewCell *)&v60 layoutSubviews];
  [(MRUMediaSuggestionCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MRUArtworkView *)self->_artworkView sizeThatFits:v7, v9];
  v12 = v11;
  v14 = v13;
  v61.origin.x = v4;
  v61.origin.y = v6;
  v61.size.width = v8;
  v61.size.height = v10;
  MinX = CGRectGetMinX(v61);
  v62.origin.x = v4;
  v62.origin.y = v6;
  v62.size.width = v8;
  v62.size.height = v10;
  MinY = CGRectGetMinY(v62);
  v58 = v14;
  v59 = v12;
  [(MRUArtworkView *)self->_artworkView setFrame:MinX, MinY, v12, v14];
  [(UIActivityIndicatorView *)self->_activityView setFrame:MinX, MinY, v12, v14];
  [(MRUArtworkView *)self->_artworkView artworkFrame];
  [(MRUMediaSuggestionCollectionViewCell *)self convertRect:self->_artworkView fromView:?];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  MRUMediaSuggestionsIconSize(self->_layout);
  v63.origin.x = v17;
  v63.origin.y = v19;
  v63.size.width = v21;
  v63.size.height = v23;
  CGRectGetMaxX(v63);
  v64.origin.x = v17;
  v64.origin.y = v19;
  v64.size.width = v21;
  v64.size.height = v23;
  CGRectGetMaxY(v64);
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [(MRUShadowView *)self->_iconShadowView setFrame:?];
  [(UIImageView *)self->_iconView setFrame:v25, v27, v29, v31];
  v65.origin.y = MinY;
  v65.origin.x = MinX;
  v65.size.height = v58;
  v65.size.width = v59;
  CGRectGetHeight(v65);
  UIRectInset();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  [(UILabel *)self->_titleLabel sizeThatFits:v36, v38];
  MRUSizeCeilToViewScale(self);
  v41 = v40;
  v66.origin.x = v33;
  v66.origin.y = v35;
  v66.size.width = v37;
  v66.size.height = v39;
  v42 = CGRectGetMinX(v66);
  v67.origin.x = v33;
  v67.origin.y = v35;
  v67.size.width = v37;
  v67.size.height = v39;
  v43 = CGRectGetMinY(v67);
  v68.origin.x = v33;
  v68.origin.y = v35;
  v68.size.width = v37;
  v68.size.height = v39;
  Width = CGRectGetWidth(v68);
  [(UILabel *)self->_titleLabel setFrame:v42, v43, Width, v41];
  v69.origin.x = v42;
  v69.origin.y = v43;
  v69.size.width = Width;
  v69.size.height = v41;
  CGRectGetHeight(v69);
  UIRectInset();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  [(BSUIEmojiLabelView *)self->_subtitleLabel sizeThatFits:v49, v51];
  MRUSizeCeilToViewScale(self);
  v54 = v53;
  v70.origin.x = v46;
  v70.origin.y = v48;
  v70.size.width = v50;
  v70.size.height = v52;
  v55 = CGRectGetMinX(v70);
  v71.origin.x = v46;
  v71.origin.y = v48;
  v71.size.width = v50;
  v71.size.height = v52;
  v56 = CGRectGetMinY(v71);
  v72.origin.x = v46;
  v72.origin.y = v48;
  v72.size.width = v50;
  v72.size.height = v52;
  [(BSUIEmojiLabelView *)self->_subtitleLabel setFrame:v55, v56, CGRectGetWidth(v72), v54];
}

- (void)setArtworkImage:(id)a3
{
  objc_storeStrong(&self->_artworkImage, a3);
  v5 = a3;
  [(MRUArtworkView *)self->_artworkView setArtworkImage:v5];

  [(MRUMediaSuggestionCollectionViewCell *)self setNeedsLayout];
}

- (void)setIconImage:(id)a3
{
  objc_storeStrong(&self->_iconImage, a3);
  v5 = a3;
  [(UIImageView *)self->_iconView setImage:v5];

  [(MRUMediaSuggestionCollectionViewCell *)self setNeedsLayout];

  [(MRUMediaSuggestionCollectionViewCell *)self updateVisiblity];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(UILabel *)self->_titleLabel setText:v5];

  [(MRUMediaSuggestionCollectionViewCell *)self setNeedsLayout];
}

- (void)setSubtitle:(id)a3
{
  objc_storeStrong(&self->_subtitle, a3);
  v5 = a3;
  [(BSUIEmojiLabelView *)self->_subtitleLabel setText:v5];

  [(MRUMediaSuggestionCollectionViewCell *)self setNeedsLayout];
}

- (void)setStylingProvider:(id)a3
{
  objc_storeStrong(&self->_stylingProvider, a3);
  v5 = a3;
  [(MRUMediaSuggestionCollectionViewCell *)self updateVisualStyling];
  v6 = [(MRUMediaSuggestionCollectionViewCell *)self artworkView];
  [v6 setStylingProvider:v5];
}

- (void)setLayout:(int64_t)a3
{
  if (self->_layout != a3)
  {
    v9 = v3;
    self->_layout = a3;
    if (a3 == 1)
    {
      v8 = 5;
    }

    else
    {
      v8 = 4;
    }

    [(MRUArtworkView *)self->_artworkView setStyle:v8, v4, v9, v5];

    [(MRUMediaSuggestionCollectionViewCell *)self updateIconView];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRUMediaSuggestionCollectionViewCell;
  [(MRUMediaSuggestionCollectionViewCell *)&v4 setHighlighted:a3];
  [(MRUMediaSuggestionCollectionViewCell *)self updateVisiblity];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRUMediaSuggestionCollectionViewCell;
  [(MRUMediaSuggestionCollectionViewCell *)&v4 setSelected:a3];
  [(MRUMediaSuggestionCollectionViewCell *)self updateVisiblity];
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  titleLabel = self->_titleLabel;
  v5 = [(MRUMediaSuggestionCollectionViewCell *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:titleLabel traitCollection:v5];

  v6 = self->_stylingProvider;
  subtitleLabel = self->_subtitleLabel;
  v8 = [(MRUMediaSuggestionCollectionViewCell *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:1 toView:subtitleLabel traitCollection:v8];

  v9 = self->_stylingProvider;
  v11 = [(MRUMediaSuggestionCollectionViewCell *)self traitCollection];
  v10 = [(MRUVisualStylingProvider *)v9 colorForStyle:0 traitCollection:v11];
  [(UIActivityIndicatorView *)self->_activityView setColor:v10];
}

- (void)updateContentSizeCategory
{
  v3 = [MEMORY[0x1E69DB878] mru_suggestionsTitleFont];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = [MEMORY[0x1E69DB878] mru_suggestionsSubtitleFont];
  [(BSUIEmojiLabelView *)self->_subtitleLabel setFont:v4];

  [(MRUMediaSuggestionCollectionViewCell *)self setNeedsLayout];
}

- (void)updateIconView
{
  v3 = MRUMediaSuggestionsIconCornerRadius(self->_layout);
  [(UIImageView *)self->_iconView _setContinuousCornerRadius:?];
  [(MRUShadowView *)self->_iconShadowView _setContinuousCornerRadius:v3];
  [(MRUShadowView *)self->_iconShadowView setOffset:MRUMediaSuggestionsIconShadowOffset()];
  v4 = MRUMediaSuggestionsIconShadowRadius(self->_layout);
  iconShadowView = self->_iconShadowView;

  [(MRUShadowView *)iconShadowView setRadius:v4];
}

- (void)updateVisiblity
{
  if (self->_iconImage)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [(MRUShadowView *)self->_iconShadowView setAlpha:v3];
  if (self->_iconImage)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [(UIImageView *)self->_iconView setAlpha:v4];
  if (([(MRUMediaSuggestionCollectionViewCell *)self isHighlighted]& 1) != 0)
  {
    goto LABEL_10;
  }

  v5 = [(MRUMediaSuggestionCollectionViewCell *)self isSelected];
  activityView = self->_activityView;
  if (v5)
  {
    [(UIActivityIndicatorView *)activityView startAnimating];
LABEL_10:
    v7 = 1;
    goto LABEL_12;
  }

  [(UIActivityIndicatorView *)activityView stopAnimating];
  v7 = 0;
LABEL_12:
  artworkView = self->_artworkView;

  [(MRUArtworkView *)artworkView setHighlighted:v7];
}

@end
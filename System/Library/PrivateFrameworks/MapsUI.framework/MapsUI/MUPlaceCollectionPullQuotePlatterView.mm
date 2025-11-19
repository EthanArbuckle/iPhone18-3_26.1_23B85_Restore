@interface MUPlaceCollectionPullQuotePlatterView
- (CGSize)intrinsicContentSize;
- (MUPlaceCollectionPullQuotePlatterView)initWithFrame:(CGRect)a3;
- (MUPlaceCollectionPullQuotePlatterViewDelegate)delegate;
- (void)_contentSizeDidChange;
- (void)_didSelectCollection;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)setViewModel:(id)a3;
@end

@implementation MUPlaceCollectionPullQuotePlatterView

- (MUPlaceCollectionPullQuotePlatterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  v3 = 307.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)_contentSizeDidChange
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(MUExpandingLabel *)self->_pullQuoteView setFont:v3];
}

- (void)_didSelectCollection
{
  v3 = [(MUPlaceCollectionPullQuotePlatterView *)self delegate];
  [v3 pullQuoteViewDidTapMore:self];
}

- (void)_updateAppearance
{
  v3 = [(MUPlaceCollectionPullQuoteViewModel *)self->_viewModel plainTextDescription];
  [(MUExpandingLabel *)self->_pullQuoteView setText:v3];

  viewModel = self->_viewModel;
  collectionSummaryView = self->_collectionSummaryView;

  [(MUCuratedCollectionSummaryView *)collectionSummaryView setViewModel:viewModel];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (([(MUPlaceCollectionPullQuoteViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(MUPlaceCollectionPullQuotePlatterView *)self _updateAppearance];
  }
}

- (void)_setupConstraints
{
  v27[7] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696ACD8];
  v26 = [(MUPullQuoteView *)self->_pullQuoteView leadingAnchor];
  v25 = [(MUPlaceCollectionPullQuotePlatterView *)self leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:16.0];
  v27[0] = v24;
  v23 = [(MUPullQuoteView *)self->_pullQuoteView trailingAnchor];
  v22 = [(MUPlaceCollectionPullQuotePlatterView *)self trailingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22 constant:-16.0];
  v27[1] = v21;
  v20 = [(MUPullQuoteView *)self->_pullQuoteView topAnchor];
  v19 = [(MUPlaceCollectionPullQuotePlatterView *)self topAnchor];
  v17 = [v20 constraintEqualToAnchor:v19 constant:14.0];
  v27[2] = v17;
  v16 = [(MUPullQuoteView *)self->_pullQuoteView bottomAnchor];
  v15 = [(MUCuratedCollectionSummaryView *)self->_collectionSummaryView topAnchor];
  v14 = [v16 constraintLessThanOrEqualToAnchor:v15 constant:-14.0];
  v27[3] = v14;
  v3 = [(MUCuratedCollectionSummaryView *)self->_collectionSummaryView leadingAnchor];
  v4 = [(MUPlaceCollectionPullQuotePlatterView *)self leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:16.0];
  v27[4] = v5;
  v6 = [(MUCuratedCollectionSummaryView *)self->_collectionSummaryView trailingAnchor];
  v7 = [(MUPlaceCollectionPullQuotePlatterView *)self trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-16.0];
  v27[5] = v8;
  v9 = [(MUCuratedCollectionSummaryView *)self->_collectionSummaryView bottomAnchor];
  v10 = [(MUPlaceCollectionPullQuotePlatterView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-14.0];
  v27[6] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:7];
  [v18 activateConstraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = [MUCuratedCollectionSummaryView alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(MUCuratedCollectionSummaryView *)v3 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  collectionSummaryView = self->_collectionSummaryView;
  self->_collectionSummaryView = v8;

  [(MUCuratedCollectionSummaryView *)self->_collectionSummaryView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlaceCollectionPullQuotePlatterView *)self addSubview:self->_collectionSummaryView];
  v10 = [(MUExpandingLabel *)[MUPullQuoteView alloc] initWithFrame:v4, v5, v6, v7];
  pullQuoteView = self->_pullQuoteView;
  self->_pullQuoteView = v10;

  [(MUPullQuoteView *)self->_pullQuoteView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(MUExpandingLabel *)self->_pullQuoteView setFont:v12];

  v13 = +[MUInfoCardStyle textColor];
  [(MUExpandingLabel *)self->_pullQuoteView setTextColor:v13];

  v14 = +[MUInfoCardStyle buttonCellTextColor];
  [(MUExpandingLabel *)self->_pullQuoteView setShowMoreTextColor:v14];

  v15 = _MULocalizedStringFromThisBundle(@"More [Placecard]");
  [(MUExpandingLabel *)self->_pullQuoteView setShowMoreText:v15];

  [(MUExpandingLabel *)self->_pullQuoteView setNumberOfLinesWhenCollapsed:4];
  [(MUPullQuoteView *)self->_pullQuoteView setUserInteractionEnabled:0];
  [(MUPlaceCollectionPullQuotePlatterView *)self addSubview:self->_pullQuoteView];
  v16 = objc_alloc_init(MEMORY[0x1E69DD060]);
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v16;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer addTarget:self action:sel__didSelectCollection];
  [(MUPlaceCollectionPullQuotePlatterView *)self addGestureRecognizer:self->_tapGestureRecognizer];
  [(UIView *)self _mapsui_addSelectGestureRecognizerWithTarget:self action:sel__didSelectCollection];
  v18 = objc_opt_self();
  v22[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v20 = [(MUPlaceCollectionPullQuotePlatterView *)self registerForTraitChanges:v19 withAction:sel__contentSizeDidChange];

  v21 = *MEMORY[0x1E69E9840];
}

- (MUPlaceCollectionPullQuotePlatterView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUPlaceCollectionPullQuotePlatterView;
  v3 = [(MUPlaceCollectionPullQuotePlatterView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceCollectionPullQuotePlatterView *)v3 _setupSubviews];
    [(MUPlaceCollectionPullQuotePlatterView *)v4 _setupConstraints];
    [(MUPlaceCollectionPullQuotePlatterView *)v4 setAccessibilityIdentifier:@"PlaceCollectionPullQuotePlatter"];
  }

  return v4;
}

@end
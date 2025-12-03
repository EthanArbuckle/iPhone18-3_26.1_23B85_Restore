@interface SFStartPageBackgroundImageCell
- (SFStartPageBackgroundImageCell)initWithFrame:(CGRect)frame;
- (SFStartPageBackgroundImageCellDelegate)delegate;
- (id)_downloadImageForState:(int64_t)state;
- (void)didSelectClearButton:(id)button;
- (void)setDownloadState:(int64_t)state;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)tintColorDidChange;
- (void)updateSelectionIndicatorColor;
@end

@implementation SFStartPageBackgroundImageCell

- (SFStartPageBackgroundImageCell)initWithFrame:(CGRect)frame
{
  v65[2] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = SFStartPageBackgroundImageCell;
  v3 = [(SFStartPageBackgroundImageCell *)&v62 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFStartPageBackgroundImageCell *)v3 setTintAdjustmentMode:1];
    contentView = [(SFStartPageBackgroundImageCell *)v4 contentView];
    [contentView _setContinuousCornerRadius:10.0];
    [contentView setAccessibilityIdentifier:@"ChooseBackgroundButton"];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [contentView setBackgroundColor:systemBackgroundColor];

    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [contentView bounds];
    v8 = [v7 initWithFrame:?];
    imageView = v4->_imageView;
    v4->_imageView = v8;

    [(UIImageView *)v4->_imageView _setContinuousCornerRadius:10.0];
    [(UIImageView *)v4->_imageView setAutoresizingMask:18];
    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [(UIImageView *)v4->_imageView setBackgroundColor:tertiarySystemFillColor];

    [(UIImageView *)v4->_imageView setClipsToBounds:1];
    v11 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8]];
    [(UIImageView *)v4->_imageView setPreferredSymbolConfiguration:v11];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v4->_imageView setTintColor:labelColor];

    [contentView addSubview:v4->_imageView];
    v13 = objc_alloc(MEMORY[0x1E69DD250]);
    [contentView bounds];
    v14 = [v13 initWithFrame:?];
    highlightView = v4->_highlightView;
    v4->_highlightView = v14;

    [(UIView *)v4->_highlightView _setContinuousCornerRadius:10.0];
    [(UIView *)v4->_highlightView setAlpha:0.0];
    [(UIView *)v4->_highlightView setAutoresizingMask:18];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v4->_highlightView setBackgroundColor:blackColor];

    [(UIView *)v4->_highlightView setClipsToBounds:1];
    [(UIView *)v4->_highlightView setUserInteractionEnabled:0];
    [contentView addSubview:v4->_highlightView];
    v17 = [[SFCloseButton alloc] initWithStyle:1 primaryAction:0];
    clearButton = v4->_clearButton;
    v4->_clearButton = &v17->super;

    [(UIButton *)v4->_clearButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_clearButton setAccessibilityIdentifier:@"ClearBackgroundButton"];
    [(UIButton *)v4->_clearButton addTarget:v4 action:sel_didSelectClearButton_ forControlEvents:0x2000];
    [contentView addSubview:v4->_clearButton];
    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    [contentView bounds];
    v20 = [v19 initWithFrame:?];
    selectionIndicator = v4->_selectionIndicator;
    v4->_selectionIndicator = v20;

    [(UIView *)v4->_selectionIndicator _setContinuousCornerRadius:10.0];
    [(UIView *)v4->_selectionIndicator setAutoresizingMask:18];
    v22 = _SFRoundFloatToPixels(2.5);
    layer = [(UIView *)v4->_selectionIndicator layer];
    [layer setBorderWidth:v22];

    [(UIView *)v4->_selectionIndicator setUserInteractionEnabled:0];
    v61 = contentView;
    [contentView addSubview:v4->_selectionIndicator];
    v24 = objc_alloc_init(MEMORY[0x1E69DC638]);
    downloadProgressIndicator = v4->_downloadProgressIndicator;
    v4->_downloadProgressIndicator = v24;

    [(UIActivityIndicatorView *)v4->_downloadProgressIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v4->_downloadProgressIndicator setActivityIndicatorViewStyle:100];
    [(UIActivityIndicatorView *)v4->_downloadProgressIndicator setHidesWhenStopped:1];
    [contentView addSubview:v4->_downloadProgressIndicator];
    v59 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIActivityIndicatorView *)v4->_downloadProgressIndicator centerXAnchor];
    contentView2 = [(SFStartPageBackgroundImageCell *)v4 contentView];
    centerXAnchor2 = [contentView2 centerXAnchor];
    v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v65[0] = v29;
    centerYAnchor = [(UIActivityIndicatorView *)v4->_downloadProgressIndicator centerYAnchor];
    contentView3 = [(SFStartPageBackgroundImageCell *)v4 contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v33 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v65[1] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    [v59 activateConstraints:v34];

    v35 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    downloadButtonImage = v4->_downloadButtonImage;
    v4->_downloadButtonImage = v35;

    [(UIImageView *)v4->_downloadButtonImage setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v4->_downloadButtonImage setTintColor:secondaryLabelColor];

    [v61 addSubview:v4->_downloadButtonImage];
    v60 = MEMORY[0x1E696ACD8];
    centerXAnchor3 = [(UIImageView *)v4->_downloadButtonImage centerXAnchor];
    contentView4 = [(SFStartPageBackgroundImageCell *)v4 contentView];
    centerXAnchor4 = [contentView4 centerXAnchor];
    v41 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v64[0] = v41;
    centerYAnchor3 = [(UIImageView *)v4->_downloadButtonImage centerYAnchor];
    contentView5 = [(SFStartPageBackgroundImageCell *)v4 contentView];
    centerYAnchor4 = [contentView5 centerYAnchor];
    v45 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v64[1] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    [v60 activateConstraints:v46];

    v47 = MEMORY[0x1E696ACD8];
    trailingAnchor = [(UIButton *)v4->_clearButton trailingAnchor];
    trailingAnchor2 = [v61 trailingAnchor];
    v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
    v63[0] = v50;
    topAnchor = [(UIButton *)v4->_clearButton topAnchor];
    topAnchor2 = [v61 topAnchor];
    v53 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v63[1] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
    [v47 activateConstraints:v54];

    [(SFStartPageBackgroundImageCell *)v4 setShowsCustomImageControls:0];
    [(SFStartPageBackgroundImageCell *)v4 setShowsSelectionRing:0];
    v4->_downloadState = 2;
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v56 = [(SFStartPageBackgroundImageCell *)v4 registerForTraitChanges:systemTraitsAffectingColorAppearance withTarget:v4 action:sel_updateSelectionIndicatorColor];

    v57 = v4;
  }

  return v4;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SFStartPageBackgroundImageCell;
  [(SFStartPageBackgroundImageCell *)&v3 tintColorDidChange];
  [(SFStartPageBackgroundImageCell *)self updateSelectionIndicatorColor];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = SFStartPageBackgroundImageCell;
  [(SFStartPageBackgroundImageCell *)&v6 setHighlighted:?];
  v5 = 0.2;
  if (!highlightedCopy)
  {
    v5 = 0.0;
  }

  [(UIView *)self->_highlightView setAlpha:v5];
}

- (void)updateSelectionIndicatorColor
{
  tintColor = [(SFStartPageBackgroundImageCell *)self tintColor];
  traitCollection = [(SFStartPageBackgroundImageCell *)self traitCollection];
  v4 = [tintColor resolvedColorWithTraitCollection:traitCollection];
  cGColor = [v4 CGColor];
  layer = [(UIView *)self->_selectionIndicator layer];
  [layer setBorderColor:cGColor];
}

- (void)didSelectClearButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained backgroundImageCellDidSelectClearButton:self];
  }
}

- (void)setImage:(id)image
{
  imageView = self->_imageView;
  imageCopy = image;
  [(UIImageView *)imageView setImage:imageCopy];
  LODWORD(imageView) = [imageCopy _isSymbolImage];

  if (imageView)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  v7 = self->_imageView;

  [(UIImageView *)v7 setContentMode:v6];
}

- (void)setDownloadState:(int64_t)state
{
  downloadProgressIndicator = self->_downloadProgressIndicator;
  if (state == 1)
  {
    [(UIActivityIndicatorView *)downloadProgressIndicator startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)downloadProgressIndicator stopAnimating];
  }

  v6 = [(SFStartPageBackgroundImageCell *)self _downloadImageForState:state];
  [(UIImageView *)self->_downloadButtonImage setImage:v6];

  self->_downloadState = state;
}

- (id)_downloadImageForState:(int64_t)state
{
  v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:25.0];
  if (!state)
  {
    v5 = @"square.and.arrow.down";
    goto LABEL_5;
  }

  if (state == 3)
  {
    v5 = @"exclamationmark.icloud.fill";
LABEL_5:
    v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v5 withConfiguration:v4];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (SFStartPageBackgroundImageCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
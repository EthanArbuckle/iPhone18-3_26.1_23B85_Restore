@interface SFStartPageBackgroundImageCell
- (SFStartPageBackgroundImageCell)initWithFrame:(CGRect)a3;
- (SFStartPageBackgroundImageCellDelegate)delegate;
- (id)_downloadImageForState:(int64_t)a3;
- (void)didSelectClearButton:(id)a3;
- (void)setDownloadState:(int64_t)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)tintColorDidChange;
- (void)updateSelectionIndicatorColor;
@end

@implementation SFStartPageBackgroundImageCell

- (SFStartPageBackgroundImageCell)initWithFrame:(CGRect)a3
{
  v65[2] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = SFStartPageBackgroundImageCell;
  v3 = [(SFStartPageBackgroundImageCell *)&v62 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFStartPageBackgroundImageCell *)v3 setTintAdjustmentMode:1];
    v5 = [(SFStartPageBackgroundImageCell *)v4 contentView];
    [v5 _setContinuousCornerRadius:10.0];
    [v5 setAccessibilityIdentifier:@"ChooseBackgroundButton"];
    v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v5 setBackgroundColor:v6];

    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [v5 bounds];
    v8 = [v7 initWithFrame:?];
    imageView = v4->_imageView;
    v4->_imageView = v8;

    [(UIImageView *)v4->_imageView _setContinuousCornerRadius:10.0];
    [(UIImageView *)v4->_imageView setAutoresizingMask:18];
    v10 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [(UIImageView *)v4->_imageView setBackgroundColor:v10];

    [(UIImageView *)v4->_imageView setClipsToBounds:1];
    v11 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8]];
    [(UIImageView *)v4->_imageView setPreferredSymbolConfiguration:v11];

    v12 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v4->_imageView setTintColor:v12];

    [v5 addSubview:v4->_imageView];
    v13 = objc_alloc(MEMORY[0x1E69DD250]);
    [v5 bounds];
    v14 = [v13 initWithFrame:?];
    highlightView = v4->_highlightView;
    v4->_highlightView = v14;

    [(UIView *)v4->_highlightView _setContinuousCornerRadius:10.0];
    [(UIView *)v4->_highlightView setAlpha:0.0];
    [(UIView *)v4->_highlightView setAutoresizingMask:18];
    v16 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v4->_highlightView setBackgroundColor:v16];

    [(UIView *)v4->_highlightView setClipsToBounds:1];
    [(UIView *)v4->_highlightView setUserInteractionEnabled:0];
    [v5 addSubview:v4->_highlightView];
    v17 = [[SFCloseButton alloc] initWithStyle:1 primaryAction:0];
    clearButton = v4->_clearButton;
    v4->_clearButton = &v17->super;

    [(UIButton *)v4->_clearButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_clearButton setAccessibilityIdentifier:@"ClearBackgroundButton"];
    [(UIButton *)v4->_clearButton addTarget:v4 action:sel_didSelectClearButton_ forControlEvents:0x2000];
    [v5 addSubview:v4->_clearButton];
    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    [v5 bounds];
    v20 = [v19 initWithFrame:?];
    selectionIndicator = v4->_selectionIndicator;
    v4->_selectionIndicator = v20;

    [(UIView *)v4->_selectionIndicator _setContinuousCornerRadius:10.0];
    [(UIView *)v4->_selectionIndicator setAutoresizingMask:18];
    v22 = _SFRoundFloatToPixels(2.5);
    v23 = [(UIView *)v4->_selectionIndicator layer];
    [v23 setBorderWidth:v22];

    [(UIView *)v4->_selectionIndicator setUserInteractionEnabled:0];
    v61 = v5;
    [v5 addSubview:v4->_selectionIndicator];
    v24 = objc_alloc_init(MEMORY[0x1E69DC638]);
    downloadProgressIndicator = v4->_downloadProgressIndicator;
    v4->_downloadProgressIndicator = v24;

    [(UIActivityIndicatorView *)v4->_downloadProgressIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v4->_downloadProgressIndicator setActivityIndicatorViewStyle:100];
    [(UIActivityIndicatorView *)v4->_downloadProgressIndicator setHidesWhenStopped:1];
    [v5 addSubview:v4->_downloadProgressIndicator];
    v59 = MEMORY[0x1E696ACD8];
    v26 = [(UIActivityIndicatorView *)v4->_downloadProgressIndicator centerXAnchor];
    v27 = [(SFStartPageBackgroundImageCell *)v4 contentView];
    v28 = [v27 centerXAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v65[0] = v29;
    v30 = [(UIActivityIndicatorView *)v4->_downloadProgressIndicator centerYAnchor];
    v31 = [(SFStartPageBackgroundImageCell *)v4 contentView];
    v32 = [v31 centerYAnchor];
    v33 = [v30 constraintEqualToAnchor:v32];
    v65[1] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    [v59 activateConstraints:v34];

    v35 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    downloadButtonImage = v4->_downloadButtonImage;
    v4->_downloadButtonImage = v35;

    [(UIImageView *)v4->_downloadButtonImage setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v4->_downloadButtonImage setTintColor:v37];

    [v61 addSubview:v4->_downloadButtonImage];
    v60 = MEMORY[0x1E696ACD8];
    v38 = [(UIImageView *)v4->_downloadButtonImage centerXAnchor];
    v39 = [(SFStartPageBackgroundImageCell *)v4 contentView];
    v40 = [v39 centerXAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    v64[0] = v41;
    v42 = [(UIImageView *)v4->_downloadButtonImage centerYAnchor];
    v43 = [(SFStartPageBackgroundImageCell *)v4 contentView];
    v44 = [v43 centerYAnchor];
    v45 = [v42 constraintEqualToAnchor:v44];
    v64[1] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    [v60 activateConstraints:v46];

    v47 = MEMORY[0x1E696ACD8];
    v48 = [(UIButton *)v4->_clearButton trailingAnchor];
    v49 = [v61 trailingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:-5.0];
    v63[0] = v50;
    v51 = [(UIButton *)v4->_clearButton topAnchor];
    v52 = [v61 topAnchor];
    v53 = [v51 constraintEqualToAnchor:v52 constant:5.0];
    v63[1] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
    [v47 activateConstraints:v54];

    [(SFStartPageBackgroundImageCell *)v4 setShowsCustomImageControls:0];
    [(SFStartPageBackgroundImageCell *)v4 setShowsSelectionRing:0];
    v4->_downloadState = 2;
    v55 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v56 = [(SFStartPageBackgroundImageCell *)v4 registerForTraitChanges:v55 withTarget:v4 action:sel_updateSelectionIndicatorColor];

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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SFStartPageBackgroundImageCell;
  [(SFStartPageBackgroundImageCell *)&v6 setHighlighted:?];
  v5 = 0.2;
  if (!v3)
  {
    v5 = 0.0;
  }

  [(UIView *)self->_highlightView setAlpha:v5];
}

- (void)updateSelectionIndicatorColor
{
  v7 = [(SFStartPageBackgroundImageCell *)self tintColor];
  v3 = [(SFStartPageBackgroundImageCell *)self traitCollection];
  v4 = [v7 resolvedColorWithTraitCollection:v3];
  v5 = [v4 CGColor];
  v6 = [(UIView *)self->_selectionIndicator layer];
  [v6 setBorderColor:v5];
}

- (void)didSelectClearButton:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained backgroundImageCellDidSelectClearButton:self];
  }
}

- (void)setImage:(id)a3
{
  imageView = self->_imageView;
  v5 = a3;
  [(UIImageView *)imageView setImage:v5];
  LODWORD(imageView) = [v5 _isSymbolImage];

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

- (void)setDownloadState:(int64_t)a3
{
  downloadProgressIndicator = self->_downloadProgressIndicator;
  if (a3 == 1)
  {
    [(UIActivityIndicatorView *)downloadProgressIndicator startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)downloadProgressIndicator stopAnimating];
  }

  v6 = [(SFStartPageBackgroundImageCell *)self _downloadImageForState:a3];
  [(UIImageView *)self->_downloadButtonImage setImage:v6];

  self->_downloadState = a3;
}

- (id)_downloadImageForState:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:25.0];
  if (!a3)
  {
    v5 = @"square.and.arrow.down";
    goto LABEL_5;
  }

  if (a3 == 3)
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
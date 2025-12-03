@interface CKMomentShareStatusBalloonView
+ (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)_performLayoutInSize:(CGSize)size updateSubviewFrames:(BOOL)frames;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKMomentShareStatusBalloonView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CKMomentShareStatusBalloonView

- (CKMomentShareStatusBalloonView)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = CKMomentShareStatusBalloonView;
  v3 = [(CKColoredBalloonView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXMessagesPlaceholderIcon"];
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v5;

    [(UIImageView *)v3->_iconImageView setContentMode:1];
    [(UIImageView *)v3->_iconImageView _setContinuousCornerRadius:10.0];
    [(UIImageView *)v3->_iconImageView setClipsToBounds:1];
    [(CKMomentShareStatusBalloonView *)v3 addSubview:v3->_iconImageView];
    v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08]];
    v8 = [v7 fontDescriptorWithSymbolicTraits:2];

    v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v3->_primaryLabel;
    v3->_primaryLabel = v10;

    v12 = v3->_primaryLabel;
    v13 = CKFrameworkBundle();
    v14 = [v13 localizedStringForKey:@"CKMomentShareStatusBalloonViewTitle" value:&stru_1F04268F8 table:@"ChatKit"];
    [(UILabel *)v12 setText:v14];

    [(UILabel *)v3->_primaryLabel setFont:v9];
    [(UILabel *)v3->_primaryLabel setNumberOfLines:0];
    [(CKMomentShareStatusBalloonView *)v3 addSubview:v3->_primaryLabel];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v3->_secondaryLabel;
    v3->_secondaryLabel = v15;

    v17 = v3->_secondaryLabel;
    _secondaryLabelString = [objc_opt_class() _secondaryLabelString];
    [(UILabel *)v17 setText:_secondaryLabelString];

    [(UILabel *)v3->_secondaryLabel setFont:v9];
    [(UILabel *)v3->_secondaryLabel setNumberOfLines:0];
    v19 = v3->_secondaryLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v19 setTextColor:secondaryLabelColor];

    [(CKMomentShareStatusBalloonView *)v3 addSubview:v3->_secondaryLabel];
  }

  return v3;
}

+ (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CKMomentShareStatusBalloonView_sizeThatFits___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sizeThatFits__predicate != -1)
  {
    dispatch_once(&sizeThatFits__predicate, block);
  }

  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (width > 0.0 && height > 0.0)
  {
    [sizeThatFits___measurementView setFrame:{0.0, 0.0, width, height}];
    [sizeThatFits___measurementView sizeThatFits:{width, height}];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

void __47__CKMomentShareStatusBalloonView_sizeThatFits___block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = [v1 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v3 = sizeThatFits___measurementView;
  sizeThatFits___measurementView = v2;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CKMomentShareStatusBalloonView *)self _performLayoutInSize:0 updateSubviewFrames:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKMomentShareStatusBalloonView;
  [(CKColoredBalloonView *)&v5 layoutSubviews];
  [(CKMomentShareStatusBalloonView *)self bounds];
  [(CKMomentShareStatusBalloonView *)self _performLayoutInSize:1 updateSubviewFrames:v3, v4];
}

- (CGSize)_performLayoutInSize:(CGSize)size updateSubviewFrames:(BOOL)frames
{
  framesCopy = frames;
  v6 = +[CKUIBehavior sharedBehaviors];
  [(CKColoredBalloonView *)self balloonDescriptor];
  [v6 balloonMaskTailSizeForTailShape:v53];
  v8 = v7;

  orientation = [(CKBalloonView *)self orientation];
  v10 = v8 + 10.0;
  if (orientation)
  {
    v11 = 10.0;
  }

  else
  {
    v11 = v8 + 10.0;
  }

  if (orientation)
  {
    v12 = v10;
  }

  else
  {
    v12 = 10.0;
  }

  v52 = v12;
  PXEdgeInsetsInsetSize();
  v14 = v13;
  v16 = v15;
  v55.origin.y = 10.0;
  v55.origin.x = v11;
  v55.size.width = 50.0;
  v55.size.height = 50.0;
  v17 = fmax(v11, CGRectGetMaxX(v55));
  v56.origin.y = 10.0;
  v48 = v11;
  v56.origin.x = v11;
  v56.size.width = 50.0;
  v56.size.height = 50.0;
  v44 = fmax(CGRectGetMaxY(v56), 10.0);
  v42 = v14;
  [(UILabel *)self->_primaryLabel sizeThatFits:v14 + -60.0, v16];
  v19 = v18;
  v21 = v20;
  v41 = v16;
  [(UILabel *)self->_secondaryLabel sizeThatFits:v14 + -60.0, v16];
  v23 = v22;
  v25 = v24;
  v51 = v17;
  v26 = v17 + 10.0;
  v57.origin.y = 10.0;
  v57.origin.x = v17 + 10.0;
  v57.size.width = v19;
  v57.size.height = v21;
  MaxX = CGRectGetMaxX(v57);
  v58.origin.x = v17 + 10.0;
  v58.origin.y = v21 + 10.0 + 5.0;
  v58.size.width = v23;
  v58.size.height = v25;
  v46 = CGRectGetMaxX(v58);
  v59.origin.y = 10.0;
  v59.origin.x = v17 + 10.0;
  v50 = v19;
  v59.size.width = v19;
  v49 = v21;
  v59.size.height = v21;
  MaxY = CGRectGetMaxY(v59);
  v60.origin.x = v26;
  v60.origin.y = v21 + 10.0 + 5.0;
  v60.size.width = v23;
  v60.size.height = v25;
  v45 = fmax(v44, fmax(MaxY, CGRectGetMaxY(v60)));
  traitCollection = [(CKMomentShareStatusBalloonView *)self traitCollection];
  [traitCollection displayScale];
  if (v29 == 0.0)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
  }

  PXFloatFloorToPixel();
  rect = fmax(v31 + 10.0, 10.0);
  PXFloatFloorToPixel();
  v33 = v32 + 10.0 + -10.0;
  if (v33 <= 0.0)
  {
    v34 = v21 + 10.0 + 5.0;
  }

  else
  {
    v34 = v21 + 10.0 + 5.0 + v33;
  }

  if (v33 <= 0.0)
  {
    v35 = 10.0;
  }

  else
  {
    v35 = v33 + 10.0;
  }

  v36 = v26;
  v37 = v48;
  if ([(CKMomentShareStatusBalloonView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v61.origin.y = 10.0;
    v61.origin.x = v48;
    v61.size.height = v41;
    v61.size.width = v42;
    v37 = CGRectGetMaxX(v61) + -50.0;
    v62.size.width = 50.0;
    v62.origin.x = v37;
    v62.origin.y = rect;
    v62.size.height = 50.0;
    v38 = CGRectGetMinX(v62) + -10.0;
    v36 = v38 - v50;
    v26 = v38 - v23;
  }

  if (framesCopy)
  {
    [(UIImageView *)self->_iconImageView setFrame:v37, rect, 50.0, 50.0];
    [(UILabel *)self->_primaryLabel setFrame:v36, v35, v50, v49];
    [(UILabel *)self->_secondaryLabel setFrame:v26, v34, v23, v25];
  }

  v39 = v52 + fmax(v51, fmax(MaxX, v46));
  v40 = v45 + 10.0;
  result.height = v40;
  result.width = v39;
  return result;
}

@end
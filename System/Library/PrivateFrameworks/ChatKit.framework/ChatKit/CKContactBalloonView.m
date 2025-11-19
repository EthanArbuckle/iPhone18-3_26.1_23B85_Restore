@interface CKContactBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKContactBalloonView)initWithFrame:(CGRect)a3;
- (NSString)description;
- (id)_truncateNameIfNeeded:(id)a3;
- (id)traitMutationsForSnapshotRendering;
- (void)configureForComposition:(id)a3;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5;
- (void)configureForMessagePart:(id)a3;
- (void)insertHighlightOverlayLayer:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setMediaObject:(id)a3;
@end

@implementation CKContactBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5
{
  v5 = a5;
  v9.receiver = self;
  v9.super_class = CKContactBalloonView;
  v8 = a3;
  [(CKBalloonView *)&v9 configureForMediaObject:v8 previewWidth:v5 orientation:a4];
  [(CKContactBalloonView *)self setMediaObject:v8, v9.receiver, v9.super_class];
}

- (void)configureForComposition:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKContactBalloonView;
  v4 = a3;
  [(CKColoredBalloonView *)&v8 configureForComposition:v4];
  v5 = [v4 mediaObjects];

  v6 = [v5 lastObject];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 previewMaxWidth];
  [(CKContactBalloonView *)self configureForMediaObject:v6 previewWidth:1 orientation:?];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKContactBalloonView;
  v4 = [(CKColoredBalloonView *)&v11 description];
  v5 = [(CKContactBalloonView *)self nameLabel];
  v6 = [v5 text];
  v7 = [(CKContactBalloonView *)self organizationLabel];
  v8 = [v7 text];
  v9 = [v3 stringWithFormat:@"%@ name:%@ organization:%@", v4, v6, v8];

  return v9;
}

- (CKContactBalloonView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = CKContactBalloonView;
  v3 = [(CKColoredBalloonView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [v9 setContentMode:1];
    [(CKContactBalloonView *)v3 setContactImageView:v9];
    [(CKContactBalloonView *)v3 addSubview:v9];
    if ([objc_opt_class() canShowChevron])
    {
      v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v11 = +[CKUIBehavior sharedBehaviors];
      v12 = [v11 chevronImageForColorType:0xFFFFFFFFLL];
      v13 = [v10 initWithImage:v12];

      [v13 setContentMode:4];
      [(CKContactBalloonView *)v3 setChevron:v13];
      [(CKContactBalloonView *)v3 addSubview:v13];
    }

    v14 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    v15 = [MEMORY[0x1E69DB878] __ck_emphasizedPreferredFontForTextStyle:*MEMORY[0x1E69DDD90]];
    [v14 setFont:v15];

    [(CKContactBalloonView *)v3 setNameLabel:v14];
    [(CKContactBalloonView *)v3 addSubview:v14];
    v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    v17 = [MEMORY[0x1E69DB878] __ck_preferredFontForStyle:*MEMORY[0x1E69DDD08]];
    [v16 setFont:v17];

    [(CKContactBalloonView *)v3 setOrganizationLabel:v16];
    [(CKContactBalloonView *)v3 addSubview:v16];
  }

  return v3;
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = CKContactBalloonView;
  [(CKColoredBalloonView *)&v51 layoutSubviews];
  [(CKContactBalloonView *)self bounds];
  [(CKContactBalloonView *)self alignmentRectForFrame:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKContactBalloonView *)self _shouldReverseLayoutDirection];
  v12 = [(CKContactBalloonView *)self contactImageView];
  if ([objc_opt_class() canShowChevron])
  {
    v13 = [(CKContactBalloonView *)self chevron];
    v14 = [v13 image];
    [v14 size];
    v16 = v15;

    v17 = v4;
    v18 = v6;
    v19 = v8;
    v20 = v10;
    if (v11)
    {
      MinX = CGRectGetMinX(*&v17);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v17) - v16;
    }

    [v13 setFrame:{MinX, v6, v16, v10}];
    if (v11)
    {
      v52.origin.x = MinX;
      v52.origin.y = v6;
      v52.size.width = v16;
      v52.size.height = v10;
      MaxX = CGRectGetMaxX(v52);
      v28 = 5.0;
    }

    else
    {
      MaxX = MinX + -5.0;
      v28 = -38.0;
    }

    v26 = MaxX + v28;
  }

  else
  {
    v22 = v4;
    v23 = v6;
    v24 = v8;
    v25 = v10;
    if (v11)
    {
      v26 = CGRectGetMinX(*&v22);
    }

    else
    {
      v26 = CGRectGetMaxX(*&v22) + -38.0;
    }
  }

  [v12 setFrame:{v26, v6, 38.0, v10}];
  v29 = [(CKContactBalloonView *)self nameLabel];
  v30 = [(CKContactBalloonView *)self organizationLabel];
  if (v11)
  {
    v53.origin.x = v4;
    v53.origin.y = v6;
    v53.size.width = v8;
    v53.size.height = v10;
    v31 = CGRectGetMaxX(v53);
    v54.origin.x = v26;
    v54.origin.y = v6;
    v54.size.width = 38.0;
    v54.size.height = v10;
    v32 = v31 - CGRectGetMaxX(v54) + -10.0;
    v55.origin.x = v4;
    v55.origin.y = v6;
    v55.size.width = v8;
    v55.size.height = v10;
    v33 = CGRectGetMaxX(v55) - v32;
    v56.origin.x = v4;
    v56.origin.y = v6;
    v56.size.width = v8;
    v56.size.height = v10;
    v34 = CGRectGetMaxX(v56);
    v57.origin.x = v33;
    v57.origin.y = v6;
    v57.size.width = v32;
    v57.size.height = v10;
    v35 = v34 - CGRectGetWidth(v57);
  }

  else
  {
    v32 = v26 + -10.0 - v4;
    v33 = v4 + 0.0;
    v35 = v4 + 0.0;
  }

  [v29 setFrame:{v35, v6, v32, v10}];
  [v30 setFrame:{v35, v6, v32, v10}];
  v36 = [v30 text];
  v37 = [v36 length];

  if (v37)
  {
    v38 = [v30 font];
    [v38 _bodyLeading];
    v40 = v39 * 0.59375;

    v41 = [v29 font];
    [v41 capHeight];
    v43 = v40 + v42;
    v44 = [v30 font];
    [v44 capHeight];
    v46 = v43 + v45;
    if (CKMainScreenScale_once_40 != -1)
    {
      [CKContactBalloonView layoutSubviews];
    }

    v47 = *&CKMainScreenScale_sMainScreenScale_40;
    if (*&CKMainScreenScale_sMainScreenScale_40 == 0.0)
    {
      v47 = 1.0;
    }

    v48 = ceil(v46 * v47) / v47;

    if (CKMainScreenScale_once_40 != -1)
    {
      [CKContactBalloonView layoutSubviews];
    }

    v49 = *&CKMainScreenScale_sMainScreenScale_40;
    if (*&CKMainScreenScale_sMainScreenScale_40 == 0.0)
    {
      v49 = 1.0;
    }

    v50 = floor((v6 + (v10 - v48) * 0.5) * v49) / v49;
    [v29 _setFirstLineCapFrameOriginY:v50];
    v58.origin.x = v33;
    v58.origin.y = v50;
    v58.size.width = v32;
    v58.size.height = v48;
    [v30 _setLastLineBaselineFrameOriginY:CGRectGetMaxY(v58)];
  }
}

- (id)traitMutationsForSnapshotRendering
{
  v9.receiver = self;
  v9.super_class = CKContactBalloonView;
  v2 = [(CKBalloonView *)&v9 traitMutationsForSnapshotRendering];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__CKContactBalloonView_traitMutationsForSnapshotRendering__block_invoke;
  aBlock[3] = &unk_1E72F0828;
  v8 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);
  v5 = _Block_copy(v4);

  return v5;
}

void __58__CKContactBalloonView_traitMutationsForSnapshotRendering__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2, v4);
  [v4 setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E110] forTrait:{"integerValue"), objc_opt_class()}];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKContactBalloonView;
  [(CKColoredBalloonView *)&v5 prepareForReuse];
  v3 = [(CKContactBalloonView *)self chevron];
  [v3 setHidden:0];

  v4 = [(CKContactBalloonView *)self nameLabel];
  [v4 setText:0];
}

- (void)prepareForDisplay
{
  v18.receiver = self;
  v18.super_class = CKContactBalloonView;
  [(CKColoredBalloonView *)&v18 prepareForDisplay];
  v3 = [(CKContactBalloonView *)self mediaObject];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 balloonTextColorForColorType:{-[CKBalloonView color](self, "color")}];

  v7 = [(CKContactBalloonView *)self chevron];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 chevronImageForColorType:{-[CKBalloonView color](self, "color")}];
  [v7 setImage:v9];

  v10 = [(CKContactBalloonView *)self contactImageView];
  v11 = [v3 icon];
  [v10 setImage:v11];

  v12 = [(CKContactBalloonView *)self nameLabel];
  v13 = [v3 title];
  v14 = [(CKContactBalloonView *)self _truncateNameIfNeeded:v13];

  [v12 setText:v14];
  [v12 setTextColor:v6];
  v15 = [(CKContactBalloonView *)self organizationLabel];
  v16 = [v3 subtitle];
  v17 = [(CKContactBalloonView *)self _truncateNameIfNeeded:v16];

  [v15 setText:v17];
  [v15 setTextColor:v6];
}

- (id)_truncateNameIfNeeded:(id)a3
{
  v3 = a3;
  if ([v3 length] < 0xC9)
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 substringWithRange:{0, 200}];
  }

  v5 = v4;

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  width = a3.width;
  v7 = [(CKContactBalloonView *)self nameLabel:a4];
  [v7 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v9 = v8;
  v11 = v10;

  v12 = [(CKContactBalloonView *)self organizationLabel];
  [v12 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v14 = v13;
  v16 = v15;

  if (v9 < v14)
  {
    v9 = v14;
  }

  [(CKBalloonView *)self alignmentRectInsets];
  v18 = v9 + v17 + 0.0 + 10.0 + 38.0;
  if ([objc_opt_class() canShowChevron])
  {
    v19 = [(CKContactBalloonView *)self chevron];
    v20 = [v19 image];
    [v20 size];
    v18 = v18 + v21 + 5.0;
  }

  [(CKBalloonView *)self alignmentRectInsets];
  v23 = v22;
  v24 = +[CKUIBehavior sharedBehaviors];
  [v24 contactBalloonMinWidth];
  v26 = v25;

  if (CKMainScreenScale_once_40 != -1)
  {
    [CKContactBalloonView sizeThatFits:textAlignmentInsets:tailInsets:];
  }

  v27 = v11 + 12.0 + v16 + 12.0;
  v28 = v18 + v23;
  if (v26 >= v18 + v23)
  {
    v28 = v26;
  }

  if (width < v28)
  {
    v28 = width;
  }

  v29 = *&CKMainScreenScale_sMainScreenScale_40;
  if (*&CKMainScreenScale_sMainScreenScale_40 == 0.0)
  {
    v29 = 1.0;
  }

  v30 = ceil(v29 * 58.5) / v29;
  if (v27 < v30)
  {
    v27 = v30;
  }

  result.height = v27;
  result.width = v28;
  return result;
}

- (void)insertHighlightOverlayLayer:(id)a3
{
  v4 = a3;
  v7 = [(CKContactBalloonView *)self layer];
  v5 = [(CKContactBalloonView *)self contactImageView];
  v6 = [v5 layer];
  [v7 insertSublayer:v4 below:v6];
}

- (void)setMediaObject:(id)a3
{
  v5 = a3;
  if (self->_mediaObject != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaObject, a3);
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    [(CKContactBalloonView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)configureForMessagePart:(id)a3
{
  v10.receiver = self;
  v10.super_class = CKContactBalloonView;
  v4 = a3;
  [(CKColoredBalloonView *)&v10 configureForMessagePart:v4];
  v5 = [v4 mediaObject];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 previewMaxWidth];
  v8 = v7;
  v9 = [v4 balloonOrientation];

  [(CKContactBalloonView *)self configureForMediaObject:v5 previewWidth:v9 orientation:v8];
}

@end
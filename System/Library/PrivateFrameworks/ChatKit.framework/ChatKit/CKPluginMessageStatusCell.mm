@interface CKPluginMessageStatusCell
- (BOOL)_shouldOverrideStatusAlignmentWithCenterAlignment;
- (BOOL)hidesCheckmark;
- (CKPluginMessageStatusCell)initWithFrame:(CGRect)frame;
- (void)_updateBalloonPluginIconImage;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)dealloc;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)insertion;
- (void)prepareForReuse;
- (void)setBalloonBundleID:(id)d;
- (void)setDataSource:(id)source;
- (void)setPreviousPluginSnapshot:(id)snapshot;
@end

@implementation CKPluginMessageStatusCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  v29.receiver = self;
  v29.super_class = CKPluginMessageStatusCell;
  [(CKTranscriptStampCell *)&v29 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  iMChatItem = [itemCopy IMChatItem];
  balloonBundleID = [iMChatItem balloonBundleID];
  [(CKPluginMessageStatusCell *)self setBalloonBundleID:balloonBundleID];

  label = [(CKTranscriptLabelCell *)self label];
  [label frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [itemCopy size];
  v25 = v24;
  v27 = v26;
  if (objc_opt_respondsToSelector())
  {
    [itemCopy iconSizePlusHorizontalPadding];
    v25 = v25 - v28;
  }

  if (v21 != v25 || v23 != v27)
  {
    [label setFrame:{v17, v19, v25, v27}];
    [(CKPluginMessageStatusCell *)self setNeedsLayout];
  }
}

- (CKPluginMessageStatusCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKPluginMessageStatusCell;
  v3 = [(CKTranscriptLabelCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v5 setContentMode:0];
    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:v5];

    [(CKPluginMessageStatusCell *)v3 setImageView:v5];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__updateBalloonPluginIconImage name:*MEMORY[0x1E69A56D8] object:0];
  }

  return v3;
}

- (BOOL)hidesCheckmark
{
  if (IMGetDomainBoolForKey())
  {
    return ![(CKTranscriptStampCell *)self isRetractionStamp];
  }

  else
  {
    return 1;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKPluginMessageStatusCell;
  [(CKPluginMessageStatusCell *)&v4 dealloc];
}

- (void)_updateBalloonPluginIconImage
{
  balloonBundleID = [(CKPluginMessageStatusCell *)self balloonBundleID];

  if (balloonBundleID)
  {
    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    balloonBundleID2 = [(CKPluginMessageStatusCell *)self balloonBundleID];
    v6 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:balloonBundleID2];

    identifier = [v6 identifier];
    v8 = IMBalloonExtensionIDWithSuffix();
    v9 = [identifier isEqualToString:v8];

    v10 = [v6 shouldBreadcrumbHideAppIcon] | v9;
    if (v6 || ([(CKPluginMessageStatusCell *)self balloonBundleID], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ((v10 & 1) == 0)
      {
        objc_initWeak(&location, self);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __58__CKPluginMessageStatusCell__updateBalloonPluginIconImage__block_invoke;
        v13[3] = &unk_1E72F7EA0;
        objc_copyWeak(&v14, &location);
        [v6 __ck_generateStatusImage:v13];
        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }

  else
  {
    imageView = [(CKPluginMessageStatusCell *)self imageView];
    [imageView setImage:0];
  }
}

void __58__CKPluginMessageStatusCell__updateBalloonPluginIconImage__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained imageView];
    v6 = [v5 image];

    if (v6 != v8)
    {
      v7 = [v4 imageView];
      [v7 setImage:v8];

      [v4 setNeedsLayout];
    }
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKPluginMessageStatusCell;
  [(CKTranscriptStampCell *)&v3 prepareForReuse];
  [(CKPluginMessageStatusCell *)self setPreviousPluginSnapshot:0];
  [(CKPluginMessageStatusCell *)self setDataSource:0];
}

- (void)layoutSubviewsForAlignmentContents
{
  v3 = +[CKUIBehavior sharedBehaviors];
  label = [(CKTranscriptLabelCell *)self label];
  [label frame];
  v6 = v5;
  v8 = v7;
  v50.receiver = self;
  v50.super_class = CKPluginMessageStatusCell;
  [(CKTranscriptStampCell *)&v50 layoutSubviewsForAlignmentContents];
  imageView = [(CKPluginMessageStatusCell *)self imageView];
  image = [imageView image];

  [image size];
  v12 = v11;
  [image size];
  v14 = CKFloatApproximatelyEqualToFloatWithTolerance(v12, v13, 0.1);
  v15 = +[CKUIBehavior sharedBehaviors];
  v16 = v15;
  if (v14)
  {
    [v15 iMessageAppIconSizeSquare];
  }

  else
  {
    [v15 iMessageAppIconSize];
  }

  v19 = v17;
  v20 = v18;

  v49 = v19;
  if (image)
  {
    [v3 transcriptCustomStatusImagePadding];
    v22 = v19 + v21;
  }

  else
  {
    v22 = 0.0;
  }

  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  orientation = [(CKEditableCollectionViewCell *)self orientation];
  if (orientation == 1 || (v32 = orientation, [(CKPluginMessageStatusCell *)self _shouldOverrideStatusAlignmentWithCenterAlignment]))
  {
    v51.origin.x = v24;
    v51.origin.y = v26;
    v51.size.width = v28;
    v51.size.height = v30;
    MidX = CGRectGetMidX(v51);
    v52.origin.x = v24;
    v52.origin.y = v26;
    v52.size.width = v6;
    v52.size.height = v8;
    v24 = MidX + (v22 + CGRectGetWidth(v52)) * -0.5;
  }

  else if (v32 == 2)
  {
    v54.origin.x = v24;
    v54.origin.y = v26;
    v54.size.width = v28;
    v54.size.height = v30;
    MaxX = CGRectGetMaxX(v54);
    v55.origin.x = v24;
    v55.origin.y = v26;
    v55.size.width = v6;
    v55.size.height = v8;
    v24 = MaxX - CGRectGetWidth(v55);
  }

  else if (!v32)
  {
    v53.origin.x = v24;
    v53.origin.y = v26;
    v53.size.width = v28;
    v53.size.height = v30;
    v24 = v22 + CGRectGetMinX(v53);
  }

  [label setFrame:{v24, v26, v6, v8}];
  if (image)
  {
    transcriptTextFont = [v3 transcriptTextFont];
    [transcriptTextFont lineHeight];
    v36 = v26 + (v35 - v20) * 0.5;

    imageView2 = [(CKPluginMessageStatusCell *)self imageView];
    [v3 transcriptCustomStatusImageEdgeInsets];
    v39 = v24 - v22 + v38;
    v41 = v36 + v40;
    v43 = v49 - (v38 + v42);
    v45 = v20 - (v40 + v44);
    layer = [imageView2 layer];
    mask = [layer mask];
    [mask setFrame:{0.0, 0.0, v43, v45}];

    [imageView2 setFrame:{v39, v41, v43, v45}];
  }
}

- (BOOL)_shouldOverrideStatusAlignmentWithCenterAlignment
{
  v15[3] = *MEMORY[0x1E69E9840];
  balloonBundleID = [(CKPluginMessageStatusCell *)self balloonBundleID];
  if ([balloonBundleID length])
  {
    v3 = IMBalloonBundleIDFromExtensionID();
    v4 = *MEMORY[0x1E69A6918];
    v15[0] = *MEMORY[0x1E69A6920];
    v15[1] = v4;
    v15[2] = *MEMORY[0x1E69A68E0];
    [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) isEqualToString:{v3, v10}])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)performInsertion:(id)insertion
{
  insertionCopy = insertion;
  previousPluginSnapshot = [(CKPluginMessageStatusCell *)self previousPluginSnapshot];
  if (previousPluginSnapshot)
  {
    previousPluginSnapshot = self->_previousPluginSnapshot;
    self->_previousPluginSnapshot = 0;

    v7 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__CKPluginMessageStatusCell_performInsertion___block_invoke;
    v11[3] = &unk_1E72EB8D0;
    v11[4] = self;
    v12 = previousPluginSnapshot;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__CKPluginMessageStatusCell_performInsertion___block_invoke_2;
    v8[3] = &unk_1E72ED638;
    v9 = v12;
    v10 = insertionCopy;
    [v7 animateWithDuration:0x10000 delay:v11 options:v8 animations:0.3 completion:0.0];
  }

  else if (insertionCopy)
  {
    (*(insertionCopy + 2))(insertionCopy, 1);
  }
}

void __46__CKPluginMessageStatusCell_performInsertion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageView];
  v3 = [v2 image];

  if (v3)
  {
    v4 = [*(a1 + 32) imageView];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [*(a1 + 40) frame];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = 0.0;
  }

  [*(a1 + 40) setFrame:{v6, v8, v10, v12}];
  [*(a1 + 40) setAlpha:0.0];
  v16 = [*(a1 + 32) imageView];
  [v16 setAlpha:1.0];

  v17 = [*(a1 + 32) label];
  [v17 setAlpha:1.0];
}

uint64_t __46__CKPluginMessageStatusCell_performInsertion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  v12 = sourceCopy;
  if (sourceCopy)
  {
    pluginPayload = [sourceCopy pluginPayload];
    pluginBundleID = [pluginPayload pluginBundleID];

    balloonBundleID = self->_balloonBundleID;
    if (balloonBundleID != pluginBundleID && !-[NSString isEqualToString:](balloonBundleID, "isEqualToString:", pluginBundleID) || (-[CKPluginMessageStatusCell imageView](self, "imageView"), v9 = objc_claimAutoreleasedReturnValue(), [v9 image], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {
      objc_storeStrong(&self->_dataSource, source);
      [(CKPluginMessageStatusCell *)self _updateBalloonPluginIconImage];
    }
  }

  else
  {
    dataSource = self->_dataSource;
    self->_dataSource = 0;

    [(CKPluginMessageStatusCell *)self setBalloonBundleID:0];
    [(CKPluginMessageStatusCell *)self _updateBalloonPluginIconImage];
  }
}

- (void)setBalloonBundleID:(id)d
{
  dCopy = d;
  balloonBundleID = self->_balloonBundleID;
  v9 = dCopy;
  if (balloonBundleID != dCopy && !-[NSString isEqualToString:](balloonBundleID, "isEqualToString:", dCopy) || (-[CKPluginMessageStatusCell imageView](self, "imageView"), v7 = objc_claimAutoreleasedReturnValue(), [v7 image], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    objc_storeStrong(&self->_balloonBundleID, d);
    [(CKPluginMessageStatusCell *)self _updateBalloonPluginIconImage];
  }
}

- (void)setPreviousPluginSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  previousPluginSnapshot = self->_previousPluginSnapshot;
  if (previousPluginSnapshot != snapshotCopy)
  {
    v12 = snapshotCopy;
    [(UIView *)previousPluginSnapshot removeFromSuperview];
    objc_storeStrong(&self->_previousPluginSnapshot, snapshot);
    v7 = self->_previousPluginSnapshot;
    imageView = [(CKPluginMessageStatusCell *)self imageView];
    v9 = imageView;
    if (v7)
    {
      [imageView setAlpha:0.0];

      label = [(CKTranscriptLabelCell *)self label];
      [label setAlpha:0.0];

      [(CKPluginMessageStatusCell *)self insertSubview:self->_previousPluginSnapshot atIndex:0];
    }

    else
    {
      [imageView setAlpha:1.0];

      label2 = [(CKTranscriptLabelCell *)self label];
      [label2 setAlpha:1.0];
    }

    snapshotCopy = v12;
  }
}

@end
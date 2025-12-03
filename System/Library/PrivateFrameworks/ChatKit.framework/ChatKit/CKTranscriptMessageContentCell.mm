@interface CKTranscriptMessageContentCell
- (CGRect)drawerLabelFrame;
- (CGRect)messageDisplayViewFrame:(CGRect)frame inContainerFrame:(CGRect)containerFrame;
- (CGSize)drawerTextSize;
- (CGSize)messageDisplayViewRequestedSize;
- (CKTranscriptMessageContentCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)messageDisplayViewTailInsets;
- (id)messageDisplayViewLayoutAttributesForMessageDisplayViewFrame:(CGRect)frame inContainerFrame:(CGRect)containerFrame;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)layoutSubviewsForDrawer;
- (void)setDrawerText:(id)text;
@end

@implementation CKTranscriptMessageContentCell

- (CKTranscriptMessageContentCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CKTranscriptMessageContentCell;
  v3 = [(CKPhoneTranscriptMessageCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [CKTranscriptLegibilityLabel alloc];
    v5 = [(CKTranscriptLegibilityLabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    drawerLabel = v3->_drawerLabel;
    v3->_drawerLabel = v5;
  }

  return v3;
}

- (void)layoutSubviewsForDrawer
{
  v44.receiver = self;
  v44.super_class = CKTranscriptMessageContentCell;
  [(CKTranscriptCell *)&v44 layoutSubviewsForDrawer];
  [(CKTranscriptCell *)self drawerPercentRevealed];
  v4 = v3;
  drawerLabel = [(CKTranscriptMessageContentCell *)self drawerLabel];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = +[CKUIBehavior sharedBehaviors];
  if ((v4 != 0.0) != [(CKTranscriptMessageContentCell *)self drawerWasVisible])
  {
    if (v4 == 0.0)
    {
      [drawerLabel removeFromSuperview];
    }

    else
    {
      [(CKTranscriptMessageContentCell *)self addSubview:drawerLabel];
    }

    [(CKTranscriptMessageContentCell *)self setDrawerWasVisible:v4 != 0.0];
  }

  drawerTextChanged = [(CKTranscriptMessageContentCell *)self drawerTextChanged];
  if (v4 != 0.0 && drawerTextChanged)
  {
    drawerText = [(CKTranscriptMessageContentCell *)self drawerText];
    [drawerLabel setAttributedText:drawerText];
    [drawerText size];
    v16 = v15;
    v18 = v17;
    if (CKMainScreenScale_once_15 != -1)
    {
      [CKTranscriptMessageContentCell layoutSubviewsForDrawer];
    }

    v19 = 1.0;
    if (*&CKMainScreenScale_sMainScreenScale_15 != 0.0)
    {
      v19 = *&CKMainScreenScale_sMainScreenScale_15;
    }

    [(CKTranscriptMessageContentCell *)self setDrawerTextSize:ceil(v16 * v19) / v19, ceil(v18 * v19) / v19];
    [(CKTranscriptMessageContentCell *)self setDrawerTextChanged:0];
  }

  v41[1] = v9;
  v43 = v11;
  [(CKTranscriptMessageContentCell *)self drawerTextSize];
  v42 = v20;
  [(CKTranscriptMessageContentCell *)self willLayoutDrawerLabelFrame:v41];
  [(CKEditableCollectionViewCell *)self marginInsets];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(CKTranscriptMessageCell *)self safeAreaInsets];
  v30 = v22 + v29;
  v34 = v28 + v33;
  [v12 transcriptDrawerWidthForMarginInsets:{v30, v24 + v31, v26 + v32, v28 + v33}];
  v36 = v35;
  if ([(CKEditableCollectionViewCell *)self wantsDrawerLayout])
  {
    [(CKTranscriptMessageContentCell *)self bounds];
    v38 = v37 - v4 * v36;
  }

  else
  {
    v39 = (v34 - v42) * -0.5;
    [(CKTranscriptMessageContentCell *)self bounds];
    v38 = v40 - v4 * (v34 + v39);
  }

  [drawerLabel setFrame:v38 - (v42 - (v36 - v34))];
}

- (void)layoutSubviewsForAlignmentContents
{
  v46.receiver = self;
  v46.super_class = CKTranscriptMessageContentCell;
  [(CKEditableCollectionViewCell *)&v46 layoutSubviewsForAlignmentContents];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  messageDisplayView = [(CKTranscriptMessageContentCell *)self messageDisplayView];
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  messageDisplayView2 = [(CKTranscriptMessageContentCell *)self messageDisplayView];
  v5 = messageDisplayView2;
  if (messageDisplayView2)
  {
    [messageDisplayView2 transform];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
  }

  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v40 = *MEMORY[0x1E695EFD0];
  v41 = v6;
  v42 = *(MEMORY[0x1E695EFD0] + 32);
  [messageDisplayView setTransform:&v40];
  [messageDisplayView frame];
  [CKTranscriptMessageContentCell messageDisplayViewFrame:"messageDisplayViewFrame:inContainerFrame:" inContainerFrame:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [messageDisplayView setFrame:?];
  v40 = v43;
  v41 = v44;
  v42 = v45;
  [messageDisplayView setTransform:&v40];
  if (![(CKEditableCollectionViewCell *)self orientation])
  {
    v15 = +[CKUIBehavior sharedBehaviors];
    [(CKTranscriptCell *)self drawerPercentRevealed];
    v17 = v16;
    if ([v15 timestampsPushBalloons])
    {
      if (v17 > 0.0)
      {
        [(CKTranscriptMessageContentCell *)self drawerLabelFrame];
        [(CKEditableCollectionViewCell *)self marginInsets];
        v39 = v17;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        [v15 transcriptDrawerWidthForMarginInsets:?];
        v37 = v26;
        [(CKTranscriptMessageContentCell *)self bounds];
        v38 = v27 - v37;
        [v15 transcriptDrawerOverlapForMarginInsets:{v19, v21, v23, v25}];
        v29 = v28 - v25 + v38;
        v47.origin.x = v8;
        v47.origin.y = v10;
        v47.size.width = v12;
        v47.size.height = v14;
        MaxX = CGRectGetMaxX(v47);
        if (MaxX > v29)
        {
          v31 = MaxX;
          contentView = [(CKEditableCollectionViewCell *)self contentView];
          [contentView frame];
          [contentView setFrame:-((v31 - v29) * v39)];
        }
      }
    }
  }

  if ([(CKTranscriptMessageCell *)self wantsContactImageLayout])
  {
    v33 = 1.0;
    if ([(CKTranscriptMessageCell *)self isReplyContextPreview])
    {
      v34 = +[CKUIBehavior sharedBehaviors];
      [v34 transcriptReplyPreviewContextContactAlpha];
      v33 = v35;
    }

    contactImageView = [(CKPhoneTranscriptMessageCell *)self contactImageView];
    [contactImageView setAlpha:v33];
  }
}

- (CGRect)messageDisplayViewFrame:(CGRect)frame inContainerFrame:(CGRect)containerFrame
{
  height = containerFrame.size.height;
  width = containerFrame.size.width;
  y = containerFrame.origin.y;
  x = containerFrame.origin.x;
  v49 = *MEMORY[0x1E69E9840];
  v43 = frame.size.width;
  v44 = frame.size.height;
  v9 = [(CKTranscriptMessageContentCell *)self messageDisplayViewLayoutAttributesForMessageDisplayViewFrame:frame.origin.x inContainerFrame:frame.origin.y];
  [v9 messageDisplayViewSize];
  v11 = v10;
  if ([(CKEditableCollectionViewCell *)self orientation])
  {
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v12 = CGRectGetMaxX(v50) - v11;
  }

  else
  {
    v12 = x;
  }

  [(CKEditableCollectionViewCell *)self associatedItemOffset];
  if (v13 != 0.0)
  {
    [(CKEditableCollectionViewCell *)self associatedItemOffset];
    v15 = v12 + v14;
    if ([(CKEditableCollectionViewCell *)self orientation])
    {
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v16 = CGRectGetMaxX(v51) - v11;
      if (v16 >= v15)
      {
        v12 = v15;
      }

      else
      {
        v12 = v16;
      }
    }

    else if (x >= v15)
    {
      v12 = x;
    }

    else
    {
      v12 = v15;
    }
  }

  [(CKTranscriptMessageContentCell *)self layoutOffset];
  if (v17 != 0.0)
  {
    [(CKTranscriptMessageContentCell *)self layoutOffset];
    v19 = v18;
    if ([(CKEditableCollectionViewCell *)self orientation])
    {
      v20 = v12 - v19;
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v21 = CGRectGetMaxX(v52) - v11;
      v12 = v21 >= v20 ? v20 : v21;
    }

    else
    {
      v12 = x >= v12 + v19 ? x : v12 + v19;
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        [(CKTranscriptMessageContentCell *)self layoutOffset];
        *buf = 138412546;
        selfCopy2 = self;
        v47 = 2048;
        v48 = v23;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "cell: %@, found non-zero layout offset: %f", buf, 0x16u);
      }
    }
  }

  [(CKTranscriptMessageContentCell *)self swipeToReplyLayoutOffset];
  if (v24 != 0.0)
  {
    [(CKTranscriptMessageContentCell *)self swipeToReplyLayoutOffset];
    v26 = v12 + v25;
    v12 = x >= v26 ? x : v26;
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        [(CKTranscriptMessageContentCell *)self swipeToReplyLayoutOffset];
        *buf = 138412546;
        selfCopy2 = self;
        v47 = 2048;
        v48 = v28;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Swipe to reply is active on view: %@, updating with reply layout offset: %f", buf, 0x16u);
      }
    }
  }

  wantsFrameClamping = [v9 wantsFrameClamping];
  v30 = *(MEMORY[0x1E695EFF8] + 8);
  if (wantsFrameClamping)
  {
    if ([(CKEditableCollectionViewCell *)self orientation])
    {
      if (v12 < x)
      {
        v12 = v12 + x - v12;
      }
    }

    else
    {
      v53.origin.x = v12;
      v53.origin.y = v30;
      v53.size.width = v43;
      v53.size.height = v44;
      MaxX = CGRectGetMaxX(v53);
      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      if (MaxX > CGRectGetMaxX(v54))
      {
        v55.origin.x = v12;
        v55.origin.y = v30;
        v55.size.width = v43;
        v55.size.height = v44;
        v32 = CGRectGetMaxX(v55);
        v56.origin.x = x;
        v56.origin.y = y;
        v56.size.width = width;
        v56.size.height = height;
        v12 = v12 - (v32 - CGRectGetMaxX(v56));
      }
    }
  }

  traitCollection = [(CKTranscriptMessageContentCell *)self traitCollection];
  [traitCollection displayScale];
  v35 = v34;
  if (v34 == 0.0)
  {
    if (CKMainScreenScale_once_15 != -1)
    {
      [CKTranscriptMessageContentCell layoutSubviewsForDrawer];
    }

    if (*&CKMainScreenScale_sMainScreenScale_15 == 0.0)
    {
      v35 = 1.0;
    }

    else
    {
      v35 = *&CKMainScreenScale_sMainScreenScale_15;
    }
  }

  traitCollection2 = [(CKTranscriptMessageContentCell *)self traitCollection];
  [traitCollection2 displayScale];
  v38 = v37;
  if (v37 == 0.0)
  {
    if (CKMainScreenScale_once_15 != -1)
    {
      [CKTranscriptMessageContentCell layoutSubviewsForDrawer];
    }

    if (*&CKMainScreenScale_sMainScreenScale_15 == 0.0)
    {
      v38 = 1.0;
    }

    else
    {
      v38 = *&CKMainScreenScale_sMainScreenScale_15;
    }
  }

  v39 = floor(v12 * v35) / v35;
  v40 = ceil(v11 * v38) / v38;
  v41 = v30;
  v42 = v44;
  result.size.height = v42;
  result.size.width = v40;
  result.origin.y = v41;
  result.origin.x = v39;
  return result;
}

- (id)messageDisplayViewLayoutAttributesForMessageDisplayViewFrame:(CGRect)frame inContainerFrame:(CGRect)containerFrame
{
  height = frame.size.height;
  width = frame.size.width;
  [(CKTranscriptMessageContentCell *)self swipeToReplyLayoutOffset:frame.origin.x];
  height = [[_TtC7ChatKit36CKMessageDisplayViewLayoutAttributes alloc] initWithMessageDisplayViewSize:v6 == 0.0 wantsFrameClamping:width, height];

  return height;
}

- (UIEdgeInsets)messageDisplayViewTailInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)drawerLabelFrame
{
  drawerLabel = [(CKTranscriptMessageContentCell *)self drawerLabel];
  [drawerLabel frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setDrawerText:(id)text
{
  textCopy = text;
  if (self->_drawerText != textCopy)
  {
    v6 = textCopy;
    v5 = [(NSAttributedString *)textCopy copy];

    objc_storeStrong(&self->_drawerText, v5);
    [(CKTranscriptMessageContentCell *)self setDrawerTextChanged:1];
    [(CKTranscriptMessageContentCell *)self setNeedsLayout];
    textCopy = v5;
  }
}

- (CGSize)messageDisplayViewRequestedSize
{
  width = self->_messageDisplayViewRequestedSize.width;
  height = self->_messageDisplayViewRequestedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)drawerTextSize
{
  width = self->_drawerTextSize.width;
  height = self->_drawerTextSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v15.receiver = self;
  v15.super_class = CKTranscriptMessageContentCell;
  itemCopy = item;
  [(CKTranscriptCell *)&v15 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  transcriptDrawerText = [itemCopy transcriptDrawerText];
  [(CKTranscriptMessageContentCell *)self setDrawerText:transcriptDrawerText];

  [itemCopy size];
  [(CKTranscriptMessageContentCell *)self setMessageDisplayViewRequestedSize:?];
  -[CKTranscriptMessageCell setIsReply:](self, "setIsReply:", [itemCopy itemIsReply]);
  -[CKTranscriptMessageCell setIsReplyContextPreview:](self, "setIsReplyContextPreview:", [itemCopy itemIsReplyContextPreview]);
  iMChatItem = [itemCopy IMChatItem];

  -[CKTranscriptMessageCell setIsFromMe:](self, "setIsFromMe:", [iMChatItem isFromMe]);
}

@end
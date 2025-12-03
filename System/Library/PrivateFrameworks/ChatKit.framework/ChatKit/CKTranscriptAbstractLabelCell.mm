@interface CKTranscriptAbstractLabelCell
+ (CGSize)sizeThatFits:(CGSize)fits attributedText:(id)text displayScale:(double)scale;
- (CGRect)contentAlignmentRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKTranscriptAbstractLabelCell)initWithFrame:(CGRect)frame;
- (NSAttributedString)attributedText;
- (id)cellView;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)layoutSubviewsForAlignmentContents;
- (void)layoutSubviewsForContents;
- (void)prepareForReuse;
- (void)setAttributedText:(id)text;
- (void)setWantsContactImageLayout:(BOOL)layout;
- (void)setWantsOffsetForReplyLine:(BOOL)line;
@end

@implementation CKTranscriptAbstractLabelCell

- (CKTranscriptAbstractLabelCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKTranscriptAbstractLabelCell;
  v3 = [(CKTranscriptCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    transcriptTextVibrancyEffect = [v4 transcriptTextVibrancyEffect];
    [(CKEditableCollectionViewCell *)v3 setEffect:transcriptTextVibrancyEffect];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  cellView = [(CKTranscriptAbstractLabelCell *)self cellView];
  [cellView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviewsForContents
{
  v43.receiver = self;
  v43.super_class = CKTranscriptAbstractLabelCell;
  [(CKEditableCollectionViewCell *)&v43 layoutSubviewsForContents];
  [(CKTranscriptAbstractLabelCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(CKTranscriptAbstractLabelCell *)self wantsContactImageLayout])
  {
    if (![(CKEditableCollectionViewCell *)self orientation])
    {
      v11 = +[CKUIBehavior sharedBehaviors];
      [v11 transcriptContactImageDiameter];
      v13 = v12;
      v14 = +[CKUIBehavior sharedBehaviors];
      [v14 contactPhotoBalloonMargin];
      v42 = v13 + v15;

      [(CKEditableCollectionViewCell *)self marginInsets];
      v39 = v17;
      v40 = v16;
      v41 = v18;
      v38 = v19;
      v20 = +[CKUIBehavior sharedBehaviors];
      [v20 balloonTranscriptInsets];
      v22 = v21;
      v24 = v23;
      v36 = v25;
      v37 = v26;

      v27 = +[CKUIBehavior sharedBehaviors];
      [v27 contactPhotoTranscriptInsets];
      v29 = v28;
      v31 = v30;
      v34 = v33;
      v35 = v32;

      [(CKEditableCollectionViewCell *)self setContentAlignmentRect:v24 + v42 + v4 - (v39 + v24) + v39 + v31, v22 + v6 - (v40 + v22) + v40 + v29 + 0.0, v8 + v39 + v24 + v38 + v37 - (v39 + v31 + v38 + v34) - (v42 + 0.0) - (v24 + v37), v10 + v40 + v22 + v41 + v36 - (v40 + v29 + v41 + v35) - (v22 + v36)];
    }
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  v43.receiver = self;
  v43.super_class = CKTranscriptAbstractLabelCell;
  [(CKEditableCollectionViewCell *)&v43 layoutSubviewsForAlignmentContents];
  [(CKTranscriptAbstractLabelCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  cellView = [(CKTranscriptAbstractLabelCell *)self cellView];
  [cellView sizeThatFits:{v8, 1.79769313e308}];
  v13 = v12;
  v15 = v14;

  if (CKMainScreenScale_once_83 != -1)
  {
    [CKTranscriptAbstractLabelCell layoutSubviewsForAlignmentContents];
  }

  if (*&CKMainScreenScale_sMainScreenScale_83 == 0.0)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = *&CKMainScreenScale_sMainScreenScale_83;
  }

  v17 = floor((v6 + (v10 - v15) * 0.5) * v16);
  v18 = *(MEMORY[0x1E69DC5C0] + 8);
  v19 = *(MEMORY[0x1E69DC5C0] + 24);
  cellView2 = [(CKTranscriptAbstractLabelCell *)self cellView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  cellView3 = [(CKTranscriptAbstractLabelCell *)self cellView];
  v23 = cellView3;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();

    if ((v24 & 1) == 0)
    {
      goto LABEL_12;
    }

    cellView3 = [(CKTranscriptAbstractLabelCell *)self cellView];
    v23 = cellView3;
  }

  configuration = [cellView3 configuration];
  background = [configuration background];
  [background cornerRadius];
  v28 = v27;

  if (v28 > 0.0)
  {
    configuration2 = [v23 configuration];
    [configuration2 contentInsets];
    v18 = v30;
    v19 = v31;
  }

LABEL_12:
  if ([(CKEditableCollectionViewCell *)self orientation]== 2)
  {
    [(CKTranscriptAbstractLabelCell *)self bounds];
    Width = CGRectGetWidth(v44);
    [(CKEditableCollectionViewCell *)self marginInsets];
    v34 = Width - v33;
    v45.origin.x = v4;
    v45.origin.y = v17 / v16;
    v45.size.width = v13;
    v45.size.height = v15;
    v35 = v34 - CGRectGetWidth(v45);
    [(CKTranscriptAbstractLabelCell *)self safeAreaInsets];
    v37 = v19 + v35 - v36;
  }

  else if ([(CKTranscriptAbstractLabelCell *)self wantsContactImageLayout])
  {
    v37 = v4 - v18;
  }

  else
  {
    [(CKEditableCollectionViewCell *)self marginInsets];
    v39 = v38;
    [(CKTranscriptAbstractLabelCell *)self safeAreaInsets];
    v37 = v39 + v40 - v18;
  }

  cellView4 = [(CKTranscriptAbstractLabelCell *)self cellView];
  if (CKMainScreenScale_once_83 != -1)
  {
    [CKTranscriptAbstractLabelCell layoutSubviewsForAlignmentContents];
  }

  if (*&CKMainScreenScale_sMainScreenScale_83 == 0.0)
  {
    v42 = 1.0;
  }

  else
  {
    v42 = *&CKMainScreenScale_sMainScreenScale_83;
  }

  [cellView4 setFrame:{round(v37 * v42) / v42, round(v17 / v16 * v42) / v42, round(v13 * v42) / v42, round(v15 * v42) / v42}];
}

- (CGRect)contentAlignmentRect
{
  v20.receiver = self;
  v20.super_class = CKTranscriptAbstractLabelCell;
  [(CKEditableCollectionViewCell *)&v20 contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(CKTranscriptAbstractLabelCell *)self wantsOffsetForReplyLine]&& ![(CKEditableCollectionViewCell *)self orientation])
  {
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 replyLineWidth];
    v13 = v12;
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 replyLineViewHorizontalPadding];
    v4 = v4 + v13 + v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)addFilter:(id)filter
{
  v8.receiver = self;
  v8.super_class = CKTranscriptAbstractLabelCell;
  filterCopy = filter;
  [(CKEditableCollectionViewCell *)&v8 addFilter:filterCopy];
  v5 = [(CKTranscriptAbstractLabelCell *)self cellView:v8.receiver];
  [filterCopy contentAlpha];
  v7 = v6;

  [v5 setAlpha:v7];
}

- (void)clearFilters
{
  v4.receiver = self;
  v4.super_class = CKTranscriptAbstractLabelCell;
  [(CKEditableCollectionViewCell *)&v4 clearFilters];
  cellView = [(CKTranscriptAbstractLabelCell *)self cellView];
  [cellView setAlpha:1.0];
}

- (void)setWantsContactImageLayout:(BOOL)layout
{
  if (self->_wantsContactImageLayout != layout)
  {
    self->_wantsContactImageLayout = layout;
    [(CKTranscriptAbstractLabelCell *)self setNeedsLayout];
  }
}

- (void)setWantsOffsetForReplyLine:(BOOL)line
{
  if (self->_wantsOffsetForReplyLine != line)
  {
    self->_wantsOffsetForReplyLine = line;
    [(CKTranscriptAbstractLabelCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKTranscriptAbstractLabelCell;
  [(CKTranscriptCell *)&v3 prepareForReuse];
  [(CKTranscriptAbstractLabelCell *)self setWantsOffsetForReplyLine:0];
}

+ (CGSize)sizeThatFits:(CGSize)fits attributedText:(id)text displayScale:(double)scale
{
  textCopy = text;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = MEMORY[0x1E696AEC0];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"%@ is not implemented", v10];
  v12 = [v7 exceptionWithName:v8 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is not implemented", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (NSAttributedString)attributedText
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is not implemented", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)cellView
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is not implemented", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end
@interface CKAssociatedMessageTranscriptCell
- (CGRect)adjustedContentAlignmentRect;
- (CGRect)associatedViewFrame:(CGRect)a3 inContainerFrame:(CGRect)a4;
- (CGRect)rawAssociatedItemViewFrame;
- (CGSize)parentSize;
- (CGSize)size;
- (CKAssociatedMessageTranscriptCellDelegate)delegate;
- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor;
- (UIEdgeInsets)stickerReactionInsetsForParent;
- (double)swipeToReplyLayoutOffset;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)addFilter:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)clearFilters;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)performReload:(id)a3 completion:(id)a4;
- (void)prepareForReuse;
- (void)setAssociatedItemView:(id)a3;
- (void)setGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a3;
@end

@implementation CKAssociatedMessageTranscriptCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v15.receiver = self;
  v15.super_class = CKAssociatedMessageTranscriptCell;
  [(CKTranscriptMessageContentCell *)&v15 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  if (v12)
  {
    [v12 geometryDescriptor];
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
  }

  [(CKAssociatedMessageTranscriptCell *)self setGeometryDescriptor:v13];
  [v12 size];
  [(CKAssociatedMessageTranscriptCell *)self setSize:?];
  -[CKTranscriptMessageCell setFailed:](self, "setFailed:", [v12 failed]);
  [(CKAssociatedMessageTranscriptCell *)self setNeedsLayout];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = CKAssociatedMessageTranscriptCell;
  v5 = [(CKAssociatedMessageTranscriptCell *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self || ([(CKEditableCollectionViewCell *)self contentView], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
  {

    v5 = 0;
  }

  return v5;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  if (![(CKTranscriptCollectionViewLayoutAttributes *)self->_layoutAttributes isEqual:v4])
  {
    v5.receiver = self;
    v5.super_class = CKAssociatedMessageTranscriptCell;
    [(CKAssociatedMessageTranscriptCell *)&v5 applyLayoutAttributes:v4];
    [(CKAssociatedMessageTranscriptCell *)self setLayoutAttributes:v4];
    if (v4[56] > 0.0)
    {
      [(CKAssociatedMessageTranscriptCell *)self setNeedsLayout];
    }
  }
}

- (void)setAssociatedItemView:(id)a3
{
  v5 = a3;
  associatedItemView = self->_associatedItemView;
  if (associatedItemView != v5)
  {
    v12 = v5;
    if (associatedItemView)
    {
      [(UIView *)associatedItemView removeFromSuperview];
    }

    objc_storeStrong(&self->_associatedItemView, a3);
    [(UIView *)v12 frame];
    self->_rawAssociatedItemViewFrame.origin.x = v7;
    self->_rawAssociatedItemViewFrame.origin.y = v8;
    self->_rawAssociatedItemViewFrame.size.width = v9;
    self->_rawAssociatedItemViewFrame.size.height = v10;
    if (self->_associatedItemView)
    {
      v11 = [(CKEditableCollectionViewCell *)self contentView];
      [v11 addSubview:self->_associatedItemView];
    }

    [(CKAssociatedMessageTranscriptCell *)self setNeedsLayout];
    v5 = v12;
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKAssociatedMessageTranscriptCell *)self rawAssociatedItemViewFrame];
  v12 = v11;
  v14 = v13;
  [(CKAssociatedMessageTranscriptCell *)self size];
  [(CKAssociatedMessageTranscriptCell *)self associatedViewFrame:v12 inContainerFrame:v14, v15, v16, v4, v6, v8, v10];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(CKAssociatedMessageTranscriptCell *)self swipeToReplyLayoutOffset];
  if (v25 != 0.0)
  {
    [(CKAssociatedMessageTranscriptCell *)self swipeToReplyLayoutOffset];
    v18 = v18 + v26;
  }

  v27 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v27 setFrame:{v18, v20, v22, v24}];

  v28 = [(CKTranscriptMessageContentCell *)self drawerLabel];
  [v28 setHidden:1];
}

- (CGRect)associatedViewFrame:(CGRect)a3 inContainerFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  if ([(CKEditableCollectionViewCell *)self orientation:a3.origin.x])
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    x = CGRectGetMaxX(v15) - v9;
  }

  v11 = x;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)swipeToReplyLayoutOffset
{
  v3 = [(CKAssociatedMessageTranscriptCell *)self layoutAttributes];
  v4 = v3;
  if (!v3 || (v5 = *(v3 + 448), v5 <= 0.0))
  {
    [(CKAssociatedMessageTranscriptCell *)self swipeToReplyDelta];
    v5 = v6;
  }

  return v5;
}

- (void)performReload:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (v6)
  {
    v6[2](v6);
  }

  [(CKAssociatedMessageTranscriptCell *)self setNeedsLayout];
  [(CKAssociatedMessageTranscriptCell *)self layoutIfNeeded];
  v17 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  v29.origin.x = v19;
  v29.origin.y = v21;
  v29.size.width = v23;
  v29.size.height = v25;
  if (CGRectEqualToRect(v28, v29))
  {
    if (v7)
    {
      v7[2](v7, 1);
    }
  }

  else
  {
    v26 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
    [v26 setFrame:{v10, v12, v14, v16}];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __62__CKAssociatedMessageTranscriptCell_performReload_completion___block_invoke;
    v27[3] = &unk_1E72EC7B0;
    v27[4] = self;
    *&v27[5] = v19;
    *&v27[6] = v21;
    *&v27[7] = v23;
    *&v27[8] = v25;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v27 options:v7 animations:0.25 completion:0.0];
  }
}

void __62__CKAssociatedMessageTranscriptCell_performReload_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) associatedItemView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKAssociatedMessageTranscriptCell;
  [(CKTranscriptMessageCell *)&v4 prepareForReuse];
  [(CKAssociatedMessageTranscriptCell *)self clearFilters];
  [(CKAssociatedMessageTranscriptCell *)self setLayoutAttributes:0];
  [(CKAssociatedMessageTranscriptCell *)self setCumulativeAssociatedOffset:0.0];
  [(CKAssociatedMessageTranscriptCell *)self setParentSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(CKAssociatedMessageTranscriptCell *)self setParentRotationOffset:0.0];
  v3 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v3 removeFromSuperview];

  [(CKAssociatedMessageTranscriptCell *)self setAssociatedItemView:0];
  [(CKAssociatedMessageTranscriptCell *)self setDelegate:0];
}

- (void)addFilter:(id)a3
{
  v6 = a3;
  v7 = [v6 balloonFilters];

  if (v7)
  {
    v8 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
    v9 = [v8 layer];
    v10 = [v9 filters];
    if (v10)
    {
      v18 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
      v17 = [v18 layer];
      v3 = [v17 filters];
      v4 = [v6 balloonFilters];
      [v3 arrayByAddingObjectsFromArray:v4];
    }

    else
    {
      [v6 balloonFilters];
    }
    v11 = ;
    v12 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
    v13 = [v12 layer];
    [v13 setFilters:v11];

    if (v10)
    {

      v11 = v18;
    }
  }

  [v6 contentAlpha];
  v15 = v14;
  v16 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v16 setAlpha:v15];

  v19.receiver = self;
  v19.super_class = CKAssociatedMessageTranscriptCell;
  [(CKEditableCollectionViewCell *)&v19 addFilter:v6];
}

- (void)clearFilters
{
  v3 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  v4 = [v3 layer];
  [v4 setFilters:0];

  v5 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v5 setAlpha:1.0];

  v6.receiver = self;
  v6.super_class = CKAssociatedMessageTranscriptCell;
  [(CKEditableCollectionViewCell *)&v6 clearFilters];
}

- (CGRect)adjustedContentAlignmentRect
{
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKAssociatedMessageTranscriptCell *)self parentSize];
  v12 = v11;
  v14 = v13;
  v15 = [(CKEditableCollectionViewCell *)self orientation];

  [CKAssociatedMessageChatItem adjustContentAlignmentRect:v15 forChatItemSize:v4 transcriptOrientation:v6, v8, v10, v12, v14];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CKAssociatedMessageTranscriptCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor
{
  v3 = *&self[20].yScalar;
  *&retstr->layoutIntent = *&self[20].parentPreviewWidth;
  *&retstr->parentPreviewWidth = v3;
  *&retstr->yScalar = *&self[20].rotation;
  *&retstr->rotation = self[21].associatedLayoutIntent;
  return self;
}

- (void)setGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a3
{
  v4 = *&a3->parentPreviewWidth;
  v3 = *&a3->yScalar;
  v5 = *&a3->layoutIntent;
  self->_geometryDescriptor.rotation = a3->rotation;
  *&self->_geometryDescriptor.parentPreviewWidth = v4;
  *&self->_geometryDescriptor.yScalar = v3;
  *&self->_geometryDescriptor.layoutIntent = v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)parentSize
{
  width = self->_parentSize.width;
  height = self->_parentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)stickerReactionInsetsForParent
{
  top = self->_stickerReactionInsetsForParent.top;
  left = self->_stickerReactionInsetsForParent.left;
  bottom = self->_stickerReactionInsetsForParent.bottom;
  right = self->_stickerReactionInsetsForParent.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)rawAssociatedItemViewFrame
{
  x = self->_rawAssociatedItemViewFrame.origin.x;
  y = self->_rawAssociatedItemViewFrame.origin.y;
  width = self->_rawAssociatedItemViewFrame.size.width;
  height = self->_rawAssociatedItemViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
@interface CKAssociatedMessageTranscriptCell
- (CGRect)adjustedContentAlignmentRect;
- (CGRect)associatedViewFrame:(CGRect)frame inContainerFrame:(CGRect)containerFrame;
- (CGRect)rawAssociatedItemViewFrame;
- (CGSize)parentSize;
- (CGSize)size;
- (CKAssociatedMessageTranscriptCellDelegate)delegate;
- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor;
- (UIEdgeInsets)stickerReactionInsetsForParent;
- (double)swipeToReplyLayoutOffset;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)addFilter:(id)filter;
- (void)applyLayoutAttributes:(id)attributes;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)performReload:(id)reload completion:(id)completion;
- (void)prepareForReuse;
- (void)setAssociatedItemView:(id)view;
- (void)setGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor;
@end

@implementation CKAssociatedMessageTranscriptCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = CKAssociatedMessageTranscriptCell;
  [(CKTranscriptMessageContentCell *)&v15 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  if (itemCopy)
  {
    [itemCopy geometryDescriptor];
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
  }

  [(CKAssociatedMessageTranscriptCell *)self setGeometryDescriptor:v13];
  [itemCopy size];
  [(CKAssociatedMessageTranscriptCell *)self setSize:?];
  -[CKTranscriptMessageCell setFailed:](self, "setFailed:", [itemCopy failed]);
  [(CKAssociatedMessageTranscriptCell *)self setNeedsLayout];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = CKAssociatedMessageTranscriptCell;
  v5 = [(CKAssociatedMessageTranscriptCell *)&v8 hitTest:event withEvent:test.x, test.y];
  if (v5 == self || ([(CKEditableCollectionViewCell *)self contentView], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
  {

    v5 = 0;
  }

  return v5;
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (![(CKTranscriptCollectionViewLayoutAttributes *)self->_layoutAttributes isEqual:attributesCopy])
  {
    v5.receiver = self;
    v5.super_class = CKAssociatedMessageTranscriptCell;
    [(CKAssociatedMessageTranscriptCell *)&v5 applyLayoutAttributes:attributesCopy];
    [(CKAssociatedMessageTranscriptCell *)self setLayoutAttributes:attributesCopy];
    if (attributesCopy[56] > 0.0)
    {
      [(CKAssociatedMessageTranscriptCell *)self setNeedsLayout];
    }
  }
}

- (void)setAssociatedItemView:(id)view
{
  viewCopy = view;
  associatedItemView = self->_associatedItemView;
  if (associatedItemView != viewCopy)
  {
    v12 = viewCopy;
    if (associatedItemView)
    {
      [(UIView *)associatedItemView removeFromSuperview];
    }

    objc_storeStrong(&self->_associatedItemView, view);
    [(UIView *)v12 frame];
    self->_rawAssociatedItemViewFrame.origin.x = v7;
    self->_rawAssociatedItemViewFrame.origin.y = v8;
    self->_rawAssociatedItemViewFrame.size.width = v9;
    self->_rawAssociatedItemViewFrame.size.height = v10;
    if (self->_associatedItemView)
    {
      contentView = [(CKEditableCollectionViewCell *)self contentView];
      [contentView addSubview:self->_associatedItemView];
    }

    [(CKAssociatedMessageTranscriptCell *)self setNeedsLayout];
    viewCopy = v12;
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

  associatedItemView = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [associatedItemView setFrame:{v18, v20, v22, v24}];

  drawerLabel = [(CKTranscriptMessageContentCell *)self drawerLabel];
  [drawerLabel setHidden:1];
}

- (CGRect)associatedViewFrame:(CGRect)frame inContainerFrame:(CGRect)containerFrame
{
  height = containerFrame.size.height;
  width = containerFrame.size.width;
  y = containerFrame.origin.y;
  x = containerFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  if ([(CKEditableCollectionViewCell *)self orientation:frame.origin.x])
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
  layoutAttributes = [(CKAssociatedMessageTranscriptCell *)self layoutAttributes];
  v4 = layoutAttributes;
  if (!layoutAttributes || (v5 = *(layoutAttributes + 448), v5 <= 0.0))
  {
    [(CKAssociatedMessageTranscriptCell *)self swipeToReplyDelta];
    v5 = v6;
  }

  return v5;
}

- (void)performReload:(id)reload completion:(id)completion
{
  reloadCopy = reload;
  completionCopy = completion;
  associatedItemView = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [associatedItemView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (reloadCopy)
  {
    reloadCopy[2](reloadCopy);
  }

  [(CKAssociatedMessageTranscriptCell *)self setNeedsLayout];
  [(CKAssociatedMessageTranscriptCell *)self layoutIfNeeded];
  associatedItemView2 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [associatedItemView2 frame];
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
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    associatedItemView3 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
    [associatedItemView3 setFrame:{v10, v12, v14, v16}];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __62__CKAssociatedMessageTranscriptCell_performReload_completion___block_invoke;
    v27[3] = &unk_1E72EC7B0;
    v27[4] = self;
    *&v27[5] = v19;
    *&v27[6] = v21;
    *&v27[7] = v23;
    *&v27[8] = v25;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v27 options:completionCopy animations:0.25 completion:0.0];
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
  associatedItemView = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [associatedItemView removeFromSuperview];

  [(CKAssociatedMessageTranscriptCell *)self setAssociatedItemView:0];
  [(CKAssociatedMessageTranscriptCell *)self setDelegate:0];
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  balloonFilters = [filterCopy balloonFilters];

  if (balloonFilters)
  {
    associatedItemView = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
    layer = [associatedItemView layer];
    filters = [layer filters];
    if (filters)
    {
      associatedItemView2 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
      layer2 = [associatedItemView2 layer];
      filters2 = [layer2 filters];
      balloonFilters2 = [filterCopy balloonFilters];
      [filters2 arrayByAddingObjectsFromArray:balloonFilters2];
    }

    else
    {
      [filterCopy balloonFilters];
    }
    v11 = ;
    associatedItemView3 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
    layer3 = [associatedItemView3 layer];
    [layer3 setFilters:v11];

    if (filters)
    {

      v11 = associatedItemView2;
    }
  }

  [filterCopy contentAlpha];
  v15 = v14;
  associatedItemView4 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [associatedItemView4 setAlpha:v15];

  v19.receiver = self;
  v19.super_class = CKAssociatedMessageTranscriptCell;
  [(CKEditableCollectionViewCell *)&v19 addFilter:filterCopy];
}

- (void)clearFilters
{
  associatedItemView = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  layer = [associatedItemView layer];
  [layer setFilters:0];

  associatedItemView2 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [associatedItemView2 setAlpha:1.0];

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
  orientation = [(CKEditableCollectionViewCell *)self orientation];

  [CKAssociatedMessageChatItem adjustContentAlignmentRect:orientation forChatItemSize:v4 transcriptOrientation:v6, v8, v10, v12, v14];
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

- (void)setGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor
{
  v4 = *&descriptor->parentPreviewWidth;
  v3 = *&descriptor->yScalar;
  v5 = *&descriptor->layoutIntent;
  self->_geometryDescriptor.rotation = descriptor->rotation;
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
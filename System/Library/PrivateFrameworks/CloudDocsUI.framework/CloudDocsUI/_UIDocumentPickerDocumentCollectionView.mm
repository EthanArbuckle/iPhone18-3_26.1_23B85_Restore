@interface _UIDocumentPickerDocumentCollectionView
- (CGPoint)_updatedContentOffsetForOffset:(CGPoint)offset avoidNegativeContentOffset:(BOOL)contentOffset;
- (void)_performWhileAvoidingNegativeContentOffset:(id)offset;
- (void)setAdjustedContentSize:(CGSize)size withFrameSize:(CGSize)frameSize;
- (void)setBounds:(CGRect)bounds;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentSize:(CGSize)size;
- (void)setFrame:(CGRect)frame;
@end

@implementation _UIDocumentPickerDocumentCollectionView

- (void)_performWhileAvoidingNegativeContentOffset:(id)offset
{
  avoidNegativeContentOffset = self->_avoidNegativeContentOffset;
  self->_avoidNegativeContentOffset = 1;
  (*(offset + 2))(offset, a2);
  self->_avoidNegativeContentOffset = avoidNegativeContentOffset;
}

- (void)setAdjustedContentSize:(CGSize)size withFrameSize:(CGSize)frameSize
{
  height = frameSize.height;
  v5 = size.height;
  width = size.width;
  [(_UIDocumentPickerDocumentCollectionView *)self contentSizeAdjustment:size.width];
  v9 = height + v8;
  if (v5 >= v9)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  v11.receiver = self;
  v11.super_class = _UIDocumentPickerDocumentCollectionView;
  [(_UIDocumentPickerDocumentCollectionView *)&v11 setContentSize:width, v10];
}

- (void)setFrame:(CGRect)frame
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52___UIDocumentPickerDocumentCollectionView_setFrame___block_invoke;
  v3[3] = &unk_278DD6990;
  v3[4] = self;
  frameCopy = frame;
  [(_UIDocumentPickerDocumentCollectionView *)self _performWhileAvoidingNegativeContentOffset:v3];
}

- (void)setBounds:(CGRect)bounds
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53___UIDocumentPickerDocumentCollectionView_setBounds___block_invoke;
  v3[3] = &unk_278DD6990;
  v3[4] = self;
  boundsCopy = bounds;
  [(_UIDocumentPickerDocumentCollectionView *)self _performWhileAvoidingNegativeContentOffset:v3];
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(_UIDocumentPickerDocumentCollectionView *)self frame];

  [(_UIDocumentPickerDocumentCollectionView *)self setAdjustedContentSize:width withFrameSize:height];
}

- (CGPoint)_updatedContentOffsetForOffset:(CGPoint)offset avoidNegativeContentOffset:(BOOL)contentOffset
{
  y = offset.y;
  x = offset.x;
  if (contentOffset)
  {
    [(_UIDocumentPickerDocumentCollectionView *)self contentOffset];
    v7 = fmin(v6, 0.0);
    if (v7 >= y)
    {
      y = v7;
    }
  }

  v8 = x;
  v9 = y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)setContentOffset:(CGPoint)offset
{
  [(_UIDocumentPickerDocumentCollectionView *)self _updatedContentOffsetForOffset:self->_avoidNegativeContentOffset avoidNegativeContentOffset:offset.x, offset.y];
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerDocumentCollectionView;
  [(_UIDocumentPickerDocumentCollectionView *)&v4 setContentOffset:?];
}

@end
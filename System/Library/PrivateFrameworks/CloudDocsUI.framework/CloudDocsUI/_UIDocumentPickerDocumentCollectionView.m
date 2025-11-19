@interface _UIDocumentPickerDocumentCollectionView
- (CGPoint)_updatedContentOffsetForOffset:(CGPoint)a3 avoidNegativeContentOffset:(BOOL)a4;
- (void)_performWhileAvoidingNegativeContentOffset:(id)a3;
- (void)setAdjustedContentSize:(CGSize)a3 withFrameSize:(CGSize)a4;
- (void)setBounds:(CGRect)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _UIDocumentPickerDocumentCollectionView

- (void)_performWhileAvoidingNegativeContentOffset:(id)a3
{
  avoidNegativeContentOffset = self->_avoidNegativeContentOffset;
  self->_avoidNegativeContentOffset = 1;
  (*(a3 + 2))(a3, a2);
  self->_avoidNegativeContentOffset = avoidNegativeContentOffset;
}

- (void)setAdjustedContentSize:(CGSize)a3 withFrameSize:(CGSize)a4
{
  height = a4.height;
  v5 = a3.height;
  width = a3.width;
  [(_UIDocumentPickerDocumentCollectionView *)self contentSizeAdjustment:a3.width];
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

- (void)setFrame:(CGRect)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52___UIDocumentPickerDocumentCollectionView_setFrame___block_invoke;
  v3[3] = &unk_278DD6990;
  v3[4] = self;
  v4 = a3;
  [(_UIDocumentPickerDocumentCollectionView *)self _performWhileAvoidingNegativeContentOffset:v3];
}

- (void)setBounds:(CGRect)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53___UIDocumentPickerDocumentCollectionView_setBounds___block_invoke;
  v3[3] = &unk_278DD6990;
  v3[4] = self;
  v4 = a3;
  [(_UIDocumentPickerDocumentCollectionView *)self _performWhileAvoidingNegativeContentOffset:v3];
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(_UIDocumentPickerDocumentCollectionView *)self frame];

  [(_UIDocumentPickerDocumentCollectionView *)self setAdjustedContentSize:width withFrameSize:height];
}

- (CGPoint)_updatedContentOffsetForOffset:(CGPoint)a3 avoidNegativeContentOffset:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  if (a4)
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

- (void)setContentOffset:(CGPoint)a3
{
  [(_UIDocumentPickerDocumentCollectionView *)self _updatedContentOffsetForOffset:self->_avoidNegativeContentOffset avoidNegativeContentOffset:a3.x, a3.y];
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerDocumentCollectionView;
  [(_UIDocumentPickerDocumentCollectionView *)&v4 setContentOffset:?];
}

@end
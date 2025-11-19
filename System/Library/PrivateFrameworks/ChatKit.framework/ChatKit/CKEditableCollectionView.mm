@interface CKEditableCollectionView
- (CKEditableCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (UIEdgeInsets)effectiveBalloonCellContentAlignmentInsets;
- (UIEdgeInsets)effectiveCellMarginInsets;
- (UIEdgeInsets)initialSafeAreaInsets;
- (UIEdgeInsets)marginInsets;
- (UIEdgeInsets)safeAreaInsets;
- (id)dequeueReusableCellWithReuseIdentifier:(id)a3 forIndexPath:(id)a4;
- (void)_ck_setEditing:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CKEditableCollectionView

- (UIEdgeInsets)safeAreaInsets
{
  v29.receiver = self;
  v29.super_class = CKEditableCollectionView;
  [(CKEditableCollectionView *)&v29 safeAreaInsets];
  v25 = v4;
  v26 = v3;
  v27 = v6;
  v28 = v5;
  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isModernSplitViewControllerEnabled];

  if (v8)
  {
LABEL_14:
    *&v14 = v25;
    *&v12 = v26;
    v15 = v27;
    v13 = v28;
    goto LABEL_15;
  }

  *&v9.f64[0] = v26;
  v9.f64[1] = v28;
  *&v10.f64[0] = v25;
  v10.f64[1] = v27;
  v11 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *MEMORY[0x1E69DDCE0]), vceqq_f64(v10, *(MEMORY[0x1E69DDCE0] + 16)))));
  v12 = v26;
  v13 = v28;
  v14 = v25;
  v15 = v27;
  if (v11)
  {
    [(CKEditableCollectionView *)self initialSafeAreaInsets:*&v26];
  }

  if (v13 > 0.0 || v15 > 0.0)
  {
    v27 = v15;
    v28 = v13;
    v16 = [(CKEditableCollectionView *)self window:v14];
    v17 = [v16 windowScene];

    if (v17 && ([v17 interfaceOrientation] - 3) <= 1)
    {
      v18 = +[CKUIBehavior sharedBehaviors];
      [v18 landscapeKeyboardInsets];
      v20 = v19;
      v22 = v21;

      v23 = v28;
      if (v28 > 0.0)
      {
        v23 = v20;
      }

      v28 = v23;
      v24 = v27;
      if (v27 > 0.0)
      {
        v24 = v22;
      }

      v27 = v24;
    }

    goto LABEL_14;
  }

LABEL_15:
  result.bottom = *&v14;
  result.top = *&v12;
  result.right = v15;
  result.left = v13;
  return result;
}

- (CKEditableCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  v5.receiver = self;
  v5.super_class = CKEditableCollectionView;
  return [(CKEditableCollectionView *)&v5 initWithFrame:a4 collectionViewLayout:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (id)dequeueReusableCellWithReuseIdentifier:(id)a3 forIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = CKEditableCollectionView;
  v5 = [(CKEditableCollectionView *)&v8 dequeueReusableCellWithReuseIdentifier:a3 forIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    [(CKEditableCollectionView *)self effectiveCellMarginInsets];
    [v6 setMarginInsets:?];
  }

  return v5;
}

- (UIEdgeInsets)effectiveCellMarginInsets
{
  v3 = +[CKUIBehavior sharedBehaviors];
  if ([v3 forceMinTranscriptMarginInsets])
  {
    [v3 minTranscriptMarginInsets];
  }

  else
  {
    [(CKEditableCollectionView *)self marginInsets];
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (UIEdgeInsets)effectiveBalloonCellContentAlignmentInsets
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 balloonTranscriptInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CKEditableCollectionView *)self effectiveCellMarginInsets];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 + v16;
  v19 = v11 + v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (void)_ck_setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->__ck_editing != a3)
  {
    v14[11] = v4;
    v14[12] = v5;
    self->__ck_editing = a3;
    if (!a3)
    {
      v9 = [(CKEditableCollectionView *)self indexPathsForSelectedItems];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __52__CKEditableCollectionView__ck_setEditing_animated___block_invoke;
      v14[3] = &unk_1E72F42A8;
      v14[4] = self;
      [v9 enumerateObjectsUsingBlock:v14];
    }

    v10 = [(CKEditableCollectionView *)self indexPathsForVisibleItems];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__CKEditableCollectionView__ck_setEditing_animated___block_invoke_2;
    v11[3] = &unk_1E72F42D0;
    v11[4] = self;
    v12 = a3;
    v13 = a4;
    [v10 enumerateObjectsUsingBlock:v11];
  }
}

void __52__CKEditableCollectionView__ck_setEditing_animated___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) cellForItemAtIndexPath:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 _ck_setEditing:*(a1 + 40) animated:*(a1 + 41)];
  }
}

- (UIEdgeInsets)marginInsets
{
  top = self->_marginInsets.top;
  left = self->_marginInsets.left;
  bottom = self->_marginInsets.bottom;
  right = self->_marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)initialSafeAreaInsets
{
  top = self->_initialSafeAreaInsets.top;
  left = self->_initialSafeAreaInsets.left;
  bottom = self->_initialSafeAreaInsets.bottom;
  right = self->_initialSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
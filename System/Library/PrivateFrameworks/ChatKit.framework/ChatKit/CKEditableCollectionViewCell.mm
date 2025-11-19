@interface CKEditableCollectionViewCell
+ (Class)_contentViewClass;
- (CGRect)contentAlignmentRect;
- (NSString)description;
- (UIEdgeInsets)_horizontalSafeAreaInsets;
- (UIEdgeInsets)contentAlignmentInsets;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)marginInsets;
- (id)contentView;
- (void)_animateVisibility:(BOOL)a3 completion:(id)a4;
- (void)_ck_setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)layoutSubviews;
- (void)performInsertion:(id)a3;
- (void)performReload:(id)a3 completion:(id)a4;
- (void)performRemoval:(id)a3;
- (void)performRevealAnimated:(BOOL)a3 completion:(id)a4;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setEditingStyle:(int64_t)a3;
- (void)setEffect:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMarginInsets:(UIEdgeInsets)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateCheckmarkImage;
@end

@implementation CKEditableCollectionViewCell

+ (Class)_contentViewClass
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 transcriptCellsNeedVibrancy];

  if (v4)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKEditableCollectionViewCell;
    v5 = objc_msgSendSuper2(&v7, sel__contentViewClass);
  }

  return v5;
}

- (void)setEffect:(id)a3
{
  v7 = a3;
  self->_shouldReturnActualVEV = 1;
  v4 = [(CKEditableCollectionViewCell *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CKEditableCollectionViewCell *)self contentView];
    [v6 setEffect:v7];
  }

  self->_shouldReturnActualVEV = 0;
}

- (id)contentView
{
  v7.receiver = self;
  v7.super_class = CKEditableCollectionViewCell;
  v3 = [(CKEditableCollectionViewCell *)&v7 contentView];
  v4 = +[CKUIBehavior sharedBehaviors];
  if (![v4 transcriptCellsNeedVibrancy])
  {
    goto LABEL_5;
  }

  shouldReturnActualVEV = self->_shouldReturnActualVEV;

  if (!shouldReturnActualVEV)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 contentView];
      v3 = v4 = v3;
LABEL_5:
    }
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKEditableCollectionViewCell;
  v4 = [(CKEditableCollectionViewCell *)&v8 description];
  [(CKEditableCollectionViewCell *)self contentAlignmentInsets];
  v5 = NSStringFromUIEdgeInsets(v10);
  v6 = [v3 stringWithFormat:@"%@ contentAlignmentInsets:%@", v4, v5];

  return v6;
}

- (void)layoutSubviews
{
  v61.receiver = self;
  v61.super_class = CKEditableCollectionViewCell;
  [(CKEditableCollectionViewCell *)&v61 layoutSubviews];
  v3 = [(CKEditableCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[CKEditableCollectionViewCell semanticContentAttribute](self, "semanticContentAttribute")}];
  v13 = [(CKEditableCollectionViewCell *)self checkmark];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_19;
  }

  v59 = v9;
  v57 = v5;
  [v13 sizeToFit];
  [v14 bounds];
  v16 = v15;
  rect = v17;
  v18 = v7 + v11 * 0.5 - v17 * 0.5;
  v19 = [(CKEditableCollectionViewCell *)self traitCollection];
  [v19 displayScale];
  v21 = round(v20 * v18) / v20;
  v22 = [(CKEditableCollectionViewCell *)self traitCollection];
  [v22 displayScale];
  v24 = round(v16 * v23) / v23;

  v58 = v21;
  if ([(CKEditableCollectionViewCell *)self _ck_isEditing])
  {
    v25 = +[CKUIBehavior sharedBehaviors];
    if ([v25 forceMinTranscriptMarginInsets])
    {
      v26 = +[CKUIBehavior sharedBehaviors];
      [v26 minTranscriptMarginInsets];
      v28 = v27;
      v30 = v29;
    }

    else
    {
      [(CKEditableCollectionViewCell *)self marginInsets];
      v28 = v38;
      v30 = v39;
    }

    v40 = +[CKUIBehavior sharedBehaviors];
    [v40 editingCheckmarkLeadingPadding];
    v42 = v41;
    v31 = 0.0;
    v62.origin.x = 0.0;
    v62.origin.y = v21;
    v62.size.width = v24;
    v62.size.height = rect;
    v43 = v42 + CGRectGetWidth(v62);
    v44 = +[CKUIBehavior sharedBehaviors];
    [v44 editingCheckmarkTrailingPadding];
    v46 = v45;

    if (v12 == 1)
    {
      v47 = v30;
    }

    else
    {
      v47 = v28;
    }

    v34 = v43 - v47 + v46;
    v35 = +[CKUIBehavior sharedBehaviors];
    [v35 editingCheckmarkLeadingPadding];
    if (v12 == 1)
    {
      v37 = v59 - v48 - v24;
      v32 = 0.0;
      v33 = 0.0;
    }

    else
    {
      v37 = v48;
      v32 = v34;
      v33 = 0.0;
      v34 = 0.0;
    }

    goto LABEL_15;
  }

  v31 = *MEMORY[0x1E69DDCE0];
  v32 = *(MEMORY[0x1E69DDCE0] + 8);
  v33 = *(MEMORY[0x1E69DDCE0] + 16);
  v34 = *(MEMORY[0x1E69DDCE0] + 24);
  if (v12 == 1)
  {
    v35 = +[CKUIBehavior sharedBehaviors];
    [v35 editingCheckmarkLeadingPadding];
    v37 = v59 + v36;
LABEL_15:

    goto LABEL_16;
  }

  v63.origin.x = 0.0;
  v63.origin.y = v58;
  v63.size.width = v24;
  v63.size.height = rect;
  v37 = -CGRectGetMaxX(v63);
LABEL_16:
  v7 = v7 + v31;
  v9 = v59 - (v32 + v34);
  v49 = v33 + v31;
  v5 = v57 + v32;
  v11 = v11 - v49;
  [(CKEditableCollectionViewCell *)self _horizontalSafeAreaInsets];
  v52 = -v51;
  if (v12 != 1)
  {
    v52 = v50;
  }

  [v14 setFrame:{v37 + v52, v58, v24, rect}];
LABEL_19:
  [(CKEditableCollectionViewCell *)self contentAlignmentInsets];
  [(CKEditableCollectionViewCell *)self setContentAlignmentRect:v5 + v56, v7 + v53, v9 - (v56 + v54), v11 - (v53 + v55)];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKEditableCollectionViewCell;
  [(CKEditableCollectionViewCell *)&v4 setSelected:a3];
  if ([(CKEditableCollectionViewCell *)self _ck_isEditing])
  {
    [(CKEditableCollectionViewCell *)self updateCheckmarkImage];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKEditableCollectionViewCell;
  [(CKEditableCollectionViewCell *)&v4 setHighlighted:a3];
  if ([(CKEditableCollectionViewCell *)self _ck_isEditing])
  {
    [(CKEditableCollectionViewCell *)self updateCheckmarkImage];
  }
}

- (void)_ck_setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CKEditableCollectionViewCell *)self checkmark];
  if (v7 || ![(CKEditableCollectionViewCell *)self editingStyle])
  {
    v8 = [(CKEditableCollectionViewCell *)self checkmark];
    if (v8)
    {
      v9 = [(CKEditableCollectionViewCell *)self editingStyle]!= 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  if (self->__ck_editing != v5 || !v9 && v5)
  {
    if (v5 && [(CKEditableCollectionViewCell *)self editingStyle])
    {
      v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(CKEditableCollectionViewCell *)self addSubview:v11];
      [(CKEditableCollectionViewCell *)self setCheckmark:v11];
      [v11 setHidden:{-[CKEditableCollectionViewCell editingStyle](self, "editingStyle") != 2}];
      [(CKEditableCollectionViewCell *)self updateCheckmarkImage];
    }

    if (v4)
    {
      [(CKEditableCollectionViewCell *)self setNeedsLayout];
      [(CKEditableCollectionViewCell *)self layoutIfNeeded];
    }

    self->__ck_editing = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__CKEditableCollectionViewCell__ck_setEditing_animated___block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__CKEditableCollectionViewCell__ck_setEditing_animated___block_invoke_2;
    v14[3] = &unk_1E72F3BE8;
    v15 = v5;
    v14[4] = self;
    v13 = _Block_copy(v14);
    if (v4)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v12 options:v13 animations:0.300000012 completion:0.0];
    }

    else
    {
      v12[2](v12);
      v13[2](v13, 1);
    }
  }
}

uint64_t __56__CKEditableCollectionViewCell__ck_setEditing_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __56__CKEditableCollectionViewCell__ck_setEditing_animated___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) != 1 || ![*(a1 + 32) editingStyle])
  {
    v2 = [*(a1 + 32) checkmark];
    [v2 removeFromSuperview];
    [*(a1 + 32) setCheckmark:0];
  }
}

- (void)setEditingStyle:(int64_t)a3
{
  self->_editingStyle = a3;
  v4 = [(CKEditableCollectionViewCell *)self _ck_isEditing];

  [(CKEditableCollectionViewCell *)self _ck_setEditing:v4];
}

- (UIEdgeInsets)contentAlignmentInsets
{
  v2 = self->_contentInsets.top + self->_marginInsets.top;
  v3 = self->_contentInsets.left + self->_marginInsets.left;
  v4 = self->_contentInsets.bottom + self->_marginInsets.bottom;
  v5 = self->_contentInsets.right + self->_marginInsets.right;
  [(CKEditableCollectionViewCell *)self _horizontalSafeAreaInsets];
  v7 = v2 + v6;
  v9 = v3 + v8;
  v11 = v4 + v10;
  v13 = v5 + v12;
  result.right = v13;
  result.bottom = v11;
  result.left = v9;
  result.top = v7;
  return result;
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(CKEditableCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setMarginInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_marginInsets.top, v3), vceqq_f64(*&self->_marginInsets.bottom, v4)))) & 1) == 0)
  {
    self->_marginInsets = a3;
    [(CKEditableCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)performInsertion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

- (void)performRemoval:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

- (void)performReload:(id)a3 completion:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (v6)
  {
    v6[2](v6);
  }

  if (v5)
  {
    v5[2](v5, 1);
  }
}

- (void)performRevealAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  if (v4)
  {
    [(CKEditableCollectionViewCell *)self performReveal:v7];
  }

  else
  {
    [(CKEditableCollectionViewCell *)self _updateVisibility:1];
    v6 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    (*(v7 + 2))();
  }

  v6 = v7;
LABEL_6:
}

- (void)_animateVisibility:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E69DD250];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CKEditableCollectionViewCell__animateVisibility_completion___block_invoke;
  v11[3] = &unk_1E72ED8D8;
  v11[4] = self;
  v12 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__CKEditableCollectionViewCell__animateVisibility_completion___block_invoke_2;
  v9[3] = &unk_1E72ED1F0;
  v10 = v6;
  v8 = v6;
  [v7 transitionWithView:self duration:5242880 options:v11 animations:v9 completion:0.3];
}

uint64_t __62__CKEditableCollectionViewCell__animateVisibility_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (UIEdgeInsets)_horizontalSafeAreaInsets
{
  [(CKEditableCollectionViewCell *)self safeAreaInsets];
  v4 = 0.0;
  v5 = 0.0;
  result.right = v3;
  result.bottom = v5;
  result.left = v2;
  result.top = v4;
  return result;
}

- (void)updateCheckmarkImage
{
  v3 = [(CKEditableCollectionViewCell *)self isSelected];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = v4;
  if (v3)
  {
    [v4 transcriptEditingSelectedImage];
  }

  else
  {
    [v4 transcriptEditingUnselectedImage];
  }
  v7 = ;

  v6 = [(CKEditableCollectionViewCell *)self checkmark];
  [v6 setImage:v7];
}

- (CGRect)contentAlignmentRect
{
  x = self->_contentAlignmentRect.origin.x;
  y = self->_contentAlignmentRect.origin.y;
  width = self->_contentAlignmentRect.size.width;
  height = self->_contentAlignmentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
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

@end
@interface OBTableHeaderFooterView
- (CGSize)intrinsicContentSize;
- (OBTableHeaderFooterView)initWithLayout:(unint64_t)a3;
- (UIEdgeInsets)hostedViewPadding;
- (UIEdgeInsets)internalContentPadding;
- (void)_applyLayout;
- (void)_layoutContainerForTableFooter;
- (void)_layoutContainerForTableHeader;
- (void)setHostedView:(id)a3;
- (void)setHostedViewPadding:(UIEdgeInsets)a3;
- (void)setInternalContentPadding:(UIEdgeInsets)a3;
- (void)setInternalContentView:(id)a3;
@end

@implementation OBTableHeaderFooterView

- (OBTableHeaderFooterView)initWithLayout:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = OBTableHeaderFooterView;
  result = [(OBTableHeaderFooterView *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    result->_layout = a3;
  }

  return result;
}

- (void)setInternalContentPadding:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_internalContentPadding.top), vceqq_f64(v4, *&self->_internalContentPadding.bottom)))) & 1) == 0)
  {
    self->_internalContentPadding = a3;
    [(OBTableHeaderFooterView *)self _applyLayout];
  }
}

- (void)setHostedViewPadding:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_internalContentPadding.top), vceqq_f64(v4, *&self->_internalContentPadding.bottom)))) & 1) == 0)
  {
    self->_hostedViewPadding = a3;
    [(OBTableHeaderFooterView *)self _applyLayout];
  }
}

- (void)setInternalContentView:(id)a3
{
  v7 = a3;
  if (self->_internalContentView != v7 || (-[OBTableHeaderFooterView subviews](self, "subviews"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:v7], v5, (v6 & 1) == 0))
  {
    objc_storeStrong(&self->_internalContentView, a3);
    [(OBTableHeaderFooterView *)self addSubview:self->_internalContentView];
    [(OBTableHeaderFooterView *)self _applyLayout];
  }
}

- (void)setHostedView:(id)a3
{
  v7 = a3;
  if (self->_hostedView != v7 || (-[OBTableHeaderFooterView subviews](self, "subviews"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:v7], v5, (v6 & 1) == 0))
  {
    objc_storeStrong(&self->_hostedView, a3);
    [(OBTableHeaderFooterView *)self addSubview:self->_hostedView];
    [(OBTableHeaderFooterView *)self _applyLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(OBTableHeaderFooterView *)self internalContentView];
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  if (v5 == -1.0 && v7 == -1.0)
  {
    v9 = [(OBTableHeaderFooterView *)self internalContentView];
    [v9 bounds];
    v7 = v10;
  }

  v11 = [(OBTableHeaderFooterView *)self hostedView];
  [v11 intrinsicContentSize];
  v13 = v12;
  v15 = v14;

  if (v13 == -1.0 && v15 == -1.0)
  {
    v17 = [(OBTableHeaderFooterView *)self hostedView];
    [v17 bounds];
    v15 = v18;
  }

  v19 = [(OBTableHeaderFooterView *)self layout];
  [(OBTableHeaderFooterView *)self hostedViewPadding];
  if (v19)
  {
    v22 = v20;
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v24 = v23;
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v26 = v25;
    v27 = [(OBTableHeaderFooterView *)self hostedView];

    v28 = *(MEMORY[0x1E695F060] + 8);
    if (!v27)
    {
      v22 = 0.0;
      v15 = *(MEMORY[0x1E695F060] + 8);
    }

    v29 = [(OBTableHeaderFooterView *)self internalContentView];

    if (v29)
    {
      v30 = v26;
    }

    else
    {
      v30 = 0.0;
    }

    if (v29)
    {
      v31 = v24;
    }

    else
    {
      v31 = 0.0;
    }

    if (v29)
    {
      v32 = v7;
    }

    else
    {
      v32 = v28;
    }

    v33 = v30 + v32 + v22 + v15 + v31;
  }

  else
  {
    v34 = v21;
    v35 = [(OBTableHeaderFooterView *)self hostedView];

    if (v35)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0.0;
    }

    if (!v35)
    {
      v15 = *(MEMORY[0x1E695F060] + 8);
    }

    [(OBTableHeaderFooterView *)self internalContentPadding];
    v38 = v7 + v37;
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v33 = v36 + v15 + v38 + v39;
  }

  [(OBTableHeaderFooterView *)self bounds];
  v41 = v40;
  v42 = v33;
  v43 = floorf(v42);
  result.height = v43;
  result.width = v41;
  return result;
}

- (void)_applyLayout
{
  if ([(OBTableHeaderFooterView *)self layout])
  {

    [(OBTableHeaderFooterView *)self _layoutContainerForTableFooter];
  }

  else
  {

    [(OBTableHeaderFooterView *)self _layoutContainerForTableHeader];
  }
}

- (void)_layoutContainerForTableHeader
{
  v46[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(OBTableHeaderFooterView *)self internalContentConstraints];
  [v3 deactivateConstraints:v4];

  v5 = MEMORY[0x1E696ACD8];
  v6 = [(OBTableHeaderFooterView *)self hostedConstraints];
  [v5 deactivateConstraints:v6];

  v7 = [(OBTableHeaderFooterView *)self internalContentView];

  if (v7)
  {
    v42 = [(OBTableHeaderFooterView *)self internalContentView];
    v40 = [v42 topAnchor];
    v38 = [(OBTableHeaderFooterView *)self topAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v8 = [v40 constraintEqualToAnchor:v38 constant:?];
    v46[0] = v8;
    v9 = [(OBTableHeaderFooterView *)self internalContentView];
    v10 = [v9 leadingAnchor];
    v11 = [(OBTableHeaderFooterView *)self leadingAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v13 = [v10 constraintEqualToAnchor:v11 constant:v12];
    v46[1] = v13;
    v14 = [(OBTableHeaderFooterView *)self internalContentView];
    v15 = [v14 trailingAnchor];
    v16 = [(OBTableHeaderFooterView *)self trailingAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v18 = [v15 constraintEqualToAnchor:v16 constant:-v17];
    v46[2] = v18;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  }

  else
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:@"Header should never be nil" reason:@"Inconsistent layout" userInfo:0];
    [v19 raise];

    v44 = MEMORY[0x1E695E0F0];
  }

  v20 = [(OBTableHeaderFooterView *)self hostedView];

  if (v20)
  {
    v43 = [(OBTableHeaderFooterView *)self hostedView];
    v39 = [v43 topAnchor];
    v41 = [(OBTableHeaderFooterView *)self internalContentView];
    v37 = [v41 bottomAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v36 = [v39 constraintEqualToAnchor:v37 constant:v21];
    v45[0] = v36;
    v22 = [(OBTableHeaderFooterView *)self hostedView];
    v23 = [v22 leadingAnchor];
    v24 = [(OBTableHeaderFooterView *)self leadingAnchor];
    [(OBTableHeaderFooterView *)self hostedViewPadding];
    v26 = [v23 constraintEqualToAnchor:v24 constant:v25];
    v45[1] = v26;
    v27 = [(OBTableHeaderFooterView *)self hostedView];
    v28 = [v27 trailingAnchor];
    v29 = [(OBTableHeaderFooterView *)self trailingAnchor];
    [(OBTableHeaderFooterView *)self hostedViewPadding];
    v31 = [v28 constraintEqualToAnchor:v29 constant:-v30];
    v45[2] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];

    v33 = v44;
    v34 = [v44 arrayByAddingObjectsFromArray:v32];
  }

  else
  {
    v33 = v44;
    v34 = v44;
    v32 = 0;
  }

  [v34 enumerateObjectsUsingBlock:&__block_literal_global];
  [MEMORY[0x1E696ACD8] activateConstraints:v34];
  [(OBTableHeaderFooterView *)self setHostedConstraints:v32];
  [(OBTableHeaderFooterView *)self setInternalContentConstraints:v33];

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_layoutContainerForTableFooter
{
  v50[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(OBTableHeaderFooterView *)self internalContentConstraints];
  [v3 deactivateConstraints:v4];

  v5 = MEMORY[0x1E696ACD8];
  v6 = [(OBTableHeaderFooterView *)self hostedConstraints];
  [v5 deactivateConstraints:v6];

  v7 = [(OBTableHeaderFooterView *)self hostedView];

  if (v7)
  {
    v46 = [(OBTableHeaderFooterView *)self hostedView];
    v44 = [v46 topAnchor];
    v42 = [(OBTableHeaderFooterView *)self topAnchor];
    [(OBTableHeaderFooterView *)self hostedViewPadding];
    v8 = [v44 constraintEqualToAnchor:v42 constant:?];
    v50[0] = v8;
    v9 = [(OBTableHeaderFooterView *)self hostedView];
    v10 = [v9 leadingAnchor];
    v11 = [(OBTableHeaderFooterView *)self leadingAnchor];
    [(OBTableHeaderFooterView *)self hostedViewPadding];
    v13 = [v10 constraintEqualToAnchor:v11 constant:v12];
    v50[1] = v13;
    v14 = [(OBTableHeaderFooterView *)self hostedView];
    v15 = [v14 trailingAnchor];
    v16 = [(OBTableHeaderFooterView *)self trailingAnchor];
    [(OBTableHeaderFooterView *)self hostedViewPadding];
    v18 = [v15 constraintEqualToAnchor:v16 constant:-v17];
    v50[2] = v18;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
  }

  else
  {
    v48 = MEMORY[0x1E695E0F0];
  }

  v19 = [(OBTableHeaderFooterView *)self internalContentView];

  if (v19)
  {
    v20 = [(OBTableHeaderFooterView *)self hostedView];
    v21 = [v20 bottomAnchor];

    if (!v21)
    {
      v21 = [(OBTableHeaderFooterView *)self topAnchor];
    }

    v38 = v21;
    v47 = [(OBTableHeaderFooterView *)self internalContentView];
    v45 = [v47 topAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v43 = [v45 constraintEqualToAnchor:v21 constant:?];
    v49[0] = v43;
    v41 = [(OBTableHeaderFooterView *)self internalContentView];
    v40 = [v41 leadingAnchor];
    v39 = [(OBTableHeaderFooterView *)self leadingAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v37 = [v40 constraintEqualToAnchor:v39 constant:v22];
    v49[1] = v37;
    v23 = [(OBTableHeaderFooterView *)self internalContentView];
    v24 = [v23 trailingAnchor];
    v25 = [(OBTableHeaderFooterView *)self trailingAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v27 = [v24 constraintEqualToAnchor:v25 constant:-v26];
    v49[2] = v27;
    v28 = [(OBTableHeaderFooterView *)self internalContentView];
    v29 = [v28 bottomAnchor];
    v30 = [(OBTableHeaderFooterView *)self bottomAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v32 = [v29 constraintEqualToAnchor:v30 constant:-v31];
    v49[3] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];

    v34 = v48;
    v35 = [v33 arrayByAddingObjectsFromArray:v48];
  }

  else
  {
    v34 = v48;
    v35 = v48;
    v33 = 0;
  }

  [v35 enumerateObjectsUsingBlock:&__block_literal_global_8];
  [MEMORY[0x1E696ACD8] activateConstraints:v35];
  [(OBTableHeaderFooterView *)self setHostedConstraints:v34];
  [(OBTableHeaderFooterView *)self setInternalContentConstraints:v33];

  v36 = *MEMORY[0x1E69E9840];
}

- (UIEdgeInsets)internalContentPadding
{
  top = self->_internalContentPadding.top;
  left = self->_internalContentPadding.left;
  bottom = self->_internalContentPadding.bottom;
  right = self->_internalContentPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)hostedViewPadding
{
  top = self->_hostedViewPadding.top;
  left = self->_hostedViewPadding.left;
  bottom = self->_hostedViewPadding.bottom;
  right = self->_hostedViewPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
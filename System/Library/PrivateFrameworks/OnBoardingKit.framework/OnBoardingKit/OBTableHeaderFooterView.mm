@interface OBTableHeaderFooterView
- (CGSize)intrinsicContentSize;
- (OBTableHeaderFooterView)initWithLayout:(unint64_t)layout;
- (UIEdgeInsets)hostedViewPadding;
- (UIEdgeInsets)internalContentPadding;
- (void)_applyLayout;
- (void)_layoutContainerForTableFooter;
- (void)_layoutContainerForTableHeader;
- (void)setHostedView:(id)view;
- (void)setHostedViewPadding:(UIEdgeInsets)padding;
- (void)setInternalContentPadding:(UIEdgeInsets)padding;
- (void)setInternalContentView:(id)view;
@end

@implementation OBTableHeaderFooterView

- (OBTableHeaderFooterView)initWithLayout:(unint64_t)layout
{
  v5.receiver = self;
  v5.super_class = OBTableHeaderFooterView;
  result = [(OBTableHeaderFooterView *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    result->_layout = layout;
  }

  return result;
}

- (void)setInternalContentPadding:(UIEdgeInsets)padding
{
  v3.f64[0] = padding.top;
  v3.f64[1] = padding.left;
  v4.f64[0] = padding.bottom;
  v4.f64[1] = padding.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_internalContentPadding.top), vceqq_f64(v4, *&self->_internalContentPadding.bottom)))) & 1) == 0)
  {
    self->_internalContentPadding = padding;
    [(OBTableHeaderFooterView *)self _applyLayout];
  }
}

- (void)setHostedViewPadding:(UIEdgeInsets)padding
{
  v3.f64[0] = padding.top;
  v3.f64[1] = padding.left;
  v4.f64[0] = padding.bottom;
  v4.f64[1] = padding.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_internalContentPadding.top), vceqq_f64(v4, *&self->_internalContentPadding.bottom)))) & 1) == 0)
  {
    self->_hostedViewPadding = padding;
    [(OBTableHeaderFooterView *)self _applyLayout];
  }
}

- (void)setInternalContentView:(id)view
{
  viewCopy = view;
  if (self->_internalContentView != viewCopy || (-[OBTableHeaderFooterView subviews](self, "subviews"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:viewCopy], v5, (v6 & 1) == 0))
  {
    objc_storeStrong(&self->_internalContentView, view);
    [(OBTableHeaderFooterView *)self addSubview:self->_internalContentView];
    [(OBTableHeaderFooterView *)self _applyLayout];
  }
}

- (void)setHostedView:(id)view
{
  viewCopy = view;
  if (self->_hostedView != viewCopy || (-[OBTableHeaderFooterView subviews](self, "subviews"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:viewCopy], v5, (v6 & 1) == 0))
  {
    objc_storeStrong(&self->_hostedView, view);
    [(OBTableHeaderFooterView *)self addSubview:self->_hostedView];
    [(OBTableHeaderFooterView *)self _applyLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  internalContentView = [(OBTableHeaderFooterView *)self internalContentView];
  [internalContentView intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  if (v5 == -1.0 && v7 == -1.0)
  {
    internalContentView2 = [(OBTableHeaderFooterView *)self internalContentView];
    [internalContentView2 bounds];
    v7 = v10;
  }

  hostedView = [(OBTableHeaderFooterView *)self hostedView];
  [hostedView intrinsicContentSize];
  v13 = v12;
  v15 = v14;

  if (v13 == -1.0 && v15 == -1.0)
  {
    hostedView2 = [(OBTableHeaderFooterView *)self hostedView];
    [hostedView2 bounds];
    v15 = v18;
  }

  layout = [(OBTableHeaderFooterView *)self layout];
  [(OBTableHeaderFooterView *)self hostedViewPadding];
  if (layout)
  {
    v22 = v20;
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v24 = v23;
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v26 = v25;
    hostedView3 = [(OBTableHeaderFooterView *)self hostedView];

    v28 = *(MEMORY[0x1E695F060] + 8);
    if (!hostedView3)
    {
      v22 = 0.0;
      v15 = *(MEMORY[0x1E695F060] + 8);
    }

    internalContentView3 = [(OBTableHeaderFooterView *)self internalContentView];

    if (internalContentView3)
    {
      v30 = v26;
    }

    else
    {
      v30 = 0.0;
    }

    if (internalContentView3)
    {
      v31 = v24;
    }

    else
    {
      v31 = 0.0;
    }

    if (internalContentView3)
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
    hostedView4 = [(OBTableHeaderFooterView *)self hostedView];

    if (hostedView4)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0.0;
    }

    if (!hostedView4)
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
  internalContentConstraints = [(OBTableHeaderFooterView *)self internalContentConstraints];
  [v3 deactivateConstraints:internalContentConstraints];

  v5 = MEMORY[0x1E696ACD8];
  hostedConstraints = [(OBTableHeaderFooterView *)self hostedConstraints];
  [v5 deactivateConstraints:hostedConstraints];

  internalContentView = [(OBTableHeaderFooterView *)self internalContentView];

  if (internalContentView)
  {
    internalContentView2 = [(OBTableHeaderFooterView *)self internalContentView];
    topAnchor = [internalContentView2 topAnchor];
    topAnchor2 = [(OBTableHeaderFooterView *)self topAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v46[0] = v8;
    internalContentView3 = [(OBTableHeaderFooterView *)self internalContentView];
    leadingAnchor = [internalContentView3 leadingAnchor];
    leadingAnchor2 = [(OBTableHeaderFooterView *)self leadingAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v12];
    v46[1] = v13;
    internalContentView4 = [(OBTableHeaderFooterView *)self internalContentView];
    trailingAnchor = [internalContentView4 trailingAnchor];
    trailingAnchor2 = [(OBTableHeaderFooterView *)self trailingAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v17];
    v46[2] = v18;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  }

  else
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:@"Header should never be nil" reason:@"Inconsistent layout" userInfo:0];
    [v19 raise];

    v44 = MEMORY[0x1E695E0F0];
  }

  hostedView = [(OBTableHeaderFooterView *)self hostedView];

  if (hostedView)
  {
    hostedView2 = [(OBTableHeaderFooterView *)self hostedView];
    topAnchor3 = [hostedView2 topAnchor];
    internalContentView5 = [(OBTableHeaderFooterView *)self internalContentView];
    bottomAnchor = [internalContentView5 bottomAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v36 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:v21];
    v45[0] = v36;
    hostedView3 = [(OBTableHeaderFooterView *)self hostedView];
    leadingAnchor3 = [hostedView3 leadingAnchor];
    leadingAnchor4 = [(OBTableHeaderFooterView *)self leadingAnchor];
    [(OBTableHeaderFooterView *)self hostedViewPadding];
    v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v25];
    v45[1] = v26;
    hostedView4 = [(OBTableHeaderFooterView *)self hostedView];
    trailingAnchor3 = [hostedView4 trailingAnchor];
    trailingAnchor4 = [(OBTableHeaderFooterView *)self trailingAnchor];
    [(OBTableHeaderFooterView *)self hostedViewPadding];
    v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v30];
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
  internalContentConstraints = [(OBTableHeaderFooterView *)self internalContentConstraints];
  [v3 deactivateConstraints:internalContentConstraints];

  v5 = MEMORY[0x1E696ACD8];
  hostedConstraints = [(OBTableHeaderFooterView *)self hostedConstraints];
  [v5 deactivateConstraints:hostedConstraints];

  hostedView = [(OBTableHeaderFooterView *)self hostedView];

  if (hostedView)
  {
    hostedView2 = [(OBTableHeaderFooterView *)self hostedView];
    topAnchor = [hostedView2 topAnchor];
    topAnchor2 = [(OBTableHeaderFooterView *)self topAnchor];
    [(OBTableHeaderFooterView *)self hostedViewPadding];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v50[0] = v8;
    hostedView3 = [(OBTableHeaderFooterView *)self hostedView];
    leadingAnchor = [hostedView3 leadingAnchor];
    leadingAnchor2 = [(OBTableHeaderFooterView *)self leadingAnchor];
    [(OBTableHeaderFooterView *)self hostedViewPadding];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v12];
    v50[1] = v13;
    hostedView4 = [(OBTableHeaderFooterView *)self hostedView];
    trailingAnchor = [hostedView4 trailingAnchor];
    trailingAnchor2 = [(OBTableHeaderFooterView *)self trailingAnchor];
    [(OBTableHeaderFooterView *)self hostedViewPadding];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v17];
    v50[2] = v18;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
  }

  else
  {
    v48 = MEMORY[0x1E695E0F0];
  }

  internalContentView = [(OBTableHeaderFooterView *)self internalContentView];

  if (internalContentView)
  {
    hostedView5 = [(OBTableHeaderFooterView *)self hostedView];
    bottomAnchor = [hostedView5 bottomAnchor];

    if (!bottomAnchor)
    {
      bottomAnchor = [(OBTableHeaderFooterView *)self topAnchor];
    }

    v38 = bottomAnchor;
    internalContentView2 = [(OBTableHeaderFooterView *)self internalContentView];
    topAnchor3 = [internalContentView2 topAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v43 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:?];
    v49[0] = v43;
    internalContentView3 = [(OBTableHeaderFooterView *)self internalContentView];
    leadingAnchor3 = [internalContentView3 leadingAnchor];
    leadingAnchor4 = [(OBTableHeaderFooterView *)self leadingAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v22];
    v49[1] = v37;
    internalContentView4 = [(OBTableHeaderFooterView *)self internalContentView];
    trailingAnchor3 = [internalContentView4 trailingAnchor];
    trailingAnchor4 = [(OBTableHeaderFooterView *)self trailingAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v26];
    v49[2] = v27;
    internalContentView5 = [(OBTableHeaderFooterView *)self internalContentView];
    bottomAnchor2 = [internalContentView5 bottomAnchor];
    bottomAnchor3 = [(OBTableHeaderFooterView *)self bottomAnchor];
    [(OBTableHeaderFooterView *)self internalContentPadding];
    v32 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v31];
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
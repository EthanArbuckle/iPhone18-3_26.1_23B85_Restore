@interface FBSDisplayLayout
- (BOOL)isEqual:(id)equal;
- (CGRect)referenceBounds;
- (id)_initWithElements:(id)elements;
- (id)addElement:(id)element;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)displayType;
- (void)finalizeLayout;
@end

@implementation FBSDisplayLayout

- (void)finalizeLayout
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  timestamp = self->_timestamp;
  self->_timestamp = v3;

  [(FBSDisplayConfiguration *)self->_displayConfiguration bounds];
  v6 = v5;
  rect_16 = v7;
  v9 = v8;
  v11 = v10;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = self->_elements;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    v16 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 8);
    rect_24 = *(MEMORY[0x1E695F058] + 24);
    v42 = *(MEMORY[0x1E695F058] + 16);
    v37 = *MEMORY[0x1E695F058];
    rect = v6;
    rect_8 = v17;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v43 + 1) + 8 * i);
        if ([v19 fillsDisplayBounds])
        {
          [v19 setReferenceFrame:{v6, rect_16, v9, v11}];
        }

        [v19 referenceFrame];
        IsEmpty = CGRectIsEmpty(v49);
        v21 = v16;
        MinX = v17;
        v24 = rect_24;
        v23 = v42;
        if (!IsEmpty)
        {
          [v19 referenceFrame];
          v21 = v25;
          MinX = v26;
          v24 = v27;
          v29 = v28;
          interfaceOrientation = self->_interfaceOrientation;
          if (interfaceOrientation != 2)
          {
            if (interfaceOrientation == 3)
            {
              MinY = CGRectGetMinY(*&v25);
              v53.origin.x = v6;
              v53.origin.y = rect_16;
              v53.size.width = v9;
              v53.size.height = v11;
              Width = CGRectGetWidth(v53);
              v54.origin.x = v21;
              v54.origin.y = MinX;
              v54.size.width = v24;
              v54.size.height = v29;
              MinX = Width - CGRectGetMaxX(v54);
              v6 = rect;
LABEL_14:
              v21 = MinY;
              v16 = v37;
              v23 = v29;
            }

            else
            {
              if (interfaceOrientation == 4)
              {
                v50.origin.x = v6;
                v50.origin.y = rect_16;
                v50.size.width = v9;
                v50.size.height = v11;
                Height = CGRectGetHeight(v50);
                v51.origin.x = v21;
                v51.origin.y = MinX;
                v51.size.width = v24;
                v51.size.height = v29;
                MinY = Height - CGRectGetMaxY(v51);
                v52.origin.x = v21;
                v52.origin.y = MinX;
                v52.size.width = v24;
                v52.size.height = v29;
                MinX = CGRectGetMinX(v52);
                goto LABEL_14;
              }

LABEL_16:
              v23 = v24;
              v24 = v29;
            }

            v17 = rect_8;
            goto LABEL_18;
          }

          v55.origin.x = v6;
          v55.origin.y = rect_16;
          v55.size.width = v9;
          v55.size.height = v11;
          v34 = CGRectGetWidth(v55);
          v56.origin.x = v21;
          v56.origin.y = MinX;
          v56.size.width = v24;
          v56.size.height = v29;
          v36 = v34 - CGRectGetMaxX(v56);
          v57.origin.x = rect;
          v57.origin.y = rect_16;
          v57.size.width = v9;
          v57.size.height = v11;
          v35 = CGRectGetHeight(v57);
          v58.origin.x = v21;
          v58.origin.y = MinX;
          v58.size.width = v24;
          v58.size.height = v29;
          MinX = v35 - CGRectGetMaxY(v58);
          v21 = v36;
          v16 = v37;
          v6 = rect;
          goto LABEL_16;
        }

LABEL_18:
        [v19 setFrame:{v21, MinX, v23, v24}];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v14);
  }
}

uint64_t __33__FBSDisplayLayout__sortElements__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "level")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 level];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  identity = [(FBSDisplayConfiguration *)self->_displayConfiguration identity];
  v5 = identity;
  if (identity)
  {
    v6 = identity;
  }

  else
  {
    v6 = @"<nil>";
  }

  v7 = [v3 appendObject:v6 withName:@"displayIdentity"];

  return v3;
}

- (int64_t)displayType
{
  displayConfiguration = self->_displayConfiguration;
  if (displayConfiguration)
  {
    return [(FBSDisplayConfiguration *)displayConfiguration type];
  }

  else
  {
    return -1;
  }
}

- (id)_initWithElements:(id)elements
{
  elementsCopy = elements;
  v9.receiver = self;
  v9.super_class = FBSDisplayLayout;
  v5 = [(FBSDisplayLayout *)&v9 init];
  if (v5)
  {
    if (elementsCopy)
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithArray:elementsCopy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    elements = v5->_elements;
    v5->_elements = v6;

    *&v5->_interfaceOrientation = xmmword_1A2E69370;
    v5->_backlightState = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [off_1E76BC9C0 builderWithObject:self ofExpectedClass:objc_opt_class()];
  backlightLevel = self->_backlightLevel;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __28__FBSDisplayLayout_isEqual___block_invoke;
  v30[3] = &unk_1E76BD908;
  v7 = equalCopy;
  v31 = v7;
  v8 = [v5 appendInteger:backlightLevel counterpart:v30];
  backlightState = self->_backlightState;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __28__FBSDisplayLayout_isEqual___block_invoke_2;
  v28[3] = &unk_1E76BD908;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendInteger:backlightState counterpart:v28];
  interfaceOrientation = self->_interfaceOrientation;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __28__FBSDisplayLayout_isEqual___block_invoke_3;
  v26[3] = &unk_1E76BD908;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendInteger:interfaceOrientation counterpart:v26];
  elements = self->_elements;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __28__FBSDisplayLayout_isEqual___block_invoke_4;
  v24[3] = &unk_1E76BE1F0;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendObject:elements counterpart:v24];
  displayConfiguration = self->_displayConfiguration;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __28__FBSDisplayLayout_isEqual___block_invoke_5;
  v22[3] = &unk_1E76BD958;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendObject:displayConfiguration counterpart:v22];
  LOBYTE(displayConfiguration) = [v5 isEqual];

  return displayConfiguration;
}

- (id)addElement:(id)element
{
  v4 = [element copy];
  if (v4)
  {
    [(NSMutableArray *)self->_elements addObject:v4];
    [(FBSDisplayLayout *)self _sortElements];
  }

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSDisplayLayout *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSDisplayLayout *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSDisplayLayout *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__FBSDisplayLayout_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E76BCD60;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __58__FBSDisplayLayout_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  if (!CGRectIsEmpty(v23))
  {
    v2 = *(a1 + 40);
    [*(a1 + 32) bounds];
    v3 = [v2 appendRect:@"bounds" withName:?];
  }

  v4 = *(a1 + 32);
  if (*(v4 + 32))
  {
    BSInterfaceOrientationDescription();
  }

  [*(v4 + 24) bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  if (!CGRectIsEmpty(v24))
  {
    [*(a1 + 32) bounds];
    v26.origin.x = v9;
    v26.origin.y = v10;
    v26.size.width = v11;
    v26.size.height = v12;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    if (!CGRectEqualToRect(v25, v26))
    {
      v13 = [*(a1 + 40) appendRect:@"referenceBounds" withName:{x, y, width, height}];
    }
  }

  v14 = *(a1 + 32);
  v15 = v14[5];
  if (v15 != -1)
  {
    v16 = [*(a1 + 40) appendInteger:v15 withName:@"backlightLevel"];
    v14 = *(a1 + 32);
  }

  v17 = v14[6];
  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [*(a1 + 40) appendInteger:v17 withName:@"backlightState"];
    v14 = *(a1 + 32);
  }

  [*(a1 + 40) appendArraySection:v14[1] withName:@"elements" skipIfEmpty:1];
  v19 = *(a1 + 40);
  v21 = [MEMORY[0x1E696AB78] localizedStringFromDate:*(*(a1 + 32) + 16) dateStyle:3 timeStyle:3];
  v20 = [v19 appendObject:v21 withName:@"timestamp" skipIfNil:1];
}

- (CGRect)referenceBounds
{
  [(FBSDisplayConfiguration *)self->_displayConfiguration bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end
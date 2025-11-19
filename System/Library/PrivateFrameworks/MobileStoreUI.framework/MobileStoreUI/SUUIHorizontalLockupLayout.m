@interface SUUIHorizontalLockupLayout
+ (id)fontForButtonViewElement:(id)a3 context:(id)a4;
+ (id)fontForLabelViewElement:(id)a3 context:(id)a4;
+ (id)fontForOrdinalViewElement:(id)a3 context:(id)a4;
- (CGSize)_sizeForRightAlignedColumn:(id)a3 width:(double)a4 context:(id)a5;
- (CGSize)_sizeForViewElement:(id)a3 width:(int64_t)a4 context:(id)a5;
- (SUUIHorizontalLockupLayout)initWithLockup:(id)a3 context:(id)a4;
- (UIEdgeInsets)metadataColumnEdgeInsets;
- (double)_heightForMetadataColumn:(id)a3 width:(double)a4 context:(id)a5;
- (double)bottomPaddingForViewElement:(id)a3;
- (double)columnSpacingForColumnIdentifier:(int64_t)a3;
- (double)topPaddingForViewElement:(id)a3;
- (void)sizeColumnsToFitWidth:(double)a3 context:(id)a4;
@end

@implementation SUUIHorizontalLockupLayout

- (SUUIHorizontalLockupLayout)initWithLockup:(id)a3 context:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v48.receiver = self;
  v48.super_class = SUUIHorizontalLockupLayout;
  v8 = [(SUUIHorizontalLockupLayout *)&v48 init];
  if (v8)
  {
    v9 = [v6 containsElementGroups];
    v49[0] = xmmword_259FCC0E0;
    v49[1] = xmmword_259FCC0F0;
    v49[2] = xmmword_259FCC100;
    v50 = 6;
    v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:1282 valueOptions:0 capacity:7];
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v47[3] = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 0;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v44 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v11 = 3;
    if (v9)
    {
      v11 = 4;
    }

    v42[3] = v11;
    if ([v6 lockupViewType] == 6)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 10.0;
    }

    v41 = 0;
    v13 = [v6 firstChildForElementType:49];
    v14 = [v13 style];
    SUUIViewElementMarginForStyle(v14, &v41);
    v16 = v15;

    if (v41)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    *(v8 + 2) = v17;
    if ([v6 lockupViewType] == 7)
    {
      *(v8 + 24) = xmmword_259FCC110;
      *(v8 + 40) = xmmword_259FCC120;
      v18 = 0x4052000000000000;
    }

    else
    {
      if ([v6 lockupViewType] == 6)
      {
        __asm { FMOV            V0.2D, #15.0 }

        *(v8 + 24) = _Q0;
        *(v8 + 40) = _Q0;
      }

      else
      {
        v24 = *(MEMORY[0x277D768C8] + 16);
        *(v8 + 24) = *MEMORY[0x277D768C8];
        *(v8 + 40) = v24;
      }

      v18 = 0;
    }

    *(v8 + 7) = v18;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __53__SUUIHorizontalLockupLayout_initWithLockup_context___block_invoke;
    v31[3] = &unk_2798FDEA8;
    v35 = v42;
    v40 = v9 ^ 1;
    v32 = v6;
    v36 = v45;
    v37 = v43;
    v33 = v7;
    v38 = v47;
    v39 = 6;
    v25 = v10;
    v34 = v25;
    [v32 enumerateChildrenUsingBlock:v31];
    v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMapTable count](v25, "count")}];
    v27 = *(v8 + 1);
    *(v8 + 1) = v26;

    for (i = 0; i != 56; i += 8)
    {
      v29 = NSMapGet(v25, (*(v49 + i) + 1));
      if (v29)
      {
        [*(v8 + 1) addObject:v29];
      }
    }

    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
  }

  return v8;
}

void __53__SUUIHorizontalLockupLayout_initWithLockup_context___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(*(a1 + 56) + 8) + 24);
  v23 = v3;
  v5 = v23;
  if ([v23 elementType] == 90)
  {
    v6 = [v23 flattenedChildren];
    v7 = [v6 firstObject];

    v5 = v23;
    if (v7)
    {
      v5 = v7;
    }
  }

  v8 = [v5 elementType];
  if (v8 <= 76)
  {
    if (v8 <= 47)
    {
      if (v8 <= 11)
      {
        if (v8 == 7)
        {
          v15 = [v23 firstChildForElementType:49];
          if (!v15)
          {
            goto LABEL_65;
          }

          v16 = v15;

          v4 = 5;
          v5 = v16;
        }

        else if (v8 != 8)
        {
          goto LABEL_65;
        }

        goto LABEL_62;
      }

      if ((v8 - 12) >= 2)
      {
        if (v8 != 29)
        {
          if (v8 != 32)
          {
            goto LABEL_65;
          }

          goto LABEL_62;
        }

        if (*(a1 + 96) == 1)
        {
          v11 = *(*(a1 + 56) + 8);
          v4 = 2;
          goto LABEL_48;
        }

LABEL_62:
        v22 = NSMapGet(*(a1 + 48), (v4 + 1));
        if (!v22)
        {
          v22 = objc_alloc_init(SUUIHorizontalLockupColumn);
          [(SUUIHorizontalLockupColumn *)v22 setIdentifier:v4];
          NSMapInsert(*(a1 + 48), (v4 + 1), v22);
        }

        [(SUUIHorizontalLockupColumn *)v22 _addChildViewElement:v5];

        goto LABEL_65;
      }

      goto LABEL_46;
    }

    if (v8 <= 49)
    {
      if (v8 == 48)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v8 == 50)
      {
        if (*(a1 + 96) != 1)
        {
          goto LABEL_62;
        }

        v12 = [v5 style];
        v13 = [v12 columnType];
        v14 = [v13 isEqualToString:@"buttons"];

        if (!v14)
        {
          goto LABEL_62;
        }

        goto LABEL_47;
      }

      if (v8 != 51)
      {
        if (v8 != 62)
        {
          goto LABEL_65;
        }

        goto LABEL_62;
      }
    }

LABEL_32:
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0 && *(a1 + 96) == 1)
    {
      if ([*(a1 + 32) lockupViewType] == 7)
      {
        v4 = 6;
      }

      else
      {
        v4 = 0;
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    goto LABEL_62;
  }

  if (v8 > 137)
  {
    if (v8 > 143)
    {
      if (v8 == 144)
      {
        goto LABEL_62;
      }

      if (v8 != 152 && v8 != 154)
      {
        goto LABEL_65;
      }

      goto LABEL_32;
    }

    if (v8 == 138)
    {
      if ([*(a1 + 32) lockupViewType] == 7)
      {
        v19 = [v5 text];
        v20 = [v19 string];

        v21 = [v20 length];
        if (!v21)
        {
          goto LABEL_65;
        }
      }

      goto LABEL_62;
    }

    if (v8 != 141)
    {
      goto LABEL_65;
    }

LABEL_46:
    if (*(a1 + 96) != 1)
    {
      goto LABEL_62;
    }

LABEL_47:
    v11 = *(*(a1 + 56) + 8);
    v4 = 1;
LABEL_48:
    *(v11 + 24) = v4;
    goto LABEL_62;
  }

  if (v8 <= 89)
  {
    if (v8 != 77)
    {
      if (v8 != 80)
      {
        goto LABEL_65;
      }

      if (*(*(*(a1 + 72) + 8) + 24))
      {
        goto LABEL_65;
      }

      if (*(a1 + 96) != 1)
      {
        goto LABEL_65;
      }

      v9 = [*(a1 + 40) aggregateValueForKey:0x286AF73A0];
      v10 = [v9 BOOLValue];

      if (!v10)
      {
        goto LABEL_65;
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
      v4 = 4;
      goto LABEL_62;
    }

    goto LABEL_46;
  }

  if (v8 == 90)
  {
    v4 = 0;
    goto LABEL_62;
  }

  if (v8 != 127)
  {
    if (v8 != 135)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  v17 = *(*(a1 + 80) + 8);
  v18 = *(v17 + 24);
  if (v18 < *(a1 + 88) - 1)
  {
    v24[0] = xmmword_259FCC0E0;
    v24[1] = xmmword_259FCC0F0;
    v24[2] = xmmword_259FCC100;
    v25 = 6;
    *(v17 + 24) = v18 + 1;
    *(*(*(a1 + 56) + 8) + 24) = *(v24 + *(*(*(a1 + 80) + 8) + 24));
  }

LABEL_65:
}

+ (id)fontForButtonViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 buttonTitleStyle];
  v8 = v7;
  if (v7)
  {
    v9 = SUUIViewElementFontWithStyle(v7);
  }

  else
  {
    v10 = [v5 style];
    v9 = SUUIViewElementFontWithStyle(v10);
  }

  if (!v9)
  {
    if ([v6 containerViewElementType] == 118)
    {
      v11 = 8;
    }

    else
    {
      v11 = 7;
    }

    v9 = SUUIFontLimitedPreferredFontForTextStyle(v11, 5);
  }

  return v9;
}

+ (id)fontForLabelViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SUUIViewElementFontWithStyle(v7);

  if (!v8)
  {
    v9 = [v5 labelViewStyle];
    if (v9 > 5)
    {
      v8 = 0;
    }

    else
    {
      if (((1 << v9) & 0x1B) != 0)
      {
        if ([v6 containerViewElementType] == 118)
        {
          v10 = 8;
        }

        else
        {
          v10 = 7;
        }
      }

      else if ([v6 containerViewElementType] == 118)
      {
        v10 = 6;
      }

      else
      {
        v10 = 19;
      }

      v8 = SUUIFontLimitedPreferredFontForTextStyle(v10, 5);
    }
  }

  return v8;
}

+ (id)fontForOrdinalViewElement:(id)a3 context:(id)a4
{
  v4 = [a3 style];
  v5 = SUUIViewElementFontWithStyle(v4);

  if (!v5)
  {
    v6 = SUUIFontForTextStyle(25);
    v7 = MEMORY[0x277D74300];
    [v6 pointSize];
    v5 = [v7 _lightSystemFontOfSize:?];
  }

  return v5;
}

- (double)bottomPaddingForViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 elementType];
  v6 = 0.0;
  if (v5 <= 76)
  {
    if (v5 == 8)
    {
      if ([v4 badgeType] == 1)
      {
        v6 = 2.0;
      }

      else
      {
        v6 = 0.0;
      }

      goto LABEL_13;
    }

    if (v5 != 13)
    {
      goto LABEL_13;
    }

LABEL_9:
    v6 = 5.0;
    goto LABEL_13;
  }

  if (v5 == 77)
  {
    goto LABEL_9;
  }

  if ((v5 == 135 || v5 == 138) && self->_tallestNonMetadataColumnHeight > 60.0)
  {
    v6 = 2.0;
  }

LABEL_13:

  return v6;
}

- (double)columnSpacingForColumnIdentifier:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 4) >= 3)
  {
    if (a3)
    {
      return 15.0;
    }

    else
    {
      return self->_imageMarginRight;
    }
  }

  return result;
}

- (void)sizeColumnsToFitWidth:(double)a3 context:(id)a4
{
  v6 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__100;
  v35 = __Block_byref_object_dispose__100;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3010000000;
  v28 = "";
  v29 = a3;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  self->_tallestNonMetadataColumnHeight = 0.0;
  v7 = [(NSMutableArray *)self->_columns count];
  columns = self->_columns;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__SUUIHorizontalLockupLayout_sizeColumnsToFitWidth_context___block_invoke;
  v14[3] = &unk_2798FDED0;
  v19 = v7;
  v14[4] = self;
  v20 = a3;
  v9 = v6;
  v15 = v9;
  v16 = &v25;
  v17 = &v21;
  v18 = &v31;
  [(NSMutableArray *)columns enumerateObjectsUsingBlock:v14];
  v10 = v32[5];
  if (v10)
  {
    [(SUUIHorizontalLockupLayout *)self _heightForMetadataColumn:v10 width:v9 context:v26[4]];
    v11 = v26;
    metadataColumnMinHeight = v12 + self->_metadataColumnEdgeInsets.top + self->_metadataColumnEdgeInsets.bottom;
    v26[4] = v26[4] - self->_metadataColumnEdgeInsets.left - self->_metadataColumnEdgeInsets.right;
    v11[5] = metadataColumnMinHeight;
    if (metadataColumnMinHeight < self->_metadataColumnMinHeight)
    {
      metadataColumnMinHeight = self->_metadataColumnMinHeight;
    }

    v11[5] = metadataColumnMinHeight;
    [v32[5] setSize:?];
  }

  *&self->_tallestNonMetadataColumnHeight = v22[3];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

void __60__SUUIHorizontalLockupLayout_sizeColumnsToFitWidth_context___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v28 = a2;
  v6 = [v28 identifier];
  v7 = 0.0;
  if (*(a1 + 72) - 1 > a3)
  {
    [*(a1 + 32) columnSpacingForColumnIdentifier:v6];
    v7 = v8;
  }

  if (v6 > 3)
  {
    v9 = v28;
    if (v6 == 4)
    {
      v14 = [v28 childViewElements];
      v15 = [v14 firstObject];

      v16 = [objc_opt_class() fontForOrdinalViewElement:v15 context:*(a1 + 40)];
      [v16 lineHeight];
      *&v17 = v17;
      v18 = ceilf(*&v17);
      *(*(*(a1 + 48) + 8) + 32) = *(*(*(a1 + 48) + 8) + 32) - (v7 + 43.0 - v7);
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 24);
      if (v20 < v18)
      {
        v20 = v18;
      }

      *(v19 + 24) = v20;
      [v28 setSize:43.0 - v7];

      goto LABEL_24;
    }

    if (v6 == 5)
    {
      v25 = [v28 childViewElements];
      v22 = [v25 firstObject];

      [*(a1 + 32) _sizeForViewElement:v22 width:*(a1 + 80) context:*(a1 + 40)];
      goto LABEL_21;
    }

    if (v6 != 6)
    {
      goto LABEL_25;
    }

    v10 = *(a1 + 80);
    v11 = v10;
LABEL_15:
    [v9 setSize:{v10, v11}];
LABEL_24:
    v9 = v28;
    goto LABEL_25;
  }

  v9 = v28;
  if ((v6 - 1) < 2)
  {
    [*(a1 + 32) _sizeForRightAlignedColumn:v28 width:*(a1 + 40) context:*(a1 + 80)];
    *(*(*(a1 + 48) + 8) + 32) = *(*(*(a1 + 48) + 8) + 32) - (v7 + v10);
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 24);
    if (v13 < v11)
    {
      v13 = v11;
    }

    *(v12 + 24) = v13;
    v9 = v28;
    goto LABEL_15;
  }

  if (!v6)
  {
    v21 = [v28 childViewElements];
    v22 = [v21 firstObject];

    [*(a1 + 32) _sizeForViewElement:v22 width:*(a1 + 80) context:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 32) = *(*(*(a1 + 48) + 8) + 32) - (v7 + v24);
LABEL_21:
    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 24);
    if (v27 < v23)
    {
      v27 = v23;
    }

    *(v26 + 24) = v27;
    [v28 setSize:?];

    goto LABEL_24;
  }

  if (v6 == 3)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v9 = v28;
    *(*(*(a1 + 48) + 8) + 32) = *(*(*(a1 + 48) + 8) + 32) - v7;
  }

LABEL_25:
}

- (double)topPaddingForViewElement:(id)a3
{
  v3 = a3;
  if ([v3 elementType] != 8 || (v4 = 3.0, objc_msgSend(v3, "badgeType") != 1))
  {
    v4 = 0.0;
  }

  return v4;
}

- (double)_heightForMetadataColumn:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = [v8 childViewElements];
  v11 = [v10 count];
  if (v11 >= 1)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SUUIHorizontalLockupLayout__heightForMetadataColumn_width_context___block_invoke;
    v14[3] = &unk_2798FB010;
    v14[4] = self;
    v17 = a4;
    v15 = v9;
    v16 = &v19;
    v18 = v11;
    [v10 enumerateObjectsUsingBlock:v14];
  }

  v12 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v12;
}

uint64_t __69__SUUIHorizontalLockupLayout__heightForMetadataColumn_width_context___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v10 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    isKindOfClass = [*(a1 + 32) _sizeForViewElement:v10 width:*(a1 + 56) context:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = v6 + *(*(*(a1 + 48) + 8) + 24);
    if (*(a1 + 64) - 1 > a3)
    {
      isKindOfClass = [*(a1 + 32) bottomPaddingForViewElement:v10];
      *(*(*(a1 + 48) + 8) + 24) = v7 + *(*(*(a1 + 48) + 8) + 24);
    }

    if (a3)
    {
      isKindOfClass = [*(a1 + 32) topPaddingForViewElement:v10];
      *(*(*(a1 + 48) + 8) + 24) = v8 + *(*(*(a1 + 48) + 8) + 24);
    }
  }

  return MEMORY[0x2821F9730](isKindOfClass);
}

- (CGSize)_sizeForRightAlignedColumn:(id)a3 width:(double)a4 context:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3010000000;
  v36 = "";
  v37 = *MEMORY[0x277CBF3A8];
  v10 = [v8 childViewElements];
  v11 = [v10 count];
  if (v11 >= 1)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __71__SUUIHorizontalLockupLayout__sizeForRightAlignedColumn_width_context___block_invoke;
    v28[3] = &unk_2798FB010;
    v28[4] = self;
    v31 = a4;
    v12 = v9;
    v29 = v12;
    v30 = &v33;
    v32 = v11;
    [v10 enumerateObjectsUsingBlock:v28];
    v23 = v9;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v38 count:16];
    if (v14)
    {
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          if ([v17 elementType] == 138)
          {
            [(SUUIHorizontalLockupLayout *)self _sizeForViewElement:v17 width:a4 context:v12];
            v34[5] = v18 + v34[5];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v24 objects:v38 count:16];
      }

      while (v14);
    }

    v9 = v23;
  }

  v19 = v34[4];
  v20 = v34[5];

  _Block_object_dispose(&v33, 8);
  v21 = v19;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

void __71__SUUIHorizontalLockupLayout__sizeForRightAlignedColumn_width_context___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v11 = a2;
  if ([v11 elementType] != 138)
  {
    [*(a1 + 32) _sizeForViewElement:v11 width:*(a1 + 56) context:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 40) = v6 + *(*(*(a1 + 48) + 8) + 40);
    v7 = *(*(a1 + 48) + 8);
    if (*(v7 + 32) >= v5)
    {
      v5 = *(v7 + 32);
    }

    *(v7 + 32) = v5;
  }

  if (*(a1 + 64) - 1 > a3)
  {
    [*(a1 + 32) bottomPaddingForViewElement:v11];
    *(*(*(a1 + 48) + 8) + 40) = v8 + *(*(*(a1 + 48) + 8) + 40);
  }

  v9 = v11;
  if (a3)
  {
    [*(a1 + 32) topPaddingForViewElement:v11];
    v9 = v11;
    *(*(*(a1 + 48) + 8) + 40) = v10 + *(*(*(a1 + 48) + 8) + 40);
  }
}

- (CGSize)_sizeForViewElement:(id)a3 width:(int64_t)a4 context:(id)a5
{
  v7 = a5;
  v8 = a3;
  if ([v8 elementType] == 90 && (objc_msgSend(v8, "flattenedChildren"), v9 = objc_claimAutoreleasedReturnValue(), v8, objc_msgSend(v9, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v9, !v8))
  {
    v11 = 29.0;
    v13 = 29.0;
  }

  else
  {
    [v7 sizeForViewElement:v8 width:a4];
    v11 = v10;
    v13 = v12;
  }

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (UIEdgeInsets)metadataColumnEdgeInsets
{
  top = self->_metadataColumnEdgeInsets.top;
  left = self->_metadataColumnEdgeInsets.left;
  bottom = self->_metadataColumnEdgeInsets.bottom;
  right = self->_metadataColumnEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
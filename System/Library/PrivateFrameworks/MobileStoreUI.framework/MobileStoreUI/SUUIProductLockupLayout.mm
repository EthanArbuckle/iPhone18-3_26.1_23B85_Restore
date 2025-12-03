@interface SUUIProductLockupLayout
- (BOOL)hasBottomRightElementWithRightAlignment;
- (CGSize)_sizeForSegmentedControl:(id)control width:(double)width;
- (CGSize)_sizeForVerticalViewElements:(id)elements width:(double)width;
- (CGSize)_sizeForViewElement:(id)element width:(double)width;
- (SUUIProductLockupLayout)initWithLockup:(id)lockup width:(double)width context:(id)context;
- (SUUIProductLockupLayoutSizing)layoutWidthsForWidth:(SEL)width;
- (SUUIProductLockupLayoutSizing)sizingToFitWidth:(SEL)width;
- (double)bottomPaddingForViewElement:(id)element;
- (double)metadataWidthForWidth:(double)width;
- (double)topPaddingForViewElement:(id)element;
- (id)viewElementsForSection:(int64_t)section;
- (void)enumerateViewElementsForWidth:(double)width usingBlock:(id)block;
@end

@implementation SUUIProductLockupLayout

- (SUUIProductLockupLayout)initWithLockup:(id)lockup width:(double)width context:(id)context
{
  v76 = *MEMORY[0x277D85DE8];
  lockupCopy = lockup;
  contextCopy = context;
  v74.receiver = self;
  v74.super_class = SUUIProductLockupLayout;
  v52 = [(SUUIProductLockupLayout *)&v74 init];
  if (v52)
  {
    containsElementGroups = [lockupCopy containsElementGroups];
    objc_storeStrong(&v52->_layoutContext, context);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    p_bottomLeftViewElements = &v52->_bottomLeftViewElements;
    bottomLeftViewElements = v52->_bottomLeftViewElements;
    v52->_bottomLeftViewElements = v8;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    bottomRightViewElements = v52->_bottomRightViewElements;
    p_bottomRightViewElements = &v52->_bottomRightViewElements;
    v52->_bottomRightViewElements = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    middleLeftViewElements = v52->_middleLeftViewElements;
    p_middleLeftViewElements = &v52->_middleLeftViewElements;
    v52->_middleLeftViewElements = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    p_topLeftViewElements = &v52->_topLeftViewElements;
    topLeftViewElements = v52->_topLeftViewElements;
    v52->_topLeftViewElements = v15;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    topRightViewElements = v52->_topRightViewElements;
    p_topRightViewElements = &v52->_topRightViewElements;
    v52->_topRightViewElements = v18;

    v71 = 0;
    v72[0] = &v71;
    v72[1] = 0x3032000000;
    v72[2] = __Block_byref_object_copy__19;
    v72[3] = __Block_byref_object_dispose__19;
    v73 = v52->_bottomRightViewElements;
    v68 = 0;
    v69[0] = &v68;
    v69[1] = 0x3032000000;
    v69[2] = __Block_byref_object_copy__19;
    v69[3] = __Block_byref_object_dispose__19;
    v70 = v52->_middleLeftViewElements;
    if (width < 512.0)
    {
      objc_storeStrong((v72[0] + 40), v52->_bottomRightViewElements);
      v20 = v69;
    }

    else
    {
      v20 = v72;
      v52->_bottomLeftLayoutStyle = 2;
    }

    objc_storeStrong((*v20 + 40), *p_bottomLeftViewElements);
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __56__SUUIProductLockupLayout_initWithLockup_width_context___block_invoke;
    v62[3] = &unk_2798F7E10;
    v22 = v52;
    v67 = width < 512.0;
    v63 = v22;
    v65 = &v71;
    v66 = &v68;
    v23 = v21;
    v64 = v23;
    [lockupCopy enumerateChildrenUsingBlock:v62];
    v24 = *p_topLeftViewElements;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v58 objects:v75 count:16];
    if (v26)
    {
      v53 = v22;
      v27 = *v59;
      do
      {
        v28 = 0;
        do
        {
          if (*v59 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v58 + 1) + 8 * v28);
          style = [v29 style];
          elementPosition = [style elementPosition];

          if (elementPosition <= 5)
          {
            v32 = &v52->_topLeftViewElements;
            if (elementPosition != 2)
            {
              v32 = &v52->_bottomLeftViewElements;
              if (elementPosition != 3)
              {
                v32 = &v52->_middleLeftViewElements;
                if (elementPosition != 4)
                {
                  goto LABEL_22;
                }
              }
            }
          }

          else if (elementPosition > 7)
          {
            v32 = &v52->_bottomLeftViewElements;
            if (elementPosition != 8)
            {
              v32 = &v52->_bottomRightViewElements;
              if (elementPosition != 9)
              {
                goto LABEL_22;
              }
            }
          }

          else
          {
            v32 = &v52->_topLeftViewElements;
            if (elementPosition != 6)
            {
              v32 = &v52->_topRightViewElements;
            }
          }

          v33 = *v32;
          if (v33)
          {
            v34 = v33;
            [v33 addObject:v29];
            goto LABEL_54;
          }

LABEL_22:
          elementType = [v29 elementType];
          v34 = 0;
          if (elementType <= 76)
          {
            if (elementType <= 47)
            {
              if (elementType == 8 || elementType == 12)
              {
LABEL_50:
                if ((containsElementGroups & 1) == 0)
                {
                  v38 = *(v69[0] + 40);

                  v24 = v38;
                }

LABEL_52:
                [(SUUIViewElement *)v24 addObject:v29];
                goto LABEL_53;
              }

              if (elementType != 13)
              {
                goto LABEL_54;
              }

LABEL_39:
              v36 = (v72[0] + 40);
LABEL_40:
              v37 = *v36;
              goto LABEL_41;
            }

            if (elementType <= 49)
            {
              v37 = v24;
              if (elementType != 48)
              {
                goto LABEL_56;
              }

LABEL_41:
              [v37 addObject:v29];
              goto LABEL_53;
            }

            if (elementType == 50 || elementType == 62)
            {
              goto LABEL_50;
            }
          }

          else if (elementType > 137)
          {
            if (elementType > 143)
            {
              if (elementType != 152)
              {
                if (elementType != 144)
                {
                  goto LABEL_54;
                }

                goto LABEL_50;
              }

LABEL_56:
              if (v53->_productImageElement)
              {
                goto LABEL_53;
              }

              v39 = v29;
              productImageElement = v53->_productImageElement;
              v53->_productImageElement = v39;
              goto LABEL_69;
            }

            if (elementType == 138)
            {
              if (([v29 labelViewStyle] & 0xFFFFFFFFFFFFFFFELL) == 4)
              {
                v41 = 1;
              }

              else
              {
                v41 = containsElementGroups;
              }

              if ((v41 & 1) == 0)
              {
                v42 = *(v69[0] + 40);

                v24 = v42;
              }

              goto LABEL_52;
            }

            if (elementType == 141)
            {
              goto LABEL_39;
            }
          }

          else if (elementType > 126)
          {
            if (elementType == 127)
            {
              if (v24 != *p_topLeftViewElements)
              {
                if (v24 == *p_middleLeftViewElements)
                {
                  v43 = *p_bottomLeftViewElements;
                  goto LABEL_68;
                }

LABEL_53:
                v34 = 0;
                goto LABEL_54;
              }

              v43 = *(v69[0] + 40);
LABEL_68:
              v44 = v43;
              productImageElement = v24;
              v24 = v44;
LABEL_69:

              goto LABEL_53;
            }

            if (elementType == 135)
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (elementType == 77)
            {
              goto LABEL_39;
            }

            v36 = &v52->_bottomRightViewElements;
            if (elementType == 109)
            {
              goto LABEL_40;
            }
          }

LABEL_54:

          ++v28;
        }

        while (v26 != v28);
        v45 = [v25 countByEnumeratingWithState:&v58 objects:v75 count:16];
        v26 = v45;
      }

      while (v45);
    }

    if (![*p_bottomRightViewElements count])
    {
      v46 = *p_bottomRightViewElements;
      *p_bottomRightViewElements = 0;
    }

    if (![*p_middleLeftViewElements count])
    {
      v47 = *p_middleLeftViewElements;
      *p_middleLeftViewElements = 0;
    }

    if (![*p_topRightViewElements count])
    {
      v48 = *p_topRightViewElements;
      *p_topRightViewElements = 0;
    }

    _Block_object_dispose(&v68, 8);
    _Block_object_dispose(&v71, 8);
  }

  return v52;
}

void __56__SUUIProductLockupLayout_initWithLockup_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 77 && (objc_msgSend(v3, "isSimpleOffer") & 1) == 0)
  {
    *(*(a1 + 32) + 8) = *(a1 + 64) ^ 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 16));
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 40));
  }

  [*(a1 + 40) addObject:v3];
}

- (double)bottomPaddingForViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  v5 = 0.0;
  if (elementType > 76)
  {
    if (elementType != 77 && elementType != 109 && elementType != 141)
    {
      goto LABEL_9;
    }

LABEL_8:
    v5 = 5.0;
    goto LABEL_9;
  }

  if (elementType != 8)
  {
    if (elementType != 13)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ([elementCopy badgeType] == 1)
  {
    v5 = 2.0;
  }

  else
  {
    v5 = 0.0;
  }

LABEL_9:

  return v5;
}

- (void)enumerateViewElementsForWidth:(double)width usingBlock:(id)block
{
  v43 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (width > 0.00000011920929)
  {
    [(SUUIProductLockupLayout *)self layoutWidthsForWidth:width];
    v11 = v29[0];
    v10 = v30;
    v9 = v32;
    v7 = middleLeftViewElements;
    v8 = v36;
  }

  productImageElement = self->_productImageElement;
  if (productImageElement)
  {
    [(SUUIViewElementLayoutContext *)self->_layoutContext sizeForViewElement:self->_productImageElement width:width];
    blockCopy[2](blockCopy, productImageElement, 3, (v26 + 3));
  }

  v13 = 0;
  topRightViewElements = self->_topRightViewElements;
  v29[0] = self->_topLeftViewElements;
  v29[1] = 4;
  v30 = v7;
  v31 = topRightViewElements;
  v32 = 5;
  v33 = v8;
  middleLeftViewElements = self->_middleLeftViewElements;
  v35 = 2;
  v36 = v9;
  bottomRightViewElements = self->_bottomRightViewElements;
  bottomLeftViewElements = self->_bottomLeftViewElements;
  v38 = 0;
  v39 = v11;
  v40 = bottomRightViewElements;
  v41 = 1;
  v42 = v10;
  do
  {
    if (*(v26 + 24) == 1)
    {
      break;
    }

    v16 = v29[v13 + 2];
    v17 = v29[v13];
    v18 = v29[v13 + 1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__SUUIProductLockupLayout_enumerateViewElementsForWidth_usingBlock___block_invoke;
    v20[3] = &unk_2798F7E38;
    v19 = blockCopy;
    v22 = &v25;
    v23 = v18;
    v24 = v16;
    v21 = v19;
    [v17 enumerateObjectsUsingBlock:v20];

    v13 += 3;
  }

  while (v13 != 15);
  _Block_object_dispose(&v25, 8);
}

uint64_t __68__SUUIProductLockupLayout_enumerateViewElementsForWidth_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))(*(a1 + 56));
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (SUUIProductLockupLayoutSizing)layoutWidthsForWidth:(SEL)width
{
  [(SUUIProductLockupLayout *)self metadataWidthForWidth:a4];
  v7 = v6;
  retstr->var0.width = v6;
  retstr->var0.height = 0.0;
  [(SUUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_bottomRightViewElements width:?];
  v9 = v8;
  retstr->var1.width = v8;
  retstr->var1.height = v10;
  retstr->var2.width = v7;
  retstr->var2.height = 0.0;
  retstr->var3.width = v7;
  retstr->var3.height = 0.0;
  [(SUUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_topRightViewElements width:v7];
  retstr->var4.width = v11;
  retstr->var4.height = v12;
  if (v9 >= v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  v14 = v7;
  if (v11 > 0.00000011920929)
  {
    v14 = v7 - v11 + -5.0;
    retstr->var3.width = v14;
  }

  if (v13 > 0.00000011920929)
  {
    retstr->var2.width = v7 - v13 + -5.0;
  }

  v15 = v7;
  if (v9 > 0.00000011920929)
  {
    v15 = v7 - v9 + -5.0;
    retstr->var0.width = v15;
  }

  result = [(SUUIProductLockupLayout *)self hasBottomRightElementWithRightAlignment];
  if (result)
  {
    if (v15 >= v14)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    if (v14 > 0.00000011920929)
    {
      retstr->var4.width = v7 - v14 + -5.0;
    }

    if (v17 > 0.00000011920929)
    {
      retstr->var2.width = v7;
    }

    if (v15 > 0.00000011920929)
    {
      retstr->var1.width = v7 - v15 + -5.0;
    }
  }

  return result;
}

- (BOOL)hasBottomRightElementWithRightAlignment
{
  v2 = [(SUUIProductLockupLayout *)self viewElementsForSection:1];
  v3 = [v2 indexOfObjectPassingTest:&__block_literal_global_11] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

BOOL __66__SUUIProductLockupLayout_hasBottomRightElementWithRightAlignment__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 style];
  v3 = [v2 elementAlignment] == 3;

  return v3;
}

- (double)metadataWidthForWidth:(double)width
{
  widthCopy = width;
  if (self->_productImageElement)
  {
    [(SUUIViewElementLayoutContext *)self->_layoutContext sizeForViewElement:width width:?];
    return widthCopy - (v4 + 13.0);
  }

  return widthCopy;
}

- (SUUIProductLockupLayoutSizing)sizingToFitWidth:(SEL)width
{
  v36 = *MEMORY[0x277D85DE8];
  retstr->var0.width = 0.0;
  retstr->var0.height = 0.0;
  [(SUUIProductLockupLayout *)self metadataWidthForWidth:a4];
  v7 = v6;
  [(SUUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_bottomRightViewElements width:?];
  v9 = v8;
  retstr->var1.width = v8;
  retstr->var1.height = v10;
  [(SUUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_topRightViewElements width:v7];
  v12 = v11;
  retstr->var4.width = v11;
  retstr->var4.height = v13;
  v14 = v7 - v11 + -5.0;
  if (v12 <= 0.00000011920929)
  {
    v14 = v7;
  }

  [(SUUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_topLeftViewElements width:v14];
  retstr->var3.width = v15;
  retstr->var3.height = v16;
  if (v9 >= v12)
  {
    v17 = v9;
  }

  else
  {
    v17 = v12;
  }

  if (v17 <= 0.00000011920929)
  {
    v18 = v7;
  }

  else
  {
    v18 = v7 - v17 + -5.0;
  }

  [(SUUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_middleLeftViewElements width:v18];
  retstr->var2.width = v19;
  retstr->var2.height = v20;
  if (v9 > 0.00000011920929)
  {
    v7 = v7 - v9 + -5.0;
  }

  if (self->_bottomLeftLayoutStyle == 2)
  {
    retstr->var0.width = v7;
    retstr->var0.height = 0.0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = self->_bottomLeftViewElements;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      v25 = 0.0;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [(SUUIProductLockupLayout *)self _sizeForViewElement:*(*(&v31 + 1) + 8 * i) width:v7, v31];
          if (v25 < v27)
          {
            v25 = v27;
          }
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v23);
      retstr->var0.height = v25;
    }
  }

  else
  {
    result = [(SUUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_bottomLeftViewElements width:v7];
    retstr->var0.width = v29;
    retstr->var0.height = v30;
  }

  return result;
}

- (double)topPaddingForViewElement:(id)element
{
  elementCopy = element;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  elementType = [elementCopy elementType];
  if (elementType == 8)
  {
    if ([elementCopy badgeType] == 1)
    {
      v17[3] = 3.0;
    }

    else
    {
      style = [elementCopy style];
      v7 = SUUIViewElementFontWithStyle(style);

      if (v7)
      {
        [v7 _bodyLeading];
        v9 = v8;
      }

      else
      {
        v10 = SUUIFontForTextStyle(2);
        [v10 _bodyLeading];
        v9 = v11;
      }

      [(SUUIViewElementLayoutContext *)self->_layoutContext sizeForBadgeElement:elementCopy];
      v17[3] = v9 - v12;
    }
  }

  else if (elementType == 62)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__SUUIProductLockupLayout_topPaddingForViewElement___block_invoke;
    v15[3] = &unk_2798F7E80;
    v15[4] = self;
    v15[5] = &v16;
    [elementCopy enumerateChildrenUsingBlock:v15];
  }

  v13 = v17[3];
  _Block_object_dispose(&v16, 8);

  return v13;
}

uint64_t __52__SUUIProductLockupLayout_topPaddingForViewElement___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) topPaddingForViewElement:a2];
  *(*(*(a1 + 40) + 8) + 24) = v6;
  *a3 = 1;
  return result;
}

- (id)viewElementsForSection:(int64_t)section
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (section <= 2)
  {
    if (section)
    {
      if (section == 1)
      {
        bottomRightViewElements = self->_bottomRightViewElements;
      }

      else
      {
        if (section != 2)
        {
          goto LABEL_16;
        }

        bottomRightViewElements = self->_middleLeftViewElements;
      }
    }

    else
    {
      bottomRightViewElements = self->_bottomLeftViewElements;
    }

LABEL_15:
    self = bottomRightViewElements;
    goto LABEL_16;
  }

  if (section != 3)
  {
    if (section == 4)
    {
      bottomRightViewElements = self->_topLeftViewElements;
    }

    else
    {
      if (section != 5)
      {
        goto LABEL_16;
      }

      bottomRightViewElements = self->_topRightViewElements;
    }

    goto LABEL_15;
  }

  if (self->_productImageElement)
  {
    v5[0] = self->_productImageElement;
    self = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    self = 0;
  }

LABEL_16:

  return self;
}

- (CGSize)_sizeForSegmentedControl:(id)control width:(double)width
{
  controlCopy = control;
  v6 = [[SUUISegmentedControlViewElementController alloc] initWithViewElement:controlCopy];

  [(SUUISegmentedControlViewElementController *)v6 setDesiredSegmentWidth:40.0];
  segmentedControlView = [(SUUISegmentedControlViewElementController *)v6 segmentedControlView];
  [segmentedControlView sizeThatFits:{width, 1.79769313e308}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)_sizeForVerticalViewElements:(id)elements width:(double)width
{
  elementsCopy = elements;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3010000000;
  v17 = "";
  v18 = *MEMORY[0x277CBF3A8];
  v7 = [elementsCopy count];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SUUIProductLockupLayout__sizeForVerticalViewElements_width___block_invoke;
  v12[3] = &unk_2798F7EA8;
  *&v12[7] = width;
  v12[4] = self;
  v12[5] = &v14;
  v12[8] = v7;
  v12[6] = v13;
  [elementsCopy enumerateObjectsUsingBlock:v12];
  v8 = v15[4];
  v9 = v15[5];
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

void __62__SUUIProductLockupLayout__sizeForVerticalViewElements_width___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v18 = a2;
  [*(a1 + 32) _sizeForViewElement:v18 width:*(a1 + 56)];
  v6 = v5;
  v8 = v7;
  v9 = [*(*(a1 + 32) + 32) textPropertiesForViewElement:v18 width:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 40) = v8 + *(*(*(a1 + 40) + 8) + 40);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 32);
  if (v11 < v6)
  {
    v11 = v6;
  }

  *(v10 + 32) = v11;
  if (*(a1 + 64) - 1 > a3)
  {
    [*(a1 + 32) bottomPaddingForViewElement:v18];
    *(*(*(a1 + 40) + 8) + 40) = v12 + *(*(*(a1 + 40) + 8) + 40);
  }

  if (a3)
  {
    [v9 desiredOffsetTop];
    v14 = v13;
    [*(a1 + 32) topPaddingForViewElement:v18];
    if (v14 >= v15)
    {
      v15 = v14;
    }

    v16 = v15 - *(*(*(a1 + 48) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) + fmaxf(roundf(v16), 0.0);
  }

  [v9 baselineOffsetFromBottom];
  *(*(*(a1 + 48) + 8) + 24) = v17;
}

- (CGSize)_sizeForViewElement:(id)element width:(double)width
{
  elementCopy = element;
  if ([elementCopy elementType] == 109)
  {
    [(SUUIProductLockupLayout *)self _sizeForSegmentedControl:elementCopy width:width];
  }

  else
  {
    [(SUUIViewElementLayoutContext *)self->_layoutContext sizeForViewElement:elementCopy width:width];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end
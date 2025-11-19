@interface SUUIKeyValueInfoListCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (double)titleColumnWidthWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (SUUIKeyValueInfoListCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_buttonAction:(id)a3;
- (void)_imageTapAction:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUIKeyValueInfoListCollectionViewCell

- (SUUIKeyValueInfoListCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUUIKeyValueInfoListCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    valueViews = v3->_valueViews;
    v3->_valueViews = v4;
  }

  return v3;
}

+ (double)titleColumnWidthWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = [a3 titleElement];
  if (v9)
  {
    v10 = [a1 _attributedStringForLabel:v9 context:v8];
    v11 = a4 * 0.4;
    v12 = [v8 labelLayoutCache];
    [v12 requestLayoutForLabel:v9 attributedString:v10 width:vcvtms_s32_f32(v11)];
    [v12 sizeForLabel:v9 width:floorf(v11)];
    *&v13 = v13;
    v14 = ceilf(*&v13);
  }

  else
  {
    v14 = 0.0;
  }

  return v14;
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [a3 valueElements];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 |= [v7 prefetchResourcesForViewElement:*(*(&v15 + 1) + 8 * i) reason:a4];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 labelLayoutCache];
  v11 = [v9 aggregateValueForKey:@"SUUIKVILTCWK"];
  [v11 floatValue];
  v13 = v12;

  v25 = v8;
  v14 = [v8 valueElements];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = a4 - v13 + -14.0;
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        v22 = [v21 elementType];
        if (v22 <= 134)
        {
          if (v22 == 8)
          {
            [v10 requestLayoutForBadge:v21 width:a4];
            continue;
          }

          if (v22 == 12)
          {
            goto LABEL_18;
          }

          if (v22 != 62)
          {
            continue;
          }

          v24 = SUUIHorizontalListView;
        }

        else if (v22 > 140)
        {
          if (v22 == 141)
          {
LABEL_18:
            v23 = [a1 _attributedStringForButton:v21 context:v9];
            [v10 requestLayoutForButton:v21 attributedString:v23 width:v18];
LABEL_19:

            continue;
          }

          if (v22 != 144)
          {
            continue;
          }

          v24 = SUUITomatoRatingView;
        }

        else
        {
          if (v22 != 135)
          {
            if (v22 != 138)
            {
              continue;
            }

            v23 = [a1 _attributedStringForLabel:v21 context:v9];
            [v10 requestLayoutForLabel:v21 attributedString:v23 width:v18];
            goto LABEL_19;
          }

          v24 = SUUIStarRatingViewElementView;
        }

        [(__objc2_class *)v24 requestLayoutForViewElement:v21 width:v9 context:v17];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 titleElement];
  v10 = 0.0;
  v11 = 0.0;
  if (v9)
  {
    v12 = a3 * 0.4;
    [v8 sizeForViewElement:v9 width:floorf(v12)];
    v11 = v13;
  }

  v14 = [v8 aggregateValueForKey:@"SUUIKVILTCWK"];
  [v14 floatValue];
  v16 = v15;

  v17 = [v7 valueElements];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = a3 - v16 + -14.0;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v17);
        }

        [v8 sizeForViewElement:*(*(&v26 + 1) + 8 * v22) width:v20];
        v10 = v10 + v23;
        ++v22;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }

  if (v11 < v10)
  {
    v11 = v10;
  }

  v24 = a3;
  v25 = v11;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 aggregateValueForKey:@"SUUIKVILTCWK"];
  [v10 floatValue];
  self->_titleColumnWidth = v11;

  titleView = self->_titleView;
  self->_titleView = 0;

  [(NSMapTable *)self->_valueViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SUUIKeyValueInfoListCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v15[3] = &unk_2798F5EF0;
  v16 = v8;
  v17 = self;
  v19 = a4;
  v18 = v9;
  v13 = v9;
  v14 = v8;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:v15];
}

void __78__SUUIKeyValueInfoListCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) titleElement];
  v5 = *(a1 + 56) * 0.4;
  v32 = v4;
  v6 = [v3 addLabelViewWithElement:floorf(v5) width:? context:?];
  v7 = *(a1 + 40);
  v8 = *(v7 + 832);
  *(v7 + 832) = v6;

  v9 = *(a1 + 56);
  v10 = *(*(a1 + 40) + 824);
  v11 = [*(a1 + 32) valueElements];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = v9 - v10 + -14.0;
    v15 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        v18 = [v17 elementType];
        v19 = 0;
        if (v18 > 134)
        {
          if (v18 <= 140)
          {
            if (v18 == 135)
            {
              v20 = [v3 addStarRatingViewWithViewElement:v17 width:*(a1 + 48) context:v14];
            }

            else
            {
              if (v18 != 138)
              {
                goto LABEL_42;
              }

              v20 = [v3 addLabelViewWithElement:v17 width:*(a1 + 48) context:v14];
            }

LABEL_34:
            v19 = v20;
            v23 = 0;
            if (!v20)
            {
              goto LABEL_36;
            }

LABEL_35:
            [*(*(a1 + 40) + 840) setObject:v17 forKey:v19];
            goto LABEL_36;
          }

          if (v18 != 141)
          {
            if (v18 == 144)
            {
              v20 = [v3 addTomatoRatingViewWithViewElement:v17 width:*(a1 + 48) context:v14];
              goto LABEL_34;
            }

            if (v18 != 152)
            {
              goto LABEL_42;
            }

            v21 = [v3 addImageViewWithVideoElement:v17 context:*(a1 + 48)];
LABEL_28:
            v24 = v21;
LABEL_31:
            v23 = v24;
            v19 = v24;
            if (v24)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }
        }

        else if (v18 <= 48)
        {
          if (v18 == 8)
          {
            v21 = [v3 addBadgeViewWithElement:v17 width:*(a1 + 48) context:v14];
            goto LABEL_28;
          }

          if (v18 != 12)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v18 == 49)
          {
            v25 = [v3 addImageViewWithElement:v17 context:*(a1 + 48)];
            v26 = [v25 tapRecognizer];
            [v26 addTarget:*(a1 + 40) action:sel__imageTapAction_];

            v24 = v25;
            goto LABEL_31;
          }

          if (v18 != 50)
          {
            if (v18 != 62)
            {
              goto LABEL_42;
            }

            v20 = [v3 addHorizontalListWithElement:v17 width:*(a1 + 48) context:v14];
            goto LABEL_34;
          }
        }

        v22 = [v3 addButtonWithElement:v17 width:*(a1 + 48) context:v14];
        [v22 addTarget:*(a1 + 40) action:sel__buttonAction_ forControlEvents:64];
        v19 = v22;
        if ([v17 elementType] == 50)
        {
          v23 = v19;
        }

        else
        {
          v23 = 0;
        }

        if (v19)
        {
          goto LABEL_35;
        }

LABEL_36:
        if (v23)
        {
          v27 = [*(a1 + 48) imageResourceCacheKeyForViewElement:v17];
          if (v27)
          {
            v28 = *(*(a1 + 40) + 848);
            if (!v28)
            {
              v29 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
              v30 = *(a1 + 40);
              v31 = *(v30 + 848);
              *(v30 + 848) = v29;

              v28 = *(*(a1 + 40) + 848);
            }

            [v28 setObject:v27 forKey:v23];
          }
        }

LABEL_42:
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [a4 requestIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = v8;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15, v22];
        v17 = [v9 requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v15 imageView];
            v8 = v22;
            [v20 setImage:v22];
          }

          else
          {
            v8 = v22;
            [v15 setImage:v22];
          }

          v19 = 1;
          goto LABEL_16;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v19 = 0;
    v8 = v22;
  }

  else
  {
    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (void)layoutSubviews
{
  v2 = self;
  v70 = *MEMORY[0x277D85DE8];
  v68.receiver = self;
  v68.super_class = SUUIKeyValueInfoListCollectionViewCell;
  [(SUUICollectionViewCell *)&v68 layoutSubviews];
  v3 = [(SUUIKeyValueInfoListCollectionViewCell *)v2 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SUUIViewReuseCollectionViewCell *)v2 contentInset];
  MaxY = v12;
  v15 = v14;
  v60 = v16;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  y = *(MEMORY[0x277CBF3A0] + 8);
  titleView = v2->_titleView;
  rect = y;
  if (titleView)
  {
    [(SUUIAttributedStringView *)titleView firstBaselineOffset];
    v56 = v20;
    [(SUUIAttributedStringView *)v2->_titleView sizeThatFits:v2->_titleColumnWidth, 1.79769313e308];
    v22 = v21;
    v24 = v23;
    if (ShouldReverseLayoutDirection)
    {
      v71.origin.x = v5;
      v71.origin.y = v7;
      v71.size.width = v9;
      v71.size.height = v11;
      v25 = CGRectGetMaxX(v71) - v15 - v2->_titleColumnWidth;
    }

    else
    {
      v25 = v15 + v2->_titleColumnWidth - v21;
    }

    v28 = MaxY;
    v29 = v22;
    v30 = v24;
    v72 = CGRectIntegral(*&v25);
    y = v72.origin.y;
    height = v72.size.height;
    [(SUUIAttributedStringView *)v2->_titleView setFrame:v72.origin.x];
    if (ShouldReverseLayoutDirection)
    {
      goto LABEL_8;
    }

LABEL_5:
    v26 = v15 + v2->_titleColumnWidth;
    v27 = 14.0;
    goto LABEL_9;
  }

  height = *(MEMORY[0x277CBF3A0] + 24);
  v56 = 0.0;
  if ((ShouldReverseLayoutDirection & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_8:
  v73.origin.x = v5;
  v73.origin.y = v7;
  v73.size.width = v9;
  v73.size.height = v11;
  v26 = CGRectGetMaxX(v73) - v15 - v2->_titleColumnWidth;
  v27 = -14.0;
LABEL_9:
  v31 = v26 + v27;
  [(SUUIViewReuseCollectionViewCell *)v2 allExistingViews];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v67 = 0u;
  v32 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = v9 - v60 - v31;
    v36 = floorf(v35);
    v37 = *v65;
    v57 = y + v56;
    v59 = *v65;
    do
    {
      v38 = 0;
      v61 = v33;
      do
      {
        if (*v65 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v64 + 1) + 8 * v38);
        if (v39 != v2->_titleView)
        {
          [*(*(&v64 + 1) + 8 * v38) sizeThatFits:{v36, 1.79769313e308}];
          v41 = v40;
          v43 = v42;
          v44 = v31;
          if (ShouldReverseLayoutDirection)
          {
            v74.origin.x = v31;
            v74.origin.y = rect;
            v74.size.width = v41;
            v74.size.height = v43;
            v44 = v31 - CGRectGetWidth(v74);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v45 = ShouldReverseLayoutDirection;
            v46 = v39;
            [(SUUIAttributedStringView *)v46 firstBaselineOffset];
            v48 = v47;
            v49 = v2;
            v50 = [(SUUIAttributedStringView *)v2->_titleView usesTallCharacterSet];
            v51 = [(SUUIAttributedStringView *)v46 usesTallCharacterSet];

            if (v34)
            {
              ShouldReverseLayoutDirection = v45;
              v2 = v49;
              v37 = v59;
              v33 = v61;
LABEL_27:
              [(SUUIAttributedStringView *)v39 setFrame:v44, MaxY, v41, v43];
              v75.origin.x = v44;
              v75.origin.y = MaxY;
              v75.size.width = v41;
              v75.size.height = v43;
              MaxY = CGRectGetMaxY(v75);
              ++v34;
              goto LABEL_28;
            }

            v52 = v50 == v51;
            ShouldReverseLayoutDirection = v45;
            v2 = v49;
            v37 = v59;
            v33 = v61;
            if (!v52)
            {
              v53 = MaxY + v56 - v48;
              v54 = floorf(v53);
              goto LABEL_26;
            }
          }

          else if (v34)
          {
            goto LABEL_27;
          }

          MaxY = rect;
          if (v43 >= height)
          {
            goto LABEL_27;
          }

          v55 = v57 - v43;
          v54 = ceilf(v55);
LABEL_26:
          MaxY = v54;
          goto LABEL_27;
        }

LABEL_28:
        ++v38;
      }

      while (v33 != v38);
      v33 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v33);
  }
}

- (void)_buttonAction:(id)a3
{
  v4 = [(NSMapTable *)self->_valueViews objectForKey:a3];
  if (v4)
  {
    v8 = v4;
    v5 = SUUICollectionViewForView(self);
    v6 = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 indexPathForCell:self];
      [v6 collectionView:v5 didConfirmButtonElement:v8 withClickInfo:0 forItemAtIndexPath:v7];
    }

    else
    {
      [v8 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }

    v4 = v8;
  }
}

- (void)_imageTapAction:(id)a3
{
  valueViews = self->_valueViews;
  v4 = [a3 view];
  v5 = [(NSMapTable *)valueViews objectForKey:v4];

  [v5 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

+ (id)_attributedStringForButton:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 buttonTitleStyle];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 style];
  }

  v10 = v9;

  v11 = SUUIViewElementFontWithStyle(v10);
  if (!v11)
  {
    v11 = SUUIFontPreferredFontForTextStyle(5);
  }

  v12 = [v6 tintColor];
  v13 = SUUIViewElementPlainColorWithStyle(v10, v12);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  v14 = [v5 buttonText];
  v15 = [v14 attributedStringWithDefaultFont:v11 foregroundColor:v13 style:v10];

  return v15;
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SUUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = SUUIFontPreferredFontForTextStyle(5);
  }

  v9 = [v6 tintColor];
  v10 = SUUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v11 = [v5 labelViewStyle] == 5;
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:dbl_259FCB020[v11]];
  }

  v12 = [v5 text];
  v13 = [v12 attributedStringWithDefaultFont:v8 foregroundColor:v10 style:v7];

  return v13;
}

@end
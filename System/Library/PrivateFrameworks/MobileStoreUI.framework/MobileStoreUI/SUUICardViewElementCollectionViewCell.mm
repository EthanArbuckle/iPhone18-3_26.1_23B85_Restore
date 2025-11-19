@interface SUUICardViewElementCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)artworkBoundingSizeWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (double)_defaultWidthForLockupWithContext:(id)a3;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (CALayer)compactAdCardHairlineLayer;
- (NSString)impressionIdentifier;
- (NSString)lineItem;
- (SUUICardViewElementCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIView)adCardBackgroundView;
- (double)_dividerHeight:(id)a3;
- (id)viewForElementIdentifier:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)_imageTapAction:(id)a3;
- (void)_performDefaultActionForViewElement:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setArtworkBoundingSize:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setPerspectiveTargetView:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)suuiadvertising_advertSelectionEventShouldBeForwarded:(id)a3;
@end

@implementation SUUICardViewElementCollectionViewCell

- (SUUICardViewElementCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUUICardViewElementCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElements = v3->_viewElements;
    v3->_viewElements = v4;
  }

  return v3;
}

+ (CGSize)artworkBoundingSizeWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v21 = "";
  v22 = *MEMORY[0x277CBF3A8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__SUUICardViewElementCollectionViewCell_artworkBoundingSizeWithViewElement_width_context___block_invoke;
  v14[3] = &unk_2798F76C8;
  v16 = &v18;
  v9 = v8;
  v15 = v9;
  v17 = a4;
  [v7 enumerateChildrenUsingBlock:v14];
  v10 = v19[4];
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);
  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

void __90__SUUICardViewElementCollectionViewCell_artworkBoundingSizeWithViewElement_width_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 elementType];
  if (v5 != 152)
  {
    if (v5 == 62)
    {
      [SUUIHorizontalListView preferredSizeForViewElement:v10 context:*(a1 + 32)];
      if (v6 == *MEMORY[0x277CBF3A8] && v7 == *(MEMORY[0x277CBF3A8] + 8))
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (v5 != 49)
    {
      goto LABEL_6;
    }
  }

  [*(a1 + 32) sizeForViewElement:v10 width:*(a1 + 48)];
LABEL_5:
  v8 = *(*(a1 + 40) + 8);
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  *a3 = 1;
LABEL_6:
}

- (void)setArtworkBoundingSize:(id)a3
{
  v4 = a3;
  artworkBoundingSize = self->_artworkBoundingSize;
  if (artworkBoundingSize != v4)
  {
    v8 = v4;
    artworkBoundingSize = [artworkBoundingSize isEqual:v4];
    v4 = v8;
    if ((artworkBoundingSize & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_artworkBoundingSize;
      self->_artworkBoundingSize = v6;

      artworkBoundingSize = [(SUUICardViewElementCollectionViewCell *)self setNeedsLayout];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](artworkBoundingSize, v4);
}

- (UIView)adCardBackgroundView
{
  adCardBackgroundView = self->_adCardBackgroundView;
  if (!adCardBackgroundView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_adCardBackgroundView;
    self->_adCardBackgroundView = v4;

    v6 = [(UIView *)self->_adCardBackgroundView layer];
    [v6 setCornerRadius:5.0];

    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 scale];
    v9 = 1.0 / v8;
    v10 = [(UIView *)self->_adCardBackgroundView layer];
    [v10 setBorderWidth:v9];

    v11 = [MEMORY[0x277D75348] colorWithHue:0.57292 saturation:0.06531 brightness:0.96078 alpha:1.0];
    v12 = [v11 CGColor];
    v13 = [(UIView *)self->_adCardBackgroundView layer];
    [v13 setBorderColor:v12];

    adCardBackgroundView = self->_adCardBackgroundView;
  }

  v14 = adCardBackgroundView;

  return v14;
}

- (CALayer)compactAdCardHairlineLayer
{
  compactAdCardHairlineLayer = self->_compactAdCardHairlineLayer;
  if (!compactAdCardHairlineLayer)
  {
    v4 = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_compactAdCardHairlineLayer;
    self->_compactAdCardHairlineLayer = v4;

    v6 = [MEMORY[0x277D75348] colorWithHue:0.57292 saturation:0.06531 brightness:0.96078 alpha:1.0];
    -[CALayer setBackgroundColor:](self->_compactAdCardHairlineLayer, "setBackgroundColor:", [v6 CGColor]);

    compactAdCardHairlineLayer = self->_compactAdCardHairlineLayer;
  }

  v7 = compactAdCardHairlineLayer;

  return v7;
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = [v7 cardType] == 1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__SUUICardViewElementCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke;
  v12[3] = &unk_2798FD930;
  v15 = a4;
  v10 = v8;
  v16 = v9;
  v13 = v10;
  v14 = &v17;
  [v7 enumerateChildrenUsingBlock:v12];
  LOBYTE(v8) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v8;
}

void __88__SUUICardViewElementCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 elementType];
  if (v3 == 49)
  {
    if (*(a1 + 56) == 1)
    {
      v8 = v11;
      LODWORD(v9) = 1045220557;
      [v8 setLayerShadowOpacity:v9];
      [v8 setLayerShadowRadius:10.0];
      [v8 setLayerShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

      v10 = v11;
      v4 = 0;
      goto LABEL_12;
    }

    v4 = 0;
  }

  else if (v3 == 66)
  {
    v4 = [SUUIHorizontalLockupView prefetchResourcesForViewElement:v11 reason:*(a1 + 48) context:*(a1 + 32)];
    if (*(a1 + 56) == 1)
    {
      v5 = [v11 firstChildForElementType:49];
      v7 = v5;
      if (v5)
      {
        LODWORD(v6) = 1045220557;
        [v5 setLayerShadowOpacity:v6];
        [v7 setLayerShadowRadius:10.0];
        [v7 setLayerShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
      }
    }
  }

  else
  {
    v4 = [*(a1 + 32) prefetchResourcesForViewElement:v11 reason:*(a1 + 48)];
  }

  v10 = v11;
LABEL_12:
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | v4) & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v8 = [v6 style];
  v9 = [v8 itemWidth];
  [v9 floatValue];
  v11 = v10;

  if (v11 <= 0.00000011921)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__SUUICardViewElementCollectionViewCell_preferredSizeForViewElement_context___block_invoke;
    v19[3] = &unk_2798F5E50;
    v20 = v7;
    v21 = &v23;
    v22 = a1;
    [v6 enumerateChildrenUsingBlock:v19];

    v12 = v24[3];
  }

  else
  {
    v12 = v11;
    v24[3] = v11;
  }

  if (v12 <= 0.00000011920929)
  {
    [v7 defaultItemWidthForViewElement:v6];
  }

  [a1 sizeThatFitsWidth:v6 viewElement:v7 context:?];
  v14 = v13;
  v16 = v15;
  _Block_object_dispose(&v23, 8);

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

void __77__SUUICardViewElementCollectionViewCell_preferredSizeForViewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 elementType];
  if (v3 <= 65)
  {
    if (v3 == 49)
    {
      [*(a1 + 32) sizeForImageElement:v12];
    }

    else
    {
      if (v3 != 62)
      {
        goto LABEL_23;
      }

      [SUUIHorizontalListView preferredSizeForViewElement:v12 context:*(a1 + 32)];
      if (v4 == *MEMORY[0x277CBF3A8] && v5 == *(MEMORY[0x277CBF3A8] + 8))
      {
        goto LABEL_23;
      }
    }

    v10 = *(*(a1 + 40) + 8);
    if (*(v10 + 24) >= v4)
    {
      v4 = *(v10 + 24);
    }

    goto LABEL_22;
  }

  if (v3 == 66)
  {
    v11 = *(*(*(a1 + 40) + 8) + 24);
    [*(a1 + 48) _defaultWidthForLockupWithContext:*(a1 + 32)];
    if (v11 >= v4)
    {
      v4 = v11;
    }

    v10 = *(*(a1 + 40) + 8);
LABEL_22:
    *(v10 + 24) = v4;
    goto LABEL_23;
  }

  if (v3 == 152)
  {
    v7 = [v12 thumbnailImage];
    [*(a1 + 32) sizeForImageElement:v7];
    v9 = *(*(a1 + 40) + 8);
    if (*(v9 + 24) >= v8)
    {
      v8 = *(v9 + 24);
    }

    *(v9 + 24) = v8;
  }

LABEL_23:
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [SUUICardLayout layoutWithCardViewElement:v8 context:v7];
  v10 = [v7 labelLayoutCache];
  [v9 horizontalContentInset];
  v15[1] = 3221225472;
  v15[0] = MEMORY[0x277D85DD0];
  v15[2] = __83__SUUICardViewElementCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke;
  v15[3] = &unk_2798F7628;
  v16 = v9;
  v17 = v10;
  v19 = a4 + v11 * -2.0;
  v18 = v7;
  v12 = v7;
  v13 = v10;
  v14 = v9;
  [v8 enumerateChildrenUsingBlock:v15];
}

uint64_t __83__SUUICardViewElementCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 elementType];
  if (v3 > 61)
  {
    if (v3 > 130)
    {
      v4 = v8;
      if (v3 != 131)
      {
        if (v3 != 138)
        {
          goto LABEL_23;
        }

        v5 = [*(a1 + 32) attributedStringForLabel:v8];
        [*(a1 + 40) requestLayoutForLabel:v8 attributedString:v5 width:*(a1 + 56)];
        goto LABEL_16;
      }

      v6 = SUUIStackListCollectionViewCell;
    }

    else
    {
      v4 = v8;
      if (v3 == 62)
      {
        v6 = SUUIHorizontalListView;
      }

      else
      {
        if (v3 != 66)
        {
          goto LABEL_23;
        }

        v6 = SUUIHorizontalLockupView;
      }
    }

LABEL_21:
    v3 = [(__objc2_class *)v6 requestLayoutForViewElement:v8 width:*(a1 + 48) context:*(a1 + 56)];
    goto LABEL_22;
  }

  if (v3 > 47)
  {
    v4 = v8;
    if (v3 == 48)
    {
      v6 = SUUISectionHeaderView;
    }

    else
    {
      if (v3 != 51)
      {
        goto LABEL_23;
      }

      v6 = SUUIImageDeckView;
    }

    goto LABEL_21;
  }

  v4 = v8;
  if (v3 == 8)
  {
    v3 = [*(a1 + 40) requestLayoutForBadge:v8 width:*(a1 + 56)];
    goto LABEL_22;
  }

  if (v3 != 12)
  {
    goto LABEL_23;
  }

  v5 = [*(a1 + 32) attributedStringForButton:v8];
  [*(a1 + 40) requestLayoutForButton:v8 attributedString:v5 width:*(a1 + 56)];
LABEL_16:

LABEL_22:
  v4 = v8;
LABEL_23:

  return MEMORY[0x2821F96F8](v3, v4);
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3010000000;
  v53 = "";
  v54 = a3;
  v55 = 0;
  v9 = [SUUICardLayout layoutWithCardViewElement:v7 context:v8];
  [v9 horizontalContentInset];
  v11 = v10;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3010000000;
  v48 = "";
  v49 = *MEMORY[0x277CBF3A8];
  v29 = v49;
  v12 = [v7 flattenedChildren];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__93;
  v43[4] = __Block_byref_object_dispose__93;
  v44 = 0;
  v13 = [v7 cardType];
  v14 = a3 + v11 * -2.0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3010000000;
  v41 = "";
  v42 = v29;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __79__SUUICardViewElementCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v30[3] = &unk_2798FD958;
  v15 = v9;
  v36 = v14;
  v31 = v15;
  v32 = &v45;
  v33 = &v38;
  v34 = v43;
  v37 = v13 == 2;
  v35 = &v50;
  [v12 enumerateObjectsUsingBlock:v30];
  v16 = [v12 lastObject];
  v17 = v16;
  if (v13 == 2)
  {
    v18 = v39;
    v19 = v51;
    v20 = v39[5] + v51[5];
    v51[5] = v20;
    if (v18[5] == 0.0)
    {
      v21 = 30.0;
    }

    else
    {
      v21 = 15.0;
    }

    goto LABEL_7;
  }

  if (v16)
  {
    [v15 bottomInsetForLastViewElement:v16 width:v14];
    v19 = v51;
    v21 = v51[5];
LABEL_7:
    v19[5] = v20 + v21;
    goto LABEL_8;
  }

  v19 = v51;
LABEL_8:
  v22 = v46;
  v23 = v46[4];
  v24 = v19[4];
  if (v23 > v24)
  {
    v19[4] = v23;
    v24 = v23;
  }

  v25 = v22[5];
  v26 = v19[5];
  if (v25 > v26)
  {
    v19[5] = v25;
    v26 = v25;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v43, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v50, 8);

  v27 = v24;
  v28 = v26;
  result.height = v28;
  result.width = v27;
  return result;
}

void __79__SUUICardViewElementCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v18 = a2;
  v6 = [v18 elementType];
  [*(a1 + 32) sizeForViewElement:v18 width:*(a1 + 72)];
  v9 = v8;
  if (v6 == 7)
  {
    v10 = v18;
    v11 = *(*(a1 + 40) + 8);
    if (v7 > *(v11 + 32))
    {
      *(v11 + 32) = v7;
      v11 = *(*(a1 + 40) + 8);
    }

    if (v8 > *(v11 + 40))
    {
      *(v11 + 40) = v8;
    }

    v12 = *(*(a1 + 48) + 8);
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
  }

  else
  {
    [*(a1 + 32) topInsetForViewElement:v18 previousViewElement:*(*(*(a1 + 56) + 8) + 40) width:*(a1 + 72)];
    v14 = v13;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    if (*(a1 + 80) == 1)
    {
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v16 = a3 > 1;
      if (v15 <= 0.0)
      {
        v16 = 0;
      }

      v17 = v15 != 0.0 && !v16;
      v10 = v18;
      if (!v17)
      {
        *(*(*(a1 + 64) + 8) + 40) = v9 + *(*(*(a1 + 64) + 8) + 40);
      }
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 40) = v9 + v14 + *(*(*(a1 + 64) + 8) + 40);
      v10 = v18;
    }
  }
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  [(NSHashTable *)self->_artworkRelatedChildViewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  objc_storeStrong(&self->_cardElement, a3);
  v11 = [SUUICardLayout layoutWithCardViewElement:v9 context:v10];
  layout = self->_layout;
  self->_layout = v11;

  productImageElement = self->_productImageElement;
  self->_productImageElement = 0;

  [(NSMapTable *)self->_viewElements removeAllObjects];
  self->_hasBottomAlignedItems = 0;
  self->_isActivityCard = [v9 cardType] == 1;
  v14 = [(SUUICardLayout *)self->_layout layoutStyle];
  programmedCardBackgroundView = self->_programmedCardBackgroundView;
  v16 = v14 == 1;
  if (v14 == 1)
  {
    if (!programmedCardBackgroundView)
    {
      v17 = objc_alloc_init(MEMORY[0x277D75D18]);
      v18 = self->_programmedCardBackgroundView;
      self->_programmedCardBackgroundView = v17;

      v19 = [(UIView *)self->_programmedCardBackgroundView layer];
      [v19 setCornerRadius:5.0];

      v20 = [(SUUICardViewElementCollectionViewCell *)self contentView];
      [v20 addSubview:self->_programmedCardBackgroundView];

      programmedCardBackgroundView = self->_programmedCardBackgroundView;
    }

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  [(UIView *)programmedCardBackgroundView setHidden:v21];
  v22 = [v9 isAdCard];
  v23 = [(SUUICardViewElementCollectionViewCell *)self adCardBackgroundView];
  [v23 setHidden:v22 ^ 1u];

  v24 = [(SUUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
  [v24 setHidden:v22 ^ 1u];

  [(SUUICardLayout *)self->_layout horizontalContentInset];
  v26 = a4 + v25 * -2.0;
  backgroundWrapper = self->_backgroundWrapper;
  self->_backgroundWrapper = 0;

  backgroundViewWithParallax = self->_backgroundViewWithParallax;
  self->_backgroundViewWithParallax = 0;

  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = __77__SUUICardViewElementCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v53 = &unk_2798FD980;
  v29 = v9;
  v54 = v29;
  v58 = v26;
  v30 = v10;
  v55 = v30;
  v56 = self;
  v59 = v16;
  v57 = &v60;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:&v50];
  if ([v29 cardType] == 2 && self->_backgroundWrapper && *(v61 + 24) == 1)
  {
    self->_hasBottomAlignedItems = 1;
  }

  if (self->_isActivityCard)
  {
    v31 = [v30 clientContext];
    v32 = SUUIUserInterfaceIdiom(v31);

    if (v32 == 1)
    {
      v33 = [(SUUICardViewElement *)self->_cardElement style];
      v34 = [v33 borderRadius];

      if (v34)
      {
        v35 = objc_alloc_init(MEMORY[0x277CD9F90]);
        [v34 cornerRadiiValue];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v44 = MEMORY[0x277D75208];
        [(SUUICardViewElementCollectionViewCell *)self bounds];
        if (v39 <= 0.0)
        {
          v45 = 4 * (v37 > 0.0);
        }

        else
        {
          v45 = (4 * (v37 > 0.0)) | 8;
        }

        if (v41 != 0.0)
        {
          ++v45;
        }

        if (v43 == 0.0)
        {
          v46 = v45;
        }

        else
        {
          v46 = v45 | 2;
        }

        v47 = [v44 bezierPathWithRoundedRect:v46 byRoundingCorners:? cornerRadii:?];
        [v35 setPath:{objc_msgSend(v47, "CGPath")}];
        v48 = [(SUUICardViewElementCollectionViewCell *)self layer];
        [v48 setMasksToBounds:1];

        v49 = [(SUUICardViewElementCollectionViewCell *)self layer];
        [v49 setMask:v35];
      }
    }
  }

  _Block_object_dispose(&v60, 8);
}

void __77__SUUICardViewElementCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v46 = a2;
  [*(a1 + 32) flattenedChildren];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v3 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v48;
    v6 = *MEMORY[0x277CBF3A8];
    v7 = *(MEMORY[0x277CBF3A8] + 8);
    do
    {
      v8 = 0;
      v44 = sel__imageTapAction_;
      do
      {
        if (*v48 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v47 + 1) + 8 * v8);
        v10 = [v9 elementType];
        v11 = 0;
        if (v10 > 50)
        {
          if (v10 <= 130)
          {
            if (v10 == 51)
            {
              v28 = [v46 addImageDeckViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
            }

            else
            {
              if (v10 != 62)
              {
                v12 = 0;
                v13 = 0;
                if (v10 != 66)
                {
                  goto LABEL_65;
                }

                v13 = [v46 addHorizontalLockupWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
                v15 = *(*(a1 + 48) + 840);
                if (v15)
                {
                  [v15 setLockup:v13];
                }

                v11 = 0;
                v12 = v13;
                if (!v13)
                {
                  goto LABEL_55;
                }

                goto LABEL_54;
              }

              if (!*(*(a1 + 48) + 896) && (*(a1 + 72) & 1) == 0)
              {
                [SUUIHorizontalListView preferredSizeForViewElement:v9 context:*(a1 + 40)];
                if (v41 != v6 || v40 != v7)
                {
                  objc_storeStrong((*(a1 + 48) + 896), v9);
                }
              }

              v28 = [v46 addHorizontalListWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
            }

            v13 = v28;
            v11 = 0;
            v12 = v13;
            if (!v13)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }

          if (v10 > 140)
          {
            if (v10 == 152)
            {
              v22 = *(a1 + 48);
              if (!*(v22 + 896))
              {
                objc_storeStrong((v22 + 896), v9);
              }

              v21 = [v46 addImageViewWithVideoElement:v9 context:*(a1 + 40)];
              goto LABEL_44;
            }

            v12 = 0;
            v13 = 0;
            if (v10 != 141)
            {
              goto LABEL_65;
            }

            goto LABEL_32;
          }

          if (v10 == 131)
          {
            v14 = [v46 addStackListViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
          }

          else
          {
            v12 = 0;
            v13 = 0;
            if (v10 != 138)
            {
              goto LABEL_65;
            }

            v14 = [v46 addLabelViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
          }

          goto LABEL_52;
        }

        if (v10 <= 31)
        {
          if (v10 == 7)
          {
            v23 = [v9 firstChildForElementType:49];
            v24 = [v46 addImageViewWithElement:v23 context:*(a1 + 40)];
            v25 = [[SUUIBackgroundImageWrapperForHorizontalLockup alloc] initWithImage:v24];
            v26 = *(a1 + 48);
            v27 = *(v26 + 840);
            *(v26 + 840) = v25;

            v11 = *(*(a1 + 48) + 840);
            v13 = v24;
            if ([v13 conformsToProtocol:&unk_286C2FC68])
            {
              objc_storeStrong((*(a1 + 48) + 832), v24);
            }

            v12 = 0;
            if (!v13)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }

          if (v10 != 8)
          {
            v12 = 0;
            v13 = 0;
            if (v10 != 12)
            {
              goto LABEL_65;
            }

LABEL_32:
            v13 = [v46 addButtonWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
            [v13 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
            goto LABEL_53;
          }

          v14 = [v46 addBadgeViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
          goto LABEL_52;
        }

        if (v10 > 48)
        {
          if (v10 == 49)
          {
            v18 = [v46 addImageViewWithElement:v9 context:*(a1 + 40)];
            v19 = [v18 tapRecognizer];
            [v19 addTarget:*(a1 + 48) action:v44];

            v20 = *(a1 + 48);
            if (!*(v20 + 896) && (*(a1 + 72) & 1) == 0)
            {
              objc_storeStrong((v20 + 896), v9);
            }

            v21 = v18;
LABEL_44:
            v13 = v21;
            v12 = 0;
            v11 = v21;
            if (!v21)
            {
              goto LABEL_55;
            }

LABEL_54:
            [*(*(a1 + 48) + 904) setObject:v9 forKey:v13];
            goto LABEL_55;
          }

          goto LABEL_32;
        }

        if (v10 != 32)
        {
          v12 = 0;
          v13 = 0;
          if (v10 != 48)
          {
            goto LABEL_65;
          }

          v14 = [v46 addHeaderViewWithElement:v9 width:*(a1 + 40) context:*(a1 + 64)];
LABEL_52:
          v13 = v14;
          goto LABEL_53;
        }

        v13 = [v46 addDividerWithElement:v9 context:*(a1 + 40)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v9;
          if ([v16 dividerType] == 3)
          {
            [*(a1 + 48) _dividerHeight:v16];
            [v13 setDividerSize:?];
            v17 = 1;
          }

          else
          {
            v17 = 0;
          }

          [v13 setDividerOrientation:v17];
        }

LABEL_53:
        v12 = 0;
        v11 = 0;
        if (v13)
        {
          goto LABEL_54;
        }

LABEL_55:
        if (v11)
        {
          v29 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v9];
          if (v29)
          {
            v30 = *(*(a1 + 48) + 864);
            if (!v30)
            {
              v31 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
              v32 = *(a1 + 48);
              v33 = *(v32 + 864);
              *(v32 + 864) = v31;

              v30 = *(*(a1 + 48) + 864);
            }

            [v30 setObject:v29 forKey:v11];
          }
        }

        if (v12)
        {
          v34 = *(*(a1 + 48) + 824);
          if (!v34)
          {
            v35 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
            v36 = *(a1 + 48);
            v37 = *(v36 + 824);
            *(v36 + 824) = v35;

            v34 = *(*(a1 + 48) + 824);
          }

          [v34 addObject:v12];
        }

LABEL_65:
        v38 = [v9 style];
        v39 = [v38 elementPosition];

        if (v39 == 3)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        ++v8;
      }

      while (v4 != v8);
      v43 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      v4 = v43;
    }

    while (v43);
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v8 = a4;
  v9 = a5;
  v25 = v8;
  v10 = [v8 requestIdentifier];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15];
        v17 = [v9 requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == v10)
        {
          v21 = v26;
          [v15 setImage:v26];

          LOBYTE(v19) = 1;
          v22 = v8;
          goto LABEL_22;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_artworkRelatedChildViewElementViews;
  v19 = [(NSMapTable *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = *v29;
    v22 = v25;
    v21 = v26;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        if ([*(*(&v28 + 1) + 8 * j) setImage:v26 forArtworkRequest:v25 context:v9])
        {
          LOBYTE(v19) = 1;
          goto LABEL_22;
        }
      }

      v19 = [(NSMapTable *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v22 = v8;
    v21 = v26;
  }

LABEL_22:

  return v19;
}

- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v10 = [(SUUIViewElement *)self->_cardElement flattenedChildren];
  v11 = [(SUUIViewReuseCollectionViewCell *)self allExistingViews];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SUUICardViewElementCollectionViewCell_updateWithItemState_context_animated___block_invoke;
  v17[3] = &unk_2798FD9A8;
  v12 = v11;
  v18 = v12;
  v21 = &v23;
  v13 = v8;
  v19 = v13;
  v14 = v9;
  v20 = v14;
  v22 = a5;
  [v10 enumerateObjectsUsingBlock:v17];
  v15 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v15;
}

void __78__SUUICardViewElementCollectionViewCell_updateWithItemState_context_animated___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 elementType];
  if (v7 == 66 || v7 == 62)
  {
    v9 = [*(a1 + 32) objectAtIndex:a3];
    v8 = [v9 updateWithItemState:*(a1 + 40) context:*(a1 + 48) animated:*(a1 + 64)];
    *a4 = v8;
    *(*(*(a1 + 56) + 8) + 24) = v8;
  }
}

- (id)viewForElementIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SUUIViewElement *)self->_cardElement flattenedChildren];
  v6 = [(SUUIViewReuseCollectionViewCell *)self allExistingViews];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__93;
  v19 = __Block_byref_object_dispose__93;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SUUICardViewElementCollectionViewCell_viewForElementIdentifier___block_invoke;
  v11[3] = &unk_2798FAF98;
  v7 = v6;
  v12 = v7;
  v14 = &v15;
  v8 = v4;
  v13 = v8;
  [v5 enumerateObjectsUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __66__SUUICardViewElementCollectionViewCell_viewForElementIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 elementType];
  if (v7 == 66 || v7 == 62)
  {
    v11 = [*(a1 + 32) objectAtIndex:a3];
    v8 = [v11 viewForElementIdentifier:*(a1 + 40)];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      *a4 = 1;
    }
  }
}

- (void)setPerspectiveTargetView:(id)a3
{
  backgroundViewWithParallax = self->_backgroundViewWithParallax;
  v4 = a3;
  [(SUUIPerspectiveView *)backgroundViewWithParallax setPerspectiveTargetView:v4];
}

- (void)applyLayoutAttributes:(id)a3
{
  v9.receiver = self;
  v9.super_class = SUUICardViewElementCollectionViewCell;
  [(SUUIViewReuseCollectionViewCell *)&v9 applyLayoutAttributes:a3];
  if ([(SUUICardViewElement *)self->_cardElement isAdCard])
  {
    v4 = [(SUUICardViewElementCollectionViewCell *)self adCardBackgroundView];
    v5 = [v4 isHidden];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x277D75348] whiteColor];
      v7 = [v6 CGColor];
      v8 = [(SUUICardViewElementCollectionViewCell *)self layer];
      [v8 setBackgroundColor:v7];
    }
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SUUICardViewElementCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setSelected:?];
  if (v3)
  {
    if ([(SUUICardViewElement *)self->_cardElement isAdCard])
    {
      v5 = [MEMORY[0x277D75128] sharedApplication];
      [v5 sendAction:sel_suuiadvertising_advertWasSelected_ to:0 from:self forEvent:0];
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  if (self->_isActivityCard)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    v6.receiver = self;
    v6.super_class = SUUICardViewElementCollectionViewCell;
    [(SUUIViewReuseCollectionViewCell *)&v6 setBackgroundColor:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUUICardViewElementCollectionViewCell;
    [(SUUIViewReuseCollectionViewCell *)&v5 setBackgroundColor:a3];
  }
}

- (void)layoutSubviews
{
  v124.receiver = self;
  v124.super_class = SUUICardViewElementCollectionViewCell;
  [(SUUICollectionViewCell *)&v124 layoutSubviews];
  v3 = [(SUUICardViewElementCollectionViewCell *)self backgroundColor];
  v4 = [(SUUIViewElement *)self->_cardElement firstChildForElementType:7];

  v94 = [(SUUICardViewElement *)self->_cardElement cardType];
  v95 = v4;
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] clearColor];

    v3 = v5;
  }

  v6 = [(SUUICardViewElementCollectionViewCell *)self contentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SUUIViewReuseCollectionViewCell *)self contentInset];
  v16 = v8 + v15;
  v18 = v10 + v17;
  v20 = v12 - (v15 + v19);
  v22 = v14 - (v17 + v21);

  programmedCardBackgroundView = self->_programmedCardBackgroundView;
  if (programmedCardBackgroundView && ![(UIView *)programmedCardBackgroundView isHidden])
  {
    v24 = SUUIColorSchemeStyleForColor(v3);
    if (v24 <= 3)
    {
      v25 = SUUIColorByAdjustingBrightness(v3, flt_259FCBC20[v24]);

      v3 = v25;
    }

    [(UIView *)self->_programmedCardBackgroundView setBackgroundColor:v3];
    [(UIView *)self->_programmedCardBackgroundView setFrame:v16, v18, v20, v22];
  }

  [(SUUICardLayout *)self->_layout horizontalContentInset];
  v27 = v26;
  v122[0] = 0;
  v122[1] = v122;
  v122[2] = 0x3032000000;
  v122[3] = __Block_byref_object_copy__93;
  v122[4] = __Block_byref_object_dispose__93;
  v123 = 0;
  v28 = [(SUUIViewReuseCollectionViewCell *)self allExistingViews];
  v29 = [v28 count];
  v121[0] = 0;
  v121[1] = v121;
  v121[2] = 0x2020000000;
  *&v121[3] = v18;
  v115 = 0;
  v116 = &v115;
  v117 = 0x3032000000;
  v118 = __Block_byref_object_copy__93;
  v119 = __Block_byref_object_dispose__93;
  v120 = 0;
  v114[0] = 0;
  v114[1] = v114;
  v114[2] = 0x2020000000;
  v114[3] = 0x402E000000000000;
  v113[0] = 0;
  v113[1] = v113;
  v113[2] = 0x2020000000;
  v113[3] = 0;
  v111[0] = 0;
  v111[1] = v111;
  v111[2] = 0x2020000000;
  v112 = 0;
  v30 = [(SUUICardViewElementCollectionViewCell *)self adCardBackgroundView];
  [v30 removeFromSuperview];

  v31 = [(SUUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
  [v31 removeFromSuperlayer];

  v32 = v16 + v27;
  v33 = v20 + v27 * -2.0;
  if ([(SUUICardViewElement *)self->_cardElement isAdCard])
  {
    v34 = [(SUUICardViewElementCollectionViewCell *)self traitCollection];
    v35 = [v34 horizontalSizeClass];

    [(SUUICardViewElement *)self->_cardElement style];
    if (v35 == 1)
      v36 = {;
      v37 = [v36 ikBackgroundColor];
      v38 = [v37 color];
      v39 = [v38 CGColor];
      v40 = [(SUUICardViewElementCollectionViewCell *)self layer];
      [v40 setBackgroundColor:v39];

      v41 = [(SUUICardViewElementCollectionViewCell *)self contentView];
      v42 = [v41 layer];
      v43 = [(SUUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
      [v42 addSublayer:v43];

      v44 = [(SUUICardViewElementCollectionViewCell *)self contentView];
      v45 = [v44 layer];
      [v45 frame];
      Width = CGRectGetWidth(v125);
      v47 = [MEMORY[0x277D759A0] mainScreen];
      [v47 scale];
      v49 = v48;

      v50 = [(SUUICardViewElementCollectionViewCell *)self contentView];
      v51 = [v50 layer];
      [v51 frame];
      MaxY = CGRectGetMaxY(v126);
      v127.origin.x = *MEMORY[0x277CBF3A0];
      v127.origin.y = *(MEMORY[0x277CBF3A0] + 8);
      v53 = 1.0 / v49;
      v127.size.width = Width;
      v127.size.height = v53;
      Height = CGRectGetHeight(v127);

      v55 = [(SUUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
      [v55 setFrame:{0.0, MaxY - Height, Width, v53}];
    }

    else
      v56 = {;
      v57 = [v56 ikBackgroundColor];
      v58 = [v57 color];

      v59 = [(SUUICardViewElementCollectionViewCell *)self adCardBackgroundView];
      [v59 setBackgroundColor:v58];

      v60 = [(SUUICardViewElementCollectionViewCell *)self contentView];
      v61 = [(SUUICardViewElementCollectionViewCell *)self adCardBackgroundView];
      [v60 addSubview:v61];

      v62 = [(SUUICardViewElementCollectionViewCell *)self contentView];
      v63 = [(SUUICardViewElementCollectionViewCell *)self adCardBackgroundView];
      [v62 sendSubviewToBack:v63];

      v128.origin.x = v32;
      v128.origin.y = v18;
      v128.size.width = v20 + v27 * -2.0;
      v128.size.height = v22;
      v129 = CGRectInset(v128, -10.0, -10.0);
      x = v129.origin.x;
      y = v129.origin.y;
      v66 = v129.size.width;
      v67 = v129.size.height;
      v68 = [(SUUICardViewElementCollectionViewCell *)self adCardBackgroundView];
      [v68 setFrame:{x, y, v66, v67}];

      v55 = [MEMORY[0x277D75348] whiteColor];
      v69 = [v55 CGColor];
      v70 = [(SUUICardViewElementCollectionViewCell *)self layer];
      [v70 setBackgroundColor:v69];

      v3 = v58;
    }
  }

  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __55__SUUICardViewElementCollectionViewCell_layoutSubviews__block_invoke;
  v96[3] = &unk_2798FD9D0;
  v105 = v32;
  v106 = v18;
  v107 = v33;
  v108 = v22;
  v96[4] = self;
  v99 = v113;
  v110 = v94 == 2;
  v100 = &v115;
  v101 = v111;
  v109 = v29;
  v102 = v114;
  v103 = v121;
  v104 = v122;
  v71 = v28;
  v97 = v71;
  v72 = v3;
  v98 = v72;
  [v71 enumerateObjectsUsingBlock:v96];
  if ([(SUUICardViewElement *)self->_cardElement isAdCard])
  {
    v73 = [(SUUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
    [v73 frame];
    v75 = v74;
    v77 = v76;

    v78 = [(SUUICardViewElementCollectionViewCell *)self contentView];
    [v78 bounds];
    v79 = CGRectGetWidth(v130);
    v80 = [MEMORY[0x277D759A0] mainScreen];
    [v80 scale];
    v82 = v81;

    v83 = [(SUUICardViewElementCollectionViewCell *)self compactAdCardHairlineLayer];
    [v83 setFrame:{v75, v77, v79, 1.0 / v82}];
  }

  if (v95 && v116[5] && v94 != 2)
  {
    v84 = [(NSMapTable *)self->_viewElements objectForKey:?];
    [v116[5] frame];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v131.origin.x = v32;
    v131.origin.y = v18;
    v131.size.width = v33;
    v131.size.height = v22;
    v91 = CGRectGetMaxY(v131);
    [*(&self->super.super.super.super.super.super.super.isa + v93) bottomInsetForLastViewElement:v84 width:v33];
    [v116[5] setFrame:{v86, v91 - v90 - v92, v88, v90}];
  }

  _Block_object_dispose(v111, 8);
  _Block_object_dispose(v113, 8);
  _Block_object_dispose(v114, 8);
  _Block_object_dispose(&v115, 8);

  _Block_object_dispose(v121, 8);
  _Block_object_dispose(v122, 8);
}

void __55__SUUICardViewElementCollectionViewCell_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = a2;
  v6 = MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = [*(*(a1 + 32) + 904) objectForKey:v51];
  v9 = *(a1 + 120);
  if (*(*(a1 + 32) + 872))
  {
    v9 = v9 + -2.0;
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  [v51 sizeThatFits:{v9, 1.79769313e308}];
  v12 = v11;
  v14 = v13;
  if ([v8 elementType] == 7)
  {
    v15 = (*(a1 + 120) - v12) * 0.5;
    v16 = *(a1 + 104) + floorf(v15);
    [v51 setContentMode:2];
    [v51 setFrame:{v16, v7, v12, v14}];
    [*(a1 + 32) sendSubviewToBack:v51];
    if (*(*(a1 + 32) + 856) == 1)
    {
      v53.origin.x = v16;
      v53.origin.y = v7;
      v53.size.width = v12;
      v53.size.height = v14;
      *(*(*(a1 + 56) + 8) + 24) = CGRectGetHeight(v53);
    }

    goto LABEL_51;
  }

  v17 = [v8 style];
  v18 = SUUIViewElementAlignmentForStyle(v17);

  if (v18 > 5)
  {
    v20 = *v6;
  }

  else if (((1 << v18) & 0x25) != 0)
  {
    v19 = (*(a1 + 120) - v12) * 0.5;
    v20 = *(a1 + 104) + floorf(v19);
  }

  else if (((1 << v18) & 0x12) != 0)
  {
    v20 = v10 + *(a1 + 104);
  }

  else
  {
    v20 = *(a1 + 104) + *(a1 + 120) - v12;
  }

  v21 = [v8 elementType];
  if (v21 == 66)
  {
    v23 = v8;
    v24 = [v23 lockupViewType];
    v22 = v24 == 7;
    if (v24 != 7)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    }

    if ([*(*(a1 + 32) + 848) isAdCard] && (objc_msgSend(*(a1 + 32), "adCardBackgroundView"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isHidden"), v25, (v26 & 1) == 0))
    {
      v27 = [*(a1 + 32) adCardBackgroundView];
      v28 = [v27 backgroundColor];
      [v51 setGradientColor:v28];
    }

    else
    {
      [v51 setGradientColor:0];
    }
  }

  else
  {
    v22 = 0;
  }

  if (*(a1 + 144) == 1)
  {
    v29 = [v8 style];
    v30 = [v29 elementPosition];

    if (v30 == 3 && *(*(a1 + 32) + 856) == 1 && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
    {
      v31 = *(*(*(a1 + 56) + 8) + 24);
      v54.origin.x = v20;
      v54.origin.y = v7;
      v54.size.width = v12;
      v54.size.height = v14;
      *(*(*(a1 + 56) + 8) + 24) = v31 - CGRectGetHeight(v54);
      *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    v32 = *(*(*(a1 + 80) + 8) + 24);
    v55.origin.x = v20;
    v55.origin.y = v32;
    v55.size.width = v12;
    v55.size.height = v14;
    *(*(*(a1 + 80) + 8) + 24) = CGRectGetHeight(v55) + v32;
    goto LABEL_36;
  }

  if (*(a1 + 136) - 1 == a3 && [v8 elementType] == 32)
  {
    v32 = CGRectGetMaxY(*(a1 + 104)) - v14;
    goto LABEL_36;
  }

  v33 = *(a1 + 32);
  v34 = *(v33 + 912);
  if (!v34 || v8 != *(v33 + 896))
  {
    v32 = *(*(*(a1 + 88) + 8) + 24);
    if (v22)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v48 = *(*(*(a1 + 88) + 8) + 24);
  [v34 size];
  v50 = v48 + (v49 - v14) * 0.5;
  v32 = floorf(v50);
  if (!v22)
  {
LABEL_35:
    [*(*(a1 + 32) + 880) topInsetForViewElement:v8 previousViewElement:*(*(*(a1 + 96) + 8) + 40) width:*(a1 + 120)];
    v32 = v32 + v35;
  }

LABEL_36:
  if ([*(*(a1 + 32) + 848) isAdCard])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && *(a1 + 136) - 1 == a3)
    {
      v56.origin.x = v20;
      v56.origin.y = v32;
      v56.size.width = v12;
      v56.size.height = v14;
      Height = CGRectGetHeight(v56);
      v32 = CGRectGetMaxY(*(a1 + 104)) - Height;
      v37 = [*(a1 + 40) objectAtIndex:a3 - 1];
      [v37 frame];
      MaxX = CGRectGetMaxX(v57);
      v58.origin.x = v20;
      v58.origin.y = v32;
      v58.size.width = v12;
      v58.size.height = v14;
      v20 = MaxX - CGRectGetWidth(v58);
    }
  }

  [v51 setFrame:{v20, v32, v12, v14}];
  objc_storeStrong((*(*(a1 + 96) + 8) + 40), v8);
  v59.origin.x = v20;
  v59.origin.y = v32;
  v59.size.width = v12;
  v59.size.height = v14;
  *(*(*(a1 + 88) + 8) + 24) = CGRectGetMaxY(v59);
  v39 = *(a1 + 32);
  if (v21 == 66 || (*(v39 + 872) & 1) == 0)
  {
    if (v21 == 66)
    {
      v42 = [v8 style];
      v43 = [v42 ikBackgroundColor];
      v41 = [v43 color];

      v39 = *(a1 + 32);
    }

    else
    {
      v41 = 0;
    }

    if ([*(v39 + 848) isAdCard])
    {
      v44 = [*(*(a1 + 32) + 848) style];
      v45 = [v44 ikBackgroundColor];
      v46 = [v45 color];

      v41 = v46;
    }

    v47 = v41;
    if (!v41)
    {
      v47 = *(a1 + 48);
    }

    [v51 setBackgroundColor:v47];
  }

  else
  {
    v40 = [MEMORY[0x277D75348] clearColor];
    [v51 setBackgroundColor:v40];
  }

LABEL_51:
}

- (void)_buttonAction:(id)a3
{
  v3 = [(NSMapTable *)self->_viewElements objectForKey:a3];
  [v3 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)_imageTapAction:(id)a3
{
  v4 = a3;
  viewElements = self->_viewElements;
  v6 = [v4 view];
  v7 = [(NSMapTable *)viewElements objectForKey:v6];

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SUUICardViewElementCollectionViewCell__imageTapAction___block_invoke;
  v9[3] = &unk_2798F8378;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [v8 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __57__SUUICardViewElementCollectionViewCell__imageTapAction___block_invoke(uint64_t a1, int a2, char a3)
{
  if (!a2 || (a3 & 1) == 0)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__SUUICardViewElementCollectionViewCell__imageTapAction___block_invoke_2;
    v4[3] = &unk_2798F7560;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __57__SUUICardViewElementCollectionViewCell__imageTapAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performDefaultActionForViewElement:*(a1 + 32)];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SUUICardViewElementCollectionViewCell;
    v7 = [(SUUICardViewElementCollectionViewCell *)&v9 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

- (void)suuiadvertising_advertSelectionEventShouldBeForwarded:(id)a3
{
  v4 = [MEMORY[0x277D75128] sharedApplication];
  [v4 sendAction:sel_suuiadvertising_advertWasSelected_ to:0 from:self forEvent:0];
}

- (NSString)lineItem
{
  if ([(SUUICardViewElement *)self->_cardElement isAdCard])
  {
    v3 = [(SUUICardViewElement *)self->_cardElement attributes];
    v4 = [v3 objectForKeyedSubscript:@"lineItem"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)impressionIdentifier
{
  if ([(SUUICardViewElement *)self->_cardElement isAdCard])
  {
    v3 = [(SUUICardViewElement *)self->_cardElement attributes];
    v4 = [v3 objectForKeyedSubscript:@"impressionId"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (double)_defaultWidthForLockupWithContext:(id)a3
{
  v3 = a3;
  [v3 activePageWidth];
  v5 = v4;
  v6 = [v3 clientContext];

  v7 = SUUIUserInterfaceIdiom(v6);
  if (v7 == 1)
  {
    v8 = v5 < 500.0;
    v9 = &unk_259FCBC10;
    return v9[v8];
  }

  if (v5 > 500.0)
  {
    return 284.0;
  }

  if (v5 > 414.0)
  {
    return 357.6;
  }

  if (v5 <= 375.0)
  {
    v8 = v5 > 320.0;
    v9 = &unk_259FCBC00;
    return v9[v8];
  }

  return 364.0;
}

- (double)_dividerHeight:(id)a3
{
  v3 = [a3 style];
  v4 = [v3 itemHeight];

  if (v4)
  {
    [v4 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 10.0;
  }

  return v6;
}

- (void)_performDefaultActionForViewElement:(id)a3
{
  v7 = a3;
  v4 = SUUICollectionViewForView(self);
  v5 = [v4 indexPathForCell:self];
  if (v5)
  {
    v6 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 collectionView:v4 performDefaultActionForViewElement:v7 indexPath:v5];
    }
  }
}

@end
@interface SUUIProductLockupCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (void)_requestLayoutForViewElements:(id)a3 width:(double)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (CGRect)_frameForSection:(int64_t)a3;
- (CGRect)_stackBottomRightElements:(id)a3 inRect:(CGRect)a4;
- (CGRect)_stackElements:(id)a3 alignment:(int64_t)a4 inRect:(CGRect)a5;
- (SUUIProductLockupCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)_viewElementForView:(id)a3;
- (id)viewForElementIdentifier:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)_cancelConfirmationAction:(id)a3;
- (void)_imageTapAction:(id)a3;
- (void)_layoutConfirmationGradientRelativeToSection:(int64_t)a3 alpha:(double)a4;
- (void)_prepareOfferConfirmationGradientForView:(id)a3;
- (void)_showConfirmationAction:(id)a3;
- (void)_updateLayoutToAnimateOfferTransitionForView:(id)a3;
- (void)itemOfferButtonDidAnimateTransition:(id)a3;
- (void)layoutSubviews;
- (void)offerViewDidAnimateTransition:(id)a3;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setPerspectiveTargetView:(id)a3;
- (void)setVanishingPoint:(CGPoint)a3;
@end

@implementation SUUIProductLockupCollectionViewCell

- (SUUIProductLockupCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUUIProductLockupCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    elementViews = v3->_elementViews;
    v3->_elementViews = v4;
  }

  return v3;
}

- (void)setPerspectiveTargetView:(id)a3
{
  objc_initWeak(&location, a3);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__SUUIProductLockupCollectionViewCell_setPerspectiveTargetView___block_invoke;
  v4[3] = &unk_2798FAD78;
  objc_copyWeak(&v5, &location);
  [(SUUIViewReuseCollectionViewCell *)self enumerateExistingViewsForReuseIdentifier:0x286AF9A20 usingBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__SUUIProductLockupCollectionViewCell_setPerspectiveTargetView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setPerspectiveTargetView:WeakRetained];
}

- (void)setVanishingPoint:(CGPoint)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__SUUIProductLockupCollectionViewCell_setVanishingPoint___block_invoke;
  v3[3] = &__block_descriptor_48_e23_v32__0__UIView_8Q16_B24l;
  v4 = a3;
  [(SUUIViewReuseCollectionViewCell *)self enumerateExistingViewsForReuseIdentifier:0x286AF9A20 usingBlock:v3];
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__SUUIProductLockupCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke;
  v11[3] = &unk_2798F5E50;
  v9 = v8;
  v13 = &v15;
  v14 = a4;
  v12 = v9;
  [v7 enumerateChildrenUsingBlock:v11];
  LOBYTE(a4) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return a4;
}

uint64_t __86__SUUIProductLockupCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 defaultItemWidthForViewElement:v7];
  [a1 sizeThatFitsWidth:v7 viewElement:v6 context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[SUUIProductLockupLayout alloc] initWithLockup:v9 width:v8 context:a4];

  [(SUUIProductLockupLayout *)v10 metadataWidthForWidth:a4];
  v12 = v11;
  v13 = [(SUUIProductLockupLayout *)v10 viewElementsForSection:5];
  [a1 _requestLayoutForViewElements:v13 width:v8 context:v12];

  v14 = [(SUUIProductLockupLayout *)v10 viewElementsForSection:1];
  [a1 _requestLayoutForViewElements:v14 width:v8 context:v12];

  if (v10)
  {
    [(SUUIProductLockupLayout *)v10 layoutWidthsForWidth:a4];
  }

  v15 = [(SUUIProductLockupLayout *)v10 viewElementsForSection:4, 0, 0];
  [a1 _requestLayoutForViewElements:v15 width:v8 context:0.0];

  v16 = [(SUUIProductLockupLayout *)v10 viewElementsForSection:2];
  [a1 _requestLayoutForViewElements:v16 width:v8 context:0.0];

  v17 = [(SUUIProductLockupLayout *)v10 viewElementsForSection:0];
  [a1 _requestLayoutForViewElements:v17 width:v8 context:v18];
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[SUUIProductLockupLayout alloc] initWithLockup:v8 width:v7 context:a3];

  v10 = [(SUUIProductLockupLayout *)v9 viewElementsForSection:3];
  v11 = [v10 firstObject];

  v12 = 0.0;
  if (v11)
  {
    [v7 sizeForViewElement:v11 width:a3];
    v12 = v13;
  }

  if (v9)
  {
    [(SUUIProductLockupLayout *)v9 sizingToFitWidth:a3, 0.0, 0.0, 0.0, 0];
  }

  v14 = 0.0 > 0.00000011920929;
  if (0.0 > 0.00000011920929)
  {
    v14 += 2;
  }

  v15 = 0.0 + 0.0 + 0.0 + (v14 - 1) * 5.0;
  if (v14 <= 1)
  {
    v15 = 0.0 + 0.0 + 0.0;
  }

  v16 = 0.0 + 0.0 + 5.0;
  if (0.0 <= 0.00000011920929)
  {
    v16 = 0.0 + 0.0;
  }

  if (v15 >= v16)
  {
    v16 = v15;
  }

  if (v12 < v16)
  {
    v12 = v16;
  }

  v17 = a3;
  v18 = v12;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  buyButtonDescriptorToButton = self->_buyButtonDescriptorToButton;
  v10 = a3;
  [(NSMapTable *)buyButtonDescriptorToButton removeAllObjects];
  [(NSHashTable *)self->_offerViews removeAllObjects];
  v11 = [[SUUIProductLockupLayout alloc] initWithLockup:v10 width:v8 context:a4];

  layout = self->_layout;
  self->_layout = v11;

  self->_offerMetadataPosition = 1;
  segmentedControlControllers = self->_segmentedControlControllers;
  self->_segmentedControlControllers = 0;

  [(SUUIGradientView *)self->_offerConfirmationGradientView removeFromSuperview];
  offerConfirmationGradientView = self->_offerConfirmationGradientView;
  self->_offerConfirmationGradientView = 0;

  [(NSMapTable *)self->_elementViews removeAllObjects];
  [(NSHashTable *)self->_artworkRelatedChildViewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__SUUIProductLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v16[3] = &unk_2798F8108;
  v18 = a4;
  v16[4] = self;
  v17 = v8;
  v15 = v8;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:v16];
}

void __75__SUUIProductLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  v6 = *(v5 + 856);
  v7 = a1[6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SUUIProductLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2;
  v9[3] = &unk_2798FD790;
  v12 = v7;
  v9[4] = v5;
  v10 = v3;
  v11 = v4;
  v8 = v3;
  [v6 enumerateViewElementsForWidth:v9 usingBlock:v7];
}

void __75__SUUIProductLockupCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v53 = a2;
  v7 = a3 & 0xFFFFFFFFFFFFFFFBLL;
  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [*(*(a1 + 32) + 856) metadataWidthForWidth:*(a1 + 56)];
    a4 = v8;
  }

  v9 = [v53 elementType];
  v10 = v9;
  v11 = 0;
  if (v9 > 76)
  {
    if (v9 <= 137)
    {
      if (v9 <= 130)
      {
        if (v9 == 77)
        {
          v15 = v53;
          v14 = [*(a1 + 40) addOfferViewWithViewElement:v15 width:*(a1 + 48) context:a4];
          if ([(SUUISegmentedControlViewElementController *)v15 isSimpleOffer])
          {
            if (v7 == 1)
            {
              [(SUUISegmentedControlViewElementController *)v14 setMetadataPosition:0];
            }

            v33 = *(a1 + 32);
          }

          else
          {
            v49 = [(SUUISegmentedControlViewElementController *)v14 metadataPosition];
            v33 = 0;
            if (v49 != 1)
            {
              *(*(a1 + 32) + 880) = v49;
            }
          }

          [(SUUISegmentedControlViewElementController *)v14 setDelegate:v33];
          if (!v14)
          {
            goto LABEL_82;
          }

          v17 = *(*(a1 + 32) + 888);
          if (!v17)
          {
            v50 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
            v51 = *(a1 + 32);
            v52 = *(v51 + 888);
            *(v51 + 888) = v50;

            v17 = *(*(a1 + 32) + 888);
          }

          v21 = v14;
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
          if (v9 != 109)
          {
            goto LABEL_72;
          }

          v14 = [*(a1 + 40) addReusableViewWithReuseIdentifier:0x286AF9A00];
          v15 = [[SUUISegmentedControlViewElementController alloc] initWithViewElement:v53 segmentedControl:v14];
          v16 = [*(a1 + 48) clientContext];
          [(SUUISegmentedControlViewElementController *)v15 setClientContext:v16];

          [(SUUISegmentedControlViewElementController *)v15 setDesiredSegmentWidth:40.0];
          v17 = *(*(a1 + 32) + 896);
          if (!v17)
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v19 = *(a1 + 32);
            v20 = *(v19 + 896);
            *(v19 + 896) = v18;

            v17 = *(*(a1 + 32) + 896);
          }

          v21 = v15;
        }

        [v17 addObject:v21];
LABEL_82:

LABEL_83:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        if (!v14)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      if (v9 != 131)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        if (v9 != 135)
        {
          goto LABEL_72;
        }

        v28 = [*(a1 + 40) addStarRatingViewWithViewElement:v53 width:*(a1 + 48) context:a4];
        goto LABEL_50;
      }

      v27 = [*(a1 + 40) addStackListViewWithElement:v53 width:*(a1 + 48) context:a4];
      goto LABEL_47;
    }

    if (v9 <= 143)
    {
      if (v9 != 138)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        if (v9 != 141)
        {
          goto LABEL_72;
        }

        goto LABEL_22;
      }

      v28 = [*(a1 + 40) addLabelViewWithElement:v53 width:*(a1 + 48) context:a4];
LABEL_50:
      v14 = v28;
      goto LABEL_83;
    }

    if (v9 == 144)
    {
      v28 = [*(a1 + 40) addTomatoRatingViewWithViewElement:v53 width:*(a1 + 48) context:a4];
      goto LABEL_50;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (v9 != 152)
    {
      goto LABEL_72;
    }

    v29 = [*(a1 + 40) addImageViewWithVideoElement:v53 context:*(a1 + 48)];
    goto LABEL_52;
  }

  if (v9 <= 47)
  {
    if (v9 == 8)
    {
      v29 = [*(a1 + 40) addBadgeViewWithElement:v53 width:*(a1 + 48) context:a4];
LABEL_52:
      v24 = v29;
      goto LABEL_53;
    }

    if (v9 != 12)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (v9 != 13)
      {
        goto LABEL_72;
      }

LABEL_22:
      v25 = [*(a1 + 40) addButtonWithElement:v53 width:*(a1 + 48) context:a4];
      [v25 addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:0x20000];
      [v25 addTarget:*(a1 + 32) action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
      [v25 addTarget:*(a1 + 32) action:sel__showConfirmationAction_ forControlEvents:0x40000];
      LODWORD(v26) = -1097229926;
      [v25 setCharge:v26];
      [v25 setItemOfferDelegate:*(a1 + 32)];
      v24 = v25;
      v11 = v24;
      v12 = 0;
LABEL_48:
      v13 = 0;
      goto LABEL_54;
    }

LABEL_32:
    v30 = [*(a1 + 40) addButtonWithElement:v53 width:*(a1 + 48) context:a4];
    [v30 addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:64];
    LODWORD(v31) = -1097229926;
    [v30 setCharge:v31];
    v32 = v30;
    v14 = v32;
    v12 = 0;
    if (v10 == 50)
    {
      v11 = 0;
    }

    else
    {
      v11 = v32;
    }

    if (v10 == 50)
    {
      v13 = v32;
    }

    else
    {
      v13 = 0;
    }

    if (!v32)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v9 > 49)
  {
    if (v9 != 50)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (v9 != 62)
      {
        goto LABEL_72;
      }

      v27 = [*(a1 + 40) addHorizontalListWithElement:v53 width:*(a1 + 48) context:a4];
LABEL_47:
      v24 = v27;
      v12 = v24;
      v11 = 0;
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  if (v9 == 48)
  {
    v28 = [*(a1 + 40) addHeaderViewWithElement:v53 width:*(a1 + 48) context:a4];
    goto LABEL_50;
  }

  v22 = [*(a1 + 40) addImageViewWithElement:v53 context:*(a1 + 48)];
  v23 = [v22 tapRecognizer];
  [v23 addTarget:*(a1 + 32) action:sel__imageTapAction_];

  v24 = v22;
LABEL_53:
  v13 = v24;
  v11 = 0;
  v12 = 0;
LABEL_54:
  v14 = v24;
  if (v24)
  {
LABEL_55:
    v34 = [*(a1 + 48) textPropertiesForViewElement:v53 width:a4];
    [*(a1 + 40) setTextProperties:v34 forView:v14];
    [*(*(a1 + 32) + 840) setObject:v14 forKey:v53];
  }

LABEL_56:
  if (v11)
  {
    v35 = [v53 buyButtonDescriptor];
    if (v35)
    {
      v36 = *(*(a1 + 32) + 832);
      if (!v36)
      {
        v37 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:517 capacity:1];
        v38 = *(a1 + 32);
        v39 = *(v38 + 832);
        *(v38 + 832) = v37;

        v36 = *(*(a1 + 32) + 832);
      }

      [v36 setObject:v11 forKey:v35];
    }
  }

  if (v13)
  {
    v40 = [*(a1 + 48) imageResourceCacheKeyForViewElement:v53];
    if (v40)
    {
      v41 = *(*(a1 + 32) + 848);
      if (!v41)
      {
        v42 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
        v43 = *(a1 + 32);
        v44 = *(v43 + 848);
        *(v43 + 848) = v42;

        v41 = *(*(a1 + 32) + 848);
      }

      [v41 setObject:v40 forKey:v13];
    }
  }

  if (v12)
  {
    v45 = *(*(a1 + 32) + 824);
    if (!v45)
    {
      v46 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
      v47 = *(a1 + 32);
      v48 = *(v47 + 824);
      *(v47 + 824) = v46;

      v45 = *(*(a1 + 32) + 824);
    }

    [v45 addObject:v12];
  }

LABEL_72:
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v8 = a4;
  v9 = a5;
  v26 = v8;
  v10 = [v8 requestIdentifier];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15];
        v17 = [v9 requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v15 imageView];
            v21 = v27;
            [v24 setImage:v27];
          }

          else
          {
            v21 = v27;
            [v15 setImage:v27];
          }

          v22 = v8;

          goto LABEL_23;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_artworkRelatedChildViewElementViews;
  v19 = [(NSMapTable *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v19)
  {
    v20 = *v30;
    v22 = v26;
    v21 = v27;
LABEL_12:
    v23 = 0;
    while (1)
    {
      if (*v30 != v20)
      {
        objc_enumerationMutation(obj);
      }

      if ([*(*(&v29 + 1) + 8 * v23) setImage:v27 forArtworkRequest:v26 context:v9])
      {
        break;
      }

      if (v19 == ++v23)
      {
        v19 = [(NSMapTable *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v19)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }
    }

LABEL_23:
    LOBYTE(v19) = 1;
  }

  else
  {
    v22 = v8;
    v21 = v27;
  }

LABEL_24:

  return v19;
}

- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v24 = [v9 clientContext];
  v25 = self;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = self->_buyButtonDescriptorToButton;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if ([v16 canPersonalizeUsingItemState:v8])
        {
          v17 = [(NSMapTable *)v25->_buyButtonDescriptorToButton objectForKey:v16];
          v13 |= [v17 setValuesUsingBuyButtonDescriptor:v16 itemState:v8 clientContext:v24 animated:v5];
        }
      }

      v12 = [(NSMapTable *)v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v25->_offerViews;
  v19 = [(NSHashTable *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v13 |= [*(*(&v26 + 1) + 8 * j) updateWithItemState:v8 context:v9 animated:v5];
      }

      v20 = [(NSHashTable *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  if (v13)
  {
    [(SUUIProductLockupCollectionViewCell *)v25 setNeedsLayout];
  }

  return v13 & 1;
}

- (id)viewForElementIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_elementViews;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 itmlID];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = [(NSMapTable *)self->_elementViews objectForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)layoutSubviews
{
  v142.receiver = self;
  v142.super_class = SUUIProductLockupCollectionViewCell;
  [(SUUICollectionViewCell *)&v142 layoutSubviews];
  v3 = [(SUUIProductLockupCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SUUIViewReuseCollectionViewCell *)self contentInset];
  v79 = v13;
  v80 = v12;
  v136 = 0;
  v137 = &v136;
  v138 = 0x3010000000;
  v139 = "";
  v72 = v15;
  v73 = v14;
  v140 = v15;
  v141 = v14;
  v16 = [(SUUIProductLockupLayout *)self->_layout viewElementsForSection:3];
  v17 = [v16 firstObject];

  if (v17)
  {
    v18 = v5;
    v19 = [(NSMapTable *)self->_elementViews objectForKey:v17];
    [v19 frame];
    v20 = v137[4];
    v21 = v137[5];
    [v19 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v23 = v22;
    v25 = v24;
    [v19 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v20, v21, v22, v24, v18, v7, v9, v11)}];
    v143.origin.x = v20;
    v143.origin.y = v21;
    v143.size.width = v23;
    v143.size.height = v25;
    v137[4] = CGRectGetMaxX(v143) + 13.0;

    v5 = v18;
  }

  v83 = v137[5];
  v84 = v137[4];
  v26 = [(SUUIProductLockupLayout *)self->_layout viewElementsForSection:5];
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v81 = v11 - v80 - v83;
  v82 = v9 - v79 - v84;
  v28 = SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v84, v83, v82, v81, v5, v7, v9, v11);
  if (ShouldReverseLayoutDirection)
  {
    v29 = 7;
  }

  else
  {
    v29 = 8;
  }

  [(SUUIProductLockupCollectionViewCell *)self _stackElements:v26 alignment:v29 inRect:v28, v11 - v80];
  v78 = SUUIRectByRemovingStoreUserInterfaceLayoutDirectionInRect(v30, v31, v32, v33, v5, v7, v9, v11);
  v70 = v35;
  v71 = v34;
  v69 = v36;
  v37 = [(SUUIProductLockupLayout *)self->_layout viewElementsForSection:1];
  [(SUUIProductLockupCollectionViewCell *)self _stackBottomRightElements:v37 inRect:v84, v83, v82, v81];
  v76 = v39;
  v77 = v38;
  v74 = v41;
  v75 = v40;
  v128 = 0;
  v129 = &v128;
  v130 = 0x4010000000;
  v131 = "";
  v132 = v84;
  v133 = v83;
  v134 = v9 - v79 - v84;
  v135 = v11 - v80 - v83;
  if ([v26 count])
  {
    v129[6] = v78 - 5.0 - v129[4];
  }

  v42 = [(SUUIProductLockupLayout *)self->_layout viewElementsForSection:4];
  if (storeShouldReverseLayoutDirection())
  {
    v43 = 8;
  }

  else
  {
    v43 = 7;
  }

  [(SUUIProductLockupCollectionViewCell *)self _stackElements:v42 alignment:v43 inRect:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v129[4], v129[5], v129[6], v129[7], v5, v7, v9, v11)];
  v48 = SUUIRectByRemovingStoreUserInterfaceLayoutDirectionInRect(v44, v45, v46, v47, v5, v7, v9, v11);
  v50 = v49;
  v52 = v51;
  v53 = v5;
  v55 = v54;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__SUUIProductLockupCollectionViewCell_layoutSubviews__block_invoke;
  aBlock[3] = &unk_2798FD7B8;
  v106 = &v128;
  v107 = v84;
  v108 = v83;
  v109 = v9 - v79 - v84;
  v110 = v11 - v80 - v83;
  v56 = v42;
  v102 = v56;
  v111 = v48;
  v112 = v50;
  v113 = v52;
  v114 = v55;
  v115 = v53;
  v116 = v7;
  v117 = v9;
  v118 = v11;
  v119 = v73;
  v120 = v72;
  v121 = v80;
  v122 = v79;
  v57 = v26;
  v103 = v57;
  v123 = v78;
  v124 = v71;
  v125 = v70;
  v126 = v69;
  v58 = v37;
  v104 = v58;
  v105 = self;
  v127 = v43;
  v59 = _Block_copy(aBlock);
  v59[2](v77, v76, v75, v74, 0.0);
  v60 = [(SUUIProductLockupLayout *)self->_layout viewElementsForSection:0];
  if ([v60 count])
  {
    v61 = [(SUUIProductLockupLayout *)self->_layout bottomLeftLayoutStyle];
    if (v61 == 2)
    {
      v95 = 0;
      v96 = &v95;
      v62 = *(v137 + 4);
      v97 = 0x2020000000;
      v98 = v62;
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __53__SUUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_2;
      v100[3] = &unk_2798FD7E0;
      *&v100[6] = v9 - v79 - v84;
      *&v100[7] = v11 - v80 - v83;
      v100[4] = self;
      v100[5] = &v95;
      *&v100[8] = v53;
      *&v100[9] = v7;
      *&v100[10] = v9;
      *&v100[11] = v11;
      v100[12] = v73;
      v100[13] = v72;
      *&v100[14] = v80;
      *&v100[15] = v79;
      [v60 enumerateObjectsUsingBlock:v100];
      if ([v58 count])
      {
        v144.origin.y = v76;
        v144.origin.x = v77;
        v144.size.height = v74;
        v144.size.width = v75;
        if (CGRectGetMinX(v144) < v96[3])
        {
          if ([(SUUIProductLockupLayout *)self->_layout hasBottomRightElementWithRightAlignment])
          {
            v63 = v96[3];
            v145.origin.x = v84;
            v145.origin.y = v83;
            v145.size.height = v81;
            v145.size.width = v9 - v79 - v84;
            MinY = CGRectGetMinY(v145);
            v146.origin.x = v84;
            v146.origin.y = v83;
            v146.size.height = v81;
            v146.size.width = v82;
            MaxX = CGRectGetMaxX(v146);
            v147.origin.x = v84;
            v147.origin.y = v83;
            v147.size.height = v81;
            v147.size.width = v82;
            [(SUUIProductLockupCollectionViewCell *)self _stackBottomRightElements:v58 inRect:v63, MinY, MaxX - v96[3], CGRectGetHeight(v147)];
            (v59[2])(v59);
          }
        }
      }
    }

    else
    {
      if ([v58 count])
      {
        v66 = v77 - 5.0 - v84;
      }

      else
      {
        v66 = v9 - v79 - v84;
      }

      v95 = 0;
      v96 = &v95;
      v97 = 0x3010000000;
      v98 = "";
      v99 = *MEMORY[0x277CBF3A8];
      v91 = 0;
      v92 = &v91;
      v93 = 0x2020000000;
      v94 = 0;
      v87 = 0;
      v88 = &v87;
      v89 = 0x2020000000;
      v90 = 0;
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __53__SUUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_3;
      v86[3] = &unk_2798FD808;
      *&v86[8] = v66;
      *&v86[9] = v53;
      *&v86[10] = v7;
      *&v86[11] = v9;
      *&v86[12] = v11;
      v86[4] = self;
      v86[5] = &v87;
      v86[6] = &v95;
      v86[7] = &v91;
      [v60 enumerateObjectsUsingBlock:v86];
      v67 = v96;
      if (v61 && v96[4] < v66)
      {
        v66 = v96[4];
      }

      v96[4] = v66;
      v92[3] = 0;
      v137[5] = v68 - v67[5];
      v88[3] = 0;
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __53__SUUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_4;
      v85[3] = &unk_2798FD830;
      v85[4] = self;
      v85[5] = &v136;
      v85[6] = &v91;
      v85[7] = &v87;
      v85[8] = &v95;
      *&v85[9] = v53;
      *&v85[10] = v7;
      *&v85[11] = v9;
      *&v85[12] = v11;
      [v60 enumerateObjectsUsingBlock:v85];
      _Block_object_dispose(&v87, 8);
      _Block_object_dispose(&v91, 8);
    }

    _Block_object_dispose(&v95, 8);
  }

  _Block_object_dispose(&v128, 8);
  _Block_object_dispose(&v136, 8);
}

double __53__SUUIProductLockupCollectionViewCell_layoutSubviews__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = *(*(a1 + 64) + 8);
  v11 = *(a1 + 88);
  *(v10 + 32) = *(a1 + 72);
  *(v10 + 48) = v11;
  if ([*(a1 + 32) count])
  {
    *(*(*(a1 + 64) + 8) + 40) = CGRectGetMaxY(*(a1 + 104)) + 5.0;
    *(*(*(a1 + 64) + 8) + 56) = *(a1 + 160) - *(a1 + 184) - *(*(*(a1 + 64) + 8) + 40);
  }

  if ([*(a1 + 40) count])
  {
    v12 = *(*(a1 + 64) + 8);
    v13 = *(a1 + 200) - 5.0 - *(v12 + 32);
    if (*(v12 + 48) < v13)
    {
      v13 = *(v12 + 48);
    }

    *(v12 + 48) = v13;
  }

  if ([*(a1 + 48) count])
  {
    v14 = *(*(a1 + 64) + 8);
    v15 = a3 - 5.0;
    v16 = 32;
    if (a6 > 0.00000011920929)
    {
      v16 = 40;
    }

    v17 = 48;
    if (a6 <= 0.00000011920929)
    {
      v15 = a2 - 5.0;
    }

    else
    {
      v17 = 56;
    }

    v18 = v15 - *(v14 + v16);
    if (*(v14 + v17) < v18)
    {
      v18 = *(v14 + v17);
    }

    *(v14 + v17) = v18;
  }

  v19 = *(a1 + 56);
  v20 = [v19[107] viewElementsForSection:2];
  v21 = *(*(a1 + 64) + 8);
  [v19 _stackElements:v20 alignment:*(a1 + 232) inRect:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v21[4], v21[5], v21[6], v21[7], *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160))}];
  v23 = v22;

  return v23;
}

void __53__SUUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = [*(*(a1 + 32) + 840) objectForKey:a2];
  if (([v9 isHidden] & 1) == 0)
  {
    [v9 frame];
    [v9 sizeThatFits:{*(a1 + 48), 1.79769313e308}];
    v11.size.width = v3;
    v11.size.height = v4;
    v11.origin.x = *(*(*(a1 + 40) + 8) + 24);
    v11.origin.y = *(a1 + 88) - *(a1 + 112) - v4;
    v12 = CGRectIntegral(v11);
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    [v9 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v12.origin.x, v12.origin.y, v12.size.width, v12.size.height, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88))}];
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxX(v13) + 5.0;
  }
}

void __53__SUUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_3(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(*(a1 + 32) + 840) objectForKey:?];
  if (([v3 isHidden] & 1) == 0)
  {
    [v3 frame];
    v5 = v4;
    v7 = v6;
    [v3 sizeThatFits:{*(a1 + 64), 1.79769313e308}];
    v10 = v9;
    if (v8 >= *(a1 + 64))
    {
      v11 = *(a1 + 64);
    }

    else
    {
      v11 = v8;
    }

    [v3 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v5, v7, v11, v9, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96))}];
    if (*(*(*(a1 + 40) + 8) + 24) <= 0)
    {
      v12 = v17;
    }

    else
    {
      [*(*(a1 + 32) + 856) topPaddingForViewElement:v17];
      v12 = v17;
      *(*(*(a1 + 48) + 8) + 40) = v13 + *(*(*(a1 + 48) + 8) + 40);
    }

    *(*(*(a1 + 48) + 8) + 40) = v10 + *(*(*(a1 + 56) + 8) + 24) + *(*(*(a1 + 48) + 8) + 40);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 32);
    if (v15 < v11)
    {
      v15 = v11;
    }

    *(v14 + 32) = v15;
    [*(*(a1 + 32) + 856) bottomPaddingForViewElement:v12];
    *(*(*(a1 + 56) + 8) + 24) = v16;
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __53__SUUIProductLockupCollectionViewCell_layoutSubviews__block_invoke_4(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [*(*(a1 + 32) + 840) objectForKey:?];
  if (([v3 isHidden] & 1) == 0)
  {
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v8 = *(*(*(a1 + 40) + 8) + 40) + *(*(*(a1 + 48) + 8) + 24);
    if (*(*(*(a1 + 56) + 8) + 24) < 1)
    {
      v9 = v20;
    }

    else
    {
      [*(*(a1 + 32) + 856) topPaddingForViewElement:v20];
      v9 = v20;
      v8 = v8 + v10;
    }

    if ([v9 elementType] == 77)
    {
      v11 = *(*(*(a1 + 40) + 8) + 32);
      v5 = *(*(*(a1 + 64) + 8) + 32);
    }

    else
    {
      v11 = *(*(*(a1 + 40) + 8) + 32);
      if (*(*(a1 + 32) + 880) != 1)
      {
        v11 = v11 + *(*(*(a1 + 64) + 8) + 32) - v5;
      }
    }

    v12 = v8;
    v13 = v5;
    v14 = v7;
    v22 = CGRectIntegral(*&v11);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    [v3 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v22.origin.x, v22.origin.y, v22.size.width, v22.size.height, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96))}];
    [*(*(a1 + 32) + 856) bottomPaddingForViewElement:v20];
    *(*(*(a1 + 48) + 8) + 24) = v19;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    *(*(*(a1 + 40) + 8) + 40) = CGRectGetMaxY(v23);
    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

- (void)itemOfferButtonDidAnimateTransition:(id)a3
{
  if (([a3 isShowingConfirmation] & 1) == 0)
  {
    [(SUUIGradientView *)self->_offerConfirmationGradientView removeFromSuperview];
    offerConfirmationGradientView = self->_offerConfirmationGradientView;
    self->_offerConfirmationGradientView = 0;
  }
}

- (void)offerViewDidAnimateTransition:(id)a3
{
  if (([a3 isShowingConfirmation] & 1) == 0)
  {
    [(SUUIGradientView *)self->_offerConfirmationGradientView removeFromSuperview];
    offerConfirmationGradientView = self->_offerConfirmationGradientView;
    self->_offerConfirmationGradientView = 0;
  }
}

- (void)_buttonAction:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = SUUICollectionViewForView(self);
  v5 = [v15 delegate];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_elementViews;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      v10 = v5;
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_elementViews objectForKey:v12];

        if (v13 == v4)
        {
          v5 = v10;
          if (objc_opt_respondsToSelector())
          {
            v14 = [v15 indexPathForCell:self];
            [v10 collectionView:v15 didConfirmButtonElement:v12 withClickInfo:0 forItemAtIndexPath:v14];
          }

          else
          {
            [v12 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
          }

          goto LABEL_13;
        }
      }

      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v5 = v10;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_cancelConfirmationAction:(id)a3
{
  v4 = a3;
  [(SUUIProductLockupCollectionViewCell *)self bringSubviewToFront:v4];
  [v4 setShowingConfirmation:0 animated:1];
}

- (void)_imageTapAction:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 view];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_elementViews;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_elementViews objectForKey:v10, v12];

        if (v11 == v4)
        {
          [v10 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_showConfirmationAction:(id)a3
{
  v4 = a3;
  [(SUUIProductLockupCollectionViewCell *)self _prepareOfferConfirmationGradientForView:v4];
  [v4 setShowingConfirmation:1 animated:1];
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
    v11 = SUUIFontLimitedPreferredFontForTextStyle(21, 5);
  }

  v12 = [v6 tintColor];
  v13 = SUUIViewElementPlainColorWithStyle(v10, v12);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
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
  v9 = [v6 tintColor];

  v10 = SUUIViewElementPlainColorWithStyle(v7, v9);

  v11 = [v5 labelViewStyle];
  if (v11 <= 2)
  {
    if (v11 < 2)
    {
      if (v8)
      {
        if (v10)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v8 = SUUIFontForTextStyle(10);
        if (v10)
        {
          goto LABEL_28;
        }
      }

      v12 = MEMORY[0x277D75348];
      v13 = 0.6;
      goto LABEL_24;
    }

    if (v11 != 2)
    {
      goto LABEL_28;
    }

LABEL_11:
    if (v8)
    {
      if (v10)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v8 = SUUIFontLimitedPreferredFontForTextStyle(2, 5);
      if (v10)
      {
        goto LABEL_28;
      }
    }

    v14 = [MEMORY[0x277D75348] blackColor];
    goto LABEL_27;
  }

  switch(v11)
  {
    case 3:
      if (!v8)
      {
        v8 = SUUIFontForTextStyle(10);
      }

      if (v10)
      {
        break;
      }

      v12 = MEMORY[0x277D75348];
      v13 = 0.4;
LABEL_24:
      v14 = [v12 colorWithWhite:0.0 alpha:v13];
LABEL_27:
      v10 = v14;
      break;
    case 4:
      if (!v8)
      {
        v8 = SUUIFontLimitedPreferredFontForTextStyle(21, 5);
      }

      if (v10)
      {
        break;
      }

      v12 = MEMORY[0x277D75348];
      v13 = 0.8;
      goto LABEL_24;
    case 5:
      goto LABEL_11;
  }

LABEL_28:
  v15 = [v5 text];
  v16 = [v15 attributedStringWithDefaultFont:v8 foregroundColor:v10 style:v7];

  return v16;
}

+ (void)_requestLayoutForViewElements:(id)a3 width:(double)a4 context:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 labelLayoutCache];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [v16 elementType];
        if (v17 > 130)
        {
          if (v17 <= 137)
          {
            if (v17 == 131)
            {
              v18 = SUUIStackListCollectionViewCell;
            }

            else
            {
              if (v17 != 135)
              {
                continue;
              }

              v18 = SUUIStarRatingViewElementView;
            }
          }

          else
          {
            if (v17 == 138)
            {
              v19 = [a1 _attributedStringForLabel:v16 context:v9];
              [v10 requestLayoutForLabel:v16 attributedString:v19 width:a4];
              goto LABEL_27;
            }

            if (v17 == 141)
            {
              goto LABEL_19;
            }

            if (v17 != 144)
            {
              continue;
            }

            v18 = SUUITomatoRatingView;
          }
        }

        else
        {
          if (v17 <= 47)
          {
            if (v17 == 8)
            {
              [v10 requestLayoutForBadge:v16 width:a4];
              continue;
            }

            if (v17 != 12)
            {
              continue;
            }

LABEL_19:
            v19 = [a1 _attributedStringForButton:v16 context:v9];
            [v10 requestLayoutForButton:v16 attributedString:v19 width:a4];
LABEL_27:

            continue;
          }

          switch(v17)
          {
            case '0':
              v18 = SUUISectionHeaderView;
              break;
            case '>':
              v18 = SUUIHorizontalListView;
              break;
            case 'M':
              v18 = SUUIOfferView;
              break;
            default:
              continue;
          }
        }

        [(__objc2_class *)v18 requestLayoutForViewElement:v16 width:v9 context:a4];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }
}

- (CGRect)_frameForSection:(int64_t)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4010000000;
  v18 = "";
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *MEMORY[0x277CBF3A0];
  v20 = v4;
  v5 = [(SUUIProductLockupLayout *)self->_layout viewElementsForSection:a3];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__SUUIProductLockupCollectionViewCell__frameForSection___block_invoke;
  v14[3] = &unk_2798FD858;
  v14[4] = self;
  v14[5] = &v15;
  [v5 enumerateObjectsUsingBlock:v14];

  v6 = v16[4];
  v7 = v16[5];
  v8 = v16[6];
  v9 = v16[7];
  _Block_object_dispose(&v15, 8);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

void __56__SUUIProductLockupCollectionViewCell__frameForSection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(*(a1 + 32) + 840) objectForKey:a2];
  if (v5)
  {
    v13 = v5;
    if (a3)
    {
      v7 = *(a1 + 40);
      v6 = a1 + 40;
      v8 = *(v7 + 8);
      [v5 frame];
      v16.origin.x = v9;
      v16.origin.y = v10;
      v16.size.width = v11;
      v16.size.height = v12;
      v15 = CGRectUnion(v8[1], v16);
    }

    else
    {
      [v5 frame];
      v6 = a1 + 40;
    }

    *(*(*v6 + 8) + 32) = v15;
    v5 = v13;
  }
}

- (void)_layoutConfirmationGradientRelativeToSection:(int64_t)a3 alpha:(double)a4
{
  v34[3] = *MEMORY[0x277D85DE8];
  offerConfirmationGradientView = self->_offerConfirmationGradientView;
  if (offerConfirmationGradientView)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x4010000000;
    v30 = "";
    v31 = 0u;
    v32 = 0u;
    [(SUUIGradientView *)offerConfirmationGradientView frame];
    *&v31 = v8;
    *(&v31 + 1) = v9;
    *&v32 = v10;
    *(&v32 + 1) = v11;
    v12 = [(SUUIGradientView *)self->_offerConfirmationGradientView layer];
    [(SUUIProductLockupCollectionViewCell *)self _frameForSection:a3];
    v15 = v13;
    v17 = v16;
    v18 = v14;
    v20 = v19;
    v21 = v28;
    if (a3)
    {
      v28[4] = v13 + -30.0;
      v21[6] = v14 + 30.0;
      v33[0] = &unk_286BBE4D8;
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:30.0 / (v14 + 30.0)];
      v33[1] = v22;
      v33[2] = &unk_286BBE4C0;
      [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
    }

    else
    {
      v28[4] = v13;
      v21[6] = v14 + 30.0;
      v34[0] = &unk_286BBE4C0;
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:1.0 - 30.0 / (v14 + 30.0)];
      v34[1] = v22;
      v34[2] = &unk_286BBE4D8;
      [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
    }
    v23 = ;
    [v12 setLocations:v23];

    v24 = [(SUUIGradientView *)self->_offerConfirmationGradientView superview];
    v25 = [v24 subviews];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __90__SUUIProductLockupCollectionViewCell__layoutConfirmationGradientRelativeToSection_alpha___block_invoke;
    v26[3] = &unk_2798FD880;
    *&v26[5] = v15;
    v26[6] = v17;
    *&v26[7] = v18;
    v26[8] = v20;
    v26[4] = &v27;
    [v25 enumerateObjectsUsingBlock:v26];

    [(SUUIGradientView *)self->_offerConfirmationGradientView setAlpha:a4];
    [(SUUIGradientView *)self->_offerConfirmationGradientView setFrame:v28[4], v28[5], v28[6], v28[7]];

    _Block_object_dispose(&v27, 8);
  }
}

void __90__SUUIProductLockupCollectionViewCell__layoutConfirmationGradientRelativeToSection_alpha___block_invoke(double *a1, void *a2)
{
  [a2 frame];
  v4 = v3;
  v6 = v5;
  v7 = a1[5];
  v8 = a1[7];
  v10.origin.x = v7;
  v10.origin.y = v3;
  v10.size.width = v8;
  v10.size.height = v5;
  if (CGRectIntersectsRect(*(*(*(a1 + 4) + 8) + 32), v10))
  {
    v11.origin.x = v7;
    v11.origin.y = v4;
    v11.size.width = v8;
    v11.size.height = v6;
    v9 = CGRectUnion(*(*(*(a1 + 4) + 8) + 32), v11);
    *(*(*(a1 + 4) + 8) + 40) = v9.origin.y;
    *(*(*(a1 + 4) + 8) + 56) = v9.size.height;
  }
}

- (void)_prepareOfferConfirmationGradientForView:(id)a3
{
  v36[3] = *MEMORY[0x277D85DE8];
  v23 = a3;
  v24 = [(SUUIProductLockupCollectionViewCell *)self _viewElementForView:?];
  if (v24)
  {
    v4 = [(SUUIProductLockupLayout *)self->_layout viewElementsForSection:1];
    v5 = [v4 containsObject:v24];

    v6 = [v23 superview];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__92;
    v34 = __Block_byref_object_dispose__92;
    v35 = 0;
    v7 = [(SUUIProductLockupLayout *)self->_layout viewElementsForSection:?];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __80__SUUIProductLockupCollectionViewCell__prepareOfferConfirmationGradientForView___block_invoke;
    v27[3] = &unk_2798FAF98;
    v27[4] = self;
    v29 = &v30;
    v8 = v6;
    v28 = v8;
    [v7 enumerateObjectsUsingBlock:v27];

    for (i = 0; i != 4; ++i)
    {
      v10 = [(SUUIProductLockupLayout *)self->_layout viewElementsForSection:qword_259FCBBA8[i]];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __80__SUUIProductLockupCollectionViewCell__prepareOfferConfirmationGradientForView___block_invoke_2;
      v25[3] = &unk_2798FD8A8;
      v25[4] = self;
      v11 = v8;
      v26 = v11;
      [v10 enumerateObjectsUsingBlock:v25];
    }

    offerConfirmationGradientView = self->_offerConfirmationGradientView;
    if (!offerConfirmationGradientView)
    {
      v13 = [SUUIGradientView alloc];
      v14 = [(SUUIGradientView *)v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      v15 = self->_offerConfirmationGradientView;
      self->_offerConfirmationGradientView = v14;

      v16 = [(SUUIProductLockupCollectionViewCell *)self backgroundColor];
      v17 = [(SUUIGradientView *)self->_offerConfirmationGradientView layer];
      v18 = [v16 colorWithAlphaComponent:0.0];
      v19 = v18;
      v36[0] = [v18 CGColor];
      v20 = v16;
      v36[1] = [v16 CGColor];
      v21 = v16;
      v36[2] = [v16 CGColor];
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
      [v17 setColors:v22];

      [v17 setEndPoint:{1.0, 0.5}];
      [v17 setStartPoint:{0.0, 0.5}];

      offerConfirmationGradientView = self->_offerConfirmationGradientView;
    }

    [v11 insertSubview:offerConfirmationGradientView belowSubview:v31[5]];
    [(SUUIProductLockupCollectionViewCell *)self _layoutConfirmationGradientRelativeToSection:v5 alpha:0.0];

    _Block_object_dispose(&v30, 8);
  }
}

void __80__SUUIProductLockupCollectionViewCell__prepareOfferConfirmationGradientForView___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 840) objectForKey:a2];
  v4 = *(*(a1 + 48) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  v7 = v3;
  if (!v6)
  {
    objc_storeStrong(v5, v3);
    v3 = v7;
  }

  [*(a1 + 40) bringSubviewToFront:v3];
}

void __80__SUUIProductLockupCollectionViewCell__prepareOfferConfirmationGradientForView___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 840) objectForKey:a2];
  [*(a1 + 40) bringSubviewToFront:v3];
}

- (CGRect)_stackBottomRightElements:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x4010000000;
  v25 = "";
  v26 = 0u;
  v27 = 0u;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MaxY = CGRectGetMaxY(v28);
  *&v26 = x;
  *(&v26 + 1) = MaxY;
  v27 = 0uLL;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__SUUIProductLockupCollectionViewCell__stackBottomRightElements_inRect___block_invoke;
  v19[3] = &unk_2798FD8D0;
  *&v19[8] = x;
  *&v19[9] = y;
  *&v19[10] = width;
  *&v19[11] = height;
  v19[4] = self;
  v19[5] = &v22;
  v19[6] = v21;
  v19[7] = v20;
  [v9 enumerateObjectsWithOptions:2 usingBlock:v19];
  v11 = v23[4];
  v12 = v23[5];
  v13 = v23[6];
  v14 = v23[7];
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

void __72__SUUIProductLockupCollectionViewCell__stackBottomRightElements_inRect___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [*(*(a1 + 32) + 840) objectForKey:?];
  if (([v3 isHidden] & 1) == 0)
  {
    [v3 sizeThatFits:{*(a1 + 80), 1.79769313e308}];
    v18.size.width = v4;
    v18.size.height = v5;
    v18.origin.x = *(a1 + 64) + *(a1 + 80) - v4;
    v18.origin.y = *(*(*(a1 + 40) + 8) + 40) - v5 - *(*(*(a1 + 48) + 8) + 24);
    v19 = CGRectIntegral(v18);
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
    [*(a1 + 32) bounds];
    [v3 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(x, y, width, height, v10, v11, v12, v13)}];
    [v3 setNeedsLayout];
    v14 = *(*(a1 + 40) + 8);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v20 = CGRectUnion(v14[1], v21);
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
      v14 = *(*(a1 + 40) + 8);
      v14[1].origin.x = v20.origin.x;
    }

    else
    {
      v14[1].origin.x = x;
    }

    v14[1].origin.y = y;
    v14[1].size.width = width;
    v14[1].size.height = height;
    [*(*(a1 + 32) + 856) bottomPaddingForViewElement:v16];
    *(*(*(a1 + 48) + 8) + 24) = v15;
    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

- (CGRect)_stackElements:(id)a3 alignment:(int64_t)a4 inRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x4010000000;
  v28 = "";
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v29 = *MEMORY[0x277CBF3A0];
  v30 = v12;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__SUUIProductLockupCollectionViewCell__stackElements_alignment_inRect___block_invoke;
  v21[3] = &unk_2798FD8F8;
  *&v21[9] = x;
  *&v21[10] = y;
  *&v21[11] = width;
  *&v21[12] = height;
  v21[4] = self;
  v21[5] = &v25;
  v21[13] = a4;
  v21[6] = v24;
  v21[7] = v22;
  v21[8] = v23;
  [v11 enumerateObjectsUsingBlock:v21];
  v13 = v26[4];
  v14 = v26[5];
  v15 = v26[6];
  v16 = v26[7];
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v25, 8);

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

void __71__SUUIProductLockupCollectionViewCell__stackElements_alignment_inRect___block_invoke(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = [*(*(a1 + 32) + 840) objectForKey:?];
  if (([v3 isHidden] & 1) == 0)
  {
    v4 = [*(a1 + 32) textPropertiesForView:v3];
    [v3 sizeThatFits:{*(a1 + 88), 1.79769313e308}];
    v7 = v6;
    if (v5 >= *(a1 + 88))
    {
      v9 = *(a1 + 88);
    }

    else
    {
      v9 = v5;
    }

    v8 = *(a1 + 80);
    v10 = v8 + CGRectGetHeight(*(*(*(a1 + 40) + 8) + 32));
    v11 = *(*(*(a1 + 48) + 8) + 24);
    v12 = *(a1 + 72);
    if (*(a1 + 104) == 8)
    {
      v12 = CGRectGetMaxX(*(a1 + 72)) - v9;
    }

    v13 = v10 + v11;
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      [v4 desiredOffsetTop];
      v15 = v14;
      [*(*(a1 + 32) + 856) topPaddingForViewElement:v25];
      if (v15 >= v16)
      {
        v16 = v15;
      }

      v17 = v16 - *(*(*(a1 + 64) + 8) + 24);
      v13 = v13 + fmaxf(roundf(v17), 0.0);
    }

    v27.origin.x = v12;
    v27.origin.y = v13;
    v27.size.width = v9;
    v27.size.height = v7;
    v28 = CGRectIntegral(v27);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    [v3 setFrame:?];
    v22 = *(*(a1 + 40) + 8);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v29 = CGRectUnion(v22[1], v30);
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      v22 = *(*(a1 + 40) + 8);
      v22[1].origin.x = v29.origin.x;
    }

    else
    {
      v22[1].origin.x = x;
    }

    v22[1].origin.y = y;
    v22[1].size.width = width;
    v22[1].size.height = height;
    [*(*(a1 + 32) + 856) bottomPaddingForViewElement:v25];
    *(*(*(a1 + 48) + 8) + 24) = v23;
    [v4 baselineOffsetFromBottom];
    *(*(*(a1 + 64) + 8) + 24) = v24;
    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

- (void)_updateLayoutToAnimateOfferTransitionForView:(id)a3
{
  v4 = a3;
  v5 = [(SUUIProductLockupCollectionViewCell *)self _viewElementForView:v4];
  v6 = [(SUUIProductLockupLayout *)self->_layout viewElementsForSection:1];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    [v4 frame];
    x = v41.origin.x;
    y = v41.origin.y;
    MaxX = CGRectGetMaxX(v41);
    [v4 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v12 = v11;
    v14 = v13;
    ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
    v16 = MaxX - v12;
    if (ShouldReverseLayoutDirection)
    {
      v16 = x;
    }

    [v4 setFrame:{v16, y, v12, v14}];
    v17 = 1;
  }

  else
  {
    if ([(SUUIProductLockupLayout *)self->_layout bottomLeftLayoutStyle]== 2)
    {
      v18 = [(SUUIProductLockupLayout *)self->_layout viewElementsForSection:0];
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      elementViews = self->_elementViews;
      v20 = [v18 firstObject];
      v21 = [(NSMapTable *)elementViews objectForKey:v20];
      [v21 frame];
      v23 = v22;

      v40 = v23;
      if (storeShouldReverseLayoutDirection())
      {
        v24 = self->_elementViews;
        v25 = [v18 firstObject];
        v26 = [(NSMapTable *)v24 objectForKey:v25];
        [v26 frame];
        v38[3] = CGRectGetMaxX(v42);
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __84__SUUIProductLockupCollectionViewCell__updateLayoutToAnimateOfferTransitionForView___block_invoke;
      v34[3] = &unk_2798FAF98;
      v34[4] = self;
      v36 = &v37;
      v35 = v4;
      [v18 enumerateObjectsUsingBlock:v34];

      _Block_object_dispose(&v37, 8);
    }

    else
    {
      [v4 frame];
      v27 = v43.origin.x;
      v28 = v43.origin.y;
      v29 = CGRectGetMaxX(v43);
      [v4 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
      v31 = v30;
      v33 = v32;
      if (!self->_offerMetadataPosition && !storeShouldReverseLayoutDirection())
      {
        v27 = v29 - v31;
      }

      [v4 setFrame:{v27, v28, v31, v33}];
    }

    v17 = 0;
  }

  [(SUUIProductLockupCollectionViewCell *)self _layoutConfirmationGradientRelativeToSection:v17 alpha:1.0];
}

uint64_t __84__SUUIProductLockupCollectionViewCell__updateLayoutToAnimateOfferTransitionForView___block_invoke(void *a1, uint64_t a2)
{
  v26 = [*(a1[4] + 840) objectForKey:a2];
  v3 = [v26 isHidden];
  v4 = v26;
  if ((v3 & 1) == 0)
  {
    [v26 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    if (storeShouldReverseLayoutDirection())
    {
      v13 = *(*(a1[6] + 8) + 24);
      v28.origin.x = v6;
      v28.origin.y = v8;
      v28.size.width = v10;
      v28.size.height = v12;
      v14 = v13 - CGRectGetWidth(v28);
    }

    else
    {
      v14 = *(*(a1[6] + 8) + 24);
    }

    v29.origin.x = v14;
    v29.origin.y = v8;
    v29.size.width = v10;
    v29.size.height = v12;
    MaxX = CGRectGetMaxX(v29);
    if (v26 == a1[5])
    {
      [v26 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
      v10 = v16;
      v12 = v17;
    }

    if (storeShouldReverseLayoutDirection())
    {
      v30.origin.x = v14;
      v30.origin.y = v8;
      v30.size.width = v10;
      v30.size.height = v12;
      v14 = MaxX - CGRectGetWidth(v30);
    }

    [v26 setFrame:{v14, v8, v10, v12}];
    ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
    v19 = v14;
    v20 = v8;
    v21 = v10;
    v22 = v12;
    if (ShouldReverseLayoutDirection)
    {
      MinX = CGRectGetMinX(*&v19);
      v24 = -5.0;
    }

    else
    {
      MinX = CGRectGetMaxX(*&v19);
      v24 = 5.0;
    }

    *(*(a1[6] + 8) + 24) = MinX + v24;
    v4 = v26;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)_viewElementForView:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_elementViews;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_elementViews objectForKey:v10, v14];

        if (v11 == v4)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

@end
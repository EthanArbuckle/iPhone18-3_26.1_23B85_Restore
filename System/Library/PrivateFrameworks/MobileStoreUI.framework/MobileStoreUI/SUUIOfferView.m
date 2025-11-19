@interface SUUIOfferView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)_shouldHideNoticesWithBuyButtonDescriptor:(id)a3 context:(id)a4;
- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)offerViewStateDescription;
- (SUUIOfferView)initWithFrame:(CGRect)a3;
- (SUUIOfferViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_buttonAction:(id)a3;
- (void)_cancelConfirmationAction:(id)a3;
- (void)_sendWillAnimate;
- (void)_showConfirmationAction:(id)a3;
- (void)itemOfferButtonDidAnimateTransition:(id)a3;
- (void)itemOfferButtonWillAnimateTransition:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUIOfferView

- (SUUIOfferView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SUUIOfferView;
  v3 = [(SUUIViewReuseView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    buttonElements = v3->_buttonElements;
    v3->_buttonElements = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    metadataViews = v3->_metadataViews;
    v3->_metadataViews = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    offerButtonViews = v3->_offerButtonViews;
    v3->_offerButtonViews = v8;

    [(SUUIOfferView *)v3 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(SUUIOfferView *)v3 setPreservesSuperviewLayoutMargins:0];
  }

  return v3;
}

- (NSString)offerViewStateDescription
{
  v3 = [(SUUIOfferView *)self offerButtonViews];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(SUUIOfferView *)self offerButtonViews];
    v6 = [v5 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 offerButtonStateDescription];
    }

    else
    {
      v7 = &stru_286AECDE0;
    }
  }

  else
  {
    v7 = &stru_286AECDE0;
  }

  return v7;
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
  v11[2] = __64__SUUIOfferView_prefetchResourcesForViewElement_reason_context___block_invoke;
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

uint64_t __64__SUUIOfferView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
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
  v8 = a3;
  v9 = a5;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  *&v19[3] = a4;
  v10 = [v9 labelLayoutCache];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__SUUIOfferView_requestLayoutForViewElement_width_context___block_invoke;
  v13[3] = &unk_2798F7B10;
  v17 = a1;
  v11 = v9;
  v14 = v11;
  v12 = v10;
  v18 = a4;
  v15 = v12;
  v16 = v19;
  [v8 enumerateChildrenUsingBlock:v13];

  _Block_object_dispose(v19, 8);
}

void __59__SUUIOfferView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 elementType];
  if (v3 > 137)
  {
    if (v3 == 138)
    {
      v5 = v9;
      v6 = [*(a1 + 56) _attributedStringForLabel:v5 context:*(a1 + 32)];
      v7 = [v5 labelViewStyle];
      v8 = *(a1 + 40);
      if (v7 == 3)
      {
        [v8 requestLayoutForLabel:v5 attributedString:v6 width:*(*(*(a1 + 48) + 8) + 24)];
        *(*(*(a1 + 48) + 8) + 24) = *(a1 + 64);
      }

      else
      {
        [v8 requestLayoutForLabel:v5 attributedString:v6 width:*(a1 + 64)];
      }

      goto LABEL_12;
    }

    if (v3 != 141)
    {
      goto LABEL_13;
    }

LABEL_7:
    v5 = [*(a1 + 56) _attributedStringForButton:v9 context:*(a1 + 32)];
    [*(a1 + 40) requestLayoutForButton:v9 attributedString:v5 width:*(a1 + 64)];
LABEL_12:

    goto LABEL_13;
  }

  if (v3 == 12)
  {
    goto LABEL_7;
  }

  if (v3 == 13)
  {
    [*(a1 + 32) sizeForItemOfferButton:v9];
    *(*(*(a1 + 48) + 8) + 24) = v4 + 10.0;
  }

LABEL_13:
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CBF3A8];
  v66 = 0;
  v67 = &v66;
  v68 = 0x3010000000;
  v70 = 0;
  v71 = 0;
  v69 = "";
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  *&v65[3] = a3;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3010000000;
  v59 = "";
  v60 = xmmword_259FCAEF0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3010000000;
  v50 = "";
  v51 = *MEMORY[0x277CBF3A8];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __55__SUUIOfferView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v32[3] = &unk_2798F7B38;
  v10 = v8;
  v42 = a3;
  v33 = v10;
  v35 = &v47;
  v36 = &v52;
  v37 = &v56;
  v38 = v65;
  v39 = &v61;
  v11 = v7;
  v34 = v11;
  v40 = &v43;
  v41 = &v66;
  [v11 enumerateChildrenUsingBlock:v32];
  v13 = *v9;
  v12 = v9[1];
  if (v67[4] == *v9 && v67[5] == v12)
  {
    v14 = v57;
  }

  else
  {
    v15 = [v11 isCompactModeEnabled];
    v14 = v57;
    if (v15)
    {
      v57[4] = v67[4] + 10.0 + v57[4];
    }

    else
    {
      v57[5] = v67[5] + 3.0 + v57[5];
    }
  }

  if (v14[5] >= v48[5])
  {
    v16 = v14[5];
  }

  else
  {
    v16 = v48[5];
  }

  v17 = v62[3];
  v18 = v13;
  if (v17 >= 1)
  {
    v18 = v13 + 10.0;
    if (v53[3] <= 0)
    {
      v18 = v13;
    }

    v19 = v17 - 1;
    if (v19)
    {
      v18 = v18 + (v19 * 20.0);
    }
  }

  v20 = v18 + v14[4] + v48[4];
  if (v20 < a3)
  {
    a3 = v20;
  }

  v21 = [v11 attributes];
  v22 = [v21 objectForKey:@"supportsPlayButton"];
  if ([v22 BOOLValue])
  {
    v23 = *(v44 + 24);

    if ((v23 & 1) == 0)
    {
      v24 = *&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_0;
      v25 = *&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_1;
      if (*&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_0 == v13 && *&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_1 == v12)
      {
        v26 = [MEMORY[0x277D75348] blackColor];
        v27 = [SUUIItemOfferButton playImageWithTintColor:v26];
        [v27 size];
        sizeThatFitsWidth_viewElement_context__sPlayButtonSize_0 = v28;
        sizeThatFitsWidth_viewElement_context__sPlayButtonSize_1 = v29;

        v24 = *&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_0;
        v25 = *&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_1;
      }

      a3 = a3 + v24 + 20.0;
      if (v25 >= v16)
      {
        v16 = v25;
      }
    }
  }

  else
  {
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(v65, 8);
  _Block_object_dispose(&v66, 8);

  v30 = a3;
  v31 = v16;
  result.height = v31;
  result.width = v30;
  return result;
}

void __55__SUUIOfferView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v34 = a2;
  v3 = [v34 elementType];
  if (v3 > 49)
  {
    if (v3 != 141)
    {
      if (v3 != 138)
      {
        if (v3 != 50)
        {
          goto LABEL_31;
        }

        goto LABEL_13;
      }

      v7 = v34;
      v12 = [v7 labelViewStyle];
      v13 = [*(a1 + 32) labelLayoutCache];
      v14 = v13;
      if (v12 == 3)
      {
        [v13 sizeForLabel:v7 width:*(*(*(a1 + 96) + 8) + 32)];
        v16 = v15;
        v18 = v17;

        v19 = *(*(a1 + 96) + 8);
        v20 = *(v19 + 40);
        if (v20 < v18)
        {
          v20 = v18;
        }

        *(v19 + 40) = v20;
        v21 = *(*(a1 + 96) + 8);
        v22 = *(v21 + 32);
        if (v22 < v16)
        {
          v22 = v16;
        }

        *(v21 + 32) = v22;
        *(*(*(a1 + 72) + 8) + 24) = *(a1 + 104);
      }

      else
      {
        [v13 sizeForLabel:v7 width:*(a1 + 104)];
        v24 = v23;
        v26 = v25;

        *(*(*(a1 + 48) + 8) + 40) = v26 + *(*(*(a1 + 48) + 8) + 40);
        v27 = *(*(a1 + 48) + 8);
        v28 = *(v27 + 32);
        if (v28 < v24)
        {
          v28 = v24;
        }

        *(v27 + 32) = v28;
        ++*(*(*(a1 + 56) + 8) + 24);
      }

LABEL_30:

      goto LABEL_31;
    }

LABEL_8:
    [*(a1 + 32) sizeForViewElement:v34 width:*(a1 + 104)];
    v6 = *(*(a1 + 64) + 8);
    if (*(v6 + 40) >= v5)
    {
      v5 = *(v6 + 40);
    }

    *(v6 + 40) = v5;
    *(*(*(a1 + 64) + 8) + 32) = v4 + *(*(*(a1 + 64) + 8) + 32);
    *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 64) + 8) + 32);
    ++*(*(*(a1 + 80) + 8) + 24);
    v7 = [*(a1 + 40) attributes];
    v8 = [v7 objectForKey:@"supportsPlayButton"];
    if ([v8 BOOLValue] && (*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_31;
      }

      v30 = [v34 itemIdentifier];
      if (!v30)
      {
        goto LABEL_31;
      }

      v31 = v30;
      v32 = +[SUUIItemStateCenter defaultCenter];
      v7 = [v32 stateForItemWithIdentifier:v31];

      v33 = ([v7 state] >> 6) & 1;
      if (!v7)
      {
        LOBYTE(v33) = 0;
      }

      *(*(*(a1 + 88) + 8) + 24) = v33;
    }

    else
    {
    }

    goto LABEL_30;
  }

  if (v3 != 12)
  {
    if (v3 != 13)
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

LABEL_13:
  [*(a1 + 32) sizeForViewElement:v34 width:*(a1 + 104)];
  *(*(*(a1 + 48) + 8) + 40) = v10 + *(*(*(a1 + 48) + 8) + 40);
  v11 = *(*(a1 + 48) + 8);
  if (*(v11 + 32) >= v9)
  {
    v9 = *(v11 + 32);
  }

  *(v11 + 32) = v9;
  ++*(*(*(a1 + 56) + 8) + 24);
LABEL_31:
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SUUIOfferView *)self buttonElements];
  [v10 removeAllObjects];

  v11 = [(SUUIOfferView *)self buyButtonDescriptorToButton];
  [v11 removeAllObjects];

  v12 = [(SUUIOfferView *)self metadataViews];
  [v12 removeAllObjects];

  v13 = [(SUUIOfferView *)self offerButtonViews];
  [v13 removeAllObjects];

  [(SUUIOfferView *)self setHlsID:0];
  v14 = [(SUUIOfferView *)self hlsPlayButton];
  [v14 removeFromSuperview];

  [(SUUIOfferView *)self setHlsPlayButton:0];
  [(SUUIOfferView *)self setShowingConfirmation:0];
  [(SUUIOfferView *)self setNotices:0];
  -[SUUIOfferView setCompactModeEnabled:](self, "setCompactModeEnabled:", [v8 isCompactModeEnabled]);
  v15 = [v8 style];
  v16 = [v15 elementAlignment];

  if (v16 == 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = 1;
  }

  [(SUUIOfferView *)self setAlignment:v17];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__SUUIOfferView_reloadWithViewElement_width_context___block_invoke;
  v20[3] = &unk_2798F5EF0;
  v24 = a4;
  v21 = v8;
  v22 = v9;
  v23 = self;
  v18 = v9;
  v19 = v8;
  [(SUUIViewReuseView *)self modifyUsingBlock:v20];
}

void __53__SUUIOfferView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__18;
  v29[4] = __Block_byref_object_dispose__18;
  v30 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SUUIOfferView_reloadWithViewElement_width_context___block_invoke_24;
  v10[3] = &unk_2798F7B60;
  v5 = v3;
  v11 = v5;
  v20 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v12 = v6;
  v13 = v7;
  v15 = v33;
  v16 = v29;
  v17 = v31;
  v14 = *(a1 + 32);
  v18 = &v21;
  v19 = &v25;
  [v4 enumerateChildrenUsingBlock:v10];
  v8 = v26[3];
  v9 = v8 < 1 || v8 < v22[3];
  *(*(a1 + 48) + 440) = v9;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
}

void __53__SUUIOfferView_reloadWithViewElement_width_context___block_invoke_24(uint64_t a1, void *a2)
{
  v44 = a2;
  v3 = [v44 elementType];
  v4 = 0;
  v5 = 1;
  if (v3 <= 49)
  {
    if (v3 == 12)
    {
LABEL_24:
      v6 = [*(a1 + 32) addButtonWithElement:v44 width:*(a1 + 40) context:*(a1 + 104)];
      [v6 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
      [v6 addTarget:0 action:sel_SUUIadvertising_advertSelectionEventShouldBeForwarded_ forControlEvents:64];
      if (v6)
      {
LABEL_25:
        v31 = 96;
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          v31 = 88;
        }

        v7 = v6;
        ++*(*(*(a1 + v31) + 8) + 24);
        v30 = [*(a1 + 48) metadataViews];
        [v30 addObject:v6];
        v4 = 0;
        v6 = 0;
        v8 = 0;
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1;
    if (v3 != 13)
    {
      goto LABEL_45;
    }

LABEL_8:
    v9 = [*(a1 + 32) addButtonWithElement:v44 width:*(a1 + 40) context:*(a1 + 104)];
    [v9 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:0x20000];
    [v9 addTarget:*(a1 + 48) action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
    [v9 addTarget:*(a1 + 48) action:sel__showConfirmationAction_ forControlEvents:0x40000];
    [v9 addTarget:0 action:sel_SUUIadvertising_advertSelectionEventShouldBeForwarded_ forControlEvents:64];
    LODWORD(v10) = -0.5;
    [v9 setCharge:v10];
    [v9 setItemOfferDelegate:*(a1 + 48)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v9);
    v4 = v9;
    v11 = *(a1 + 48);
    v12 = [v44 buyButtonDescriptor];
    *(*(*(a1 + 80) + 8) + 24) = [v11 _shouldHideNoticesWithBuyButtonDescriptor:v12 context:*(a1 + 40)];

    if (!v4)
    {
      v6 = 0;
LABEL_44:
      v7 = 0;
      v8 = 1;
      goto LABEL_45;
    }

    v13 = [v44 buyButtonDescriptor];
    if (v13)
    {
      v14 = [*(a1 + 48) buyButtonDescriptorToButton];

      if (!v14)
      {
        v15 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:517 capacity:1];
        [*(a1 + 48) setBuyButtonDescriptorToButton:v15];
      }

      v16 = [*(a1 + 48) buyButtonDescriptorToButton];
      [v16 setObject:v4 forKey:v13];
    }

    v17 = [*(a1 + 56) attributes];
    v18 = [(SUUIStoreIdentifier *)v17 objectForKey:@"supportsPlayButton"];
    if ([v18 BOOLValue])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_22:

        v30 = [*(a1 + 48) offerButtonViews];
        [v30 addObject:v4];
        v5 = 0;
        v6 = 0;
        v7 = 0;
        goto LABEL_23;
      }

      v17 = -[SUUIStoreIdentifier initWithLongLong:]([SUUIStoreIdentifier alloc], "initWithLongLong:", [v44 itemIdentifier]);
      if (!v17)
      {
LABEL_21:

        goto LABEL_22;
      }

      v20 = +[SUUIItemStateCenter defaultCenter];
      v18 = [v20 stateForItemWithStoreIdentifier:v17];

      v21 = [v18 state];
      if ([v44 buttonViewType] == 3 && (!v18 || (v21 & 0x40) == 0))
      {
        v22 = objc_alloc_init(MEMORY[0x277D75220]);
        [v22 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
        v23 = objc_opt_class();
        v24 = [*(a1 + 48) backgroundColor];
        v25 = [v23 playTintColorForBackgroundColor:v24];

        v26 = [objc_opt_class() playImageWithTintColor:v25];
        [v22 setImage:v26 forState:0];

        v27 = [objc_opt_class() playHighlightImageWithTintColor:v25];
        [v22 setImage:v27 forState:1];

        [v22 setAdjustsImageWhenHighlighted:1];
        [v22 sizeToFit];
        [v22 setEnabled:{objc_msgSend(v44, "isEnabled")}];
        [*(a1 + 48) addSubview:v22];
        [*(a1 + 48) setHlsPlayButton:v22];
        v28 = [(SUUIStoreIdentifier *)v17 numberValue];
        [*(a1 + 48) setHlsID:v28];

        v29 = [*(a1 + 48) buttonElements];
        [v29 setObject:v44 forKey:v22];
      }
    }

    goto LABEL_21;
  }

  if (v3 == 141)
  {
    goto LABEL_8;
  }

  if (v3 == 138)
  {
    if ([v44 labelViewStyle] == 3)
    {
      v32 = *(*(*(a1 + 72) + 8) + 40);
      if (v32)
      {
        [v32 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
        v34 = v33 + 10.0;
      }

      else
      {
        v34 = *(a1 + 104);
      }

      v6 = [*(a1 + 32) addLabelViewWithElement:v44 width:*(a1 + 40) context:v34];
      if (v6)
      {
        if (!*(*(*(a1 + 72) + 8) + 40))
        {
          goto LABEL_25;
        }

        v35 = [*(a1 + 48) notices];

        if (!v35)
        {
          v36 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
          [*(a1 + 48) setNotices:v36];
        }

        v37 = [*(a1 + 48) notices];
        [v37 setObject:v6 forKey:*(*(*(a1 + 72) + 8) + 40)];

        if (*(*(*(a1 + 80) + 8) + 24) == 1)
        {
          [v6 setHidden:1];
        }

        v4 = 0;
        v7 = 0;
        v38 = *(*(a1 + 72) + 8);
        v30 = *(v38 + 40);
        *(v38 + 40) = 0;
LABEL_23:
        v8 = 1;
LABEL_28:

        goto LABEL_45;
      }
    }

    else
    {
      v6 = [*(a1 + 32) addLabelViewWithElement:v44 width:*(a1 + 40) context:*(a1 + 104)];
      if (v6)
      {
        goto LABEL_25;
      }
    }

LABEL_43:
    v4 = 0;
    goto LABEL_44;
  }

  v6 = 0;
  v7 = 0;
  v8 = 1;
  if (v3 == 50)
  {
    goto LABEL_24;
  }

LABEL_45:
  v39 = [*(a1 + 48) hlsPlayButton];

  if (v39)
  {
    v40 = [*(a1 + 48) offerButtonViews];
    v41 = [*(a1 + 48) hlsPlayButton];
    [v40 addObject:v41];
  }

  if (SUUIIKViewElementTypeIsButton([v44 elementType]))
  {
    if ((v8 & 1) == 0)
    {
      v42 = [*(a1 + 48) buttonElements];
      [v42 setObject:v44 forKey:v7];
    }

    if ((v5 & 1) == 0)
    {
      v43 = [*(a1 + 48) buttonElements];
      [v43 setObject:v44 forKey:v4];
    }
  }
}

- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v23 = a5;
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v22 = a4;
  v24 = [v22 clientContext];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [(SUUIOfferView *)self buyButtonDescriptorToButton];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v9)
  {

LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v26;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v25 + 1) + 8 * i);
      if ([v14 canPersonalizeUsingItemState:v7])
      {
        v15 = [(SUUIOfferView *)self buyButtonDescriptorToButton];
        v16 = [v15 objectForKey:v14];

        [v16 setValuesUsingBuyButtonDescriptor:v14 itemState:v7 clientContext:v24 animated:v23];
        v17 = [(SUUIOfferView *)self notices];

        if (v17)
        {
          v18 = [(SUUIOfferView *)self notices];
          v19 = [v18 objectForKey:v16];

          if (v19)
          {
            [v19 setHidden:{-[SUUIOfferView _shouldHideNoticesWithBuyButtonDescriptor:context:](self, "_shouldHideNoticesWithBuyButtonDescriptor:context:", v14, v22)}];
          }
        }

        v11 = 1;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v10);

  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

  [(SUUIOfferView *)self setNeedsLayout];
  v20 = 1;
LABEL_18:

  return v20;
}

- (void)layoutSubviews
{
  v148 = *MEMORY[0x277D85DE8];
  if (![(SUUIOfferView *)self isShowingConfirmation])
  {
    [(SUUIOfferView *)self layoutMargins];
    v4 = v3;
    v6 = v5;
    [(SUUIOfferView *)self bounds];
    v122 = v4;
    v124 = v7;
    v9 = v8;
    v11 = v10;
    v126 = v12;
    v13 = *MEMORY[0x277CBF3A8];
    v140 = 0u;
    v141 = 0u;
    v14 = v12 - v4 - v6;
    v142 = 0u;
    v143 = 0u;
    v15 = [(SUUIOfferView *)self offerButtonViews];
    v16 = [v15 countByEnumeratingWithState:&v140 objects:v147 count:16];
    v17 = MEMORY[0x277CBF3A0];
    v127 = v11;
    if (v16)
    {
      v18 = v16;
      v19 = 0;
      v20 = *v141;
      v21 = *MEMORY[0x277CBF3A0];
      v22 = *(MEMORY[0x277CBF3A0] + 8);
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v141 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v24 = *(*(&v140 + 1) + 8 * i);
          if (([v24 isHidden] & 1) == 0)
          {
            [v24 sizeThatFits:{v126, v11}];
            v26 = v25;
            [v24 setFrame:{v21, v22, v25, v27}];
            v13 = v13 + v26;
            ++v19;
          }
        }

        v18 = [v15 countByEnumeratingWithState:&v140 objects:v147 count:16];
      }

      while (v18);

      if (v19 >= 1)
      {
        if (v19 != 1)
        {
          v13 = v13 + ((v19 - 1) * 20.0);
        }

        v14 = v14 - (v13 + 10.0);
      }
    }

    else
    {
    }

    v28 = 0.0;
    v136 = 0u;
    v137 = 0u;
    if ([(SUUIOfferView *)self isCompactModeEnabled])
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v14;
    }

    v118 = v29;
    v138 = 0uLL;
    v139 = 0uLL;
    v30 = [(SUUIOfferView *)self metadataViews];
    v31 = [v30 countByEnumeratingWithState:&v136 objects:v146 count:16];
    v32 = v126;
    if (v31)
    {
      v33 = v31;
      v34 = *v137;
      v35 = *v17;
      v36 = v17[1];
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v137 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v38 = *(*(&v136 + 1) + 8 * j);
          [v38 sizeThatFits:{v126, v127}];
          v41 = v40;
          if (v39 >= v118)
          {
            v42 = v118;
          }

          else
          {
            v42 = v39;
          }

          [v38 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v35, v36, v42, v40, v124, v9, v126, v127)}];
          v28 = v28 + v41;
        }

        v33 = [v30 countByEnumeratingWithState:&v136 objects:v146 count:16];
      }

      while (v33);
    }

    metadataPosition = self->_metadataPosition;
    v44 = v122 + v13 + 10.0;
    if (!metadataPosition)
    {
      v44 = v122;
    }

    v117 = v44;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v45 = [(SUUIOfferView *)self offerButtonViews];
    v46 = [v45 countByEnumeratingWithState:&v132 objects:v145 count:16];
    v47 = v124;
    if (v46)
    {
      v48 = v46;
      if (metadataPosition)
      {
        v49 = v122;
      }

      else
      {
        v49 = v122 + v118 + 10.0;
      }

      v50 = *v133;
      v110 = *v17;
      rect = v17[1];
      v108 = v17[3];
      v109 = v17[2];
      v125 = v9;
      v112 = v28;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v133 != v50)
          {
            objc_enumerationMutation(v45);
          }

          v52 = *(*(&v132 + 1) + 8 * k);
          if ([v52 isHidden])
          {
            v9 = v125;
            v32 = v126;
          }

          else
          {
            [v52 frame];
            v54 = v53;
            v56 = v55;
            v57 = (v127 - v55) * 0.5;
            v58 = floorf(v57);
            [v52 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v49, v58, v53, v55, v47, v125, v126, v127)}];
            v59 = [(SUUIOfferView *)self notices];
            v60 = [v59 objectForKey:v52];

            v121 = v56;
            v123 = v54;
            v116 = v58;
            if (v60)
            {
              v61 = v49;
              v62 = [(SUUIOfferView *)self isCompactModeEnabled];
              [v60 sizeThatFits:{v54 + 10.0, 1.79769313e308}];
              v65 = v64;
              if (v63 >= v54 + 10.0)
              {
                v66 = v54 + 10.0;
              }

              else
              {
                v66 = v63;
              }

              v115 = v66;
              v120 = v64;
              if (v62)
              {
                v149.origin.x = v49;
                v149.origin.y = v58;
                v149.size.width = v54;
                v149.size.height = v56;
                MidY = CGRectGetMidY(v149);
                v150.origin.x = v61;
                v150.origin.y = rect;
                v150.size.width = v66;
                v150.size.height = v65;
                v113 = MidY + CGRectGetHeight(v150) * -0.5;
                [v60 setFrame:{SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(v61, v113, v66, v65, v124, v125, v126, v127)}];
                v151.origin.x = v61;
                v151.origin.y = v113;
                v151.size.width = v66;
                v151.size.height = v65;
                MaxY = CGRectGetMaxY(v151);
                v152.origin.x = v61;
                v152.origin.y = v113;
                v152.size.width = v66;
                v69 = v127;
                v152.size.height = v65;
                v70 = v61 + CGRectGetWidth(v152) + 10.0;
                v71 = v58;
                v73 = v125;
                v72 = v126;
                [v52 setFrame:{SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(v70, v71, v54, v121, v124, v125, v126, v127)}];
                v119 = v61;
                v114 = v70;
                v74 = v124;
              }

              else
              {
                v75 = v49 + (v54 - v66) * 0.5;
                v76 = floorf(v75);
                v114 = v49;
                v153.origin.x = v49;
                v153.origin.y = v58;
                v77 = v76;
                v119 = v76;
                v153.size.width = v54;
                v153.size.height = v56;
                v78 = CGRectGetMaxY(v153) + 3.0;
                v79 = v77;
                v73 = v125;
                v72 = v126;
                [v60 setFrame:{SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(v79, v78, v66, v65, v124, v125, v126, v127)}];
                v154.origin.x = v119;
                v154.size.height = v120;
                v113 = v78;
                v154.origin.y = v78;
                v154.size.width = v66;
                v69 = v127;
                v74 = v124;
                MaxY = CGRectGetMaxY(v154);
              }
            }

            else
            {
              v74 = v47;
              v114 = v49;
              MaxY = 0.0;
              v115 = v109;
              v113 = rect;
              v119 = v110;
              v120 = v108;
              v73 = v125;
              v72 = v126;
              v69 = v127;
            }

            v155.origin.x = v74;
            v155.origin.y = v73;
            v155.size.width = v72;
            v155.size.height = v69;
            v80 = CGRectGetMaxY(v155);
            if (MaxY <= v80)
            {
              v87 = v113;
              v82 = v114;
              v85 = v121;
              v84 = v123;
              v90 = v115;
              v86 = v116;
              v88 = v119;
              v92 = v120;
            }

            else
            {
              v81 = MaxY - v80;
              v82 = v114;
              v156.origin.x = v114;
              v156.origin.y = v116;
              v83 = v69;
              v85 = v121;
              v84 = v123;
              v156.size.width = v123;
              v156.size.height = v121;
              v86 = fmax(round(CGRectGetMinY(v156) - v81), 0.0);
              [v52 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v114, v86, v123, v121, v74, v73, v72, v83)}];
              v157.origin.x = v114;
              v157.origin.y = v86;
              v157.size.width = v123;
              v157.size.height = v121;
              v87 = CGRectGetMaxY(v157) + 3.0;
              v88 = v119;
              v89 = v74;
              v90 = v115;
              v91 = v73;
              v92 = v120;
              [v60 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v119, v87, v115, v120, v89, v91, v126, v127)}];
            }

            v158.origin.x = v82;
            v158.origin.y = v86;
            v158.size.width = v84;
            v158.size.height = v85;
            MaxX = CGRectGetMaxX(v158);
            v159.origin.x = v88;
            v159.origin.y = v87;
            v159.size.width = v90;
            v159.size.height = v92;
            v94 = CGRectGetMaxX(v159);
            if (MaxX >= v94)
            {
              v94 = MaxX;
            }

            v49 = v94 + 20.0;

            v9 = v125;
            v32 = v126;
            v47 = v124;
            v28 = v112;
          }
        }

        v48 = [v45 countByEnumeratingWithState:&v132 objects:v145 count:16];
      }

      while (v48);
    }

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v95 = [(SUUIOfferView *)self metadataViews];
    v96 = [v95 countByEnumeratingWithState:&v128 objects:v144 count:16];
    if (v96)
    {
      v97 = v96;
      v98 = (v127 - v28) * 0.5;
      v99 = floorf(v98);
      v100 = *v129;
      do
      {
        for (m = 0; m != v97; ++m)
        {
          if (*v129 != v100)
          {
            objc_enumerationMutation(v95);
          }

          v102 = *(*(&v128 + 1) + 8 * m);
          [v102 frame];
          v104 = v103;
          v106 = v105;
          if ([(SUUIOfferView *)self alignment]== 3)
          {
            v107 = v118 + v117 - v104;
          }

          else
          {
            v107 = v117;
          }

          [v102 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v107, v99, v104, v106, v47, v9, v32, v127)}];
          v160.origin.x = v107;
          v160.origin.y = v99;
          v160.size.width = v104;
          v160.size.height = v106;
          v99 = CGRectGetMaxY(v160);
        }

        v97 = [v95 countByEnumeratingWithState:&v128 objects:v144 count:16];
      }

      while (v97);
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v62 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v7 = [(SUUIOfferView *)self metadataViews];
  v8 = [v7 countByEnumeratingWithState:&v56 objects:v61 count:16];
  v9 = v6;
  v10 = v5;
  if (v8)
  {
    v11 = v8;
    v12 = *v57;
    v9 = v6;
    v10 = v5;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v57 != v12)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v56 + 1) + 8 * i) sizeThatFits:{width, height}];
        v9 = v9 + v15;
        if (v10 < v14)
        {
          v10 = v14;
        }
      }

      v11 = [v7 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v11);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = [(SUUIOfferView *)self offerButtonViews];
  v17 = [v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
  v18 = v6;
  v19 = v5;
  v49 = v6;
  v50 = v5;
  if (v17)
  {
    v20 = v17;
    v21 = *v53;
    v18 = v6;
    v19 = v5;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v52 + 1) + 8 * j);
        [v23 sizeThatFits:{width, height}];
        v26 = v25;
        if (v18 < v24)
        {
          v18 = v24;
        }

        v27 = [(SUUIOfferView *)self notices];
        v28 = [v27 objectForKey:v23];

        if (v28)
        {
          v29 = [(SUUIOfferView *)self isCompactModeEnabled];
          [v28 sizeThatFits:{v26, 1.79769313e308}];
          v32 = v6 >= v31 ? v6 : v31;
          v6 = v29 ? v31 : v32;
          if (v29)
          {
            v5 = v30;
          }
        }

        v19 = v19 + v26 + 10.0;
      }

      v20 = [v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v20);
  }

  if (v5 != v50 || v6 != v49)
  {
    if ([(SUUIOfferView *)self isCompactModeEnabled])
    {
      v19 = v19 + v5 + 10.0;
      if (v6 >= v18)
      {
        v18 = v6;
      }
    }

    else
    {
      v18 = v18 + v6 + 3.0;
    }
  }

  v34 = [(SUUIOfferView *)self offerButtonViews];
  v35 = [v34 count];

  v36 = [(SUUIOfferView *)self metadataViews];
  v37 = [v36 count];

  v38 = v35 <= 0 || v37 == 0;
  v39 = v10 + v19 + 10.0;
  if (v38)
  {
    v39 = v10 + v19;
  }

  if (v35 >= 2)
  {
    v40 = v39 + ((v35 - 1) * 20.0);
  }

  else
  {
    v40 = v39;
  }

  if (v9 >= v18)
  {
    v41 = v9;
  }

  else
  {
    v41 = v18;
  }

  [(SUUIOfferView *)self layoutMargins];
  v44 = v41 + v43 + v42;
  v47 = v40 + v45 + v46;
  v48 = v44;
  result.height = v48;
  result.width = v47;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SUUIOfferView *)self hlsPlayButton];
  if (v8 && (v9 = v8, -[SUUIOfferView hlsPlayButton](self, "hlsPlayButton"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEnabled], v10, v9, v11) && (-[SUUIOfferView hlsPlayButton](self, "hlsPlayButton"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "frame"), v24 = CGRectInset(v23, -10.0, -11.0), v13 = v24.origin.x, v14 = v24.origin.y, width = v24.size.width, height = v24.size.height, v12, v25.origin.x = v13, v25.origin.y = v14, v25.size.width = width, v25.size.height = height, v22.x = x, v22.y = y, CGRectContainsPoint(v25, v22)))
  {
    v17 = [(SUUIOfferView *)self hlsPlayButton];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SUUIOfferView;
    v17 = [(SUUIOfferView *)&v20 hitTest:v7 withEvent:x, y];
  }

  v18 = v17;

  return v18;
}

- (void)itemOfferButtonDidAnimateTransition:(id)a3
{
  v6 = a3;
  if ([(SUUIOfferView *)self isShowingConfirmation])
  {
    v4 = [v6 isShowingConfirmation];
  }

  else
  {
    v4 = 0;
  }

  [(SUUIOfferView *)self setShowingConfirmation:v4];
  v5 = [(SUUIOfferView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 offerViewDidAnimateTransition:self];
  }
}

- (void)itemOfferButtonWillAnimateTransition:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUUIOfferView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v5 offerViewAnimateTransition:self])
  {
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(SUUIOfferView *)self offerButtonViews];
    v15 = [v14 indexOfObjectIdenticalTo:v4];

    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      metadataPosition = self->_metadataPosition;
      v70.origin.x = v7;
      v70.origin.y = v9;
      v70.size.width = v11;
      v70.size.height = v13;
      MaxX = CGRectGetMaxX(v70);
      [v4 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
      v19 = v18;
      v21 = v20;
      ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
      if (metadataPosition)
      {
        if (ShouldReverseLayoutDirection)
        {
          v7 = MaxX - v19;
        }

        [v4 setFrame:{v7, v9, v19, v21}];
        v23 = [(SUUIOfferView *)self offerButtonViews];
        v24 = [v23 count];

        if (storeShouldReverseLayoutDirection())
        {
          v25 = v7 + -20.0;
        }

        else
        {
          v72.origin.x = v7;
          v72.origin.y = v9;
          v72.size.width = v19;
          v72.size.height = v21;
          v25 = CGRectGetMaxX(v72);
        }

        v27 = v15 + 1;
        if (v27 < v24)
        {
          do
          {
            v28 = [(SUUIOfferView *)self offerButtonViews];
            v29 = [v28 objectAtIndex:v27];

            if (([v29 isHidden] & 1) == 0)
            {
              [v29 frame];
              v31 = v30;
              v33 = v32;
              v35 = v34;
              if (storeShouldReverseLayoutDirection())
              {
                v36 = v33;
              }

              else
              {
                v36 = -20.0;
              }

              [v29 setFrame:{v25 - v36, v31, v33, v35}];
            }

            ++v27;
          }

          while (v24 != v27);
        }

        if ([(SUUIOfferView *)self alignment]!= 3)
        {
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v37 = [(SUUIOfferView *)self metadataViews];
          v38 = [v37 countByEnumeratingWithState:&v64 objects:v68 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v65;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v65 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v64 + 1) + 8 * i);
                [v42 frame];
                v44 = v43;
                v46 = v45;
                v48 = v47;
                v50 = v49;
                v51 = storeShouldReverseLayoutDirection();
                v52 = v25;
                if (v51)
                {
                  v73.origin.x = v44;
                  v73.origin.y = v46;
                  v73.size.width = v48;
                  v73.size.height = v50;
                  v52 = v25 - CGRectGetWidth(v73);
                }

                [v42 setFrame:{v52 + 10.0, v46, v48, v50}];
              }

              v39 = [v37 countByEnumeratingWithState:&v64 objects:v68 count:16];
            }

            while (v39);
          }
        }
      }

      else
      {
        if (!ShouldReverseLayoutDirection)
        {
          v7 = MaxX - v19;
        }

        [v4 setFrame:{v7, v9, v19, v21}];
        if (storeShouldReverseLayoutDirection())
        {
          v71.origin.x = v7;
          v71.origin.y = v9;
          v71.size.width = v19;
          v71.size.height = v21;
          v26 = CGRectGetMaxX(v71);
        }

        else
        {
          v26 = v7 + -20.0;
        }

        if (v15 >= 1)
        {
          v53 = v15 + 1;
          do
          {
            v54 = [(SUUIOfferView *)self offerButtonViews];
            v55 = [v54 objectAtIndex:v53 - 2];

            if (([v55 isHidden] & 1) == 0)
            {
              [v55 frame];
              v57 = v56;
              v59 = v58;
              v61 = v60;
              if (storeShouldReverseLayoutDirection())
              {
                v62 = -20.0;
              }

              else
              {
                v62 = v59;
              }

              v63 = v26 - v62;
              [v55 setFrame:{v63, v57, v59, v61}];
              if (storeShouldReverseLayoutDirection())
              {
                v74.origin.x = v63;
                v74.origin.y = v57;
                v74.size.width = v59;
                v74.size.height = v61;
                v26 = CGRectGetMaxX(v74) + 20.0;
              }

              else
              {
                v26 = v63 + -20.0;
              }
            }

            --v53;
          }

          while (v53 > 1);
        }
      }
    }
  }

  -[SUUIOfferView setShowingConfirmation:](self, "setShowingConfirmation:", [v4 isShowingConfirmation]);
}

- (void)_buttonAction:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUUIOfferView *)self buttonElements];
  v6 = [v5 objectForKey:v4];

  v7 = [(SUUIOfferView *)self hlsPlayButton];

  if (v7 == v4 && v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277D69C68]);
    v9 = [(SUUIOfferView *)self hlsID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __31__SUUIOfferView__buttonAction___block_invoke;
    v16[3] = &unk_2798F7B88;
    v17 = v6;
    v18 = v9;
    v10 = v9;
    [v8 isRemovedSystemApplicationWithBundleIdentifier:@"com.apple.tv" completionBlock:v16];

    v11 = v17;
LABEL_12:

    goto LABEL_13;
  }

  if (v6)
  {
    v8 = SUUICollectionViewCellForView(self);
    v10 = SUUICollectionViewForView(v8);
    v11 = [v10 delegate];
    v12 = [(SUUIOfferView *)self offerViewStateDescription];

    if (v12)
    {
      v19 = @"action";
      v13 = [(SUUIOfferView *)self offerViewStateDescription];
      v20[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    }

    else
    {
      v14 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [v10 indexPathForCell:v8];
      [v11 collectionView:v10 didConfirmButtonElement:v6 withClickInfo:v14 forItemAtIndexPath:v15];
    }

    else
    {
      [v6 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:v14 completionBlock:0];
    }

    goto LABEL_12;
  }

LABEL_13:
}

void __31__SUUIOfferView__buttonAction___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__SUUIOfferView__buttonAction___block_invoke_2;
  v7[3] = &unk_2798F60A8;
  v11 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __31__SUUIOfferView__buttonAction___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1 && !*(a1 + 32))
  {
    v6 = @"adam-identifier";
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 48), "longLongValue")}];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v2 dispatchEvent:@"playbackDisabledEvent" eventAttribute:@"onPlay" canBubble:1 isCancelable:0 extraInfo:v4 completionBlock:0];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"videos://play?adam-id=%lld&allowCloudPlayback=1", objc_msgSend(*(a1 + 48), "longLongValue")];
    v1 = [MEMORY[0x277CBEBC0] URLWithString:?];
    SUUIMetricsOpenSensitiveURL(v1, 0);
  }
}

- (void)_cancelConfirmationAction:(id)a3
{
  v4 = a3;
  [(SUUIOfferView *)self setShowingConfirmation:0];
  [(SUUIOfferView *)self bringSubviewToFront:v4];
  [(SUUIOfferView *)self _sendWillAnimate];
  [v4 setShowingConfirmation:0 animated:1];
}

- (void)_showConfirmationAction:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUUIOfferView *)self buttonElements];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v9 = @"action";
    v7 = [(SUUIOfferView *)self offerViewStateDescription];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v6 dispatchEvent:@"buyInitiate" eventAttribute:@"onbuyinitiate" canBubble:1 isCancelable:1 extraInfo:v8 completionBlock:0];
  }

  [(SUUIOfferView *)self bringSubviewToFront:v4];
  [(SUUIOfferView *)self _sendWillAnimate];
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
    v11 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
  }

  v12 = [v6 tintColor];
  v13 = SUUIViewElementPlainColorWithStyle(v10, v12);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  v14 = [v5 buttonViewType] == 9;
  v15 = [v5 buttonText];
  v16 = [v15 attributedStringWithDefaultFont:v11 foregroundColor:v13 textAlignment:v14 style:v10];

  return v16;
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
  if (v11 > 5)
  {
    goto LABEL_20;
  }

  if (((1 << v11) & 0x13) != 0)
  {
    if (v8)
    {
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
      if (!v10)
      {
LABEL_11:
        v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
LABEL_19:
        v10 = v12;
      }
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  if (((1 << v11) & 0x24) != 0)
  {
    if (v8)
    {
      if (v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
      if (v10)
      {
        goto LABEL_20;
      }
    }

    v12 = [MEMORY[0x277D75348] blackColor];
    goto LABEL_19;
  }

  if (!v8)
  {
    v8 = [MEMORY[0x277D74300] systemFontOfSize:7.0];
  }

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  v13 = 1;
LABEL_21:
  v14 = [v5 text];
  v15 = [v14 attributedStringWithDefaultFont:v8 foregroundColor:v10 textAlignment:v13 style:v7];

  return v15;
}

- (void)_sendWillAnimate
{
  v3 = [(SUUIOfferView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 offerViewWillAnimateTransition:self];
  }
}

- (BOOL)_shouldHideNoticesWithBuyButtonDescriptor:(id)a3 context:(id)a4
{
  v4 = a3;
  v5 = [v4 itemIdentifier];
  v6 = [v4 storeIdentifier];

  if (!v6 && v5)
  {
    v6 = [[SUUIStoreIdentifier alloc] initWithLongLong:v5];
  }

  v10 = 0;
  if (v6)
  {
    v7 = +[SUUIItemStateCenter defaultCenter];
    v8 = [v7 stateForItemWithStoreIdentifier:v6];

    v9 = [v8 state] & 0xF;
    if (v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (SUUIOfferViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface SUUIViewModification
- (SUUIViewModification)initWithViewReusePool:(id)a3;
- (id)_addImageViewWithReuseIdentifier:(id)a3 viewElement:(id)a4 context:(id)a5;
- (id)_attributedStringViewForLayout:(id)a3;
- (id)_itemStateForButton:(id)a3;
- (id)addBadgeViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addBarRatingWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addButtonWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addDividerWithElement:(id)a3 context:(id)a4;
- (id)addHeaderViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addHorizontalListWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addHorizontalLockupWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addImageDeckViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addImageGridViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addImageViewWithElement:(id)a3 context:(id)a4;
- (id)addImageViewWithVideoElement:(id)a3 context:(id)a4;
- (id)addLabelViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addLabelViewWithOrdinalElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addMenuButtonWithTitleItem:(id)a3 width:(double)a4 context:(id)a5;
- (id)addOfferViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addResponseViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addReusableViewWithReuseIdentifier:(id)a3;
- (id)addReviewListTitleViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addStackItemViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addStackListViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addStarRatingControlViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addStarRatingViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addTabularLockupWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addTextViewWithElement:(id)a3 width:(double)a4 context:(id)a5;
- (id)addTomatoRatingViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)_styleItemOfferButton:(id)a3 forElement:(id)a4 context:(id)a5;
- (void)setTextProperties:(id)a3 forView:(id)a4;
@end

@implementation SUUIViewModification

- (SUUIViewModification)initWithViewReusePool:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SUUIViewModification;
  v6 = [(SUUIViewModification *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewPool, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    views = v7->_views;
    v7->_views = v8;
  }

  return v7;
}

- (id)addReusableViewWithReuseIdentifier:(id)a3
{
  v4 = [(SUUIViewReusePool *)self->_viewPool dequeueReusableViewWithReuseIdentifier:a3];
  if (v4)
  {
    [(NSMutableArray *)self->_views addObject:v4];
  }

  return v4;
}

- (void)setTextProperties:(id)a3 forView:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!self->_allViewTextProperties)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
    allViewTextProperties = self->_allViewTextProperties;
    self->_allViewTextProperties = v7;
  }

  v9 = self->_allViewTextProperties;
  if (v10)
  {
    [(NSMapTable *)v9 setObject:v10 forKey:v6];
  }

  else
  {
    [(NSMapTable *)v9 removeObjectForKey:v6];
  }
}

- (id)addBadgeViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 badgeType] == 1)
  {
    v10 = [v9 labelLayoutCache];
    v11 = [v10 layoutForWidth:a4 viewElement:v8];

    v12 = [(SUUIViewModification *)self _attributedStringViewForLayout:v11];
    [v12 setLayout:v11];
    [v12 setStringTreatment:1];
    v13 = [v8 style];
    v14 = [v13 ikBackgroundColor];
    v15 = [v14 color];
    [v12 setTreatmentColor:v15];

    goto LABEL_16;
  }

  v16 = [v8 resourceName];
  v13 = v16;
  if (v16)
  {
    v17 = SUUIImageWithResourceName(v16);
  }

  else
  {
    v18 = [v8 URL];

    if (v18)
    {
      v19 = [v9 requestIdentifierForViewElement:v8];
      if (v19)
      {
        v20 = [v9 resourceLoader];
        v11 = [v20 cachedResourceForRequestIdentifier:{objc_msgSend(v19, "unsignedIntegerValue")}];
        if (!v11 && ([v20 trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v19, "unsignedIntegerValue")}] & 1) == 0)
        {
          [v9 loadTemplatedImageForBadgeElement:v8 reason:1];
        }
      }

      else
      {
        [v9 loadTemplatedImageForBadgeElement:v8 reason:1];
        v11 = 0;
      }

      goto LABEL_15;
    }

    v17 = [v8 fallbackImage];
  }

  v11 = v17;
LABEL_15:
  v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9940];
  v21 = [v8 accessibilityText];
  [v12 setAccessibilityLabel:v21];

  [v12 setImage:v11];
  [v8 size];
  [v12 setImageSize:?];
  v22 = [v8 style];
  v23 = SUUIViewElementPlainColorWithStyle(v22, 0);
  [v12 setTintColor:v23];

  [v12 setUserInteractionEnabled:0];
LABEL_16:

  return v12;
}

- (id)addBarRatingWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF98A0];
  [v8 ratingValue];
  [v9 setRatingValue:?];
  v10 = [v8 style];

  v11 = [v7 tintColor];
  v12 = SUUIViewElementPlainColorWithStyle(v10, v11);

  if (!v12)
  {
    v12 = [MEMORY[0x277D75348] blackColor];
  }

  [v9 setTintColor:v12];
  v13 = [v7 clientContext];
  v14 = SUUIUserInterfaceIdiom(v13) != 1;

  [v9 setBarRatingStyle:v14];

  return v9;
}

- (id)addButtonWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 buttonViewType];
  v11 = v10;
  v12 = 0;
  if (v10 <= 5)
  {
    if (v10 > 1)
    {
      if ((v10 - 2) < 2)
      {
        v56 = [(SUUIViewModification *)self _itemStateForButton:v8];
        v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9980];
        [v12 setElement:v8];
      }

      else
      {
        if (v10 != 4)
        {
          if (v10 == 5)
          {
            v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9920];
            v13 = [v12 imageView];
            v14 = [v12 additionalImageView];
            v15 = [v8 buttonImage];
            v113 = __RequestImage(v15, v9);
            [v13 setContents:?];
            [v9 sizeForImageElement:v15];
            v115 = v13;
            [v13 setImageSize:?];
            v16 = [v8 additionalButtonImage];
            v17 = __RequestImage(v16, v9);
            [v14 setContents:v17];
            [v9 sizeForImageElement:v16];
            [v14 setImageSize:?];
            v18 = [v15 accessibilityText];
            if (!v18)
            {
              v18 = [v8 accessibilityText];
            }

            [v12 setAccessibilityLabel:v18];
            v19 = [v8 isEnabled];
            v20 = 0.4;
            if (v19)
            {
              v20 = 1.0;
            }

            [v12 setAlpha:v20];
            [v12 setEnabled:v19];
            v21 = [v8 style];
            v22 = SUUIViewElementPlainColorWithStyle(v21, 0);
            [v12 setTintColor:v22];

            if ([v8 isBigHitButton])
            {
              [v12 setUseBigHitTarget:1];
              [v8 bigHitSize];
              v24 = -v23;
              v25 = v23 == 0.0;
              v26 = -15.0;
              if (!v25)
              {
                v26 = v24;
              }

              [v12 setBigHitInsets:{v26, v26, v26, v26}];
            }

            else
            {
              [v12 setUseBigHitTarget:0];
            }
          }

          goto LABEL_83;
        }

        v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9980];
        v56 = [(SUUIViewModification *)self _itemStateForButton:v8];
      }

      v62 = [v8 buyButtonDescriptor];
      v63 = [v9 clientContext];
      [v12 setValuesUsingBuyButtonDescriptor:v62 itemState:v56 clientContext:v63 animated:0];

      [(SUUIViewModification *)self _styleItemOfferButton:v12 forElement:v8 context:v9];
      goto LABEL_83;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_83;
      }

      goto LABEL_42;
    }

    goto LABEL_26;
  }

  if (v10 <= 0xD)
  {
    if (((1 << v10) & 0x2D00) != 0)
    {
LABEL_26:
      v37 = [v8 buttonViewSubType];
      if (v37 == 1)
      {
        v38 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9AA0];
        v39 = [v8 nonToggledText];
        [v38 setNonToggledTitle:v39];

        v40 = [v8 toggledText];
        [v38 setToggledTitle:v40];

        v41 = v38;
        v42 = v41;
      }

      else
      {
        v42 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8620];
        v41 = 0;
      }

      if (v11 == 13)
      {
        v43 = 7;
      }

      else
      {
        v43 = 0;
      }

      [v42 setButtonType:v43];
      v44 = [SUUIButtonBorderStyle alloc];
      v45 = [v8 style];
      v46 = [(SUUIButtonBorderStyle *)v44 initWithElementStyle:v45];

      [v42 setBorderStyle:v46];
      v47 = [v9 labelLayoutCache];
      v48 = [v47 layoutForWidth:a4 viewElement:v8];
      [v42 setTitleLayout:v48];

      v49 = [v8 isEnabled];
      [v42 setEnabled:v49];
      v50 = 0.4;
      if (v49)
      {
        v50 = 1.0;
      }

      [v42 setAlpha:v50];
      if (v37 == 1)
      {
        v51 = [v8 toggleItemIdentifier];
        if ([v51 length])
        {
          v52 = +[SUUIToggleStateCenter defaultCenter];
          [v41 setToggleItemIdentifier:v51];
          v53 = [v52 itemForIdentifier:v51];
          v54 = v53;
          if (!v53 || ([v53 toggled] & 0x80000000) != 0)
          {
            v55 = [v8 isToggled];
          }

          else
          {
            v55 = [v54 toggled] == 1;
          }

          [v41 setToggled:v55 animated:0];
        }

        else
        {
          [v41 setToggled:objc_msgSend(v8 animated:{"isToggled"), 0}];
        }
      }

      v12 = v42;
LABEL_60:

      goto LABEL_83;
    }

    if (v10 == 9)
    {
      v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8620];
      [v12 setAlpha:1.0];
      [v12 setBorderStyle:0];
      v64 = 1;
      [v12 setButtonType:1];
      v65 = [v9 labelLayoutCache];
      v66 = [v65 layoutForWidth:a4 viewElement:v8];
      [v12 setTitleLayout:v66];

      v29 = [(SUUIViewModification *)self _itemStateForButton:v8];
      v67 = [v8 buyButtonDescriptor];
      v68 = [v9 clientContext];
      [v12 setValuesUsingBuyButtonDescriptor:v67 itemState:v29 clientContext:v68 animated:0];

      if (([v12 isUsingItemOfferAppearance] & 1) == 0)
      {
        v64 = [v8 isEnabled];
      }

      [v12 setEnabled:v64];
      v69 = [v8 style];
      v70 = SUUIViewElementPlainColorWithStyle(v69, 0);

      [v12 setTintColor:v70];
      goto LABEL_82;
    }

    if (v10 == 12)
    {
      v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF99A0];
      v27 = [v8 sizeVariant];
      v28 = [v27 isEqualToString:@"large"];

      [v12 setStyle:v28];
      v29 = [v8 playItemIdentifier];
      if ([v12 isIndeterminate])
      {
        [v12 endIndeterminateAnimation];
      }

      [v12 setShowOnDemand:{objc_msgSend(v8, "showOnDemand")}];
      [v12 showPlayIndicator:1];
      [v12 setPlayItemIdentifier:v29];
      [v12 setItemIdentifier:{objc_msgSend(v29, "longLongValue")}];
      [v12 setBigHitInsets:{-15.0, -15.0, -15.0, -15.0}];
      v30 = [v8 style];
      v31 = [v30 ikBackgroundColor];

      v32 = [v31 colorType];
      if (v32 == 2)
      {
        v35 = 0;
        v36 = 0;
      }

      else
      {
        if (v32 == 3)
        {
          v33 = [v31 gradientDirectionType] == 2;
          v34 = [v31 gradientColors];
          [v12 setBackgroundGradientColors:v34 withGradientType:v33];
          v35 = 0;
          v36 = 0;
          v32 = 4;
        }

        else
        {
          v36 = [v31 color];
          v34 = [v8 style];
          v88 = [v34 ikColor];
          v35 = [v88 color];

          v32 = 1;
        }
      }

      [v12 setItemIdentifier:{objc_msgSend(v29, "longLongValue")}];
      [v12 setBackgroundType:v32];
      if (v35)
      {
        [v12 setControlForegroundColor:v35];
      }

      if (v36)
      {
        [v12 setControlColor:v36];
      }

      [v12 setElement:v8];
      [v12 setEnabled:{objc_msgSend(v8, "isEnabled")}];
      [v12 setDisabledButSelectable:{objc_msgSend(v8, "isDisabledButSelectable")}];
      [v12 setHidden:{objc_msgSend(v12, "showOnDemand")}];

LABEL_82:
      goto LABEL_83;
    }
  }

  if (v10 == 6)
  {
    if ([v8 buttonViewSubType] == 1)
    {
      v71 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9AA0];
      v72 = [v8 nonToggledText];
      [v71 setNonToggledTitle:v72];

      v73 = [v8 toggledText];
      [v71 setToggledTitle:v73];

      [v71 setAutoIncrement:{objc_msgSend(v8, "autoIncrementCount")}];
      v41 = v71;
      v74 = v41;
    }

    else
    {
      v74 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8620];
      v41 = 0;
    }

    [v74 setBorderStyle:0];
    v75 = [SUUIStyledButton buttonTypeForElement:v8];
    if ([v8 isBigHitButton])
    {
      [v8 bigHitSize];
      v77 = -v76;
      v25 = v76 == 0.0;
      v78 = -15.0;
      if (!v25)
      {
        v78 = v77;
      }

      [v74 setBigHitInsets:{v78, v78, v78, v78}];
      [v74 setUseBigHitTarget:1];
    }

    [v74 setButtonType:v75];
    v79 = [v9 labelLayoutCache];
    v80 = [v79 layoutForWidth:a4 viewElement:v8];
    [v74 setTitleLayout:v80];

    v81 = [v8 style];
    [v81 elementPadding];
    [v74 setButtonPadding:?];

    v82 = [v8 isEnabled];
    [v74 setEnabled:v82];
    v83 = 0.4;
    if (v82)
    {
      v83 = 1.0;
    }

    [v74 setAlpha:v83];
    v46 = [v74 imageView];
    v84 = [v8 buttonImage];
    v85 = __RequestImage(v84, v9);
    if (v41)
    {
      [v41 setElement:v8];
      v86 = [v8 toggleItemIdentifier];
      v114 = +[SUUIToggleStateCenter defaultCenter];
      if ([v86 length])
      {
        [v41 setToggleItemIdentifier:v86];
        v87 = [v114 itemForIdentifier:v86];
      }

      else
      {
        v87 = 0;
      }

      if (([v87 toggled] & 0x80000000) != 0)
      {
        v112 = [v8 isToggled];
      }

      else
      {
        v112 = [v87 count];
      }

      v116 = v87;
      v97 = [v8 additionalButtonImage];
      if (v97)
      {
        [v41 setToggleButtonType:1];
        v98 = __RequestImage(v97, v9);
      }

      else
      {
        [v41 setToggleButtonType:0];
        v98 = 0;
      }

      if ([v8 autoIncrementCount] && objc_msgSend(v116, "toggled") == -1)
      {
        v106 = v46;
        v107 = v86;
        v110 = [v41 titleLayout];
        v102 = [v110 attributedString];
        v103 = [v102 string];

        v111 = v103;
        if ([v103 length])
        {
          if (addButtonWithElement_width_context__sOnceToken != -1)
          {
            [SUUIViewModification(SUUIViewElementView) addButtonWithElement:width:context:];
          }

          v86 = v107;
          v46 = v106;
          v104 = [addButtonWithElement_width_context__sNumberFormatter numberFromString:v111];
          if (v104)
          {
            v108 = v104;
            v112 = [v104 integerValue];
            v104 = v108;
          }
        }

        else
        {
          v46 = v106;
          v86 = v107;
        }

        if (v112 < 1)
        {
          [v41 setButtonTitleText:@" "];
          [v41 setAutoIncrementCount:v112];
        }

        else
        {
          [v41 setAutoIncrementCount:v112];
          [v41 setButtonTitleText:v111];
        }

        [v41 setAutoIncrementCount:v112];
        [v41 setToggled:{objc_msgSend(v8, "isToggled")}];
      }

      else if ([v8 autoIncrementCount])
      {
        v109 = v97;
        [v41 setToggled:{objc_msgSend(v116, "toggled") == 1}];
        if (v112 < 1)
        {
          [v41 setButtonTitleText:@" "];
        }

        else
        {
          [v116 toggledString];
          v99 = v85;
          v101 = v100 = v86;
          [v41 setButtonTitleText:v101];

          v86 = v100;
          v85 = v99;
        }

        v97 = v109;
      }

      else
      {
        [v41 setToggled:{objc_msgSend(v8, "isToggled")}];
      }

      [v41 setNonToggledContents:v85];
      [v41 setToggledContents:v98];
      if ([v41 isToggled])
      {
        v105 = v98;
      }

      else
      {
        v105 = v85;
      }

      [(SUUIButtonBorderStyle *)v46 setContents:v105];
    }

    else
    {
      [(SUUIButtonBorderStyle *)v46 setContents:v85];
    }

    [v9 sizeForImageElement:v84];
    [(SUUIButtonBorderStyle *)v46 setImageSize:?];
    v12 = v74;

    goto LABEL_60;
  }

  if (v10 != 7)
  {
    goto LABEL_83;
  }

LABEL_42:
  v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8620];
  [v12 setBorderStyle:0];
  if (v11 == 1)
  {
    v57 = 3;
  }

  else
  {
    v57 = 4;
  }

  [v12 setButtonType:v57];
  v58 = [v9 labelLayoutCache];
  v59 = [v58 layoutForWidth:a4 viewElement:v8];
  [v12 setTitleLayout:v59];

  v60 = [v8 isEnabled];
  [v12 setEnabled:v60];
  v61 = 0.4;
  if (v60)
  {
    v61 = 1.0;
  }

  [v12 setAlpha:v61];
LABEL_83:
  v89 = [v8 attributes];
  v90 = [v89 objectForKeyedSubscript:@"privacy"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v91 = v90;
  }

  else
  {
    v91 = 0;
  }

  [v12 setAdPrivacyData:v91];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v92 = v12;
    v93 = [v8 buttonTitleStyle];
    v94 = v93;
    if (!v93)
    {
      v94 = [v8 style];
    }

    v95 = [v94 ikColor];
    [v92 setUsesTintColor:{objc_msgSend(v95, "colorType") == 1}];

    if (!v93)
    {
    }
  }

  return v12;
}

uint64_t __80__SUUIViewModification_SUUIViewElementView__addButtonWithElement_width_context___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = addButtonWithElement_width_context__sNumberFormatter;
  addButtonWithElement_width_context__sNumberFormatter = v0;

  v2 = addButtonWithElement_width_context__sNumberFormatter;

  return [v2 setNumberStyle:1];
}

- (id)addDividerWithElement:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AEF420];
  v9 = [v6 style];
  v10 = [v7 tintColor];

  v11 = SUUIViewElementPlainColorWithStyle(v9, v10);

  if (v11 || [v6 dividerType] == 3)
  {
    if ([v6 dividerType] == 3)
    {

      v11 = 0;
    }
  }

  else
  {
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  }

  [v8 setDividerColor:v11];

  return v8;
}

- (id)addHeaderViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8820];
  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addHorizontalListWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF98C0];
  v11 = [v9 style];
  [v11 elementPadding];
  [v10 setContentInset:?];

  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addHorizontalLockupWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9900];
  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addImageDeckViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8860];
  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addImageGridViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8880];
  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addImageViewWithElement:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 style];
  v9 = [v8 imageTreatment];
  v10 = SUUIImageTreatmentForString(v9);

  if (v10 == 13)
  {
    v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AF99C0 viewElement:v6 context:v7];
    if (v8)
    {
      [v8 transform];
      [v11 setTransform:v27];
    }

    v13 = SUUIViewElementPlainColorWithStyle(v8, 0);
    [v11 setTintColor:v13];

    [v8 elementPadding];
    [v11 setImagePadding:?];
    v12 = [v8 ikBackgroundColor];
    v14 = [v12 color];
    [v11 setBackgroundColor:v14];
  }

  else if (v10 == 7)
  {
    v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AF9A20 viewElement:v6 context:v7];
    v12 = [v7 borderDrawingCache];
    [v11 setBorderDrawingCache:v12];
  }

  else
  {
    v15 = [v6 children];
    v16 = [v15 count];

    if (v16)
    {
      v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AF9840 viewElement:v6 context:v7];
      [v6 size];
      [v11 reloadWithViewElement:v6 width:v7 context:?];
    }

    else
    {
      [v6 shadowOffset];
      if (v18 == *MEMORY[0x277CBF3A8] && v17 == *(MEMORY[0x277CBF3A8] + 8))
      {
        v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AF9940 viewElement:v6 context:v7];
        [v6 layerShadowOpacity];
        if (v20 != 0.0)
        {
          v21 = [v11 layer];
          [v21 setMasksToBounds:0];

          v22 = [v11 layer];
          [v6 layerShadowOpacity];
          [v22 setShadowOpacity:?];

          v23 = [v11 layer];
          [v6 layerShadowOffset];
          [v23 setShadowOffset:?];
        }

        [v6 layerShadowRadius];
        if (v24 != 0.0)
        {
          v25 = [v11 layer];
          [v6 layerShadowRadius];
          [v25 setShadowRadius:?];
        }
      }

      else
      {
        v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AF9960 viewElement:v6 context:v7];
        [v11 setContentMode:4];
      }
    }

    if (v8)
    {
      [v8 transform];
      [v11 setTransform:v27];
    }

    v12 = SUUIViewElementPlainColorWithStyle(v8, 0);
    [v11 setTintColor:v12];
  }

  return v11;
}

- (id)addImageViewWithVideoElement:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 thumbnailImage];
  v9 = [v7 isEnabled];

  if (v9)
  {
    v10 = [v8 style];
    v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AEECE0 viewElement:v8 context:v6];
    if (v10)
    {
      [v10 transform];
      [v11 setTransform:&v13];
    }
  }

  else
  {
    v11 = [(SUUIViewModification *)self addImageViewWithElement:v8 context:v6];
  }

  return v11;
}

- (id)addLabelViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 labelLayoutCache];
  v11 = [v10 layoutForWidth:a4 viewElement:v8];

  v12 = [(SUUIViewModification *)self _attributedStringViewForLayout:v11];
  [v12 setLayout:v11];
  [v12 setContainsLinks:{objc_msgSend(v8, "containsLinks")}];
  if ([v8 containsLinks])
  {
    v13 = [v8 linkDelegate];
    [v12 setLinkDelegate:v13];
  }

  [v12 setStringTreatment:0];
  [v12 setTreatmentColor:0];
  v14 = [v8 style];
  v15 = [v14 ikColor];
  [v12 setTextColorFollowsTintColor:{objc_msgSend(v15, "colorType") == 1}];

  if (v11)
  {
    v16 = [v8 trailingBadges];
    v17 = [v9 badgeImageLoader];
    v18 = [v8 badges];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v27 = v16;
      v28 = v9;
      LOBYTE(v21) = 0;
      v22 = *v30;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v29 + 1) + 8 * i);
          if (v21)
          {
            v21 = 1;
          }

          else
          {
            v25 = [*(*(&v29 + 1) + 8 * i) image];
            v21 = v25 == 0;
          }

          [v17 loadImageForBadge:v24 layout:v11 reason:{1, v27, v28}];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v20);
      v16 = v27;
      v9 = v28;
      if (v21)
      {
        [v17 connectStringView:v12];
      }
    }
  }

  else
  {
    v16 = 0;
  }

  [v12 setRequiredBadges:v16];
  [v12 setBadgePlacement:{objc_msgSend(v8, "badgePlacement") == 1}];

  return v12;
}

- (id)addLabelViewWithOrdinalElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = [a5 labelLayoutCache];
  v10 = [v9 layoutForWidth:a4 viewElement:v8];

  v11 = [(SUUIViewModification *)self _attributedStringViewForLayout:v10];
  [v11 setLayout:v10];
  [v11 setStringTreatment:0];
  [v11 setTreatmentColor:0];
  v12 = [v8 style];

  v13 = [v12 ikColor];
  [v11 setTextColorFollowsTintColor:{objc_msgSend(v13, "colorType") == 1}];

  return v11;
}

- (id)addMenuButtonWithTitleItem:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8620];
  [v10 setBorderStyle:0];
  [v10 setButtonType:2];
  [v10 setEnabled:{objc_msgSend(v9, "isEnabled")}];
  v11 = [v8 labelLayoutCache];

  v12 = [v11 layoutForWidth:a4 viewElement:v9];

  [v10 setTitleLayout:v12];
  [v10 setUsesTintColor:1];

  return v10;
}

- (id)addOfferViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF0300];
  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addStackListViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8DA0];
  v11 = [v9 style];
  [v11 elementPadding];
  [v10 setContentInset:?];

  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addStackItemViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF6060];
  v11 = [v9 style];
  [v11 elementPadding];
  [v10 setContentInset:?];

  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addReviewListTitleViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF99E0];
  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addResponseViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8BE0];
  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addStarRatingViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8DE0];
  [v10 setElementSpacing:3];
  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addStarRatingControlViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9A40];
  [v10 setEnabled:{objc_msgSend(v9, "isEnabled")}];
  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addTabularLockupWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9A60];
  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)addTextViewWithElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9A80];
  v11 = [v9 editorialLayoutForLabelElement:v8 width:a4];
  v12 = [v11 bodyTextLayoutForOrientation:0];
  [v10 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v10 setEnabled:0];
  [v10 setFixedWidthTextFrame:{objc_msgSend(v12, "textFrame")}];
  v13 = [v8 moreButtonTitle];
  [v10 setMoreButtonTitle:v13];

  if ([v12 requiresTruncation] && (objc_msgSend(v9, "isEditorialLayoutExpanded:", v11) & 1) == 0)
  {
    v14 = [v8 isEnabled];
  }

  else
  {
    v14 = 0;
  }

  [v10 setUserInteractionEnabled:v14];
  if ([v9 isEditorialLayoutExpanded:v11])
  {
    v15 = 0;
  }

  else
  {
    v15 = [v8 numberOfLines];
  }

  [v10 setNumberOfVisibleLines:v15];

  return v10;
}

- (id)addTomatoRatingViewWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8E00];
  [v10 reloadWithViewElement:v9 width:v8 context:a4];

  return v10;
}

- (id)_addImageViewWithReuseIdentifier:(id)a3 viewElement:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:a3];
  v11 = [v9 accessibilityText];
  [v10 setAccessibilityLabel:v11];

  [v10 setUserInteractionEnabled:{objc_msgSend(v9, "isEnabled")}];
  v12 = __RequestImage(v9, v8);
  [v10 setContents:v12];
  [v8 sizeForImageElement:v9];
  v14 = v13;
  v16 = v15;

  [v10 setImageSize:{v14, v16}];

  return v10;
}

- (id)_itemStateForButton:(id)a3
{
  v3 = a3;
  v4 = [v3 itemIdentifier];
  v5 = [v3 storeIdentifier];
  if (!v5 && v4)
  {
    v5 = [[SUUIStoreIdentifier alloc] initWithLongLong:v4];
  }

  if (v5)
  {
    v6 = +[SUUIItemStateCenter defaultCenter];
    v7 = [v6 stateForItemWithStoreIdentifier:v5];

    if (v7 && ([v3 buyButtonDescriptor], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "canPersonalizeUsingItemState:", v7), v8, v9))
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_styleItemOfferButton:(id)a3 forElement:(id)a4 context:(id)a5
{
  v20 = a3;
  v7 = a4;
  v8 = [a5 tintColor];
  v9 = [v7 style];
  v10 = SUUIViewElementPlainColorWithStyle(v9, v8);

  [v20 setTintColor:v10];
  v11 = v7;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    do
    {
      v14 = v13;
      v15 = [v13 style];
      v16 = [v15 ikBackgroundColor];
      v17 = SUUIViewElementPlainColorWithIKColor(v16, v8);

      v13 = [v14 parent];
    }

    while (v13 && !v17);
  }

  else
  {
    v17 = 0;
    v13 = 0;
  }

  v18 = [objc_opt_class() cloudTintColorForBackgroundColor:v17];
  [v20 setCloudTintColor:v18];

  [v20 setElement:v12];
  [v20 setEnabled:{objc_msgSend(v12, "isEnabled")}];
  [v20 setDisabledButSelectable:{objc_msgSend(v12, "isDisabledButSelectable")}];
  v19 = [v12 badgeResourceName];
  [v20 setUniversal:{objc_msgSend(v19, "isEqualToString:", @"plus"}];
}

- (id)_attributedStringViewForLayout:(id)a3
{
  [a3 edgeInsetsForShadow];
  v5.f64[1] = v4;
  v7.f64[1] = v6;
  if (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v5, *MEMORY[0x277D768C8]), vceqq_f64(v7, *(MEMORY[0x277D768C8] + 16))), xmmword_259FCAF40)) == 15)
  {
    v8 = SUUIViewReuseAttributedStringIdentifier;
  }

  else
  {
    v8 = SUUIViewReuseAttributedStringWrapperIdentifier;
  }

  v9 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:*v8];

  return v9;
}

@end
@interface SUUIViewModification
- (SUUIViewModification)initWithViewReusePool:(id)pool;
- (id)_addImageViewWithReuseIdentifier:(id)identifier viewElement:(id)element context:(id)context;
- (id)_attributedStringViewForLayout:(id)layout;
- (id)_itemStateForButton:(id)button;
- (id)addBadgeViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addBarRatingWithElement:(id)element width:(double)width context:(id)context;
- (id)addButtonWithElement:(id)element width:(double)width context:(id)context;
- (id)addDividerWithElement:(id)element context:(id)context;
- (id)addHeaderViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addHorizontalListWithElement:(id)element width:(double)width context:(id)context;
- (id)addHorizontalLockupWithElement:(id)element width:(double)width context:(id)context;
- (id)addImageDeckViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addImageGridViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addImageViewWithElement:(id)element context:(id)context;
- (id)addImageViewWithVideoElement:(id)element context:(id)context;
- (id)addLabelViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addLabelViewWithOrdinalElement:(id)element width:(double)width context:(id)context;
- (id)addMenuButtonWithTitleItem:(id)item width:(double)width context:(id)context;
- (id)addOfferViewWithViewElement:(id)element width:(double)width context:(id)context;
- (id)addResponseViewWithViewElement:(id)element width:(double)width context:(id)context;
- (id)addReusableViewWithReuseIdentifier:(id)identifier;
- (id)addReviewListTitleViewWithViewElement:(id)element width:(double)width context:(id)context;
- (id)addStackItemViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addStackListViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addStarRatingControlViewWithViewElement:(id)element width:(double)width context:(id)context;
- (id)addStarRatingViewWithViewElement:(id)element width:(double)width context:(id)context;
- (id)addTabularLockupWithElement:(id)element width:(double)width context:(id)context;
- (id)addTextViewWithElement:(id)element width:(double)width context:(id)context;
- (id)addTomatoRatingViewWithViewElement:(id)element width:(double)width context:(id)context;
- (void)_styleItemOfferButton:(id)button forElement:(id)element context:(id)context;
- (void)setTextProperties:(id)properties forView:(id)view;
@end

@implementation SUUIViewModification

- (SUUIViewModification)initWithViewReusePool:(id)pool
{
  poolCopy = pool;
  v11.receiver = self;
  v11.super_class = SUUIViewModification;
  v6 = [(SUUIViewModification *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewPool, pool);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    views = v7->_views;
    v7->_views = v8;
  }

  return v7;
}

- (id)addReusableViewWithReuseIdentifier:(id)identifier
{
  v4 = [(SUUIViewReusePool *)self->_viewPool dequeueReusableViewWithReuseIdentifier:identifier];
  if (v4)
  {
    [(NSMutableArray *)self->_views addObject:v4];
  }

  return v4;
}

- (void)setTextProperties:(id)properties forView:(id)view
{
  propertiesCopy = properties;
  viewCopy = view;
  if (!self->_allViewTextProperties)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
    allViewTextProperties = self->_allViewTextProperties;
    self->_allViewTextProperties = v7;
  }

  v9 = self->_allViewTextProperties;
  if (propertiesCopy)
  {
    [(NSMapTable *)v9 setObject:propertiesCopy forKey:viewCopy];
  }

  else
  {
    [(NSMapTable *)v9 removeObjectForKey:viewCopy];
  }
}

- (id)addBadgeViewWithElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if ([elementCopy badgeType] == 1)
  {
    labelLayoutCache = [contextCopy labelLayoutCache];
    v11 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];

    v12 = [(SUUIViewModification *)self _attributedStringViewForLayout:v11];
    [v12 setLayout:v11];
    [v12 setStringTreatment:1];
    style = [elementCopy style];
    ikBackgroundColor = [style ikBackgroundColor];
    color = [ikBackgroundColor color];
    [v12 setTreatmentColor:color];

    goto LABEL_16;
  }

  resourceName = [elementCopy resourceName];
  style = resourceName;
  if (resourceName)
  {
    fallbackImage = SUUIImageWithResourceName(resourceName);
  }

  else
  {
    v18 = [elementCopy URL];

    if (v18)
    {
      v19 = [contextCopy requestIdentifierForViewElement:elementCopy];
      if (v19)
      {
        resourceLoader = [contextCopy resourceLoader];
        v11 = [resourceLoader cachedResourceForRequestIdentifier:{objc_msgSend(v19, "unsignedIntegerValue")}];
        if (!v11 && ([resourceLoader trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v19, "unsignedIntegerValue")}] & 1) == 0)
        {
          [contextCopy loadTemplatedImageForBadgeElement:elementCopy reason:1];
        }
      }

      else
      {
        [contextCopy loadTemplatedImageForBadgeElement:elementCopy reason:1];
        v11 = 0;
      }

      goto LABEL_15;
    }

    fallbackImage = [elementCopy fallbackImage];
  }

  v11 = fallbackImage;
LABEL_15:
  v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9940];
  accessibilityText = [elementCopy accessibilityText];
  [v12 setAccessibilityLabel:accessibilityText];

  [v12 setImage:v11];
  [elementCopy size];
  [v12 setImageSize:?];
  style2 = [elementCopy style];
  v23 = SUUIViewElementPlainColorWithStyle(style2, 0);
  [v12 setTintColor:v23];

  [v12 setUserInteractionEnabled:0];
LABEL_16:

  return v12;
}

- (id)addBarRatingWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v9 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF98A0];
  [elementCopy ratingValue];
  [v9 setRatingValue:?];
  style = [elementCopy style];

  tintColor = [contextCopy tintColor];
  blackColor = SUUIViewElementPlainColorWithStyle(style, tintColor);

  if (!blackColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  [v9 setTintColor:blackColor];
  clientContext = [contextCopy clientContext];
  v14 = SUUIUserInterfaceIdiom(clientContext) != 1;

  [v9 setBarRatingStyle:v14];

  return v9;
}

- (id)addButtonWithElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  buttonViewType = [elementCopy buttonViewType];
  v11 = buttonViewType;
  v12 = 0;
  if (buttonViewType <= 5)
  {
    if (buttonViewType > 1)
    {
      if ((buttonViewType - 2) < 2)
      {
        v56 = [(SUUIViewModification *)self _itemStateForButton:elementCopy];
        v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9980];
        [v12 setElement:elementCopy];
      }

      else
      {
        if (buttonViewType != 4)
        {
          if (buttonViewType == 5)
          {
            v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9920];
            imageView = [v12 imageView];
            additionalImageView = [v12 additionalImageView];
            buttonImage = [elementCopy buttonImage];
            v113 = __RequestImage(buttonImage, contextCopy);
            [imageView setContents:?];
            [contextCopy sizeForImageElement:buttonImage];
            v115 = imageView;
            [imageView setImageSize:?];
            additionalButtonImage = [elementCopy additionalButtonImage];
            v17 = __RequestImage(additionalButtonImage, contextCopy);
            [additionalImageView setContents:v17];
            [contextCopy sizeForImageElement:additionalButtonImage];
            [additionalImageView setImageSize:?];
            accessibilityText = [buttonImage accessibilityText];
            if (!accessibilityText)
            {
              accessibilityText = [elementCopy accessibilityText];
            }

            [v12 setAccessibilityLabel:accessibilityText];
            isEnabled = [elementCopy isEnabled];
            v20 = 0.4;
            if (isEnabled)
            {
              v20 = 1.0;
            }

            [v12 setAlpha:v20];
            [v12 setEnabled:isEnabled];
            style = [elementCopy style];
            v22 = SUUIViewElementPlainColorWithStyle(style, 0);
            [v12 setTintColor:v22];

            if ([elementCopy isBigHitButton])
            {
              [v12 setUseBigHitTarget:1];
              [elementCopy bigHitSize];
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
        v56 = [(SUUIViewModification *)self _itemStateForButton:elementCopy];
      }

      buyButtonDescriptor = [elementCopy buyButtonDescriptor];
      clientContext = [contextCopy clientContext];
      [v12 setValuesUsingBuyButtonDescriptor:buyButtonDescriptor itemState:v56 clientContext:clientContext animated:0];

      [(SUUIViewModification *)self _styleItemOfferButton:v12 forElement:elementCopy context:contextCopy];
      goto LABEL_83;
    }

    if (buttonViewType)
    {
      if (buttonViewType != 1)
      {
        goto LABEL_83;
      }

      goto LABEL_42;
    }

    goto LABEL_26;
  }

  if (buttonViewType <= 0xD)
  {
    if (((1 << buttonViewType) & 0x2D00) != 0)
    {
LABEL_26:
      buttonViewSubType = [elementCopy buttonViewSubType];
      if (buttonViewSubType == 1)
      {
        v38 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9AA0];
        nonToggledText = [elementCopy nonToggledText];
        [v38 setNonToggledTitle:nonToggledText];

        toggledText = [elementCopy toggledText];
        [v38 setToggledTitle:toggledText];

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
      style2 = [elementCopy style];
      imageView2 = [(SUUIButtonBorderStyle *)v44 initWithElementStyle:style2];

      [v42 setBorderStyle:imageView2];
      labelLayoutCache = [contextCopy labelLayoutCache];
      v48 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];
      [v42 setTitleLayout:v48];

      isEnabled2 = [elementCopy isEnabled];
      [v42 setEnabled:isEnabled2];
      v50 = 0.4;
      if (isEnabled2)
      {
        v50 = 1.0;
      }

      [v42 setAlpha:v50];
      if (buttonViewSubType == 1)
      {
        toggleItemIdentifier = [elementCopy toggleItemIdentifier];
        if ([toggleItemIdentifier length])
        {
          v52 = +[SUUIToggleStateCenter defaultCenter];
          [v41 setToggleItemIdentifier:toggleItemIdentifier];
          v53 = [v52 itemForIdentifier:toggleItemIdentifier];
          v54 = v53;
          if (!v53 || ([v53 toggled] & 0x80000000) != 0)
          {
            isToggled = [elementCopy isToggled];
          }

          else
          {
            isToggled = [v54 toggled] == 1;
          }

          [v41 setToggled:isToggled animated:0];
        }

        else
        {
          [v41 setToggled:objc_msgSend(elementCopy animated:{"isToggled"), 0}];
        }
      }

      v12 = v42;
LABEL_60:

      goto LABEL_83;
    }

    if (buttonViewType == 9)
    {
      v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8620];
      [v12 setAlpha:1.0];
      [v12 setBorderStyle:0];
      isEnabled3 = 1;
      [v12 setButtonType:1];
      labelLayoutCache2 = [contextCopy labelLayoutCache];
      v66 = [labelLayoutCache2 layoutForWidth:width viewElement:elementCopy];
      [v12 setTitleLayout:v66];

      playItemIdentifier = [(SUUIViewModification *)self _itemStateForButton:elementCopy];
      buyButtonDescriptor2 = [elementCopy buyButtonDescriptor];
      clientContext2 = [contextCopy clientContext];
      [v12 setValuesUsingBuyButtonDescriptor:buyButtonDescriptor2 itemState:playItemIdentifier clientContext:clientContext2 animated:0];

      if (([v12 isUsingItemOfferAppearance] & 1) == 0)
      {
        isEnabled3 = [elementCopy isEnabled];
      }

      [v12 setEnabled:isEnabled3];
      style3 = [elementCopy style];
      v70 = SUUIViewElementPlainColorWithStyle(style3, 0);

      [v12 setTintColor:v70];
      goto LABEL_82;
    }

    if (buttonViewType == 12)
    {
      v12 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF99A0];
      sizeVariant = [elementCopy sizeVariant];
      v28 = [sizeVariant isEqualToString:@"large"];

      [v12 setStyle:v28];
      playItemIdentifier = [elementCopy playItemIdentifier];
      if ([v12 isIndeterminate])
      {
        [v12 endIndeterminateAnimation];
      }

      [v12 setShowOnDemand:{objc_msgSend(elementCopy, "showOnDemand")}];
      [v12 showPlayIndicator:1];
      [v12 setPlayItemIdentifier:playItemIdentifier];
      [v12 setItemIdentifier:{objc_msgSend(playItemIdentifier, "longLongValue")}];
      [v12 setBigHitInsets:{-15.0, -15.0, -15.0, -15.0}];
      style4 = [elementCopy style];
      ikBackgroundColor = [style4 ikBackgroundColor];

      colorType = [ikBackgroundColor colorType];
      if (colorType == 2)
      {
        color2 = 0;
        color = 0;
      }

      else
      {
        if (colorType == 3)
        {
          v33 = [ikBackgroundColor gradientDirectionType] == 2;
          gradientColors = [ikBackgroundColor gradientColors];
          [v12 setBackgroundGradientColors:gradientColors withGradientType:v33];
          color2 = 0;
          color = 0;
          colorType = 4;
        }

        else
        {
          color = [ikBackgroundColor color];
          gradientColors = [elementCopy style];
          ikColor = [gradientColors ikColor];
          color2 = [ikColor color];

          colorType = 1;
        }
      }

      [v12 setItemIdentifier:{objc_msgSend(playItemIdentifier, "longLongValue")}];
      [v12 setBackgroundType:colorType];
      if (color2)
      {
        [v12 setControlForegroundColor:color2];
      }

      if (color)
      {
        [v12 setControlColor:color];
      }

      [v12 setElement:elementCopy];
      [v12 setEnabled:{objc_msgSend(elementCopy, "isEnabled")}];
      [v12 setDisabledButSelectable:{objc_msgSend(elementCopy, "isDisabledButSelectable")}];
      [v12 setHidden:{objc_msgSend(v12, "showOnDemand")}];

LABEL_82:
      goto LABEL_83;
    }
  }

  if (buttonViewType == 6)
  {
    if ([elementCopy buttonViewSubType] == 1)
    {
      v71 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9AA0];
      nonToggledText2 = [elementCopy nonToggledText];
      [v71 setNonToggledTitle:nonToggledText2];

      toggledText2 = [elementCopy toggledText];
      [v71 setToggledTitle:toggledText2];

      [v71 setAutoIncrement:{objc_msgSend(elementCopy, "autoIncrementCount")}];
      v41 = v71;
      v74 = v41;
    }

    else
    {
      v74 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8620];
      v41 = 0;
    }

    [v74 setBorderStyle:0];
    v75 = [SUUIStyledButton buttonTypeForElement:elementCopy];
    if ([elementCopy isBigHitButton])
    {
      [elementCopy bigHitSize];
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
    labelLayoutCache3 = [contextCopy labelLayoutCache];
    v80 = [labelLayoutCache3 layoutForWidth:width viewElement:elementCopy];
    [v74 setTitleLayout:v80];

    style5 = [elementCopy style];
    [style5 elementPadding];
    [v74 setButtonPadding:?];

    isEnabled4 = [elementCopy isEnabled];
    [v74 setEnabled:isEnabled4];
    v83 = 0.4;
    if (isEnabled4)
    {
      v83 = 1.0;
    }

    [v74 setAlpha:v83];
    imageView2 = [v74 imageView];
    buttonImage2 = [elementCopy buttonImage];
    v85 = __RequestImage(buttonImage2, contextCopy);
    if (v41)
    {
      [v41 setElement:elementCopy];
      toggleItemIdentifier2 = [elementCopy toggleItemIdentifier];
      v114 = +[SUUIToggleStateCenter defaultCenter];
      if ([toggleItemIdentifier2 length])
      {
        [v41 setToggleItemIdentifier:toggleItemIdentifier2];
        v87 = [v114 itemForIdentifier:toggleItemIdentifier2];
      }

      else
      {
        v87 = 0;
      }

      if (([v87 toggled] & 0x80000000) != 0)
      {
        isToggled2 = [elementCopy isToggled];
      }

      else
      {
        isToggled2 = [v87 count];
      }

      v116 = v87;
      additionalButtonImage2 = [elementCopy additionalButtonImage];
      if (additionalButtonImage2)
      {
        [v41 setToggleButtonType:1];
        v98 = __RequestImage(additionalButtonImage2, contextCopy);
      }

      else
      {
        [v41 setToggleButtonType:0];
        v98 = 0;
      }

      if ([elementCopy autoIncrementCount] && objc_msgSend(v116, "toggled") == -1)
      {
        v106 = imageView2;
        v107 = toggleItemIdentifier2;
        titleLayout = [v41 titleLayout];
        attributedString = [titleLayout attributedString];
        string = [attributedString string];

        v111 = string;
        if ([string length])
        {
          if (addButtonWithElement_width_context__sOnceToken != -1)
          {
            [SUUIViewModification(SUUIViewElementView) addButtonWithElement:width:context:];
          }

          toggleItemIdentifier2 = v107;
          imageView2 = v106;
          v104 = [addButtonWithElement_width_context__sNumberFormatter numberFromString:v111];
          if (v104)
          {
            v108 = v104;
            isToggled2 = [v104 integerValue];
            v104 = v108;
          }
        }

        else
        {
          imageView2 = v106;
          toggleItemIdentifier2 = v107;
        }

        if (isToggled2 < 1)
        {
          [v41 setButtonTitleText:@" "];
          [v41 setAutoIncrementCount:isToggled2];
        }

        else
        {
          [v41 setAutoIncrementCount:isToggled2];
          [v41 setButtonTitleText:v111];
        }

        [v41 setAutoIncrementCount:isToggled2];
        [v41 setToggled:{objc_msgSend(elementCopy, "isToggled")}];
      }

      else if ([elementCopy autoIncrementCount])
      {
        v109 = additionalButtonImage2;
        [v41 setToggled:{objc_msgSend(v116, "toggled") == 1}];
        if (isToggled2 < 1)
        {
          [v41 setButtonTitleText:@" "];
        }

        else
        {
          [v116 toggledString];
          v99 = v85;
          v101 = v100 = toggleItemIdentifier2;
          [v41 setButtonTitleText:v101];

          toggleItemIdentifier2 = v100;
          v85 = v99;
        }

        additionalButtonImage2 = v109;
      }

      else
      {
        [v41 setToggled:{objc_msgSend(elementCopy, "isToggled")}];
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

      [(SUUIButtonBorderStyle *)imageView2 setContents:v105];
    }

    else
    {
      [(SUUIButtonBorderStyle *)imageView2 setContents:v85];
    }

    [contextCopy sizeForImageElement:buttonImage2];
    [(SUUIButtonBorderStyle *)imageView2 setImageSize:?];
    v12 = v74;

    goto LABEL_60;
  }

  if (buttonViewType != 7)
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
  labelLayoutCache4 = [contextCopy labelLayoutCache];
  v59 = [labelLayoutCache4 layoutForWidth:width viewElement:elementCopy];
  [v12 setTitleLayout:v59];

  isEnabled5 = [elementCopy isEnabled];
  [v12 setEnabled:isEnabled5];
  v61 = 0.4;
  if (isEnabled5)
  {
    v61 = 1.0;
  }

  [v12 setAlpha:v61];
LABEL_83:
  attributes = [elementCopy attributes];
  v90 = [attributes objectForKeyedSubscript:@"privacy"];

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
    buttonTitleStyle = [elementCopy buttonTitleStyle];
    style6 = buttonTitleStyle;
    if (!buttonTitleStyle)
    {
      style6 = [elementCopy style];
    }

    ikColor2 = [style6 ikColor];
    [v92 setUsesTintColor:{objc_msgSend(ikColor2, "colorType") == 1}];

    if (!buttonTitleStyle)
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

- (id)addDividerWithElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v8 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AEF420];
  style = [elementCopy style];
  tintColor = [contextCopy tintColor];

  v11 = SUUIViewElementPlainColorWithStyle(style, tintColor);

  if (v11 || [elementCopy dividerType] == 3)
  {
    if ([elementCopy dividerType] == 3)
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

- (id)addHeaderViewWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8820];
  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addHorizontalListWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF98C0];
  style = [elementCopy style];
  [style elementPadding];
  [v10 setContentInset:?];

  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addHorizontalLockupWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9900];
  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addImageDeckViewWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8860];
  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addImageGridViewWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8880];
  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addImageViewWithElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  style = [elementCopy style];
  imageTreatment = [style imageTreatment];
  v10 = SUUIImageTreatmentForString(imageTreatment);

  if (v10 == 13)
  {
    v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AF99C0 viewElement:elementCopy context:contextCopy];
    if (style)
    {
      [style transform];
      [v11 setTransform:v27];
    }

    v13 = SUUIViewElementPlainColorWithStyle(style, 0);
    [v11 setTintColor:v13];

    [style elementPadding];
    [v11 setImagePadding:?];
    ikBackgroundColor = [style ikBackgroundColor];
    color = [ikBackgroundColor color];
    [v11 setBackgroundColor:color];
  }

  else if (v10 == 7)
  {
    v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AF9A20 viewElement:elementCopy context:contextCopy];
    ikBackgroundColor = [contextCopy borderDrawingCache];
    [v11 setBorderDrawingCache:ikBackgroundColor];
  }

  else
  {
    children = [elementCopy children];
    v16 = [children count];

    if (v16)
    {
      v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AF9840 viewElement:elementCopy context:contextCopy];
      [elementCopy size];
      [v11 reloadWithViewElement:elementCopy width:contextCopy context:?];
    }

    else
    {
      [elementCopy shadowOffset];
      if (v18 == *MEMORY[0x277CBF3A8] && v17 == *(MEMORY[0x277CBF3A8] + 8))
      {
        v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AF9940 viewElement:elementCopy context:contextCopy];
        [elementCopy layerShadowOpacity];
        if (v20 != 0.0)
        {
          layer = [v11 layer];
          [layer setMasksToBounds:0];

          layer2 = [v11 layer];
          [elementCopy layerShadowOpacity];
          [layer2 setShadowOpacity:?];

          layer3 = [v11 layer];
          [elementCopy layerShadowOffset];
          [layer3 setShadowOffset:?];
        }

        [elementCopy layerShadowRadius];
        if (v24 != 0.0)
        {
          layer4 = [v11 layer];
          [elementCopy layerShadowRadius];
          [layer4 setShadowRadius:?];
        }
      }

      else
      {
        v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AF9960 viewElement:elementCopy context:contextCopy];
        [v11 setContentMode:4];
      }
    }

    if (style)
    {
      [style transform];
      [v11 setTransform:v27];
    }

    ikBackgroundColor = SUUIViewElementPlainColorWithStyle(style, 0);
    [v11 setTintColor:ikBackgroundColor];
  }

  return v11;
}

- (id)addImageViewWithVideoElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  thumbnailImage = [elementCopy thumbnailImage];
  isEnabled = [elementCopy isEnabled];

  if (isEnabled)
  {
    style = [thumbnailImage style];
    v11 = [(SUUIViewModification *)self _addImageViewWithReuseIdentifier:0x286AEECE0 viewElement:thumbnailImage context:contextCopy];
    if (style)
    {
      [style transform];
      [v11 setTransform:&v13];
    }
  }

  else
  {
    v11 = [(SUUIViewModification *)self addImageViewWithElement:thumbnailImage context:contextCopy];
  }

  return v11;
}

- (id)addLabelViewWithElement:(id)element width:(double)width context:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  labelLayoutCache = [contextCopy labelLayoutCache];
  v11 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];

  v12 = [(SUUIViewModification *)self _attributedStringViewForLayout:v11];
  [v12 setLayout:v11];
  [v12 setContainsLinks:{objc_msgSend(elementCopy, "containsLinks")}];
  if ([elementCopy containsLinks])
  {
    linkDelegate = [elementCopy linkDelegate];
    [v12 setLinkDelegate:linkDelegate];
  }

  [v12 setStringTreatment:0];
  [v12 setTreatmentColor:0];
  style = [elementCopy style];
  ikColor = [style ikColor];
  [v12 setTextColorFollowsTintColor:{objc_msgSend(ikColor, "colorType") == 1}];

  if (v11)
  {
    trailingBadges = [elementCopy trailingBadges];
    badgeImageLoader = [contextCopy badgeImageLoader];
    badges = [elementCopy badges];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = [badges countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v27 = trailingBadges;
      v28 = contextCopy;
      LOBYTE(v21) = 0;
      v22 = *v30;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(badges);
          }

          v24 = *(*(&v29 + 1) + 8 * i);
          if (v21)
          {
            v21 = 1;
          }

          else
          {
            image = [*(*(&v29 + 1) + 8 * i) image];
            v21 = image == 0;
          }

          [badgeImageLoader loadImageForBadge:v24 layout:v11 reason:{1, v27, v28}];
        }

        v20 = [badges countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v20);
      trailingBadges = v27;
      contextCopy = v28;
      if (v21)
      {
        [badgeImageLoader connectStringView:v12];
      }
    }
  }

  else
  {
    trailingBadges = 0;
  }

  [v12 setRequiredBadges:trailingBadges];
  [v12 setBadgePlacement:{objc_msgSend(elementCopy, "badgePlacement") == 1}];

  return v12;
}

- (id)addLabelViewWithOrdinalElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  labelLayoutCache = [context labelLayoutCache];
  v10 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];

  v11 = [(SUUIViewModification *)self _attributedStringViewForLayout:v10];
  [v11 setLayout:v10];
  [v11 setStringTreatment:0];
  [v11 setTreatmentColor:0];
  style = [elementCopy style];

  ikColor = [style ikColor];
  [v11 setTextColorFollowsTintColor:{objc_msgSend(ikColor, "colorType") == 1}];

  return v11;
}

- (id)addMenuButtonWithTitleItem:(id)item width:(double)width context:(id)context
{
  contextCopy = context;
  itemCopy = item;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8620];
  [v10 setBorderStyle:0];
  [v10 setButtonType:2];
  [v10 setEnabled:{objc_msgSend(itemCopy, "isEnabled")}];
  labelLayoutCache = [contextCopy labelLayoutCache];

  v12 = [labelLayoutCache layoutForWidth:width viewElement:itemCopy];

  [v10 setTitleLayout:v12];
  [v10 setUsesTintColor:1];

  return v10;
}

- (id)addOfferViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF0300];
  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addStackListViewWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8DA0];
  style = [elementCopy style];
  [style elementPadding];
  [v10 setContentInset:?];

  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addStackItemViewWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF6060];
  style = [elementCopy style];
  [style elementPadding];
  [v10 setContentInset:?];

  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addReviewListTitleViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF99E0];
  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addResponseViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8BE0];
  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addStarRatingViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8DE0];
  [v10 setElementSpacing:3];
  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addStarRatingControlViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9A40];
  [v10 setEnabled:{objc_msgSend(elementCopy, "isEnabled")}];
  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addTabularLockupWithElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9A60];
  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)addTextViewWithElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF9A80];
  v11 = [contextCopy editorialLayoutForLabelElement:elementCopy width:width];
  v12 = [v11 bodyTextLayoutForOrientation:0];
  [v10 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v10 setEnabled:0];
  [v10 setFixedWidthTextFrame:{objc_msgSend(v12, "textFrame")}];
  moreButtonTitle = [elementCopy moreButtonTitle];
  [v10 setMoreButtonTitle:moreButtonTitle];

  if ([v12 requiresTruncation] && (objc_msgSend(contextCopy, "isEditorialLayoutExpanded:", v11) & 1) == 0)
  {
    isEnabled = [elementCopy isEnabled];
  }

  else
  {
    isEnabled = 0;
  }

  [v10 setUserInteractionEnabled:isEnabled];
  if ([contextCopy isEditorialLayoutExpanded:v11])
  {
    numberOfLines = 0;
  }

  else
  {
    numberOfLines = [elementCopy numberOfLines];
  }

  [v10 setNumberOfVisibleLines:numberOfLines];

  return v10;
}

- (id)addTomatoRatingViewWithViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:0x286AF8E00];
  [v10 reloadWithViewElement:elementCopy width:contextCopy context:width];

  return v10;
}

- (id)_addImageViewWithReuseIdentifier:(id)identifier viewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [(SUUIViewModification *)self addReusableViewWithReuseIdentifier:identifier];
  accessibilityText = [elementCopy accessibilityText];
  [v10 setAccessibilityLabel:accessibilityText];

  [v10 setUserInteractionEnabled:{objc_msgSend(elementCopy, "isEnabled")}];
  v12 = __RequestImage(elementCopy, contextCopy);
  [v10 setContents:v12];
  [contextCopy sizeForImageElement:elementCopy];
  v14 = v13;
  v16 = v15;

  [v10 setImageSize:{v14, v16}];

  return v10;
}

- (id)_itemStateForButton:(id)button
{
  buttonCopy = button;
  itemIdentifier = [buttonCopy itemIdentifier];
  storeIdentifier = [buttonCopy storeIdentifier];
  if (!storeIdentifier && itemIdentifier)
  {
    storeIdentifier = [[SUUIStoreIdentifier alloc] initWithLongLong:itemIdentifier];
  }

  if (storeIdentifier)
  {
    v6 = +[SUUIItemStateCenter defaultCenter];
    v7 = [v6 stateForItemWithStoreIdentifier:storeIdentifier];

    if (v7 && ([buttonCopy buyButtonDescriptor], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "canPersonalizeUsingItemState:", v7), v8, v9))
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

- (void)_styleItemOfferButton:(id)button forElement:(id)element context:(id)context
{
  buttonCopy = button;
  elementCopy = element;
  tintColor = [context tintColor];
  style = [elementCopy style];
  v10 = SUUIViewElementPlainColorWithStyle(style, tintColor);

  [buttonCopy setTintColor:v10];
  v11 = elementCopy;
  v12 = v11;
  if (v11)
  {
    parent = v11;
    do
    {
      v14 = parent;
      style2 = [parent style];
      ikBackgroundColor = [style2 ikBackgroundColor];
      v17 = SUUIViewElementPlainColorWithIKColor(ikBackgroundColor, tintColor);

      parent = [v14 parent];
    }

    while (parent && !v17);
  }

  else
  {
    v17 = 0;
    parent = 0;
  }

  v18 = [objc_opt_class() cloudTintColorForBackgroundColor:v17];
  [buttonCopy setCloudTintColor:v18];

  [buttonCopy setElement:v12];
  [buttonCopy setEnabled:{objc_msgSend(v12, "isEnabled")}];
  [buttonCopy setDisabledButSelectable:{objc_msgSend(v12, "isDisabledButSelectable")}];
  badgeResourceName = [v12 badgeResourceName];
  [buttonCopy setUniversal:{objc_msgSend(badgeResourceName, "isEqualToString:", @"plus"}];
}

- (id)_attributedStringViewForLayout:(id)layout
{
  [layout edgeInsetsForShadow];
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
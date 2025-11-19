@interface SUUIButtonViewElement
- (BOOL)isEnabled;
- (IKViewElementStyle)buttonTitleStyle;
- (SUUIButtonViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (SUUIBuyButtonDescriptor)buyButtonDescriptor;
- (SUUIImageViewElement)additionalButtonImage;
- (SUUIViewElementText)buttonText;
- (id)_parseButtonText;
- (id)applyUpdatesWithElement:(id)a3;
- (id)description;
- (id)personalizationLibraryItems;
- (unint64_t)elementType;
- (void)dealloc;
@end

@implementation SUUIButtonViewElement

- (SUUIButtonViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v74.receiver = self;
  v74.super_class = SUUIButtonViewElement;
  v12 = [(SUUIViewElement *)&v74 initWithDOMElement:v9 parent:v10 elementFactory:v11];
  if (!v12)
  {
    goto LABEL_53;
  }

  v62 = v11;
  v63 = v10;
  v13 = [v9 getAttribute:@"type"];
  v12->_buttonViewType = SUUIButtonViewTypeForString(v13);

  v14 = [v9 getAttribute:@"sub-type"];
  v15 = [v14 isEqualToString:@"toggle"];

  v12->_buttonViewSubType = v15;
  v16 = [v9 getAttribute:@"size-variant"];
  sizeVariant = v12->_sizeVariant;
  v12->_sizeVariant = v16;

  v18 = [v9 getAttribute:@"confirm-text"];
  confirmationText = v12->_confirmationText;
  v12->_confirmationText = v18;

  v20 = [v9 getAttribute:@"data-content-id"];
  v12->_itemIdentifier = [v20 longLongValue];

  v21 = [[SUUIStoreIdentifier alloc] initWithLongLong:v12->_itemIdentifier];
  storeIdentifier = v12->_storeIdentifier;
  v12->_storeIdentifier = v21;

  objc_storeStrong(&v12->_xml, a3);
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __66__SUUIButtonViewElement_initWithDOMElement_parent_elementFactory___block_invoke;
  v69[3] = &unk_2798F5FB8;
  v69[4] = &v70;
  [(SUUIViewElement *)v12 enumerateChildrenUsingBlock:v69];
  if ((v71[3] & 1) == 0)
  {
    v23 = [(SUUIButtonViewElement *)v12 _parseButtonText];
    buttonText = v12->_buttonText;
    v12->_buttonText = v23;
  }

  v66 = [v9 getAttribute:@"data-feed-url"];
  if ([v66 length])
  {
    [(SUUIStoreIdentifier *)v12->_storeIdentifier setPodcastFeedURLIdentifier:v66];
  }

  v25 = [v9 getAttribute:@"bundle-id"];
  bundleIdentifier = v12->_bundleIdentifier;
  v12->_bundleIdentifier = v25;

  if ([(NSString *)v12->_bundleIdentifier length])
  {
    [(SUUIStoreIdentifier *)v12->_storeIdentifier setBundleIdentifier:v12->_bundleIdentifier];
  }

  v27 = [v9 getAttribute:@"selected"];
  v12->_selected = [v27 BOOLValue];

  v64 = [v9 getAttribute:@"badge"];
  if (v64)
  {
    v28 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v64];
    v29 = [v28 host];
    badgeResourceName = v12->_badgeResourceName;
    v12->_badgeResourceName = v29;
  }

  v31 = [v9 getAttribute:@"disabled"];
  v61 = v31;
  if ([v31 length])
  {
    v32 = [v31 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v32) = -1;
  }

  v12->_enabled = v32;
  v33 = [v9 getAttribute:@"data-type"];
  v67 = [v9 getAttribute:@"data-variant"];
  if ([v33 length])
  {
    v68 = v33;
    if (([(__CFString *)v68 isEqualToString:@"redownload"]& 1) != 0 || ([(__CFString *)v68 isEqualToString:@"get"]& 1) != 0 || ([(__CFString *)v68 isEqualToString:@"preorder"]& 1) != 0 || ([(__CFString *)v68 isEqualToString:@"purchased"]& 1) != 0)
    {
    }

    else
    {
      v60 = [(__CFString *)v68 isEqualToString:@"update"];

      if (!v60)
      {
        goto LABEL_22;
      }
    }

    v68 = @"buy";
  }

  else
  {
    v68 = 0;
  }

LABEL_22:
  if ([v67 length] && !objc_msgSend(v67, "isEqualToString:", @"PLUS"))
  {
    if (v68 && v67)
    {
      v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v68, v67, v61];
      variantIdentifier = v12->_variantIdentifier;
      v12->_variantIdentifier = v36;
      goto LABEL_30;
    }
  }

  else
  {

    v67 = 0;
  }

  if (v68)
  {
    v34 = v68;
    variantIdentifier = v12->_variantIdentifier;
    v12->_variantIdentifier = &v34->isa;
LABEL_30:
  }

  if (v12->_buttonViewType == 12)
  {
    v37 = [v9 getAttribute:@"data-content-id"];
    playItemIdentifier = v12->_playItemIdentifier;
    v12->_playItemIdentifier = v37;
  }

  if (v12->_buttonViewSubType == 1)
  {
    v39 = [v9 getAttribute:@"toggled-text"];
    toggledText = v12->_toggledText;
    v12->_toggledText = v39;

    v41 = [v9 getAttribute:@"non-toggled-text"];
    nonToggledText = v12->_nonToggledText;
    v12->_nonToggledText = v41;
  }

  v65 = [v9 getAttribute:@"big-hit-size"];
  if ([v65 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v65 floatValue];
    v12->_bigHitSize = v43;
  }

  v44 = [v9 getAttribute:@"big-hit"];
  if ([v44 length])
  {
    v45 = [v44 lowercaseString];
    v12->_bigHitButton = [v45 isEqualToString:@"true"];
  }

  v46 = [v9 getAttribute:@"show-on-demand"];
  if ([v46 length])
  {
    v47 = [v46 lowercaseString];
    v12->_showOnDemand = [v47 isEqualToString:@"true"];
  }

  v48 = [v9 getAttribute:@"toggled"];
  if ([v48 length])
  {
    v49 = [v48 lowercaseString];
    v12->_toggled = [v49 isEqualToString:@"true"];
  }

  v50 = [v9 getAttribute:@"toggle-id"];
  if ([v50 length])
  {
    v51 = [v9 getAttribute:@"toggle-id"];
    toggleItemIdentifier = v12->_toggleItemIdentifier;
    v12->_toggleItemIdentifier = v51;
  }

  v53 = [v9 getAttribute:@"auto-increment-count"];
  if ([v53 length])
  {
    v54 = [v53 lowercaseString];
    v12->_autoIncrementCount = [v54 isEqualToString:@"true"];
  }

  v55 = [v9 getAttribute:@"disabled-but-selectable"];
  if ([v55 length])
  {
    v56 = [v55 lowercaseString];
    v12->_disabledButSelectable = [v56 isEqualToString:@"true"];
  }

  v57 = [v9 getAttribute:@"suppress-cloud-restore"];
  if ([v57 length])
  {
    v58 = [v57 lowercaseString];
    v12->_suppressCloudRestore = [v58 isEqualToString:@"true"];
  }

  _Block_object_dispose(&v70, 8);
  v11 = v62;
  v10 = v63;
LABEL_53:

  return v12;
}

void __66__SUUIButtonViewElement_initWithDOMElement_parent_elementFactory___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  if ([v7 elementType] == 138)
  {
    v5 = [v7 elementName];
    v6 = [v5 isEqualToString:@"span"];

    if (v6)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

- (void)dealloc
{
  xml = self->_xml;
  if (xml)
  {
    v4 = [(SUUIButtonViewElement *)self appDocument];
    SUUIViewElementTextDeadlockFix(xml, v4);

    v5 = self->_xml;
    self->_xml = 0;
  }

  v6.receiver = self;
  v6.super_class = SUUIButtonViewElement;
  [(SUUIViewElement *)&v6 dealloc];
}

- (SUUIImageViewElement)additionalButtonImage
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__97;
  v9 = __Block_byref_object_dispose__97;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SUUIButtonViewElement_additionalButtonImage__block_invoke;
  v4[3] = &unk_2798FCDC8;
  v4[4] = v11;
  v4[5] = &v5;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  _Block_object_dispose(v11, 8);

  return v2;
}

void __46__SUUIButtonViewElement_additionalButtonImage__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 elementType] == 49)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24) == 1)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }

    else
    {
      *(v6 + 24) = 1;
    }
  }
}

- (SUUIViewElementText)buttonText
{
  buttonText = self->_buttonText;
  if (!buttonText)
  {
    v4 = [(SUUIButtonViewElement *)self _parseButtonText];
    v5 = self->_buttonText;
    self->_buttonText = v4;

    buttonText = self->_buttonText;
  }

  return buttonText;
}

- (IKViewElementStyle)buttonTitleStyle
{
  v2 = [(SUUIViewElement *)self firstChildForElementType:138];
  v3 = v2;
  if (v2 && ([v2 elementName], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"span"), v4, (v5 & 1) == 0))
  {
    v6 = [v3 style];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SUUIBuyButtonDescriptor)buyButtonDescriptor
{
  v3 = [(SUUIButtonViewElement *)self buttonViewType]- 2;
  if (v3 <= 7 && ((0x87u >> v3) & 1) != 0)
  {
    v4 = qword_259FCC050[v3];
    buyButtonDescriptor = self->_buyButtonDescriptor;
    if (!buyButtonDescriptor)
    {
      v6 = objc_alloc_init(SUUIBuyButtonDescriptor);
      v7 = self->_buyButtonDescriptor;
      self->_buyButtonDescriptor = v6;

      buyButtonDescriptor = self->_buyButtonDescriptor;
    }

    [(SUUIBuyButtonDescriptor *)buyButtonDescriptor setButtonType:v4];
    v8 = self->_buyButtonDescriptor;
    v9 = [(SUUIButtonViewElement *)self buttonText];
    v10 = [v9 string];
    [(SUUIBuyButtonDescriptor *)v8 setButtonText:v10];

    v11 = self->_buyButtonDescriptor;
    v12 = [(SUUIButtonViewElement *)self confirmationText];
    [(SUUIBuyButtonDescriptor *)v11 setConfirmationText:v12];

    [(SUUIBuyButtonDescriptor *)self->_buyButtonDescriptor setElementType:[(SUUIButtonViewElement *)self elementType]];
    [(SUUIBuyButtonDescriptor *)self->_buyButtonDescriptor setItemIdentifier:[(SUUIButtonViewElement *)self itemIdentifier]];
    v13 = self->_buyButtonDescriptor;
    v14 = [(SUUIButtonViewElement *)self storeIdentifier];
    [(SUUIBuyButtonDescriptor *)v13 setStoreIdentifier:v14];

    v15 = self->_buyButtonDescriptor;
    v16 = [(SUUIButtonViewElement *)self variantIdentifier];
    [(SUUIBuyButtonDescriptor *)v15 setVariantIdentifier:v16];

    [(SUUIBuyButtonDescriptor *)self->_buyButtonDescriptor setShouldSuppressCloudRestore:[(SUUIButtonViewElement *)self suppressCloudRestore]];
    v17 = self->_buyButtonDescriptor;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SUUIButtonViewElement;
  v5 = [(SUUIViewElement *)&v26 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 == self || v5 != self)
  {
    if (v5 == self)
    {
      goto LABEL_7;
    }

    bundleIdentifier = [(SUUIButtonViewElement *)self buyButtonDescriptor];
    [(SUUIButtonViewElement *)v4 setBuyButtonDescriptor:bundleIdentifier];
  }

  else
  {
    v7 = [(SUUIButtonViewElement *)v4 badgeResourceName];
    badgeResourceName = self->_badgeResourceName;
    self->_badgeResourceName = v7;

    v9 = [(SUUIButtonViewElement *)v4 buttonText];
    buttonText = self->_buttonText;
    self->_buttonText = v9;

    self->_buttonViewType = [(SUUIButtonViewElement *)v4 buttonViewType];
    v11 = [(SUUIButtonViewElement *)v4 buyButtonDescriptor];
    buyButtonDescriptor = self->_buyButtonDescriptor;
    self->_buyButtonDescriptor = v11;

    v13 = [(SUUIButtonViewElement *)v4 confirmationText];
    confirmationText = self->_confirmationText;
    self->_confirmationText = v13;

    self->_enabled = v4->_enabled;
    self->_itemIdentifier = [(SUUIButtonViewElement *)v4 itemIdentifier];
    v15 = [(SUUIButtonViewElement *)v4 nonToggledText];
    nonToggledText = self->_nonToggledText;
    self->_nonToggledText = v15;

    self->_selected = [(SUUIButtonViewElement *)v4 isSelected];
    v17 = [(SUUIButtonViewElement *)v4 storeIdentifier];
    storeIdentifier = self->_storeIdentifier;
    self->_storeIdentifier = v17;

    v19 = [(SUUIButtonViewElement *)v4 toggledText];
    toggledText = self->_toggledText;
    self->_toggledText = v19;

    v21 = [(SUUIButtonViewElement *)v4 variantIdentifier];
    variantIdentifier = self->_variantIdentifier;
    self->_variantIdentifier = v21;

    v23 = [(SUUIButtonViewElement *)v4 bundleIdentifier];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v23;
  }

LABEL_7:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIButtonViewElement;
  v4 = [(SUUIButtonViewElement *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: Type: %ld, ID: %lld, Variant: %@", v4, self->_buttonViewType, self->_itemIdentifier, self->_variantIdentifier];

  return v5;
}

- (unint64_t)elementType
{
  v2 = self->_buttonViewType - 2;
  if (v2 > 7)
  {
    return 12;
  }

  else
  {
    return qword_259FCC090[v2];
  }
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = SUUIButtonViewElement;
  return [(SUUIViewElement *)&v6 isEnabled];
}

- (id)personalizationLibraryItems
{
  if (self->_itemIdentifier)
  {
    v3 = objc_alloc_init(SUUILibraryItem);
    [(SUUILibraryItem *)v3 setStoreIdentifier:self->_storeIdentifier];
    v4 = [MEMORY[0x277CBEB98] setWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_parseButtonText
{
  xml = self->_xml;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SUUIButtonViewElement__parseButtonText__block_invoke;
  v5[3] = &unk_2798F8528;
  v5[4] = self;
  v3 = [(IKTextParser *)SUUIViewElementText textWithDOMElement:xml usingParseBlock:v5];

  return v3;
}

id __41__SUUIButtonViewElement__parseButtonText__block_invoke(uint64_t a1, uint64_t a2, void *a3, BOOL *a4)
{
  v6 = a3;
  v7 = [v6 nodeName];
  v8 = [v7 isEqual:@"span"];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v6 getAttribute:*MEMORY[0x277D1AF28]];
    v11 = [v9 elementWithIdentifier:v10];

    if (v11)
    {
      v12 = SUUILabelStringAttributesWithSpanElement(v11);
      v13 = objc_alloc(MEMORY[0x277CCA898]);
      v14 = [v6 textContent];
      v15 = [v13 initWithString:v14 attributes:v12];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  *a4 = v15 == 0;

  return v15;
}

@end
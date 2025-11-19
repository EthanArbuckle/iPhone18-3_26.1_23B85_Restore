@interface SUUILabelViewElement
- (SUUILabelViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (SUUILinkHandler)linkDelegate;
- (id)_stringFromDateElement:(id)a3;
- (id)_stringFromDurationElement:(id)a3;
- (id)_stringFromNumberElement:(id)a3;
- (id)applyUpdatesWithElement:(id)a3;
- (id)uniquingMapKey;
- (void)_createText:(id)a3;
- (void)_walkDOM:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (void)dealloc;
- (void)linkTapped:(id)a3 range:(_NSRange)a4;
@end

@implementation SUUILabelViewElement

- (SUUILabelViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = SUUILabelViewElement;
  v12 = [(SUUIViewElement *)&v24 initWithDOMElement:v9 parent:v10 elementFactory:v11];
  if (v12)
  {
    v13 = [v9 tagName];
    v12->_labelViewStyle = SUUILabelViewStyleForString(v13);

    v14 = [v9 getAttribute:@"moreLabel"];
    moreButtonTitle = v12->_moreButtonTitle;
    v12->_moreButtonTitle = v14;

    v16 = [v9 getAttribute:@"maxLines"];
    if ([v16 length])
    {
      v17 = [v16 integerValue];
    }

    else
    {
      v17 = 1;
    }

    v12->_numberOfLines = v17;
    v12->_badgePlacement = 0;
    v18 = [v9 getAttribute:@"badgePlacement"];
    v19 = [v18 isEqualToString:@"firstBaseline"];
    v20 = 0;
    if ((v19 & 1) == 0)
    {
      if (![v18 isEqualToString:@"trailing"])
      {
LABEL_9:
        v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
        domObjectsToViewElements = v12->_domObjectsToViewElements;
        v12->_domObjectsToViewElements = v21;

        [(SUUILabelViewElement *)v12 _walkDOM:v9 parent:v10 elementFactory:v11];
        objc_storeStrong(&v12->_xml, a3);
        [(SUUILabelViewElement *)v12 _createText:v12->_xml];

        goto LABEL_10;
      }

      v20 = 1;
    }

    v12->_badgePlacement = v20;
    goto LABEL_9;
  }

LABEL_10:

  return v12;
}

- (void)dealloc
{
  xml = self->_xml;
  if (xml)
  {
    v4 = [(SUUILabelViewElement *)self appDocument];
    SUUIViewElementTextDeadlockFix(xml, v4);

    v5 = self->_xml;
    self->_xml = 0;
  }

  v6.receiver = self;
  v6.super_class = SUUILabelViewElement;
  [(SUUIViewElement *)&v6 dealloc];
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUUILabelViewElement;
  v5 = [(SUUIViewElement *)&v13 applyUpdatesWithElement:v4];
  if (v5 == self && v4 != self && v4 != 0)
  {
    self->_labelViewStyle = [(SUUILabelViewElement *)v4 labelViewStyle];
    v9 = [(SUUILabelViewElement *)v4 moreButtonTitle];
    moreButtonTitle = self->_moreButtonTitle;
    self->_moreButtonTitle = v9;

    self->_numberOfLines = [(SUUILabelViewElement *)v4 numberOfLines];
    v11 = [(SUUILabelViewElement *)v4 text];
    text = self->_text;
    self->_text = v11;
  }

  return v5;
}

- (id)uniquingMapKey
{
  text = self->_text;
  if (text)
  {
    v3 = text;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUUILabelViewElement;
    v3 = [(SUUIViewElement *)&v5 uniquingMapKey];
  }

  return v3;
}

- (void)linkTapped:(id)a3 range:(_NSRange)a4
{
  location = a4.location;
  v6 = [(IKTextParser *)self->_text attributedString:a3];
  v7 = [v6 attribute:0x286AEE4E0 atIndex:location effectiveRange:&v9];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_linkToViewButtonElements objectForKey:v7];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:&__block_literal_global_41];
      }
    }
  }
}

- (void)_createText:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__62;
  v19[4] = __Block_byref_object_dispose__62;
  v20 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __36__SUUILabelViewElement__createText___block_invoke;
  v14 = &unk_2798FBD20;
  v15 = self;
  v7 = v5;
  v16 = v7;
  v8 = v6;
  v17 = v8;
  v18 = v19;
  v9 = [(IKTextParser *)SUUIViewElementText textWithDOMElement:v4 usingParseBlock:&v11];
  text = self->_text;
  self->_text = v9;

  if ([v8 count])
  {
    objc_storeStrong(&self->_trailingBadges, v6);
  }

  if ([v7 count])
  {
    objc_storeStrong(&self->_badges, v5);
  }

  _Block_object_dispose(v19, 8);
}

__CFString *__36__SUUILabelViewElement__createText___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v62[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v8];
  v10 = [*(*(a1 + 32) + 344) objectForKey:v9];
  v11 = SUUILabelStringAttributesWithSpanElement(v10);
  v12 = [v8 nodeName];
  if ([v12 isEqualToString:@"badge"])
  {
    v13 = v7;
    *a4 = 1;
    v14 = v10;
    v15 = [[SUUIBadgeTextAttachment alloc] initWithViewElement:v14];
    if (v15)
    {
      [*(a1 + 40) addObject:v15];
      [*(a1 + 48) addObject:v15];
    }

    v16 = 0;
    v17 = 0;
    v7 = v13;
    goto LABEL_19;
  }

  if ([v12 isEqualToString:@"button"])
  {
    v51 = v7;
    *a4 = 0;
    *(*(a1 + 32) + 288) = 1;
    objc_storeWeak((*(a1 + 32) + 312), *(a1 + 32));
    v18 = MEMORY[0x277CCACA8];
    v19 = *(a1 + 32);
    v20 = *(v19 + 304);
    *(v19 + 304) = v20 + 1;
    v21 = [v18 stringWithFormat:@"%li", v20];
    v22 = *(*(a1 + 32) + 320);
    if (!v22)
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v24 = *(a1 + 32);
      v25 = *(v24 + 320);
      *(v24 + 320) = v23;

      v22 = *(*(a1 + 32) + 320);
    }

    [v22 setObject:v10 forKey:v21];
    v26 = [*(a1 + 32) _stringFromNumberElement:v8];
    v27 = [v10 style];
    v28 = [v27 ikColor];
    v29 = [v28 color];

    if (v29)
    {
      v61[0] = 0x286AEE500;
      v61[1] = 0x286AEE4E0;
      v62[0] = v29;
      v62[1] = v21;
      v30 = MEMORY[0x277CBEAC0];
      v31 = v62;
      v32 = v61;
      v33 = 2;
    }

    else
    {
      v59 = 0x286AEE4E0;
      v60 = v21;
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v60;
      v32 = &v59;
      v33 = 1;
    }

    v35 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
    v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v26 attributes:v35];

    v16 = 0;
    v7 = v51;
    goto LABEL_19;
  }

  [*(a1 + 48) removeAllObjects];
  if ([v12 isEqualToString:@"number"])
  {
    *a4 = 1;
    v34 = [*(a1 + 32) _stringFromNumberElement:v8];
LABEL_18:
    v17 = v34;
    v16 = 0;
    goto LABEL_19;
  }

  if ([v12 isEqualToString:@"date"])
  {
    *a4 = 1;
    v34 = [*(a1 + 32) _stringFromDateElement:v8];
    goto LABEL_18;
  }

  if ([v12 isEqualToString:@"duration"])
  {
    *a4 = 1;
    v34 = [*(a1 + 32) _stringFromDurationElement:v8];
    goto LABEL_18;
  }

  if ([v12 isEqualToString:@"br"])
  {
    v16 = 0;
    *a4 = 1;
    v17 = @"\n";
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if ([0 length] || !objc_msgSend(v12, "isEqualToString:", @"span"))
    {
      v39 = 0;
    }

    else
    {
      v48 = v12;
      v49 = v10;
      v50 = v9;
      v52 = v7;
      [v8 childNodesAsArray];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v57 = 0u;
      v37 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = 0;
        v40 = *v55;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v55 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*(&v54 + 1) + 8 * i);
            v43 = [v42 nodeName];
            v44 = [v43 isEqualToString:@"#text"];

            if (v44)
            {
              if (!v39)
              {
                v39 = objc_opt_new();
              }

              v45 = [v42 textContent];
              v46 = [v39 stringByAppendingString:v45];

              *a4 = 0;
              v39 = v46;
            }
          }

          v38 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
        }

        while (v38);
      }

      else
      {
        v39 = 0;
      }

      v9 = v50;
      v7 = v52;
      v10 = v49;
      v12 = v48;
    }

    if (v11 | v39)
    {
      v47 = &stru_286AECDE0;
      if (v39)
      {
        v47 = v39;
      }

      v16 = v47;

      v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v16 attributes:v11];
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }
  }

LABEL_19:

  return v17;
}

- (id)_stringFromDateElement:(id)a3
{
  v3 = a3;
  if (!_stringFromDateElement__sOutputFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = _stringFromDateElement__sOutputFormatter;
    _stringFromDateElement__sOutputFormatter = v4;

    [_stringFromDateElement__sOutputFormatter setDateStyle:2];
    [_stringFromDateElement__sOutputFormatter setTimeStyle:0];
  }

  v6 = [v3 textContent];
  v7 = SUUIViewElementDateWithString(v6);
  if (v7)
  {
    v8 = [_stringFromDateElement__sOutputFormatter stringFromDate:v7];
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (id)_stringFromDurationElement:(id)a3
{
  v3 = a3;
  if (!_stringFromDurationElement__sInputFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v5 = _stringFromDurationElement__sInputFormatter;
    _stringFromDurationElement__sInputFormatter = v4;
  }

  v6 = [v3 textContent];
  v7 = [_stringFromDurationElement__sInputFormatter numberFromString:v6];
  v8 = v7;
  if (!v7)
  {
    v17 = 0;
    goto LABEL_12;
  }

  v9 = [v7 integerValue];
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [v10 dateByAddingTimeInterval:v9];
  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [v12 components:224 fromDate:v10 toDate:v11 options:0];
  if ([v13 hour] < 1)
  {
    v14 = &_stringFromDurationElement__sOutputFormatter;
    v15 = _stringFromDurationElement__sOutputFormatter;
    if (!_stringFromDurationElement__sOutputFormatter)
    {
      v16 = 192;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = &_stringFromDurationElement__sHourOutputFormatter;
    v15 = _stringFromDurationElement__sHourOutputFormatter;
    if (!_stringFromDurationElement__sHourOutputFormatter)
    {
      v16 = 224;
LABEL_10:
      v18 = objc_alloc_init(MEMORY[0x277CCA958]);
      v19 = *v14;
      *v14 = v18;

      [*v14 setUnitsStyle:0];
      [*v14 setZeroFormattingBehavior:0x10000];
      [*v14 setFormattingContext:2];
      [*v14 setAllowedUnits:v16];
      v15 = *v14;
    }
  }

  v20 = v15;
  v17 = [v20 stringFromDateComponents:v13];

LABEL_12:
  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v6;
  }

  v22 = v21;

  return v21;
}

- (id)_stringFromNumberElement:(id)a3
{
  v3 = a3;
  if (!_stringFromNumberElement__sInputFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v5 = _stringFromNumberElement__sInputFormatter;
    _stringFromNumberElement__sInputFormatter = v4;
  }

  if (!_stringFromNumberElement__sOutputFormatter)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v7 = _stringFromNumberElement__sOutputFormatter;
    _stringFromNumberElement__sOutputFormatter = v6;

    [_stringFromNumberElement__sOutputFormatter setNumberStyle:1];
  }

  v8 = [v3 textContent];
  v9 = [_stringFromNumberElement__sInputFormatter numberFromString:v8];
  if (v9)
  {
    v10 = [_stringFromNumberElement__sOutputFormatter stringFromNumber:v9];
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  return v11;
}

- (void)_walkDOM:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 nodeName];
  if ([v11 isEqualToString:@"span"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_msgSend(v11, "isEqualToString:", @"badge") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"button"))
  {
    v12 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v8];
    v13 = [v10 elementForDOMElement:v8 parent:v9];
    [(NSMutableDictionary *)self->_domObjectsToViewElements setObject:v13 forKey:v12];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = [v8 childNodesAsArray];
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(SUUILabelViewElement *)self _walkDOM:*(*(&v19 + 1) + 8 * v18++) parent:v9 elementFactory:v10];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (SUUILinkHandler)linkDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_linkDelegate);

  return WeakRetained;
}

@end
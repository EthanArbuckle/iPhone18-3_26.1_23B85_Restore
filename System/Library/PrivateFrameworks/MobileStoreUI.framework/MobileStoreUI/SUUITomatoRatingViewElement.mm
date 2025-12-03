@interface SUUITomatoRatingViewElement
- (SUUITomatoRatingViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUITomatoRatingViewElement

- (SUUITomatoRatingViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v22.receiver = self;
  v22.super_class = SUUITomatoRatingViewElement;
  v9 = [(SUUIViewElement *)&v22 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"value"];
    [v10 floatValue];
    v9->_tomatoRating = v11;

    v12 = [elementCopy getAttribute:@"freshness"];
    if ([v12 length])
    {
      if (![v12 isEqualToString:@"certified"])
      {
        if ([v12 isEqualToString:@"fresh"])
        {
          goto LABEL_9;
        }

        if ([v12 isEqualToString:@"rotten"])
        {
          goto LABEL_11;
        }

LABEL_13:
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __72__SUUITomatoRatingViewElement_initWithDOMElement_parent_elementFactory___block_invoke;
        v20[3] = &unk_2798F8528;
        v16 = v9;
        v21 = v16;
        v17 = [(IKTextParser *)SUUIViewElementText textWithDOMElement:elementCopy usingParseBlock:v20];
        ratingText = v16->_ratingText;
        v16->_ratingText = v17;

        goto LABEL_14;
      }
    }

    else
    {
      v13 = [elementCopy getAttribute:@"certified"];
      bOOLValue = [v13 BOOLValue];

      if (!bOOLValue)
      {
        if (v9->_tomatoRating >= 0.6)
        {
LABEL_9:
          v15 = 1;
LABEL_12:
          v9->_freshness = v15;
          goto LABEL_13;
        }

LABEL_11:
        v15 = 2;
        goto LABEL_12;
      }
    }

    v9->_freshness = 0;
    goto LABEL_13;
  }

LABEL_14:

  return v9;
}

id __72__SUUITomatoRatingViewElement_initWithDOMElement_parent_elementFactory___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (!_block_invoke_sRatingFormatter)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v7 = _block_invoke_sRatingFormatter;
    _block_invoke_sRatingFormatter = v6;

    [_block_invoke_sRatingFormatter setNumberStyle:3];
    [_block_invoke_sRatingFormatter setMaximumFractionDigits:0];
  }

  *a4 = 0;
  v8 = objc_alloc(MEMORY[0x277CCABB0]);
  LODWORD(v9) = *(*(a1 + 32) + 288);
  v10 = [v8 initWithFloat:v9];
  v11 = [_block_invoke_sRatingFormatter stringFromNumber:v10];

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUITomatoRatingViewElement;
  v5 = [(SUUIViewElement *)&v9 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_freshness = [(SUUITomatoRatingViewElement *)elementCopy freshness];
    [(SUUITomatoRatingViewElement *)elementCopy tomatoRating];
    self->_tomatoRating = v7;
  }

  return v6;
}

@end
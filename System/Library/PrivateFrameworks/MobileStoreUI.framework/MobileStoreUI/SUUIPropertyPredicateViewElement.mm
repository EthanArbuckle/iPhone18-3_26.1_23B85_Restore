@interface SUUIPropertyPredicateViewElement
- (SUUIPropertyPredicateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (id)entityValuePredicate;
@end

@implementation SUUIPropertyPredicateViewElement

- (SUUIPropertyPredicateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v20.receiver = self;
  v20.super_class = SUUIPropertyPredicateViewElement;
  v9 = [(SUUIViewElement *)&v20 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"property"];
    if ([v10 length])
    {
      v11 = [v10 copy];
      property = v9->_property;
      v9->_property = v11;
    }

    v13 = [elementCopy getAttribute:@"value"];
    if ([v13 length])
    {
      v14 = [v13 copy];
      value = v9->_value;
      v9->_value = v14;
    }

    v16 = [elementCopy getAttribute:@"comparisonType"];
    if ([v16 length])
    {
      v17 = v16;
      if ([v17 isEqualToString:@"not-equal"])
      {
        v18 = 1;
      }

      else if ([v17 isEqualToString:@"greater-than"])
      {
        v18 = 2;
      }

      else if ([v17 isEqualToString:@"greater-than-or-equal"])
      {
        v18 = 3;
      }

      else if ([v17 isEqualToString:@"less-than"])
      {
        v18 = 4;
      }

      else if ([v17 isEqualToString:@"less-than-or-equal"])
      {
        v18 = 5;
      }

      else
      {
        v18 = 0;
      }

      v9->_comparisonType = v18;
    }
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SUUIPropertyPredicateViewElement;
  v5 = [(SUUIViewElement *)&v14 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_comparisonType = [(SUUIPropertyPredicateViewElement *)elementCopy comparisonType];
    property = [(SUUIPropertyPredicateViewElement *)elementCopy property];
    v8 = [property copy];
    property = self->_property;
    self->_property = v8;

    value = [(SUUIPropertyPredicateViewElement *)elementCopy value];
    v11 = [value copy];
    value = self->_value;
    self->_value = v11;
  }

  return v6;
}

- (id)entityValuePredicate
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SUUIPropertyPredicateViewElement_entityValuePredicate__block_invoke;
  v4[3] = &unk_2798FAA88;
  v4[4] = self;
  v2 = [MEMORY[0x277CCAC30] predicateWithBlock:v4];

  return v2;
}

uint64_t __56__SUUIPropertyPredicateViewElement_entityValuePredicate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 conformsToProtocol:&unk_286C70D90])
  {
    v7 = v5;
    v8 = [*(a1 + 32) property];
    v9 = [v7 valueForEntityProperty:v8];

    v10 = [*(a1 + 32) value];
    if (objc_opt_respondsToSelector())
    {
      v11 = [*(a1 + 32) property];
      v12 = [v7 nativeValueForStringValue:v10 forProperty:v11];

      v10 = v12;
    }

    v13 = [*(a1 + 32) comparisonType];
    if (v13 == 1)
    {
      if (v9 == v10)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v9 isEqual:v10] ^ 1;
      }

      goto LABEL_26;
    }

    if (!v13)
    {
      if (v9 == v10)
      {
        v14 = 1;
      }

      else
      {
        v14 = [v9 isEqual:v10];
      }

      goto LABEL_26;
    }

    v14 = 0;
    if (!v9 || !v10)
    {
      goto LABEL_26;
    }

    v15 = [v9 compare:v10];
    v16 = [*(a1 + 32) comparisonType];
    if (v16 > 3)
    {
      if (v16 == 4 || v16 == 5)
      {
        v17 = v15 + 1 >= 2;
LABEL_22:
        v14 = !v17;
        goto LABEL_26;
      }
    }

    else
    {
      if (v16 == 2)
      {
        v14 = v15 == 1;
LABEL_26:

        goto LABEL_27;
      }

      if (v16 == 3)
      {
        v17 = v15 >= 2;
        goto LABEL_22;
      }
    }

    __56__SUUIPropertyPredicateViewElement_entityValuePredicate__block_invoke_cold_1();
  }

  v14 = 0;
LABEL_27:

  return v14;
}

@end
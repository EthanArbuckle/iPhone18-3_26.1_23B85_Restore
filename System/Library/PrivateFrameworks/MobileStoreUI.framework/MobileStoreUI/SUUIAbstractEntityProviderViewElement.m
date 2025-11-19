@interface SUUIAbstractEntityProviderViewElement
- (SUUIAbstractEntityProviderViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIAbstractEntityProviderViewElement

- (SUUIAbstractEntityProviderViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v19.receiver = self;
  v19.super_class = SUUIAbstractEntityProviderViewElement;
  v9 = [(SUUIViewElement *)&v19 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"entityType"];
    if ([v10 length])
    {
      v11 = [v10 copy];
      entityTypeString = v9->_entityTypeString;
      v9->_entityTypeString = v11;
    }

    v13 = [v8 getAttribute:@"prefetchedProperties"];
    v14 = [v13 mutableCopy];

    [v14 replaceOccurrencesOfString:@" " withString:&stru_286AECDE0 options:1 range:{0, objc_msgSend(v14, "length")}];
    if ([v14 length])
    {
      v15 = [v14 componentsSeparatedByString:{@", "}];
    }

    else
    {
      v15 = 0;
    }

    if ([v15 count])
    {
      v16 = [v15 copy];
      prefetchedProperties = v9->_prefetchedProperties;
      v9->_prefetchedProperties = v16;
    }
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SUUIAbstractEntityProviderViewElement;
  v5 = [(SUUIViewElement *)&v14 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    v7 = [(SUUIAbstractEntityProviderViewElement *)v4 entityTypeString];
    v8 = [v7 copy];
    entityTypeString = self->_entityTypeString;
    self->_entityTypeString = v8;

    v10 = [(SUUIAbstractEntityProviderViewElement *)v4 prefetchedProperties];
    v11 = [v10 copy];
    prefetchedProperties = self->_prefetchedProperties;
    self->_prefetchedProperties = v11;
  }

  return v6;
}

@end
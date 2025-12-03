@interface SUUIAbstractEntityProviderViewElement
- (SUUIAbstractEntityProviderViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIAbstractEntityProviderViewElement

- (SUUIAbstractEntityProviderViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v19.receiver = self;
  v19.super_class = SUUIAbstractEntityProviderViewElement;
  v9 = [(SUUIViewElement *)&v19 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"entityType"];
    if ([v10 length])
    {
      v11 = [v10 copy];
      entityTypeString = v9->_entityTypeString;
      v9->_entityTypeString = v11;
    }

    v13 = [elementCopy getAttribute:@"prefetchedProperties"];
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

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SUUIAbstractEntityProviderViewElement;
  v5 = [(SUUIViewElement *)&v14 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    entityTypeString = [(SUUIAbstractEntityProviderViewElement *)elementCopy entityTypeString];
    v8 = [entityTypeString copy];
    entityTypeString = self->_entityTypeString;
    self->_entityTypeString = v8;

    prefetchedProperties = [(SUUIAbstractEntityProviderViewElement *)elementCopy prefetchedProperties];
    v11 = [prefetchedProperties copy];
    prefetchedProperties = self->_prefetchedProperties;
    self->_prefetchedProperties = v11;
  }

  return v6;
}

@end
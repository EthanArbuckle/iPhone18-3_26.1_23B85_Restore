@interface SUUISearchBarViewElement
- (SUUISearchBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUISearchBarViewElement

- (SUUISearchBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v21.receiver = self;
  v21.super_class = SUUISearchBarViewElement;
  v9 = [(SUUIInputViewElement *)&v21 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"accessoryText"];
    accessoryText = v9->_accessoryText;
    v9->_accessoryText = v10;

    v12 = [(IKTextParser *)SUUIViewElementText textWithDOMElement:elementCopy usingParseBlock:0];
    defaultText = v9->_defaultText;
    v9->_defaultText = v12;

    v14 = [elementCopy getAttribute:@"placeholder"];
    placeholderString = v9->_placeholderString;
    v9->_placeholderString = v14;

    v16 = [elementCopy getAttribute:@"searchHints"];
    searchHintsURLString = v9->_searchHintsURLString;
    v9->_searchHintsURLString = v16;

    v18 = [elementCopy getAttribute:@"trendingSearch"];
    trendingSearchURLString = v9->_trendingSearchURLString;
    v9->_trendingSearchURLString = v18;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SUUISearchBarViewElement;
  v5 = [(SUUIViewElement *)&v18 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    accessoryText = [(SUUISearchBarViewElement *)elementCopy accessoryText];
    accessoryText = self->_accessoryText;
    self->_accessoryText = accessoryText;

    defaultText = [(SUUISearchBarViewElement *)elementCopy defaultText];
    defaultText = self->_defaultText;
    self->_defaultText = defaultText;

    placeholderString = [(SUUISearchBarViewElement *)elementCopy placeholderString];
    placeholderString = self->_placeholderString;
    self->_placeholderString = placeholderString;

    searchHintsURLString = [(SUUISearchBarViewElement *)elementCopy searchHintsURLString];
    searchHintsURLString = self->_searchHintsURLString;
    self->_searchHintsURLString = searchHintsURLString;

    trendingSearchURLString = [(SUUISearchBarViewElement *)elementCopy trendingSearchURLString];
    trendingSearchURLString = self->_trendingSearchURLString;
    self->_trendingSearchURLString = trendingSearchURLString;
  }

  return v6;
}

@end
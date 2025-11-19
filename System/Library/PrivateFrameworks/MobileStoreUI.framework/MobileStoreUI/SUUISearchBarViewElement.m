@interface SUUISearchBarViewElement
- (SUUISearchBarViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUISearchBarViewElement

- (SUUISearchBarViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v21.receiver = self;
  v21.super_class = SUUISearchBarViewElement;
  v9 = [(SUUIInputViewElement *)&v21 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"accessoryText"];
    accessoryText = v9->_accessoryText;
    v9->_accessoryText = v10;

    v12 = [(IKTextParser *)SUUIViewElementText textWithDOMElement:v8 usingParseBlock:0];
    defaultText = v9->_defaultText;
    v9->_defaultText = v12;

    v14 = [v8 getAttribute:@"placeholder"];
    placeholderString = v9->_placeholderString;
    v9->_placeholderString = v14;

    v16 = [v8 getAttribute:@"searchHints"];
    searchHintsURLString = v9->_searchHintsURLString;
    v9->_searchHintsURLString = v16;

    v18 = [v8 getAttribute:@"trendingSearch"];
    trendingSearchURLString = v9->_trendingSearchURLString;
    v9->_trendingSearchURLString = v18;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SUUISearchBarViewElement;
  v5 = [(SUUIViewElement *)&v18 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    v7 = [(SUUISearchBarViewElement *)v4 accessoryText];
    accessoryText = self->_accessoryText;
    self->_accessoryText = v7;

    v9 = [(SUUISearchBarViewElement *)v4 defaultText];
    defaultText = self->_defaultText;
    self->_defaultText = v9;

    v11 = [(SUUISearchBarViewElement *)v4 placeholderString];
    placeholderString = self->_placeholderString;
    self->_placeholderString = v11;

    v13 = [(SUUISearchBarViewElement *)v4 searchHintsURLString];
    searchHintsURLString = self->_searchHintsURLString;
    self->_searchHintsURLString = v13;

    v15 = [(SUUISearchBarViewElement *)v4 trendingSearchURLString];
    trendingSearchURLString = self->_trendingSearchURLString;
    self->_trendingSearchURLString = v15;
  }

  return v6;
}

@end
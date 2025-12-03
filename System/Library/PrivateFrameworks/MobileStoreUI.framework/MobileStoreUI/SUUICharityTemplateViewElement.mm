@interface SUUICharityTemplateViewElement
- (SUUICharityTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUICharityTemplateViewElement

- (SUUICharityTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v15.receiver = self;
  v15.super_class = SUUICharityTemplateViewElement;
  v9 = [(SUUIViewElement *)&v15 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"campaignID"];
    campaignIdentifier = v9->_campaignIdentifier;
    v9->_campaignIdentifier = v10;

    v12 = [elementCopy getAttribute:@"src"];
    charityMetadataURLString = v9->_charityMetadataURLString;
    v9->_charityMetadataURLString = v12;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = SUUICharityTemplateViewElement;
  v5 = [(SUUIViewElement *)&v12 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    campaignIdentifier = [(SUUICharityTemplateViewElement *)elementCopy campaignIdentifier];
    campaignIdentifier = self->_campaignIdentifier;
    self->_campaignIdentifier = campaignIdentifier;

    charityMetadataURLString = [(SUUICharityTemplateViewElement *)elementCopy charityMetadataURLString];
    charityMetadataURLString = self->_charityMetadataURLString;
    self->_charityMetadataURLString = charityMetadataURLString;
  }

  return v6;
}

@end
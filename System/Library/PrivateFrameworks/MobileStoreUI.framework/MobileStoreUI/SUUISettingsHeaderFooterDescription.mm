@interface SUUISettingsHeaderFooterDescription
+ (id)_settingsHeaderFooterDescriptionWithFooterElement:(id)element;
+ (id)_settingsHeaderFooterDescriptionWithHeaderElement:(id)element;
+ (id)settingsHeaderFooterDescriptionWithViewElement:(id)element;
- (SUUISettingsHeaderFooterDescription)initWithViewElement:(id)element;
@end

@implementation SUUISettingsHeaderFooterDescription

- (SUUISettingsHeaderFooterDescription)initWithViewElement:(id)element
{
  elementCopy = element;
  v6 = [(SUUISettingsHeaderFooterDescription *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, element);
  }

  return v7;
}

+ (id)settingsHeaderFooterDescriptionWithViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  if (elementType == 41)
  {
    v6 = [self _settingsHeaderFooterDescriptionWithFooterElement:elementCopy];
    goto LABEL_5;
  }

  if (elementType == 48)
  {
    v6 = [self _settingsHeaderFooterDescriptionWithHeaderElement:elementCopy];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)_settingsHeaderFooterDescriptionWithFooterElement:(id)element
{
  elementCopy = element;
  children = [elementCopy children];
  firstObject = [children firstObject];

  if (!firstObject)
  {
    goto LABEL_5;
  }

  elementType = [firstObject elementType];
  if (elementType == 138)
  {
    v7 = off_2798F4350;
    goto LABEL_7;
  }

  if (elementType != 12)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = off_2798F3D68;
LABEL_7:
  v8 = [objc_alloc(*v7) initWithViewElement:elementCopy];
LABEL_8:

  return v8;
}

+ (id)_settingsHeaderFooterDescriptionWithHeaderElement:(id)element
{
  elementCopy = element;
  children = [elementCopy children];
  firstObject = [children firstObject];

  if (firstObject && [firstObject elementType] == 138)
  {
    v6 = [(SUUISettingsHeaderFooterDescription *)[SUUITextHeaderSettingsHeaderFooterDescription alloc] initWithViewElement:elementCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
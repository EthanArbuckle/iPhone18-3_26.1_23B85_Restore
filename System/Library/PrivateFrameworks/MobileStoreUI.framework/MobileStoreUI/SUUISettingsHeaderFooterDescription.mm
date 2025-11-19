@interface SUUISettingsHeaderFooterDescription
+ (id)_settingsHeaderFooterDescriptionWithFooterElement:(id)a3;
+ (id)_settingsHeaderFooterDescriptionWithHeaderElement:(id)a3;
+ (id)settingsHeaderFooterDescriptionWithViewElement:(id)a3;
- (SUUISettingsHeaderFooterDescription)initWithViewElement:(id)a3;
@end

@implementation SUUISettingsHeaderFooterDescription

- (SUUISettingsHeaderFooterDescription)initWithViewElement:(id)a3
{
  v5 = a3;
  v6 = [(SUUISettingsHeaderFooterDescription *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, a3);
  }

  return v7;
}

+ (id)settingsHeaderFooterDescriptionWithViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 elementType];
  if (v5 == 41)
  {
    v6 = [a1 _settingsHeaderFooterDescriptionWithFooterElement:v4];
    goto LABEL_5;
  }

  if (v5 == 48)
  {
    v6 = [a1 _settingsHeaderFooterDescriptionWithHeaderElement:v4];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)_settingsHeaderFooterDescriptionWithFooterElement:(id)a3
{
  v3 = a3;
  v4 = [v3 children];
  v5 = [v4 firstObject];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v5 elementType];
  if (v6 == 138)
  {
    v7 = off_2798F4350;
    goto LABEL_7;
  }

  if (v6 != 12)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = off_2798F3D68;
LABEL_7:
  v8 = [objc_alloc(*v7) initWithViewElement:v3];
LABEL_8:

  return v8;
}

+ (id)_settingsHeaderFooterDescriptionWithHeaderElement:(id)a3
{
  v3 = a3;
  v4 = [v3 children];
  v5 = [v4 firstObject];

  if (v5 && [v5 elementType] == 138)
  {
    v6 = [(SUUISettingsHeaderFooterDescription *)[SUUITextHeaderSettingsHeaderFooterDescription alloc] initWithViewElement:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
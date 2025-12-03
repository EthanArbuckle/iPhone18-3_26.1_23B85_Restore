@interface CUINamedMultisizeImageSet
- (CUINamedMultisizeImageSet)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (id)debugDescription;
- (id)sizeIndexes;
@end

@implementation CUINamedMultisizeImageSet

- (id)sizeIndexes
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition sizeIndexes];
}

- (CUINamedMultisizeImageSet)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v14.receiver = self;
  v14.super_class = CUINamedMultisizeImageSet;
  v6 = [(CUINamedLookup *)&v14 initWithName:name usingRenditionKey:key fromTheme:theme];
  if ([(CUIThemeRendition *)[(CUINamedLookup *)v6 _rendition] type]!= 1010)
  {
    _CUILog(4, "CoreUI: attempting to lookup a named image multisize image set '%@' buts its a '%d' instead", v7, v8, v9, v10, v11, v12, name);

    return 0;
  }

  return v6;
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = CUINamedMultisizeImageSet;
  return [-[CUINamedMultisizeImageSet debugDescription](&v3 debugDescription)];
}

@end
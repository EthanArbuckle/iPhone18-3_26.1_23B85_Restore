@interface CUINamedData
- (CUINamedData)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (NSData)data;
- (NSString)utiType;
- (id)description;
@end

@implementation CUINamedData

- (NSData)data
{
  _rendition = [(CUINamedLookup *)self _rendition];
  if ([(CUIThemeRendition *)_rendition type]== 1000)
  {

    return [(CUIThemeRendition *)_rendition data];
  }

  else
  {
    [(CUIThemeRendition *)_rendition pdfDocument];
    DataProvider = CGPDFDocumentGetDataProvider();
    v5 = CGDataProviderCopyData(DataProvider);

    return v5;
  }
}

- (CUINamedData)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v15.receiver = self;
  v15.super_class = CUINamedData;
  v6 = [(CUINamedLookup *)&v15 initWithName:name usingRenditionKey:key fromTheme:theme];
  _rendition = [(CUINamedLookup *)v6 _rendition];
  if ([(CUIThemeRendition *)_rendition type]!= 1000 && [(CUIThemeRendition *)_rendition type]!= 9)
  {
    _CUILog(4, "CoreUI: attempting to lookup a named data '%@' with a type that is not a data type in the AssetCatalog", v8, v9, v10, v11, v12, v13, name);

    return 0;
  }

  return v6;
}

- (NSString)utiType
{
  _rendition = [(CUINamedLookup *)self _rendition];
  if ([(CUIThemeRendition *)_rendition type]!= 1000)
  {
    return @"com.adobe.pdf";
  }

  return [(CUIThemeRendition *)_rendition utiType];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if (self)
  {
    name = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] name];
  }

  else
  {
    name = 0;
  }

  return [NSString stringWithFormat:@"<%@:%p> name:'%@' uti:'%@' data:%@>", v4, self, name, [(CUINamedData *)self utiType], [(CUINamedData *)self data]];
}

@end
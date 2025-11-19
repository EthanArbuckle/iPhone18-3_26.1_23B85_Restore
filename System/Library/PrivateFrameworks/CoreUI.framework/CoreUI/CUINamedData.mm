@interface CUINamedData
- (CUINamedData)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5;
- (NSData)data;
- (NSString)utiType;
- (id)description;
@end

@implementation CUINamedData

- (NSData)data
{
  v2 = [(CUINamedLookup *)self _rendition];
  if ([(CUIThemeRendition *)v2 type]== 1000)
  {

    return [(CUIThemeRendition *)v2 data];
  }

  else
  {
    [(CUIThemeRendition *)v2 pdfDocument];
    DataProvider = CGPDFDocumentGetDataProvider();
    v5 = CGDataProviderCopyData(DataProvider);

    return v5;
  }
}

- (CUINamedData)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5
{
  v15.receiver = self;
  v15.super_class = CUINamedData;
  v6 = [(CUINamedLookup *)&v15 initWithName:a3 usingRenditionKey:a4 fromTheme:a5];
  v7 = [(CUINamedLookup *)v6 _rendition];
  if ([(CUIThemeRendition *)v7 type]!= 1000 && [(CUIThemeRendition *)v7 type]!= 9)
  {
    _CUILog(4, "CoreUI: attempting to lookup a named data '%@' with a type that is not a data type in the AssetCatalog", v8, v9, v10, v11, v12, v13, a3);

    return 0;
  }

  return v6;
}

- (NSString)utiType
{
  v2 = [(CUINamedLookup *)self _rendition];
  if ([(CUIThemeRendition *)v2 type]!= 1000)
  {
    return @"com.adobe.pdf";
  }

  return [(CUIThemeRendition *)v2 utiType];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if (self)
  {
    v5 = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] name];
  }

  else
  {
    v5 = 0;
  }

  return [NSString stringWithFormat:@"<%@:%p> name:'%@' uti:'%@' data:%@>", v4, self, v5, [(CUINamedData *)self utiType], [(CUINamedData *)self data]];
}

@end
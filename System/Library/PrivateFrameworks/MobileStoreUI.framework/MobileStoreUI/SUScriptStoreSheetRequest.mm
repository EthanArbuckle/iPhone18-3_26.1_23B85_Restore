@interface SUScriptStoreSheetRequest
+ (id)webScriptNameForKey:(const char *)key;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)productURL;
- (WebScriptObject)productParameters;
- (id)_safeValueForValue:(id)value;
- (id)newNativeStorePageRequest;
- (id)scriptAttributeKeys;
- (int64_t)productPageStyle;
- (void)setProductPageStyle:(int64_t)style;
- (void)setProductParameters:(id)parameters;
- (void)setProductURL:(id)l;
@end

@implementation SUScriptStoreSheetRequest

- (id)newNativeStorePageRequest
{
  v3 = objc_alloc_init(MEMORY[0x277CDD3A0]);
  webFrame = [(SUScriptObject *)self webFrame];
  globalContext = [webFrame globalContext];

  [(SUScriptObject *)self lock];
  [v3 setProductPageStyle:self->_pageStyle];
  productParameters = self->_productParameters;
  if (productParameters)
  {
    v7 = globalContext == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [(WebScriptObject *)productParameters copyArrayOrDictionaryWithContext:globalContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 setProductParameters:v8];
    }
  }

  if (self->_productURL)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:self->_productURL];
    [v3 setProductURL:v9];
  }

  [(SUScriptObject *)self unlock];
  return v3;
}

- (int64_t)productPageStyle
{
  [(SUScriptObject *)self lock];
  pageStyle = self->_pageStyle;
  [(SUScriptObject *)self unlock];
  return pageStyle;
}

- (WebScriptObject)productParameters
{
  [(SUScriptObject *)self lock];
  v3 = self->_productParameters;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (NSString)productURL
{
  [(SUScriptObject *)self lock];
  v3 = self->_productURL;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (void)setProductPageStyle:(int64_t)style
{
  [(SUScriptObject *)self lock];
  self->_pageStyle = style;

  [(SUScriptObject *)self unlock];
}

- (void)setProductParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = SUUIWebCoreFramework();
  v6 = SUUIWeakLinkedClassForString(&cfstr_Webscriptobjec.isa, v5);
  obj = [(SUScriptStoreSheetRequest *)self _safeValueForValue:parametersCopy];

  if (obj && (objc_opt_isKindOfClass() & 1) == 0)
  {
    [v6 throwException:@"Invalid argument"];
  }

  else
  {
    [(SUScriptObject *)self lock];
    if (self->_productParameters != obj)
    {
      objc_storeStrong(&self->_productParameters, obj);
    }

    [(SUScriptObject *)self unlock];
  }
}

- (void)setProductURL:(id)l
{
  obj = [(SUScriptStoreSheetRequest *)self _safeValueForValue:l];
  if (obj && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = SUUIWebCoreFramework();
    [SUUIWeakLinkedClassForString(&cfstr_Webscriptobjec.isa v4)];
  }

  else
  {
    [(SUScriptObject *)self lock];
    if (self->_productURL != obj)
    {
      objc_storeStrong(&self->_productURL, obj);
    }

    [(SUScriptObject *)self unlock];
  }
}

- (id)_safeValueForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v4 = SUUIWebCoreFramework(), SUUIWeakLinkedClassForString(&cfstr_Webundefined.isa, v4), v5 = valueCopy, (objc_opt_isKindOfClass()))
  {

    v5 = 0;
  }

  return v5;
}

+ (id)webScriptNameForKey:(const char *)key
{
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:key];
  v6 = [__KeyMapping objectForKey:v5];
  if (!v6)
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___SUScriptStoreSheetRequest;
    v6 = objc_msgSendSuper2(&v8, sel_webScriptNameForKey_, key);
  }

  return v6;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  v5 = SUWebScriptNameForSelector2();
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptStoreSheetRequest;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, selector);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptStoreSheetRequest;
  scriptAttributeKeys = [(SUScriptObject *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"sheetStyle", @"productPageStyle", @"productParameters", @"productParameters", @"productURL", @"productURL", @"SHEET_STYLE_AUTOMATIC", @"productPageStyleAutomatic", @"SHEET_STYLE_BANNER", @"productPageStyleBanner", @"SHEET_STYLE_PAD", @"productPageStylePad", @"SHEET_STYLE_PHONE", @"productPageStylePhone", 0}];
    v3 = __KeyMapping;
    __KeyMapping = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

@end
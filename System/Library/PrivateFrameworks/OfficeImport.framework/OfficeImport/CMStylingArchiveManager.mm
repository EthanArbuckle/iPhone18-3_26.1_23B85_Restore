@interface CMStylingArchiveManager
- (CMStylingArchiveManager)init;
- (id)addCssStyle:(id)style;
- (id)commitStylesheet;
- (id)cssStylesheetString;
- (void)addCssStyle:(id)style withName:(id)name;
@end

@implementation CMStylingArchiveManager

- (CMStylingArchiveManager)init
{
  v8.receiver = self;
  v8.super_class = CMStylingArchiveManager;
  v2 = [(CMArchiveManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
    mCssString = v2->mCssString;
    v2->mCssString = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mStyleCache = v2->mStyleCache;
    v2->mStyleCache = v5;
  }

  return v2;
}

- (id)addCssStyle:(id)style
{
  styleCopy = style;
  v5 = [(NSMutableDictionary *)self->mStyleCache objectForKey:styleCopy];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"s%lu", -[NSMutableDictionary count](self->mStyleCache, "count")];
    [(NSMutableDictionary *)self->mStyleCache setObject:v5 forKey:styleCopy];
    styleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@".%@.%@.%@ {%@}\n", v5, v5, v5, styleCopy];
    [(NSMutableString *)self->mCssString appendString:styleCopy];
  }

  return v5;
}

- (void)addCssStyle:(id)style withName:(id)name
{
  style = [MEMORY[0x277CCACA8] stringWithFormat:@".%@ {%@}\n", name, style];
  [(NSMutableString *)self->mCssString appendString:?];
}

- (id)commitStylesheet
{
  if ([(NSMutableString *)self->mCssString length])
  {
    [(NSMutableString *)self->mCssString insertString:@"<style type=text/css>\n" atIndex:0];
    [(NSMutableString *)self->mCssString appendString:@"</style>"];
    v3 = [(NSMutableString *)self->mCssString copy];
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    mCssString = self->mCssString;
    self->mCssString = v4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)cssStylesheetString
{
  v2 = [(NSMutableString *)self->mCssString copy];

  return v2;
}

@end
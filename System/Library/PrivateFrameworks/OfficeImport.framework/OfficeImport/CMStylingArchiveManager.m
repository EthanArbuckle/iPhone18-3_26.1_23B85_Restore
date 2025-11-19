@interface CMStylingArchiveManager
- (CMStylingArchiveManager)init;
- (id)addCssStyle:(id)a3;
- (id)commitStylesheet;
- (id)cssStylesheetString;
- (void)addCssStyle:(id)a3 withName:(id)a4;
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

- (id)addCssStyle:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->mStyleCache objectForKey:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"s%lu", -[NSMutableDictionary count](self->mStyleCache, "count")];
    [(NSMutableDictionary *)self->mStyleCache setObject:v5 forKey:v4];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@".%@.%@.%@ {%@}\n", v5, v5, v5, v4];
    [(NSMutableString *)self->mCssString appendString:v6];
  }

  return v5;
}

- (void)addCssStyle:(id)a3 withName:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@".%@ {%@}\n", a4, a3];
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
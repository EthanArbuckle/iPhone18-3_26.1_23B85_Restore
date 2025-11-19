@interface CRMailAccountAnalyzer
- (BOOL)isAddressRestricted:(id)a3;
- (CRMailAccountAnalyzer)init;
- (CRMailAccountAnalyzer)initWithLocale:(id)a3;
- (void)dealloc;
@end

@implementation CRMailAccountAnalyzer

- (CRMailAccountAnalyzer)init
{
  v3 = +[NSLocale currentLocale];

  return [(CRMailAccountAnalyzer *)self initWithLocale:v3];
}

- (CRMailAccountAnalyzer)initWithLocale:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRMailAccountAnalyzer;
  v4 = [(CRMailAccountAnalyzer *)&v6 init];
  if (v4)
  {
    v4->_cache = objc_alloc_init(CNCache);
    v4->_locale = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRMailAccountAnalyzer;
  [(CRMailAccountAnalyzer *)&v3 dealloc];
}

- (BOOL)isAddressRestricted:(id)a3
{
  v3 = [(CNCache *)self->_cache objectForKey:[(CRMailAccountAnalyzer *)self normalizeAddress:a3]];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

@end
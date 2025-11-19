@interface BRGlobalProgressProxy
- (BOOL)progressProxy:(id)a3 shouldProxyProgress:(id)a4;
- (BRGlobalProgressProxy)initWithGlobalProgressKind:(id)a3;
- (id)progressProxy:(id)a3 localizedDescriptionForProgress:(id)a4;
@end

@implementation BRGlobalProgressProxy

- (BRGlobalProgressProxy)initWithGlobalProgressKind:(id)a3
{
  v5 = a3;
  v6 = +[BRDaemonConnection mobileDocumentsURL];
  v9.receiver = self;
  v9.super_class = BRGlobalProgressProxy;
  v7 = [(BRProgressProxy *)&v9 initWithURL:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_kind, a3);
    [(BRProgressProxy *)v7 setDelegate:v7];
  }

  return v7;
}

- (BOOL)progressProxy:(id)a3 shouldProxyProgress:(id)a4
{
  v5 = [a4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A858]];

  v7 = self->_kind;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
    v10 = 1;
  }

  else if (v8)
  {
    v10 = [(NSString *)v7 isEqual:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)progressProxy:(id)a3 localizedDescriptionForProgress:(id)a4
{
  v4 = a4;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"BRGlobalProgressLocalizedAndCapitalizedDescription"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [v4 localizedDescription];
  }

  v8 = v7;

  return v8;
}

@end
@interface BRGlobalProgressProxy
- (BOOL)progressProxy:(id)proxy shouldProxyProgress:(id)progress;
- (BRGlobalProgressProxy)initWithGlobalProgressKind:(id)kind;
- (id)progressProxy:(id)proxy localizedDescriptionForProgress:(id)progress;
@end

@implementation BRGlobalProgressProxy

- (BRGlobalProgressProxy)initWithGlobalProgressKind:(id)kind
{
  kindCopy = kind;
  v6 = +[BRDaemonConnection mobileDocumentsURL];
  v9.receiver = self;
  v9.super_class = BRGlobalProgressProxy;
  v7 = [(BRProgressProxy *)&v9 initWithURL:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_kind, kind);
    [(BRProgressProxy *)v7 setDelegate:v7];
  }

  return v7;
}

- (BOOL)progressProxy:(id)proxy shouldProxyProgress:(id)progress
{
  userInfo = [progress userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A858]];

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

- (id)progressProxy:(id)proxy localizedDescriptionForProgress:(id)progress
{
  progressCopy = progress;
  userInfo = [progressCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"BRGlobalProgressLocalizedAndCapitalizedDescription"];

  if (v6)
  {
    localizedDescription = v6;
  }

  else
  {
    localizedDescription = [progressCopy localizedDescription];
  }

  v8 = localizedDescription;

  return v8;
}

@end
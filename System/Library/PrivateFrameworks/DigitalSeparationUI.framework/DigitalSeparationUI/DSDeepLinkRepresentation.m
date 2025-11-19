@interface DSDeepLinkRepresentation
- (DSDeepLinkRepresentation)initWithOrder:(id)a3 orderType:(int64_t)a4 chapters:(id)a5 requiresAuth:(BOOL)a6 flowType:(int64_t)a7 entrypointAnalytic:(id)a8 path:(id)a9;
- (NSString)remoteUIURL;
@end

@implementation DSDeepLinkRepresentation

- (DSDeepLinkRepresentation)initWithOrder:(id)a3 orderType:(int64_t)a4 chapters:(id)a5 requiresAuth:(BOOL)a6 flowType:(int64_t)a7 entrypointAnalytic:(id)a8 path:(id)a9
{
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = DSDeepLinkRepresentation;
  v18 = [(DSDeepLinkRepresentation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_navigationOrder, a3);
    v19->_navigationType = a4;
    objc_storeStrong(&v19->_navigationChapters, a5);
    v19->_flowRequiresAuth = a6;
    v19->_flowType = a7;
    objc_storeStrong(&v19->_entrypoint, a8);
    objc_storeStrong(&v19->_path, a9);
  }

  return v19;
}

- (NSString)remoteUIURL
{
  if ([(NSString *)self->_path hasPrefix:@"https"])
  {
    path = self->_path;
  }

  else
  {
    path = &stru_285BA4988;
  }

  return path;
}

@end
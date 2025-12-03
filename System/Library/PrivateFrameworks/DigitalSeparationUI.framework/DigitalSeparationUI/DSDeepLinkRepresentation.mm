@interface DSDeepLinkRepresentation
- (DSDeepLinkRepresentation)initWithOrder:(id)order orderType:(int64_t)type chapters:(id)chapters requiresAuth:(BOOL)auth flowType:(int64_t)flowType entrypointAnalytic:(id)analytic path:(id)path;
- (NSString)remoteUIURL;
@end

@implementation DSDeepLinkRepresentation

- (DSDeepLinkRepresentation)initWithOrder:(id)order orderType:(int64_t)type chapters:(id)chapters requiresAuth:(BOOL)auth flowType:(int64_t)flowType entrypointAnalytic:(id)analytic path:(id)path
{
  orderCopy = order;
  chaptersCopy = chapters;
  analyticCopy = analytic;
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = DSDeepLinkRepresentation;
  v18 = [(DSDeepLinkRepresentation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_navigationOrder, order);
    v19->_navigationType = type;
    objc_storeStrong(&v19->_navigationChapters, chapters);
    v19->_flowRequiresAuth = auth;
    v19->_flowType = flowType;
    objc_storeStrong(&v19->_entrypoint, analytic);
    objc_storeStrong(&v19->_path, path);
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
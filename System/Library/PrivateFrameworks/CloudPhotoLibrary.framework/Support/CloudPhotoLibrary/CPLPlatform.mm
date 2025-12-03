@interface CPLPlatform
+ (void)setDirectClientImplementationForPlatform:(id)platform;
+ (void)setPrequeliteStoreImplementationForPlatform:(id)platform;
@end

@implementation CPLPlatform

+ (void)setDirectClientImplementationForPlatform:(id)platform
{
  platformCopy = platform;
  v3 = objc_opt_class();
  [platformCopy setPlatformImplementation:v3 forClass:objc_opt_class()];
  v4 = objc_opt_class();
  [platformCopy setPlatformImplementation:v4 forClass:objc_opt_class()];
  v5 = objc_opt_class();
  [platformCopy setPlatformImplementation:v5 forClass:objc_opt_class()];
}

+ (void)setPrequeliteStoreImplementationForPlatform:(id)platform
{
  platformCopy = platform;
  v3 = objc_opt_class();
  [platformCopy setPlatformImplementation:v3 forClass:objc_opt_class()];
  v4 = objc_opt_class();
  [platformCopy setPlatformImplementation:v4 forClass:objc_opt_class()];
  v5 = objc_opt_class();
  [platformCopy setPlatformImplementation:v5 forClass:objc_opt_class()];
  v6 = objc_opt_class();
  [platformCopy setPlatformImplementation:v6 forClass:objc_opt_class()];
  v7 = objc_opt_class();
  [platformCopy setPlatformImplementation:v7 forClass:objc_opt_class()];
  v8 = objc_opt_class();
  [platformCopy setPlatformImplementation:v8 forClass:objc_opt_class()];
  v9 = objc_opt_class();
  [platformCopy setPlatformImplementation:v9 forClass:objc_opt_class()];
  v10 = objc_opt_class();
  [platformCopy setPlatformImplementation:v10 forClass:objc_opt_class()];
  v11 = objc_opt_class();
  [platformCopy setPlatformImplementation:v11 forClass:objc_opt_class()];
  v12 = objc_opt_class();
  [platformCopy setPlatformImplementation:v12 forClass:objc_opt_class()];
  v13 = objc_opt_class();
  [platformCopy setPlatformImplementation:v13 forClass:objc_opt_class()];
  v14 = objc_opt_class();
  [platformCopy setPlatformImplementation:v14 forClass:objc_opt_class()];
  v15 = objc_opt_class();
  [platformCopy setPlatformImplementation:v15 forClass:objc_opt_class()];
  v16 = objc_opt_class();
  [platformCopy setPlatformImplementation:v16 forClass:objc_opt_class()];
  v17 = objc_opt_class();
  [platformCopy setPlatformImplementation:v17 forClass:objc_opt_class()];
  v18 = objc_opt_class();
  [platformCopy setPlatformImplementation:v18 forClass:objc_opt_class()];
  v19 = objc_opt_class();
  [platformCopy setPlatformImplementation:v19 forClass:objc_opt_class()];
  v20 = objc_opt_class();
  [platformCopy setPlatformImplementation:v20 forClass:objc_opt_class()];
  v21 = objc_opt_class();
  [platformCopy setPlatformImplementation:v21 forClass:objc_opt_class()];
  v22 = objc_opt_class();
  [platformCopy setPlatformImplementation:v22 forClass:objc_opt_class()];
  v23 = objc_opt_class();
  [platformCopy setPlatformImplementation:v23 forClass:objc_opt_class()];
  v24 = objc_opt_class();
  [platformCopy setPlatformImplementation:v24 forClass:objc_opt_class()];
  v25 = objc_opt_class();
  [platformCopy setPlatformImplementation:v25 forClass:objc_opt_class()];
  v26 = objc_opt_class();
  [platformCopy setPlatformImplementation:v26 forClass:objc_opt_class()];
}

@end
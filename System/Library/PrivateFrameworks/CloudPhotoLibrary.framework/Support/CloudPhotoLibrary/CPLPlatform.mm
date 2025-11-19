@interface CPLPlatform
+ (void)setDirectClientImplementationForPlatform:(id)a3;
+ (void)setPrequeliteStoreImplementationForPlatform:(id)a3;
@end

@implementation CPLPlatform

+ (void)setDirectClientImplementationForPlatform:(id)a3
{
  v6 = a3;
  v3 = objc_opt_class();
  [v6 setPlatformImplementation:v3 forClass:objc_opt_class()];
  v4 = objc_opt_class();
  [v6 setPlatformImplementation:v4 forClass:objc_opt_class()];
  v5 = objc_opt_class();
  [v6 setPlatformImplementation:v5 forClass:objc_opt_class()];
}

+ (void)setPrequeliteStoreImplementationForPlatform:(id)a3
{
  v27 = a3;
  v3 = objc_opt_class();
  [v27 setPlatformImplementation:v3 forClass:objc_opt_class()];
  v4 = objc_opt_class();
  [v27 setPlatformImplementation:v4 forClass:objc_opt_class()];
  v5 = objc_opt_class();
  [v27 setPlatformImplementation:v5 forClass:objc_opt_class()];
  v6 = objc_opt_class();
  [v27 setPlatformImplementation:v6 forClass:objc_opt_class()];
  v7 = objc_opt_class();
  [v27 setPlatformImplementation:v7 forClass:objc_opt_class()];
  v8 = objc_opt_class();
  [v27 setPlatformImplementation:v8 forClass:objc_opt_class()];
  v9 = objc_opt_class();
  [v27 setPlatformImplementation:v9 forClass:objc_opt_class()];
  v10 = objc_opt_class();
  [v27 setPlatformImplementation:v10 forClass:objc_opt_class()];
  v11 = objc_opt_class();
  [v27 setPlatformImplementation:v11 forClass:objc_opt_class()];
  v12 = objc_opt_class();
  [v27 setPlatformImplementation:v12 forClass:objc_opt_class()];
  v13 = objc_opt_class();
  [v27 setPlatformImplementation:v13 forClass:objc_opt_class()];
  v14 = objc_opt_class();
  [v27 setPlatformImplementation:v14 forClass:objc_opt_class()];
  v15 = objc_opt_class();
  [v27 setPlatformImplementation:v15 forClass:objc_opt_class()];
  v16 = objc_opt_class();
  [v27 setPlatformImplementation:v16 forClass:objc_opt_class()];
  v17 = objc_opt_class();
  [v27 setPlatformImplementation:v17 forClass:objc_opt_class()];
  v18 = objc_opt_class();
  [v27 setPlatformImplementation:v18 forClass:objc_opt_class()];
  v19 = objc_opt_class();
  [v27 setPlatformImplementation:v19 forClass:objc_opt_class()];
  v20 = objc_opt_class();
  [v27 setPlatformImplementation:v20 forClass:objc_opt_class()];
  v21 = objc_opt_class();
  [v27 setPlatformImplementation:v21 forClass:objc_opt_class()];
  v22 = objc_opt_class();
  [v27 setPlatformImplementation:v22 forClass:objc_opt_class()];
  v23 = objc_opt_class();
  [v27 setPlatformImplementation:v23 forClass:objc_opt_class()];
  v24 = objc_opt_class();
  [v27 setPlatformImplementation:v24 forClass:objc_opt_class()];
  v25 = objc_opt_class();
  [v27 setPlatformImplementation:v25 forClass:objc_opt_class()];
  v26 = objc_opt_class();
  [v27 setPlatformImplementation:v26 forClass:objc_opt_class()];
}

@end
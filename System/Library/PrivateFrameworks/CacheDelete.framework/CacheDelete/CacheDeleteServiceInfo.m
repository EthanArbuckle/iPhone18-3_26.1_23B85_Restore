@interface CacheDeleteServiceInfo
+ (id)serviceInfoWithExtensionContext:(id)a3;
- (CacheDeleteServiceInfo)initWithExtensionContext:(id)a3;
@end

@implementation CacheDeleteServiceInfo

- (CacheDeleteServiceInfo)initWithExtensionContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CacheDeleteServiceInfo;
  v6 = [(CacheDeleteServiceInfo *)&v12 init];
  p_isa = &v6->super.isa;
  if (!v5 || !v6)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(p_isa + 2, a3);
LABEL_5:
    v8 = p_isa;
    goto LABEL_9;
  }

  v9 = CDGetLogHandle("client");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "extensionContext is not of class NSExtensionContext: %@", buf, 0xCu);
  }

  v8 = 0;
LABEL_9:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)serviceInfoWithExtensionContext:(id)a3
{
  v3 = a3;
  v4 = [[CacheDeleteServiceInfo alloc] initWithExtensionContext:v3];

  return v4;
}

@end
@interface _ANEVirtualModel
+ (id)objectWithModel:(id)model;
+ (id)objectWithModel:(id)model tmpModelFilesPath:(id)path tmpWeightFilesPath:(id)filesPath;
+ (void)initialize;
- (BOOL)removeCachedReference;
- (_ANEVirtualModel)initWithModel:(id)model tmpModelFilesPath:(id)path tmpWeightFilesPath:(id)filesPath;
- (void)addCachedReference;
@end

@implementation _ANEVirtualModel

+ (void)initialize
{
  gLogger = os_log_create("com.apple.ane", "ANEVirtualModel");

  MEMORY[0x2821F96F8]();
}

- (_ANEVirtualModel)initWithModel:(id)model tmpModelFilesPath:(id)path tmpWeightFilesPath:(id)filesPath
{
  modelCopy = model;
  pathCopy = path;
  filesPathCopy = filesPath;
  v16.receiver = self;
  v16.super_class = _ANEVirtualModel;
  v12 = [(_ANEVirtualModel *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(_ANEVirtualModel *)v12 setModel:modelCopy];
    [(_ANEVirtualModel *)v13 setRefcount:1];
    [(_ANEVirtualModel *)v13 setTmpModelFilesPath:pathCopy];
    [(_ANEVirtualModel *)v13 setTmpWeightFilesPath:filesPathCopy];
    v14 = gLogger;
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualModel initWithModel:v14 tmpModelFilesPath:a2 tmpWeightFilesPath:v13];
    }
  }

  return v13;
}

+ (id)objectWithModel:(id)model
{
  modelCopy = model;
  v5 = [[self alloc] initWithModel:modelCopy tmpModelFilesPath:0 tmpWeightFilesPath:0];

  return v5;
}

+ (id)objectWithModel:(id)model tmpModelFilesPath:(id)path tmpWeightFilesPath:(id)filesPath
{
  filesPathCopy = filesPath;
  pathCopy = path;
  modelCopy = model;
  v11 = [[self alloc] initWithModel:modelCopy tmpModelFilesPath:pathCopy tmpWeightFilesPath:filesPathCopy];

  return v11;
}

- (void)addCachedReference
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6 = NSStringFromSelector(a2);
  model = [a3 model];
  modelURL = [model modelURL];
  [a3 refcount];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25DF54000, v9, v10, "%@: ANEVirtualModel addCachedReference model url %@ refcount %lld", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeCachedReference
{
  v23 = *MEMORY[0x277D85DE8];
  model = [(_ANEVirtualModel *)self model];

  if (model)
  {
    [(_ANEVirtualModel *)self setRefcount:[(_ANEVirtualModel *)self refcount]- 1];
    refcount = [(_ANEVirtualModel *)self refcount];
    v6 = refcount < 1;
    v7 = gLogger;
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      v8 = refcount < 1;
      v9 = v7;
      v10 = NSStringFromSelector(a2);
      model2 = [(_ANEVirtualModel *)self model];
      modelURL = [model2 modelURL];
      v15 = 138413058;
      v16 = v10;
      v17 = 2112;
      v18 = modelURL;
      v19 = 2048;
      refcount2 = [(_ANEVirtualModel *)self refcount];
      v21 = 1024;
      v22 = v8;
      _os_log_debug_impl(&dword_25DF54000, v9, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualModel removeCachedReference model url %@ refcount %lld canBeRemoved %d", &v15, 0x26u);
    }
  }

  else
  {
    v6 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)initWithModel:(void *)a1 tmpModelFilesPath:(const char *)a2 tmpWeightFilesPath:(void *)a3 .cold.1(void *a1, const char *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  v7 = [a3 model];
  v8 = [v7 modelURL];
  [a3 refcount];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25DF54000, v9, v10, "%@: ANEVirtualModel initWithModel model url %@ refcount %lld", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x277D85DE8];
}

@end
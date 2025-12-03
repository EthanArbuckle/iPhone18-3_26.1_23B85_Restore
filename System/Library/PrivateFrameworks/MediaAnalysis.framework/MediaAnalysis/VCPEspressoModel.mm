@interface VCPEspressoModel
- (BOOL)buildModelWithConfig:(id)config error:(id *)error;
- (BOOL)prepareModelWithFile:(id)file engine:(int)engine config:(id)config error:(id *)error;
- (BOOL)updateModelWithConfig:(id)config error:(id *)error;
- (id)initModelWithName:(id)name andConfig:(id)config;
- (int)loadModel:(id)model;
- (void)dealloc;
- (void)freeModel;
@end

@implementation VCPEspressoModel

- (id)initModelWithName:(id)name andConfig:(id)config
{
  configCopy = config;
  v7 = [name stringByAppendingFormat:@".espresso.net"];
  v16.receiver = self;
  v16.super_class = VCPEspressoModel;
  v8 = [(VCPEspressoModel *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v15 = 0;
    v10 = [(VCPEspressoModel *)v8 prepareModelWithFile:v7 engine:10007 config:configCopy error:&v15];
    v11 = v15;
    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = v12;

  return v13;
}

- (int)loadModel:(id)model
{
  modelCopy = model;
  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  resourceURL = [vcp_mediaAnalysisBundle resourceURL];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:modelCopy relativeToURL:resourceURL];
  v7 = v6;
  if (v6)
  {
    path = [v6 path];
    [path UTF8String];
    v9 = espresso_plan_add_network();
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (BOOL)prepareModelWithFile:(id)file engine:(int)engine config:(id)config error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  configCopy = config;
  v11 = dispatch_queue_create("callback queue", 0);
  callbackQueue = self->_callbackQueue;
  self->_callbackQueue = v11;

  context = espresso_create_context();
  self->_context = context;
  if (context)
  {
    plan = espresso_create_plan();
    self->_plan = plan;
    if (plan)
    {
      if ([(VCPEspressoModel *)self loadModel:fileCopy])
      {
        if (error)
        {
          v15 = MEMORY[0x1E696ABC0];
          v25 = *MEMORY[0x1E696A578];
          fileCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Load Error", fileCopy];
          v26 = fileCopy;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          v18 = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v17];
LABEL_14:
          *error = v18;

          LOBYTE(error) = 0;
        }
      }

      else if ([(VCPEspressoModel *)self buildModelWithConfig:configCopy error:error])
      {
        LOBYTE(error) = 1;
      }

      else if (error)
      {
        v21 = MEMORY[0x1E696ABC0];
        v23 = *MEMORY[0x1E696A578];
        fileCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Build Model Error"];
        v24 = fileCopy;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v18 = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v17];
        goto LABEL_14;
      }
    }

    else if (error)
    {
      v20 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      fileCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Create Plan Error"];
      v28 = fileCopy;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v18 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v17];
      goto LABEL_14;
    }
  }

  else if (error)
  {
    v19 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    fileCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Create Context Error"];
    v30[0] = fileCopy;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v18 = [v19 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v17];
    goto LABEL_14;
  }

  return error;
}

- (BOOL)buildModelWithConfig:(id)config error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  v6 = configCopy;
  if (configCopy && ([configCopy UTF8String], espresso_network_select_configuration()))
  {
    if (error)
    {
      v7 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Select Configuration Error"];
      v16[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v10 = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
LABEL_8:
      *error = v10;

      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (!espresso_plan_build())
    {
      LOBYTE(error) = 1;
      goto LABEL_10;
    }

    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A578];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Build Plan Error"];
      v14 = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v10 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
      goto LABEL_8;
    }
  }

LABEL_10:

  return error;
}

- (BOOL)updateModelWithConfig:(id)config error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  if (espresso_plan_build_clean())
  {
    if (error)
    {
      v7 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A578];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Clean Plan Error"];
      v12[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      *error = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = [(VCPEspressoModel *)self buildModelWithConfig:configCopy error:error];
  }

  return error;
}

- (void)freeModel
{
  callbackQueue = self->_callbackQueue;
  self->_callbackQueue = 0;

  if (self->_plan)
  {
    espresso_plan_destroy();
  }

  if (self->_context)
  {

    espresso_context_destroy();
  }
}

- (void)dealloc
{
  if (self->_plan)
  {
    espresso_plan_destroy();
  }

  if (self->_context)
  {
    espresso_context_destroy();
  }

  v3.receiver = self;
  v3.super_class = VCPEspressoModel;
  [(VCPEspressoModel *)&v3 dealloc];
}

@end
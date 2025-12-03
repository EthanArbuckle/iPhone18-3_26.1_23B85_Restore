@interface CSFMil2bnnsCompilationConfig
- (CSFMil2bnnsCompilationConfig)initWithConfigPath:(id)path errOut:(id *)out;
@end

@implementation CSFMil2bnnsCompilationConfig

- (CSFMil2bnnsCompilationConfig)initWithConfigPath:(id)path errOut:(id *)out
{
  v41[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v33.receiver = self;
  v33.super_class = CSFMil2bnnsCompilationConfig;
  v7 = [(CSFMil2bnnsCompilationConfig *)&v33 init];
  if (!v7)
  {
    goto LABEL_29;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:pathCopy] & 1) == 0)
  {
    if (out)
    {
      v16 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A578];
      pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"config file not found for %@", pathCopy];
      v41[0] = pathCopy;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      *out = [v16 errorWithDomain:@"com.apple.corespeech" code:2452 userInfo:v18];
    }

    goto LABEL_28;
  }

  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathCopy];
  v32 = 0;
  v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v32];
  v11 = v32;
  if (!v11)
  {
    v19 = [v10 objectForKeyedSubscript:@"funcName"];
    if (v19)
    {
      v20 = [v10 objectForKeyedSubscript:@"funcName"];
    }

    else
    {
      v20 = @"main";
    }

    funcName = v7->_funcName;
    v7->_funcName = &v20->isa;

    v22 = [v10 objectForKeyedSubscript:@"debugInfo"];
    if (v22)
    {
      v23 = [v10 objectForKeyedSubscript:@"debugInfo"];
      v7->_debugInfo = [v23 BOOLValue];
    }

    else
    {
      v7->_debugInfo = 0;
    }

    v24 = [v10 objectForKeyedSubscript:@"singleThread"];
    if (v24)
    {
      v25 = [v10 objectForKeyedSubscript:@"singleThread"];
      v7->_singleThread = [v25 BOOLValue];
    }

    else
    {
      v7->_singleThread = 1;
    }

    v26 = [v10 objectForKeyedSubscript:@"optimizeForSize"];
    if (v26)
    {
      v27 = [v10 objectForKeyedSubscript:@"optimizeForSize"];
      v7->_optimizeForSize = [v27 BOOLValue];
    }

    else
    {
      v7->_optimizeForSize = 0;
    }

    pathCopy2 = [v10 objectForKeyedSubscript:@"predefinedOptimizations"];
    if (pathCopy2)
    {
      v28 = [v10 objectForKeyedSubscript:@"predefinedOptimizations"];
      v7->_predefinedOptimizations = [v28 unsignedIntValue];
    }

    else
    {
      v7->_predefinedOptimizations = 0;
    }

    goto LABEL_26;
  }

  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "[CSFMil2bnnsCompilationConfig initWithConfigPath:errOut:]";
    v38 = 2112;
    v39 = pathCopy;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Cannot parse to mil2bnns model config: %@", buf, 0x16u);
  }

  if (out)
  {
    v13 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    pathCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot parse to mil2bnns model config: %@", pathCopy];
    v35 = pathCopy2;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    *out = [v13 errorWithDomain:@"com.apple.corespeech" code:2452 userInfo:v15];

LABEL_26:
  }

  if (!v11)
  {
LABEL_29:
    v29 = v7;
    goto LABEL_30;
  }

LABEL_28:
  v29 = 0;
LABEL_30:

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

@end
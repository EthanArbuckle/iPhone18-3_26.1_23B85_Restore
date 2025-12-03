@interface _EARmil2BnnsCompiler
+ (BOOL)validateBnnsIr:(id)ir;
+ (void)compileWithModelMilPath:(id)path bnnsIrOutPath:(id)outPath milConfigPath:(id)configPath errorOut:(id *)out;
+ (void)initialize;
@end

@implementation _EARmil2BnnsCompiler

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

+ (void)compileWithModelMilPath:(id)path bnnsIrOutPath:(id)outPath milConfigPath:(id)configPath errorOut:(id *)out
{
  v37[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  outPathCopy = outPath;
  configPathCopy = configPath;
  if (pathCopy)
  {
    if (outPathCopy)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [defaultManager fileExistsAtPath:pathCopy];

      if (v13)
      {
        [pathCopy ear_toString];
        [outPathCopy ear_toString];
        if (configPathCopy)
        {
          [configPathCopy ear_toString];
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v25 = 0;
        }

        v20 = kaldi::quasar::onDeviceMil2BnnsCompile(&v28, &v26, __p);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p[0]);
        }

        if (v27 < 0)
        {
          operator delete(v26);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        v21 = @"mil2Bnns compilation failed with unknown error";
        if (v20)
        {
          v21 = &stru_1F2D44B60;
        }

        v22 = v21;
        v15 = v22;
        if (!out || v20)
        {
          goto LABEL_25;
        }

        v23 = MEMORY[0x1E696ABC0];
        v30 = *MEMORY[0x1E696A578];
        v31 = v22;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v17 = [v23 errorWithDomain:@"com.apple.siri.quasar.mil2BnnsCompilation" code:3 userInfo:v16];
LABEL_24:
        *out = v17;

LABEL_25:
        goto LABEL_26;
      }

      if (out)
      {
        v19 = MEMORY[0x1E696ABC0];
        v32 = *MEMORY[0x1E696A578];
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bnns.mil file is not found"];
        v33 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v17 = [v19 errorWithDomain:@"com.apple.siri.quasar.mil2BnnsCompilation" code:0 userInfo:v16];
        goto LABEL_24;
      }
    }

    else if (out)
    {
      v18 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@".bnns.Ir out specified is nil"];
      v35 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v17 = [v18 errorWithDomain:@"com.apple.siri.quasar.mil2BnnsCompilation" code:2 userInfo:v16];
      goto LABEL_24;
    }
  }

  else if (out)
  {
    v14 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@".bnns.mil file nil"];
    v37[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v17 = [v14 errorWithDomain:@"com.apple.siri.quasar.mil2BnnsCompilation" code:1 userInfo:v16];
    goto LABEL_24;
  }

LABEL_26:
}

+ (BOOL)validateBnnsIr:(id)ir
{
  irCopy = ir;
  v4 = irCopy;
  if (irCopy)
  {
    [irCopy ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
  }

  v5 = kaldi::quasar::validateBnnsIr(__p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

@end
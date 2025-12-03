@interface NUCompositionUtilities
+ (BOOL)dumpComposition:(id)composition toURL:(id)l error:(id *)error;
+ (BOOL)dumpComposition:(id)composition withName:(id)name;
+ (BOOL)isHDRComposition:(id)composition;
+ (id)debugDiagnosticNameForComposition:(id)composition;
@end

@implementation NUCompositionUtilities

+ (id)debugDiagnosticNameForComposition:(id)composition
{
  v3 = [composition objectForKeyedSubscript:@"source"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    definition = [v3 definition];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      image = [definition image];

      definition = image;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sourceDefinitions = [definition sourceDefinitions];
      firstObject = [sourceDefinitions firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  v8 = [firstObject url];
  v9 = v8;
  if (v8)
  {
    lastPathComponent = [v8 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  }

  else
  {
    stringByDeletingPathExtension = 0;
  }

  return stringByDeletingPathExtension;
}

+ (BOOL)dumpComposition:(id)composition withName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DFF8];
  nameCopy = name;
  compositionCopy = composition;
  v8 = NSTemporaryDirectory();
  v9 = [v5 fileURLWithPath:v8 isDirectory:1];
  v10 = [v9 URLByAppendingPathComponent:nameCopy];

  v11 = [v10 URLByAppendingPathExtension:@"plist"];

  v19 = 0;
  v12 = [NUCompositionUtilities dumpComposition:compositionCopy toURL:v11 error:&v19];

  v13 = v19;
  if (v12)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_29311);
    }

    v14 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      path = [v11 path];
      *buf = 138412290;
      v21 = path;
      _os_log_impl(&dword_1C0184000, v15, OS_LOG_TYPE_INFO, "Successfully dumped the composition to file %@", buf, 0xCu);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_29311);
    }

    v17 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_1C0184000, v17, OS_LOG_TYPE_INFO, "Failed to dump the composition: %@", buf, 0xCu);
    }
  }

  return v12;
}

+ (BOOL)dumpComposition:(id)composition toURL:(id)l error:(id *)error
{
  lCopy = l;
  v8 = [NUAdjustmentSerialization propertyListFromComposition:composition error:error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 writeToURL:lCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)isHDRComposition:(id)composition
{
  compositionCopy = composition;
  if (!compositionCopy || !+[NUGlobalSettings enableHDRSupport])
  {
    isHDR = 0;
    goto LABEL_6;
  }

  if (!+[NUGlobalSettings allAssetsCanUseHDRPipeline])
  {
    if ([compositionCopy mediaType] == 2)
    {
      v6 = [(NURenderRequest *)[NUVideoPropertiesRequest alloc] initWithComposition:compositionCopy];
      [(NURenderRequest *)v6 setName:@"NUCompositionUtilities-isHDRComposition-videoProperties"];
      v12 = 0;
      v7 = [(NUVideoPropertiesRequest *)v6 submitSynchronous:&v12];
      properties = [v7 properties];

      if (properties)
      {
        isHDR = [properties isHDR];
LABEL_12:

LABEL_14:
        goto LABEL_6;
      }
    }

    else
    {
      v6 = [(NURenderRequest *)[NUImagePropertiesRequest alloc] initWithComposition:compositionCopy];
      [(NURenderRequest *)v6 setName:@"NUCompositionUtilities-isHDRComposition-imageProperties"];
      v11 = 0;
      v9 = [(NUVideoPropertiesRequest *)v6 submitSynchronous:&v11];
      properties = [v9 properties];

      if (properties)
      {
        colorSpace = [properties colorSpace];
        isHDR = [colorSpace isHDR];

        goto LABEL_12;
      }
    }

    isHDR = 0;
    goto LABEL_14;
  }

  isHDR = 1;
LABEL_6:

  return isHDR;
}

@end
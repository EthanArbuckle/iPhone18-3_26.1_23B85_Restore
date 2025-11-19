@interface _EARAppLmArtifactUtils
+ (BOOL)addCustomPronsToUserProfile:(id)a3 artifact:(id)a4 configPath:(id)a5;
@end

@implementation _EARAppLmArtifactUtils

+ (BOOL)addCustomPronsToUserProfile:(id)a3 artifact:(id)a4 configPath:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 stringByDeletingLastPathComponent];
  if ([v7 getLifeCycleStage] == 2)
  {
    v15 = [v9 stringByAppendingPathComponent:@"ncs"];
  }

  else
  {
    v15 = 0;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"custom-prons"];
  if ([v7 hasContent:v10])
  {

    goto LABEL_7;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"oov"];
  v12 = [v7 hasContent:v11];

  if (v12)
  {
LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(&__p, [v8 UTF8String]);
    quasar::artifact::GetTargetLmeForAddingCustomProns();
  }

  v13 = EarArtifactLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B501D000, v13, OS_LOG_TYPE_DEFAULT, "No custom prons or OOVs present in artifact", buf, 2u);
  }

  return 0;
}

@end
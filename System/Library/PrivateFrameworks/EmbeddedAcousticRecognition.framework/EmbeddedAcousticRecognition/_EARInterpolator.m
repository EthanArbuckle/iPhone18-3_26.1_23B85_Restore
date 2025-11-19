@interface _EARInterpolator
+ (id)interpolate:(id)a3 configPath:(id)a4 dataRoot:(id)a5 modelRoot:(id)a6;
@end

@implementation _EARInterpolator

+ (id)interpolate:(id)a3 configPath:(id)a4 dataRoot:(id)a5 modelRoot:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    [v10 ear_toString];
  }

  *buf = 0u;
  v16 = 0u;
  v17 = 1065353216;
  quasar::SystemConfig::SystemConfig(v14);
}

@end
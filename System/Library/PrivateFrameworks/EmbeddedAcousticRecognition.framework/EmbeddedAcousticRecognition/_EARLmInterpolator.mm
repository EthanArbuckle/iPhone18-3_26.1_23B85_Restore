@interface _EARLmInterpolator
+ (id)interpolateArpaFilePaths:(id)paths configPath:(id)path dataRoot:(id)root modelRoot:(id)modelRoot;
@end

@implementation _EARLmInterpolator

+ (id)interpolateArpaFilePaths:(id)paths configPath:(id)path dataRoot:(id)root modelRoot:(id)modelRoot
{
  v18 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  pathCopy = path;
  rootCopy = root;
  modelRootCopy = modelRoot;
  if (pathCopy)
  {
    [pathCopy ear_toString];
  }

  *buf = 0u;
  v16 = 0u;
  v17 = 1065353216;
  quasar::SystemConfig::SystemConfig(v14);
}

@end
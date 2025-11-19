@interface FIICloudDrive
+ (pair<FINode)findUnderlyingNodes;
- (FIICloudDrive)init;
@end

@implementation FIICloudDrive

- (FIICloudDrive)init
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  if (v3)
  {
    [v3 findUnderlyingNodes];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v4 = [(FIICloudDrive *)self _libraries];
  if (v4)
  {
    [(FIICloudDrive *)self _documents];
  }

  v5 = MEMORY[0x1E695DFD8];
  v14[0] = v13;
  v14[1] = v12;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v5 setWithArray:v6];
  v11.receiver = self;
  v11.super_class = FIICloudDrive;
  v8 = [(FICompoundNode *)&v11 initWithNodes:v7 subject:v13];

  [(FIICloudDrive *)v8 set_libraries:v12];
  [(FIICloudDrive *)v8 set_documents:v13];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (pair<FINode)findUnderlyingNodes
{
  v3 = v2;
  v4 = +[FINode iCloudLibrariesContainer];
  v5 = +[FINode iCloudDefaultContainer];
  *v3 = v4;
  v3[1] = v5;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

@end
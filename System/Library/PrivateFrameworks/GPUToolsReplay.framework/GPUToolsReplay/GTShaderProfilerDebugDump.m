@interface GTShaderProfilerDebugDump
+ (id)debugDump;
- (GTShaderProfilerDebugDump)initWithDirectory:(id)a3;
- (id)filePathFromFileName:(id)a3;
- (void)setDirectory:(id)a3;
@end

@implementation GTShaderProfilerDebugDump

- (id)filePathFromFileName:(id)a3
{
  v3 = [(NSString *)self->_directory stringByAppendingPathComponent:a3];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 stringByDeletingLastPathComponent];
  v6 = [v4 fileExistsAtPath:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v3 stringByDeletingLastPathComponent];
    [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v3;
}

- (void)setDirectory:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_directory, a3);
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];
}

- (GTShaderProfilerDebugDump)initWithDirectory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GTShaderProfilerDebugDump;
  v6 = [(GTShaderProfilerDebugDump *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directory, a3);
  }

  return v7;
}

+ (id)debugDump
{
  {
    +[GTShaderProfilerDebugDump debugDump]::dump = [[GTShaderProfilerDebugDump alloc] initWithDirectory:@"/tmp/com.apple.gputools.profiling/"];
  }

  v2 = +[GTShaderProfilerDebugDump debugDump]::dump;

  return v2;
}

@end
@interface GTShaderProfilerDebugDump
+ (id)debugDump;
- (GTShaderProfilerDebugDump)initWithDirectory:(id)directory;
- (id)filePathFromFileName:(id)name;
- (void)setDirectory:(id)directory;
@end

@implementation GTShaderProfilerDebugDump

- (id)filePathFromFileName:(id)name
{
  v3 = [(NSString *)self->_directory stringByAppendingPathComponent:name];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  stringByDeletingLastPathComponent = [v3 stringByDeletingLastPathComponent];
  v6 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

  if ((v6 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    stringByDeletingLastPathComponent2 = [v3 stringByDeletingLastPathComponent];
    [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent2 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v3;
}

- (void)setDirectory:(id)directory
{
  directoryCopy = directory;
  objc_storeStrong(&self->_directory, directory);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:0];
}

- (GTShaderProfilerDebugDump)initWithDirectory:(id)directory
{
  directoryCopy = directory;
  v9.receiver = self;
  v9.super_class = GTShaderProfilerDebugDump;
  v6 = [(GTShaderProfilerDebugDump *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directory, directory);
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
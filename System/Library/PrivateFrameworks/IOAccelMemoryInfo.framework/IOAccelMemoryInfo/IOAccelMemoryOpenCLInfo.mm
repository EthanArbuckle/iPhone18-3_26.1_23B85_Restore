@interface IOAccelMemoryOpenCLInfo
- (id)description;
- (void)dealloc;
@end

@implementation IOAccelMemoryOpenCLInfo

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"%@, Context %@, %@ 0x%llx", pid2name(-[IOAccelMemoryOpenCLInfo pid](self, "pid")), -[IOAccelMemoryOpenCLInfo cl_context](self, "cl_context"), -[IOAccelMemoryOpenCLInfo objectType](self, "objectType"), -[IOAccelMemoryOpenCLInfo cl_mem](self, "cl_mem")];
  if ([(IOAccelMemoryOpenCLInfo *)self objectDescription])
  {
    [string appendFormat:@" (%@)", -[IOAccelMemoryOpenCLInfo objectDescription](self, "objectDescription")];
  }

  return string;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOAccelMemoryOpenCLInfo;
  [(IOAccelMemoryOpenCLInfo *)&v3 dealloc];
}

@end
@interface IOAccelMemoryOpenGLInfo
- (id)description;
- (void)dealloc;
@end

@implementation IOAccelMemoryOpenGLInfo

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  objectType = [(IOAccelMemoryOpenGLInfo *)self objectType];
  if (objectType > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_2797927A0[objectType];
  }

  [string appendFormat:@"%@ Sharegroup %@ %@ %d", pid2name(-[IOAccelMemoryOpenGLInfo pid](self, "pid")), -[IOAccelMemoryOpenGLInfo sharegroup](self, "sharegroup"), v5, -[IOAccelMemoryOpenGLInfo name](self, "name")];
  if ([(IOAccelMemoryOpenGLInfo *)self debugLabel]|| [(IOAccelMemoryOpenGLInfo *)self objectDescription])
  {
    objc_msgSend(string, "appendString:", @" (");
    if ([(IOAccelMemoryOpenGLInfo *)self debugLabel])
    {
      [string appendString:{-[IOAccelMemoryOpenGLInfo debugLabel](self, "debugLabel")}];
      if ([(IOAccelMemoryOpenGLInfo *)self objectDescription])
      {
        [string appendString:{@", "}];
      }
    }

    if ([(IOAccelMemoryOpenGLInfo *)self objectDescription])
    {
      [string appendString:{-[IOAccelMemoryOpenGLInfo objectDescription](self, "objectDescription")}];
    }

    [string appendString:@""]);
  }

  if ([(IOAccelMemoryOpenGLInfo *)self blamedProcess])
  {
    [string appendFormat:@", on behalf of %@", pid2name(-[IOAccelMemoryOpenGLInfo blamedProcess](self, "blamedProcess"))];
  }

  return string;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOAccelMemoryOpenGLInfo;
  [(IOAccelMemoryOpenGLInfo *)&v3 dealloc];
}

@end
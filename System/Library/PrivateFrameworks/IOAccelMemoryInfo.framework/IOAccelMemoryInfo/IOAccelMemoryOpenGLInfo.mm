@interface IOAccelMemoryOpenGLInfo
- (id)description;
- (void)dealloc;
@end

@implementation IOAccelMemoryOpenGLInfo

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(IOAccelMemoryOpenGLInfo *)self objectType];
  if (v4 > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_2797927A0[v4];
  }

  [v3 appendFormat:@"%@ Sharegroup %@ %@ %d", pid2name(-[IOAccelMemoryOpenGLInfo pid](self, "pid")), -[IOAccelMemoryOpenGLInfo sharegroup](self, "sharegroup"), v5, -[IOAccelMemoryOpenGLInfo name](self, "name")];
  if ([(IOAccelMemoryOpenGLInfo *)self debugLabel]|| [(IOAccelMemoryOpenGLInfo *)self objectDescription])
  {
    objc_msgSend(v3, "appendString:", @" (");
    if ([(IOAccelMemoryOpenGLInfo *)self debugLabel])
    {
      [v3 appendString:{-[IOAccelMemoryOpenGLInfo debugLabel](self, "debugLabel")}];
      if ([(IOAccelMemoryOpenGLInfo *)self objectDescription])
      {
        [v3 appendString:{@", "}];
      }
    }

    if ([(IOAccelMemoryOpenGLInfo *)self objectDescription])
    {
      [v3 appendString:{-[IOAccelMemoryOpenGLInfo objectDescription](self, "objectDescription")}];
    }

    [v3 appendString:@""]);
  }

  if ([(IOAccelMemoryOpenGLInfo *)self blamedProcess])
  {
    [v3 appendFormat:@", on behalf of %@", pid2name(-[IOAccelMemoryOpenGLInfo blamedProcess](self, "blamedProcess"))];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOAccelMemoryOpenGLInfo;
  [(IOAccelMemoryOpenGLInfo *)&v3 dealloc];
}

@end
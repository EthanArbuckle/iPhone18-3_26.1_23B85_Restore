@interface MAFile
- (BOOL)releaseSandboxExtension;
- (MAFile)initWithPath:(id)a3 attributes:(id)a4 extensionHandle:(int64_t)a5;
- (void)dealloc;
@end

@implementation MAFile

- (MAFile)initWithPath:(id)a3 attributes:(id)a4 extensionHandle:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MAFile;
  v11 = [(MAFile *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_attributes, a4);
    objc_storeStrong(&v12->_pathname, a3);
    v12->_extHandle = a5;
    *&v12->_released = 256;
  }

  return v12;
}

- (BOOL)releaseSandboxExtension
{
  if (self->_released)
  {
    return 1;
  }

  else if (self->_extHandle < 0)
  {
    return 1;
  }

  else if (sandbox_extension_release())
  {
    return self->_released;
  }

  else
  {
    v2 = 1;
    self->_released = 1;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_automicallyReleaseExtension)
  {
    [(MAFile *)self releaseSandboxExtension];
  }

  v3.receiver = self;
  v3.super_class = MAFile;
  [(MAFile *)&v3 dealloc];
}

@end
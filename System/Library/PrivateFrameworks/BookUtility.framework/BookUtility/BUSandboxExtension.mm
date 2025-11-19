@interface BUSandboxExtension
- (BUSandboxExtension)initWithExtensionToken:(const char *)a3;
- (void)dealloc;
@end

@implementation BUSandboxExtension

- (BUSandboxExtension)initWithExtensionToken:(const char *)a3
{
  v7.receiver = self;
  v7.super_class = BUSandboxExtension;
  v3 = [(BUSandboxExtension *)&v7 init];
  if (v3 && (v4 = sandbox_extension_consume(), v3->_extensionHandle = v4, v4 < 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_241DCFB3C();
    }

    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)dealloc
{
  objc_msgSend_close(self, a2, v2);
  v4.receiver = self;
  v4.super_class = BUSandboxExtension;
  [(BUSandboxExtension *)&v4 dealloc];
}

@end
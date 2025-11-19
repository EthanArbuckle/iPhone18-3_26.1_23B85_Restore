@interface MLException
- (void)raise;
@end

@implementation MLException

- (void)raise
{
  v8 = *MEMORY[0x277D85DE8];
  if (__exceptionsEnabled)
  {
    v5.receiver = self;
    v5.super_class = MLException;
    [(MLException *)&v5 raise];
  }

  else
  {
    v3 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [(MLException *)self description];
      *buf = 138543362;
      v7 = v4;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "!!! ML3 raised exception while exceptions were disabled: %{public}@", buf, 0xCu);
    }
  }
}

@end
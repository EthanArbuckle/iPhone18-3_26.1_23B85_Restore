@interface CPLConfigurationDefaultURL
@end

@implementation CPLConfigurationDefaultURL

void ___CPLConfigurationDefaultURL_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://configuration.apple.com/configurations/internetservices/cloudkit/cloudphotos/cloudphotos-1.0.plist"];
  v1 = _CPLConfigurationDefaultURL_url;
  _CPLConfigurationDefaultURL_url = v0;

  if (!_CPLConfigurationDefaultURL_url)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Invalid built-in configuration URL", v6, 2u);
      }
    }

    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSURL * _Nonnull _CPLConfigurationDefaultURL(void)_block_invoke"];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLConfiguration.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:35 description:@"Invalid built-in configuration URL"];

    abort();
  }
}

@end
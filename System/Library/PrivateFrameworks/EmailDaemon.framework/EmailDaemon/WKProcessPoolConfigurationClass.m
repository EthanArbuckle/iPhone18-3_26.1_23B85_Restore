@interface WKProcessPoolConfigurationClass
@end

@implementation WKProcessPoolConfigurationClass

void __get_WKProcessPoolConfigurationClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_WKProcessPoolConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_WKProcessPoolConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_WKProcessPoolConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"EDWebContentParser.m" lineNumber:45 description:{@"Unable to find class %s", "_WKProcessPoolConfiguration"}];

    __break(1u);
  }
}

@end
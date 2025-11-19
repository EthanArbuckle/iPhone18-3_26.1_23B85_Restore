@interface WKRemoteObjectInterfaceClass
@end

@implementation WKRemoteObjectInterfaceClass

void __get_WKRemoteObjectInterfaceClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_WKRemoteObjectInterface");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_WKRemoteObjectInterfaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_WKRemoteObjectInterfaceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"EDWebContentParser.m" lineNumber:46 description:{@"Unable to find class %s", "_WKRemoteObjectInterface"}];

    __break(1u);
  }
}

@end
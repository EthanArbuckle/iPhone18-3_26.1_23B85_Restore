@interface LPLogObject
@end

@implementation LPLogObject

void ___LPLogObject_block_invoke(id a1)
{
  v1 = os_log_create("com.apple.MobileSoftwareUpdate", "libpartition2");
  v2 = _LPLogObject_obj;
  _LPLogObject_obj = v1;
}

@end
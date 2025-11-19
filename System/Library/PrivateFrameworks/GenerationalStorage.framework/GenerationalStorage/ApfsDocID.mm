@interface ApfsDocID
@end

@implementation ApfsDocID

uint64_t __gs_is_feature_flag_ApfsDocID_enabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  gs_is_feature_flag_ApfsDocID_enabled_feature_enabled = result;
  return result;
}

@end
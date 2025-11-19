@interface NSISO8601DateFormatter(HFAdditions)
+ (id)hf_rfc3339Formatter;
@end

@implementation NSISO8601DateFormatter(HFAdditions)

+ (id)hf_rfc3339Formatter
{
  if (qword_280E03DE0 != -1)
  {
    dispatch_once(&qword_280E03DE0, &__block_literal_global_235);
  }

  v1 = _MergedGlobals_328;

  return v1;
}

@end
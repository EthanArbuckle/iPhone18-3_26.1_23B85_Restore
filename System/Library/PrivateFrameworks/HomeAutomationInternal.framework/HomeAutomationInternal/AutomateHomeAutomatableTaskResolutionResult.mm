@interface AutomateHomeAutomatableTaskResolutionResult
+ (id)unsupportedForReason:(uint64_t)reason;
@end

@implementation AutomateHomeAutomatableTaskResolutionResult

+ (id)unsupportedForReason:(uint64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = sub_252E20FF8(reason);

  return v4;
}

@end
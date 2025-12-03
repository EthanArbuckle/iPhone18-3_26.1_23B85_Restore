@interface JavaNioIoVec_DirectionEnum
+ (void)initialize;
@end

@implementation JavaNioIoVec_DirectionEnum

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaNioIoVec_DirectionEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"READV", 0);
    JavaNioIoVec_DirectionEnum_values_[0] = v2;
    v3 = [JavaNioIoVec_DirectionEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"WRITEV", 1);
    qword_100558040 = v3;
    atomic_store(1u, JavaNioIoVec_DirectionEnum__initialized);
  }
}

@end
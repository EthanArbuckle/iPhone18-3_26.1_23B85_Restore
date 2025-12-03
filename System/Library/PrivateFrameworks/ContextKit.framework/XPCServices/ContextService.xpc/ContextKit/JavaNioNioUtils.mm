@interface JavaNioNioUtils
+ (id)newFileChannelWithId:(id)id withJavaIoFileDescriptor:(id)descriptor withInt:(int)int;
@end

@implementation JavaNioNioUtils

+ (id)newFileChannelWithId:(id)id withJavaIoFileDescriptor:(id)descriptor withInt:(int)int
{
  v5 = new_JavaNioFileChannelImpl_initWithId_withJavaIoFileDescriptor_withInt_(id, descriptor, int);

  return v5;
}

@end
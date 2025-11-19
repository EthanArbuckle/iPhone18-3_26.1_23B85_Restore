@interface JavaNioNioUtils
+ (id)newFileChannelWithId:(id)a3 withJavaIoFileDescriptor:(id)a4 withInt:(int)a5;
@end

@implementation JavaNioNioUtils

+ (id)newFileChannelWithId:(id)a3 withJavaIoFileDescriptor:(id)a4 withInt:(int)a5
{
  v5 = new_JavaNioFileChannelImpl_initWithId_withJavaIoFileDescriptor_withInt_(a3, a4, a5);

  return v5;
}

@end
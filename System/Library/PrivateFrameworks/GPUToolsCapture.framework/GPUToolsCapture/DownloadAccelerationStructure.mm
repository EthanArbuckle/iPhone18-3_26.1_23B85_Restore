@interface DownloadAccelerationStructure
@end

@implementation DownloadAccelerationStructure

void __DownloadAccelerationStructure_block_invoke(id a1)
{
  v1 = objc_alloc_init(MTLCommandBufferDescriptor);
  v2 = DownloadAccelerationStructure_commandBufferDescriptor;
  DownloadAccelerationStructure_commandBufferDescriptor = v1;

  if ((dword_31F7C8 & 0x100000) != 0)
  {
    v3 = DownloadAccelerationStructure_commandBufferDescriptor;
    v4 = [DownloadAccelerationStructure_commandBufferDescriptor errorOptions] | 1;

    [v3 setErrorOptions:v4];
  }
}

@end
@interface CDDevice
@end

@implementation CDDevice

uint64_t __24___CDDevice_localDevice__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = [v1 integerValue];
    if ((v2 - 1) > 6)
    {
      v3 = -1;
    }

    else
    {
      v3 = qword_1A964A528[v2 - 1];
    }

    _block_invoke_deviceClass = v3;
    CFRelease(v1);
  }

  v4 = [_CDDevice alloc];
  localDevice_localDevice = [(_CDDevice *)v4 initWithName:&stru_1F1D12BE0 deviceID:@"LOCAL" deviceClass:_block_invoke_deviceClass model:0 companion:0];

  return MEMORY[0x1EEE66BB8]();
}

@end
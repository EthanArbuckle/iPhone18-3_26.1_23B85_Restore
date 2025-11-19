@interface __IOGCFastPathRoyaReplayClient
- (int)queryInterface:(id)a3 outInterface:(void *)a4;
@end

@implementation __IOGCFastPathRoyaReplayClient

- (int)queryInterface:(id)a3 outInterface:(void *)a4
{
  v6 = CFUUIDCreateFromUUIDBytes(0, a3);
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v6, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v6, v8)))
  {
    v9 = &OBJC_IVAR_____IOGCFastPathRoyaReplayClient__IOCFPlugInVTBL;
  }

  else
  {
    v12 = CFUUIDGetConstantUUIDWithBytes(0, 0xD2u, 0x4Au, 0x24u, 0x86u, 0x3Bu, 0xCDu, 0x4Eu, 0x96u, 0xB6u, 6u, 0x34u, 0xE1u, 0x5Fu, 0xD6u, 0x66u, 0x5Cu);
    if (!CFEqual(v6, v12))
    {
      v10 = -2147483644;
      goto LABEL_5;
    }

    v9 = &OBJC_IVAR_____IOGCFastPathRoyaReplayClient__IOGCFastPathClientVTBL;
  }

  *a4 = self + *v9;
  CFRetain(self);
  v10 = 0;
LABEL_5:
  CFRelease(v6);
  return v10;
}

@end
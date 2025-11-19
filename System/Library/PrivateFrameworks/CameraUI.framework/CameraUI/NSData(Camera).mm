@interface NSData(Camera)
+ (id)dataWithIOSurface:()Camera usedSize:;
@end

@implementation NSData(Camera)

+ (id)dataWithIOSurface:()Camera usedSize:
{
  v4 = 0;
  if (buffer && a4)
  {
    if (IOSurfaceGetAllocSize(buffer) < a4 || IOSurfaceLock(buffer, 1u, 0))
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x1E695DEF0] dataWithBytes:IOSurfaceGetBaseAddress(buffer) length:a4];
      IOSurfaceUnlock(buffer, 1u, 0);
    }
  }

  return v4;
}

@end
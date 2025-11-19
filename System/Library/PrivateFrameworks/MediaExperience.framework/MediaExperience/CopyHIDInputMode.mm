@interface CopyHIDInputMode
@end

@implementation CopyHIDInputMode

void __central_CopyHIDInputMode_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*v2)
  {
    __central_CopyHIDInputMode_block_invoke_cold_1();
  }

  else
  {
    v3 = *(v2 + 8);
    if (v3 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
    {
      v4 = a1[6];
      v5 = a1[7];
      v6 = a1[8];
      VTable = CMBaseObjectGetVTable();
      v8 = *(*(VTable + 24) + 64);
      if (v8)
      {
        v9 = *(VTable + 24) + 64;
        v10 = v8(v3, v4, v5, v6);
      }

      else
      {
        v10 = -12782;
      }

      *(*(a1[4] + 8) + 24) = v10;

      CFRelease(v3);
    }

    else
    {
      *(*(a1[4] + 8) + 24) = -12782;
    }
  }
}

@end
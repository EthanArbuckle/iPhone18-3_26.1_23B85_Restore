@interface SetHIDInputMode
@end

@implementation SetHIDInputMode

void __central_SetHIDInputMode_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*v2)
  {
    __central_SetHIDInputMode_block_invoke_cold_1();
  }

  else
  {
    v3 = *(v2 + 8);
    if (v3 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()) && (v4 = CFRetain(v3)) != 0)
    {
      v5 = v4;
      v6 = a1[6];
      v7 = a1[7];
      VTable = CMBaseObjectGetVTable();
      v9 = *(*(VTable + 24) + 56);
      if (v9)
      {
        v10 = *(VTable + 24) + 56;
        v11 = v9(v5, v6, v7);
      }

      else
      {
        v11 = -12782;
      }

      *(*(a1[4] + 8) + 24) = v11;

      CFRelease(v5);
    }

    else
    {
      *(*(a1[4] + 8) + 24) = -12782;
    }
  }
}

@end
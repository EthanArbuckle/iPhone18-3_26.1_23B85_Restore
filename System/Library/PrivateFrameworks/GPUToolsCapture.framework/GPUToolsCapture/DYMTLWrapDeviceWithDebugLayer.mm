@interface DYMTLWrapDeviceWithDebugLayer
@end

@implementation DYMTLWrapDeviceWithDebugLayer

void __DYMTLWrapDeviceWithDebugLayer_block_invoke(id a1)
{
  v1 = getenv("METAL_DEVICE_WRAPPER_TYPE");
  if (v1)
  {
    v2 = atoi(v1);
  }

  else
  {
    v2 = 0;
  }

  v3 = getenv("MTL_DEBUG_LAYER");
  if (v3)
  {
    v4 = atoi(v3) != 0;
  }

  else
  {
    v4 = 0;
  }

  isDebugDevice = v4;
  v5 = getenv("MTL_SHADER_VALIDATION");
  if (v5)
  {
    v6 = atoi(v5) != 0;
  }

  else
  {
    v6 = 0;
  }

  isShaderValDevice = v6;
  if (v2 == 1)
  {
    v8 = 0;
    v7 = 1;
  }

  else
  {
    if (v2 == 5)
    {
      v7 = 1;
    }

    else
    {
      if (v2 != 4)
      {
        return;
      }

      v7 = 0;
    }

    v8 = 1;
  }

  isDebugDevice = v7;
  isShaderValDevice = v8;
}

@end
@interface GTMTLCaptureEventBuffer
@end

@implementation GTMTLCaptureEventBuffer

void __GTMTLCaptureEventBuffer_add_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) device];
  v18 = 0;
  v2 = [v1 newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal;kernel void AddEventToBuffer(device atomic_uint& count [[buffer(0)]] options:device ulong* events [[buffer(1)]] error:{constant ulong& event [[buffer(2)]]){ events[atomic_fetch_add_explicit(&count, 1, memory_order_relaxed)] = event; }", 0, &v18}];
  v3 = v18;
  if (!v3)
  {
    v5 = [v2 newFunctionWithName:@"AddEventToBuffer"];
    v17 = 0;
    v8 = [v1 newComputePipelineStateWithFunction:v5 error:&v17];
    v4 = v17;
    v9 = GTMTLCaptureEventBuffer_add_computePipeline;
    GTMTLCaptureEventBuffer_add_computePipeline = v8;

    if (v4)
    {
      if (s_logUsingOsLog == 1)
      {
        v6 = gt_tagged_log(4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          v10 = [v4 description];
          v11 = [v10 UTF8String];
          *buf = 136315138;
          v20 = v11;
          _os_log_fault_impl(&dword_0, v6, OS_LOG_TYPE_FAULT, "fail: GTMTLCaptureEventBuffer - Failed creating the pipeline state: %s", buf, 0xCu);
        }
      }

      else
      {
        v15 = __stderrp;
        v6 = [v4 description];
        v16 = [NSString stringWithFormat:@"fail: GTMTLCaptureEventBuffer - Failed creating the pipeline state: %s", [v6 UTF8String]];
        fprintf(v15, "%s\n", [v16 UTF8String]);
      }
    }

    else
    {
      v14 = [v1 newBufferWithLength:0x800000 options:0];
      v6 = eventBuffer;
      eventBuffer = v14;
    }

    goto LABEL_12;
  }

  v4 = v3;
  if (s_logUsingOsLog == 1)
  {
    v5 = gt_tagged_log(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = [v4 description];
      v7 = [v6 UTF8String];
      *buf = 136315138;
      v20 = v7;
      _os_log_fault_impl(&dword_0, v5, OS_LOG_TYPE_FAULT, "fail: GTMTLCaptureEventBuffer - Failed creating the library: %s", buf, 0xCu);
LABEL_12:
    }
  }

  else
  {
    v12 = __stderrp;
    v5 = [v3 description];
    v13 = [NSString stringWithFormat:@"fail: GTMTLCaptureEventBuffer - Failed creating the library: %s", [v5 UTF8String]];
    fprintf(v12, "%s\n", [v13 UTF8String]);
  }
}

@end
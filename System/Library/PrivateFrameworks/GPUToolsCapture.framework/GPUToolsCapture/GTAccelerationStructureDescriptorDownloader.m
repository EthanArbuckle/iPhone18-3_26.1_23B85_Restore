@interface GTAccelerationStructureDescriptorDownloader
@end

@implementation GTAccelerationStructureDescriptorDownloader

void __GTAccelerationStructureDescriptorDownloader_MTL4_make_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MTLCompileOptions);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 URLForResource:@"default" withExtension:@"metallib"];
    if (v5)
    {
      v33 = 0;
      v6 = [v1 newLibraryWithURL:v5 error:&v33];
      v7 = v33;
      if (v6)
      {
        v8 = [v6 newFunctionWithName:@"CopyAccelerationStructureState"];
        v32 = v7;
        v9 = [v1 newComputePipelineStateWithFunction:v8 error:&v32];
        v10 = v32;

        if (v9)
        {
          v31[2] = v10;
          v29 = [v6 newFunctionWithName:@"ClearAccelerationStructureChildren"];
          v11 = [v1 newComputePipelineStateWithFunction:? error:?];
          v12 = v10;

          if (v11)
          {
            obj = v11;
            v31[1] = v12;
            v27 = [v6 newFunctionWithName:@"FillInstanceHeader"];
            v13 = [v1 newComputePipelineStateWithFunction:? error:?];
            v14 = v12;

            if (v13)
            {
              v15 = [v6 newFunctionWithName:@"GetAccelerationStructureChildren"];
              if (v15)
              {
                v25 = v8;
                v31[0] = v14;
                v16 = [v1 newComputePipelineStateWithFunction:v15 error:v31];
                v26 = v31[0];

                v17 = v16;
                if (v16)
                {
                  v18 = [v6 newFunctionWithName:@"MarkAccelerationStructureChildren"];
                  v19 = v18;
                  if (v18)
                  {
                    v23 = v18;
                    v24 = v15;
                    v20 = v13;
                    v30 = v26;
                    v21 = [v1 newComputePipelineStateWithFunction:v18 error:&v30];
                    v22 = v30;

                    v8 = v25;
                    if (v21)
                    {
                      objc_storeStrong(&s_downloaderPipelines_0, v20);
                      objc_storeStrong(&s_downloaderPipelines_1, v9);
                      objc_storeStrong(&s_downloaderPipelines_2, obj);
                      objc_storeStrong(&s_downloaderPipelines_3, v17);
                      objc_storeStrong(&s_downloaderPipelines_4, v21);
                    }

                    v19 = v23;
                    v26 = v22;
                    v13 = v20;
                    v15 = v24;
                  }

                  else
                  {
                    v8 = v25;
                  }
                }

                else
                {
                  v8 = v25;
                }

                v14 = v26;
              }
            }

            v12 = v14;
            v11 = obj;
          }

          v10 = v12;
        }

        v7 = v10;
      }
    }
  }
}

void __GTAccelerationStructureDescriptorDownloader_MTL4_postProcess_block_invoke_41(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a3;
  v31 = a2;
  v4 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GTAccelerationStructureDescriptorDownloader_MTL4_postProcess_event", &unk_2E94FB, buf, 2u);
  }

  v5 = *(a1 + 56);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 32);
  v33 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v33)
  {
    v6 = *v46;
    s();
    v8 = v7;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v46 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v45 + 1) + 8 * i);
        v11 = [v10 stateBuffer];
        v12 = v11;
        if (v11 && [v11 length] >= 8)
        {
          v13 = *([v12 contents] + 1);
          v34 = vand_s8(vshl_u32(vdup_n_s32(v13), 0xFFFFFFFEFFFFFFFFLL), 0x100000001);
          LODWORD(v35) = (v13 >> 3) & 1;
          HIDWORD(v35) = v13 & 1;
        }

        else
        {
          v35 = 0;
          v34 = 0;
        }

        v14 = *(a1 + 72);
        v37 = 0;
        v38 = 0;
        *buf = v14;
        v15 = *v8;
        *v8 = v5;
        v39 = v5;
        v40 = v15;
        v41 = *(v8 + 8);
        v42 = 16400;
        v43 = 0;
        v44 = 0;
        GTTraceEncoder_setStream(buf, [*(a1 + 40) traceStream]);
        v16 = v38;
        *(v38 + 8) = -10138;
        v17 = v42;
        if (v42 > 0x20uLL)
        {
          v19 = *(v37 + 24);
          v20 = v6;
          v21 = a1;
          v22 = HIBYTE(v42);
          ++HIBYTE(v42);
          v18 = GTTraceMemPool_allocateBytes(v19, v39, v22 | 0x2000000000) + 16;
          v17 = v22;
          a1 = v21;
          v6 = v20;
        }

        else
        {
          v18 = (v16 + v42);
          LOBYTE(v42) = v42 + 32;
        }

        *(v16 + 13) = v17;
        v23 = [*(a1 + 40) traceStream];
        if (v23)
        {
          v24 = *v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = [v10 traceStream];
        if (v25)
        {
          v26 = *v25;
        }

        else
        {
          v26 = 0;
        }

        *v18 = v24;
        *(v18 + 1) = v26;
        *(v18 + 4) = HIDWORD(v35);
        *(v18 + 20) = v34;
        *(v18 + 7) = v35;
        v27 = v38;
        *v8 = v40;
        *(v8 + 8) = v41;
        *(v27 + 15) |= 8u;
        ++v5;
      }

      v33 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v33);
  }

  [v31 setSignaledValue:v30 + 1];
  v28 = [*(a1 + 48) dispatchGroup];
  dispatch_group_leave(v28);

  v29 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GTAccelerationStructureDescriptorDownloader_MTL4_postProcess_event", &unk_2E94FB, buf, 2u);
  }
}

void __GTAccelerationStructureDescriptorDownloader_MTL4_postProcess_block_invoke(id a1)
{
  v3 = dispatch_queue_create("com.apple.gputools.GTAccelerationStructureDescriptorDownloader_MTL4", 0);
  v1 = [[MTLSharedEventListener alloc] initWithDispatchQueue:v3];
  v2 = GTAccelerationStructureDescriptorDownloader_MTL4_postProcess_descriptorDownloaderEventListener;
  GTAccelerationStructureDescriptorDownloader_MTL4_postProcess_descriptorDownloaderEventListener = v1;
}

void __GTAccelerationStructureDescriptorDownloader_postProcess_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a3;
  v31 = a2;
  v4 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GTAccelerationStructureDescriptorDownloader_postProcess_event", &unk_2E94FB, buf, 2u);
  }

  v5 = *(a1 + 56);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 32);
  v33 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v33)
  {
    v6 = *v46;
    s();
    v8 = v7;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v46 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v45 + 1) + 8 * i);
        v11 = [v10 stateBuffer];
        v12 = v11;
        if (v11 && [v11 length] >= 8)
        {
          v13 = *([v12 contents] + 1);
          v34 = vand_s8(vshl_u32(vdup_n_s32(v13), 0xFFFFFFFEFFFFFFFFLL), 0x100000001);
          LODWORD(v35) = (v13 >> 3) & 1;
          HIDWORD(v35) = v13 & 1;
        }

        else
        {
          v35 = 0;
          v34 = 0;
        }

        v14 = *(a1 + 72);
        v37 = 0;
        v38 = 0;
        *buf = v14;
        v15 = *v8;
        *v8 = v5;
        v39 = v5;
        v40 = v15;
        v41 = *(v8 + 8);
        v42 = 16400;
        v43 = 0;
        v44 = 0;
        GTTraceEncoder_setStream(buf, [*(a1 + 40) traceStream]);
        v16 = v38;
        *(v38 + 8) = -10158;
        v17 = v42;
        if (v42 > 0x20uLL)
        {
          v19 = *(v37 + 24);
          v20 = v6;
          v21 = a1;
          v22 = HIBYTE(v42);
          ++HIBYTE(v42);
          v18 = GTTraceMemPool_allocateBytes(v19, v39, v22 | 0x2000000000) + 16;
          v17 = v22;
          a1 = v21;
          v6 = v20;
        }

        else
        {
          v18 = (v16 + v42);
          LOBYTE(v42) = v42 + 32;
        }

        *(v16 + 13) = v17;
        v23 = [*(a1 + 40) traceStream];
        if (v23)
        {
          v24 = *v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = [v10 traceStream];
        if (v25)
        {
          v26 = *v25;
        }

        else
        {
          v26 = 0;
        }

        *v18 = v24;
        *(v18 + 1) = v26;
        *(v18 + 4) = HIDWORD(v35);
        *(v18 + 20) = v34;
        *(v18 + 7) = v35;
        v27 = v38;
        *v8 = v40;
        *(v8 + 8) = v41;
        *(v27 + 15) |= 8u;
        ++v5;
      }

      v33 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v33);
  }

  [v31 setSignaledValue:v30 + 1];
  v28 = [*(a1 + 48) dispatchGroup];
  dispatch_group_leave(v28);

  v29 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GTAccelerationStructureDescriptorDownloader_postProcess_event", &unk_2E94FB, buf, 2u);
  }
}

void __GTAccelerationStructureDescriptorDownloader_markChildren_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) device];
  BuildPipelines(v1);
}

void __GTAccelerationStructureDescriptorDownloader_fillChildrenBuffer_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) device];
  BuildPipelines(v1);
}

@end
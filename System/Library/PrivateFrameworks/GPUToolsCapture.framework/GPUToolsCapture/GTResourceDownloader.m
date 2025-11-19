@interface GTResourceDownloader
- (GTResourceDownloader)initWithDevice:(id)a3;
- (id)getFramebufferPipeline:(unint64_t)a3;
- (id)getGPUBuffer:(unint64_t)a3;
- (id)getGPUBuffer:(unint64_t)a3 context:(id)a4;
- (id)getGPUIndirectCommandBuffer:(id)a3 count:(unint64_t)a4;
- (void)_downloadRequest:(apr_array_header_t *)a3 atPoint:(id)a4 dispatchGroup:(id)a5;
- (void)_downloadRequestOld:(apr_array_header_t *)a3 atPoint:(id)a4 dispatchGroup:(id)a5;
- (void)dealloc;
- (void)downloadRequest:(apr_array_header_t *)a3;
- (void)fillGPUBuffer:(id)a3 size:(unint64_t)a4 context:(id)a5;
@end

@implementation GTResourceDownloader

- (void)_downloadRequest:(apr_array_header_t *)a3 atPoint:(id)a4 dispatchGroup:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(GTResourceDownloader *)self _downloadRequestOld:a3 atPoint:v9 dispatchGroup:v8];
}

- (void)_downloadRequestOld:(apr_array_header_t *)a3 atPoint:(id)a4 dispatchGroup:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [[MTLSharedEventListener alloc] initWithDispatchQueue:self->_dispatchQueue];
  if (v9)
  {
    dispatch_group_enter(v9);
  }

  [v8 createContext:a3];
  atomic_fetch_add(&g_resourceCount, a3->nelts);
  v11 = [v8 waitEvent];
  v12 = [v8 waitValue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __66__GTResourceDownloader__downloadRequestOld_atPoint_dispatchGroup___block_invoke;
  v15[3] = &unk_2F2238;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v13 = v9;
  v14 = v8;
  [v11 notifyListener:v10 atValue:v12 block:v15];
}

void __66__GTResourceDownloader__downloadRequestOld_atPoint_dispatchGroup___block_invoke(uint64_t a1, void *a2)
{
  v86 = a2;
  context = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) downloadContext];
  v4 = [v3 requests];
  qsort(v4[3], *(v4 + 3), *(v4 + 2), GTResourceDownloaderRequest_compareType);
  p_prots = &OBJC_PROTOCOL___CaptureMTLObject.prots;
  v91 = a1;
  v92 = v3;
  if (v4)
  {
    while (*(v4 + 3))
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(v4 + 3);
      if (v7)
      {
        v8 = v4[3];
        v9 = *(v4 + 2);
        v10 = v7 - 1;
        *(v4 + 3) = v10;
        v11 = &v8[v10 * v9];
      }

      else
      {
        v11 = 0;
      }

      v12 = os_signpost_id_make_with_pointer(p_prots[10], v11);
      v13 = p_prots[10];
      v14 = v13;
      v15 = v12 - 1;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Capture-downloadRequest", &unk_2E94FB, buf, 2u);
      }

      v16 = v11[46];
      if (v16 <= 0x3B)
      {
        if (v11[46] > 0x31u)
        {
          if (v16 == 50)
          {
            DownloadHeap(*(a1 + 40), v3, v11);
          }

          else if (v16 == 57)
          {
            v17 = *v11;
            v18 = *(a1 + 40);
            v98 = v6;
            v19 = v3;
            v20 = v17;
            v21 = DEVICEOBJECT(v20);

            v22 = [v21 size];
            MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex((v11 + 48));
            v23 = v95 = v12;
            v24 = [v18 getGPUIndirectCommandBuffer:v22 context:v19 descriptor:v23];

            v25 = [v19 blitCommandEncoder];
            [NSString stringWithFormat:@"DownloadIndirectCommandBuffer[name=%lu, ref=%llu]", *v11, *(v11 + 1)];

            v26 = [v19 blitCommandEncoder];
            [v26 copyIndirectCommandBuffer:v21 sourceRange:0 destination:v22 destinationIndex:{v24, 0}];

            GTResourceDownloaderGetResourceFilename(v11, 0, buf, 0x80uLL);
            v27 = [v19 objects];
            v28 = [NSString stringWithUTF8String:buf];
            [v27 addObject:v28];

            v3 = v92;
            v29 = [v19 objects];
            [v29 addObject:v24];

            v30 = [v19 objects];

            v6 = v98;
            [v30 addObject:v23];

            p_prots = (&OBJC_PROTOCOL___CaptureMTLObject + 16);
            atomic_fetch_add(&g_GPUDataSize, [v24 allocatedSize]);

            v12 = v95;
          }
        }

        else if (v16 == 16)
        {
          DownloadAccelerationStructure(*(a1 + 40), v3, v11);
        }

        else if (v16 == 22)
        {
          DownloadBuffer(*(a1 + 40), v3, v11);
        }
      }

      else if (v11[46] <= 0x52u)
      {
        if (v16 == 60)
        {
          v94 = v12 - 1;
          v97 = v12;
          v100 = v6;
          v90 = *(a1 + 40);
          v88 = v3;
          v51 = *v11;
          v52 = [v51 functionArray];
          v53 = 8 * [v52 count];

          v54 = [[NSMutableData alloc] initWithLength:v53 + 8];
          v55 = [v51 functionArray];
          v56 = [v55 count];
          *[v54 mutableBytes] = v56;

          v57 = [v54 mutableBytes];
          v58 = [v51 functionArray];
          v59 = [v58 count];

          if (v59)
          {
            v60 = 0;
            v61 = v57 + 8;
            do
            {
              v62 = [v51 functionArray];
              v63 = [v62 objectAtIndexedSubscript:v60];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                *&v61[8 * v60] = 0;
              }

              else
              {
                v64 = [v51 functionArray];
                v65 = [v64 objectAtIndexedSubscript:v60];
                v66 = [v65 traceStream];
                if (v66)
                {
                  v67 = atomic_load(v66 + 7);
                  v68 = (v66 + (~(v67 >> 2) & 8));
                }

                else
                {
                  v68 = &dword_8;
                }

                *&v61[8 * v60] = *v68;
              }

              ++v60;
              v69 = [v51 functionArray];
              v70 = [v69 count];
            }

            while (v70 > v60);
          }

          GTResourceDownloaderGetResourceFilename(v11, 0, buf, 0x80uLL);
          v71 = [v88 objects];
          v72 = [NSString stringWithUTF8String:buf];
          [v71 addObject:v72];

          v73 = [v88 objects];
          [v73 addObject:v54];

          atomic_fetch_add(&g_GPUDataSize, [v54 length]);
          v3 = v92;
          v15 = v94;
          v6 = v100;
          if (objc_opt_respondsToSelector())
          {
            v74 = [[NSMutableData alloc] initWithLength:256];
            *[v74 mutableBytes] = 31;
            v75 = 0;
            v76 = [v74 mutableBytes] + 8;
            do
            {
              *&v76[8 * v75] = [v51 bufferAddressAtIndex:v75];
              ++v75;
            }

            while (v75 != 31);
            GTResourceDownloaderGetResourceFilename(v11, 1, buf, 0x80uLL);
            v77 = [v88 objects];
            v78 = [NSString stringWithUTF8String:buf];
            [v77 addObject:v78];

            v79 = [v88 objects];
            [v79 addObject:v74];

            atomic_fetch_add(&g_GPUDataSize, [v74 length]);
          }

          a1 = v91;
          p_prots = (&OBJC_PROTOCOL___CaptureMTLObject + 16);
          v12 = v97;
        }

        else if (v16 == 80)
        {
          DownloadTexture(*(a1 + 40), v3, v11, 1);
        }
      }

      else
      {
        switch(v16)
        {
          case 'S':
            v93 = v12 - 1;
            v96 = v12;
            v99 = v6;
            v89 = *(a1 + 40);
            v87 = v3;
            v31 = *v11;
            v32 = [v31 functionArray];
            v33 = 8 * [v32 count];

            v34 = [[NSMutableData alloc] initWithLength:v33];
            v35 = [v34 mutableBytes];
            v36 = [v31 functionArray];
            v37 = [v36 count];

            if (v37)
            {
              v38 = 0;
              do
              {
                v39 = [v31 functionArray];
                v40 = [v39 objectAtIndexedSubscript:v38];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v35[v38] = 0;
                }

                else
                {
                  v41 = [v31 functionArray];
                  v42 = [v41 objectAtIndexedSubscript:v38];
                  v43 = [v42 traceStream];
                  if (v43)
                  {
                    v44 = atomic_load(v43 + 7);
                    v45 = (v43 + (~(v44 >> 2) & 8));
                  }

                  else
                  {
                    v45 = &dword_8;
                  }

                  v35[v38] = *v45;
                }

                ++v38;
                v46 = [v31 functionArray];
                v47 = [v46 count];
              }

              while (v47 > v38);
            }

            GTResourceDownloaderGetResourceFilename(v11, 0, buf, 0x80uLL);
            v48 = [v87 objects];
            v49 = [NSString stringWithUTF8String:buf];
            [v48 addObject:v49];

            v50 = [v87 objects];
            [v50 addObject:v34];

            atomic_fetch_add(&g_GPUDataSize, [v34 length]);
            a1 = v91;
            v3 = v92;
            p_prots = (&OBJC_PROTOCOL___CaptureMTLObject + 16);
            v12 = v96;
            v6 = v99;
            v15 = v93;
            break;
          case 'V':
            DownloadIOSurface(*(a1 + 40), v3, v11);
            break;
          case 'e':
            DownloadTensor(*(a1 + 40), v3, v11);
            break;
        }
      }

      v80 = p_prots[10];
      v81 = v80;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v81, OS_SIGNPOST_INTERVAL_END, v12, "Capture-downloadRequest", &unk_2E94FB, buf, 2u);
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  atomic_fetch_add((*(a1 + 40) + 144), -[v3 usedGPUMemory]);
  [v3 flush];

  objc_autoreleasePoolPop(context);
  v82 = [*(a1 + 32) downloadValue];
  v83 = [*(a1 + 32) downloadEvent];
  [v83 setSignaledValue:v82];

  v84 = *(a1 + 48);
  if (v84)
  {
    dispatch_group_leave(v84);
  }
}

- (void)downloadRequest:(apr_array_header_t *)a3
{
  if (a3->nelts)
  {
    v5 = objc_opt_new();
    ++self->_downloadValue;
    [v5 setDownloadValue:?];
    [v5 setDownloadEvent:self->_downloadEvent];
    [v5 setDownloadQueue:self->_downloadQueue];
    [v5 setWaitValue:0];
    [v5 setWaitEvent:self->_downloadEvent];
    [(GTResourceDownloader *)self _downloadRequest:a3 atPoint:v5 dispatchGroup:self->_dispatchGroup];
  }
}

- (id)getFramebufferPipeline:(unint64_t)a3
{
  pthread_mutex_lock(&self->_framebufferPipelineMutex);
  pipelineCache = self->_pipelineCache;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [(NSMutableDictionary *)pipelineCache objectForKey:v6];

  if (!v7)
  {
    device = self->_device;
    v19 = 0;
    v9 = [(MTLDeviceSPI *)device newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal\n;struct VOut { float4 pos [[position]]; float2 uv; };\nvertex VOut Vertex(uint vid [[ vertex_id ]]) {VOut out; out.uv = float2((vid << 1) & 2 options:vid & 2); out.pos = float4(out.uv * 2.0f + -1.0f error:0.0f, 1.0f); return out; }\nstruct FOut { half4 rt0 [[color(0)]]; };\nfragment FOut Fragment(VOut in [[stage_in]], texture2d<half> tex) { FOut out; out.rt0 = tex.read(uint2(tex.get_width() * (in.uv.x), tex.get_height() * (1.0 - in.uv.y))); return out; }\n", 0, &v19];
    v10 = v19;
    v11 = [v9 newFunctionWithName:@"Vertex"];
    v12 = [v9 newFunctionWithName:@"Fragment"];
    v13 = objc_opt_new();
    [v13 setVertexFunction:v11];
    [v13 setFragmentFunction:v12];
    v14 = [v13 colorAttachments];
    v15 = [v14 objectAtIndexedSubscript:0];
    [v15 setPixelFormat:a3];

    v7 = [(MTLDeviceSPI *)self->_device newRenderPipelineStateWithDescriptor:v13 error:0];
    v16 = self->_pipelineCache;
    v17 = [NSNumber numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v16 setObject:v7 forKeyedSubscript:v17];
  }

  pthread_mutex_unlock(&self->_framebufferPipelineMutex);

  return v7;
}

- (id)getGPUBuffer:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  [(GTResourceDownloader *)self fillGPUBuffer:v7 size:a3 context:v6];
  v8 = [v7 buffer];
  [v6 retainMTLResource:v8];

  return v7;
}

- (id)getGPUIndirectCommandBuffer:(id)a3 count:(unint64_t)a4
{
  v6 = a3;
  if (hideMemory)
  {
    v7 = 0x40000;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MTLDeviceSPI *)self->_device newIndirectCommandBufferWithDescriptor:v6 maxCommandCount:a4 options:v7];
  if (!v8)
  {
    if (getGPUIndirectCommandBuffer_count__onceToken != -1)
    {
      dispatch_once(&getGPUIndirectCommandBuffer_count__onceToken, &__block_literal_global_365);
    }

    v8 = [(MTLDeviceSPI *)self->_device newIndirectCommandBufferWithDescriptor:v6 maxCommandCount:a4 options:0];
  }

  return v8;
}

void __58__GTResourceDownloader_getGPUIndirectCommandBuffer_count___block_invoke(id a1)
{
  if (s_logUsingOsLog == 1)
  {
    v1 = gt_tagged_log(4);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "warning: failed to mark GPU indirect buffer memory(GRAPHICS)", buf, 2u);
    }
  }

  else
  {
    v2 = __stderrp;
    v4 = [NSString stringWithFormat:@"warning: failed to mark GPU indirect buffer memory(GRAPHICS)"];
    v3 = v4;
    fprintf(v2, "%s\n", [v4 UTF8String]);
  }
}

- (id)getGPUBuffer:(unint64_t)a3
{
  v5 = [[GTDownloadGPUBuffer alloc] initWithTracking:&self->_usedGPUMemory];
  [(GTResourceDownloader *)self fillGPUBuffer:v5 size:a3 context:0];

  return v5;
}

- (void)fillGPUBuffer:(id)a3 size:(unint64_t)a4 context:(id)a5
{
  v20 = a3;
  v8 = a5;
  v9 = v8;
  v10 = (a4 + vm_page_size - 1) & -vm_page_size;
  if (!self->_maxGPUMemory)
  {
    atomic_store(0, &self->_usedGPUMemory);
    self->_maxGPUMemory = 0x8000000;
  }

  v11 = atomic_load(&self->_usedGPUMemory);
  if (v11 + v10 > self->_maxGPUMemory)
  {
    if (v8)
    {
      atomic_fetch_add(&self->_usedGPUMemory, -[v8 usedGPUMemory]);
      [v9 flush];
    }

    while (1)
    {
      v13 = atomic_load(&self->_usedGPUMemory);
      v14 = v13 + v10;
      maxGPUMemory = self->_maxGPUMemory;
      if (v14 <= maxGPUMemory)
      {
        break;
      }

      if (v10 > maxGPUMemory && !atomic_load(&self->_usedGPUMemory))
      {
        break;
      }

      usleep(0x3E8u);
    }
  }

  atomic_fetch_add(&self->_usedGPUMemory, v10);
  if (v9)
  {
    [v9 setUsedGPUMemory:{objc_msgSend(v9, "usedGPUMemory") + v10}];
  }

  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (hideMemory)
  {
    v16 = 0x40000;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(MTLDeviceSPI *)self->_device newBufferWithLength:v10 options:v16];
  [v20 setBuffer:v17];

  v18 = [v20 buffer];

  if (!v18)
  {
    if (fillGPUBuffer_size_context__onceToken != -1)
    {
      dispatch_once(&fillGPUBuffer_size_context__onceToken, &__block_literal_global_359);
    }

    v19 = [(MTLDeviceSPI *)self->_device newBufferWithLength:v10 options:0];
    [v20 setBuffer:v19];
  }

  [v20 setSize:v10];
  [v20 setOffset:0];
}

void __51__GTResourceDownloader_fillGPUBuffer_size_context___block_invoke(id a1)
{
  if (s_logUsingOsLog == 1)
  {
    v1 = gt_tagged_log(4);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "warning: failed to mark GPU buffer memory(GRAPHICS)", buf, 2u);
    }
  }

  else
  {
    v2 = __stderrp;
    v4 = [NSString stringWithFormat:@"warning: failed to mark GPU buffer memory(GRAPHICS)"];
    v3 = v4;
    fprintf(v2, "%s\n", [v4 UTF8String]);
  }
}

- (void)dealloc
{
  apr_pool_destroy(self->_pool);
  pthread_mutex_destroy(&self->_framebufferPipelineMutex);
  v3.receiver = self;
  v3.super_class = GTResourceDownloader;
  [(GTResourceDownloader *)&v3 dealloc];
}

- (GTResourceDownloader)initWithDevice:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = GTResourceDownloader;
  v5 = [(GTResourceDownloader *)&v21 init];
  v6 = v5;
  if (v5)
  {
    apr_pool_create_ex(&v5->_pool, 0, 0, 0);
    v7 = DEVICEOBJECT(v4);
    device = v6->_device;
    v6->_device = v7;

    v9 = [(MTLDeviceSPI *)v6->_device newCommandQueue];
    downloadQueue = v6->_downloadQueue;
    v6->_downloadQueue = v9;

    v11 = objc_alloc_init(MTLCommandBufferDescriptor);
    commandBufferDescriptor = v6->_commandBufferDescriptor;
    v6->_commandBufferDescriptor = v11;

    if ((dword_31F7C8 & 0x100000) != 0)
    {
      [(MTLCommandBufferDescriptor *)v6->_commandBufferDescriptor setErrorOptions:[(MTLCommandBufferDescriptor *)v6->_commandBufferDescriptor errorOptions]| 1];
    }

    v13 = [(MTLDeviceSPI *)v6->_device newSharedEvent];
    downloadEvent = v6->_downloadEvent;
    v6->_downloadEvent = v13;

    v6->_alignment = [(MTLDeviceSPI *)v6->_device linearTextureAlignmentBytes];
    v15 = [v4 dispatchGroup];
    dispatchGroup = v6->_dispatchGroup;
    v6->_dispatchGroup = v15;

    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v18 = dispatch_queue_create("com.apple.dt.GPUTools.downloader", v17);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v18;

    pthread_mutex_init(&v6->_framebufferPipelineMutex, 0);
  }

  return v6;
}

@end
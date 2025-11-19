uint64_t re::VideoPipelineHDRNode::deinit(re::VideoPipelineHDRNode *this)
{
  v1 = *(this + 11);
  if (v1)
  {
    *(this + 11) = 0;
  }

  return 0;
}

uint64_t re::VideoPipelineHDRNode::setOwner(uint64_t this, const re::VideoPixelBufferPool *a2)
{
  if (*(this + 216) != a2)
  {
    *(this + 216) = a2;
    return re::memoryAttributionVideoPixelBufferPool((this + 136), a2);
  }

  return this;
}

void re::VideoPipelineHDRNode::~VideoPipelineHDRNode(void **this)
{
  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 17));
  re::VideoHDRProcessor::~VideoHDRProcessor(this + 11);

  re::VideoPipelineUpscalingNode::~VideoPipelineUpscalingNode(this);
}

{
  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 17));
  re::VideoHDRProcessor::~VideoHDRProcessor(this + 11);
  re::VideoPipelineUpscalingNode::~VideoPipelineUpscalingNode(this);

  JUMPOUT(0x1E6906520);
}

void re::VideoPipelineProcessor::~VideoPipelineProcessor(pthread_t **this)
{
  re::VideoPipelineProcessor::deinit(this);
  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

pthread_t **re::VideoPipelineProcessor::deinit(pthread_t **this)
{
  if (*this)
  {
    v1 = this;
    atomic_store(0, *this + 8);
    FigSemaphoreSignal();
    pthread_join(**v1, 0);
    v2 = *v1;
    *v2 = 0;
    if (v2[2])
    {
      FigSemaphoreDestroy();
      v2[2] = 0;
      v2 = *v1;
    }

    v18 = 0;
    v19 = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    *v24 = 0u;
    {
      do
      {
        if (v24[1])
        {
          v3 = std::__shared_weak_count::lock(v24[1]);
          if (v3)
          {
            if (v24[0])
            {
              atomic_store(7u, v24[0]);
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v3);
          }
        }

        if (v18)
        {
          v4 = 176 * v18;
          v5 = &v20;
          do
          {
            if (*v5 == 1)
            {
              v6 = *(v5 - 14);
              if (v6)
              {
                v6(7, *(v5 - 13));
              }
            }

            v5 += 22;
            v4 -= 176;
          }

          while (v4);
        }
      }
    }

    v7 = re::VideoPipelineProcessor::handleCompletionsIfNeeded(v1);
    v8 = *v1;
    if (*v1)
    {
      v9 = v8[15];
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v10 = v8[13];
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      v11 = v8[11];
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }

      if (v8[6] && v8[7])
      {
        while (1)
        {
          v12 = CMSimpleQueueDequeue(v8[7]);
          if (!v12)
          {
            break;
          }

          {
            re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) ", "success", "clear", 182);
            _os_crash();
            __break(1u);
            break;
          }
        }

        v14 = v8[7];
        if (v14)
        {
          CFRelease(v14);
          v8[7] = 0;
        }
      }

      v15 = v8[7];
      if (v15)
      {
        CFRelease(v15);
        v8[7] = 0;
      }

      if (v8[2])
      {
        FigSemaphoreDestroy();
        v8[2] = 0;
      }

      v7 = MEMORY[0x1E6906520](v8, 0x10A0C40ABC74BD4);
    }

    *v1 = 0;
    v16 = *re::videoLogObjects(v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "De-initialized RE Video Processor thread.", buf, 2u);
    }

    if (v24[1])
    {
      std::__shared_weak_count::__release_weak(v24[1]);
    }

    if (*(&v23 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v23 + 1));
    }

    if (*(&v22 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v22 + 1));
    }

    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v21 + 1));
    }

    return re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::clear(&v18);
  }

  return this;
}

void re::VideoPipelineProcessor::init(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!*a1)
  {
    operator new();
  }
}

uint64_t re::VideoPipelineProcessor::threadFunction(re::VideoPipelineProcessor *this, void *a2)
{
  v3 = pthread_setname_np("RE Video Processor");
  v4 = *re::videoLogObjects(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "RE Video Processor thread started.", &v20, 2u);
  }

  if (this && *(this + 2))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = atomic_load(this + 8);
    if (v7)
    {
      do
      {
        v8 = objc_autoreleasePoolPush();
        v20 = 0;
        v21 = 0;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        {
          if (re::VideoPipelineProcessor::process(this, &v20, &v22, 0))
          {
            v9 = 1;
          }

          else
          {
            v9 = 8;
          }
        }

        else
        {
          v9 = 1;
        }

        if (*(&v25 + 1))
        {
          v10 = std::__shared_weak_count::lock(*(&v25 + 1));
          if (v10)
          {
            if (v25)
            {
              atomic_store(v9, v25);
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v10);
          }

          v11 = *(&v25 + 1);
          v25 = 0uLL;
          if (v11)
          {
            std::__shared_weak_count::__release_weak(v11);
          }
        }

        else
        {
          v25 = 0uLL;
        }

        re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::clear(&v20);
        v12 = *(&v22 + 1);
        v22 = 0u;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v13 = *(&v23 + 1);
        v23 = 0u;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        v14 = *(&v24 + 1);
        v24 = 0u;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v14);
        }

        if (*(&v25 + 1))
        {
          std::__shared_weak_count::__release_weak(*(&v25 + 1));
        }

        if (*(&v24 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v24 + 1));
        }

        if (*(&v23 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v23 + 1));
        }

        if (*(&v22 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v22 + 1));
        }

        re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::clear(&v20);
        objc_autoreleasePoolPop(v8);
        FigSemaphoreWaitRelative();
        v15 = atomic_load(this + 8);
      }

      while ((v15 & 1) != 0);
    }

    objc_autoreleasePoolPop(v6);
    v17 = *re::videoLogObjects(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "RE Video Processor thread ended.", &v20, 2u);
    }
  }

  else
  {
    v18 = *re::videoLogObjects(v5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Video Processor thread does not have a valid context.", &v20, 2u);
    }
  }

  return 0;
}

uint64_t re::FixedSpscQueue<anonymous namespace::VideoPipelineProcessorAsyncPayload>::pop(uint64_t a1, uint64_t a2)
{
  v4 = CMSimpleQueueDequeue(*(a1 + 32));
  v5 = v4;
  if (!v4)
  {
    return v5 != 0;
  }

  if (v4 != a2)
  {
    re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::copy(a2, v4);
    ++*(a2 + 8);
  }

  v6 = v5[354];
  v7 = v5[355];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 2832) = v6;
  v8 = *(a2 + 2840);
  *(a2 + 2840) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = v5[356];
  v10 = v5[357];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 2848) = v9;
  v11 = *(a2 + 2856);
  *(a2 + 2856) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = v5[358];
  v13 = v5[359];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 2864) = v12;
  v14 = *(a2 + 2872);
  *(a2 + 2872) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = v5[360];
  v16 = v5[361];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 2880) = v15;
  v17 = *(a2 + 2888);
  *(a2 + 2888) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  {
    return v5 != 0;
  }

  re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) ", "success", "pop", 161);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t *re::VideoPipelineProcessor::handleCompletionsIfNeeded(uint64_t *this)
{
  v2 = *this;
  if (*this && *(v2 + 128) == 1)
  {
    v3 = this;
    v4 = *(v2 + 72);
    if (v4)
    {
      [v4 dispatchAvailableCompletionNotifications];
      v2 = *v3;
    }

    this = *(v2 + 64);
    if (this)
    {

      return [this dispatchAvailableCompletionNotifications];
    }
  }

  return this;
}

uint64_t re::VideoPipelineProcessor::process(std::__shared_weak_count *a1, void *a2, uint64_t a3, int a4)
{
  v4 = a2;
  v73 = *MEMORY[0x1E69E9840];
  v59 = a2 + 2;
  if (!*a2)
  {
LABEL_54:
    result = re::VideoDefaults::logEnabled(a1);
    if (result)
    {
      if (*v4)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 176 * *v4;
        v40 = v4 + 22;
        do
        {
          if (*v40 == 1)
          {
            v41 = *(v40 - 12);
            v33 = v41 != 0;
            v34 = v41 == 0;
            result = *(v40 - 9);
            v35 |= *(v40 - 8) != 0;
            if (result)
            {
              result = std::__shared_weak_count::lock(result);
              if (result)
              {
                v42 = *(v40 - 10) != 0;
                std::__shared_weak_count::__release_shared[abi:nn200100](result);
                v36 |= v42;
              }
            }
          }

          v43 = *v40;
          v40 += 44;
          v38 |= v43 == 3;
          v37 |= v43 == 2;
          v39 -= 176;
        }

        while (v39);
      }

      else
      {
        v38 = 0;
        v37 = 0;
        v36 = 0;
        v35 = 0;
        v34 = 0;
        v33 = 0;
      }

      v47 = *re::videoLogObjects(result);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = "✘";
        if (a4)
        {
          v49 = "✔";
        }

        else
        {
          v49 = "✘";
        }

        if (v33)
        {
          v50 = "✔";
        }

        else
        {
          v50 = "✘";
        }

        *buf = 136316674;
        *&buf[4] = v49;
        if (v34)
        {
          v51 = "✔";
        }

        else
        {
          v51 = "✘";
        }

        buf_12 = 2080;
        buf_14 = v50;
        if (v35)
        {
          v52 = "✔";
        }

        else
        {
          v52 = "✘";
        }

        v63 = 2080;
        v64 = v51;
        if (v36)
        {
          v53 = "✔";
        }

        else
        {
          v53 = "✘";
        }

        v65 = 2080;
        v66 = v52;
        if (v38)
        {
          v54 = "✔";
        }

        else
        {
          v54 = "✘";
        }

        v67 = 2080;
        if (v37)
        {
          v48 = "✔";
        }

        v68 = v53;
        v69 = 2080;
        v70 = v54;
        v71 = 2080;
        *&v72 = v48;
        _os_log_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_DEFAULT, "[VideoPipelineProcessor::process] synchronous: %s, hdr: %s, transform: %s, ase: %s, histogram: %s, pse: %s, mipgen: %s", buf, 0x48u);
      }

      return 0;
    }

    return result;
  }

  v5 = &a1->__vftable;
  v6 = 0;
  v57 = 176 * *a2;
  v7 = 64;
  if (a4)
  {
    v7 = 72;
  }

  v58 = v7;
  while (1)
  {
    v8 = &v4[v6 / 8];
    v9 = v4[v6 / 8 + 22];
    if (v9 == 1)
    {
      if (v5 && (v10 = v5[10]) != 0 && *v10)
      {
        if (v8[2] && v4[v6 / 8 + 3])
        {
          operator new();
        }

        v31 = *re::videoLogObjects(a1);
        a1 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        if (a1)
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "[VideoPipelineProcessor::process (Surface Acclerator)] Invalid surfaces.", buf, 2u);
        }
      }

      else
      {
        v29 = *re::videoLogObjects(a1);
        a1 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "[VideoPipelineProcessor::process (Surface Acclerator)] Surface Accelerator not intialized.", buf, 2u);
        }
      }

      v11 = 1;
      v9 = *(v8 + 44);
    }

    else
    {
      v11 = 1;
    }

    if (v9 == 3)
    {
      v12 = &v4[v6 / 8];
      if (v4[v6 / 8 + 5] && (v14 = v12[6], v13 = v12 + 6, v14))
      {
        a1 = v4[v6 / 8 + 3];
        if (a1)
        {
          a1 = std::__shared_weak_count::lock(a1);
          if (a1)
          {
            v15 = a1;
            v16 = v8[2];
            if (v16)
            {
              if (*v16)
              {
                v11 = re::VideoPSEProcessor::Processor::process(*v16, &v4[v6 / 8 + 5], v13, *&v4[v6 / 8 + 4], *&v4[v6 / 8 + 7], *(&v4[v6 / 8 + 7] + 1));
              }

              else
              {
                v11 = 1;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v15);
              goto LABEL_24;
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](a1);
          }
        }
      }

      else
      {
        v17 = *re::videoLogObjects(a1);
        a1 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (a1)
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "[VideoPipelineProcessor::process (PSE)] Configuration has invalid surfaces.", buf, 2u);
        }
      }

      v11 = 1;
LABEL_24:
      v9 = *(v8 + 44);
    }

    if (v9 == 2)
    {
      if (v5)
      {
        v18 = v5[12];
        if (v18)
        {
          if (*v18)
          {
            *buf = 0;
            operator new();
          }
        }
      }

      v30 = *re::videoLogObjects(a1);
      a1 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "[VideoPipelineProcessor::process (Mip)] Mip Processor not intialized.", buf, 2u);
      }

      v11 = 1;
      v9 = *(v8 + 44);
    }

    if (v9 != 4)
    {
      goto LABEL_39;
    }

    if (!v5)
    {
      break;
    }

    if (!v8[2] || (v19 = &v4[v6 / 8 + 3], !*v19))
    {
      v44 = *re::videoLogObjects(a1);
      a1 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (!a1)
      {
        goto LABEL_66;
      }

      *buf = 0;
      v45 = "[VideoPipelineProcessor::process (HDR GPU)] Surface is invalid.";
      goto LABEL_71;
    }

    if (!v5[14])
    {
      operator new();
    }

    v20 = *(v5 + v58);
    v21 = [v20 commandBuffer];
    v22 = v5[14];
    v23 = *(&v4[v6 / 8 + 7] + 1);
    v24 = *&v4[v6 / 8 + 8];
    v25 = *(&v4[v6 / 8 + 8] + 1);
    v26 = *&v4[v6 / 8 + 9];
    v27 = *&v4[v6 / 8 + 10];
    v28 = *(&v4[v6 / 8 + 10] + 1);
    if (*v19)
    {
      IOSurfaceGetWidth(*v19);
      if (*v19)
      {
        IOSurfaceGetHeight(*v19);
      }
    }

    v11 = re::VideoHDRProcessor::processViaGPU(v22, v8 + 2, v19, &v4[v6 / 8 + 4], v21, v23, v24, v25, v26, v27, v28);

    v4 = a2;
LABEL_39:
    if (v11)
    {
      goto LABEL_66;
    }

    v59 += 22;
    v6 += 176;
    if (v57 == v6)
    {
      goto LABEL_54;
    }
  }

  v44 = *re::videoLogObjects(a1);
  a1 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
  if (!a1)
  {
    goto LABEL_66;
  }

  *buf = 0;
  v45 = "[VideoPipelineProcessor::process (HDR GPU)] Context is invalid.";
LABEL_71:
  _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, v45, buf, 2u);
LABEL_66:
  v46 = *re::videoLogObjects(a1);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, "[VideoPipelineProcessor::process] Failed to process payload.", buf, 2u);
  }

  return 1;
}

uint64_t anonymous namespace::videoSurfaceAcceleratorCompletionCallback(uint64_t result, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 16);
    if (v4)
    {
      v4(result, *(a2 + 24));
    }

    if (!v3)
    {
      v16 = *(a2 + 8);
      if (v16)
      {
        v17 = std::__shared_weak_count::lock(v16);
        if (v17)
        {
          v18 = v17;
          v19 = *a2;
          if (*a2)
          {
            v20 = *(a2 + 48);
            if (v20)
            {
              v21 = std::__shared_weak_count::lock(v20);
              if (v21)
              {
                v22 = v21;
                v23 = *(a2 + 40);
                if (v23)
                {
                  v24 = re::VideoSurfaceAccelerator::histogram(v19, v23);
                  if (v24)
                  {
                    v25 = *re::videoLogObjects(v24);
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                    {
                      v36[0] = 67109120;
                      v36[1] = 0;
                      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "[videoSurfaceAcceleratorCompletionCallback] Cannot get histogram: %x", v36, 8u);
                    }
                  }
                }

                std::__shared_weak_count::__release_shared[abi:nn200100](v22);
              }
            }
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }
      }

      if (*(a2 + 80))
      {
        v26 = *(a2 + 72);
        if (v26)
        {
          v27 = std::__shared_weak_count::lock(v26);
          if (v27)
          {
            v28 = v27;
            v29 = *(a2 + 64);
            if (v29)
            {
              v30 = *(a2 + 80);
              os_unfair_lock_lock(*(a2 + 64));
              memcpy((v29 + 472), v30, 0x17CuLL);
              atomic_store(1u, (v29 + 4));
              os_unfair_lock_unlock(v29);
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v28);
          }
        }
      }

      if (*(a2 + 96))
      {
        v31 = *(a2 + 72);
        if (v31)
        {
          v32 = std::__shared_weak_count::lock(v31);
          if (v32)
          {
            v33 = v32;
            v34 = *(a2 + 64);
            if (v34)
            {
              v35 = *(a2 + 96);
              os_unfair_lock_lock(*(a2 + 64));
              memcpy((v34 + 472), v35, 0x1D0uLL);
              atomic_store(1u, (v34 + 4));
              os_unfair_lock_unlock(v34);
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v33);
          }
        }
      }
    }

    v5 = *(a2 + 120);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(a2 + 136);
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(a2 + 152);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      v8 = *(a2 + 152);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    v9 = *(a2 + 136);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = *(a2 + 120);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = *(a2 + 104);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = *(a2 + 88);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = *(a2 + 72);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if (*(a2 + 56))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a2 + 56));
    }

    *(a2 + 56) = 0;
    v14 = *(a2 + 48);
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if (*(a2 + 32))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a2 + 32));
    }

    *(a2 + 32) = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    return MEMORY[0x1E6906520](a2, 0xE0C40DB9D907FLL);
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 16);
    if (v4)
    {
      v4(result, *(a2 + 24));
    }

    v5 = *(a2 + 32);
    if (v5)
    {
      v5(v3, *(a2 + 40));
    }

    if (!v3)
    {
      v9 = *(a2 + 8);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = v10;
          v12 = *a2;
          if (*a2)
          {
            v13 = *(a2 + 56);
            if (v13)
            {
              v14 = std::__shared_weak_count::lock(v13);
              if (v14)
              {
                v15 = v14;
                v16 = *(a2 + 48);
                if (v16)
                {
                  v17 = re::VideoSurfaceAccelerator::histogram(v12, v16);
                  if (v17)
                  {
                    v18 = *re::videoLogObjects(v17);
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                    {
                      v19[0] = 67109120;
                      v19[1] = 0;
                      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Cannot get histogram: %x", v19, 8u);
                    }
                  }
                }

                std::__shared_weak_count::__release_shared[abi:nn200100](v15);
              }
            }
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }
      }
    }

    v6 = *(a2 + 72);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(a2 + 56);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    return (*(qword_1EE1C4868 + 40))();
  }

  return result;
}

void anonymous namespace::videoMetalCompletionCallback(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = a2[3];
    a2[2] = 0;
    a2[3] = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = a2[5];
    a2[4] = 0;
    a2[5] = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      v6 = a2[5];
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    v7 = a2[3];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = a2[1];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    JUMPOUT(0x1E6906520);
  }
}

void re::VideoPipelineProcessor::dispatch(uint64_t a1, uint64_t a2, unint64_t **a3, int a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    v12 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[VideoPipelineProcessor::dispatch] Processor is not initialized.", v15, 2u);
    }

    operator new();
  }

  v9 = re::VideoAutoCounter::count((a1 + 24));
  v10 = re::VideoAutoCounter::count(a3);
  if (a5 && v10 >= 2)
  {
    v13 = v10;
    v14 = *re::videoLogObjects(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 134217984;
      *&v15[4] = v13;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "[VideoPipelineProcessor::dispatch] Pipeline Workload count at capacity (%lld)", v15, 0xCu);
    }

    operator new();
  }

  if (re::VideoDefaults::autoSynchronousProcessingAllowed(v10))
  {
    v11 = re::VideoDefaults::overrideProcessorSynchronousWorkThreshold(5);
    if (a4 && v9 < v11)
    {
LABEL_7:
      re::VideoAutoCounter::increment((a1 + 8));
    }
  }

  else if (a4)
  {
    goto LABEL_7;
  }

  operator new();
}

void re::FixedSpscPool<anonymous namespace::VideoPipelineProcessorAsyncPayload>::deinit(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  if (a1[1])
  {
    (*(**a1 + 40))();
    a1[1] = 0;
  }

  *a1 = 0;
  a1[2] = 0;
}

BOOL re::FixedSpscPool<anonymous namespace::VideoPipelineProcessorAsyncPayload>::release(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 > a2)
  {
    return 0;
  }

  if (v2 + 2896 * *(a1 + 16) - 2896 < a2 || __ROR8__(0x3454DCA410F8ED9DLL * (a2 - v2), 4) > 0x16A13CD1537290uLL)
  {
    return 0;
  }

  v5 = a2[361];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a2[359];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = a2[357];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = a2[355];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::clear(a2);
  return CMSimpleQueueEnqueue(*(a1 + 24), a2) == 0;
}

uint64_t *re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::copy(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *result;
  if (*a2 >= *result)
  {
    v12 = a2 + 2;
    v13 = result + 2;
    if (v4)
    {
      v14 = 176 * v4;
      v15 = (result + 2);
      v16 = (a2 + 2);
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> const&>(v15, v16);
        v16 += 176;
        v15 += 176;
        v14 -= 176;
      }

      while (v14);
      v4 = *v2;
    }

    if (v4 != v3)
    {
      v17 = 22 * v4;
      v18 = &v12[v17];
      v19 = &v13[v17];
      v20 = 176 * v3 - v17 * 8;
      do
      {
        *v19 = 0;
        *(v19 + 160) = -1;
        result = std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> const&>(v19, v18);
        v18 += 176;
        v19 += 176;
        v20 -= 176;
      }

      while (v20);
    }
  }

  else
  {
    v5 = 22 * v3;
    if (v3)
    {
      v6 = (result + 2);
      v7 = (a2 + 2);
      v8 = 176 * v3;
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> const&>(v6, v7);
        v7 += 176;
        v6 += 176;
        v8 -= 176;
      }

      while (v8);
      v4 = *v2;
    }

    if (v3 != v4)
    {
      v9 = 176 * v4 - v5 * 8;
      v10 = &v2[v5 + 22];
      do
      {
        v11 = *v10;
        if (v11 != -1)
        {
          result = (*(&off_1F5D1B7D0 + v11))(&v21, v10 - 20);
        }

        *v10 = -1;
        v10 += 22;
        v9 -= 176;
      }

      while (v9);
    }
  }

  *v2 = v3;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 160);
  v4 = *(a2 + 160);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (*(&off_1F5D1B7D0 + v3))(&v6, result, a2);
    *(v2 + 160) = -1;
    return result;
  }

  v5 = result;
  return (*(&off_1F5D1B7F8 + v4))(&v5, result, a2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEERKSU_EEEDcSM_DpT0_(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 160);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (*(&off_1F5D1B7D0 + v2))(&v3, v1);
  }

  *(v1 + 160) = 0;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEERKSU_EEEDcSM_DpT0_(re::VideoPipelineSurfaceAcceleratorConfig **a1, uint64_t a2, re::VideoPipelineSurfaceAcceleratorConfig *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (v5 == -1)
  {
    goto LABEL_22;
  }

  if (v5 != 1)
  {
    (*(&off_1F5D1B7D0 + v5))(&v21, v4);
LABEL_22:
    *(v4 + 40) = -1;
    re::VideoPipelineSurfaceAcceleratorConfig::VideoPipelineSurfaceAcceleratorConfig(v4, a3);
    *(v4 + 40) = 1;
    return;
  }

  re::VideoObject<re::VideoColorTransformBase>::setRef(a2, a2, *a3);
  re::VideoObject<re::VideoColorTransformBase>::setRef(a2 + 8, (a2 + 8), *(a3 + 1));
  re::VideoObject<re::VideoColorTransformBase>::setRef(a2 + 16, (a2 + 16), *(a3 + 2));
  v7 = *(a3 + 24);
  v8 = *(a3 + 40);
  *(a2 + 56) = *(a3 + 7);
  *(a2 + 40) = v8;
  *(a2 + 24) = v7;
  re::VideoObject<re::VideoColorTransformBase>::setRef(a2 + 64, (a2 + 64), *(a3 + 8));
  *(a2 + 72) = *(a3 + 72);
  v10 = *(a3 + 10);
  v9 = *(a3 + 11);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 88);
  *(a2 + 80) = v10;
  *(a2 + 88) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  re::VideoObject<re::VideoColorTransformBase>::setRef(a2 + 96, (a2 + 96), *(a3 + 12));
  v13 = *(a3 + 13);
  v12 = *(a3 + 14);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 112);
  *(a2 + 104) = v13;
  *(a2 + 112) = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v16 = *(a3 + 15);
  v15 = *(a3 + 16);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a2 + 128);
  *(a2 + 120) = v16;
  *(a2 + 128) = v15;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v19 = *(a3 + 17);
  v18 = *(a3 + 18);
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(a2 + 144);
  *(a2 + 136) = v19;
  *(a2 + 144) = v18;
  if (v20)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEERKSU_EEEDcSM_DpT0_(uint64_t *a1, id *location, id *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 160);
  if (v5 != -1)
  {
    if (v5 == 2)
    {
      objc_storeStrong(location, *a3);
      objc_storeStrong(location + 1, a3[1]);
      return;
    }

    (*(&off_1F5D1B7D0 + v5))(&v7, v4);
  }

  *(v4 + 160) = -1;
  *v4 = *a3;
  *(v4 + 8) = a3[1];
  *(v4 + 160) = 2;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEERKSU_EEEDcSM_DpT0_(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 160);
  if (v5 != -1)
  {
    if (v5 == 3)
    {
      v8 = *a3;
      v7 = a3[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
      }

      v9 = *(a2 + 8);
      *a2 = v8;
      *(a2 + 8) = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      *(a2 + 16) = a3[2];
      re::VideoObject<re::VideoColorTransformBase>::setRef(a2 + 24, (a2 + 24), a3[3]);
      re::VideoObject<re::VideoColorTransformBase>::setRef(a2 + 32, (a2 + 32), a3[4]);
      *(a2 + 40) = a3[5];
      return;
    }

    (*(&off_1F5D1B7D0 + v5))(&v12, v4);
  }

  *(v4 + 160) = -1;
  v10 = a3[1];
  *v4 = *a3;
  *(v4 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(v4 + 16) = a3[2];
  *(v4 + 24) = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(v4 + 24, (v4 + 24), a3[3]);
  *(v4 + 32) = 0;
  v11 = v4 + 32;
  re::VideoObject<re::VideoColorTransformBase>::setRef(v11, v11, a3[4]);
  *(v11 + 8) = a3[5];
  *(v11 + 128) = 3;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEERKSU_EEEDcSM_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 160);
  if (v5 != -1)
  {
    if (v5 == 4)
    {
      re::VideoObject<re::VideoColorTransformBase>::setRef(a2, a2, *a3);
      re::VideoObject<re::VideoColorTransformBase>::setRef(a2 + 8, (a2 + 8), *(a3 + 8));
      v7 = *(a3 + 16);
      v8 = *(a3 + 32);
      v9 = *(a3 + 48);
      *(a2 + 57) = *(a3 + 57);
      *(a2 + 32) = v8;
      *(a2 + 48) = v9;
      *(a2 + 16) = v7;
      return;
    }

    (*(&off_1F5D1B7D0 + v5))(&v10, v4);
  }

  *(v4 + 160) = -1;
  std::__variant_detail::__alt<4ul,re::VideoPipelineHDRGPUConfig>::__alt[abi:nn200100]<re::VideoPipelineHDRGPUConfig const&>(v4, a3);
  *(v4 + 160) = 4;
}

uint64_t re::FixedSpscSimpleQueue::init(CMSimpleQueueRef *queueOut, int32_t a2)
{
  result = CMSimpleQueueCreate(*MEMORY[0x1E695E480], a2, queueOut);
  if (!*queueOut)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "m_simpleQueueRef", "init", 59);
    _os_crash();
    __break(1u);
    goto LABEL_5;
  }

  if (result)
  {
LABEL_5:
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "result == noErr", "init", 60);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void std::__shared_ptr_emplace<re::VideoSurfaceAccelerator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D1B830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::VideoMipProcessor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D1B880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::VideoHDRProcessor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D1B8D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::videoLogObjects(re *this)
{
  {
    re::videoLogObjects(void)::logObjects = os_log_create("com.apple.re", "Video");
  }

  return &re::videoLogObjects(void)::logObjects;
}

void *re::VideoAutoDecrementer::VideoAutoDecrementer(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    v5 = a1[1];
    *a1 = v3;
    a1[1] = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  return a1;
}

void re::VideoAutoCounter::VideoAutoCounter(re::VideoAutoCounter *this)
{
  *this = 0;
  *(this + 1) = 0;
  operator new();
}

void re::VideoAutoCounter::increment(atomic_ullong *volatile *this)
{
  if (*this)
  {
    atomic_fetch_add(*this, 1uLL);
  }

  operator new();
}

unint64_t re::VideoAutoCounter::count(unint64_t **this)
{
  if (*this)
  {
    return atomic_load(*this);
  }

  v2 = *re::videoLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "[VideoAutoCounter::count] Counter is not initialized.", v3, 2u);
  }

  return -1;
}

void std::__shared_ptr_emplace<std::atomic<long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D1B920;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::VideoAutoDecrementer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D1B970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::VideoAutoDecrementer>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 24);
      if (v4)
      {
        if ((atomic_fetch_add(v4, 0xFFFFFFFFFFFFFFFFLL) & 0x8000000000000000) != 0)
        {
          v8 = v3;
          v6 = *re::videoLogObjects(v3);
          v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
          v3 = v8;
          if (v7)
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[VideoAutoDecrementer] Count dropped below zero.", buf, 2u);
            v3 = v8;
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

CVPixelBufferRef re::VideoPixelBufferTextures::invalidate(re::VideoPixelBufferTextures *this)
{
  CVPixelBufferRetain(0);
  *(this + 13) = 0;
  CVPixelBufferRetain(0);
  *(this + 14) = 0;
  result = CVPixelBufferRetain(0);
  *(this + 15) = 0;
  return result;
}

double re::VideoPixelBufferTextures::encodedSize(re::VideoPixelBufferTextures *this)
{
  v1 = 0;
  v2 = MEMORY[0x1E695F060];
  v4 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  v5 = this + 104;
  do
  {
    v6 = *&v5[v1];
    if (v6)
    {
      EncodedSize = CVImageBufferGetEncodedSize(v6);
      height = EncodedSize.height;
      width = EncodedSize.width;
    }

    else
    {
      width = *v2;
      height = v2[1];
    }

    if (width >= v4)
    {
      v4 = width;
    }

    if (height >= v3)
    {
      v3 = height;
    }

    v1 += 8;
  }

  while (v1 != 24);
  return v4;
}

float re::VideoPixelBufferTextures::asMetalTextures@<S0>(re::VideoPixelBufferTextures *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v4 = (a2 + 96);
  v5 = re::VideoPixelBufferTextureBase::asMetalTexture(this + 13);
  *(a2 + 104) = v5;

  v6 = re::VideoPixelBufferTextureBase::asMetalTexture(this + 14);
  *(a2 + 112) = v6;

  v7 = re::VideoPixelBufferTextureBase::asMetalTexture(this + 15);
  *(a2 + 120) = v7;

  *a2 = *this;
  *(a2 + 2) = *(this + 2);
  *(a2 + 24) = *(this + 24);
  *(a2 + 40) = *(this + 40);
  *(a2 + 8) = *(this + 8);
  re::VideoObject<re::VideoPixelBufferBase>::setRef(v4, v4, *(this + 12));
  result = *(this + 14);
  *(a2 + 56) = result;
  return result;
}

void re::VideoHistogramManager::~VideoHistogramManager(re::VideoHistogramManager *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 6);
    while (1)
    {
      v5 = *v4;
      v4 += 14;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 16);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    CVPixelBufferRelease(*(*(this + 6) + 56 * v3 + 40));
    v6 = *(this + 16);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 6) + 56 * v3) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  if (*this)
  {
    CFRelease(*this);
    *this = 0;
  }

  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(this + 4);
}

void re::VideoHistogram::setData(uint64_t a1, unsigned int *a2)
{
  os_unfair_lock_lock((a1 + 16));
  v4 = *a2;
  if (*a2 >= 0x80)
  {
    v5 = 128;
  }

  else
  {
    v5 = v4;
  }

  *(a1 + 1616) = v5;
  re::DynamicInlineArray<unsigned int,128ul>::resize(a1 + 1624, v5);
  v6 = (a1 + 2152);
  re::DynamicInlineArray<unsigned int,128ul>::resize(a1 + 2152, v5);
  v7 = (a1 + 2680);
  re::DynamicInlineArray<unsigned int,128ul>::resize(a1 + 2680, v5);
  if (v4)
  {
    v9 = 0;
    v10 = *(a1 + 1624);
    v11 = *(a2 + 193);
    v12 = (a1 + 1636);
    v13 = *(a2 + 194);
    v14 = *(a2 + 195);
    while (v10 != v9)
    {
      *v12 = *(v11 + 4 * v9);
      v15 = *v6;
      if (*v6 <= v9)
      {
        goto LABEL_14;
      }

      v12[132] = *(v13 + 4 * v9);
      v16 = *v7;
      if (*v7 <= v9)
      {
        goto LABEL_15;
      }

      v12[264] = *(v14 + 4 * v9++);
      ++v12;
      if (v5 == v9)
      {
        goto LABEL_10;
      }
    }

    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v10, v10);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v9, v15);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v9, v16);
    _os_crash();
    __break(1u);
  }

  else
  {
LABEL_10:
    atomic_store(1u, (a1 + 20));

    os_unfair_lock_unlock((a1 + 16));
  }
}

__IOSurface *re::VideoHistogramManager::selectDummySurface(uint64_t a1, IOSurfaceRef buffer, unsigned int a3)
{
  IOSurface = buffer;
  v41 = *MEMORY[0x1E69E9840];
  if (buffer)
  {
    if (a3 >= 4)
    {
      v25 = *re::videoLogObjects(a1);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 0;
      v26 = "Could not determine color primary index for output histogram surface.";
LABEL_20:
      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
      return 0;
    }

    v5 = dword_1E310B240[a3];
    Width = IOSurfaceGetWidth(buffer);
    Height = IOSurfaceGetHeight(IOSurface);
    v8 = Height;
    v9 = vcvtps_u32_f32(vcvts_n_f32_u64(Width, 2uLL));
    v10 = Height;
    v11 = *(a1 + 16);
    if (v11 > v9 || (v12 = vcvtps_u32_f32(v10 * 0.25), *(a1 + 24) > v12))
    {
      v9 = vcvtps_u32_f32(Width * 0.5);
      if (v11 > v9 || (v12 = vcvtps_u32_f32(v10 * 0.5), *(a1 + 24) > v12))
      {
        v12 = Height;
        v9 = Width;
      }
    }

    v13 = re::VideoDefaults::logEnabled(Height);
    if (v13)
    {
      v28 = *re::videoLogObjects(v13);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 16);
        v30 = *(a1 + 24);
        *buf = 134219264;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = v12;
        *&buf[22] = 2048;
        *&buf[24] = Width;
        *&buf[32] = 2048;
        *&buf[34] = v8;
        *&buf[42] = 2048;
        *&buf[44] = v29;
        *&buf[52] = 2048;
        *&buf[54] = v30;
        _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Using histogram output surface with dimensions %zu x %zu. Source: %zu x %zu, Min: %zu x %zu", buf, 0x3Eu);
      }
    }

    ProtectionOptions = IOSurfaceGetProtectionOptions();
    v34[0] = v9;
    v34[1] = v12;
    v34[2] = ProtectionOptions;
    v35 = v5;
    v14 = re::Hash<re::internal::VideoHistogramKey>::operator()(v34);
    re::HashTable<re::internal::VideoHistogramKey,__CVBuffer *,re::Hash<re::internal::VideoHistogramKey>,re::EqualTo<re::internal::VideoHistogramKey>,true,false>::findEntry<re::internal::VideoHistogramKey>(buf, a1 + 32, v34, v14);
    if (*&buf[12] == 0x7FFFFFFF || (IOSurface = CVPixelBufferGetIOSurface(*(*(a1 + 48) + 56 * *&buf[12] + 40))) == 0)
    {
      v15 = *MEMORY[0x1E695E480];
      v16 = MEMORY[0x1E695E9D8];
      v17 = MEMORY[0x1E695E9E8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v32 = 16;
      valuePtr = 1024;
      v19 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x1E696CE60], v19);
      CFRelease(v19);
      v20 = CFNumberCreate(v15, kCFNumberSInt64Type, &ProtectionOptions);
      CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0F0], v20);
      CFRelease(v20);
      v21 = CFDictionaryCreateMutable(v15, 0, v16, v17);
      CFDictionaryAddValue(v21, *MEMORY[0x1E69660D8], Mutable);
      CFRelease(Mutable);
      v22 = CFNumberCreate(v15, kCFNumberIntType, &v32);
      CFDictionarySetValue(v21, *MEMORY[0x1E6966140], v22);
      CFRelease(v22);
      CFDictionarySetValue(v21, *MEMORY[0x1E69660E8], *MEMORY[0x1E695E4D0]);
      pixelBufferOut = 0;
      CVPixelBufferCreate(v15, v9, v12, 0x42475241u, v21, &pixelBufferOut);
      CFRelease(v21);
      re::memoryAttributionCVPixelBuffer(&pixelBufferOut, *(a1 + 80));
      re::HashTable<re::internal::VideoHistogramKey,__CVBuffer *,re::Hash<re::internal::VideoHistogramKey>,re::EqualTo<re::internal::VideoHistogramKey>,true,false>::addNew(a1 + 32, v34, &pixelBufferOut);
      IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
      memset(buf, 0, 58);
      *&buf[61] = 0u;
      v38 = 0u;
      v39 = 0u;
      memset(v40, 0, sizeof(v40));
      *&buf[58] = 258;
      buf[60] = 8;
      v23 = re::_IOSurfaceSetBulkAttachments2();
      if (v23)
      {
        v24 = *re::videoLogObjects(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Unable to set surface properties.", buf, 2u);
        }

        CVPixelBufferRelease(pixelBufferOut);
        goto LABEL_16;
      }

      if (!IOSurface)
      {
LABEL_16:
        v25 = *re::videoLogObjects(v23);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 0;
        v26 = "Unable to select dummy surface.";
        goto LABEL_20;
      }
    }
  }

  return IOSurface;
}

__n128 re::HashTable<re::internal::VideoHistogramKey,__CVBuffer *,re::Hash<re::internal::VideoHistogramKey>,re::EqualTo<re::internal::VideoHistogramKey>,true,false>::addNew(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::internal::VideoHistogramKey>::operator()(a2);
  re::HashTable<re::internal::VideoHistogramKey,__CVBuffer *,re::Hash<re::internal::VideoHistogramKey>,re::EqualTo<re::internal::VideoHistogramKey>,true,false>::findEntry<re::internal::VideoHistogramKey>(&v9, a1, a2, v6);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::internal::VideoHistogramKey,__CVBuffer *,re::Hash<re::internal::VideoHistogramKey>,re::EqualTo<re::internal::VideoHistogramKey>,true,false>::allocEntry(a1, v10, v9);
    result = *a2;
    *(v8 + 24) = *(a2 + 16);
    *(v8 + 8) = result;
    *(v8 + 40) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void re::DynamicInlineArray<unsigned int,128ul>::resize(uint64_t a1, unint64_t a2)
{
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }
  }

  else
  {
    if (a2 >= 0x81)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash();
      __break(1u);
      return;
    }

    bzero((a1 + 4 * *a1 + 12), 4 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

uint64_t re::HashTable<re::internal::VideoHistogramKey,__CVBuffer *,re::Hash<re::internal::VideoHistogramKey>,re::EqualTo<re::internal::VideoHistogramKey>,true,false>::findEntry<re::internal::VideoHistogramKey>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (*a2 && (v4 = a4 % *(a2 + 24), v6 = *(*(a2 + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(a2 + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 56 * v6;
      v12 = *(v10 + 8);
      v11 = v10 + 8;
      if (v12 == *a3 && *(v11 + 8) == *(a3 + 8) && *(v11 + 16) == *(a3 + 16) && *(v11 + 24) == *(a3 + 24))
      {
        break;
      }

      v6 = *(v8 + 56 * v6) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v5 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v7;
  return result;
}

uint64_t re::Hash<re::internal::VideoHistogramKey>::operator()(uint64_t a1)
{
  v1 = 0xBF58476D1CE4E5B9 * (*a1 ^ (*a1 >> 30));
  v2 = (0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) ^ ((0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) >> 31);
  v3 = 0xBF58476D1CE4E5B9 * (*(a1 + 8) ^ (*(a1 + 8) >> 30));
  v4 = 0xBF58476D1CE4E5B9 * (*(a1 + 16) ^ (*(a1 + 16) >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = *(a1 + 24) ^ (*(a1 + 24) >> 30);
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v6) ^ ((0xBF58476D1CE4E5B9 * v6) >> 27));
  v8 = (((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31)) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  return ((v8 << 6) + (v8 >> 2) + (((v5 << 6) + (v5 >> 2) + (v7 ^ (v7 >> 31)) - 0x61C8864680B583E9) ^ v5) - 0x61C8864680B583E9) ^ v8;
}

uint64_t re::HashTable<re::internal::VideoHistogramKey,__CVBuffer *,re::Hash<re::internal::VideoHistogramKey>,re::EqualTo<re::internal::VideoHistogramKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 40);
            do
            {
              if ((*(v18 - 5) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::internal::VideoHistogramKey,__CVBuffer *,re::Hash<re::internal::VideoHistogramKey>,re::EqualTo<re::internal::VideoHistogramKey>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                v20 = *(v18 - 2);
                *(v19 + 24) = *(v18 - 1);
                *(v19 + 8) = v20;
                *(v19 + 40) = *v18;
              }

              ++v17;
              v18 += 7;
            }

            while (v17 < v16);
          }

          re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 56 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 56 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 56 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 48) = a3;
  ++*(a1 + 28);
  return v21 + 56 * v5;
}

re *re::VideoMipProcessor::deinit(re *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = this;
    v3 = re::globalAllocators(this)[2];

    this = (*(*v3 + 40))(v3, v1);
    *v2 = 0;
  }

  return this;
}

void re::VideoMipProcessor::init(re *a1, void *a2, void *a3)
{
  if (*a2)
  {
    v6 = re::globalAllocators(a1);
    v7 = (*(*v6[2] + 32))(v6[2], 8, 8);
    *a1 = re::mtl::MipGenPolyphase::MipGenPolyphase(v7, a2, a3);
  }

  else
  {
    v8 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[VideoMipProcessor::init] Metal library is not valid.", v9, 2u);
    }
  }
}

uint64_t re::VideoMipProcessor::copyAndGenerateMipmapsFromTexture(re *a1, id *a2, id *a3, id *a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    v13 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "[VideoMipProcessor::copyAndGenerateMipmapsFromTexture] Not initialized.";
      goto LABEL_16;
    }

    return 1;
  }

  if (!*a3 || (v8 = a1, (a1 = *a4) == 0))
  {
    v13 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "[VideoMipProcessor::copyAndGenerateMipmapsFromTexture] Texture not valid.";
      goto LABEL_16;
    }

    return 1;
  }

  v12 = [(re *)a1 mipmapLevelCount];
  if (v12 <= 1)
  {
    v13 = *re::videoLogObjects(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "[VideoMipProcessor::copyAndGenerateMipmapsFromTexture] Destiation texture does not support mipmapping.";
LABEL_16:
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
      return 1;
    }

    return 1;
  }

  v16 = [*a3 protectionOptions];
  v17 = [*a4 protectionOptions];
  v18 = objc_autoreleasePoolPush();
  re::mtl::CommandQueue::makeCommandBuffer(a2, &v22);
  if (a5)
  {
    v20 = re::globalAllocators(v19)[2];
    v28 = a6;
    v29 = v20;
    *buf = &unk_1F5D1B9C0;
    v27 = a5;
    v30 = buf;
    v24 = v20;
    v25 = 0;
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v23, buf);
    re::mtl::CommandBuffer::addCompletionHandler(&v22, v23);
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v23);
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(buf);
  }

  [v22 setProtectionOptions:v17 | v16];
  re::mtl::CommandBuffer::makeComputeCommandEncoder(&v22, buf);
  v21 = @"Generate RE Video Mipmap";
  [*buf setLabel:@"Generate RE Video Mipmap"];

  [**v8 copyAndGenerateMipmapsFromTexture:*a3 toTexture:*a4 withComputeEncoder:*buf];
  [*buf endEncoding];
  [v22 commit];

  objc_autoreleasePoolPop(v18);
  return 0;
}

void re::internal::Callable<re::VideoMipProcessor::copyAndGenerateMipmapsFromTexture(re::mtl::CommandQueue,NS::SharedPtr<MTL::Texture>,NS::SharedPtr<MTL::Texture>,void (*)(re::VideoReturn,void *),void *)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  (*(a1 + 8))([v3 status] != 4, *(a1 + 16));
}

uint64_t re::internal::Callable<re::VideoMipProcessor::copyAndGenerateMipmapsFromTexture(re::mtl::CommandQueue,NS::SharedPtr<MTL::Texture>,NS::SharedPtr<MTL::Texture>,void (*)(re::VideoReturn,void *),void *)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D1B9C0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::VideoMipProcessor::copyAndGenerateMipmapsFromTexture(re::mtl::CommandQueue,NS::SharedPtr<MTL::Texture>,NS::SharedPtr<MTL::Texture>,void (*)(re::VideoReturn,void *),void *)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D1B9C0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

__CVBuffer *re::VideoPixelBufferBase::protectionOptions(__CVBuffer **this)
{
  result = *this;
  if (result)
  {
    CVPixelBufferGetIOSurface(result);

    return IOSurfaceGetProtectionOptions();
  }

  return result;
}

double re::VideoPixelBufferBase::cleanRect(__CVBuffer **this)
{
  v1 = *this;
  if (!v1)
  {
    return *MEMORY[0x1E695F058];
  }

  *&result = CVImageBufferGetCleanRect(v1);
  return result;
}

void re::VideoPixelBufferBase::rectangularMask(CVBufferRef *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    goto LABEL_19;
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (re::VideoDefaults::logEnabled(v6))
  {
    [v6 appendString:@"Raw PFRM"];
  }

  if (a2 == 1)
  {
    v7 = CVBufferCopyAttachment(*this, *MEMORY[0x1E6965E08], 0);
    if (re::VideoDefaults::logEnabled(v7))
    {
      v9 = @"[StereoRight]:";
LABEL_21:
      [v6 appendString:v9];
      if (v7)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (a2)
    {
LABEL_10:
      v7 = CVBufferCopyAttachment(*this, *MEMORY[0x1E6965DF8], 0);
      if (re::VideoDefaults::logEnabled(v7))
      {
        [v6 appendString:@"[Mono]:"];
        if (v7)
        {
          goto LABEL_12;
        }
      }

      else if (v7)
      {
        goto LABEL_12;
      }

LABEL_19:
      *a3 = 0;
      *(a3 + 24) = 0;
      return;
    }

    v7 = CVBufferCopyAttachment(*this, *MEMORY[0x1E6965E00], 0);
    if (re::VideoDefaults::logEnabled(v7))
    {
      v9 = @"[StereoLeft]:";
      goto LABEL_21;
    }
  }

  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_12:
  *&v21 = Int32;
  v38 = v12;
  v40 = Int32;
  *(&v21 + 1) = v12;
  v44 = v21;
  *&v21 = v14;
  v35 = v16;
  *(&v21 + 1) = v16;
  v43 = v21;
  *&v21 = v18;
  v33 = v20;
  v34 = v18;
  *(&v21 + 1) = v20;
  v42 = v21;
  if (re::VideoDefaults::logEnabled(v20))
  {
    v22 = v34;
    v23 = v33;
    v24 = v14;
    v25 = v35;
    v26 = v40;
    v27 = v38;
    height = 0.0;
    if (*this)
    {
      v39 = v38;
      v37 = v40;
      v36 = v35;
      v41 = *&CVImageBufferGetDisplaySize(*this);
      if (*this)
      {
        height = CVImageBufferGetDisplaySize(*this).height;
      }

      else
      {
        height = 0.0;
      }

      v29 = v41;
      v22 = v34;
      v24 = v14;
      v23 = v33;
      v25 = v36;
      v26 = v37;
      v27 = v39;
    }

    else
    {
      v29 = 0;
    }

    v30 = *re::videoLogObjects([v6 appendFormat:@"maskOffset(%f x %f), maskSize(%f x %f), rasterSize(%f x %f), displaySize(%f x %f)", *&v22, *&v23, *&v24, *&v25, *&v26, *&v27, v29, *&height]);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v6;
      v32 = v30;
      *buf = 136315138;
      v46 = [v6 cStringUsingEncoding:1];
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  CFRelease(v7);
  *a3 = v44;
  *(a3 + 8) = v43;
  *(a3 + 16) = v42;
  *(a3 + 24) = 1;
}

const __CFNumber *anonymous namespace::VideoCFDictionaryGetInt32(_anonymous_namespace_ *this, const __CFDictionary *a2, const __CFString *a3)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(this, a2);
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

float32x2_t re::VideoPixelBufferBase::normalizedRectangularMask@<D0>(CVBufferRef *this@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X8>)
{
  re::VideoPixelBufferBase::rectangularMask(this, a2, a3);
  if (a3[3].i8[0] == 1)
  {
    if (*this)
    {
      width = CVImageBufferGetDisplaySize(*this).width;
      v7 = LODWORD(width);
      if (*this)
      {
        v16 = width;
        DisplaySize = CVImageBufferGetDisplaySize(*this);
        v7.f32[0] = v16;
        height = DisplaySize.height;
        v7.f32[1] = height;
      }
    }

    else
    {
      v7 = 0;
    }

    v10 = vdiv_f32(v7, *a3);
    v11 = vmul_f32(a3[1], v10);
    v12 = vmul_f32(v10, a3[2]);
    v13 = vadd_f32(v11, v12);
    v14 = vbsl_s8(vcgt_f32(v13, v7), v7, v13);
    v15 = vbsl_s8(vcgt_f32(v12, v7), v7, v12);
    result = vbic_s8(v15, vcltz_f32(v15));
    a3[1] = vsub_f32(vbic_s8(v14, vcltz_f32(v14)), result);
    a3[2] = result;
  }

  return result;
}

CGColorSpaceRef re::VideoPixelBufferBase::colorSpace(CVBufferRef *this)
{
  v2 = *this;
  if (!v2)
  {
    return 0;
  }

  v3 = CVBufferCopyAttachment(v2, *MEMORY[0x1E6965EC8], 0);
  if (!v3)
  {
    v6 = CVBufferCopyAttachments(*this, kCVAttachmentMode_ShouldPropagate);
    if (v6)
    {
      v4 = v6;
      ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v6);
      goto LABEL_6;
    }

    return 0;
  }

  v4 = v3;
  ColorSpaceFromAttachments = CGColorSpaceCreateWithICCData(v3);
LABEL_6:
  v7 = ColorSpaceFromAttachments;
  CFRelease(v4);
  return v7;
}

uint64_t re::VideoPixelBufferBase::colorTags(__CVBuffer **this)
{
  v1 = *this;
  if (v1)
  {
    IOSurface = CVPixelBufferGetIOSurface(v1);
    CFRetain(IOSurface);
  }

  else
  {
    IOSurface = 0;
  }

  v5 = IOSurface;
  v3 = re::VideoSurfaceBase::colorTags(&v5);
  if (v5)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v5);
  }

  return v3;
}

__CVBuffer *re::VideoPixelBufferBase::surface@<X0>(__CVBuffer **this@<X0>, IOSurfaceRef *a2@<X8>)
{
  result = *this;
  if (result)
  {
    IOSurface = CVPixelBufferGetIOSurface(result);
    result = CFRetain(IOSurface);
  }

  else
  {
    IOSurface = 0;
  }

  *a2 = IOSurface;
  return result;
}

uint64_t re::VideoPixelBufferBase::surfaceID(__CVBuffer **this)
{
  v1 = *this;
  if (!v1)
  {
    return 0;
  }

  IOSurface = CVPixelBufferGetIOSurface(v1);
  if (!IOSurface)
  {
    return 0;
  }

  return IOSurfaceGetID(IOSurface);
}

float re::VideoPixelBufferBase::horizontalDisparityAdjustment(__CVBuffer **this)
{
  v1 = *this;
  v2 = 0.0;
  if (v1)
  {
    v3 = CVBufferCopyAttachment(v1, *MEMORY[0x1E6965EC0], 0);
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      if (v5 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
        v2 = valuePtr / 10000.0;
      }

      CFRelease(v4);
    }
  }

  return v2;
}

void re::VideoPixelBufferBase::setCleanRect(CVPixelBufferRef *this, double a2, double a3, double a4, double a5)
{
  v6 = *this;
  if (v6)
  {
    Width = CVPixelBufferGetWidth(v6);
    Height = CVPixelBufferGetHeight(*this);
    v13 = a4 * 0.5 + a2 - vcvtd_n_f64_u64(Width, 1uLL);
    v14 = a5 * 0.5 + a3 - vcvtd_n_f64_u64(Height, 1uLL);

    re::VideoPixelBufferBase::setCleanAperture(this, v13, v14, a4, a5);
  }
}

void re::VideoPixelBufferBase::setCleanAperture(re::VideoPixelBufferBase *this, double a2, double a3, double a4, double a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v9 = CVImageBufferSetCleanAperture();
    if (v9)
    {
      v10 = *re::videoLogObjects(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134218752;
        v12 = a4;
        v13 = 2048;
        v14 = a5;
        v15 = 2048;
        v16 = a2;
        v17 = 2048;
        v18 = a3;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Unable to set the pixel buffer's clean aperture to [%f, %f] at offset (%f, %f)", &v11, 0x2Au);
      }
    }
  }
}

void re::VideoPixelBufferBase::setHorizontalDisparityAdjustment(CVBufferRef *this, float a2)
{
  valuePtr = a2;
  if (*this)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CVBufferSetAttachment(*this, *MEMORY[0x1E6965EC0], v3, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v4);
    }
  }
}

void re::VideoPixelBufferBase::setRectangularMask(CVBufferRef *a1, double a2, double a3, double a4)
{
  if (*a1)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CVBufferSetAttachment(*a1, *MEMORY[0x1E6965DF8], Mutable, kCVAttachmentMode_ShouldPropagate);

    CFRelease(Mutable);
  }
}

void anonymous namespace::VideoCFDictionarySetInt32(_anonymous_namespace_ *this, __CFDictionary *a2, const __CFString *a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(this, a2, v5);
  CFRelease(v5);
}

void re::VideoPixelBufferPool::~VideoPixelBufferPool(re::VideoPixelBufferPool *this)
{
  re::VideoPixelBufferPool::deinit(this);
  if (*(this + 8))
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 8);
  }

  *(this + 8) = 0;
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(this + 2);
}

void re::VideoPixelBufferPool::deinit(re::VideoPixelBufferPool *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }

  *this = 0;
  if (*(this + 8))
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 8);
  }

  *(this + 8) = 0;
  *(this + 36) = 514;
  *(this + 74) = 2;
}

BOOL re::VideoPixelBufferPool::initInternal(re::VideoPixelBufferPool *this, int a2, int a3, uint64_t a4, re::CoreVideoUtils *a5, int a6, unsigned __int8 a7, int a8, unsigned int a9, unsigned int a10, BOOL a11, unint64_t a12)
{
  v43 = a3;
  v44 = a2;
  v13 = (this + 8);
  v12 = *(this + 1);
  if (!v12)
  {
    v18 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v20 = CFNumberCreate(v18, kCFNumberIntType, &a9);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E696CE60], v20);
    CFRelease(v20);
    v21 = (this + 64);
    if (*(this + 8))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 8);
    }

    v22 = a11;
    *v21 = 0;
    v23 = re::CoreVideoUtils::colorSpaceNameFromColorTags(a5, a6, a7, a8);
    if (v23)
    {
      v24 = CGColorSpaceCreateWithName(v23);
      if (v24)
      {
        v25 = v24;
        if (*v21)
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 8);
        }

        *v21 = v25;
        CFRetain(v25);
        CFRelease(v25);
      }

      if (*v21)
      {
        v26 = CGColorSpaceCopyPropertyList(*v21);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E696CEE0], v26);
        CFRelease(v26);
      }
    }

    if (v22)
    {
      valuePtr = 2;
      v27 = CFNumberCreate(v18, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x1E696D048], v27);
      CFRelease(v27);
    }

    v28 = CFNumberCreate(v18, kCFNumberSInt64Type, &a12);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0F0], v28);
    CFRelease(v28);
    v29 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(v29, *MEMORY[0x1E69660D8], Mutable);
    CFRelease(Mutable);
    CFDictionarySetValue(v29, *MEMORY[0x1E69660E8], *MEMORY[0x1E695E4D0]);
    if (v22)
    {
      LODWORD(a4) = re::CoreVideoUtils::compressedPixelFormat(a4);
    }

    v41 = a4;
    v30 = CFNumberCreate(v18, kCFNumberIntType, &v41);
    CFDictionarySetValue(v29, *MEMORY[0x1E6966130], v30);
    CFRelease(v30);
    v31 = CFNumberCreate(v18, kCFNumberIntType, &v44);
    CFDictionarySetValue(v29, *MEMORY[0x1E6966208], v31);
    CFRelease(v31);
    v32 = CFNumberCreate(v18, kCFNumberIntType, &v43);
    CFDictionarySetValue(v29, *MEMORY[0x1E69660B8], v32);
    CFRelease(v32);
    v33 = CFNumberCreate(v18, kCFNumberIntType, &a10);
    CFDictionarySetValue(v29, *MEMORY[0x1E6966140], v33);
    CFRelease(v33);
    CVPixelBufferPoolCreate(v18, 0, v29, v13);
    CFRelease(v29);
    if ((a5 & 0xFFFFFFFD) == 0)
    {
      *(this + 72) = 1;
      v35 = *re::videoLogObjects(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "Unknown colorPrimaries. Init VideoPixelBufferPool with Fallback Rec 709", buf, 2u);
      }
    }

    *(this + 72) = a5;
    *(this + 73) = a6;
    *(this + 74) = a7;
    v36 = v43;
    *this = v44;
    *(this + 1) = v36;
  }

  return v12 == 0;
}

void re::VideoPixelBufferPool::createPixelBuffer(re::VideoPixelBufferPool *this@<X0>, BOOL *a2@<X1>, CVPixelBufferRef *a3@<X8>)
{
  v5 = *(this + 1);
  if (!v5)
  {
    v8 = *re::videoLogObjects(this);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "VideoPixelBufferPool is not initialized.";
      goto LABEL_11;
    }

LABEL_18:
    *a3 = 0;
    return;
  }

  pixelBufferOut = 0;
  if (CVPixelBufferPoolCreatePixelBuffer(0, v5, &pixelBufferOut))
  {
    v7 = 1;
  }

  else
  {
    v7 = pixelBufferOut == 0;
  }

  if (v7)
  {
    v8 = *re::videoLogObjects(pixelBufferOut);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "Unable to create pixel buffer.";
LABEL_11:
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, v9, buf, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
  if (!IOSurface)
  {
    v15 = *re::videoLogObjects(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Unable to get surface from pixel buffer.";
      goto LABEL_29;
    }

LABEL_17:
    CVPixelBufferRelease(pixelBufferOut);
    goto LABEL_18;
  }

  v11 = IOSurface;
  v12 = *(this + 74);
  v13 = *(this + 36);
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  *buf = 0u;
  v29 = v12;
  v30 = v13;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v14 = re::_IOSurfaceSetBulkAttachments2();
  if (v14)
  {
    v15 = *re::videoLogObjects(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Unable to set surface properties.";
LABEL_29:
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v17 = pixelBufferOut;
  *a3 = pixelBufferOut;
  CVPixelBufferRetain(v17);
  CVPixelBufferRelease(pixelBufferOut);
  *buf = IOSurfaceGetID(v11);
  *a2 = re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::contains(this + 16, buf);
  ID = IOSurfaceGetID(v11);
  v25 = ID;
  v19 = 0xBF58476D1CE4E5B9 * (ID ^ (ID >> 30));
  v20 = (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31);
  v21 = *(this + 10);
  if (!v21)
  {
    LODWORD(v22) = 0;
    goto LABEL_27;
  }

  v22 = v20 % v21;
  v23 = *(*(this + 3) + 4 * (v20 % v21));
  if (v23 == 0x7FFFFFFF)
  {
LABEL_27:
    re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addAsCopy(this + 16, v22, v20, &v25, &v25);
    ++*(this + 14);
    return;
  }

  v24 = *(this + 4);
  if (*(v24 + 16 * v23 + 12) != ID)
  {
    while (1)
    {
      v23 = *(v24 + 16 * v23 + 8) & 0x7FFFFFFF;
      if (v23 == 0x7FFFFFFF)
      {
        break;
      }

      if (*(v24 + 16 * v23 + 12) == ID)
      {
        return;
      }
    }

    goto LABEL_27;
  }
}

void re::VideoPixelBufferPool::flush(re::VideoPixelBufferPool *this, CVPixelBufferPoolFlushFlags options)
{
  v3 = *(this + 1);
  if (v3)
  {
    CVPixelBufferPoolFlush(v3, options);

    re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(this + 16);
  }
}

void re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_5, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 16;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

uint64_t re::VideoPixelBufferPool::numPooledPixelBuffers(re::VideoPixelBufferPool *this)
{
  if (*(this + 1))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966188], *MEMORY[0x1E695E4D0]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966180], v2);
    CVPixelBufferPoolScanIOSurfacesWithOptions();
    CFRelease(Mutable);
  }

  return 0;
}

uint64_t re::VideoPixelBufferPool::numPooledPixelBuffersScanCallback(uint64_t this, __IOSurface *a2, void *a3)
{
  if (this)
  {
    if (a2)
    {
      ++*a2;
    }
  }

  return this;
}

void re::VideoPixelBufferPool::iterateIOSurface(uint64_t a1)
{
  if (*(a1 + 8))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966188], *MEMORY[0x1E695E4D0]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966180], v2);
    CVPixelBufferPoolScanIOSurfacesWithOptions();

    CFRelease(Mutable);
  }
}

void re::VideoProcessor::~VideoProcessor(pthread_t **this)
{
  re::VideoProcessor::deinit(this);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

pthread_t **re::VideoProcessor::deinit(pthread_t **this)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v1 = this;
    atomic_store(0, *this + 8);
    FigSemaphoreSignal();
    pthread_join(**v1, 0);
    **v1 = 0;
    FigSemaphoreDestroy();
    v15[0] = 0;
    v18[0] = 0;
    v21[0] = 0;
    v22[0] = 0;
    v23[0] = 0;
    v24 = 0;
    v26 = 0u;
    *v27 = 0u;
    if (v2)
    {
      do
      {
        if (v27[1])
        {
          v3 = std::__shared_weak_count::lock(v27[1]);
          if (v3)
          {
            if (v27[0])
            {
              atomic_store(7u, v27[0]);
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v3);
          }
        }

        if (v18[0] == 1 && v19)
        {
          v19(7, v20);
        }

        if (v15[0] == 1 && v16)
        {
          v16(7, v17);
        }
      }

      while ((v2 & 1) != 0);
    }

    v4 = *v1;
    if (*v1)
    {
      if (*(v4 + 128) != 1 || (v2 = v4[8]) == 0 || (v2 = [v2 dispatchAvailableCompletionNotifications], (v4 = *v1) != 0))
      {
        v5 = re::globalAllocators(v2)[2];
        v6 = v4[15];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v7 = v4[13];
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v8 = v4[11];
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        if (v4[6] && v4[7])
        {
          while (1)
          {
            v9 = CMSimpleQueueDequeue(v4[7]);
            if (!v9)
            {
              break;
            }

            {
              re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "success", "clear", 182);
              _os_crash();
              __break(1u);
              break;
            }
          }

          v11 = v4[7];
          if (v11)
          {
            CFRelease(v11);
            v4[7] = 0;
          }
        }

        v12 = v4[7];
        if (v12)
        {
          CFRelease(v12);
          v4[7] = 0;
        }

        v2 = (*(*v5 + 40))(v5, v4);
      }
    }

    *v1 = 0;
    v13 = *re::videoLogObjects(v2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "De-initialized RE Video Processor thread.", buf, 2u);
    }

    if (v27[1])
    {
      std::__shared_weak_count::__release_weak(v27[1]);
    }

    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v26 + 1));
    }

    if (v24 == 1)
    {
      if (v25)
      {
        std::__shared_weak_count::__release_weak(v25);
      }
    }

    re::Optional<re::VideoPSEConfig>::~Optional(v23);
    re::Optional<re::VideoMipGenConfig>::~Optional(v22);
    re::Optional<re::VideoTransformSurfaceConfig>::~Optional(v21);
    return re::Optional<re::VideoHDRConfig>::~Optional(v18);
  }

  return this;
}

re *re::VideoProcessor::init(re *result)
{
  if (!*result)
  {
    v1 = result;
    v2 = re::globalAllocators(result);
    v3 = (*(*v2[2] + 32))(v2[2], 136, 8);
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    *(v3 + 128) = 0;
    *(v3 + 8) = 1;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 113) = 0u;
    *v1 = v3;
    atomic_store(1u, (v3 + 8));
    v4 = FigSemaphoreCreate();
    v5 = *v1;
    *(*v1 + 16) = v4;
    *(v5 + 32) = v6;
    if (v6)
    {
      CMSimpleQueueCreate(*MEMORY[0x1E695E480], 8, (v5 + 48));
      if (*(v5 + 48))
      {
        v9 = 0;
        v10 = 1;
        do
        {
          while (!v10)
          {
            v10 = 0;
            if (++v9 == 8)
            {
              goto LABEL_9;
            }
          }

          v11 = CMSimpleQueueEnqueue(*(v5 + 48), (*(v5 + 32) + 560 * v9));
          v10 = v11 == 0;
          ++v9;
        }

        while (v9 != 8);
        while (1)
        {
          if (!v11)
          {
            *(v5 + 40) = 8;
            re::FixedSpscSimpleQueue::init((v5 + 56), 8);
            operator new();
          }

LABEL_9:
          re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Unable to construct pool queue.", "enqueueSuccess", "init", 121);
          v11 = _os_crash();
          __break(1u);
        }
      }
    }

    else
    {
      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 112);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "m_simpleQueueRef", "init", 115);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::VideoProcessor::threadFunction(re::VideoProcessor *this, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = pthread_setname_np("RE Video Processor");
  v4 = *re::videoLogObjects(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "RE Video Processor thread started.", buf, 2u);
  }

  if (this && *(this + 2))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = atomic_load(this + 8);
    if (v7)
    {
      do
      {
        v8 = objc_autoreleasePoolPush();
        buf[0] = 0;
        v21[0] = 0;
        v22[0] = 0;
        v23[0] = 0;
        v24[0] = 0;
        v25[0] = 0;
        v27 = 0u;
        v28 = 0u;
        {
          v9 = *(&v27 + 1);
          v17 = v27;
          if (*(&v27 + 1))
          {
            atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
            re::VideoProcessor::process(this, buf, &v28, &v17, 0);
            std::__shared_weak_count::__release_shared[abi:nn200100](v9);
          }

          else
          {
            re::VideoProcessor::process(this, buf, &v28, &v17, 0);
          }
        }

        v10 = *(&v28 + 1);
        v28 = 0u;
        if (v10)
        {
          std::__shared_weak_count::__release_weak(v10);
        }

        v11 = *(&v27 + 1);
        v27 = 0u;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        v18[0] = 0;
        re::Optional<re::VideoTransformSurfaceConfig>::operator=(v22, v18);
        re::Optional<re::VideoTransformSurfaceConfig>::~Optional(v18);
        if (buf[0] == 1)
        {
          buf[0] = 0;
        }

        v18[0] = 0;
        re::Optional<re::VideoHDRConfig>::operator=(v21, v18);
        re::Optional<re::VideoHDRConfig>::~Optional(v18);
        v18[0] = 0;
        re::Optional<re::VideoMipGenConfig>::operator=(v23, v18);
        re::Optional<re::VideoMipGenConfig>::~Optional(v18);
        v18[0] = 0;
        re::Optional<re::VideoPSEConfig>::operator=(v24, v18);
        re::Optional<re::VideoPSEConfig>::~Optional(v18);
        v18[0] = 0;
        re::Optional<re::VideoHistogramConfig>::operator=(v25, v18);
        if (v18[0] == 1 && v19)
        {
          std::__shared_weak_count::__release_weak(v19);
        }

        if (*(&v28 + 1))
        {
          std::__shared_weak_count::__release_weak(*(&v28 + 1));
        }

        if (*(&v27 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v27 + 1));
        }

        if (v25[0] == 1 && v26)
        {
          std::__shared_weak_count::__release_weak(v26);
        }

        re::Optional<re::VideoPSEConfig>::~Optional(v24);
        re::Optional<re::VideoMipGenConfig>::~Optional(v23);
        re::Optional<re::VideoTransformSurfaceConfig>::~Optional(v22);
        re::Optional<re::VideoHDRConfig>::~Optional(v21);
        objc_autoreleasePoolPop(v8);
        FigSemaphoreWaitRelative();
        v12 = atomic_load(this + 8);
      }

      while ((v12 & 1) != 0);
    }

    objc_autoreleasePoolPop(v6);
    v14 = *re::videoLogObjects(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "RE Video Processor thread ended.", buf, 2u);
    }
  }

  else
  {
    v15 = *re::videoLogObjects(v5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Video Processor thread does not have a valid context.", buf, 2u);
    }
  }

  return 0;
}

uint64_t re::FixedSpscQueue<anonymous namespace::VideoProcessorAsyncPayload>::pop(uint64_t a1, uint64_t a2)
{
  v4 = CMSimpleQueueDequeue(*(a1 + 32));
  v5 = v4;
  if (!v4)
  {
    return v5 != 0;
  }

  if (*a2)
  {
    if ((*v4 & 1) == 0)
    {
      *a2 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*v4 & 1) == 0)
    {
      goto LABEL_8;
    }

    *a2 = 1;
  }

  v6 = *(v4 + 8);
  v7 = *(v4 + 24);
  *(a2 + 40) = *(v4 + 5);
  *(a2 + 24) = v7;
  *(a2 + 8) = v6;
LABEL_8:
  re::Optional<re::VideoHDRConfig>::operator=(a2 + 48, (v4 + 48));
  re::Optional<re::VideoTransformSurfaceConfig>::operator=(a2 + 144, (v5 + 18));
  re::Optional<re::VideoMipGenConfig>::operator=(a2 + 176, (v5 + 22));
  re::Optional<re::VideoPSEConfig>::operator=(a2 + 440, (v5 + 55));
  re::Optional<re::VideoHistogramConfig>::operator=(a2 + 496, (v5 + 62));
  v8 = v5[66];
  v9 = v5[67];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 528) = v8;
  v10 = *(a2 + 536);
  *(a2 + 536) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = v5[68];
  v12 = v5[69];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 544) = v11;
  v13 = *(a2 + 552);
  *(a2 + 552) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  {
    return v5 != 0;
  }

  re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) ", "success", "pop", 161);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::VideoProcessor::process(std::__shared_weak_count *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v9 = &a1->__vftable;
  v134[1] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 144) & 1) == 0 && (*(a2 + 48) & 1) == 0 && *a2 != 1)
  {
    v110 = a5;
    v41 = 0;
    goto LABEL_84;
  }

  shared_owners = a1[3].__shared_owners_;
  if (!shared_owners || !*shared_owners)
  {
    v16 = *re::videoLogObjects(a1);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return 2;
    }

    *buf = 0;
    v17 = 2;
    _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Surface accelerator not created but MSR work requested", buf, 2u);
    return v17;
  }

  v11 = (*(qword_1EE1C4868 + 32))();
  v12 = v11;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  v13 = v9[10];
  v14 = v9[11];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
    v15 = *(v11 + 8);
    *v12 = v13;
    *(v12 + 8) = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  else
  {
    *v11 = v13;
    *(v11 + 8) = 0;
  }

  v19 = *a4;
  v18 = a4[1];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v111 = a3;
  v20 = *(v12 + 72);
  *(v12 + 64) = v19;
  *(v12 + 72) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  buffer = 0uLL;
  v21 = [MEMORY[0x1E695DF90] dictionary];
  v22 = [MEMORY[0x1E695DF70] array];
  v23 = v22;
  v110 = a5;
  if (*(a2 + 48) == 1)
  {
    v24 = malloc_type_malloc(0x28uLL, 0x10000407607B2BCuLL);
    *v24 = 3;
    v24[1] = CFDataGetBytePtr(*(a2 + 88));
    *(v24 + 4) = CFDataGetLength(*(a2 + 88));
    *(v24 + 28) = 0;
    *(v24 + 20) = 0;
    v25 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v24 length:40 freeWhenDone:1];
    [v23 addObject:v25];
    v133 = *MEMORY[0x1E69A84D8];
    v134[0] = MEMORY[0x1E695E118];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:&v133 count:1];
    [v21 addEntriesFromDictionary:v26];

    re::VideoObject<re::VideoColorTransformBase>::setRef(&buffer + 8, &buffer + 1, *(a2 + 64));
    re::VideoObject<re::VideoColorTransformBase>::setRef(&buffer, &buffer, *(a2 + 72));
    v109 = *(a2 + 96);
    *(v12 + 32) = *(a2 + 112);
    v27 = *(a2 + 128);
  }

  else
  {
    v27 = 0;
    v109 = 0u;
  }

  if (*(a2 + 144) == 1)
  {
    if (buffer != 0)
    {
      v28 = *re::videoLogObjects(v22);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "[VideoProcessor::process] More than one configuration is specified.", buf, 2u);
      }
    }

    re::VideoObject<re::VideoColorTransformBase>::setRef(&buffer + 8, &buffer + 1, *(a2 + 152));
    re::VideoObject<re::VideoColorTransformBase>::setRef(&buffer, &buffer, *(a2 + 160));
    if (*(a2 + 168) == 1)
    {
      v131 = *MEMORY[0x1E69A8528];
      v132 = MEMORY[0x1E695E118];
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
      [v21 addEntriesFromDictionary:v29];
    }
  }

  if (*a2 == 1)
  {
    if (*(a2 + 8) && ((v30 = re::VideoPlatform::isVariableRateDirectionalScalingSupported(v22), v30) && *(a2 + 24) || (v22 = re::VideoPlatform::isVariableRateDirectionalScalingSupported(v30), (v22 & 1) == 0) && *(a2 + 16)))
    {
      v31 = malloc_type_malloc(0x28uLL, 0x10000407607B2BCuLL);
      *v31 = 4;
      v31[1] = CFDataGetBytePtr(*(a2 + 8));
      Length = CFDataGetLength(*(a2 + 8));
      *(v31 + 4) = Length;
      isVariableRateDirectionalScalingSupported = re::VideoPlatform::isVariableRateDirectionalScalingSupported(Length);
      v34 = (a2 + 16);
      if (isVariableRateDirectionalScalingSupported)
      {
        v35 = 3;
      }

      else
      {
        v35 = 1;
      }

      if (isVariableRateDirectionalScalingSupported)
      {
        v36 = 464;
      }

      else
      {
        v36 = 380;
      }

      if (isVariableRateDirectionalScalingSupported)
      {
        v34 = (a2 + 24);
      }

      v37 = *v34;
      *(v31 + 5) = v35;
      v31[3] = v37;
      *(v31 + 8) = v36;
      v38 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v31 length:40 freeWhenDone:1];
      v39 = *MEMORY[0x1E69A8518];
      v129[0] = *MEMORY[0x1E69A84C0];
      v129[1] = v39;
      v130[0] = MEMORY[0x1E695E118];
      v130[1] = MEMORY[0x1E695E118];
      v129[2] = *MEMORY[0x1E69A84A8];
      v130[2] = MEMORY[0x1E695E118];
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:3];
      [v21 addEntriesFromDictionary:v40];

      [v23 addObject:v38];
      *(v12 + 16) = *(a2 + 32);
    }

    else
    {
      v42 = *re::videoLogObjects(v22);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "ASE configuration specifies invalid surfaces.", buf, 2u);
      }
    }
  }

  if (*(a2 + 496) != 1)
  {
    goto LABEL_70;
  }

  v41 = 0;
  if (*(&buffer + 1) && buffer)
  {
    v43 = *(a2 + 512);
    if (v43)
    {
      v44 = std::__shared_weak_count::lock(v43);
      if (v44)
      {
        v45 = v44;
        v46 = *(a2 + 504);
        if (v46)
        {
          v128 = 0;
          v126 = 0u;
          v127 = 0u;
          v125 = 0u;
          memset(buf, 0, sizeof(buf));
          v47 = buffer;
          if (buffer && (re::_IOSurfaceGetBulkAttachments(buffer, buf), !v47))
          {
            *v46 = buf[59];
            *(v46 + 4) = buf[60];
            *(v46 + 8) = buf[58];
            *(v46 + 13) = v27 & 1;
          }

          else
          {
            v48 = *re::videoLogObjects(v47);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              *v116 = 0;
              _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "Unable to determine color properties for HDR histogram data.", v116, 2u);
            }

            *v46 = 0x200000002;
            *(v46 + 8) = 2;
            *(v46 + 13) = 0;
          }

          PixelFormat = buffer;
          v108 = v45;
          if (buffer)
          {
            PixelFormat = IOSurfaceGetPixelFormat(buffer);
            v50 = buffer;
          }

          else
          {
            v50 = 0;
          }

          *(v46 + 12) = re::CoreVideoUtils::isFullRange(PixelFormat);
          v122[0] = *MEMORY[0x1E69A8500];
          v51 = MEMORY[0x1E696AD98];
          if (v50)
          {
            Width = IOSurfaceGetWidth(v50);
          }

          else
          {
            Width = 0;
          }

          v53 = [v51 numberWithUnsignedLong:Width];
          v123[0] = v53;
          v122[1] = *MEMORY[0x1E69A84E8];
          v54 = MEMORY[0x1E696AD98];
          if (buffer)
          {
            Height = IOSurfaceGetHeight(buffer);
          }

          else
          {
            Height = 0;
          }

          v56 = [v54 numberWithUnsignedLong:Height];
          v122[2] = *MEMORY[0x1E69A84E0];
          v123[1] = v56;
          v123[2] = &unk_1F5D42A38;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:3];
          [v21 addEntriesFromDictionary:v57];

          v59 = *(a2 + 504);
          v58 = *(a2 + 512);
          if (v58)
          {
            atomic_fetch_add_explicit((v58 + 16), 1uLL, memory_order_relaxed);
          }

          v60 = *(v12 + 56);
          *(v12 + 48) = v59;
          *(v12 + 56) = v58;
          v45 = v108;
          if (v60)
          {
            std::__shared_weak_count::__release_weak(v60);
          }
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v45);
      }
    }

LABEL_70:
    v41 = 0;
    if (*(&buffer + 1) && buffer)
    {
      if ([v23 count])
      {
        v120 = *MEMORY[0x1E69A8498];
        v121 = v23;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
        [v21 addEntriesFromDictionary:v61];
      }

      v118 = *MEMORY[0x1E69A85B8];
      v119 = MEMORY[0x1E695E110];
      v41 = 1;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
      [v21 addEntriesFromDictionary:v62];

      *v116 = v21;
      CFRetain(v21);
      v63 = v9[10];
      if (v63)
      {
        if (*v63)
        {
          *buf = v109;
          v41 = re::VideoSurfaceAccelerator::transformSurface();
        }

        else
        {
          v41 = 1;
        }
      }

      if (*v116)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v116);
      }
    }
  }

  if (buffer)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&buffer);
  }

  a3 = v111;
  if (*(&buffer + 1))
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&buffer + 1);
  }

LABEL_84:
  if (*(a2 + 440) == 1 && (v41 & 1) == 0)
  {
    a1 = *(a2 + 456);
    if (a1 && (a1 = std::__shared_weak_count::lock(a1)) != 0)
    {
      v64 = a1;
      v65 = *(a2 + 448);
      if (v65)
      {
        if (*v65)
        {
          v41 = re::VideoPSEProcessor::Processor::process(*v65, (a2 + 472), (a2 + 480), *(a2 + 464), *(a2 + 488), *(a2 + 492)) != 0;
        }

        else
        {
          v41 = 1;
        }
      }

      else
      {
        v41 = 0;
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v64);
    }

    else
    {
      v41 = 0;
    }
  }

  v66 = 8;
  if (*(a2 + 176) != 1 || (v41 & 1) != 0)
  {
    goto LABEL_131;
  }

  *buf = 0;
  v67 = (*(qword_1EE1C4880[0] + 32))();
  v68 = v67;
  *v67 = 0u;
  *(v67 + 16) = 0u;
  v69 = *a4;
  v70 = a4[1];
  if (v70)
  {
    atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
    v71 = *(v67 + 24);
    v68[2] = v69;
    v68[3] = v70;
    v72 = v110;
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v71);
    }

    if (v110)
    {
      goto LABEL_101;
    }

LABEL_103:
    v75 = *a3;
    v74 = *(a3 + 8);
    if (v74)
    {
      atomic_fetch_add_explicit((v74 + 16), 1uLL, memory_order_relaxed);
    }

    v76 = v68[1];
    *v68 = v75;
    v68[1] = v74;
    if (v76)
    {
      std::__shared_weak_count::__release_weak(v76);
    }

    v73 = 8;
    goto LABEL_108;
  }

  *(v67 + 16) = v69;
  *(v67 + 24) = 0;
  v72 = v110;
  if ((v110 & 1) == 0)
  {
    goto LABEL_103;
  }

LABEL_101:
  v73 = 9;
LABEL_108:
  v112 = a3;
  v110 = v72;
  re::ObjCObject::operator=(buf, &v9[v73]);
  v77 = *(a2 + 288);
  v78 = v77 == 0;
  v79 = v77 != 0;
  v80 = 1;
  if (!v78)
  {
    v80 = 2;
  }

  if (*(a2 + 296))
  {
    v79 = v80;
  }

  v41 = 0;
  if (v79 || *(a2 + 304) != 0)
  {
    v81 = (a2 + 416);
    v82 = 52;
    do
    {
      v83 = *(v81 - 16);
      v84 = v83;

      v85 = *v81;
      v86 = v85;

      v87 = v9[12];
      v115 = *buf;
      v114 = v83;
      v113 = v85;
      if (v113)
      {

        v113 = 0;
      }

      if (v114)
      {

        v114 = 0;
      }

      v89 = v88 != 0;
      if (v85)
      {
      }

      if (v83)
      {
      }

      v41 |= v89;
      v90 = *(a2 + 288);
      v78 = v90 == 0;
      v91 = v90 != 0;
      if (v78)
      {
        v92 = 1;
      }

      else
      {
        v92 = 2;
      }

      if (*(a2 + 296))
      {
        v91 = v92;
      }

      if (*(a2 + 304))
      {
        ++v91;
      }

      v93 = v82 - 51;
      ++v82;
      ++v81;
    }

    while (v93 < v91);
  }

  v66 = 5;
  a3 = v112;
LABEL_131:
  if (v41)
  {
    v94 = 1;
  }

  else
  {
    v94 = v66;
  }

  v95 = *(a3 + 8);
  if (v95)
  {
    v95 = std::__shared_weak_count::lock(v95);
    if (v95)
    {
      if (*a3)
      {
        atomic_store(v94, *a3);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v95);
    }
  }

  v96 = re::VideoDefaults::logEnabled(v95);
  if (v96)
  {
    v98 = *re::videoLogObjects(v96);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      v99 = "✘";
      if (v110)
      {
        v100 = "✔";
      }

      else
      {
        v100 = "✘";
      }

      if (*(a2 + 48))
      {
        v101 = "✔";
      }

      else
      {
        v101 = "✘";
      }

      if (*(a2 + 144))
      {
        v102 = "✔";
      }

      else
      {
        v102 = "✘";
      }

      v103 = *(a2 + 440);
      if (*a2)
      {
        v104 = "✔";
      }

      else
      {
        v104 = "✘";
      }

      v105 = *(a2 + 176);
      if (*(a2 + 496))
      {
        v106 = "✔";
      }

      else
      {
        v106 = "✘";
      }

      *buf = 67110914;
      if (v103)
      {
        v107 = "✔";
      }

      else
      {
        v107 = "✘";
      }

      *&buf[4] = v94;
      *&buf[8] = 2080;
      if (v105)
      {
        v99 = "✔";
      }

      *&buf[10] = v100;
      *&buf[18] = 2080;
      *&buf[20] = v101;
      *&buf[28] = 2080;
      *&buf[30] = v102;
      *&buf[38] = 2080;
      *&buf[40] = v104;
      *&buf[48] = 2080;
      *&buf[50] = v106;
      *&buf[58] = 2080;
      *&buf[60] = v107;
      *&buf[68] = 2080;
      *&buf[70] = v99;
      _os_log_impl(&dword_1E1C61000, v98, OS_LOG_TYPE_DEFAULT, "[VideoProcessor] status: %d, synchronous: %s, hdr: %s, transform: %s, ase: %s, histogram: %s, pse: %s, mipgen: %s", buf, 0x4Eu);
    }
  }

  return 0;
}

void anonymous namespace::videoSurfaceAcceleratorCompletionContextAllocator(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_578))
  {
    re::Allocator::Allocator(&qword_1EE1C4868, "VideoSurfaceAcceleratorCompletionContextAllocator", 1);
    qword_1EE1C4868 = &unk_1F5CCF7F8;

    __cxa_guard_release(&_MergedGlobals_578);
  }
}

uint64_t anonymous namespace::videoMetalCompletionCallback(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        if (*a2)
        {
          if (v3)
          {
            v6 = 1;
          }

          else
          {
            v6 = 8;
          }

          atomic_store(v6, *a2);
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }
    }

    v7 = *(a2 + 24);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = *(qword_1EE1C4880[0] + 40);

    return v9();
  }

  return result;
}

void anonymous namespace::videoMetalCompletionContextAllocator(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EE1C4860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4860))
  {
    re::Allocator::Allocator(qword_1EE1C4880, "VideoMetalCompletionContextAllocator", 1);
    qword_1EE1C4880[0] = &unk_1F5CCF7F8;

    __cxa_guard_release(&qword_1EE1C4860);
  }
}

void re::VideoProcessor::dispatch(unint64_t **this, const re::VideoProcessorConfig *a2, int a3)
{
  if (re::VideoDefaults::autoSynchronousProcessingAllowed(this))
  {
    v6 = re::VideoDefaults::overrideProcessorSynchronousWorkThreshold(5);
    if (!a3 || re::VideoAutoCounter::count(this + 1) >= v6)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
LABEL_4:

    re::VideoProcessor::async(this, a2);
  }

  re::VideoProcessor::sync(this, a2);
}

BOOL re::FixedSpscPool<anonymous namespace::VideoProcessorAsyncPayload>::release(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 > a2)
  {
    return 0;
  }

  if (v2 + 560 * *(a1 + 16) - 560 < a2 || __ROR8__(0xAF8AF8AF8AF8AF8BLL * (a2 - v2), 4) > 0x75075075075075uLL)
  {
    return 0;
  }

  v5 = *(a2 + 552);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a2 + 536);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (*(a2 + 496) == 1)
  {
    v7 = *(a2 + 512);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  re::Optional<re::VideoPSEConfig>::~Optional(a2 + 440);
  re::Optional<re::VideoMipGenConfig>::~Optional(a2 + 176);
  re::Optional<re::VideoTransformSurfaceConfig>::~Optional(a2 + 144);
  re::Optional<re::VideoHDRConfig>::~Optional(a2 + 48);
  return CMSimpleQueueEnqueue(*(a1 + 24), a2) == 0;
}

void *re::ecs2::introspect_VideoViewingMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Unknown";
      re::ecs2::introspect_VideoViewingMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Mono";
      qword_1EE1C5968 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "Stereo";
      qword_1EE1C5970 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_VideoViewingMode(BOOL)::info, "VideoViewingMode", 1, 1, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::ecs2::introspect_VideoViewingMode(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_VideoViewingMode(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_VideoViewingMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::ecs2::introspect_VideoViewingMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::ecs2::introspect_VideoViewingMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_VideoViewingMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_VideoViewingMode(BOOL)::info;
    }
  }

  re::ecs2::introspect_VideoViewingMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_VideoViewingMode(BOOL)::info, a2);
  v17[0] = 0x2CA0FB237FD9860ALL;
  v17[1] = "VideoViewingMode";
  xmmword_1EE1C5938 = v18;
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_VideoViewingMode(BOOL)::info;
}

void *re::ecs2::allocInfo_HDRDumpInfo(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_579, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_579))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C48D0, "HDRDumpInfo");
    __cxa_guard_release(&_MergedGlobals_579);
  }

  return &unk_1EE1C48D0;
}

void re::ecs2::initInfo_HDRDumpInfo(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v27[0] = 0x1B0999D8E2C7B70;
  v27[1] = "HDRDumpInfo";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1C48A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C48A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_BOOL(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "enableDumping";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1C48A8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_double(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "startTime";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C48B0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_double(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "frequency";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1C48B8 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::DynamicString>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "outputDir";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x2000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1C48C0 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_double(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "curTime";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x1800000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1C48C8 = v25;
      __cxa_guard_release(&qword_1EE1C48A0);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1C48A8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::HDRDumpInfo>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::HDRDumpInfo>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::HDRDumpInfo>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::HDRDumpInfo>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

void *re::internal::defaultConstruct<re::ecs2::HDRDumpInfo>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  v3 = (a3 + 32);

  return re::DynamicString::setCapacity(v3, 0);
}

void *re::internal::defaultConstructV2<re::ecs2::HDRDumpInfo>(_OWORD *a1)
{
  a1[2] = 0u;
  a1[3] = 0u;
  v1 = a1 + 2;

  return re::DynamicString::setCapacity(v1, 0);
}

uint64_t re::VideoReceiverCreateEndpointID(uint64_t a1, void *a2)
{
  EndpointID = FigVideoReceiverForBufferDeliveryCreateEndpointID();
  *a2 = 0;

  return EndpointID;
}

uint64_t re::VideoReceiverCopyImageForTime(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  *buf = *a2;
  v11 = *(a2 + 16);
  result = FigVideoReceiverForBufferDeliveryCopyTaggedBufferGroupForHostTime();
  if (!result)
  {
    Count = CMTaggedBufferGroupGetCount(0);
    if (Count == 1)
    {
      CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(0, 0);
      if (CVPixelBufferAtIndex)
      {
        *a4 = CFRetain(CVPixelBufferAtIndex);
        CFRelease(0);
        return 0;
      }

      else
      {
        return 4294951721;
      }
    }

    else
    {
      v8 = Count;
      v9 = *re::videoLogObjects(Count);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v8;
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Single channel code path is returning %i channels", buf, 8u);
      }

      return 4294951723;
    }
  }

  return result;
}

void re::VideoPixelFormatDescriptionManager::~VideoPixelFormatDescriptionManager(re::VideoPixelFormatDescriptionManager *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 2);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    CFRelease(*(*(this + 2) + 24 * v3 + 8));
    v6 = *(this + 8);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 2) + 24 * v3) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this);
}

uint64_t re::VideoPixelFormatDescriptionManager::descriptionForPixelFormat(uint64_t a1, OSType a2, const void **a3)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
  v8 = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v18, a1, a2, v7);
  if (HIDWORD(v19) != 0x7FFFFFFF)
  {
    v14 = *(*(a1 + 16) + 24 * HIDWORD(v19) + 8);
    v12 = a3;
    v13 = a3;
LABEL_8:
    re::VideoObject<re::VideoColorTransformBase>::setRef(v12, v13, v14);
    return 0;
  }

  if (a2)
  {
    v9 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], a2);
    if (v9)
    {
      v10 = v9;
      v18 = 0;
      v19 = 0;
      v20[0] = 0;
      re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v18, a1, a2, v7);
      if (HIDWORD(v19) == 0x7FFFFFFF)
      {
        v11 = re::HashTable<unsigned int,__CFDictionary const*,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v19, v18);
        *(v11 + 4) = a2;
        *(v11 + 8) = v10;
        ++*(a1 + 40);
      }

      v12 = a3;
      v13 = a3;
      v14 = v10;
      goto LABEL_8;
    }

    v17 = *re::videoLogObjects(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v18) = 67109888;
      HIDWORD(v18) = HIBYTE(a2);
      LOWORD(v19) = 1024;
      *(&v19 + 2) = BYTE2(a2);
      HIWORD(v19) = 1024;
      LODWORD(v20[0]) = BYTE1(a2);
      WORD2(v20[0]) = 1024;
      *(v20 + 6) = a2;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Unable to create pixel format description for (%c%c%c%c)", &v18, 0x1Au);
    }
  }

  else
  {
    v16 = *re::videoLogObjects(v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Pixel format is invalid.", &v18, 2u);
    }

    if (*a3)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a3);
    }

    *a3 = 0;
  }

  return 1;
}

uint64_t re::HashTable<unsigned int,__CFDictionary const*,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 8);
            do
            {
              if ((*(v18 - 1) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned int,__CFDictionary const*,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                *(v19 + 4) = *(v18 - 1);
                *(v19 + 8) = *v18;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 24 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 16) = a3;
  ++*(a1 + 28);
  return v20 + 24 * v5;
}

uint64_t (*re::VideoSurfaceAccelerator::internalCompletionCallback(uint64_t (*this)(BOOL, uint64_t), void *a2, uint64_t a3, void *a4))(BOOL, uint64_t)
{
  if (this)
  {
    return this(a2 != 0, a3);
  }

  return this;
}

void re::VideoSurfaceAccelerator::deinit(CFRunLoopRef *this)
{
  v2 = *this;
  if (v2)
  {
    if (this[1])
    {
      RunLoopSource = IOSurfaceAcceleratorGetRunLoopSource();
      if (RunLoopSource)
      {
        CFRunLoopRemoveSource(this[1], RunLoopSource, *MEMORY[0x1E695E8D0]);
      }

      else
      {
        v4 = *re::videoLogObjects(0);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *v5 = 0;
          _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Unable to properly deinitialize Surface Accelerator.", v5, 2u);
        }
      }

      this[1] = 0;
      v2 = *this;
    }

    CFRelease(v2);
    *this = 0;
  }
}

const char *re::printIORetVal(re *this)
{
  if (this > -536870202)
  {
    if (this > -536870199)
    {
      if (this == -536870198)
      {
        return "kIOReturnIOError";
      }

      if (this == -536870174)
      {
        return "kIOReturnNotPermitted";
      }
    }

    else
    {
      if (this == -536870201)
      {
        return "kIOReturnUnsupported";
      }

      if (this == -536870199)
      {
        return "kIOReturnInternalError";
      }
    }
  }

  else if (this > -536870207)
  {
    if (this == -536870206)
    {
      return "kIOReturnBadArgument";
    }

    if (this == -536870203)
    {
      return "kIOReturnExclusiveAccess";
    }
  }

  else
  {
    if (this == -536870212)
    {
      return "kIOReturnError";
    }

    if (this == -536870207)
    {
      return "kIOReturnNotPrivileged";
    }
  }

  return "unknown error";
}

void re::VideoSurfaceAccelerator::init(re::VideoSurfaceAccelerator *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    return;
  }

  Main = CFRunLoopGetMain();
  *(this + 1) = Main;
  if (!Main)
  {
    v9 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v15) = 0;
    v6 = "Unable to create Surface Accelerator b/c of m_runLoop.";
    v7 = v9;
    v8 = 2;
LABEL_9:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v6, &v15, v8);
    return;
  }

  v3 = IOSurfaceAcceleratorCreate();
  if (v3)
  {
    v4 = v3;
    v5 = *re::videoLogObjects(v3);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v15 = 136315138;
    v16 = re::printIORetVal(v4);
    v6 = "Unable to create Surface Accelerator b/c of IOSurfaceAcceleratorCreate. Result is %s";
    v7 = v5;
    v8 = 12;
    goto LABEL_9;
  }

  RunLoopSource = IOSurfaceAcceleratorGetRunLoopSource();
  if (RunLoopSource)
  {
    v11 = RunLoopSource;
    v12 = *(this + 1);
    v13 = *MEMORY[0x1E695E8D0];

    CFRunLoopAddSource(v12, v11, v13);
  }

  else
  {
    v14 = *re::videoLogObjects(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Unable to create Surface Accelerator b/c of IOSurfaceAcceleratorGetRunLoopSource.", &v15, 2u);
    }

    CFRelease(*this);
    *this = 0;
    *(this + 1) = 0;
  }
}

uint64_t re::VideoSurfaceAccelerator::histogram(re::VideoSurfaceAccelerator *this, re::VideoHistogram *a2)
{
  if (!*this)
  {
    return 1;
  }

  if (IOSurfaceAcceleratorGetHistogram())
  {
    return 1;
  }

  re::VideoHistogram::setData(a2, v4);
  return 0;
}

IOSurfaceRef re::CoreVideoUtils::pixelBufferColorGamut(__CVBuffer *a1, char *a2)
{
  result = CVPixelBufferGetIOSurface(a1);
  if (result)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    memset(v8, 0, sizeof(v8));
    re::_IOSurfaceGetBulkAttachments(result, v8);
    if (!v4)
    {
      if (BYTE11(v9) > 8u)
      {
        if (BYTE11(v9) == 12)
        {
          v6 = 1;
        }

        else
        {
          result = 0;
          if (BYTE11(v9) != 9)
          {
            return result;
          }

          v6 = 3;
        }
      }

      else if (BYTE11(v9) == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        result = 0;
        if (BYTE11(v9) != 6)
        {
          return result;
        }
      }

      *a2 = v6;
      return 1;
    }

    v5 = *re::videoLogObjects(v4);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Unable to determine pixel buffer's color gamut.", v7, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t re::CoreVideoUtils::compressedPixelFormat(uint64_t this)
{
  if (this > 1886676527)
  {
    if (this > 1936077361)
    {
      if (this > 1983013175)
      {
        if (this <= 1999908960)
        {
          switch(this)
          {
            case 0x76326138:
              return 645280312;
            case 0x76346138:
              return 645280824;
            case 0x77333072:
              return 645346162;
          }
        }

        else if (this > 2019964015)
        {
          if (this == 2019964016)
          {
            return 644232304;
          }

          else if (this == 2037741158)
          {
            return 645494118;
          }
        }

        else if (this == 1999908961)
        {
          return 645346401;
        }

        else if (this == 2016687216)
        {
          return 640955504;
        }

        return this;
      }

      if (this <= 1937125937)
      {
        if (this != 1936077362)
        {
          if (this != 1936077876)
          {
            if (this != 1937125936)
            {
              return this;
            }

            v6 = 645097008;
            return v6 | 0x1000u;
          }

          v3 = 645097008;
          return v3 | 4u;
        }

        v7 = 645097008;
        return v7 | 2u;
      }

      if (this != 1937125938)
      {
        if (this != 1937126452)
        {
          if (this == 1982882104)
          {
            return 645279800;
          }

          return this;
        }

        v4 = 645101106;
        return (v4 + 2);
      }

      v8 = 30258;
      return v8 | 0x26730000u;
    }

    if (this <= 1886859823)
    {
      if (this <= 1886680623)
      {
        if (this != 1886676528)
        {
          if (this != 1886676530)
          {
            if (this != 1886676532)
            {
              return this;
            }

            v3 = 645162544;
            return v3 | 4u;
          }

          v7 = 645162544;
          return v7 | 2u;
        }

        v10 = 26160;
        return v10 | 0x26740000u;
      }

      if (this != 1886680624)
      {
        if (this != 1886680626)
        {
          if (this != 1886680628)
          {
            return this;
          }

          v4 = 645166642;
          return (v4 + 2);
        }

        v10 = 30258;
        return v10 | 0x26740000u;
      }

      v6 = 645162544;
      return v6 | 0x1000u;
    }

    if (this > 1932681586)
    {
      if (this == 1932681587)
      {
        return 645083763;
      }

      if (this == 1932812659)
      {
        return 645084275;
      }

      if (this != 1936077360)
      {
        return this;
      }

      v8 = 26160;
      return v8 | 0x26730000u;
    }

    if (this != 1886859824)
    {
      if (this == 1886859826)
      {
        return 645429042;
      }

      if (this == 1886860340)
      {
        return 645429044;
      }

      return this;
    }

    v2 = 645428786;
    return (v2 + 254);
  }

  if (this <= 1278226735)
  {
    if (this > 875704949)
    {
      if (this > 1111970368)
      {
        if (this == 1111970369)
        {
          return 641877825;
        }

        if (this == 1278226488)
        {
          return 642527288;
        }

        if (this != 1278226536)
        {
          return this;
        }

        v1 = 642527288;
        return (v1 + 48);
      }

      if (this != 875704950)
      {
        if (this == 875836518)
        {
          v3 = 641230384;
          return v3 | 4u;
        }

        if (this != 875836534)
        {
          return this;
        }

        v4 = 641234482;
        return (v4 + 2);
      }

      v9 = 30258;
    }

    else
    {
      if (this <= 875704421)
      {
        if (this == 645428788)
        {
          return 1882469428;
        }

        if (this == 843264056)
        {
          return 640823352;
        }

        if (this != 843264104)
        {
          return this;
        }

        v1 = 640823352;
        return (v1 + 48);
      }

      if (this != 875704422)
      {
        if (this != 875704438)
        {
          if (this != 875704934)
          {
            return this;
          }

          v7 = 641230384;
          return v7 | 2u;
        }

        v6 = 641230384;
        return v6 | 0x1000u;
      }

      v9 = 26160;
    }

    return v9 | 0x26380000u;
  }

  if (this > 1815162993)
  {
    if (this > 1885745711)
    {
      if (this != 1885745712)
      {
        if (this != 1885745714)
        {
          if (this != 1885746228)
          {
            return this;
          }

          v3 = 645424688;
          return v3 | 4u;
        }

        v7 = 645424688;
        return v7 | 2u;
      }

      v5 = 26160;
    }

    else
    {
      if (this == 1815162994)
      {
        return 644624754;
      }

      if (this == 1882468912)
      {
        v6 = 645424688;
        return v6 | 0x1000u;
      }

      if (this != 1882468914)
      {
        return this;
      }

      v5 = 30258;
    }

    return v5 | 0x26780000u;
  }

  if (this <= 1278555700)
  {
    if (this == 1278226736)
    {
      return 642527536;
    }

    if (this == 1278226738)
    {
      return 642527538;
    }

    if (this != 1278226742)
    {
      return this;
    }

    v2 = 642527288;
    return (v2 + 254);
  }

  switch(this)
  {
    case 0x4C353635:
      return 642528566;
    case 0x52476841:
      return 642934849;
    case 0x62336138:
      return 643969848;
  }

  return this;
}

uint64_t re::CoreVideoUtils::pixelFormatIsTriPlanar(re::CoreVideoUtils *this)
{
  v1 = this;
  result = 1;
  if (v1 > 1949458802)
  {
    if (v1 > 1983013175)
    {
      if (v1 > 2016567666)
      {
        if (v1 == 2016567667)
        {
          return result;
        }

        v4 = 2016698739;
      }

      else
      {
        if (v1 == 1983013176)
        {
          return result;
        }

        v4 = 1983144248;
      }

      goto LABEL_21;
    }

    if (v1 != 1949458803 && v1 != 1949589875)
    {
      v4 = 1982882104;
LABEL_21:
      if (v1 != v4)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v1 > 645280311)
    {
      if (v1 > 1932681586)
      {
        if (v1 == 1932681587)
        {
          return result;
        }

        v4 = 1932812659;
        goto LABEL_21;
      }

      if (v1 == 645280312)
      {
        return result;
      }

      v3 = 13368;
      goto LABEL_13;
    }

    if (v1 != 645083763 && v1 != 645084275)
    {
      v3 = 12344;
LABEL_13:
      v4 = v3 | 0x26760000;
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t re::metalPixelFormatFromPixelFormatCurrent(re *this, int a2)
{
  v3 = this;
  v18 = *MEMORY[0x1E69E9840];
  v4 = re::CoreVideoUtils::uncompressedPixelFormat(this);
  if (v4 <= 1882468913)
  {
    if (v4 <= 1278555444)
    {
      if (v4 <= 875704949)
      {
        if (v4 > 875704421)
        {
          if (v4 != 875704422 && v4 != 875704438)
          {
            if (v4 != 875704934)
            {
              goto LABEL_97;
            }

            goto LABEL_80;
          }

          v6 = a2 == 0;
          v7 = 500;
LABEL_93:
          if (v6)
          {
            return v7;
          }

          else
          {
            return 0;
          }
        }

        if (v4 != 32)
        {
          if (v4 != 846624121)
          {
            goto LABEL_97;
          }

          v6 = a2 == 0;
          v7 = 241;
          goto LABEL_93;
        }

LABEL_78:
        v6 = a2 == 0;
        v7 = 10;
        goto LABEL_93;
      }

      if (v4 <= 875836533)
      {
        if (v4 == 875704950)
        {
LABEL_80:
          v6 = a2 == 0;
          v7 = 502;
          goto LABEL_93;
        }

        if (v4 != 875836518)
        {
          goto LABEL_97;
        }
      }

      else if (v4 != 875836534)
      {
        if (v4 == 1111970369)
        {
          v6 = a2 == 0;
          v7 = 80;
          goto LABEL_93;
        }

        if (v4 == 1278226488)
        {
          goto LABEL_78;
        }

LABEL_97:
        v10 = *re::videoLogObjects(v4);
        result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v11[0] = 67109888;
          v11[1] = HIBYTE(v3);
          v12 = 1024;
          v13 = BYTE2(v3);
          v14 = 1024;
          v15 = BYTE1(v3);
          v16 = 1024;
          v17 = v3;
          _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Unsupported pixel format %c%c%c%c", v11, 0x1Au);
          return 0;
        }

        return result;
      }

      v6 = a2 == 0;
      v7 = 503;
      goto LABEL_93;
    }

    if (v4 <= 1380411456)
    {
      if (v4 <= 1378955370)
      {
        if (v4 == 1278555445)
        {
          v6 = a2 == 0;
          v7 = 43;
        }

        else
        {
          if (v4 != 1278555701)
          {
            goto LABEL_97;
          }

          v6 = a2 == 0;
          v7 = 40;
        }
      }

      else
      {
        switch(v4)
        {
          case 0x5231306B:
            v6 = a2 == 0;
            v7 = 90;
            break;
          case 0x52474241:
            v6 = a2 == 0;
            v7 = 70;
            break;
          case 0x52476641:
            v6 = a2 == 0;
            v7 = 125;
            break;
          default:
            goto LABEL_97;
        }
      }

      goto LABEL_93;
    }

    if (v4 <= 1815162993)
    {
      if (v4 == 1380411457)
      {
        v6 = a2 == 0;
        v7 = 115;
      }

      else
      {
        if (v4 != 1647534392)
        {
          goto LABEL_97;
        }

        v6 = a2 == 0;
        v7 = 550;
      }

      goto LABEL_93;
    }

    if (v4 == 1815162994)
    {
      v6 = a2 == 0;
      v7 = 94;
      goto LABEL_93;
    }

    if (v4 != 1815491698)
    {
      if (v4 != 1882468912)
      {
        goto LABEL_97;
      }

      goto LABEL_41;
    }

LABEL_82:
    v6 = a2 == 0;
    v7 = 110;
    goto LABEL_93;
  }

  if (v4 > 2016686641)
  {
    if (v4 > 2019963955)
    {
      if (v4 > 2033463605)
      {
        if (v4 != 2033463606)
        {
          if (v4 != 2037741158 && v4 != 2037741171)
          {
            goto LABEL_97;
          }

          v6 = a2 == 0;
          v7 = 240;
          goto LABEL_93;
        }

        goto LABEL_82;
      }

      if (v4 != 2019963956)
      {
        if (v4 != 2019964016)
        {
          goto LABEL_97;
        }

        goto LABEL_76;
      }
    }

    else
    {
      if (v4 > 2016687215)
      {
        if (v4 != 2016687216)
        {
          if (v4 == 2019963440)
          {
            goto LABEL_36;
          }

          if (v4 != 2019963442)
          {
            goto LABEL_97;
          }

LABEL_79:
          v6 = a2 == 0;
          v7 = 506;
          goto LABEL_93;
        }

LABEL_76:
        v6 = a2 == 0;
        v7 = 504;
        goto LABEL_93;
      }

      if (v4 == 2016686642)
      {
        goto LABEL_79;
      }

      if (v4 != 2016687156)
      {
        goto LABEL_97;
      }
    }

    v6 = a2 == 0;
    v7 = 507;
    goto LABEL_93;
  }

  if (v4 <= 1919365991)
  {
    if (v4 <= 1885745711)
    {
      if (v4 != 1882468914)
      {
        v5 = 1882469428;
        goto LABEL_52;
      }
    }

    else
    {
      if (v4 == 1885745712)
      {
LABEL_41:
        v6 = a2 == 0;
        v7 = 508;
        goto LABEL_93;
      }

      if (v4 != 1885745714)
      {
        v5 = 1885746228;
LABEL_52:
        if (v4 != v5)
        {
          goto LABEL_97;
        }

        v6 = a2 == 0;
        v7 = 510;
        goto LABEL_93;
      }
    }

    v6 = a2 == 0;
    v7 = 509;
    goto LABEL_93;
  }

  if (v4 > 1999843441)
  {
    if (v4 == 1999843442)
    {
      v6 = a2 == 0;
      v7 = 554;
      goto LABEL_93;
    }

    if (v4 == 1999908961)
    {
      v6 = a2 == 0;
      v7 = 552;
      goto LABEL_93;
    }

    if (v4 != 2016686640)
    {
      goto LABEL_97;
    }

LABEL_36:
    v6 = a2 == 0;
    v7 = 505;
    goto LABEL_93;
  }

  if (v4 == 1919365992)
  {
    return 25;
  }

  if (v4 != 1982882104)
  {
    goto LABEL_97;
  }

  if (a2 == 2)
  {
    v8 = 10;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    return v8;
  }

  else
  {
    return 500;
  }
}

uint64_t re::CoreVideoUtils::uncompressedPixelFormat(re::CoreVideoUtils *this)
{
  v1 = 875704422;
  if (this > 645428783)
  {
    if (this > 1530426929)
    {
      if (this <= 1534617139)
      {
        if (this <= 1534617135)
        {
          if (this != 1530426930)
          {
            if (this != 1530426932)
            {
              return this;
            }

            return 875836534;
          }

          return 875704950;
        }

        if (this != 1534617136)
        {
          if (this == 1534617138)
          {
            return 2019963442;
          }

          return this;
        }

        v2 = 2016686640;
        return (v2 + 3276800);
      }

      if (this <= 1534621233)
      {
        if (this != 1534617140)
        {
          if (this == 1534621232)
          {
            return 2016686640;
          }

          return this;
        }

        v4 = 2019963442;
        return (v4 + 514);
      }

      if (this != 1534621234)
      {
        if (this != 1534621236)
        {
          return this;
        }

        v3 = 2016686640;
        return (v3 + 516);
      }

      v5 = 2016686640;
      return v5 | 2u;
    }

    if (this <= 1530422831)
    {
      if (this == 645428784)
      {
        return 1882468912;
      }

      if (this != 645428786)
      {
        if (this != 645428788)
        {
          return this;
        }

        v3 = 1882468912;
        return (v3 + 516);
      }

      v5 = 1882468912;
      return v5 | 2u;
    }

    if (this <= 1530422835)
    {
      if (this == 1530422832)
      {
        return v1;
      }

      if (this != 1530422834)
      {
        return this;
      }

      return 875704934;
    }

    if (this != 1530422836)
    {
      v1 = 875704438;
      if (this != 1530426928)
      {
        return this;
      }

      return v1;
    }

    return 875836518;
  }

  if (this > 642934848)
  {
    if (this <= 645346161)
    {
      switch(this)
      {
        case 0x26526841:
          return 1380411457;
        case 0x26623338:
          return 1647534392;
        case 0x26763038:
          return 1982882104;
      }

      return this;
    }

    if (this <= 645424689)
    {
      if (this == 645346162)
      {
        return 1999843442;
      }

      if (this != 645424688)
      {
        return this;
      }

      v2 = 1882468912;
      return (v2 + 3276800);
    }

    if (this == 645424690)
    {
      return 1885745714;
    }

    if (this != 645424692)
    {
      return this;
    }

    v4 = 1885745714;
    return (v4 + 514);
  }

  if (this <= 641234479)
  {
    if (this == 641230384)
    {
      return v1;
    }

    if (this == 641230386)
    {
      return 875704934;
    }

    if (this != 641230388)
    {
      return this;
    }

    return 875836518;
  }

  if (this > 641234483)
  {
    if (this == 641234484)
    {
      return 875836534;
    }

    if (this == 641877825)
    {
      return 1111970369;
    }

    return this;
  }

  v1 = 875704438;
  if (this != 641234480)
  {
    if (this == 641234482)
    {
      return 875704950;
    }

    return this;
  }

  return v1;
}

uint64_t re::metalPixelFormatFromPixelFormatLegacy(re *this, int a2)
{
  v3 = this;
  v24 = *MEMORY[0x1E69E9840];
  v4 = re::CoreVideoUtils::uncompressedPixelFormat(this);
  if (v4 > 1882468911)
  {
    if (v4 > 1999908960)
    {
      if (v4 > 2019963441)
      {
        if (v4 > 2033463605)
        {
          if (v4 != 2033463606)
          {
            if (v4 == 2037741158 || v4 == 2037741171)
            {
              v5 = a2 == 0;
              v6 = 240;
              goto LABEL_83;
            }

            goto LABEL_88;
          }

LABEL_75:
          v5 = a2 == 0;
          v6 = 110;
          goto LABEL_83;
        }

        if (v4 == 2019963442)
        {
          goto LABEL_70;
        }

        v7 = 13364;
      }

      else
      {
        if (v4 <= 2016686641)
        {
          if (v4 == 1999908961)
          {
            v5 = a2 == 0;
            v6 = 552;
            goto LABEL_83;
          }

          v15 = 2016686640;
LABEL_69:
          if (v4 != v15)
          {
            goto LABEL_88;
          }

          goto LABEL_70;
        }

        if (v4 == 2016686642 || v4 == 2016687156)
        {
LABEL_70:
          v11 = a2 == 0;
          v12 = 60;
          v13 = 20;
          goto LABEL_71;
        }

        v7 = 12848;
      }

      v15 = v7 | 0x78660000;
      goto LABEL_69;
    }

    if (v4 <= 1885745713)
    {
      if (v4 <= 1882469427)
      {
        if (v4 == 1882468912)
        {
          return 588;
        }

        v8 = 1882468914;
        goto LABEL_56;
      }

      if (v4 == 1882469428)
      {
        return 588;
      }

      v10 = 12848;
    }

    else
    {
      if (v4 > 1919365991)
      {
        if (v4 == 1919365992)
        {
          return 25;
        }

        if (v4 != 1982882104)
        {
          if (v4 == 1999843442)
          {
            v5 = a2 == 0;
            v6 = 554;
            goto LABEL_83;
          }

          goto LABEL_88;
        }

        v11 = (a2 & 0xFFFFFFFD) == 0;
        goto LABEL_52;
      }

      if (v4 == 1885745714)
      {
        return 588;
      }

      v10 = 13364;
    }

    v8 = v10 | 0x70660000;
LABEL_56:
    if (v4 != v8)
    {
      goto LABEL_88;
    }

    return 588;
  }

  if (v4 <= 1278226487)
  {
    if (v4 <= 875704933)
    {
      if (v4 <= 875704421)
      {
        if (v4 != 32)
        {
          if (v4 == 846624121)
          {
            v5 = a2 == 0;
            v6 = 241;
            goto LABEL_83;
          }

          goto LABEL_88;
        }

        goto LABEL_74;
      }

      if (v4 == 875704422)
      {
        goto LABEL_51;
      }

      v9 = 12406;
    }

    else
    {
      if (v4 > 875836517)
      {
        if (v4 != 875836518 && v4 != 875836534)
        {
          if (v4 == 1111970369)
          {
            v5 = a2 == 0;
            v6 = 80;
            goto LABEL_83;
          }

          goto LABEL_88;
        }

        goto LABEL_51;
      }

      if (v4 == 875704934)
      {
LABEL_51:
        v11 = a2 == 0;
LABEL_52:
        v12 = 30;
        v13 = 10;
        goto LABEL_71;
      }

      v9 = 12918;
    }

    if (v4 != (v9 | 0x34320000))
    {
      goto LABEL_88;
    }

    goto LABEL_51;
  }

  if (v4 <= 1380410944)
  {
    if (v4 > 1278555700)
    {
      switch(v4)
      {
        case 0x4C353635:
          v5 = a2 == 0;
          v6 = 40;
          break;
        case 0x5231306B:
          v5 = a2 == 0;
          v6 = 90;
          break;
        case 0x52474241:
          v5 = a2 == 0;
          v6 = 70;
          break;
        default:
          goto LABEL_88;
      }

LABEL_83:
      if (v5)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    if (v4 != 1278226488)
    {
      if (v4 == 1278555445)
      {
        v5 = a2 == 0;
        v6 = 43;
        goto LABEL_83;
      }

      goto LABEL_88;
    }

LABEL_74:
    v5 = a2 == 0;
    v6 = 10;
    goto LABEL_83;
  }

  if (v4 <= 1647534391)
  {
    if (v4 == 1380410945)
    {
      v5 = a2 == 0;
      v6 = 125;
      goto LABEL_83;
    }

    if (v4 == 1380411457)
    {
      v5 = a2 == 0;
      v6 = 115;
      goto LABEL_83;
    }

    goto LABEL_88;
  }

  switch(v4)
  {
    case 0x62336138:
      v11 = a2 == 0;
      v12 = 10;
      v13 = 554;
LABEL_71:
      if (v11)
      {
        return v13;
      }

      else
      {
        return v12;
      }

    case 0x6C313072:
      v5 = a2 == 0;
      v6 = 94;
      goto LABEL_83;
    case 0x6C363472:
      goto LABEL_75;
  }

LABEL_88:
  v16 = *re::videoLogObjects(v4);
  result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v17[0] = 67109888;
    v17[1] = HIBYTE(v3);
    v18 = 1024;
    v19 = BYTE2(v3);
    v20 = 1024;
    v21 = BYTE1(v3);
    v22 = 1024;
    v23 = v3;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Unsupported pixel format %c%c%c%c", v17, 0x1Au);
    return 0;
  }

  return result;
}

uint64_t re::CoreVideoUtils::metalPixelFormatFromPixelFormat(re::CoreVideoUtils *this, int a2, char a3)
{
  if (re::VideoPlatform::isLegacyDevice(this) & 1) != 0 || (a3)
  {

    return re::metalPixelFormatFromPixelFormatLegacy(this, a2);
  }

  else
  {

    return re::metalPixelFormatFromPixelFormatCurrent(this, a2);
  }
}

uint64_t re::CoreVideoUtils::metalPixelFormatSRGBVariant(re::VideoDefaults *a1)
{
  v1 = a1;
  v6 = *MEMORY[0x1E69E9840];
  if (a1 <= 553)
  {
    if (a1 <= 504)
    {
      if (a1 <= 499)
      {
        if (a1 == 70)
        {
          return 71;
        }

        if (a1 == 80)
        {
          return 81;
        }

        if (a1 != 94)
        {
          goto LABEL_56;
        }

        return 628;
      }

      if (a1 > 502)
      {
        if (a1 == 503)
        {
          return 523;
        }

        return 524;
      }

      if (a1 == 500)
      {
        return 520;
      }

      if (a1 == 502)
      {
        return 522;
      }
    }

    else
    {
      if (a1 <= 508)
      {
        if (a1 <= 506)
        {
          if (a1 == 505)
          {
            return 525;
          }

          return 526;
        }

        if (a1 == 507)
        {
          return 527;
        }

        return 528;
      }

      if (a1 > 549)
      {
        if (a1 == 550)
        {
          return 551;
        }

        if (a1 == 552)
        {
          return 553;
        }

        goto LABEL_56;
      }

      if (a1 == 509)
      {
        return 529;
      }

      if (a1 == 510)
      {
        return 530;
      }
    }
  }

  else
  {
    if (a1 <= 606)
    {
      if (a1 <= 565)
      {
        if (a1 <= 563)
        {
          if (a1 == 554)
          {
            return 555;
          }

          if (a1 != 563)
          {
            goto LABEL_56;
          }

          return 524;
        }

        if (a1 == 564)
        {
          return 525;
        }

        return 526;
      }

      if (a1 <= 567)
      {
        if (a1 != 566)
        {
          return 528;
        }

        return 527;
      }

      if (a1 != 568)
      {
        if (a1 != 569)
        {
          goto LABEL_56;
        }

        return 530;
      }

      return 529;
    }

    if (a1 <= 610)
    {
      if (a1 <= 608)
      {
        if (a1 == 607)
        {
          return 524;
        }

        return 525;
      }

      if (a1 == 609)
      {
        return 526;
      }

      return 527;
    }

    if (a1 <= 612)
    {
      if (a1 != 611)
      {
        return 529;
      }

      return 528;
    }

    if (a1 == 613)
    {
      return 530;
    }

    if (a1 == 629)
    {
      return 628;
    }
  }

LABEL_56:
  v2 = re::VideoDefaults::logEnabled(a1);
  if (v2)
  {
    v3 = *re::videoLogObjects(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v1;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Hardware sRGB engamma and degamma not supported for (%d)", v5, 8u);
    }
  }

  return v1;
}

uint64_t re::CoreVideoUtils::metalPixelFormatHasHardwareTransferFunction(int a1)
{
  result = 1;
  if (a1 <= 519)
  {
    if (a1 != 71 && a1 != 81)
    {
      return 0;
    }
  }

  else if (((a1 - 520) > 0x23 || ((1 << (a1 - 8)) & 0xA800007FDLL) == 0) && a1 != 628)
  {
    return 0;
  }

  return result;
}

re::VideoDefaults *re::CoreVideoUtils::metalPixelFormatVariantForTransferFunctionLegacy(re *a1, int a2)
{
  v2 = a1;
  v16 = *MEMORY[0x1E69E9840];
  if (a2 != 8)
  {
    if (a2 == 18)
    {
      v4 = *re::videoLogObjects(a1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v5 = "Hardware HLG degamma not supported. Selecting sRGB degamma variant for HLG signal.";
        goto LABEL_8;
      }
    }

    else
    {
      if (a2 != 16)
      {
        v6 = re::VideoDefaults::logEnabled(a1);
        if (!v6)
        {
          goto LABEL_10;
        }

        v12 = a2;
        v4 = *re::videoLogObjects(v6);
        v13 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        if (v12 == 13)
        {
          if (!v13)
          {
            goto LABEL_10;
          }

          LOWORD(v14) = 0;
          v5 = "Selecting sRGB degamma variant for sRGB signal.";
        }

        else
        {
          if (!v13)
          {
            goto LABEL_10;
          }

          LOWORD(v14) = 0;
          v5 = "Selecting sRGB degamma variant for unknown non-linear signal.";
        }

        goto LABEL_8;
      }

      v4 = *re::videoLogObjects(a1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v5 = "Hardware PQ degamma not supported. Selecting sRGB degamma variant for PQ signal.";
LABEL_8:
        _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, v5, &v14, 2u);
      }
    }

LABEL_10:
    a1 = re::CoreVideoUtils::metalPixelFormatSRGBVariant(v2);
    v2 = a1;
  }

  v7 = re::VideoDefaults::logEnabled(a1);
  if (v7)
  {
    v9 = *re::videoLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      Name = MTLPixelFormatGetName();
      v14 = 136315138;
      v15 = Name;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Selected %s variant.", &v14, 0xCu);
    }
  }

  return v2;
}

re::VideoDefaults *re::CoreVideoUtils::metalPixelFormatForPixelBuffer(re::CoreVideoUtils *this, __CVBuffer *a2, int a3)
{
  v4 = a2;
  v45 = *MEMORY[0x1E69E9840];
  IOSurface = CVPixelBufferGetIOSurface(this);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  re::_IOSurfaceGetBulkAttachments(IOSurface, v24);
  if (v7)
  {
    v8 = *re::videoLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Unable to get surface properties.", buf, 2u);
    }

    return 0;
  }

  else
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(this);
    v11 = BYTE12(v25);
    v12 = re::VideoDefaults::logEnabled(PixelFormatType);
    if (v12)
    {
      v15 = *re::videoLogObjects(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v32 = "(undefined)";
        v33 = 1024;
        v34 = v11;
        v35 = 2080;
        v36 = "(undefined)";
        v37 = 1024;
        v38 = PixelFormatType >> 24;
        v39 = 1024;
        v40 = BYTE2(PixelFormatType);
        v41 = 1024;
        v42 = BYTE1(PixelFormatType);
        v43 = 1024;
        v44 = PixelFormatType;
        _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Selecting variant for transfer function %s (%d) and pixel format %s (%c%c%c%c)", buf, 0x34u);
      }
    }

    v13 = re::CoreVideoUtils::metalPixelFormatFromPixelFormat(PixelFormatType, v4, 0);
    v9 = v13;
    if (a3)
    {
      return re::CoreVideoUtils::metalPixelFormatVariantForTransferFunctionLegacy(v13, v11);
    }

    else
    {
      if (v11 == 13)
      {
        v13 = re::CoreVideoUtils::metalPixelFormatSRGBVariant(v13);
        v9 = v13;
      }

      if (re::VideoDefaults::logEnabled(v13))
      {
        HasHardwareTransferFunction = re::CoreVideoUtils::metalPixelFormatHasHardwareTransferFunction(v9);
        v17 = HasHardwareTransferFunction;
        v18 = *re::videoLogObjects(HasHardwareTransferFunction);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (!v19)
          {
            return v9;
          }

          v20 = v18;
          Name = MTLPixelFormatGetName();
          *buf = 136315138;
          v32 = Name;
          v22 = "Selected variant %s.";
        }

        else
        {
          if (!v19)
          {
            return v9;
          }

          v20 = v18;
          v23 = MTLPixelFormatGetName();
          *buf = 136315138;
          v32 = v23;
          v22 = "Variant not found for %s.";
        }

        _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      }
    }
  }

  return v9;
}

BOOL re::CoreVideoUtils::pixelBufferIsHDR(re::CoreVideoUtils *this, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(this) == 1380411457)
  {
    return 1;
  }

  IOSurface = CVPixelBufferGetIOSurface(this);
  if (!IOSurface)
  {
    v7 = *re::videoLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "Unable to read input surface.";
      v9 = buf;
      goto LABEL_14;
    }

    return 0;
  }

  v5 = IOSurface;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *buf = 0u;
  v15 = 0u;
  re::_IOSurfaceGetBulkAttachments(IOSurface, buf);
  if (v6)
  {
    v7 = *re::videoLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v8 = "Unable to read input surface properties.";
      v9 = &v13;
LABEL_14:
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
      return 0;
    }

    return 0;
  }

  if ((BYTE12(v17) & 0xFD) != 0x10)
  {
    v11 = IOSurfaceCopyValue(v5, @"isHLG");
    if (v11)
    {
      v12 = v11;
      v3 = CFBooleanGetValue(v11) != 0;
      CFRelease(v12);
      return v3;
    }

    return 0;
  }

  return 1;
}

void re::CoreVideoUtils::printPixelBufferInfo(re::CoreVideoUtils *this, __CVBuffer *a2, NSMutableString *a3)
{
  v4 = a2;
  if (!this)
  {
    v12 = @"\nInvalid input pixel buffer.";
LABEL_17:
    [(__CVBuffer *)v4 appendString:v12];
    goto LABEL_99;
  }

  IOSurface = CVPixelBufferGetIOSurface(this);
  if (!IOSurface)
  {
    v12 = @"\nInvalid input pixel buffer surface.";
    goto LABEL_17;
  }

  v6 = IOSurface;
  PlaneCount = IOSurfaceGetPlaneCount(IOSurface);
  if (!PlaneCount)
  {
    [(__CVBuffer *)v4 appendString:@"\nInvalid input pixel buffer plane count."];
  }

  v40 = 2;
  if (IOSurfaceGetYCbCrMatrix())
  {
    [(__CVBuffer *)v4 appendString:@"\nUnable to read input surface YCbCrMatrix. Bulk attachments may exist."];
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v9 = PixelFormatType;
  v10 = "Yes";
  if (PixelFormatType > 645166639)
  {
    if (PixelFormatType <= 645429039)
    {
      if (PixelFormatType <= 645411442)
      {
        if (PixelFormatType > 645280311)
        {
          if (PixelFormatType > 645346161)
          {
            if (PixelFormatType == 645346162)
            {
              goto LABEL_86;
            }

            v11 = 645346401;
LABEL_85:
            if (PixelFormatType == v11)
            {
              goto LABEL_86;
            }

            goto LABEL_100;
          }

          if (PixelFormatType == 645280312)
          {
            goto LABEL_86;
          }

          v14 = 13368;
        }

        else
        {
          if ((PixelFormatType - 645166640) <= 4 && ((1 << (PixelFormatType - 48)) & 0x15) != 0)
          {
            goto LABEL_86;
          }

          v14 = 12344;
        }

        v11 = v14 | 0x26760000;
        goto LABEL_85;
      }

      if (PixelFormatType <= 645428783)
      {
        if ((PixelFormatType - 645424688) <= 4 && ((1 << (PixelFormatType - 48)) & 0x15) != 0 || PixelFormatType == 645411443)
        {
          goto LABEL_86;
        }

        v11 = 645411955;
        goto LABEL_85;
      }

      v13 = -645428784;
    }

    else
    {
      if (PixelFormatType <= 1530426927)
      {
        if (PixelFormatType > 645494130)
        {
          if ((PixelFormatType - 1530422832) <= 4 && ((1 << (PixelFormatType - 48)) & 0x15) != 0)
          {
            goto LABEL_86;
          }

          v16 = 30067;
        }

        else
        {
          if ((PixelFormatType - 645429040) <= 4 && ((1 << (PixelFormatType - 48)) & 0x15) != 0)
          {
            goto LABEL_86;
          }

          v16 = 30054;
        }

        v11 = v16 | 0x26790000;
        goto LABEL_85;
      }

      if ((PixelFormatType - 1530426928) <= 4 && ((1 << (PixelFormatType - 48)) & 0x15) != 0 || (PixelFormatType - 1534617136) <= 4 && ((1 << (PixelFormatType - 48)) & 0x15) != 0)
      {
        goto LABEL_86;
      }

      v13 = -1534621232;
    }
  }

  else
  {
    if (PixelFormatType > 642934848)
    {
      if (PixelFormatType > 645101103)
      {
        if (PixelFormatType > 645149810)
        {
          if ((PixelFormatType - 645162544) <= 4 && ((1 << (PixelFormatType - 48)) & 0x15) != 0)
          {
            goto LABEL_86;
          }

          v15 = 13427;
        }

        else
        {
          if ((PixelFormatType - 645101104) <= 4 && ((1 << (PixelFormatType - 48)) & 0x15) != 0)
          {
            goto LABEL_86;
          }

          v15 = 12915;
        }

        v11 = v15 | 0x26740000;
      }

      else if (PixelFormatType <= 645083762)
      {
        if (PixelFormatType > 644232303)
        {
          if (PixelFormatType == 644232304)
          {
            goto LABEL_86;
          }

          v11 = 644624754;
        }

        else
        {
          if (PixelFormatType == 642934849)
          {
            goto LABEL_86;
          }

          v11 = 643969848;
        }
      }

      else
      {
        if ((PixelFormatType - 645097008) <= 4 && ((1 << (PixelFormatType - 48)) & 0x15) != 0 || PixelFormatType == 645083763)
        {
          goto LABEL_86;
        }

        v11 = 645084275;
      }

      goto LABEL_85;
    }

    if (PixelFormatType > 641877824)
    {
      if (PixelFormatType <= 642527535)
      {
        if (PixelFormatType == 641877825 || PixelFormatType == 642527288)
        {
          goto LABEL_86;
        }

        v17 = 12392;
      }

      else
      {
        if ((PixelFormatType - 642527536) <= 6 && ((1 << (PixelFormatType - 48)) & 0x45) != 0)
        {
          goto LABEL_86;
        }

        v17 = 13622;
      }

      v11 = v17 | 0x264C0000;
      goto LABEL_85;
    }

    if (PixelFormatType <= 641230383)
    {
      if (PixelFormatType == 640823352 || PixelFormatType == 640823400)
      {
        goto LABEL_86;
      }

      v11 = 640955504;
      goto LABEL_85;
    }

    if ((PixelFormatType - 641230384) <= 4 && ((1 << (PixelFormatType - 48)) & 0x15) != 0)
    {
      goto LABEL_86;
    }

    v13 = -641234480;
  }

  v18 = PixelFormatType + v13;
  if (v18 <= 4 && ((1 << v18) & 0x15) != 0)
  {
    goto LABEL_86;
  }

LABEL_100:
  v10 = "No";
LABEL_86:
  v32 = v10;
  IsTriPlanar = re::CoreVideoUtils::pixelFormatIsTriPlanar(PixelFormatType);
  if (PlaneCount != 3 && IsTriPlanar)
  {
    [(__CVBuffer *)v4 appendString:@"\nInvalid input pixel buffer pixel format."];
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  memset(v33, 0, sizeof(v33));
  *&v20 = re::_IOSurfaceGetBulkAttachments(v6, v33).n128_u64[0];
  if (v21)
  {
    [(__CVBuffer *)v4 appendString:@"\nUnable to read input surface properties.", v20];
  }

  v22 = BYTE11(v34);
  v23 = BYTE12(v34);
  v24 = BYTE10(v34);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  v27 = "Non-Planar";
  if (PlaneCount == 2)
  {
    v27 = "Bi-Planar";
  }

  if (PlaneCount == 3)
  {
    v28 = "Tri-Planar";
  }

  else
  {
    v28 = v27;
  }

  [(__CVBuffer *)v4 appendFormat:@"\n         Surface ID: %d", IOSurfaceGetID(v6)];
  IsHDR = re::CoreVideoUtils::pixelBufferIsHDR(this, v29);
  v31 = "SDR";
  if (IsHDR)
  {
    v31 = "HDR";
  }

  [(__CVBuffer *)v4 appendFormat:@"\n       Content Type: %s", v31];
  [(__CVBuffer *)v4 appendFormat:@"\n         Dimensions: %zu x %zu", Width, Height];
  [(__CVBuffer *)v4 appendFormat:@"\n          Planarity: %s", v28];
  [(__CVBuffer *)v4 appendFormat:@"\n       Pixel Format: %s (%c%c%c%c)", "(undefined)", HIBYTE(v9), BYTE2(v9), BYTE1(v9), v9];
  [(__CVBuffer *)v4 appendFormat:@"\n    Color Primaries: %s (%d)", "(undefined)", v22];
  [(__CVBuffer *)v4 appendFormat:@"\n  Transfer Function: %s (%d)", "(undefined)", v23];
  [(__CVBuffer *)v4 appendFormat:@"\n       YCbCr Matrix: %s (%d)", "(undefined)", v24];
  [(__CVBuffer *)v4 appendFormat:@"\n     Surface Matrix: %s (%d)", "(undefined)", v40];
  [(__CVBuffer *)v4 appendFormat:@"\n         Compressed: %s", v32];
  [(__CVBuffer *)v4 appendFormat:@"\n Protection Options: %llu", IOSurfaceGetProtectionOptions()];
  [(__CVBuffer *)v4 appendFormat:@"\n       Retain Count: %ld", CFGetRetainCount(this)];
LABEL_99:
}

void re::CoreVideoUtils::printMetalTextureInfo(re::CoreVideoUtils *this, __CVBuffer *a2, NSMutableString *a3)
{
  v5 = a2;
  if (this)
  {
    Texture = CVMetalTextureGetTexture(this);
    re::CoreVideoUtils::printMetalTextureInfo(Texture, v5);
  }

  else
  {
    [(__CVBuffer *)v5 appendString:@"\nInvalid metal texture."];
  }
}

void re::CoreVideoUtils::printMetalTextureInfo(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    [v3 appendFormat:@"\n              Width: %zu", objc_msgSend(a1, sel_width)];
    [v3 appendFormat:@"\n             Height: %zu", objc_msgSend(a1, sel_height)];
    [v3 appendFormat:@"\n Protection Options: %llu", objc_msgSend(a1, sel_protectionOptions)];
    [a1 pixelFormat];
    [v3 appendFormat:@"\n       Pixel Format: %s", MTLPixelFormatGetName()];
    [v3 appendFormat:@"\n       Retain Count: %lu", objc_msgSend(a1, sel_retainCount)];
  }

  else
  {
    [a2 appendString:@"\nInvalid metal texture."];
  }
}

void re::CoreVideoUtils::printColorTransformInfo(CFArrayRef *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*a1)
  {
    re::VideoColorTransformBase::conversionMatrix(a1, v31);
    re::VideoColorTransformBase::gammaToneCurve(a1, &v22);
    if (v32 == 1)
    {
      v5 = *v31;
      v6 = *&v31[1];
      v21 = *&v31[2];
      v7 = *&v31[4];
      v8 = *&v31[5];
      v9 = *&v31[6];
      v10 = *&v31[8];
      v11 = *&v31[9];
      v12 = *&v31[10];
      [v4 appendString:@"\n    Transformation Conversion Matrix:"];
      [v4 appendFormat:@"\n        %f, %f, %f", v5, v7, v10];
      [v4 appendFormat:@"\n        %f, %f, %f", v6, v8, v11];
      [v4 appendFormat:@"\n        %f, %f, %f", v21, v9, v12];
    }

    if (v30 == 1)
    {
      v13 = v4;
      v14 = v13;
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          [v13 appendFormat:@"\n    Gamma Tone Curve Type 0: gamma=%f", v23, v15, v16, v17, v18, v19, v20];
        }

        else if (v22 == 2)
        {
          [v13 appendFormat:@"\n    Gamma Tone Curve Type 1: gamma=%f, a=%f, b=%f", v23, v24, v25, v17, v18, v19, v20];
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            [v13 appendFormat:@"\n    Gamma Tone Curve Type 2: gamma=%f, a=%f, b=%f, c=%f", v23, v24, v25, v26, v18, v19, v20];
            break;
          case 4:
            [v13 appendFormat:@"\n    Gamma Tone Curve Type 3: gamma=%f, a=%f, b=%f, c=%f, d=%f", v23, v24, v25, v26, v27, v19, v20];
            break;
          case 5:
            [v13 appendFormat:@"\n    Gamma Tone Curve Type 4: gamma=%f, a=%f, b=%f, c=%f, d=%f, e=%f, f=%f", v23, v24, v25, v26, v27, v28, v29];
            break;
        }
      }

      [v14 appendString:@"\n    Gamma Tone Curve Type: Unknown"];
    }
  }

  else
  {
    [v3 appendString:@"\nInvalid color transform."];
  }
}

void re::CoreVideoUtils::printPresentationGroupInfo(CMTime *this, const re::VideoPresentationGroup *a2)
{
  v180 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [v4 appendString:@"Print Presentation Group:"];
  if (this->flags)
  {
    time = *this;
    v5 = [v4 appendFormat:@"\nPresentation Time: %f", CMTimeGetSeconds(&time)];
  }

  v6 = *re::videoLogObjects(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v4;
    v8 = v6;
    v9 = [v4 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v9;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }

  v10 = [MEMORY[0x1E696AD60] stringWithString:@"Presentation Group Pixel Buffer:"];

  value = this[2].value;
  if (value)
  {
    v13 = 0;
    do
    {
      v14 = &v13->isa + 1;
      [v10 appendFormat:@"\nPixel Buffer %zu of %zu", &v13->isa + 1, value];
      v17 = this[2].value;
      if (v17 <= v13)
      {
        goto LABEL_154;
      }

      re::CoreVideoUtils::printPixelBufferInfo(*(&this[2].epoch + v13), v10, v16);
      value = this[2].value;
      v13 = (v13 + 1);
    }

    while (v14 < value);
  }

  v18 = *re::videoLogObjects(v11);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v10;
    v20 = v18;
    v21 = [v10 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v21;
    _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }

  v22 = [MEMORY[0x1E696AD60] stringWithString:@"Presentation Group Texture:"];

  v24 = *&this[3].timescale;
  if (v24)
  {
    v13 = 0;
    p_timescale = &this[8].timescale;
    v2 = 1;
    while (1)
    {
      v26 = &v13->isa + 1;
      v23 = [v22 appendFormat:@"\nTexture %zu of %zu:", &v13->isa + 1, v24];
      v24 = *&this[3].timescale;
      if (v24 <= v13)
      {
        break;
      }

      v28 = 0;
      v29 = &this[4].value + 16 * v13;
      while (1)
      {
        v30 = v29[13];
        v31 = v30 == 0;
        v32 = v30 != 0;
        if (v31)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v29[14])
        {
          v32 = v33;
        }

        if (v29[15])
        {
          ++v32;
        }

        if (v28 >= v32)
        {
          break;
        }

        if (v24 <= v13)
        {
          goto LABEL_146;
        }

        [v22 appendFormat:@"\n  Plane %zu of %zu:", v28 + 1, v32];
        v35 = *&this[3].timescale;
        if (v35 <= v13)
        {
          goto LABEL_147;
        }

        time.value = 0;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(&time, &time, *&p_timescale[2 * v28]);
        re::CoreVideoUtils::printMetalTextureInfo(time.value, v22, v36);
        if (time.value)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&time);
        }

        v24 = *&this[3].timescale;
        ++v28;
        if (v24 <= v13)
        {
          goto LABEL_145;
        }
      }

      p_timescale += 32;
      v13 = (v13 + 1);
      if (v26 >= v24)
      {
        goto LABEL_30;
      }
    }

LABEL_145:
    re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v24);
    _os_crash();
    __break(1u);
LABEL_146:
    re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v24);
    _os_crash();
    __break(1u);
LABEL_147:
    re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v35);
    _os_crash();
    __break(1u);
    goto LABEL_148;
  }

LABEL_30:
  v37 = *re::videoLogObjects(v23);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v22;
    v39 = v37;
    v40 = [v22 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v40;
    _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }

  v41 = [MEMORY[0x1E696AD60] stringWithString:@"Presentation Group Legacy Texture:"];

  epoch = this[14].epoch;
  if (epoch)
  {
    v13 = 0;
    p_epoch = &this[19].epoch;
    v2 = 1;
    while (1)
    {
      v45 = &v13->isa + 1;
      v42 = [v41 appendFormat:@"\nLegacy Texture %zu of %zu:", &v13->isa + 1, epoch];
      epoch = this[14].epoch;
      if (epoch <= v13)
      {
        break;
      }

      v47 = 0;
      v48 = &this[15].timescale + 32 * v13;
      while (1)
      {
        v49 = *(v48 + 13);
        v31 = v49 == 0;
        v50 = v49 != 0;
        if (v31)
        {
          v51 = 1;
        }

        else
        {
          v51 = 2;
        }

        if (*(v48 + 14))
        {
          v50 = v51;
        }

        if (*(v48 + 15))
        {
          ++v50;
        }

        if (v47 >= v50)
        {
          break;
        }

        if (epoch <= v13)
        {
          goto LABEL_149;
        }

        [v41 appendFormat:@"\n  Plane %zu of %zu:", v47 + 1, v50];
        v53 = this[14].epoch;
        if (v53 <= v13)
        {
          goto LABEL_150;
        }

        time.value = 0;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(&time, &time, p_epoch[v47]);
        re::CoreVideoUtils::printMetalTextureInfo(time.value, v41, v54);
        if (time.value)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&time);
        }

        epoch = this[14].epoch;
        ++v47;
        if (epoch <= v13)
        {
          goto LABEL_148;
        }
      }

      p_epoch += 16;
      v13 = (v13 + 1);
      if (v45 >= epoch)
      {
        goto LABEL_51;
      }
    }

LABEL_148:
    re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, epoch);
    _os_crash();
    __break(1u);
LABEL_149:
    re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, epoch);
    _os_crash();
    __break(1u);
LABEL_150:
    re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v53);
    _os_crash();
    __break(1u);
    goto LABEL_151;
  }

LABEL_51:
  v55 = *re::videoLogObjects(v42);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = v41;
    v57 = v55;
    v58 = [v41 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v58;
    _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }

  v59 = [MEMORY[0x1E696AD60] stringWithString:@"Presentation Group Pixel Format Description:"];

  v61 = this[68].epoch;
  if (v61)
  {
    v2 = 0;
    v62 = &this[69].timescale;
    v63 = *MEMORY[0x1E6966290];
    v13 = @"\nPixel Format Description %zu of %zu:";
    do
    {
      v64 = v2 + 1;
      [v59 appendFormat:@"\nPixel Format Description %zu of %zu:", v2 + 1, v61];
      v66 = this[68].epoch;
      if (v66 <= v2)
      {
        goto LABEL_155;
      }

      v67 = *v62;
      v68 = v59;
      v69 = v68;
      if (v67)
      {
        v70 = re::VideoPixelFormatDescriptionBase::BOOLeanValue(v62, v63, 0);
        v71 = "false";
        if (v70)
        {
          v71 = "true";
        }

        [v69 appendFormat:@"\n Contains Alpha: %s", v71];
      }

      else
      {
        [v68 appendString:@"\nInvalid pixel format description."];
      }

      v61 = this[68].epoch;
      ++v62;
      v2 = v64;
    }

    while (v64 < v61);
  }

  v72 = *re::videoLogObjects(v60);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v73 = v59;
    v74 = v72;
    v75 = [v59 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v75;
    _os_log_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }

  v76 = [MEMORY[0x1E696AD60] stringWithString:@"Presentation Group Metadata:"];

  v78 = *re::videoLogObjects(v77);
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    v79 = v76;
    v80 = v78;
    v81 = [v76 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v81;
    _os_log_impl(&dword_1E1C61000, v80, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }

  v82 = [MEMORY[0x1E696AD60] stringWithString:@"Presentation Group Light Spill:"];

  v84 = this[48].epoch;
  if (v84)
  {
    v13 = 0;
    do
    {
      v85 = &v13->isa + 1;
      [v82 appendFormat:@"\nLight Spill Diffuse Pixel Buffer %zu of %zu", &v13->isa + 1, v84];
      v88 = this[48].epoch;
      if (v88 <= v13)
      {
        goto LABEL_156;
      }

      re::CoreVideoUtils::printPixelBufferInfo(*(&this[49].timescale + v13), v82, v87);
      v84 = this[48].epoch;
      v13 = (v13 + 1);
    }

    while (v85 < v84);
  }

  v89 = this[50].value;
  if (v89)
  {
    v13 = 0;
    do
    {
      v90 = &v13->isa + 1;
      [v82 appendFormat:@"\nLight Spill Specular Pixel Buffer %zu of %zu", &v13->isa + 1, v89];
      v93 = this[50].value;
      if (v93 <= v13)
      {
        goto LABEL_157;
      }

      re::CoreVideoUtils::printPixelBufferInfo(*(&this[50].epoch + v13), v82, v92);
      v89 = this[50].value;
      v13 = (v13 + 1);
    }

    while (v90 < v89);
  }

  v94 = *&this[51].timescale;
  if (v94)
  {
    v13 = 0;
    v95 = &this[56].timescale;
    v2 = 1;
    while (1)
    {
      v96 = &v13->isa + 1;
      v83 = [v82 appendFormat:@"\nLight Spill Texture %zu of %zu:", &v13->isa + 1, v94];
      v94 = *&this[51].timescale;
      if (v94 <= v13)
      {
        break;
      }

      v98 = 0;
      v99 = &this[52].value + 16 * v13;
      while (1)
      {
        v100 = v99[13];
        v31 = v100 == 0;
        v101 = v100 != 0;
        if (v31)
        {
          v102 = 1;
        }

        else
        {
          v102 = 2;
        }

        if (v99[14])
        {
          v101 = v102;
        }

        if (v99[15])
        {
          ++v101;
        }

        if (v98 >= v101)
        {
          break;
        }

        if (v94 <= v13)
        {
          goto LABEL_152;
        }

        [v82 appendFormat:@"\n  Plane %zu of %zu:", v98 + 1, v101];
        v104 = *&this[51].timescale;
        if (v104 <= v13)
        {
          goto LABEL_153;
        }

        time.value = 0;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(&time, &time, *&v95[2 * v98]);
        re::CoreVideoUtils::printMetalTextureInfo(time.value, v82, v105);
        if (time.value)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&time);
        }

        v94 = *&this[51].timescale;
        ++v98;
        if (v94 <= v13)
        {
          goto LABEL_151;
        }
      }

      v95 += 32;
      v13 = (v13 + 1);
      if (v96 >= v94)
      {
        goto LABEL_93;
      }
    }

LABEL_151:
    re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v94);
    _os_crash();
    __break(1u);
LABEL_152:
    re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v94);
    _os_crash();
    __break(1u);
LABEL_153:
    re::internal::assertLog(6, v103, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v104);
    _os_crash();
    __break(1u);
LABEL_154:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v17);
    _os_crash();
    __break(1u);
LABEL_155:
    re::internal::assertLog(6, v65, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v2, v66);
    _os_crash();
    __break(1u);
LABEL_156:
    re::internal::assertLog(6, v86, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v88);
    _os_crash();
    __break(1u);
LABEL_157:
    re::internal::assertLog(6, v91, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v93);
    _os_crash();
    __break(1u);
LABEL_158:
    re::internal::assertLog(6, v108, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v109);
    _os_crash();
    __break(1u);
LABEL_159:
    re::internal::assertLog(6, v112, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v113);
    _os_crash();
    __break(1u);
LABEL_160:
    re::internal::assertLog(6, v145, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v13, v146);
    _os_crash();
    __break(1u);
    goto LABEL_161;
  }

LABEL_93:
  v106 = this[62].epoch;
  if (v106)
  {
    v13 = 0;
    do
    {
      v107 = &v13->isa + 1;
      [v82 appendFormat:@"\nLight Spill Diffuse Texture %zu of %zu:", &v13->isa + 1, v106];
      v109 = this[62].epoch;
      if (v109 <= v13)
      {
        goto LABEL_158;
      }

      re::CoreVideoUtils::printMetalTextureInfo(*(&this[63].timescale + v13), v82);
      v106 = this[62].epoch;
      v13 = (v13 + 1);
    }

    while (v107 < v106);
  }

  v110 = this[64].value;
  if (v110)
  {
    v13 = 0;
    do
    {
      v111 = &v13->isa + 1;
      [v82 appendFormat:@"\nLight Spill Specular Texture %zu of %zu:", &v13->isa + 1, v110];
      v113 = this[64].value;
      if (v113 <= v13)
      {
        goto LABEL_159;
      }

      re::CoreVideoUtils::printMetalTextureInfo(*(&this[64].epoch + v13), v82);
      v110 = this[64].value;
      v13 = (v13 + 1);
    }

    while (v111 < v110);
  }

  v114 = *re::videoLogObjects(v83);
  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
  {
    v115 = v82;
    v116 = v114;
    v117 = [v82 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v117;
    _os_log_impl(&dword_1E1C61000, v116, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }

  v118 = [MEMORY[0x1E696AD60] stringWithString:@"Presentation Group Cropping Rectangles:"];

  v120 = this[66].epoch;
  if (v120)
  {
    v2 = 0;
    v121 = &this[67].epoch + 1;
    while (1)
    {
      v122 = v2 + 1;
      [v118 appendFormat:@"\nCropping Rectangle %zu of %zu:", v2 + 1, v120];
      v124 = this[66].epoch;
      if (v124 <= v2)
      {
        break;
      }

      [v118 appendFormat:@"\n       X: %f", *(v121 - 3)];
      v126 = this[66].epoch;
      if (v126 <= v2)
      {
        goto LABEL_162;
      }

      [v118 appendFormat:@"\n       Y: %f", *(v121 - 2)];
      v128 = this[66].epoch;
      if (v128 <= v2)
      {
        goto LABEL_163;
      }

      [v118 appendFormat:@"\n   Width: %f", *(v121 - 1)];
      v130 = this[66].epoch;
      if (v130 <= v2)
      {
        goto LABEL_164;
      }

      v131 = *v121;
      v121 += 4;
      v119 = [v118 appendFormat:@"\n  Height: %f", v131];
      v120 = this[66].epoch;
      ++v2;
      if (v122 >= v120)
      {
        goto LABEL_110;
      }
    }

LABEL_161:
    re::internal::assertLog(6, v123, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v2, v124);
    _os_crash();
    __break(1u);
LABEL_162:
    re::internal::assertLog(6, v125, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v2, v126);
    _os_crash();
    __break(1u);
LABEL_163:
    re::internal::assertLog(6, v127, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v2, v128);
    _os_crash();
    __break(1u);
LABEL_164:
    re::internal::assertLog(6, v129, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v2, v130);
    _os_crash();
    __break(1u);
  }

LABEL_110:
  v132 = *re::videoLogObjects(v119);
  v133 = os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT);
  if (v133)
  {
    v134 = v118;
    v135 = v132;
    v136 = [v118 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v136;
    _os_log_impl(&dword_1E1C61000, v135, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }

  v137 = *re::videoLogObjects(v133);
  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
  {
    v138 = this[70].value;
    LODWORD(time.value) = 134217984;
    *(&time.value + 4) = v138;
    _os_log_impl(&dword_1E1C61000, v137, OS_LOG_TYPE_DEFAULT, "Presentation Group Protection Options: %llu", &time, 0xCu);
  }

  v139 = [MEMORY[0x1E696AD60] stringWithString:@"Presentation Group Color Gamut:"];

  [v139 appendFormat:@"\n        Color Gamut: %s (%d)", "(undefined)", LOBYTE(this[70].timescale)];
  [v139 appendFormat:@"\n              Width: %zu", this[70].epoch];
  [v139 appendFormat:@"\n             Height: %zu", this[71].value];
  if (LOBYTE(this[74].value))
  {
    v140 = "Yes";
  }

  else
  {
    v140 = "No";
  }

  [v139 appendFormat:@"\n                HDR: %s", v140];
  [v139 appendFormat:@"\n        Stereo Mode: (%d)", HIDWORD(this[74].value)];
  [v139 appendFormat:@"\n       YCbCr Matrix: (%d)", this[74].timescale];
  v141 = [v139 appendFormat:@"\n     Image Function: (%d)", this[74].flags];
  v142 = this[74].epoch;
  if (v142)
  {
    v13 = 0;
    v143 = &this[75].timescale;
    do
    {
      v144 = &v13->isa + 1;
      [v139 appendFormat:@"\nColor Transform %zu of %zu:", &v13->isa + 1, v142];
      v146 = this[74].epoch;
      if (v146 <= v13)
      {
        goto LABEL_160;
      }

      re::CoreVideoUtils::printColorTransformInfo(v143, v139);
      v142 = this[74].epoch;
      ++v143;
      v13 = (v13 + 1);
    }

    while (v144 < v142);
  }

  v147 = *re::videoLogObjects(v141);
  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
  {
    v148 = v139;
    v149 = v147;
    v150 = [v139 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v150;
    _os_log_impl(&dword_1E1C61000, v149, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }

  v151 = [MEMORY[0x1E696AD60] stringWithString:@"Presentation Group Histogram:"];

  v153 = *&this[81].timescale;
  if (v153)
  {
    v154 = 0;
    v155 = &this[82];
    do
    {
      ++v154;
      if (*v155)
      {
        [v151 appendFormat:@"\nHistogram %zu of %zu:", v154, v153];
        [v151 appendFormat:@"\n            Bin Count: %zu", *re::VideoHistogram::data(*v155)];
        [v151 appendFormat:@"\n      Color Primaries: %s", "(undefined)"];
        [v151 appendFormat:@"\n    Transfer Function: %s", "(undefined)"];
        [v151 appendFormat:@"\n         YCbCr Matrix: %s", "(undefined)"];
        v156 = "Yes";
        if (!*(*v155 + 13))
        {
          v156 = "NO";
        }

        v152 = [v151 appendFormat:@"\n        DOLBY Content: %s", v156];
        v153 = *&this[81].timescale;
      }

      v155 += 2;
    }

    while (v154 < v153);
  }

  v157 = *re::videoLogObjects(v152);
  if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
  {
    v158 = v151;
    v159 = v157;
    v160 = [v151 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v160;
    _os_log_impl(&dword_1E1C61000, v159, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }

  v161 = [MEMORY[0x1E696AD60] stringWithString:@"Presentation Group Horizontal Disparity:"];

  v163 = *&this[85].timescale;
  if (v163)
  {
    v164 = 0;
    do
    {
      v165 = v164 + 1;
      v162 = [v161 appendFormat:@"\nHorizontal Disparity Adjustment %zu of %zu: %f", v164 + 1, v163, *(&this[85].epoch + v164 + 1)];
      v163 = *&this[85].timescale;
      v164 = v165;
    }

    while (v165 < v163);
  }

  v166 = *re::videoLogObjects(v162);
  if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
  {
    v167 = v161;
    v168 = v166;
    v169 = [v161 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v169;
    _os_log_impl(&dword_1E1C61000, v168, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }

  v170 = [MEMORY[0x1E696AD60] stringWithString:@"Normalized PFRM:"];

  v172 = this[78].value;
  if (v172)
  {
    v173 = 0;
    do
    {
      v174 = &this[78].epoch + 4 * v173++;
      if (v174[3])
      {
        v171 = [v170 appendFormat:@"\nRectangular Mask %zu of %zu: maskOffset(%f, %f), maskSize(%f, %f), rasterSize(%f, %f)", v173, v172, COERCE_FLOAT(v174[2]), COERCE_FLOAT(HIDWORD(v174[2])), COERCE_FLOAT(v174[1]), COERCE_FLOAT(HIDWORD(v174[1])), COERCE_FLOAT(*v174), COERCE_FLOAT(HIDWORD(*v174))];
        v172 = this[78].value;
      }
    }

    while (v173 < v172);
  }

  v175 = *re::videoLogObjects(v171);
  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
  {
    v176 = v170;
    v177 = v175;
    v178 = [v170 cStringUsingEncoding:1];
    LODWORD(time.value) = 136315138;
    *(&time.value + 4) = v178;
    _os_log_impl(&dword_1E1C61000, v177, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
  }
}

void re::CoreVideoUtils::computeGammaBoost(re::VideoDefaults *a1, float a2, float a3)
{
  v6 = re::VideoDefaults::useBT1886ForCoreVideoGamma(a1);
  if (v6 && *(a1 + 1) == 1)
  {
    v7 = re::VideoDefaults::overrideBaseYCoefficient(v6, 1.1);
    if (a3 >= 0.0001)
    {
      v8 = v7;
      v9 = log2f(a3 / 100.0);
      powf(v8, v9);
    }

    if (a2 >= 0.0001)
    {
      log10f(a2 / 5.0);
    }
  }
}

uint64_t re::CoreVideoUtils::isFullRange(re::CoreVideoUtils *this)
{
  v1 = re::CoreVideoUtils::uncompressedPixelFormat(this);
  result = 1;
  if (v1 > 1886676527)
  {
    if (v1 > 1952854575)
    {
      if (v1 <= 2019963503)
      {
        if (v1 == 1952854576 || v1 == 2019963440)
        {
          return result;
        }

        v4 = 12850;
      }

      else
      {
        if (v1 > 2019964015)
        {
          if (v1 == 2019964016)
          {
            return result;
          }

          v5 = 2037741158;
LABEL_38:
          if (v1 == v5)
          {
            return result;
          }

          return 0;
        }

        if (v1 == 2019963504)
        {
          return result;
        }

        v4 = 13364;
      }

      v5 = v4 | 0x78660000;
      goto LABEL_38;
    }

    if (v1 > 1936077359)
    {
      if (v1 != 1936077360 && v1 != 1936077362)
      {
        v5 = 1936077876;
        goto LABEL_38;
      }
    }

    else
    {
      v6 = v1 - 1886676528;
      if (v6 > 4 || ((1 << v6) & 0x15) == 0)
      {
        return 0;
      }
    }
  }

  else if (v1 <= 1714696751)
  {
    if (v1 > 875704933)
    {
      if (v1 != 875704934 && v1 != 875836518)
      {
        v5 = 1714630712;
        goto LABEL_38;
      }
    }

    else if (v1 != 846624102 && v1 != 875639142)
    {
      v5 = 875704422;
      goto LABEL_38;
    }
  }

  else
  {
    if (v1 > 1751528499)
    {
      if (v1 > 1885745713)
      {
        if (v1 == 1885745714)
        {
          return result;
        }

        v3 = 13364;
      }

      else
      {
        if (v1 == 1751528500)
        {
          return result;
        }

        v3 = 12848;
      }

      v5 = v3 | 0x70660000;
      goto LABEL_38;
    }

    if (v1 != 1714696752 && v1 != 1751527984)
    {
      v5 = 1751527986;
      goto LABEL_38;
    }
  }

  return result;
}

uint64_t re::CoreVideoUtils::isConvertibleToLinearRGBColorModel(int a1)
{
  result = 1;
  if ((a1 - 500) > 0x1E || ((1 << (a1 + 12)) & 0x7ED007ED) == 0)
  {
    v3 = a1 - 564;
    v4 = a1 == 10;
    return v3 < 6 || v4;
  }

  return result;
}

uint64_t re::CoreVideoUtils::convertToLinearRGBColorModel(re *a1)
{
  v1 = a1;
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1 + 12;
  if ((a1 - 500) <= 0x1E)
  {
    if (((1 << v2) & 0x7E0007E0) != 0)
    {
      return 115;
    }

    if (((1 << v2) & 0xD) != 0)
    {
      return 80;
    }

    if (((1 << v2) & 0xD00000) != 0)
    {
      return 115;
    }
  }

  if ((a1 - 564) < 6)
  {
    return 115;
  }

  if (a1 != 10)
  {
    v4 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = 136315138;
      Name = MTLPixelFormatGetName();
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Unable to convert pixel format '%s' to linear RGB color model.", &v6, 0xCu);
    }
  }

  return v1;
}

uint64_t re::CoreVideoUtils::colorSpaceNameFromColorTags(re::CoreVideoUtils *this, int a2, unsigned __int8 a3, int a4)
{
  v4 = this;
  result = 0;
  if (v4 > 11)
  {
    if (v4 == 13)
    {
      v6 = MEMORY[0x1E695F108];
      if (a2 != 8)
      {
        v6 = MEMORY[0x1E695F110];
      }

      v7 = MEMORY[0x1E695F1B0];
      if (a2 != 8)
      {
        v7 = MEMORY[0x1E695F1C0];
      }

      goto LABEL_23;
    }

    if (v4 != 12)
    {
      return result;
    }

    if (a2 == 18)
    {
      v6 = MEMORY[0x1E695F0C0];
    }

    else
    {
      if (a2 != 16)
      {
        if (a2 == 8)
        {
          v6 = MEMORY[0x1E695F0F0];
          v7 = MEMORY[0x1E695F198];
        }

        else
        {
          v6 = MEMORY[0x1E695F0D8];
          v7 = MEMORY[0x1E695F0B8];
        }

        goto LABEL_23;
      }

      v6 = MEMORY[0x1E695F0C8];
    }
  }

  else
  {
    if (v4 == 1)
    {
      v6 = MEMORY[0x1E695F190];
      v8 = MEMORY[0x1E695F188];
      if (a2 != 18)
      {
        v8 = MEMORY[0x1E695F180];
      }

      if (a2 != 16)
      {
        v6 = v8;
      }

      return *v6;
    }

    if (v4 != 9)
    {
      return result;
    }

    if (a2 == 18)
    {
      v6 = MEMORY[0x1E695F170];
    }

    else
    {
      if (a2 != 16)
      {
        if (a2 == 8)
        {
          v6 = MEMORY[0x1E695F100];
          v7 = MEMORY[0x1E695F1A8];
        }

        else
        {
          v6 = MEMORY[0x1E695F0E8];
          v7 = MEMORY[0x1E695F150];
        }

LABEL_23:
        if (!a4)
        {
          v6 = v7;
        }

        return *v6;
      }

      v6 = MEMORY[0x1E695F178];
    }
  }

  return *v6;
}

uint64_t re::CoreVideoUtils::convertToGammaSpaceRGBColorModel(re::CoreVideoUtils *this)
{
  v1 = 1111970369;
  v2 = re::CoreVideoUtils::uncompressedPixelFormat(this);
  if (v2 > 1380401728)
  {
    if (v2 > 1999843441)
    {
      if (v2 == 1999843442 || v2 == 2019963440)
      {
        return 1815162994;
      }

      v3 = 2016686640;
LABEL_17:
      if (v2 == v3)
      {
        return 1815162994;
      }

      return 1380411457;
    }

    if (v2 != 1380401729)
    {
      if (v2 == 1882468912)
      {
        return 1815162994;
      }

      v3 = 1885745712;
      goto LABEL_17;
    }
  }

  else if (v2 > 875704421)
  {
    if (v2 != 875704422 && v2 != 875704438 && v2 != 1111970369)
    {
      return 1380411457;
    }
  }

  else if (v2 != 641230384 && v2 != 641234480)
  {
    v3 = 645428784;
    goto LABEL_17;
  }

  return v1;
}

uint64_t re::CoreVideoUtils::canConvertToGammaSpaceRGBColorModel(re::CoreVideoUtils *this)
{
  v1 = re::CoreVideoUtils::uncompressedPixelFormat(this);
  result = 1;
  if (v1 <= 1380401728)
  {
    if (v1 > 875704421)
    {
      if (v1 != 875704422 && v1 != 875704438)
      {
        v3 = 1111970369;
LABEL_18:
        if (v1 != v3)
        {
          return 0;
        }
      }
    }

    else if (v1 != 641230384 && v1 != 641234480)
    {
      v3 = 645428784;
      goto LABEL_18;
    }
  }

  else
  {
    if (v1 > 1885745711)
    {
      if (v1 > 2016686639)
      {
        if (v1 == 2016686640)
        {
          return result;
        }

        v3 = 2019963440;
      }

      else
      {
        if (v1 == 1885745712)
        {
          return result;
        }

        v3 = 1999843442;
      }

      goto LABEL_18;
    }

    if (v1 != 1380401729 && v1 != 1380411457)
    {
      v3 = 1882468912;
      goto LABEL_18;
    }
  }

  return result;
}

void re::VideoPSEProcessor::init(re::VideoPSEProcessor *this)
{
  if (!*this)
  {
    v2 = re::globalAllocators(this);
    v3 = (*(*v2[2] + 32))(v2[2], 8, 8);
    *v3 = 0;
    v4 = objc_opt_new();
    v5 = *v3;
    *v3 = v4;

    *this = v3;
  }
}

uint64_t re::VideoPSEProcessor::Processor::process(re *a1, __IOSurface **this, uint64_t *a3, double a4, float a5, float a6)
{
  v27[3] = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v6 = *a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Unable to process PSE. Input is invalid.", v25, 2u);
    }

    return 1;
  }

  else
  {
    *&v14 = re::VideoSurfaceBase::edrFactor(this);
    v15 = *a1;
    v16 = *this;
    v17 = *a3;
    v26[0] = @"sourceSurfaceEDR";
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    v27[0] = v18;
    v26[1] = @"displayMaxNits";
    *&v19 = a5;
    v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
    v27[1] = v20;
    v26[2] = @"displayEDRFactor";
    *&v21 = a6;
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
    v27[2] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    [v15 processSourceSurface:v16 withTimestamp:v17 toDestinationSurface:v23 options:a4];

    return 0;
  }
}

double re::VideoMetalTextures::encodedSize(re::VideoMetalTextures *this)
{
  v1 = 0;
  v3 = *MEMORY[0x1E695F060];
  v2 = *(MEMORY[0x1E695F060] + 8);
  v4 = this + 104;
  do
  {
    v5 = *&v4[v1];
    if (v5)
    {
      v6 = [v5 width];
      v7 = [*&v4[v1] height];
      if (v3 <= v6)
      {
        v3 = v6;
      }

      if (v2 <= v7)
      {
        v2 = v7;
      }
    }

    v1 += 8;
  }

  while (v1 != 24);
  return v3;
}

void CFDictionarySetInt32(__CFDictionary *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t re::VideoLightSpillSessionRegister(re *this)
{
  qword_1EE1C4968 = 0;
  qword_1EE1C4970 = "VideoLightSpillSession";
  unk_1EE1C4978 = re::VideoLightSpillSessionConstructor;
  qword_1EE1C4980 = 0;
  unk_1EE1C4988 = re::VideoLightSpillSessionDestructor;
  xmmword_1EE1C4990 = 0u;
  unk_1EE1C49A0 = 0u;
  result = _CFRuntimeRegisterClass();
  _MergedGlobals_580 = result;
  return result;
}

uint64_t re::VideoLightSpillSessionCreate(re *this, const __CFAllocator *a2, const __CFDictionary *a3)
{
  pthread_once(&re::VideoLightSpillSessionGetTypeID(void)::sRegisterVideoLightSpillSessionOnce, re::VideoLightSpillSessionRegister);
  if (_CFRuntimeCreateInstance())
  {
    if (this)
    {
      if (CFDictionaryContainsKey(this, @"SpillmapWidth"))
      {
      }

      if (CFDictionaryContainsKey(this, @"SpillmapHeight"))
      {
      }

      if (CFDictionaryContainsKey(this, @"SpillmapLayout"))
      {
      }

      if (CFDictionaryContainsKey(this, @"SpillmapIntermediateWidth"))
      {
      }

      if (CFDictionaryContainsKey(this, @"SpillmapIntermediateHeight"))
      {
      }

      if (CFDictionaryContainsKey(this, @"SpillmapIntermediateBlurSigma"))
      {
      }
    }

    operator new();
  }

  return 0;
}

re::DynamicString *re::pixelFormatStrings(re *this, uint64_t a2)
{
  if (a2 > 80)
  {
    if (a2 == 500)
    {
      v5 = "MTLPixelFormatYCBCR8_420_2P";
    }

    else
    {
      if (a2 != 81)
      {
        return result;
      }

      v5 = "MTLPixelFormatBGRA8Unorm_sRGB";
    }
  }

  else if (a2 == 55)
  {
    v5 = "MTLPixelFormatR32Float";
  }

  else
  {
    if (a2 != 80)
    {
      return result;
    }

    v5 = "MTLPixelFormatBGRA8Unorm";
  }

  v6[0] = v5;
  v6[1] = strlen(v5);
  return re::DynamicString::operator=(this, v6);
}

void re::VideoSpillMapMetal::setTaskIDToken(id *this, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [this[8] setTaskIDToken:a2];
  objc_autoreleasePoolPop(v4);
  if (*(this + 14) != a2)
  {
    *(this + 14) = a2;
  }
}

void re::VideoLightSpillGenerator::WarmUp(re::VideoLightSpillGenerator *this)
{
  if (re::VideoLightSpillGenerator::WarmUp(void)::onceToken != -1)
  {
    dispatch_once(&re::VideoLightSpillGenerator::WarmUp(void)::onceToken, &__block_literal_global_67);
  }
}

uint64_t ___ZN2re24VideoLightSpillGenerator6WarmUpEv_block_invoke(uint64_t a1, const __CFAllocator *a2, const __CFDictionary *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = re::VideoLightSpillSessionCreate(0, a2, a3);
  if (v3)
  {
    CFRelease(v3);
  }

  else
  {
    v4 = *re::videoLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [VideoLightSpillSessionPrewarm] Video light spill session creation failed during session pre-warm", buf, 2u);
    }
  }

  v54 = 0;
  v51[1] = 0;
  v52 = 0;
  v51[0] = 0;
  v53 = 0;
  *buf = 81;
  re::DynamicArray<unsigned long>::add(v51, buf);
  *buf = 55;
  re::DynamicArray<unsigned long>::add(v51, buf);
  *buf = 500;
  re::DynamicArray<unsigned long>::add(v51, buf);
  v5 = MTLCreateSystemDefaultDevice();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 newCommandQueue];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 commandBuffer];
      if (v9)
      {
        if (v52)
        {
          v10 = 0;
          while (1)
          {
            v11 = *(v54 + 8 * v10);
            v46 = 0;
            *buf = 0u;
            v45 = 0u;
            v47 = 0x7FFFFFFFLL;
            v48 = 0;
            v49 = 0;
            v50 = 0;
            re::VideoTextureAllocator::createTextureInternal(buf, 8, 8, v11, 2u, 3, 0, 0, &v40, 0, 0);
            v12 = v40.isa;
            v13 = v12;
            if (!v12)
            {
              v27 = *re::videoLogObjects(0);
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_36;
              }

              v28 = v27;
              v29 = re::DynamicArray<re::SharedPtr<re::TransformOp>>::operator[](v52, v54, v10);
              re::pixelFormatStrings(&v40, *v29);
              if (v41)
              {
                v30 = v43;
              }

              else
              {
                v30 = v42;
              }

              *v55 = 136315138;
              v56 = v30;
              v31 = "[VideoLightSpillGenerator] [VideoLightSpillMPSCallsPrewarm] Failed to create input texture with MTLPixelFormat %s";
              goto LABEL_31;
            }

            re::VideoTextureAllocator::createTextureInternal(buf, 8, 8, v11, 2u, 3, 0, 0, &v40, v14, 0);
            v15 = v40.isa;
            if (!v15)
            {
              break;
            }

            v16 = v15;

            re::VideoTextureAllocator::createTextureInternal(buf, 8, 8, v11, 2u, 3, 0, 0, &v40, v17, 0);
            v18 = v40.isa;
            if (!v18)
            {
              v35 = *re::videoLogObjects(0);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v37 = v35;
                v38 = re::DynamicArray<re::SharedPtr<re::TransformOp>>::operator[](v52, v54, v10);
                re::pixelFormatStrings(&v40, *v38);
                v39 = (v41 & 1) != 0 ? v43 : v42;
                *v55 = 136315138;
                v56 = v39;
                _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [VideoLightSpillMPSCallsPrewarm] Failed to create gaussian blur output texture with MTLPixelFormat %s", v55, 0xCu);

                if (v40.isa)
                {
                  if (v41)
                  {
                    (*(*v40.isa + 40))();
                  }
                }
              }

              goto LABEL_36;
            }

            v19 = v18;

            v20 = [objc_alloc(MEMORY[0x1E6974578]) initWithDevice:v6];
            [v20 encodeToCommandBuffer:v9 sourceTexture:v13 destinationTexture:v16];
            v21 = objc_alloc(MEMORY[0x1E69745C0]);
            LODWORD(v22) = 3.0;
            v23 = [v21 initWithDevice:v6 sigma:v22];
            [v23 encodeToCommandBuffer:v9 sourceTexture:v16 destinationTexture:v19];

            re::VideoTextureAllocator::~VideoTextureAllocator(buf);
            if (v52 <= ++v10)
            {
              goto LABEL_14;
            }
          }

          v32 = *re::videoLogObjects(0);
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }

          v28 = v32;
          v33 = re::DynamicArray<re::SharedPtr<re::TransformOp>>::operator[](v52, v54, v10);
          re::pixelFormatStrings(&v40, *v33);
          if (v41)
          {
            v34 = v43;
          }

          else
          {
            v34 = v42;
          }

          *v55 = 136315138;
          v56 = v34;
          v31 = "[VideoLightSpillGenerator] [VideoLightSpillMPSCallsPrewarm] Failed to create bilinear scale output texture with MTLPixelFormat %s";
LABEL_31:
          _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, v31, v55, 0xCu);

          if (v40.isa && (v41 & 1) != 0)
          {
            (*(*v40.isa + 40))();
          }

LABEL_36:

          re::VideoTextureAllocator::~VideoTextureAllocator(buf);
        }

        else
        {
LABEL_14:
          [v9 commit];
          [v9 waitUntilScheduled];
        }
      }

      else
      {
        v26 = *re::videoLogObjects(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [VideoLightSpillMPSCallsPrewarm] Failed to get a metal command buffer", buf, 2u);
        }
      }
    }

    else
    {
      v25 = *re::videoLogObjects(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [VideoLightSpillMPSCallsPrewarm] Failed to get a metal command queue", buf, 2u);
      }
    }
  }

  else
  {
    v24 = *re::videoLogObjects(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [VideoLightSpillMPSCallsPrewarm] Failed to get a metal device", buf, 2u);
    }
  }

  result = v51[0];
  if (v51[0])
  {
    if (v54)
    {
      return (*(*v51[0] + 40))();
    }
  }

  return result;
}

__CVBuffer *re::VideoLightSpillGenerator::CanGenerateForPixelBuffer(__CVBuffer **a1)
{
  result = *a1;
  if (result)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(result);
    return ([VideoSpillMapMetalSession metalPixelFormatForPixelFormat:PixelFormatType withTransferFunction:(re::VideoPixelBufferBase::colorTags(a1) >> 8)]!= 0);
  }

  return result;
}

uint64_t re::VideoLightSpillGenerator::setupSession(re::VideoLightSpillGenerator *this, int a2, int a3, int a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = a3;
  valuePtr = a2;
  v23 = a4;
  v8 = re::VideoDefaults::logEnabled(this);
  if (v8)
  {
    v21 = *re::videoLogObjects(v8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v27 = a2;
      v28 = 1024;
      v29 = a3;
      v30 = 1024;
      v31 = a4;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "[VideoSpillGenerator]->setupSession :: width %i : height %i : blurSigma %i", buf, 0x14u);
    }
  }

  v9 = *(this + 2);
  if (v9)
  {
    if (*this == a2 && *(this + 1) == a3 && *(this + 2) == a4)
    {
      return 0;
    }

    CFRelease(v9);
    *(this + 2) = 0;
    *this = 0;
    *(this + 2) = -1;
  }

  v10 = re::VideoDefaults::logEnabled(v9);
  if (v10)
  {
    v22 = *re::videoLogObjects(v10);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v27 = a2;
      v28 = 1024;
      v29 = a3;
      v30 = 1024;
      v31 = a4;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "[VideoSpillGenerator]->setupSession :: Updating the spillGenerator session with width %i : height %i : blurSigma %i", buf, 0x14u);
    }
  }

  result = 0;
  if (a2 >= 1 && a3 >= 1 && (a4 & 0x80000000) == 0)
  {
    v12 = *MEMORY[0x1E695E480];
    v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v14 = CFNumberCreate(v12, kCFNumberSInt32Type, &v24);
    v15 = CFNumberCreate(v12, kCFNumberSInt32Type, &v23);
    Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"SpillmapWidth", v13);
    CFDictionarySetValue(Mutable, @"SpillmapHeight", v14);
    CFDictionarySetValue(Mutable, @"SpillmapIntermediateBlurSigma", v15);
    *(this + 2) = re::VideoLightSpillSessionCreate(Mutable, v17, v18);
    CFRelease(Mutable);
    CFRelease(v13);
    CFRelease(v14);
    CFRelease(v15);
    v19 = *(this + 2);
    if (v19)
    {
      v20 = v24;
      *this = valuePtr;
      *(this + 1) = v20;
      *(this + 2) = v23;
      result = *(v19 + 16);
      if (result)
      {
        re::VideoSpillMapMetal::setTaskIDToken(result, *(this + 6));
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::VideoLightSpillGenerator::generate(uint64_t this, __CVBuffer *a2, __CVBuffer **a3)
{
  v3 = this;
  *&v60[5] = *MEMORY[0x1E69E9840];
  if (!*(this + 16))
  {
    goto LABEL_14;
  }

  *a3 = 0;
  v5 = *(this + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = *(v5 + 16);
  if ((*(v7 + 72) & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(v7 + 64);
    v10 = [v9 configureSession:CVPixelBufferGetIOSurface(a2) setWidth:*(v7 + 88) setHeight:*(v7 + 92)];
    if (v10)
    {
      v11 = *re::videoLogObjects(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [VideoSpillMapMetal::initializeTexture] Unable to configure light spill session", buf, 2u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *re::videoLogObjects(v12);
      this = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (this)
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [VideoSpillMapMetal::computeSpillMap] Unable to initialize textures", buf, 2u);
      }

      goto LABEL_14;
    }

    objc_autoreleasePoolPop(v8);
    *(v7 + 72) = 1;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(v7 + 64);
  v16 = [v15 calculateDrmSpillmapMetal:a2 emitSpillmap:a3 setLayout:*(v7 + 76) withAllocator:v7];
  if (v16)
  {
    v17 = *re::videoLogObjects(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [VideoSpillMapMetal::computeSpillMap] Unable to compute light spill", buf, 2u);
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_14;
  }

  objc_autoreleasePoolPop(v14);
  this = re::VideoDefaults::lightSpillDumpEnabled(v20);
  if (!this)
  {
    goto LABEL_18;
  }

  v24 = v7;
  CVPixelBufferGetIOSurface(a2);
  ProtectionOptions = IOSurfaceGetProtectionOptions();
  v26 = *re::videoLogObjects(ProtectionOptions);
  this = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (!ProtectionOptions)
  {
    if (this)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "[VideoLightSpillGenerator] [lightSpillDumpEnabled] Light spill dumping is enabled and activated for this unprotected content", buf, 2u);
    }

    v27 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v27 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
    v28 = [MEMORY[0x1E695DF00] date];
    v29 = [v27 stringFromDate:v28];

    v30 = NSTemporaryDirectory();
    v56 = v29;
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@video_lightspill_dump_%dx%d_%@.bgra", v30, *(v24 + 88), *(v24 + 92), v29];
    v31 = [MEMORY[0x1E696AC08] defaultManager];
    v58 = 0;
    [v31 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:&v58];
    v32 = v58;

    if (v32)
    {
      v34 = *re::videoLogObjects(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [lightSpillDumpEnabled] failed to create temporary directory", buf, 2u);
      }
    }

    else
    {
      v36 = fopen([v57 UTF8String], "wb+");
      *(v24 + 80) = v36;
      if (v36)
      {
        CVPixelBufferLockBaseAddress(*a3, 1uLL);
        BaseAddress = CVPixelBufferGetBaseAddress(*a3);
        Width = CVPixelBufferGetWidth(*a3);
        Height = CVPixelBufferGetHeight(*a3);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*a3, 0);
        if (Height)
        {
          v41 = BytesPerRowOfPlane;
          while (1)
          {
            BytesPerRowOfPlane = fwrite(BaseAddress, 4uLL, Width, *(v24 + 80));
            if (BytesPerRowOfPlane != Width)
            {
              break;
            }

            BaseAddress = v41 + BaseAddress;
            if (!--Height)
            {
              goto LABEL_38;
            }
          }

          v52 = *re::videoLogObjects(BytesPerRowOfPlane);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [lightSpillDumpEnabled] Failed to write lightspill texture", buf, 2u);
          }

          v35 = 0;
          v21 = 0;
        }

        else
        {
LABEL_38:
          v42 = *re::videoLogObjects(BytesPerRowOfPlane);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = v57;
            v44 = v42;
            v45 = [v57 UTF8String];
            *buf = 136315138;
            *v60 = v45;
            _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "[VideoLightSpillGenerator] [lightSpillDumpEnabled] dumping lightspill to %s", buf, 0xCu);
          }

          v46 = fclose(*(v24 + 80));
          if (v46)
          {
            v47 = *re::videoLogObjects(v46);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v53 = v57;
              v54 = v47;
              v55 = [v57 UTF8String];
              *buf = 136315138;
              *v60 = v55;
              _os_log_error_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [lightSpillDumpEnabled] failed to close file %s", buf, 0xCu);
            }
          }

          v35 = 1;
          CVPixelBufferUnlockBaseAddress(*a3, 1uLL);
          v21 = 11;
        }

LABEL_31:

        if (!v35)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v48 = *re::videoLogObjects(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = v57;
        v50 = v48;
        v51 = [v57 UTF8String];
        *buf = 136315138;
        *v60 = v51;
        _os_log_error_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [lightSpillDumpEnabled] failed to open file %s", buf, 0xCu);
      }
    }

    v21 = 11;
    v35 = 1;
    goto LABEL_31;
  }

  if (this)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "[VideoLightSpillGenerator] [lightSpillDumpEnabled] Light spill dumping is enabled from defaults write but deactivated due to content protection", buf, 2u);
  }

LABEL_18:
  v21 = 0;
LABEL_19:
  if (!v21 && *a3)
  {
    return 0;
  }

LABEL_14:
  v18 = *re::videoLogObjects(this);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v22 = *v3;
    v23 = v3[1];
    *buf = 67109376;
    v60[0] = v22;
    LOWORD(v60[1]) = 1024;
    *(&v60[1] + 2) = v23;
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator]->generate :: Could not generate light spill of size %d x %d", buf, 0xEu);
  }

  return 1;
}

void re::VideoLightSpillGenerator::setTaskIDToken(re::VideoLightSpillGenerator *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      if (*(this + 6) != a2)
      {
        *(this + 6) = a2;
        re::VideoSpillMapMetal::setTaskIDToken(v3, a2);
      }
    }
  }
}

uint64_t re::VideoLightSpillSessionDestructor(uint64_t this, const void *a2)
{
  if (this)
  {
    v2 = this;
    v3 = *(this + 16);
    if (v3)
    {
      if (*(v3 + 80))
      {
        *(v3 + 80) = 0;
      }

      v4 = *(v3 + 64);
      if (v4)
      {
        CFRelease(v4);
        *(v3 + 64) = 0;
      }

      re::ObjCObject::operator=((v3 + 48), 0);
      re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::clear(v3);
      re::VideoTextureAllocator::~VideoTextureAllocator(v3);
      this = MEMORY[0x1E6906520]();
    }

    *(v2 + 16) = 0;
  }

  return this;
}

unint64_t re::VideoColorUtils::hsvToRgb(uint64_t a1, int8x16_t a2, double a3, int8x16_t a4)
{
  a2.i32[0] = *a1;
  v6 = *(a1 + 4);
  *a4.i32 = *a1 - truncf(*a1);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8 = *vbslq_s8(v7, a4, a2).i32;
  a2.i32[0] = *(a1 + 8);
  v9 = v8 * 6.0;
  v10 = v9;
  v11 = v9 - v9;
  v12 = 1.0 - v6;
  *&v13 = (1.0 - (v6 * v11)) * *a2.i32;
  v14.f64[0] = 1.0 - v6 * (1.0 - v11);
  v14.f64[1] = v12;
  v15 = vmulq_n_f64(v14, *a2.i32);
  *&v15.f64[0] = vcvt_f32_f64(v15);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      LODWORD(v15.f64[0]) = vdup_lane_s32(*&v15.f64[0], 1).u32[0];
      HIDWORD(v15.f64[0]) = v13;
    }

    else if (v10 != 4)
    {
      if (v10 != 5)
      {
        goto LABEL_13;
      }

      LODWORD(v15.f64[0]) = *(a1 + 8);
    }

    return *&v15.f64[0];
  }

  switch(v10)
  {
    case 0:
      return vextq_s8(vextq_s8(a2, a2, 4uLL), v15, 0xCuLL).u64[0];
    case 1:
      HIDWORD(v13) = *(a1 + 8);
      return v13;
    case 2:
      LODWORD(v13) = vuzp2q_s32(v15, vzip1q_s32(v15, v15)).u32[0];
      HIDWORD(v13) = *(a1 + 8);
      return v13;
  }

LABEL_13:
  v20 = v4;
  v21 = v5;
  v16 = *re::videoLogObjects(a1);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  v13 = 0;
  if (v17)
  {
    *v19 = 0;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Unable to convert HSV to RGB", v19, 2u);
    return 0;
  }

  return v13;
}

uint64_t re::VideoColorUtils::rgbToHsv(float *a1, double a2, double a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  if (*a1 < v6 || v5 < v7)
  {
    if (v6 >= v5)
    {
      v9 = *a1;
    }

    else
    {
      v9 = a1[1];
    }

    if (v5 >= v7)
    {
      v10 = a1[2];
    }

    else
    {
      v10 = *a1;
    }

    v11 = v6 < v5 || v6 < v7;
    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    if (v11)
    {
      v13 = a1[2];
    }

    else
    {
      v13 = a1[1];
    }
  }

  else
  {
    if (v6 >= v7)
    {
      v12 = a1[2];
    }

    else
    {
      v12 = a1[1];
    }

    v13 = *a1;
  }

  v14 = 0.0;
  if (v13 <= 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v15 = v13 - v12;
    v16 = (v13 - v12) / v13;
    if (v16 != 0.0)
    {
      v17 = (v13 - v6) / v15;
      v18 = (v13 - v7) / v15;
      if (v13 == v5)
      {
        if (v12 == v6)
        {
          v14 = v18 + 5.0;
        }

        else
        {
          v14 = 1.0 - v17;
        }
      }

      else
      {
        v22 = v13 == v6;
        v23 = (v13 - v5) / v15;
        if (v22)
        {
          if (v12 == v7)
          {
            v14 = v23 + 1.0;
          }

          else
          {
            v14 = 3.0 - v18;
          }
        }

        else if (v12 == v5)
        {
          v14 = v17 + 3.0;
        }

        else
        {
          v14 = 5.0 - v23;
        }
      }
    }
  }

  *a4.i32 = v14 / 6.0;
  *a5.i32 = (v14 / 6.0) - truncf(v14 / 6.0);
  v19.i64[0] = 0x8000000080000000;
  v19.i64[1] = 0x8000000080000000;
  LODWORD(v20) = vbslq_s8(v19, a5, a4).u32[0];
  *(&v20 + 1) = v16;
  return v20;
}
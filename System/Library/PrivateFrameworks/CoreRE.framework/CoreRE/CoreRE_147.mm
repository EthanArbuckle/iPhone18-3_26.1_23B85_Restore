void *re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01E98;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v2 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::popTimeScope(v2, 0xDu);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void *re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01EF0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01EF0;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::operator()()
{
  v0 = re::internal::enableSignposts(0, 0);
  if (v0)
  {
    v0 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v0);
  if (isStatisticCollectionEnabled)
  {
    v2 = re::profilerThreadContext(isStatisticCollectionEnabled);

    re::ProfilerThreadContext::pushTimeScope(v2);
  }
}

void *re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01F48;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01F48;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::operator()(uint64_t a1)
{
  v3 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v11, 3007, *(a1 + 8));
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v3);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(v5 + 152))
    {
      v1 = mach_absolute_time();
    }
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 8) + 408))();
  if (v5)
  {
    if (*(v5 + 152))
    {
      v6 = mach_absolute_time();
      v7 = *(v5 + 152);
      if (v7)
      {
        v8 = v7[1024].u64[0];
        if (v8 >= v6 - v1)
        {
          v8 = v6 - v1;
        }

        v7[1024].i64[0] = v8;
        v9 = v7[1024].u64[1];
        if (v9 <= v6 - v1)
        {
          v9 = v6 - v1;
        }

        v7[1024].i64[1] = v9;
        v10 = vdupq_n_s64(1uLL);
        v10.i64[0] = v6 - v1;
        v7[1025] = vaddq_s64(v7[1025], v10);
        *(v5 + 184) = 0;
      }
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v11);
}

void *re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01FA0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01FA0;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_2,void ()(float)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 392);
  if ((v2 & 0xFFFFFF00000000) == 0)
  {
    v2 = *(v1 + 384);
  }

  v3 = re::DataArray<re::ecs2::SceneGroup>::tryGet(v1 + 160, v2);
  if (v3 && (v4 = *(v3 + 200)) != 0)
  {
    v5 = 0;
    v6 = *(v3 + 216);
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      v5 += *(v8 + 128);
      v7 -= 8;
    }

    while (v7);
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  v10 = re::internal::enableSignposts(0, 0);
  if (v10)
  {
    v10 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v10);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v12 = *(isStatisticCollectionEnabled + 152);
    if (v12)
    {
      v13 = v12[952].u64[0];
      if (v13 >= v9)
      {
        v13 = v9;
      }

      v12[952].i64[0] = v13;
      v14 = v12[952].u64[1];
      if (v14 <= v9)
      {
        v14 = v9;
      }

      v12[952].i64[1] = v14;
      v15 = vdupq_n_s64(1uLL);
      v15.i64[0] = v9;
      v12[953] = vaddq_s64(v12[953], v15);
      *(isStatisticCollectionEnabled + 184) = 0;
    }
  }

  v16 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v16)
  {
    v17 = re::profilerThreadContext(v16);
    re::ProfilerThreadContext::popTimeScope(v17, 0xEu);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_2,void ()(float)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D01FF8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ECSManager::configureSimulatePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_2,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D01FF8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::operator()()
{
  v0 = re::internal::enableSignposts(0, 0);
  if (v0)
  {
    v0 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v0);
  if (isStatisticCollectionEnabled)
  {
    v2 = re::profilerThreadContext(isStatisticCollectionEnabled);

    re::ProfilerThreadContext::pushTimeScope(v2);
  }
}

void *re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02050;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02050;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v2 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::popTimeScope(v2, 0xFu);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void *re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D020A8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ECSManager::configureCommitPhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_1,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D020A8;
  a2[1] = v2;
  return a2;
}

uint64_t re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 256, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void re::EncoderHelper::encodeBase64(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[1])
  {
    a3[1] = 1;
    v4 = a3[2];
  }

  else
  {
    *(a3 + 8) = 0;
    v4 = a3 + 9;
  }

  *v4 = 0;
  if (a2)
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
    v5 = [v8 base64EncodedStringWithOptions:0];
    v6 = [v5 UTF8String];
    v7 = strlen(v6);
    re::DynamicString::append(a3, v6, v7);
  }
}

uint64_t re::EncoderHelper::decodeBase64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  if (!a2)
  {
    return 1;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a1 length:a2 encoding:1 freeWhenDone:0];
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v4 options:1];
  v6 = v5;
  if (v5 && [v5 length])
  {
    re::DynamicArray<char>::resize(a3, [v6 length]);
    re::DynamicArray<char>::copy(a3, 0, [v6 bytes], objc_msgSend(v6, "length"));
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *re::DynamicArray<char>::copy(void *this, unint64_t a2, char *__src, size_t __len)
{
  if (!__len)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v12 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v13) = 136315906;
    *(&v13 + 4) = "copy";
    WORD6(v13) = 1024;
    HIWORD(v13) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v12, v13);
    _os_crash();
    __break(1u);
  }

  v4 = __len;
  v8 = a2 + __len;
  if (__CFADD__(a2, __len))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + a2), __src, __len);
  }

  else
  {
    re::DynamicArray<char>::growCapacity(this, a2 + __len);
    v10 = v6[2];
    v11 = v10 - v5;
    if (v10 != v5)
    {
      memmove((v6[4] + v5), __src, v11);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + v5), &__src[v11], v4 - v11);
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

void *re::DynamicArray<char>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<char>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<char>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void re::exportToKtx(uint64_t a1@<X0>, id *a2@<X1>, re *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v127 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 2);
  if (v10 == 1)
  {
    v82 = a6;
    v19 = *a2;
    if ([*(*a2 + 3) textureType] == 5)
    {
      v23 = 6;
    }

    else
    {
      v23 = 1;
    }

    v78 = v23;
    FaceOrArrayLength = re::internal::getFaceOrArrayLength(v19, v22);
    v25 = v19[6];
    v27 = v110[0];
    if (LOBYTE(v110[0]) != 1)
    {
      v35 = *re::pipelineLogObjects(v26);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "Failed to write KTX header to output stream", buf, 2u);
      }

      *v82 = v27;
      v36 = v111[0];
      *(v82 + 8) = *(&v110[0] + 1);
      *(v82 + 32) = v36;
      *(v82 + 16) = v110[1];
      memset(v110 + 8, 0, 24);
      return;
    }

    if (v25 < 1)
    {
LABEL_23:
      *v82 = 1;
      return;
    }

    v28 = 0;
    v29 = 32;
    while (1)
    {
      v94 = 0;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      *buf = 0u;
      v89 = 0u;
      *&v118 = 0;
      [v19[3] pixelFormat];
      [v19[3] width];
      [v19[3] height];
      [v19[3] depth];
      re::ktxMipInfo(&v118, buf);
      LODWORD(v105) = v94;
      if ([v19[3] textureType] == 3)
      {
        v30 = DWORD2(v93);
        LODWORD(v105) = [v19[3] arrayLength] * v30;
      }

      v31 = (*(*a1 + 16))(a1, &v105, 4);
      if (v31 != 4)
      {
        v45 = "Failed to write KTX image size to output stream";
        goto LABEL_38;
      }

      v32 = v19[6];
      if (v32 <= v28)
      {
        v114 = 0;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v118 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v125 = 136315906;
        *&v125[4] = "operator[]";
        *&v125[12] = 1024;
        *&v125[14] = 797;
        *&v125[18] = 2048;
        *&v125[20] = v28;
        *&v125[28] = 2048;
        *&v125[30] = v32;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v33 = (v105 * v78);
      v34 = (*(*a1 + 16))(a1, *(v19[8] + v29), v33);
      if (v34 != v33)
      {
        break;
      }

      ++v28;
      v29 += 40;
      if ((v25 & 0x7FFFFFFF) == v28)
      {
        goto LABEL_23;
      }
    }

    v45 = "Failed to write KTX image to output stream";
LABEL_38:
    re::DynamicString::DynamicString(v125, &v118);
    *v82 = 0;
    v46 = *&v125[24];
    *(v82 + 8) = *v125;
    *(v82 + 32) = v46;
    *(v82 + 16) = *&v125[8];
    goto LABEL_39;
  }

  if (v10)
  {
    v72 = std::__throw_bad_variant_access[abi:nn200100]();
    re::exportToKtxWithRGBA8ToASTCCompression(v72, v73);
    return;
  }

  if (!*a2)
  {
    v37 = *buf;
    v38 = v89;
    *a6 = 0;
    *(a6 + 8) = v37;
    *(a6 + 24) = v38;
    return;
  }

  v77 = [*a2 mipmapLevelCount];
  v80 = re::internal::getFaceOrArrayLength(a2);
  *buf = *a2;
  *&buf[8] = 0;
  re::internal::synchronizeTextureMipmaps(buf, v13);
  if (*&buf[8] != -1)
  {
    (off_1F5D020F0[*&buf[8]])(&v118, buf);
  }

  (*(*a1 + 24))(a1, 0);
  v15 = v114;
  if ((v114 & 1) == 0)
  {
    v39 = *re::pipelineLogObjects(v14);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "Failed to write KTX header to output stream", buf, 2u);
    }

    *a6 = v15;
    v40 = v117;
    *(a6 + 8) = v115;
    *(a6 + 32) = v40;
    *(a6 + 16) = v116;
    v115 = 0;
    v116 = 0uLL;
LABEL_31:
    v41 = v115;
    if (v115 && (v116 & 1) != 0)
    {
      goto LABEL_41;
    }

    return;
  }

  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  *buf = 0u;
  v89 = 0u;
  *&v118 = *a2;
  DWORD2(v118) = 0;
  if (DWORD2(v118) != -1)
  {
    v16 = (off_1F5D020F0[DWORD2(v118)])(v110, &v118);
  }

  v17 = v94;
  if (!HIDWORD(v94))
  {
    v83 = a6;
    LOBYTE(v110[1]) = 0;
    *&v110[0] = &unk_1F5CCF6E8;
    *(&v110[0] + 1) = "re::ExportToKtxAllocator";
    memset(v111, 0, sizeof(v111));
    v112 = 0;
    v113 = 0x7FFFFFFFLL;
    v42 = [*a2 storageMode];
    v105 = [*a2 device];
    v106 = 0;
    v107 = 65793;
    v108 = 1;
    v109 = 0;
    memset(v104, 0, sizeof(v104));
    v75 = v105;
    *buf = v75;
    *&buf[8] = @"exportToKtx staging buffer";
    v89 = 0uLL;
    LODWORD(v90) = 1;
    *(&v90 + 1) = 0;
    *&v91 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    v98 = 0;
    v102 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    CFRetain(@"exportToKtx staging buffer");
    v43 = v42;
    if (v42 == 2)
    {
      *&v118 = 0x3ADDA33AE87CF491;
      *(&v118 + 1) = "exportToKtxQueue";
      re::internal::BlitCommandQueue::init(v104, &v105, &v118);
      v44 = 0;
    }

    else
    {
      *&v118 = (*(**(&v110[1] + 1) + 32))(*(&v110[1] + 1), v17, 0);
      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::add(v111, &v118);
      v44 = v118;
    }

    if (v77 < 1)
    {
LABEL_88:
      *v83 = 1;
      goto LABEL_94;
    }

    v47 = 0;
    v74 = v77 & 0x7FFFFFFF;
    v48 = 0uLL;
    while (1)
    {
      v124 = 0;
      v122 = v48;
      v123 = v48;
      v120 = v48;
      v121 = v48;
      v118 = v48;
      v119 = v48;
      *v125 = *a2;
      *&v125[8] = 0;
      if (*&v125[8] != -1)
      {
        (off_1F5D020F0[*&v125[8]])(v85, v125);
      }

      v49 = v124;
      v87 = v124;
      v50 = [*a2 textureType];
      v51 = v87;
      if (v50 == 3)
      {
        v51 = v87 * v80;
        v87 *= v80;
      }

      v52 = v80;
      if (v51 >= 0x18000)
      {
        v52 = 0x20000 / v49 <= 1 ? 1 : 0x20000 / v49;
        if (v47)
        {
          (*(*a1 + 24))(a1, 0);
        }
      }

      v53 = (*(*a1 + 16))(a1, &v87, 4);
      if (v53 != 4)
      {
        break;
      }

      v76 = *(&v123 + 1);
      v79 = v123;
      v84 = 0;
      if (v80)
      {
        v54 = 0;
        v55 = v49;
        v56 = v52;
        while (1)
        {
          if (!--v56)
          {
            if (v54)
            {
              (*(*a1 + 24))(a1, 0);
              v54 = v84;
            }

            v57 = v80 - v54;
            if (v57 >= v52 + (v52 >> 1))
            {
              v56 = v52;
            }

            else
            {
              v56 = v57;
            }
          }

          if (v43 == 2)
          {
            v58 = re::internal::BlitCommandQueue::blitCommandEncoder(v104);
            if ([*a2 textureType] == 7)
            {
              v59 = 0;
            }

            else
            {
              v59 = &v84;
            }

            v60 = re::internal::TextureInMetalBuffers::addTextureToBufferCommands(buf, a2, v47, v58, v59, &v123, 1);
            if ((v60 & 1) == 0)
            {
              v69 = *v125;
              v70 = *&v125[16];
              v71 = *&v125[24];
              *v83 = 0;
              *(v83 + 8) = v69;
              *(v83 + 24) = v70;
              *(v83 + 32) = v71;
              goto LABEL_94;
            }

            re::internal::BlitCommandQueue::commit(v104);
            re::internal::BlitCommandQueue::waitUntilCompleted(v104, v125);
            if (v125[0])
            {
              if ((v102 & 1) == 0)
              {
                re::internal::TextureInMetalBuffers::createTextureData(buf, 0);
              }

              if (v103)
              {
                v62 = 1;
                v44 = v103;
              }

              else
              {
                v62 = 0;
                v64 = *v85;
                v65 = *&v85[16];
                v66 = v86;
                *v83 = 0;
                *(v83 + 8) = v64;
                *(v83 + 24) = v65;
                *(v83 + 32) = v66;
              }
            }

            else
            {
              re::DynamicString::DynamicString(v85, &v125[8]);
              v62 = 0;
              *v83 = 0;
              *(v83 + 8) = *v85;
              *(v83 + 32) = v86;
              *(v83 + 16) = *&v85[8];
            }

            if (v125[0] & 1) == 0 && *&v125[8] && (v125[16])
            {
              (*(**&v125[8] + 40))();
            }

            if ((v62 & 1) == 0)
            {
              goto LABEL_94;
            }
          }

          else
          {
            bzero(v44, v55);
            v63 = *a2;
            memset(v125, 0, 24);
            *&v125[24] = v118;
            v126 = v119;
            [v63 getBytes:v44 bytesPerRow:v79 bytesPerImage:v76 fromRegion:v125 mipmapLevel:v47 slice:v84];
          }

          v67 = (*(*a1 + 16))(a1, v44, v55);
          if (v67 != v55)
          {
            v68 = "Failed to write KTX image to output stream";
            goto LABEL_90;
          }

          v54 = v84 + 1;
          v84 = v54;
          v48 = 0uLL;
          if (v54 >= v80)
          {
            goto LABEL_87;
          }
        }
      }

      v48 = 0uLL;
LABEL_87:
      if (++v47 == v74)
      {
        goto LABEL_88;
      }
    }

    v68 = "Failed to write KTX image size to output stream";
LABEL_90:
    re::DynamicString::DynamicString(v85, v125);
    *v83 = 0;
    *(v83 + 8) = *v85;
    *(v83 + 32) = v86;
    *(v83 + 16) = *&v85[8];
    if (*v125 && (v125[8] & 1) != 0)
    {
      (*(**v125 + 40))();
    }

LABEL_94:
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(buf);
    re::internal::BlitCommandQueue::~BlitCommandQueue(v104);

    re::AutoFreeAllocator::~AutoFreeAllocator(v110);
    if (v114)
    {
      return;
    }

    goto LABEL_31;
  }

  re::DynamicString::DynamicString(v110, &v118);
  *a6 = 0;
  v18 = *(&v110[1] + 1);
  *(a6 + 8) = *&v110[0];
  *(a6 + 32) = v18;
  *(a6 + 16) = *(v110 + 8);
LABEL_39:
  v41 = v118;
  if (v118 && (BYTE8(v118) & 1) != 0)
  {
LABEL_41:
    (*(*v41 + 40))();
  }
}

uint64_t re::exportToKtxWithRGBA8ToASTCCompression(uint64_t a1, re::TextureData *this, re *a3, unint64_t a4, uint64_t a5, int a6)
{
  v85 = *MEMORY[0x1E69E9840];
  *&v69 = a4;
  *(&v69 + 1) = a5;
  if (!re::TextureData::isValid(this))
  {
LABEL_41:
    LOBYTE(MTLPixelFormat) = 0;
    return MTLPixelFormat & 1;
  }

  v11 = re::TextureData::pixelFormat(this);
  if (((v11 - 10) > 0x3D || ((1 << (v11 - 10)) & 0x3000000000008003) == 0) && v11 != 115)
  {
    v40 = *re::pipelineLogObjects(v11);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v47 = v40;
      *buf = 67109120;
      *&buf[4] = re::TextureData::pixelFormat(this);
      _os_log_error_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_ERROR, "Unsupported metal format for ASTC compression: %d", buf, 8u);
    }

    goto LABEL_41;
  }

  v12 = HIDWORD(a4);
  if (*(this + 2))
  {
    v13 = 0;
  }

  else
  {
    v13 = [*this device];
  }

  v14 = v13;
  v64 = v14;
  v65 = 0;
  v66 = 65793;
  v67 = 1;
  v68 = 0;
  if (!v12)
  {
    v15 = re::TextureData::pixelFormat(this);
    LODWORD(v12) = re::getASTCDefaultMode(v15);
    DWORD1(v69) = v12;
  }

  MTLPixelFormat = re::getMTLPixelFormat(a4, v12);
  if (MTLPixelFormat)
  {
    v53 = v14;
    FaceOrArrayLength = re::internal::getFaceOrArrayLength(this, v16);
    v19 = re::TextureData::mipmapLevelCount(this);
    re::internal::synchronizeTextureMipmaps(this, v20);
    v21 = re::TextureData::textureType(this);
    v22 = re::TextureData::width(this);
    v23 = re::TextureData::height(this);
    v24 = re::TextureData::depth(this);
    v52 = FaceOrArrayLength;
    if (v60[0])
    {
      re::logTextureCompressionInfo("exportToKtxWithRGBA8ToASTCCompression", this, &v69);
      v26 = re::TextureData::textureType(this);
      v57 = 0;
      memset(v58, 0, sizeof(v58));
      v56[2] = 0;
      v56[0] = 0;
      v56[1] = 8;
      v59 = dispatch_get_global_queue(21, 0);
      if (v19 < 1)
      {
LABEL_36:
        LOBYTE(MTLPixelFormat) = 1;
        v14 = v53;
      }

      else
      {
        v51 = MTLPixelFormat;
        v27 = 0;
        LOBYTE(MTLPixelFormat) = 0;
        v28 = v19 & 0x7FFFFFFF;
        v29 = 0uLL;
        v49 = v28;
        while (1)
        {
          v84 = 0;
          v82 = v29;
          v83 = v29;
          v80 = v29;
          v81 = v29;
          *buf = v29;
          v79 = v29;
          if (v26 == 7)
          {
            v30 = v79;
          }

          else
          {
            v30 = v52;
          }

          if (v26 == 7)
          {
            v31 = v84;
          }

          else
          {
            v31 = v52 * DWORD2(v83);
          }

          v32 = re::TextureData::textureType(this);
          v33 = DWORD2(v83);
          if (v32 != 5)
          {
            v33 = v31;
          }

          v55 = v33;
          v34 = (*(*a1 + 16))(a1, &v55, 4);
          if (v34 != 4)
          {
            v44 = *re::pipelineLogObjects(v34);
            v14 = v53;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              *v73 = 0;
              _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, "Failed to write KTX image size to output stream", v73, 2u);
            }

            goto LABEL_61;
          }

          v54 = 0;
          if (v30)
          {
            break;
          }

          v38 = 0;
LABEL_34:
          v29 = 0uLL;
          if (v38 != v31)
          {
            v45 = *re::pipelineLogObjects(v34);
            v14 = v53;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
            {
              *v73 = 67109376;
              v74 = v54;
              LOWORD(v75) = 1024;
              *(&v75 + 2) = v31;
              _os_log_fault_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_FAULT, "Unexpected buffer size for ASTC-compressed texture (got %u, expected %u)", v73, 0xEu);
            }

            goto LABEL_61;
          }

          LOBYTE(MTLPixelFormat) = ++v27 >= v28;
          if (v27 == v28)
          {
            goto LABEL_36;
          }
        }

        v50 = MTLPixelFormat;
        v35 = 0;
        while (1)
        {
          v36 = v26 == 7 ? 0 : v35;
          v37 = v26 == 7 ? v35 : 0;
          v72[0] = &unk_1F5D02168;
          v72[1] = &v54;
          v72[2] = a1;
          v72[3] = v72;
          re::copyTextureBytesToASTCCompression(&v64, this, &v69, a6, v27, v36, v37, v56, v73, v72);
          v34 = std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::~__value_func[abi:nn200100](v72);
          if ((v73[0] & 1) == 0)
          {
            break;
          }

          if (v30 == ++v35)
          {
            v38 = v54;
            LOBYTE(MTLPixelFormat) = v50;
            v28 = v49;
            goto LABEL_34;
          }
        }

        v42 = *re::pipelineLogObjects(v34);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          if (v76)
          {
            v48 = *&v77[7];
          }

          else
          {
            v48 = v77;
          }

          *v70 = 136315138;
          v71 = v48;
          _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "Failed to write KTX image: %s", v70, 0xCu);
        }

        v14 = v53;
        LOBYTE(MTLPixelFormat) = v50;
        if (v73[0] & 1) == 0 && v75 && (v76)
        {
          (*(*v75 + 40))();
        }
      }

LABEL_61:
      if (*&v58[4])
      {
        astcenc_context_free(*&v58[4]);
        *&v58[4] = 0;
      }
    }

    else
    {
      v41 = *re::pipelineLogObjects(v25);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR) && ((v62 & 1) != 0 ? (v43 = *&v63[7]) : (v43 = v63), *buf = 136315138, *&buf[4] = v43, _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, "Failed to write KTX header to output stream: %s", buf, 0xCu), (v60[0] & 1) != 0))
      {
        LOBYTE(MTLPixelFormat) = 0;
        v14 = v53;
      }

      else
      {
        v14 = v53;
        if (v61 && (v62 & 1) != 0)
        {
          (*(*v61 + 40))();
        }

        LOBYTE(MTLPixelFormat) = 0;
      }
    }

    v39 = v65;
  }

  else
  {
    v39 = 0;
  }

  return MTLPixelFormat & 1;
}

void re::anonymous namespace::writeKtxHeader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re *a5, unsigned int a6, unsigned int a7, int a8, int a9, int a10, int a11, uint64_t a12, int a13)
{
  v14 = a4;
  v15 = a3;
  v55 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v44 = 0xBB31312058544BABLL;
  v45 = 169478669;
  v46 = 67305985;
  v18 = &xmmword_1E30FD278;
  v19 = 8432;
  while (*(v18 - 5) != a4)
  {
    v18 = (v18 + 68);
    v19 -= 68;
    if (!v19)
    {
      re::DynamicString::format("Unsupported pixel format: %d", &v35, a4);
      goto LABEL_5;
    }
  }

  v47 = *v18;
  v48 = *(v18 + 4);
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    goto LABEL_11;
  }

  if (a3 == 7)
  {
    goto LABEL_12;
  }

  if (a3 == 5)
  {
LABEL_11:
    a8 = 0;
LABEL_12:
    v49 = __PAIR64__(a7, a6);
    v50 = a8;
    LOBYTE(v37) = 0;
    v35 = &unk_1F5CCF6E8;
    v36 = "re::ExportToKtxAllocator";
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    v41 = 0x7FFFFFFFLL;
    v34 = 0;
    StandardKtxMetadata = re::makeStandardKtxMetadata(v14, a5, 0, &v35, &v34);
    v21 = StandardKtxMetadata;
    if (a12)
    {
      v22 = a13;
    }

    else
    {
      v22 = 0;
    }

    v23 = StandardKtxMetadata + v22;
    if (v15 == 3)
    {
      v24 = a9;
    }

    else
    {
      v24 = 0;
    }

    if (v15 == 3)
    {
      v25 = 1;
    }

    else
    {
      v25 = a9;
    }

    v51 = v24;
    v52 = v25;
    v53 = a11;
    v54 = (v23 + 3) & 0xFFFFFFFC;
    v26 = (*(*a2 + 16))(a2, &v44, 64);
    v27 = v26 == 64;
    if (v21)
    {
      v28 = v26;
      v26 = (*(*a2 + 16))(a2, v34, v21);
      v27 = v28 == 64 && v26 == v21;
    }

    if (a12)
    {
      if (a13 >= 1)
      {
        v26 = (*(*a2 + 16))(a2, a12, a13);
        if (v26 != a13)
        {
          v27 = 0;
        }
      }
    }

    if ((v23 & 3) != 0)
    {
      *v42 = 0;
      v26 = (*(*a2 + 16))(a2, v42, v23 & 3);
      if (v26 == (v23 & 3) && v27)
      {
        goto LABEL_37;
      }
    }

    else if (v27)
    {
LABEL_37:
      *a1 = 1;
LABEL_40:
      re::AutoFreeAllocator::~AutoFreeAllocator(&v35);
      return;
    }

    v31 = *v42;
    v32 = *&v42[16];
    v33 = v43;
    *a1 = 0;
    *(a1 + 8) = v31;
    *(a1 + 24) = v32;
    *(a1 + 32) = v33;
    goto LABEL_40;
  }

  re::DynamicString::format("Unsupported texture type: %d", &v35, a3);
LABEL_5:
  re::DynamicString::DynamicString(v42, &v35);
  *a1 = 0;
  *(a1 + 8) = *v42;
  *(a1 + 32) = v43;
  *(a1 + 16) = *&v42[8];
  if (v35)
  {
    if (v36)
    {
      (*(*v35 + 40))();
    }
  }
}

void re::anonymous namespace::ktxMipInfo(uint64_t a1, id *this, uint64_t a3, int a4)
{
  if (*(this + 2))
  {
    v7 = 0;
  }

  else
  {
    v7 = [*this device];
  }

  v8 = v7;
  v9 = v7;
  if (!a4)
  {
    re::TextureData::pixelFormat(this);
  }

  re::TextureData::width(this);
  re::TextureData::height(this);
  re::TextureData::depth(this);
  if (!*(this + 2))
  {
    [*this sampleCount];
  }

  re::ktxMipInfo(&v9, a1);
}

uint64_t re::shouldASTCCompress(re::TextureData *a1, int a2, _DWORD *a3)
{
  result = re::TextureData::isValid(a1);
  if (result)
  {
    result = 0;
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          return result;
        }

        if (!*a3)
        {
          return 0;
        }
      }

      v7 = re::TextureData::pixelFormat(a1);
      if (re::getASTCBlockSize(v7))
      {
        return 0;
      }

      v8 = re::TextureData::pixelFormat(a1);
      result = 1;
      if ((v8 - 10 > 0x3D || ((1 << (v8 - 10)) & 0x3000000000008003) == 0) && v8 != 115)
      {
        return 0;
      }
    }

    else if (!a2 || a2 == 2)
    {
      return re::TextureData::pixelFormat(a1) == 70 || re::TextureData::pixelFormat(a1) == 71;
    }
  }

  return result;
}

uint64_t re::estimateExportedTextureSizeWithCompressionOptions(id *a1, re::TextureData *this, int a3, unsigned int *a4)
{
  if (!re::TextureData::isValid(this))
  {
    return 0;
  }

  re::TextureData::pixelFormat(this);
  if (re::shouldASTCCompress(this, a3, a4) && a3 == 4)
  {
    v9 = *a4;
    ASTCDefaultMode = a4[1];
    if (!ASTCDefaultMode)
    {
      v10 = re::TextureData::pixelFormat(this);
      ASTCDefaultMode = re::getASTCDefaultMode(v10);
    }

    re::getMTLPixelFormat(v9, ASTCDefaultMode);
  }

  if (!re::TextureData::mipmapLevelCount(this))
  {
    return 64;
  }

  v12 = 0;
  v11 = 64;
  do
  {
    v18 = 0;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    re::TextureData::width(this);
    re::TextureData::height(this);
    re::TextureData::depth(this);
    re::ktxMipInfo(a1, v16);
    if (re::TextureData::textureType(this) == 3)
    {
      v13 = *(&v17 + 1);
      v14 = re::TextureData::arrayLength(this) * v13;
    }

    else if (re::TextureData::textureType(this) == 5)
    {
      v14 = 6 * *(&v17 + 1);
    }

    else
    {
      v14 = v18;
    }

    v11 += v14;
    ++v12;
  }

  while (v12 < re::TextureData::mipmapLevelCount(this));
  return v11;
}

uint64_t re::canExportToKtx(re *this, const re::TextureData *a2)
{
  v3 = re::TextureData::textureType(this);
  if (v3 < 0xA)
  {
    return (0xACu >> v3) & 1;
  }

  re::TextureData::textureType(this);
  v5 = re::TextureData::textureType(this);
  re::internal::assertLog(5, v6, "assertion failure: '%s' (%s:line %i) Unexpected texture type: %u.", "!Unreachable code", "canExportToKtx", 550, v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::copySourceKTX(re *a1, uint64_t a2)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = re::globalAllocators(a1)[2];
  v15[0] = &unk_1F5D02110;
  v15[1] = a2;
  v15[3] = v4;
  v15[4] = v15;
  (*(*v3 + 48))(&v11, v3, v15);
  v5 = re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v15);
  v6 = v11;
  if ((v11 & 1) == 0)
  {
    v7 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = re::WrappedError::localizedDescription(&v12);
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Failed to read asset blob source: '%s'.", buf, 0xCu);
    }

    if ((v11 & 1) == 0)
    {
    }
  }

  return v6;
}

void re::internal::Callable<re::copySourceKTX(re::SharedPtr<re::InputStreamSource> &,re::StreamWriter &)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = (*(*a2 + 104))(a2, 64, &v49);
  if (v6)
  {
    v34 = a3;
    v41 = 0;
    v38[1] = 0;
    v39 = 0;
    v38[0] = 0;
    v40 = 0;
    if (v49 == 0xBB31312058544BABLL && v50 == 169478669 && v51 == 67305985)
    {
      v36 = v58;
      if (v57 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v57;
      }

      if (v56)
      {
        v11 = v56;
      }

      else
      {
        v11 = v10;
      }

      v12 = &xmmword_1E30FD278 + 3;
      v13 = 8432;
      while (v52 != *(v12 - 3) || v54 != *(v12 - 1) || v55 != *v12)
      {
        v12 += 17;
        v13 -= 68;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v32 = *(v12 - 2);
      if (v53 != v32)
      {
        v33 = *re::pipelineLogObjects(v6);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110144;
          *&buf[4] = v52;
          *&buf[8] = 1024;
          *&buf[10] = v54;
          *&buf[14] = 1024;
          LODWORD(v43) = v55;
          WORD2(v43) = 1024;
          *(&v43 + 6) = v32;
          WORD5(v43) = 1024;
          HIDWORD(v43) = v53;
          _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "KTX with type 0x%x, format 0x%x, internal format 0x%x has unexpected type size (expected: %u, actual: %u)", buf, 0x20u);
        }
      }

LABEL_24:
      if (v36)
      {
        v14 = 0;
        v15 = v59 + 68;
        if (v11 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v11;
        }

        v35 = v16;
        while (1)
        {
          v48 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          *buf = 0u;
          v43 = 0u;
          *v37 = 0;
          re::ktxMipInfo(v37, buf);
          v18 = v48;
          if (HIDWORD(v48))
          {
            break;
          }

          if (v48 <= 0x17FFF)
          {
            if (v48 * v11 <= 0x17FFF)
            {
              goto LABEL_51;
            }

            v20 = 0x20000 / v48;
            if (0x20000 / v48 >= v11)
            {
              v20 = v11;
            }

            if (v20 <= 1)
            {
              v21 = 1;
            }

            else
            {
              v21 = v20;
            }

            if (v11 != v21 >> 1)
            {
              v22 = 0;
              do
              {
                v23 = v11 - v22;
                if (v21 < v11 - v22)
                {
                  v23 = v21;
                }

                *v37 = v15 + v23 * v18;
                re::DynamicArray<unsigned long>::add(v38, v37);
                v22 += v21;
              }

              while (v22 < v11 - (v21 >> 1));
            }
          }

          else
          {
            v19 = v35;
            do
            {
              *v37 = v15 + v18;
              re::DynamicArray<unsigned long>::add(v38, v37);
              v15 = 0;
              --v19;
            }

            while (v19);
          }

          ++v14;
          v15 = 4;
          if (v14 == v36)
          {
            goto LABEL_51;
          }
        }

        v25 = *re::pipelineLogObjects(v17);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v37 = 0;
          _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Overflow when computing image block bytes during KTX load", v37, 2u);
        }

        v39 = 0;
        ++v40;
      }
    }

LABEL_51:
    if (v39)
    {
      v26 = *v41;
    }

    else
    {
      v26 = -1;
    }

    (*(**(a1 + 8) + 24))(*(a1 + 8), 0);
    (*(**(a1 + 8) + 16))(*(a1 + 8), &v49, 64);
    *buf = 0;
    *v37 = 0;
    if ((*(*a2 + 16))(a2, buf, v37))
    {
      v27 = 0;
      do
      {
        v28 = *buf;
        v29 = *v37;
        if (v26 <= *v37)
        {
          v31 = v27 + 1;
          do
          {
            v27 = v31;
            if (v26)
            {
              (*(**(a1 + 8) + 16))(*(a1 + 8), v28, v26);
              *v37 -= v26;
              v28 += v26;
            }

            if (v27 >= v39)
            {
              v26 = -1;
            }

            else
            {
              v26 = v41[v27];
            }

            (*(**(a1 + 8) + 24))(*(a1 + 8), 0);
            v29 = *v37;
            v31 = v27 + 1;
          }

          while (v26 <= *v37);
          v30 = *v37;
        }

        else
        {
          v30 = *v37;
        }

        if (v29 >= 1)
        {
          (*(**(a1 + 8) + 16))(*(a1 + 8), v28, v30);
          v26 -= *v37;
        }
      }

      while (((*(*a2 + 16))(a2, buf, v37) & 1) != 0);
    }

    *v34 = 1;
    if (v38[0])
    {
      if (v41)
      {
        (*(*v38[0] + 40))();
      }
    }
  }

  else
  {
    re::WrappedError::make(@"kRETexturePipelineErrorDomain", 0, "Could not load source KTX data for pass through", buf);
    v24 = *buf;
    *buf = 0;
    *a3 = 0;
    *(a3 + 8) = v24;
  }
}

void *re::internal::Callable<re::copySourceKTX(re::SharedPtr<re::InputStreamSource> &,re::StreamWriter &)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02110;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::copySourceKTX(re::SharedPtr<re::InputStreamSource> &,re::StreamWriter &)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02110;
  a2[1] = v2;
  return a2;
}

__n128 std::__function::__func<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0,std::allocator<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D02168;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0,std::allocator<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::operator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*a2 + 8))(a2);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *v7 += v6;
  v9 = (*(*a2 + 16))(a2);
  v10 = (*(*a2 + 8))(a2);
  v11 = (*(*v8 + 16))(v8, v9, v10);
  v12 = (*(*a2 + 8))(a2);
  if (v11 == v12)
  {
    *a3 = 1;
  }

  else
  {
    result = v16;
    v14 = v17;
    v15 = v18;
    *a3 = 0;
    *(a3 + 8) = result;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
  }

  return result;
}

uint64_t std::__function::__func<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0,std::allocator<re::exportToKtxWithRGBA8ToASTCCompression(re::StreamWriter &,re::TextureData const&,__CFString const*,re::ASTCCompressionOptions,re::TextureSemantic,re::Allocator *)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t re::internal::addAttributesByName(uint64_t this, uint64_t a2)
{
  v2 = *(this + 24);
  if (v2)
  {
    v4 = this;
    for (i = 0; i != v2; ++i)
    {
      v6 = re::internal::GeomAttributeContainer::attributeByIndex(v4, i);
      v7 = *(v6 + 8);
      v19 = v7;
      this = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a2, &v19);
      if (this == -1)
      {
        if (!*(a2 + 56))
        {
        }

        v8 = *(a2 + 32);
        if (!v8 || *(a2 + 16) > (8 * v8))
        {
          re::HashBrown<char const*,re::GeomAttribute *,re::internal::HashName,re::internal::HashName,void,false>::resize(a2);
        }

        v9 = re::Hash<re::DynamicString>::operator()(&v20, v7) % (*(a2 + 16) >> 4);
        while (1)
        {
          v10 = *a2;
          v11 = re::Hash<re::DynamicString>::operator()(&v21, v7);
          v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_1E304FAD0)))), 0x3830282018100800)));
          if (v12 < 0x40)
          {
            break;
          }

          if (++v9 == *(a2 + 16) >> 4)
          {
            v9 = 0;
          }

          if (v9 == re::Hash<re::DynamicString>::operator()(&v23, v7) % (*(a2 + 16) >> 4))
          {
            re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
            this = _os_crash();
            __break(1u);
            return this;
          }
        }

        v14 = v10 + 16 * v9;
        v15 = *(v14 + v12);
        *(v14 + v12) = v11 & 0x7F;
        v16 = 16 * (v12 + 16 * v9);
        *(*(a2 + 8) + v16) = v7;
        *(*(a2 + 8) + v16 + 8) = v6;
        if (v15 == 255)
        {
          v17 = -1;
        }

        else
        {
          v17 = 0;
        }

        v18.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v18.i64[1] = v17;
        *(a2 + 24) = vaddq_s64(*(a2 + 24), v18);
        this = re::Hash<re::DynamicString>::operator()(&v22, *(*(a2 + 8) + v16));
        *(a2 + 40) ^= this;
      }
    }
  }

  return this;
}

double re::internal::GeomAttributeManager::copy(re::internal::GeomAttributeManager *this, re::internal::GeomAttributeManager *a2)
{
  if (a2 != this)
  {
    re::internal::GeomAttributeContainer::copy(this, a2);
    re::internal::GeomAttributeContainer::copy((this + 112), (a2 + 112));
    re::internal::GeomAttributeContainer::copy((this + 224), (a2 + 224));
    re::internal::GeomAttributeContainer::copy((this + 336), (a2 + 336));
    re::internal::GeomAttributeContainer::copy((this + 448), (a2 + 448));

    return re::internal::GeomAttributeManager::copyAttributeTable(this, a2);
  }

  return result;
}

double re::internal::GeomAttributeManager::copyAttributeTable(re::internal::GeomAttributeManager *this, re::internal::GeomAttributeManager *a2)
{
  *(a2 + 72) = 0;
  ++*(a2 + 146);
  re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(a2 + 75);
  memset(v10, 0, sizeof(v10));
  re::internal::addAttributesByName(a2, v10);
  re::internal::addAttributesByName(a2 + 112, v10);
  re::internal::addAttributesByName(a2 + 224, v10);
  re::internal::addAttributesByName(a2 + 336, v10);
  re::internal::addAttributesByName(a2 + 448, v10);
  if (*(this + 72))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v9 = *(*(*(this + 74) + 8 * v4) + 8);
      v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(v10, &v9);
      re::internal::GeomAttributeManager::addAttributeToTable(a2, *(*(&v10[0] + 1) + 16 * v6 + 8));
      v4 = v5;
    }

    while (*(this + 72) > v5++);
  }

  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v10);
  return re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v10);
}

re::internal::GeomAttributeManager *re::internal::GeomAttributeManager::GeomAttributeManager(re::internal::GeomAttributeManager *this)
{
  v2 = re::internal::GeomAttributeContainer::GeomAttributeContainer(this, 0);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(v2 + 112, 1);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 224, 2);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 336, 3);
  v3 = re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 448, 4);
  *(this + 74) = 0;
  *(this + 70) = 0;
  *(this + 72) = 0;
  *(this + 71) = 0;
  *(this + 146) = 0;
  v4 = re::DynamicArray<float *>::setCapacity(this + 70, 1uLL);
  ++*(this + 146);
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *this = 1;
  v5 = *(this + 3);
  if (v5)
  {
    v6 = *(this + 5);
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      (*(*v8 + 80))(v8, *this);
      v7 -= 8;
    }

    while (v7);
  }

  return this;
}

re::internal::GeomAttributeManager *re::internal::GeomAttributeManager::GeomAttributeManager(re::internal::GeomAttributeManager *this, const re::internal::GeomAttributeManager *a2)
{
  v4 = re::internal::GeomAttributeContainer::GeomAttributeContainer(this, 0);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(v4 + 112, 1);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 224, 2);
  re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 336, 3);
  v5 = re::internal::GeomAttributeContainer::GeomAttributeContainer(this + 448, 4);
  *(this + 74) = 0;
  *(this + 70) = 0;
  *(this + 72) = 0;
  *(this + 71) = 0;
  *(this + 146) = 0;
  v6 = re::DynamicArray<float *>::setCapacity(this + 70, 1uLL);
  ++*(this + 146);
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  re::internal::GeomAttributeManager::copy(a2, this);
  return this;
}

void re::internal::GeomAttributeManager::~GeomAttributeManager(re::internal::GeomAttributeManager *this)
{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 600);
  re::DynamicArray<unsigned long>::deinit(this + 560);
  re::internal::GeomAttributeContainer::clearAttributes((this + 448), v2);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 496);
  re::DynamicArray<unsigned long>::deinit(this + 456);
  re::internal::GeomAttributeContainer::clearAttributes((this + 336), v3);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 384);
  re::DynamicArray<unsigned long>::deinit(this + 344);
  re::internal::GeomAttributeContainer::clearAttributes((this + 224), v4);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 272);
  re::DynamicArray<unsigned long>::deinit(this + 232);
  re::internal::GeomAttributeContainer::clearAttributes((this + 112), v5);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::internal::GeomAttributeContainer::clearAttributes(this, v6);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

void *re::internal::GeomAttributeManager::addAttributeToTable(void *this, re::GeomAttribute *a2)
{
  v5 = a2;
  if (a2)
  {
    v2 = this;
    v4 = *(a2 + 1);
    v3 = this[72];
    re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(this + 75, &v4, &v3);
    return re::DynamicArray<re::TransitionCondition *>::add((v2 + 560), &v5);
  }

  return this;
}

uint64_t re::internal::GeomAttributeManager::addAttribute(re::internal::GeomAttributeManager *a1, char *a2, int a3, int a4)
{
  v8 = re::internal::GeomAttributeManager::attributeByName(a1, a2);
  if (v8)
  {
    v10 = v8;
    if (*(v8 + 16) != a3 || *(v8 + 17) != a4)
    {
      return 0;
    }

    return v10;
  }

  if (a3 <= 1)
  {
    v11 = a1;
    if (!a3)
    {
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      v11 = (a1 + 112);
      goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v11 = (a1 + 224);
        goto LABEL_15;
      case 3:
        v11 = (a1 + 336);
        goto LABEL_15;
      case 4:
        v11 = (a1 + 448);
LABEL_15:
        v10 = re::internal::GeomAttributeContainer::addAttribute(v11, a2, a4);
        re::internal::GeomAttributeManager::addAttributeToTable(a1, v10);
        return v10;
    }
  }

  re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Unexpected attribute rate", "!Unreachable code", "containerByRate", 158);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::GeomAttributeManager::deleteAttribute(re::internal::GeomAttributeManager *this, char *a2)
{
  v3 = this;
  v28 = *MEMORY[0x1E69E9840];
  v13 = a2;
  result = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 75, &v13);
  if (result == -1)
  {
    return result;
  }

  v5 = *(v3 + 76) + 16 * result;
  v8 = *(v5 + 8);
  v6 = (v5 + 8);
  v7 = v8;
  v9 = *(v3 + 72);
  if (v9 <= v8)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v10 = *(*(*(v3 + 74) + 8 * v7) + 16);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::remove(v3 + 600, &v13);
  v11 = *v6;
  if (--v9 > v11)
  {
    v2 = *(v3 + 72);
    if (v2 > v9)
    {
      *(*(v3 + 74) + 8 * v11) = *(*(v3 + 74) + 8 * v9);
      *&v23 = *(*(*(v3 + 74) + 8 * v11) + 8);
      re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addOrReplace(v3 + 75, &v23, v6);
      goto LABEL_6;
    }

LABEL_18:
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = v9;
    v21 = 2048;
    v22 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_6:
  re::DynamicArray<double>::resize(v3 + 560, v9);
  if (v10 <= 1)
  {
    if (v10)
    {
      v3 = (v3 + 112);
    }
  }

  else
  {
    switch(v10)
    {
      case 2:
        v3 = (v3 + 224);
        break;
      case 3:
        v3 = (v3 + 336);
        break;
      case 4:
        v3 = (v3 + 448);
        break;
      default:
        re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Unexpected attribute rate", "!Unreachable code", "containerByRate", 158);
        result = _os_crash();
        __break(1u);
        return result;
    }
  }

  return re::internal::GeomAttributeContainer::deleteAttribute(v3, v13);
}

BOOL re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::remove(uint64_t a1, char **a2)
{
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    *(a1 + 40) ^= re::Hash<re::DynamicString>::operator()(&v14, *(*(a1 + 8) + 16 * v3));
    v10.i64[0] = -1;
    v10.i64[1] = v8;
    v11 = vaddq_s64(*(a1 + 24), v10);
    *(a1 + 24) = v11;
    v12 = *(a1 + 16);
    if (v12 >= 0x11 && v11.i64[0] < v12 >> 2)
    {
      re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

uint64_t re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addOrReplace(uint64_t *a1, char **a2, _DWORD *a3)
{
  v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = a1[1] + 16 * v6;
    *(v7 + 8) = *a3;
    return v7 + 8;
  }
}

uint64_t re::internal::GeomAttributeManager::attributeCount(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return *(a1 + 24);
    }

    if (a2 == 1)
    {
      a1 += 112;
      return *(a1 + 24);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        a1 += 224;
        return *(a1 + 24);
      case 3:
        a1 += 336;
        return *(a1 + 24);
      case 4:
        a1 += 448;
        return *(a1 + 24);
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected attribute rate", "!Unreachable code", "containerByRate", 135, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::GeomAttributeManager::attributeByIndex(re::internal::GeomAttributeManager *this, unsigned int a2)
{
  if (*(this + 72) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 74) + 8 * a2);
}

{
  if (*(this + 72) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 74) + 8 * a2);
}

uint64_t re::internal::GeomAttributeManager::attributeByName(re::internal::GeomAttributeManager *this, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v6[0] = a2;
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 75, v6);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(*(this + 76) + 16 * v3 + 8);
  if (v4 == -1)
  {
    return 0;
  }

  if (*(this + 72) <= v4)
  {
    memset(v6, 0, sizeof(v6));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 74) + 8 * v4);
}

{
  v7 = *MEMORY[0x1E69E9840];
  *&v6[0] = a2;
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 75, v6);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(*(this + 76) + 16 * v3 + 8);
  if (v4 == -1)
  {
    return 0;
  }

  if (*(this + 72) <= v4)
  {
    memset(v6, 0, sizeof(v6));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 74) + 8 * v4);
}

uint64_t re::internal::GeomAttributeManager::attributeByIndex(re::internal::GeomAttributeContainer *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a1 = (a1 + 112);

        return re::internal::GeomAttributeContainer::attributeByIndex(a1, a2);
      }

      goto LABEL_20;
    }

LABEL_14:

    return re::internal::GeomAttributeContainer::attributeByIndex(a1, a2);
  }

  switch(a3)
  {
    case 2:
      a1 = (a1 + 224);
      goto LABEL_14;
    case 3:
      a1 = (a1 + 336);

      return re::internal::GeomAttributeContainer::attributeByIndex(a1, a2);
    case 4:
      a1 = (a1 + 448);

      return re::internal::GeomAttributeContainer::attributeByIndex(a1, a2);
  }

LABEL_20:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected attribute rate", "!Unreachable code", "containerByRate", 135, v3, v4);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::internal::GeomAttributeManager::clear(uint64_t **this, re::GeomAttribute *a2)
{
  *this = 0;
  re::internal::GeomAttributeContainer::clearAttributes(this, a2);
  *(this + 28) = 0;
  re::internal::GeomAttributeContainer::clearAttributes((this + 14), v3);
  *(this + 56) = 0;
  re::internal::GeomAttributeContainer::clearAttributes((this + 28), v4);
  *(this + 84) = 0;
  re::internal::GeomAttributeContainer::clearAttributes((this + 42), v5);
  *(this + 112) = 0;
  re::internal::GeomAttributeContainer::clearAttributes((this + 56), v6);
  this[72] = 0;
  ++*(this + 146);
  result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(this + 75);
  *this = 1;
  v8 = this[3];
  if (v8)
  {
    v9 = this[5];
    v10 = 8 * v8;
    do
    {
      v11 = *v9++;
      result = (*(*v11 + 80))(v11, *this);
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t re::internal::GeomAttributeManager::reorderFaces(uint64_t a1, uint64_t *a2)
{
  v81[11] = *MEMORY[0x1E69E9840];
  result = re::internal::GeomAttributeContainer::reorder(a1 + 224, a2);
  v5 = *(a1 + 360);
  v6 = a2[2];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return result;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 336), v9);
    result = re::internal::accessFaceVaryingAttributeSubmesh(v10, v11);
    if (*(result + 140))
    {
      v12 = *(result + 128) == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12 && (*(result + 48) ? (v13 = *(result + 60) == 0) : (v13 = 1), v13 ? (v14 = *(result + 24) == v6) : (v14 = 0), v14))
    {
      v65 = *result;
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v66, (result + 8));
      if (!v67)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v66, 1uLL);
      }

      re::internal::GeomBaseTopology::reorderFaces(&v65, a2);
      *v70 = 0xFFFFFFFF00000000;
      v15 = -1;
      *&v70[8] = -1;
      LOBYTE(v71) = 0;
      if (v6 == -1)
      {
        v16 = 0;
        v17 = -1;
      }

      else
      {
        v15 = 0;
        *&v70[8] = v6 - 1;
        v16 = v6;
        v17 = v6 - 1;
        *v70 = v6;
      }

      *&v72[2] = v16;
      v60 = __PAIR64__(v15, v16);
      v61 = v17;
      v62 = 0;
      LODWORD(v63[0]) = v16;
      LODWORD(v76) = v65;
      *(&v76 + 1) = v66;
      v18 = v67;
      v66 = 0;
      v67 = 0uLL;
      v77 = v18;
      *(&v78 + 1) = v69;
      v69 = 0;
      LODWORD(v78) = 1;
      v65 = 0;
      v68 += 2;
      re::GeomIndexMap::GeomIndexMap(&v79, v70);
      re::GeomIndexMap::GeomIndexMap(v81, &v60);
      if (v62)
      {
        if (v62 == 2)
        {
          v20.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v63);
        }

        else
        {
          if (v62 != 1)
          {
            goto LABEL_115;
          }

          if (v63[0])
          {
            v19 = v64;
            if (v64)
            {
              (*(*v63[0] + 40))();
            }
          }
        }
      }

      if (v71)
      {
        if (v71 == 2)
        {
          v20.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v72[2]);
        }

        else
        {
          if (v71 != 1)
          {
            goto LABEL_116;
          }

          if (*&v72[2] && v75)
          {
            (*(**&v72[2] + 40))(v20);
          }
        }
      }

      (*(*v10 + 72))(v10, &v76, v20);
      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v76, v21);
      result = v66;
      if (v66 && v69)
      {
        result = (*(*v66 + 40))();
      }
    }

    else
    {
      v8 = 1;
    }

    ++v9;
  }

  while (v5 != v9);
  if ((v8 & 1) == 0)
  {
    return result;
  }

  v59 = 0;
  v56[1] = 0;
  v57 = 0;
  v56[0] = 0;
  v58 = 0;
  v22 = v6;
  re::DynamicArray<unsigned int>::resize(v56, v6, &re::kInvalidMeshIndex);
  v23 = 0;
  v24 = a2[2];
  v25 = a2[4];
  v26 = v57;
  v27 = v59;
  do
  {
    if (v24 == v23)
    {
      goto LABEL_112;
    }

    v10 = *(v25 + 4 * v23);
    if (v26 <= v10)
    {
LABEL_113:
      v60 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v70 = 136315906;
      *&v70[4] = "operator[]";
      v71 = 1024;
      *v72 = 789;
      *&v72[4] = 2048;
      *&v72[6] = v10;
      v73 = 2048;
      v74 = v26;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_114:
      re::internal::assertLog(4, v38, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
      _os_crash();
      __break(1u);
LABEL_115:
      re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash();
      __break(1u);
LABEL_116:
      re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash();
      __break(1u);
LABEL_117:
      re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash();
      __break(1u);
LABEL_118:
      re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash();
      __break(1u);
    }

    *(v27 + 4 * v10) = v23++;
  }

  while (v6 != v23);
  v28 = 0;
  do
  {
    v10 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 336), v28);
    v30 = re::internal::accessFaceVaryingAttributeSubmesh(v10, v29);
    v32 = v30;
    if (*(v30 + 140))
    {
      v33 = *(v30 + 128) == 0;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      if (*(v30 + 48))
      {
        v34 = *(v30 + 60) == 0;
      }

      else
      {
        v34 = 1;
      }

      v36 = *(v30 + 24);
      if (v34 && v36 == v6)
      {
        goto LABEL_104;
      }

      v37 = v36;
    }

    else
    {
      v36 = *(v30 + 24);
      v37 = v36;
    }

    v55 = 0;
    v52[1] = 0;
    v53 = 0;
    v51 = 0;
    v52[0] = 0;
    v54 = 0;
    v48[1] = 0;
    v49 = 0;
    v48[0] = 0;
    v50 = 0;
    re::DynamicArray<unsigned int>::resize(v52, v37, &re::kInvalidMeshIndex);
    re::DynamicArray<unsigned int>::resize(v48, v22, &re::kInvalidMeshIndex);
    if (v36)
    {
      v39 = 0;
      v40 = v36;
      while (1)
      {
        LODWORD(v76) = v39;
        v41 = *(v32 + 60);
        if (v41 == 2)
        {
          break;
        }

        if (v41 == 1)
        {
          if (*(v32 + 80) > v39)
          {
            v42 = *(*(v32 + 96) + 4 * v39);
            goto LABEL_75;
          }

LABEL_74:
          v42 = -1;
          goto LABEL_75;
        }

        if (*(v32 + 60))
        {
          goto LABEL_114;
        }

        if (v39 >= *(v32 + 64))
        {
          v42 = -1;
        }

        else
        {
          v42 = v39;
        }

LABEL_75:
        v24 = v42;
        v44 = v57;
        if (v57 <= v42)
        {
          v60 = 0;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v76 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v70 = 136315906;
          *&v70[4] = "operator[]";
          v71 = 1024;
          *v72 = 789;
          *&v72[4] = 2048;
          *&v72[6] = v24;
          v73 = 2048;
          v74 = v44;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_110:
          v60 = 0;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v76 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v70 = 136315906;
          *&v70[4] = "operator[]";
          v71 = 1024;
          *v72 = 789;
          *&v72[4] = 2048;
          *&v72[6] = v39;
          v73 = 2048;
          v74 = v44;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_111:
          v60 = 0;
          v26 = &v65;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v76 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v70 = 136315906;
          *&v70[4] = "operator[]";
          v71 = 1024;
          *v72 = 789;
          *&v72[4] = 2048;
          *&v72[6] = v24;
          v73 = 2048;
          v74 = v44;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_112:
          v60 = 0;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v76 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v70 = 136315906;
          *&v70[4] = "operator[]";
          v71 = 1024;
          *v72 = 797;
          *&v72[4] = 2048;
          *&v72[6] = v24;
          v73 = 2048;
          v74 = v24;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_113;
        }

        v44 = v53;
        if (v53 <= v39)
        {
          goto LABEL_110;
        }

        v24 = *(v59 + 4 * v42);
        *(v55 + 4 * v39) = v24;
        v44 = v49;
        if (v49 <= v24)
        {
          goto LABEL_111;
        }

        *(v51 + 4 * v24) = v39++;
        if (v40 == v39)
        {
          goto LABEL_79;
        }
      }

      v43 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v32 + 64), &v76);
      if (v43 != -1)
      {
        v42 = *(*(v32 + 72) + 8 * v43 + 4);
        goto LABEL_75;
      }

      goto LABEL_74;
    }

LABEL_79:
    v65 = *v32;
    re::DynamicArray<re::GeomCell4>::DynamicArray(&v66, (v32 + 8));
    if (!v67)
    {
      re::DynamicArray<re::BlendNode>::setCapacity(&v66, 1uLL);
    }

    re::GeomIndexMap::GeomIndexMap(v70, v52);
    re::GeomIndexMap::GeomIndexMap(&v60, v48);
    LODWORD(v76) = v65;
    *(&v76 + 1) = v66;
    v45 = v67;
    v66 = 0;
    v67 = 0uLL;
    v77 = v45;
    *(&v78 + 1) = v69;
    v69 = 0;
    LODWORD(v78) = 1;
    v65 = 0;
    v68 += 2;
    re::GeomIndexMap::GeomIndexMap(&v79, v70);
    re::GeomIndexMap::GeomIndexMap(v81, &v60);
    (*(*v10 + 72))(v10, &v76);
    re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v76, v46);
    if (v62)
    {
      if (v62 == 2)
      {
        v31.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v63);
      }

      else
      {
        if (v62 != 1)
        {
          goto LABEL_117;
        }

        if (v63[0])
        {
          v47 = v64;
          if (v64)
          {
            (*(*v63[0] + 40))();
          }
        }
      }
    }

    v22 = v6;
    if (v71)
    {
      if (v71 == 2)
      {
        v31.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v72[2]);
      }

      else
      {
        if (v71 != 1)
        {
          goto LABEL_118;
        }

        if (*&v72[2] && v75)
        {
          (*(**&v72[2] + 40))(v31);
        }
      }
    }

    if (v66 && v69)
    {
      (*(*v66 + 40))(v31);
    }

    if (v48[0] && v51)
    {
      (*(*v48[0] + 40))(v31);
    }

    if (v52[0] && v55)
    {
      (*(*v52[0] + 40))(v31);
    }

LABEL_104:
    ++v28;
  }

  while (v28 != v5);
  result = v56[0];
  if (v56[0])
  {
    if (v59)
    {
      return (*(*v56[0] + 40))(v31);
    }
  }

  return result;
}

uint64_t re::internal::GeomBaseTopology::reorderFaces(uint64_t a1, uint64_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  re::DynamicArray<float>::DynamicArray(&v11, a2);
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v12;
    do
    {
      if (v6 <= v4)
      {
        goto LABEL_25;
      }

      v7 = v13;
      if (v5 != *(v13 + 4 * v4))
      {
        v6 = *(a1 + 24);
        if (v6 <= v4)
        {
          goto LABEL_26;
        }

        v15 = *(*(a1 + 40) + 16 * v4);
        v4 = v5;
        v8 = v5;
        while (1)
        {
          v6 = *(v7 + 4 * v4);
          if (v5 == v6)
          {
            break;
          }

          v9 = *(a1 + 24);
          if (v9 <= v6)
          {
            v14 = 0;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v24 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v16 = 136315906;
            v17 = "operator[]";
            v18 = 1024;
            v19 = 789;
            v20 = 2048;
            v21 = v6;
            v22 = 2048;
            v23 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_22:
            v14 = 0;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v24 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v16 = 136315906;
            v17 = "operator[]";
            v18 = 1024;
            v19 = 789;
            v20 = 2048;
            v21 = v4;
            v22 = 2048;
            v23 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_23:
            v14 = 0;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v24 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v16 = 136315906;
            v17 = "operator[]";
            v18 = 1024;
            v19 = 789;
            v20 = 2048;
            v21 = v4;
            v22 = 2048;
            v23 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_24:
            v14 = 0;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v24 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v16 = 136315906;
            v17 = "operator[]";
            v18 = 1024;
            v19 = 789;
            v20 = 2048;
            v21 = v6;
            v22 = 2048;
            v23 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_25:
            *&v15 = 0;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v24 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v16 = 136315906;
            v17 = "operator[]";
            v18 = 1024;
            v19 = 789;
            v20 = 2048;
            v21 = v4;
            v22 = 2048;
            v23 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_26:
            *&v15 = 0;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v24 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v16 = 136315906;
            v17 = "operator[]";
            v18 = 1024;
            v19 = 789;
            v20 = 2048;
            v21 = v4;
            v22 = 2048;
            v23 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_27:
            v14 = 0;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v24 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v16 = 136315906;
            v17 = "operator[]";
            v18 = 1024;
            v19 = 789;
            v20 = 2048;
            v21 = v4;
            v22 = 2048;
            v23 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_28;
          }

          if (v9 <= v4)
          {
            goto LABEL_22;
          }

          *(*(a1 + 40) + 16 * v4) = *(*(a1 + 40) + 16 * v6);
          v9 = v12;
          if (v12 <= v4)
          {
            goto LABEL_23;
          }

          v7 = v13;
          *(v13 + 4 * v4) = v8;
          v4 = v6;
          v8 = v6;
          if (v9 <= v6)
          {
            goto LABEL_24;
          }
        }

        v6 = *(a1 + 24);
        if (v6 <= v4)
        {
          goto LABEL_27;
        }

        *(*(a1 + 40) + 16 * v4) = v15;
        v6 = v12;
        if (v12 <= v4)
        {
LABEL_28:
          v14 = 0;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v24 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v16 = 136315906;
          v17 = "operator[]";
          v18 = 1024;
          v19 = 789;
          v20 = 2048;
          v21 = v4;
          v22 = 2048;
          v23 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(v13 + 4 * v4) = v8;
      }

      v4 = ++v5;
    }

    while (v3 > v5);
  }

  result = v11;
  if (v11)
  {
    if (v13)
    {
      return (*(*v11 + 40))();
    }
  }

  return result;
}

re::internal::GeomAttributeContainer *re::internal::GeomAttributeManager::GeomAttributeManager(uint64_t a1, uint64_t a2)
{
  v4 = re::internal::GeomAttributeContainer::GeomAttributeContainer(a1);
  re::internal::GeomAttributeContainer::GeomAttributeContainer((v4 + 112));
  re::internal::GeomAttributeContainer::GeomAttributeContainer((a1 + 224));
  re::internal::GeomAttributeContainer::GeomAttributeContainer((a1 + 336));
  re::internal::GeomAttributeContainer::GeomAttributeContainer((a1 + 448));
  *(a1 + 584) = 0;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0;

  return re::internal::GeomAttributeManager::operator=(a1, a2);
}

re::internal::GeomAttributeContainer *re::internal::GeomAttributeManager::operator=(re::internal::GeomAttributeContainer *this, uint64_t a2)
{
  if (this != a2)
  {
    re::internal::GeomAttributeContainer::operator=(this, a2);
    re::internal::GeomAttributeContainer::operator=((this + 112), a2 + 112);
    re::internal::GeomAttributeContainer::operator=((this + 224), a2 + 224);
    re::internal::GeomAttributeContainer::operator=((this + 336), a2 + 336);
    re::internal::GeomAttributeContainer::operator=((this + 448), a2 + 448);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(this + 75, (a2 + 600));
    re::DynamicArray<re::GeomAttribute *>::operator=(this + 560, a2 + 560);
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear((a2 + 600));
    *(a2 + 576) = 0;
    ++*(a2 + 584);
  }

  return this;
}

uint64_t re::DynamicArray<re::GeomAttribute *>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = *(a2 + 8);
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      *(a2 + 8) = v8;
      v10 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v10;
      v11 = *(result + 32);
      *(result + 32) = *(a2 + 32);
      *(a2 + 32) = v11;
      ++*(a2 + 24);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

re::GeomAttribute *re::internal::GeomAttributeManager::replaceVertexWithFaceVaryingAttribute(uint64_t *a1, char *a2, re *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1 + 75, &v15);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = a1[76] + 16 * v6;
  v10 = *(v7 + 8);
  v8 = (v7 + 8);
  v9 = v10;
  v11 = a1[72];
  if (v11 <= v10)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1[74] + 8 * v9);
  FaceVaryingAttribute = re::GeomAttribute::createFaceVaryingAttribute(v15, *(v12 + 17), a3);
  re::GeomAttribute::copyValues(v12, FaceVaryingAttribute);
  v11 = *v8;
  v3 = a1[72];
  if (v3 <= v11)
  {
    goto LABEL_8;
  }

  *(a1[74] + 8 * v11) = FaceVaryingAttribute;
  *&v25 = *(v12 + 8);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::remove((a1 + 75), &v25);
  *&v25 = *(FaceVaryingAttribute + 1);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(a1 + 75, &v25, v8);
  re::internal::GeomAttributeContainer::addAttribute((a1 + 42), FaceVaryingAttribute);
  re::internal::GeomAttributeContainer::deleteAttribute((a1 + 14), v15);
  return FaceVaryingAttribute;
}

uint64_t re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(uint64_t *a1, char **a2, _DWORD *a3)
{
  v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::internalAdd(a1, a2, a3);
}

{
  v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::internalAdd(a1, a2, a3);
}

re::GeomAttribute *re::internal::GeomAttributeManager::replaceFaceWithFaceVaryingAttribute(uint64_t *a1, char *a2, re *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v6 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1 + 75, &v15);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = a1[76] + 16 * v6;
  v10 = *(v7 + 8);
  v8 = (v7 + 8);
  v9 = v10;
  v11 = a1[72];
  if (v11 <= v10)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1[74] + 8 * v9);
  FaceVaryingAttribute = re::GeomAttribute::createFaceVaryingAttribute(v15, *(v12 + 17), a3);
  re::GeomAttribute::copyValues(v12, FaceVaryingAttribute);
  v11 = *v8;
  v3 = a1[72];
  if (v3 <= v11)
  {
    goto LABEL_8;
  }

  *(a1[74] + 8 * v11) = FaceVaryingAttribute;
  *&v25 = *(v12 + 8);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::remove((a1 + 75), &v25);
  *&v25 = *(FaceVaryingAttribute + 1);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(a1 + 75, &v25, v8);
  re::internal::GeomAttributeContainer::addAttribute((a1 + 42), FaceVaryingAttribute);
  re::internal::GeomAttributeContainer::deleteAttribute((a1 + 28), v15);
  return FaceVaryingAttribute;
}

uint64_t re::internal::GeomAttributeManager::updateFaceVaryingAttributeSubmesh(void *a1, char *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v5 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(a1 + 75, v10);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = *(a1[76] + 16 * v5 + 8);
  v7 = a1[72];
  if (v7 <= v6)
  {
    v10[1] = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    v14 = 789;
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(a1[74] + 8 * v6);
  (*(*v8 + 72))(v8, a3);
  return v8;
}

re::GeomAttribute *re::internal::GeomAttributeManager::addFaceVaryingAttribute(uint64_t a1, const char *a2, uint64_t a3, re::internal::GeomAttributeFaceVaryingSubmesh *a4)
{
  if (re::internal::GeomAttributeManager::attributeByName(a1, a2))
  {
    return 0;
  }

  FaceVaryingAttribute = re::GeomAttribute::createFaceVaryingAttribute(a2, a3, a4);
  v8 = re::internal::GeomAttributeContainer::addAttribute((a1 + 336), FaceVaryingAttribute);
  re::internal::GeomAttributeManager::addAttributeToTable(a1, v8);
  return v8;
}

uint64_t re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(uint64_t *a1, char **a2)
{
  if (!a1[7] || a1[2] < 0x10 || !a1[3])
  {
    return -1;
  }

  v4 = re::Hash<re::DynamicString>::operator()(&v16, *a2) % (a1[2] >> 4);
  while (1)
  {
    v5 = *a1;
    v6 = re::Hash<re::DynamicString>::operator()(&v17, *a2);
    v15 = *(v5 + 16 * v4);
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(v6 & 0x7F), v15), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = __clz(__rbit64(v7));
    if (v8 <= 0x3F)
    {
      break;
    }

LABEL_10:
    v13.i64[0] = -1;
    v13.i64[1] = -1;
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v15, v13), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (++v4 == a1[2] >> 4)
    {
      v4 = 0;
    }

    v12 = -1;
    if (v4 == re::Hash<re::DynamicString>::operator()(&v18, *a2) % (a1[2] >> 4))
    {
      return v12;
    }
  }

  v9 = 16 * v4;
  v10 = *a2;
  v11 = a1[1];
  while (1)
  {
    v12 = v8 + v9;
    if (!strcmp(v10, *(v11 + 16 * (v8 + v9))))
    {
      return v12;
    }

    if (v8 <= 0x3E)
    {
      v8 = __clz(__rbit64((-2 << v8) & v7));
      if (v8 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

uint64_t re::DynamicArray<re::GeomCell4>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::BlendNode>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::GeomCell4>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::GeomCell4>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::BlendNode>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 16 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 16 * v5, (*(a2 + 32) + 16 * v5), 16 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 16 * v4);
  }

  v3[2] = v4;
  return result;
}

void re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(re::internal::GeomAttributeFaceVaryingSubmesh *this, uint64_t a2)
{
  v3 = *(this + 140);
  if (v3 == 2)
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 144);
  }

  else if (v3 == 1)
  {
    re::DynamicArray<unsigned long>::deinit(this + 144);
  }

  else
  {
    if (*(this + 140))
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash();
      __break(1u);
      goto LABEL_15;
    }

    *(this + 36) = 0;
  }

  v4 = *(this + 60);
  if (v4 == 2)
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 64);
    goto LABEL_13;
  }

  if (v4 == 1)
  {
    re::DynamicArray<unsigned long>::deinit(this + 64);
    goto LABEL_13;
  }

  if (!*(this + 60))
  {
    *(this + 16) = 0;
LABEL_13:
    re::DynamicArray<unsigned long>::deinit(this + 8);
    return;
  }

LABEL_15:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
}

uint64_t re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(void *a1, unsigned int *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 8 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

void re::HashBrown<char const*,re::GeomAttribute *,re::internal::HashName,re::internal::HashName,void,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  v8 = *(a1 + 56);
  memset(v41, 0, sizeof(v41));
  v9 = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v41, v8, v3);
  v39[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    while (1)
    {
      v14 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v39[1] = v14 ^ 0xFFFFLL;
      if (v14 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_27;
      }
    }

    v15 = __clz(__rbit64(v14 ^ 0xFFFFLL));
    v16 = v15 - v11;
    v40 = v15 - v11;
    if (v15 + 1 != v11)
    {
      v38 = vdupq_n_s64(1uLL).u64[0];
      while (1)
      {
        v17 = *(v39[0] + 8);
        if (*(&v41[3] + 1))
        {
          v18 = *&v41[2];
          if (*&v41[2])
          {
            goto LABEL_14;
          }
        }

        else
        {
          *&v41[1] = 16;
          *&v31 = -1;
          *(&v31 + 1) = -1;
          **&v41[0] = v31;
          v18 = *&v41[1];
          *(&v41[0] + 1) = *&v41[0] + 16;
          *(&v41[1] + 1) = 0;
          v41[2] = *&v41[1];
          *&v41[3] = 0;
          if (*&v41[1])
          {
LABEL_14:
            if (*&v41[1] <= (8 * v18))
            {
              goto LABEL_15;
            }
          }
        }

        re::HashBrown<char const*,re::GeomAttribute *,re::internal::HashName,re::internal::HashName,void,false>::resize(v41);
LABEL_15:
        v19 = (v17 + 16 * v16);
        v20 = re::Hash<re::DynamicString>::operator()(&v42, *v19);
        v21 = v20 % (*&v41[1] >> 4);
        while (1)
        {
          v22 = *&v41[0];
          v23 = re::Hash<re::DynamicString>::operator()(&v42, *v19);
          v24 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v22 + 16 * v21)), xmmword_1E304FAD0)))), 0x3830282018100800)));
          if (v24 < 0x40)
          {
            break;
          }

          if (v21 + 1 == *&v41[1] >> 4)
          {
            v21 = 0;
          }

          else
          {
            ++v21;
          }
        }

        v25 = v22 + 16 * v21;
        v26 = *(v25 + v24);
        *(v25 + v24) = v23 & 0x7F;
        v27 = 16 * (v24 + 16 * v21);
        *(*(&v41[0] + 1) + v27) = *v19;
        if (v26 == 255)
        {
          v28 = -1;
        }

        else
        {
          v28 = 0;
        }

        v29.i64[0] = v38;
        v29.i64[1] = v28;
        *(&v41[1] + 8) = vaddq_s64(*(&v41[1] + 8), v29);
        v30 = re::Hash<re::DynamicString>::operator()(&v42, *(*(&v41[0] + 1) + v27));
        *(&v41[2] + 1) ^= v30;
        v9 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v39);
        v16 = v40;
        if (v40 == -1)
        {
          v10 = *(a1 + 16);
          break;
        }
      }
    }
  }

LABEL_27:
  v32 = *(&v41[3] + 1);
  *(&v41[3] + 1) = *(a1 + 56);
  v33 = v41[0];
  v34 = v41[1];
  v41[0] = *a1;
  *&v41[1] = v10;
  v35 = v41[2];
  v36 = *(a1 + 40);
  *(a1 + 48) = *&v41[3];
  *(a1 + 56) = v32;
  *(&v41[2] + 8) = v36;
  v37 = *(a1 + 24);
  *a1 = v33;
  *(a1 + 16) = v34;
  *(a1 + 32) = v35;
  *(&v41[1] + 8) = v37;
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v41);
}

double re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::doResize(a1, v3);
}

double re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v23, 0, sizeof(v23));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v23, v4, a2);
  v21[0] = a1;
  v6 = *(a1 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *a1;
    v9 = v6 >> 4;
    v10 = xmmword_1E304FAD0;
    v5.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v21[1] = v11 ^ 0xFFFFLL;
      if (v11 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v12 = __clz(__rbit64(v11 ^ 0xFFFFLL));
    v13 = v12 - v7;
    v22 = v12 - v7;
    if (v12 + 1 != v7)
    {
      do
      {
        re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::internalAdd(v23, *(v21[0] + 8) + 16 * v13, *(v21[0] + 8) + 16 * v13 + 8, v10, v5);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v21);
        v13 = v22;
      }

      while (v22 != -1);
      v6 = *(a1 + 16);
    }
  }

LABEL_9:
  v14 = *(&v23[3] + 1);
  *(&v23[3] + 1) = *(a1 + 56);
  v15 = v23[0];
  v16 = v23[1];
  v23[0] = *a1;
  *&v23[1] = v6;
  v17 = v23[2];
  v18 = *(a1 + 40);
  *(a1 + 48) = *&v23[3];
  *(a1 + 56) = v14;
  *(&v23[2] + 8) = v18;
  v19 = *(a1 + 24);
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(&v23[1] + 8) = v19;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v23);
}

uint64_t re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::internalAdd(uint64_t a1, char **a2, _DWORD *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || *(a1 + 16) > (8 * v6))
  {
    re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::resize(a1, 1);
  }

  v7 = re::Hash<re::DynamicString>::operator()(&v18, *a2) % (*(a1 + 16) >> 4);
  while (1)
  {
    v8 = *a1;
    v9 = re::Hash<re::DynamicString>::operator()(&v19, *a2);
    v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v10 < 0x40)
    {
      break;
    }

    if (v7 + 1 == *(a1 + 16) >> 4)
    {
      v7 = 0;
    }

    else
    {
      ++v7;
    }
  }

  v11 = v8 + 16 * v7;
  v12 = *(v11 + v10);
  *(v11 + v10) = v9 & 0x7F;
  v13 = v10 + 16 * v7;
  *(*(a1 + 8) + 16 * v13) = *a2;
  v14 = *(a1 + 8) + 16 * v13;
  *(v14 + 8) = *a3;
  if (v12 == 255)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v16.i64[1] = v15;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v16);
  *(a1 + 40) ^= re::Hash<re::DynamicString>::operator()(&v20, *v14);
  return *(a1 + 8) + 16 * v13 + 8;
}

{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || *(a1 + 16) > (8 * v6))
  {
    re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::resize(a1, 1);
  }

  v7 = re::Hash<re::DynamicString>::operator()(&v19, *a2) % (*(a1 + 16) >> 4);
  while (1)
  {
    v8 = *a1;
    v9 = re::Hash<re::DynamicString>::operator()(&v20, *a2);
    v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v10 < 0x40)
    {
      break;
    }

    if (++v7 == *(a1 + 16) >> 4)
    {
      v7 = 0;
    }

    if (v7 == re::Hash<re::DynamicString>::operator()(&v22, *a2) % (*(a1 + 16) >> 4))
    {
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      result = _os_crash();
      __break(1u);
      return result;
    }
  }

  v12 = v8 + 16 * v7;
  v13 = *(v12 + v10);
  *(v12 + v10) = v9 & 0x7F;
  v14 = v10 + 16 * v7;
  *(*(a1 + 8) + 16 * v14) = *a2;
  v15 = *(a1 + 8) + 16 * v14;
  *(v15 + 8) = *a3;
  if (v13 == 255)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v17.i64[1] = v16;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v17);
  *(a1 + 40) ^= re::Hash<re::DynamicString>::operator()(&v21, *v15);
  return *(a1 + 8) + 16 * v14 + 8;
}

void *re::internal::clip2DTriangleWithPolygon(void *a1, uint64_t a2, unint64_t a3, _anonymous_namespace_ *this)
{
  v55 = *MEMORY[0x1E69E9840];
  *(this + 2) = 0;
  ++*(this + 6);
  re::DynamicArray<unsigned long>::add(this, a1);
  re::DynamicArray<unsigned long>::add(this, a1 + 1);
  result = re::DynamicArray<unsigned long>::add(this, a1 + 2);
  v10 = a3;
  if (a3)
  {
    v11 = 0;
    v36 = a3;
    v37 = a3;
    while (1)
    {
      re::DynamicArray<unsigned long>::DynamicArray(&v38, this);
      *(this + 2) = 0;
      ++*(this + 6);
      if (v11 == a3)
      {
        goto LABEL_32;
      }

      v13 = v11 + 1;
      if (v11 + 1 == v10)
      {
        v4 = 0;
      }

      else
      {
        v4 = v11 + 1;
      }

      if (a3 <= v4)
      {
        goto LABEL_33;
      }

      v14 = v39;
      if (v39)
      {
        break;
      }

LABEL_25:
      result = v38;
      if (v38)
      {
        if (v40)
        {
          result = (*(*v38 + 40))();
        }
      }

      ++v11;
      v10 = v36;
      a3 = v37;
      if (v13 == v36)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = 0;
    while (1)
    {
      a3 = v39;
      if (v39 <= v16)
      {
        break;
      }

      v10 = (v14 + v16 - 1) % v14;
      if (v39 <= v10)
      {
        goto LABEL_31;
      }

      v17 = v40;
      v18 = *(a2 + 8 * v11);
      v19 = *(v40 + v15);
      v20 = *(a2 + 8 * v4);
      v21 = vsub_f32(v18, v19);
      v22 = vsub_f32(v20, v19);
      v23 = *(v40 + 8 * v10);
      v24 = vsub_f32(v18, v23);
      v25 = vsub_f32(v20, v23);
      v26 = vneg_f32(vzip2_s32(v24, v21));
      v27 = vmvn_s8(vcgez_f32(vmla_f32(vmul_f32(vzip1_s32(v25, v22), v26), vzip2_s32(v25, v22), vzip1_s32(v24, v21))));
      if (v27.i8[4])
      {
        if ((v27.i8[0] & 1) == 0)
        {
          v28 = vsub_f32(v20, v18);
          v29 = vsub_f32(v23, v19);
          v30 = (-v29.f32[1] * v28.f32[0]) + (v29.f32[0] * v28.f32[1]);
          if ((v30 * v30) <= 0.0)
          {
            v31 = vmul_f32(vadd_f32(v19, v23), 0x3F0000003F000000);
          }

          else
          {
            v31 = vadd_f32(v19, vmul_n_f32(v29, (vmul_lane_f32(v28, v26, 1).f32[0] + (*v21.i32 * v28.f32[1])) / v30));
          }

          *&v50 = v31;
          re::DynamicArray<unsigned long>::add(this, &v50);
        }
      }

      else
      {
        if (v27.i8[0])
        {
          v32 = vsub_f32(v20, v18);
          v33 = vsub_f32(v23, v19);
          v34 = (-v33.f32[1] * v32.f32[0]) + (v33.f32[0] * v32.f32[1]);
          if ((v34 * v34) <= 0.0)
          {
            v35 = vmul_f32(vadd_f32(v19, v23), 0x3F0000003F000000);
          }

          else
          {
            v35 = vadd_f32(v19, vmul_n_f32(v33, (vmul_lane_f32(v32, v26, 1).f32[0] + (*v21.i32 * v32.f32[1])) / v34));
          }

          *&v50 = v35;
          re::DynamicArray<unsigned long>::add(this, &v50);
        }

        re::DynamicArray<unsigned long>::add(this, (v17 + v15));
      }

      ++v16;
      v15 += 8;
      if (v14 == v16)
      {
        goto LABEL_25;
      }
    }

    v41 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v42 = 136315906;
    v43 = "operator[]";
    v44 = 1024;
    v45 = 789;
    v46 = 2048;
    v47 = v16;
    v48 = 2048;
    v49 = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v41 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v42 = 136315906;
    v43 = "operator[]";
    v44 = 1024;
    v45 = 789;
    v46 = 2048;
    v47 = v10;
    v48 = 2048;
    v49 = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_32:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, a3);
    _os_crash();
    __break(1u);
LABEL_33:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, a3);
    _os_crash();
    __break(1u);
  }

  return result;
}

BOOL re::internal::triangleIntersectsAABB(unint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  v228 = *MEMORY[0x1E69E9840];
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  if (*(a5 + 8) <= 5uLL)
  {
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a5, 6uLL);
  }

  v10 = *a2;
  v11 = *a1;
  v12 = vsubq_f32(*a2, *a1);
  v13 = *a3;
  v14 = vsubq_f32(*a3, *a1);
  v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v12)), v14, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  v16 = fabsf(v15.f32[0]);
  v17 = fabsf(v15.f32[1]);
  v18 = *a1;
  LODWORD(v19) = *(a1 + 8);
  v20 = a2->i64[0];
  v21 = a2->i64[1];
  if (v16 >= 0.00001 || v17 >= 0.00001)
  {
    v32 = fabsf(v15.f32[2]);
    if (v32 >= 0.00001 || v17 >= 0.00001)
    {
      if (v32 < 0.00001 && v16 < 0.00001)
      {
        v41 = a4->f32[2];
        if (v19 == v41 || (v42 = fabsf(v19), vabds_f32(v19, v41) < (((v42 + fabsf(v41)) + 1.0) * 0.00001)) || (v43 = a4[1].f32[2], v19 == v43) || vabds_f32(v19, v43) < (((v42 + fabsf(v43)) + 1.0) * 0.00001))
        {
          v11.i32[1] = HIDWORD(*a1);
          v10.i32[1] = HIDWORD(a2->i64[0]);
          v13.i32[1] = HIDWORD(a3->i64[0]);
          v44 = a4->i64[0];
          v45 = a4[1].i64[0];
          *&v212 = 0;
          *&v211 = 0;
          v210 = 0uLL;
          DWORD2(v211) = 0;
          v216.i64[0] = v44;
          v216.i64[1] = __PAIR64__(HIDWORD(v44), v45);
          HIDWORD(v44) = HIDWORD(v45);
          *&v217 = v45;
          *(&v217 + 1) = v44;
          *v206 = v11.i64[0];
          *&v206[8] = v10.i64[0];
          *&v206[16] = v13.i64[0];
          re::internal::clip2DTriangleWithPolygon(v206, &v216, 4uLL, &v210);
          re::DynamicArray<re::Vector3<float>>::resize(a5, v211);
          if (v211)
          {
            v29 = 0;
            do
            {
              v30 = *(a5 + 16);
              if (v30 <= v29)
              {
                goto LABEL_124;
              }

              *&v46 = *(v212 + 8 * v29);
              DWORD2(v46) = *(a1 + 8);
              *(*(a5 + 32) + 16 * v29++) = v46;
            }

            while (v211 > v29);
          }

LABEL_35:
          v47 = *(a5 + 16) != 0;
          if (v210 && v212)
          {
            (*(*v210 + 40))();
          }

          return v47;
        }
      }
    }

    else
    {
      v33 = a4->f32[1];
      if (v33 == *(&v18 + 1) || (v34 = fabsf(*(&v18 + 1)), vabds_f32(*(&v18 + 1), v33) < (((v34 + fabsf(v33)) + 1.0) * 0.00001)) || (v35 = a4[1].f32[1], v35 == *(&v18 + 1)) || vabds_f32(*(&v18 + 1), v35) < (((v34 + fabsf(v35)) + 1.0) * 0.00001))
      {
        v11.i32[1] = *(a1 + 8);
        v10.i32[1] = a2->i64[1];
        v13.i32[1] = a3->i64[1];
        LODWORD(v36) = a4->i32[0];
        v37 = a4[1].i32[0];
        LODWORD(v38) = v37;
        HIDWORD(v38) = a4[1].i32[2];
        *&v217 = v38;
        LODWORD(v38) = v36;
        HIDWORD(v36) = a4->i32[2];
        *&v212 = 0;
        *&v211 = 0;
        v210 = 0uLL;
        v216.i64[0] = v36;
        LODWORD(v36) = v37;
        DWORD2(v211) = 0;
        v216.i64[1] = v36;
        *(&v217 + 1) = v38;
        *v206 = v11.i64[0];
        *&v206[8] = v10.i64[0];
        *&v206[16] = v13.i64[0];
        re::internal::clip2DTriangleWithPolygon(v206, &v216, 4uLL, &v210);
        re::DynamicArray<re::Vector3<float>>::resize(a5, v211);
        if (v211)
        {
          v40 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(a5 + 16);
            if (v30 <= v29)
            {
              goto LABEL_123;
            }

            LODWORD(v39) = *(v212 + v40);
            DWORD1(v39) = *(a1 + 4);
            DWORD2(v39) = *(v212 + v40 + 4);
            *(*(a5 + 32) + 16 * v29++) = v39;
            v40 += 8;
            if (v211 <= v29)
            {
              goto LABEL_35;
            }
          }
        }

        goto LABEL_35;
      }
    }
  }

  else if (a4->f32[0] == *&v18 || (v22 = fabsf(*&v18), vabds_f32(*&v18, a4->f32[0]) < (((v22 + fabsf(a4->f32[0])) + 1.0) * 0.00001)) || (v23 = a4[1].f32[0], v23 == *&v18) || vabds_f32(*&v18, v23) < (((v22 + fabsf(v23)) + 1.0) * 0.00001))
  {
    v24 = __PAIR64__(LODWORD(v19), HIDWORD(v18));
    v25 = __PAIR64__(a3->i64[1], HIDWORD(a3->i64[0]));
    v26 = *(a4->i64 + 4);
    v27 = *(a4[1].i64 + 4);
    *&v212 = 0;
    *&v211 = 0;
    v210 = 0uLL;
    DWORD2(v211) = 0;
    v216.i64[0] = v26;
    v216.i64[1] = __PAIR64__(HIDWORD(v26), v27);
    HIDWORD(v26) = HIDWORD(v27);
    *&v217 = v27;
    *(&v217 + 1) = v26;
    *v206 = v24;
    *&v206[8] = __PAIR64__(v21, HIDWORD(v20));
    *&v206[16] = v25;
    re::internal::clip2DTriangleWithPolygon(v206, &v216, 4uLL, &v210);
    re::DynamicArray<re::Vector3<float>>::resize(a5, v211);
    if (v211)
    {
      v28 = 0;
      v29 = 0;
      while (1)
      {
        v30 = *(a5 + 16);
        if (v30 <= v29)
        {
          break;
        }

        v31 = *a1;
        v31.i32[1] = *(v212 + v28);
        v31.i32[2] = *(v212 + v28 + 4);
        *(*(a5 + 32) + 16 * v29++) = v31;
        v28 += 8;
        if (v211 <= v29)
        {
          goto LABEL_35;
        }
      }

      *v201 = 0;
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      v216 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v206 = 136315906;
      *&v206[4] = "operator[]";
      *&v206[12] = 1024;
      *&v206[14] = 789;
      *&v206[18] = 2048;
      *&v206[20] = v29;
      *&v206[28] = 2048;
      *&v206[30] = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_123:
      *v201 = 0;
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      v216 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v206 = 136315906;
      *&v206[4] = "operator[]";
      *&v206[12] = 1024;
      *&v206[14] = 789;
      *&v206[18] = 2048;
      *&v206[20] = v29;
      *&v206[28] = 2048;
      *&v206[30] = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_124:
      *v201 = 0;
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      v216 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v206 = 136315906;
      *&v206[4] = "operator[]";
      *&v206[12] = 1024;
      *&v206[14] = 789;
      *&v206[18] = 2048;
      *&v206[20] = v29;
      *&v206[28] = 2048;
      *&v206[30] = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_125:
      *v201 = 0;
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      v216 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v206 = 136315906;
      *&v206[4] = "operator[]";
      *&v206[12] = 1024;
      *&v206[14] = 789;
      *&v206[18] = 2048;
      *&v206[20] = a1;
      *&v206[28] = 2048;
      *&v206[30] = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_126;
    }

    goto LABEL_35;
  }

  if (!re::triangleOverlapsBox(a1, a2, a3, a4, a4 + 1))
  {
    return 0;
  }

  *(a5 + 16) = 0;
  v48 = *(a5 + 24);
  *(a5 + 24) = v48 + 1;
  v49 = vsubq_f32(*a2, *a1);
  v50 = vsubq_f32(*a3, *a1);
  v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v49)), v50, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
  v52 = vmulq_f32(v51, v51);
  v53 = v52.f32[1] + (v52.f32[2] + v52.f32[0]);
  if (fabsf(v53) < 1.0e-12)
  {
    return 0;
  }

  v54 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
  v51.i32[1] = 0;
  v55 = v53;
  v56 = vrsqrte_f32(LODWORD(v53));
  v57 = vmul_f32(v56, vrsqrts_f32(LODWORD(v55), vmul_f32(v56, v56)));
  v58 = vmulq_n_f32(v54, vmul_f32(v57, vrsqrts_f32(LODWORD(v55), vmul_f32(v57, v57))).f32[0]);
  v66 = vaddq_f32(vaddq_f32(*a2, *a1), *a3);
  __asm { FMOV            V4.4S, #3.0 }

  v64 = vdivq_f32(v66, _Q4);
  *(a5 + 24) = v48 + 2;
  v65 = *a4;
  v68 = *a4;
  v66.i32[0] = a4[1].i32[0];
  v67 = a4[1].f32[1];
  v68.f32[1] = v67;
  LODWORD(v69) = HIDWORD(a4->i64[0]);
  v70 = a4[1].f32[2];
  v71 = *a4;
  v71.f32[2] = v70;
  *&v72 = v66.f32[0] - COERCE_FLOAT(*a4);
  v73.i32[0] = 0;
  v73.i64[1] = 0;
  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v74 = v68;
  v74.i32[2] = v65.i32[2];
  v75 = v72;
  v76 = vmulq_f32(v58, v72);
  v77 = v76.f32[2] + vaddv_f32(*v76.f32);
  v78 = 0;
  if (fabsf(v77) >= 0.00001)
  {
    v79 = vmulq_f32(v58, v65);
    v80 = vmulq_f32(v64, v58);
    v81 = vadd_f32(vzip1_s32(*&vextq_s8(v79, v79, 8uLL), *&vextq_s8(v80, v80, 8uLL)), vadd_f32(vzip1_s32(*v79.i8, *v80.i8), vzip2_s32(*v79.i8, *v80.i8)));
    v82 = -(v81.f32[0] - v81.f32[1]) / v77;
    v83 = &v216;
    if (v82 >= -0.000001 && v82 <= 1.0)
    {
      v216 = vaddq_f32(v65, vmulq_n_f32(v75, v82));
      v83 = &v217;
      v78 = 1;
    }

    v84 = vmulq_f32(v58, v74);
    v85 = -((v84.f32[2] + vaddv_f32(*v84.f32)) - v81.f32[1]) / v77;
    if (v85 >= -0.000001 && v85 <= 1.0)
    {
      *v83 = vaddq_f32(v74, vmulq_n_f32(v75, v85));
      ++v78;
    }

    v68.f32[2] = v70;
    v86 = vmulq_f32(v58, v71);
    v87 = -((v86.f32[2] + vaddv_f32(*v86.f32)) - v81.f32[1]) / v77;
    if (v87 >= -0.000001 && v87 <= 1.0)
    {
      *(&v216 + v78++) = vaddq_f32(v71, vmulq_n_f32(v75, v87));
    }

    v88 = vmulq_f32(v58, v68);
    v89 = -((v88.f32[2] + vaddv_f32(*v88.f32)) - v81.f32[1]) / v77;
    if (v89 >= -0.000001 && v89 <= 1.0)
    {
      *(&v216 + v78++) = vaddq_f32(v68, vmulq_n_f32(v75, v89));
    }
  }

  v90 = v65;
  v90.i32[0] = v66.i32[0];
  v73.f32[1] = v67 - v69;
  v91 = vmulq_f32(v58, v73);
  v92 = v91.f32[2] + vaddv_f32(*v91.f32);
  if (fabsf(v92) >= 0.00001)
  {
    v93 = vmulq_f32(v58, v65);
    v94 = vmulq_f32(v64, v58);
    v95 = vadd_f32(vzip1_s32(*&vextq_s8(v93, v93, 8uLL), *&vextq_s8(v94, v94, 8uLL)), vadd_f32(vzip1_s32(*v93.i8, *v94.i8), vzip2_s32(*v93.i8, *v94.i8)));
    v96 = -(v95.f32[0] - v95.f32[1]) / v92;
    if (v96 >= -0.000001 && v96 <= 1.0)
    {
      *(&v216 + v78++) = vaddq_f32(v65, vmulq_n_f32(v73, v96));
    }

    v97 = v66;
    v97.i32[1] = v65.i32[1];
    v98 = vmulq_f32(v58, v90);
    v99 = -((v98.f32[2] + vaddv_f32(*v98.f32)) - v95.f32[1]) / v92;
    if (v99 >= -0.000001 && v99 <= 1.0)
    {
      *(&v216 + v78++) = vaddq_f32(v90, vmulq_n_f32(v73, v99));
    }

    v97.f32[2] = v70;
    v100 = vmulq_f32(v58, v71);
    v101 = -((v100.f32[2] + vaddv_f32(*v100.f32)) - v95.f32[1]) / v92;
    if (v101 >= -0.000001 && v101 <= 1.0)
    {
      *(&v216 + v78++) = vaddq_f32(v71, vmulq_n_f32(v73, v101));
    }

    v102 = vmulq_f32(v58, v97);
    v103 = -((v102.f32[2] + vaddv_f32(*v102.f32)) - v95.f32[1]) / v92;
    if (v103 >= -0.000001 && v103 <= 1.0)
    {
      *(&v216 + v78++) = vaddq_f32(v97, vmulq_n_f32(v73, v103));
    }
  }

  *&v104 = v70 - v65.f32[2];
  v105.i64[0] = 0;
  v105.i64[1] = v104;
  v106 = vmulq_f32(v58, v105);
  v107 = v106.f32[2] + vaddv_f32(*v106.f32);
  if (fabsf(v107) < 0.00001)
  {
    goto LABEL_67;
  }

  v108 = vmulq_f32(v58, v65);
  v109 = vmulq_f32(v64, v58);
  v110 = vadd_f32(vzip1_s32(*&vextq_s8(v108, v108, 8uLL), *&vextq_s8(v109, v109, 8uLL)), vadd_f32(vzip1_s32(*v108.i8, *v109.i8), vzip2_s32(*v108.i8, *v109.i8)));
  v111 = -(v110.f32[0] - v110.f32[1]) / v107;
  if (v111 >= -0.000001 && v111 <= 1.0)
  {
    *(&v216 + v78++) = vaddq_f32(v65, vmulq_n_f32(v105, v111));
  }

  v66.f32[1] = v67;
  v112 = vmulq_f32(v58, v90);
  v113 = -((v112.f32[2] + vaddv_f32(*v112.f32)) - v110.f32[1]) / v107;
  if (v113 >= -0.000001 && v113 <= 1.0)
  {
    *(&v216 + v78++) = vaddq_f32(v90, vmulq_n_f32(v105, v113));
  }

  v66.i32[2] = v65.i32[2];
  v114 = vmulq_f32(v58, v74);
  v115 = -((v114.f32[2] + vaddv_f32(*v114.f32)) - v110.f32[1]) / v107;
  if (v115 >= -0.000001 && v115 <= 1.0)
  {
    *(&v216 + v78++) = vaddq_f32(v74, vmulq_n_f32(v105, v115));
  }

  v116 = vmulq_f32(v58, v66);
  v117 = -((v116.f32[2] + vaddv_f32(*v116.f32)) - v110.f32[1]) / v107;
  if (v117 < -0.000001 || v117 > 1.0)
  {
LABEL_67:
    if (v78)
    {
      goto LABEL_81;
    }

    return 0;
  }

  *(&v216 + v78++) = vaddq_f32(v66, vmulq_n_f32(v105, v117));
LABEL_81:
  v118 = vmulq_f32(v49, v49);
  *&v119 = v118.f32[2] + vaddv_f32(*v118.f32);
  *v118.f32 = vrsqrte_f32(v119);
  *v118.f32 = vmul_f32(*v118.f32, vrsqrts_f32(v119, vmul_f32(*v118.f32, *v118.f32)));
  v120 = vmulq_n_f32(v49, vmul_f32(*v118.f32, vrsqrts_f32(v119, vmul_f32(*v118.f32, *v118.f32))).f32[0]);
  v121 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
  v198 = v120;
  v122 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v120, v120), v120, 0xCuLL), vnegq_f32(v58)), v120, v121);
  v123 = vmulq_f32(v122, v122);
  v51.f32[0] = v123.f32[1] + (v123.f32[2] + v123.f32[0]);
  *v123.f32 = vrsqrte_f32(*v51.f32);
  *v123.f32 = vmul_f32(*v123.f32, vrsqrts_f32(*v51.f32, vmul_f32(*v123.f32, *v123.f32)));
  LODWORD(v124) = vmul_f32(*v123.f32, vrsqrts_f32(*v51.f32, vmul_f32(*v123.f32, *v123.f32))).u32[0];
  v125 = vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL);
  v126 = v58.f32[2];
  v127 = vmlaq_f32(vmulq_f32(v58, xmmword_1E30661F0), xmmword_1E30476A0, v121);
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v128 = vmulq_f32(v127, v127);
  v129 = v128.f32[1] + (v128.f32[2] + v128.f32[0]);
  v199 = v64;
  if (v129 <= 1.0e-10)
  {
    v157 = &v210;
    if (v126 >= 0.0)
    {
      v162 = &v216;
      v163 = v78;
      do
      {
        v164 = v162->i64[0];
        ++v162;
        *v157++ = v164;
        --v163;
      }

      while (v163);
    }

    else
    {
      v158 = &v210 + 1;
      v159 = &v216.f32[1];
      v160 = v78;
      do
      {
        v161 = -*v159;
        *(v158 - 1) = *(v159 - 1);
        *v158 = v161;
        v158 += 2;
        v159 += 4;
        --v160;
      }

      while (v160);
    }
  }

  else
  {
    v191 = v125;
    v193 = v124;
    v130 = v129;
    v131 = vrsqrte_f32(LODWORD(v129));
    v132 = vmul_f32(v131, vrsqrts_f32(LODWORD(v130), vmul_f32(v131, v131)));
    v195 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v127, v127), v127, 0xCuLL), vmul_f32(v132, vrsqrts_f32(LODWORD(v130), vmul_f32(v132, v132))).f32[0]);
    v133 = acosf(v126);
    v134 = v195;
    v135 = vmulq_f32(v134, v134);
    v136 = v135.f32[2] + vaddv_f32(*v135.f32);
    if (fabsf(v136) >= 1.0e-10)
    {
      v137 = v136;
      v138 = vrsqrte_f32(LODWORD(v136));
      v139 = vmul_f32(v138, vrsqrts_f32(LODWORD(v137), vmul_f32(v138, v138)));
      v134 = vmulq_n_f32(v195, vmul_f32(v139, vrsqrts_f32(LODWORD(v137), vmul_f32(v139, v139))).f32[0]);
    }

    v196 = v134;
    v189 = vmulq_f32(v134, v134).f32[0];
    v140 = vmuls_lane_f32(v134.f32[1], *v134.f32, 1);
    v141 = vmuls_lane_f32(v134.f32[2], v134, 2);
    v142 = vmuls_lane_f32(v134.f32[0], *v134.f32, 1);
    v143 = vmuls_lane_f32(v134.f32[0], v134, 2);
    v144 = vmuls_lane_f32(v134.f32[1], v134, 2);
    v145 = __sincosf_stret(v133);
    v146 = vmuls_lane_f32(v145.__sinval, *v196.f32, 1);
    v149.f32[0] = vmuls_lane_f32(v145.__sinval, v196, 2);
    v147 = -(v149.f32[0] - (v142 * (1.0 - v145.__cosval)));
    v148 = v149.f32[0] + (v142 * (1.0 - v145.__cosval));
    v149.i32[3] = 0;
    v149.f32[0] = v189 + (v145.__cosval * (1.0 - v189));
    v149.f32[1] = v148;
    v150.f32[0] = v147;
    v152 = &v210;
    v153 = &v216;
    v154 = v78;
    v125 = v191;
    v124 = v193;
    do
    {
      v155 = *v153++;
      v149.f32[2] = -(v146 - (v143 * (1.0 - v145.__cosval)));
      v151.i64[1] = COERCE_UNSIGNED_INT(v141 + (v145.__cosval * (1.0 - v141)));
      v150.i64[1] = COERCE_UNSIGNED_INT((v145.__sinval * v196.f32[0]) + (v144 * (1.0 - v145.__cosval)));
      v151.f32[1] = -((v145.__sinval * v196.f32[0]) - (v144 * (1.0 - v145.__cosval)));
      v150.f32[1] = v140 + (v145.__cosval * (1.0 - v140));
      v151.f32[0] = v146 + (v143 * (1.0 - v145.__cosval));
      v156 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v149, v155.f32[0]), v150, *v155.f32, 1), v151, v155, 2), xmmword_1E30474D0);
      *v152++ = vdiv_f32(*v156.i8, *&vdupq_laneq_s32(v156, 3));
      --v154;
    }

    while (v154);
  }

  v165 = 0;
  v166 = 0;
  v167 = vmulq_n_f32(v125, v124);
  v168 = &v210 + 1;
  do
  {
    v169 = *(v168 - 1);
    v170 = &v210 + 2 * v166;
    if (v169 < *v170 || v169 == *v170 && *v168 < v170[1])
    {
      v166 = v165;
    }

    ++v165;
    v168 += 2;
  }

  while (v78 != v165);
  v197 = v167;
  v171 = v78 - 1;
  v172 = (&v216 + v166);
  re::DynamicArray<re::Vector3<float>>::add(a5, v172);
  if (v166 != v171)
  {
    v173 = *v172;
    *v172 = *(&v216 + v171);
    *(&v216 + v171) = v173;
    v173.n128_u64[0] = *(&v210 + v166);
    *(&v210 + v166) = *(&v210 + v171);
    *(&v210 + v171) = v173.n128_u64[0];
  }

  if (v171)
  {
    *&v206[32] = xmmword_1E30A0528;
    v207 = unk_1E30A0538;
    v208 = xmmword_1E30A0548;
    *v206 = xmmword_1E30A0508;
    *&v206[16] = unk_1E30A0518;
    v209 = 10;
    *v201 = &v210;
    *&v201[8] = &v210 + 8 * v171;
    std::__introsort<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,false>(v206, &v206[8 * v171], v201, 126 - 2 * __clz(v171), 1);
    for (i = 0; i != v171; ++i)
    {
      re::DynamicArray<re::Vector3<float>>::add(a5, &v216 + *&v206[8 * i]);
    }
  }

  v175 = *(a5 + 16);
  if (!v175)
  {
    return 0;
  }

  v190 = *a1;
  v192 = *a2;
  v194 = *a3;
  *&v212 = 0;
  *&v211 = 0;
  v210 = 0uLL;
  DWORD2(v211) = 0;
  re::DynamicArray<unsigned long>::resize(&v210, v175);
  if (*(a5 + 16))
  {
    a1 = 0;
    do
    {
      v29 = v211;
      if (v211 <= a1)
      {
        goto LABEL_125;
      }

      v176 = vsubq_f32(*(*(a5 + 32) + 16 * a1), v199);
      v177 = vmulq_f32(v198, v176);
      v178 = vmulq_f32(v197, v176);
      *(v212 + 8 * a1++) = vadd_f32(vzip1_s32(*&vextq_s8(v177, v177, 8uLL), *&vextq_s8(v178, v178, 8uLL)), vadd_f32(vzip1_s32(*v177.i8, *v178.i8), vzip2_s32(*v177.i8, *v178.i8)));
    }

    while (*(a5 + 16) > a1);
  }

  v179 = vsubq_f32(v190, v199);
  v180 = vmulq_f32(v198, v179);
  v181 = vmulq_f32(v197, v179);
  *v181.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v180, v180, 8uLL), *&vextq_s8(v181, v181, 8uLL)), vadd_f32(vzip1_s32(*v180.i8, *v181.i8), vzip2_s32(*v180.i8, *v181.i8)));
  v182 = vsubq_f32(v192, v199);
  v183 = vmulq_f32(v198, v182);
  v184 = vmulq_f32(v197, v182);
  *v184.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v183, v183, 8uLL), *&vextq_s8(v184, v184, 8uLL)), vadd_f32(vzip1_s32(*v183.i8, *v184.i8), vzip2_s32(*v183.i8, *v184.i8)));
  v185 = vsubq_f32(v194, v199);
  v186 = vmulq_f32(v198, v185);
  v187 = vmulq_f32(v197, v185);
  *&v206[32] = 0;
  memset(v206, 0, 28);
  v200[0] = v181.i64[0];
  v200[1] = v184.i64[0];
  v200[2] = vadd_f32(vzip1_s32(*&vextq_s8(v186, v186, 8uLL), *&vextq_s8(v187, v187, 8uLL)), vadd_f32(vzip1_s32(*v186.i8, *v187.i8), vzip2_s32(*v186.i8, *v187.i8)));
  re::internal::clip2DTriangleWithPolygon(v200, v212, v211, v206);
  re::DynamicArray<re::Vector3<float>>::resize(a5, *&v206[16]);
  if (*&v206[16])
  {
    a1 = 0;
    while (1)
    {
      v29 = *(a5 + 16);
      if (v29 <= a1)
      {
        break;
      }

      *(*(a5 + 32) + 16 * a1) = vaddq_f32(vmulq_lane_f32(v197, *(*&v206[32] + 8 * a1), 1), vaddq_f32(v199, vmulq_n_f32(v198, COERCE_FLOAT(*(*&v206[32] + 8 * a1)))));
      if (*&v206[16] <= ++a1)
      {
        goto LABEL_113;
      }
    }

LABEL_126:
    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    v216 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    *&v201[12] = 1024;
    *&v201[14] = 789;
    v202 = 2048;
    v203 = a1;
    v204 = 2048;
    v205 = v29;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_113:
  if (*v206 && *&v206[32])
  {
    (*(**v206 + 40))();
  }

  if (v210 && v212)
  {
    (*(*v210 + 40))();
  }

  return *(a5 + 16) != 0;
}

float re::internal::computeAreaOfFaceInBox(unsigned int a1, unint64_t a2, float32x4_t *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v5.i32[3] = 0;
  v6 = vminnmq_f32(v5, xmmword_1E306D4A0);
  v7 = vmaxnmq_f32(v5, xmmword_1E306D4B0);
  v6.i32[3] = 0;
  v8 = *(a2 + 16);
  v8.i32[3] = 0;
  v9 = vminnmq_f32(v6, v8);
  v7.i32[3] = 0;
  v10 = vmaxnmq_f32(v7, v8);
  v11 = a2 + 32;
  v9.i32[3] = 0;
  v12 = *(a2 + 32);
  v12.i32[3] = 0;
  v13 = vminnmq_f32(v9, v12);
  v10.i32[3] = 0;
  v14 = vmaxnmq_f32(v10, v12);
  v15 = *a3;
  v16 = vcgtq_f32(*a3, v13);
  v16.i32[3] = v16.i32[2];
  if ((vmaxvq_u32(v16) & 0x80000000) != 0 || (v17 = a3[1], v18 = vcgtq_f32(v13, v17), v18.i32[3] = v18.i32[2], (vmaxvq_u32(v18) & 0x80000000) != 0) || (v19 = vcgtq_f32(v15, v14), v19.i32[3] = v19.i32[2], (vmaxvq_u32(v19) & 0x80000000) != 0) || (v20 = vcgtq_f32(v14, v17), v20.i32[3] = v20.i32[2], (vmaxvq_u32(v20) & 0x80000000) != 0))
  {
    v27 = vcgtq_f32(v15, v14);
    v27.i32[3] = v27.i32[2];
    v26 = 0.0;
    if ((vmaxvq_u32(v27) & 0x80000000) == 0)
    {
      v28 = vcgtq_f32(v13, a3[1]);
      v28.i32[3] = v28.i32[2];
      if ((vmaxvq_u32(v28) & 0x80000000) == 0)
      {
        v45 = 0;
        v42[1] = 0;
        v43 = 0;
        v42[0] = 0;
        v44 = 0;
        if (a1 >= 3)
        {
          v29 = 0;
          v30 = a1 - 2;
          do
          {
            v31 = (v11 + 16 * v29++);
            re::internal::triangleIntersectsAABB(a2, (a2 + 16 * v29), v31, a3, v42);
            v32 = v43;
            if (v43 >= 3)
            {
              v33 = 3;
              v34 = 2;
              do
              {
                v35 = v33 - 2;
                if (v43 <= v35)
                {
                  v46 = 0;
                  v58 = 0u;
                  v59 = 0u;
                  v56 = 0u;
                  v57 = 0u;
                  v55 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v47 = 136315906;
                  v48 = "operator[]";
                  v49 = 1024;
                  v50 = 789;
                  v51 = 2048;
                  v52 = v35;
                  v53 = 2048;
                  v54 = v32;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                }

                v36 = vsubq_f32(v45[v35], *v45);
                v37 = vsubq_f32(v45[v34], *v45);
                v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(v36)), v37, vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL));
                v39 = vmulq_f32(v38, v38);
                v26 = v26 + (sqrtf(v39.f32[1] + (v39.f32[2] + v39.f32[0])) * 0.5);
                v34 = v33;
              }

              while (v43 > v33++);
            }
          }

          while (v29 != v30);
          if (v42[0] && v45)
          {
            (*(*v42[0] + 40))();
          }
        }
      }
    }
  }

  else
  {
    v21 = *a2;
    if (a1 == 4)
    {
      v21 = *(a2 + 48);
    }

    v22 = vsubq_f32(*(a2 + 32), *a2);
    v23 = vsubq_f32(*(a2 + 16), v21);
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vnegq_f32(v23)), v22, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
    v25 = vmulq_f32(v24, v24);
    return sqrtf(v25.f32[1] + (v25.f32[2] + v25.f32[0])) * 0.5;
  }

  return v26;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  k = v9;
  while (1)
  {
    v9 = k;
    v12 = a2 - k;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v116 = *a3;
          v117 = *(a3 + 8);

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(k, k + 1, a2 - 1, v116, v117);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(k, k + 1, k + 2, a2 - 1, a3);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(k, k + 1, k + 2, k + 3, a2 - 1, a3);
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v118 = *(a2 - 1);
        v119 = *k;
        v120 = *(a3 + 8);
        v121 = (*a3 + 8 * v118);
        v122 = *v121;
        v123 = *v120;
        v124 = (*a3 + 8 * *k);
        v125 = *v124;
        if (*v121 == *v120 && v125 == v123)
        {
          v122 = v121[1];
          v125 = v124[1];
        }

        else
        {
          if (v122 == v123 || v125 == v123)
          {
            if (v122 == v123)
            {
              return result;
            }

            goto LABEL_560;
          }

          v263 = v121[1];
          v264 = v124[1];
          if (v263 < v264)
          {
LABEL_560:
            *k = v118;
            *(a2 - 1) = v119;
            return result;
          }

          if (v263 != v264)
          {
            return result;
          }

          if (v263 <= v120[1])
          {
            if (v122 >= v125)
            {
              return result;
            }

            goto LABEL_560;
          }
        }

        if (v122 <= v125)
        {
          return result;
        }

        goto LABEL_560;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (k == a2)
      {
        return result;
      }

      v154 = (v12 - 2) >> 1;
      v155 = *a3;
      v156 = *(a3 + 8);
      v157 = v154;
      while (1)
      {
        v158 = v157;
        if (v154 < v157)
        {
          goto LABEL_434;
        }

        v159 = (2 * v157) | 1;
        v160 = &k[v159];
        if (2 * v158 + 2 >= v12)
        {
          v163 = *v156;
        }

        else
        {
          v161 = (v155 + 8 * *v160);
          v162 = *v161;
          v163 = *v156;
          v164 = (v155 + 8 * v160[1]);
          v165 = *v164;
          if (*v161 == *v156 && v165 == v163)
          {
            v162 = v161[1];
            v165 = v164[1];
            goto LABEL_368;
          }

          if (v162 != v163 && v165 != v163)
          {
            v168 = v161[1];
            v169 = v164[1];
            if (v168 >= v169)
            {
              if (v168 != v169)
              {
                goto LABEL_372;
              }

              if (v168 > v156[1])
              {
LABEL_368:
                if (v162 <= v165)
                {
                  goto LABEL_372;
                }
              }

              else if (v162 >= v165)
              {
                goto LABEL_372;
              }
            }

LABEL_371:
            ++v160;
            v159 = 2 * v158 + 2;
            goto LABEL_372;
          }

          if (v162 != v163)
          {
            goto LABEL_371;
          }
        }

LABEL_372:
        v170 = k[v158];
        v171 = (v155 + 8 * *v160);
        v172 = *v171;
        v173 = (v155 + 8 * v170);
        v174 = *v173;
        if (*v171 == v163 && v174 == v163)
        {
          if (v171[1] > v173[1])
          {
            goto LABEL_434;
          }
        }

        else if (v172 == v163 || v174 == v163)
        {
          if (v172 != v163)
          {
            goto LABEL_434;
          }
        }

        else
        {
          v196 = v171[1];
          v197 = v173[1];
          if (v196 < v197)
          {
            goto LABEL_434;
          }

          if (v196 == v197)
          {
            if (v196 <= v156[1])
            {
              if (v172 < v174)
              {
                goto LABEL_434;
              }
            }

            else if (v172 > v174)
            {
              goto LABEL_434;
            }
          }
        }

        k[v158] = *v160;
        while (1)
        {
          if (v154 < v159)
          {
            goto LABEL_433;
          }

          v177 = v160;
          v178 = 2 * v159;
          v159 = (2 * v159) | 1;
          v160 = &k[v159];
          v179 = v178 + 2;
          v180 = *v156;
          if (v179 >= v12)
          {
            goto LABEL_403;
          }

          v181 = (v155 + 8 * *v160);
          v182 = *v181;
          v183 = (v155 + 8 * v160[1]);
          v184 = *v183;
          if (*v181 == v180 && v184 == v180)
          {
            v182 = v181[1];
            v184 = v183[1];
LABEL_399:
            if (v182 > v184)
            {
              goto LABEL_402;
            }

            goto LABEL_403;
          }

          if (v182 == v180 || v184 == v180)
          {
            if (v182 == v180)
            {
              goto LABEL_403;
            }

LABEL_402:
            ++v160;
            v159 = v179;
            goto LABEL_403;
          }

          v187 = v181[1];
          v188 = v183[1];
          if (v187 < v188)
          {
            goto LABEL_402;
          }

          if (v187 == v188)
          {
            if (v187 > v156[1])
            {
              goto LABEL_399;
            }

            if (v182 < v184)
            {
              goto LABEL_402;
            }
          }

LABEL_403:
          v189 = (v155 + 8 * *v160);
          v190 = *v189;
          v191 = *v173;
          if (*v189 == v180 && v191 == v180)
          {
            if (v189[1] > v173[1])
            {
              goto LABEL_432;
            }

            goto LABEL_415;
          }

          if (v190 == v180 || v191 == v180)
          {
            if (v190 != v180)
            {
              goto LABEL_432;
            }

            goto LABEL_415;
          }

          v194 = v189[1];
          v195 = v173[1];
          if (v194 < v195)
          {
            goto LABEL_432;
          }

          if (v194 == v195)
          {
            break;
          }

LABEL_415:
          *v177 = *v160;
        }

        if (v194 > v156[1])
        {
          if (v190 > v191)
          {
            goto LABEL_432;
          }

          goto LABEL_415;
        }

        if (v190 >= v191)
        {
          goto LABEL_415;
        }

LABEL_432:
        v160 = v177;
LABEL_433:
        *v160 = v170;
LABEL_434:
        v157 = v158 - 1;
        if (!v158)
        {
LABEL_466:
          v209 = 0;
          v210 = *k;
          v211 = *a3;
          v212 = *(a3 + 8);
          v200 = k;
          while (1)
          {
            v213 = v200;
            v214 = &v200[v209];
            v200 = v214 + 1;
            v215 = 2 * v209;
            result = (2 * v209) | 1;
            v209 = result;
            v216 = v215 + 2;
            if (v216 < v12)
            {
              v218 = v214[2];
              v217 = v214 + 2;
              result = v211 + 8 * *(v217 - 1);
              v219 = *result;
              v220 = *v212;
              v221 = (v211 + 8 * v218);
              v222 = *v221;
              if (*result == *v212 && v222 == v220)
              {
                v219 = *(result + 4);
                v222 = v221[1];
                goto LABEL_480;
              }

              if (v219 != v220 && v222 != v220)
              {
                v225 = *(result + 4);
                v226 = v221[1];
                if (v225 >= v226)
                {
                  if (v225 != v226)
                  {
                    goto LABEL_484;
                  }

                  if (v225 > v212[1])
                  {
LABEL_480:
                    if (v219 <= v222)
                    {
                      goto LABEL_484;
                    }
                  }

                  else if (v219 >= v222)
                  {
                    goto LABEL_484;
                  }
                }

LABEL_483:
                v200 = v217;
                v209 = v216;
                goto LABEL_484;
              }

              if (v219 != v220)
              {
                goto LABEL_483;
              }
            }

LABEL_484:
            *v213 = *v200;
            if (v209 > ((v12 - 2) >> 1))
            {
              if (v200 == --a2)
              {
                goto LABEL_509;
              }

              *v200 = *a2;
              *a2 = v210;
              v227 = (v200 - k + 8) >> 3;
              v228 = v227 - 2;
              if (v227 < 2)
              {
                goto LABEL_510;
              }

              v199 = v228 >> 1;
              v206 = &k[v228 >> 1];
              v210 = *v200;
              result = v211 + 8 * *v206;
              v229 = *result;
              v230 = *v212;
              v231 = (v211 + 8 * *v200);
              v232 = *v231;
              if (*result == *v212 && v232 == v230)
              {
                v229 = *(result + 4);
                v232 = v231[1];
                goto LABEL_504;
              }

              if (v229 == v230 || v232 == v230)
              {
                if (v229 == v230)
                {
                  goto LABEL_510;
                }

LABEL_507:
                *v200 = *v206;
                if (v228 < 2)
                {
LABEL_508:
                  v200 = v206;
LABEL_509:
                  *v200 = v210;
                  goto LABEL_510;
                }

                while (2)
                {
                  v198 = v199 - 1;
                  v199 = (v199 - 1) >> 1;
                  v200 = &k[v199];
                  result = v211 + 8 * *v200;
                  v201 = *result;
                  v202 = *v212;
                  v203 = *v231;
                  if (*result != *v212 || v203 != v202)
                  {
                    if (v201 == v202 || v203 == v202)
                    {
                      if (v201 == v202)
                      {
                        goto LABEL_508;
                      }
                    }

                    else
                    {
                      v207 = *(result + 4);
                      v208 = v231[1];
                      if (v207 >= v208)
                      {
                        if (v207 != v208)
                        {
                          goto LABEL_508;
                        }

                        if (v207 <= v212[1])
                        {
                          if (v201 >= v203)
                          {
                            goto LABEL_508;
                          }

                          goto LABEL_455;
                        }

LABEL_454:
                        if (v201 <= v203)
                        {
                          goto LABEL_508;
                        }
                      }
                    }

LABEL_455:
                    *v206 = *v200;
                    v206 = &k[v199];
                    if (v198 <= 1)
                    {
                      goto LABEL_509;
                    }

                    continue;
                  }

                  break;
                }

                v201 = *(result + 4);
                v203 = v231[1];
                goto LABEL_454;
              }

              v235 = *(result + 4);
              v236 = v231[1];
              if (v235 < v236)
              {
                goto LABEL_507;
              }

              if (v235 == v236)
              {
                if (v235 <= v212[1])
                {
                  if (v229 < v232)
                  {
                    goto LABEL_507;
                  }

                  goto LABEL_510;
                }

LABEL_504:
                if (v229 > v232)
                {
                  goto LABEL_507;
                }
              }

LABEL_510:
              if (v12-- <= 2)
              {
                return result;
              }

              goto LABEL_466;
            }
          }
        }
      }
    }

    v13 = v12 >> 1;
    v14 = &k[v12 >> 1];
    v15 = *a3;
    v16 = *(a3 + 8);
    if (v12 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(&v9[v12 >> 1], v9, a2 - 1, v15, v16);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(v9, &v9[v12 >> 1], a2 - 1, v15, v16);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(v9 + 1, v14 - 1, a2 - 2, *a3, *(a3 + 8));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(v9 + 2, &v9[v13 + 1], a2 - 3, *a3, *(a3 + 8));
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(v14 - 1, v14, &v9[v13 + 1], *a3, *(a3 + 8));
      v17 = *v9;
      *v9 = *v14;
      *v14 = v17;
    }

    --a4;
    v18 = *v9;
    v19 = *a3;
    v20 = *(a3 + 8);
    v21 = *v20;
    v22 = (*a3 + 8 * *v9);
    if (a5)
    {
      v23 = *(v19 + 8 * v18);
LABEL_46:
      for (i = 0; ; ++i)
      {
        v36 = v9[i + 1];
        v37 = (v19 + 8 * v36);
        v38 = *v37;
        if (*v37 == v21 && v23 == v21)
        {
          if (v37[1] <= v22[1])
          {
            goto LABEL_67;
          }

          continue;
        }

        if (v38 == v21 || v23 == v21)
        {
          if (v38 == v21)
          {
            goto LABEL_67;
          }

          continue;
        }

        v41 = v37[1];
        v42 = v22[1];
        if (v41 < v42)
        {
          continue;
        }

        if (v41 != v42)
        {
          goto LABEL_67;
        }

        if (v41 <= v20[1])
        {
          break;
        }

        if (v38 <= v23)
        {
          goto LABEL_67;
        }

LABEL_66:
        ;
      }

      if (v38 < v23)
      {
        goto LABEL_66;
      }

LABEL_67:
      v43 = &v9[i];
      v44 = &v9[i + 1];
      j = a2 - 1;
      if (i * 8)
      {
        while (1)
        {
          v46 = (v19 + 8 * *j);
          v47 = *v46;
          if (*v46 == v21 && v23 == v21)
          {
            if (v46[1] > v22[1])
            {
              goto LABEL_115;
            }
          }

          else if (v47 == v21 || v23 == v21)
          {
            if (v47 != v21)
            {
              goto LABEL_115;
            }
          }

          else
          {
            v50 = v46[1];
            v51 = v22[1];
            if (v50 < v51)
            {
              goto LABEL_115;
            }

            if (v50 == v51)
            {
              if (v50 <= v20[1])
              {
                if (v47 < v23)
                {
                  goto LABEL_115;
                }
              }

              else if (v47 > v23)
              {
                goto LABEL_115;
              }
            }
          }

          --j;
        }
      }

      j = a2;
      if (v44 < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          v52 = (v19 + 8 * *j);
          v53 = *v52;
          if (*v52 == v21 && v23 == v21)
          {
            if (v44 >= j || v52[1] > v22[1])
            {
              break;
            }
          }

          else if (v53 == v21 || v23 == v21)
          {
            if (v44 >= j || v53 != v21)
            {
              break;
            }
          }

          else
          {
            v56 = v52[1];
            v57 = v22[1];
            if (v56 < v57)
            {
              break;
            }

            if (v56 == v57)
            {
              if (v56 <= v20[1])
              {
                if (v44 >= j || v53 < v23)
                {
                  break;
                }
              }

              else if (v44 >= j || v53 > v23)
              {
                break;
              }
            }

            else if (v44 >= j)
            {
              break;
            }
          }
        }
      }

LABEL_115:
      if (v44 >= j)
      {
        goto LABEL_158;
      }

      v58 = *j;
      v59 = v44;
      v60 = j;
      while (2)
      {
        *v59++ = v58;
        *v60 = v36;
        v61 = *v20;
        v62 = *v22;
        while (2)
        {
          v36 = *v59;
          v63 = (v19 + 8 * *v59);
          v64 = *v63;
          if (*v63 == v61 && v62 == v61)
          {
            if (v63[1] <= v22[1])
            {
              goto LABEL_146;
            }

            goto LABEL_137;
          }

          if (v64 == v61 || v62 == v61)
          {
            if (v64 == v61)
            {
              goto LABEL_146;
            }

            goto LABEL_137;
          }

          v67 = v63[1];
          v68 = v22[1];
          if (v67 < v68)
          {
            goto LABEL_137;
          }

          if (v67 != v68)
          {
            goto LABEL_146;
          }

          if (v67 <= v20[1])
          {
            if (v64 >= v62)
            {
              goto LABEL_146;
            }

LABEL_137:
            ++v59;
            continue;
          }

          break;
        }

        if (v64 > v62)
        {
          goto LABEL_137;
        }

        do
        {
          while (1)
          {
LABEL_146:
            while (1)
            {
              v71 = *--v60;
              v58 = v71;
              v72 = (v19 + 8 * v71);
              v73 = *v72;
              if (*v72 != v61 || v62 != v61)
              {
                break;
              }

              if (v72[1] > v22[1])
              {
                goto LABEL_156;
              }
            }

            if (v73 == v61 || v62 == v61)
            {
              break;
            }

            v69 = v72[1];
            v70 = v22[1];
            if (v69 < v70)
            {
              goto LABEL_156;
            }

            if (v69 == v70)
            {
              if (v69 <= v20[1])
              {
                if (v73 < v62)
                {
                  goto LABEL_156;
                }
              }

              else if (v73 > v62)
              {
                goto LABEL_156;
              }
            }
          }
        }

        while (v73 == v61);
LABEL_156:
        if (v59 < v60)
        {
          continue;
        }

        break;
      }

      v43 = v59 - 1;
LABEL_158:
      if (v43 != v9)
      {
        *v9 = *v43;
      }

      *v43 = v18;
      if (v44 < j)
      {
LABEL_163:
        result = std::__introsort<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,false>(v9, v43, a3, a4, a5 & 1);
        a5 = 0;
        k = v43 + 1;
      }

      else
      {
        v76 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *>(v9, v43, a3);
        k = v43 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *>(v43 + 1, a2, a3);
        if (result)
        {
          a2 = v43;
          if (v76)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v76)
        {
          goto LABEL_163;
        }
      }
    }

    else
    {
      v24 = (v19 + 8 * *(v9 - 1));
      v25 = *v24;
      v23 = *v22;
      if (*v24 == v21 && v23 == v21)
      {
        if (v24[1] > v22[1])
        {
          goto LABEL_46;
        }
      }

      else if (v25 == v21 || v23 == v21)
      {
        if (v25 != v21)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v33 = v24[1];
        v34 = v22[1];
        if (v33 < v34)
        {
          goto LABEL_46;
        }

        if (v33 == v34)
        {
          if (v33 <= v20[1])
          {
            if (v25 < v23)
            {
              goto LABEL_46;
            }
          }

          else if (v25 > v23)
          {
            goto LABEL_46;
          }
        }
      }

      v28 = *v10;
      v29 = (v19 + 8 * *v10);
      v30 = *v29;
      if (v23 == v21 && v30 == v21)
      {
        if (v22[1] > v29[1])
        {
          goto LABEL_188;
        }
      }

      else if (v23 == v21 || v30 == v21)
      {
        if (v23 != v21)
        {
          goto LABEL_188;
        }
      }

      else
      {
        v83 = v22[1];
        v84 = v29[1];
        if (v83 < v84)
        {
          goto LABEL_188;
        }

        if (v83 == v84)
        {
          if (v83 <= v20[1])
          {
            if (v23 < v30)
            {
LABEL_188:
              for (k = v9 + 1; ; ++k)
              {
                v85 = (v19 + 8 * *k);
                v86 = *v85;
                if (v23 == v21 && v86 == v21)
                {
                  if (v22[1] > v85[1])
                  {
                    goto LABEL_208;
                  }
                }

                else if (v23 == v21 || v86 == v21)
                {
                  if (v23 != v21)
                  {
                    goto LABEL_208;
                  }
                }

                else
                {
                  v89 = v22[1];
                  v90 = v85[1];
                  if (v89 < v90)
                  {
                    goto LABEL_208;
                  }

                  if (v89 == v90)
                  {
                    if (v89 <= v20[1])
                    {
                      if (v23 < v86)
                      {
                        goto LABEL_208;
                      }
                    }

                    else if (v23 > v86)
                    {
                      goto LABEL_208;
                    }
                  }
                }
              }
            }
          }

          else if (v23 > v30)
          {
            goto LABEL_188;
          }
        }
      }

      for (k = v9 + 1; k < a2; ++k)
      {
        v77 = (v19 + 8 * *k);
        v78 = *v77;
        if (v23 == v21 && v78 == v21)
        {
          if (v22[1] > v77[1])
          {
            break;
          }
        }

        else if (v23 == v21 || v78 == v21)
        {
          if (v23 != v21)
          {
            break;
          }
        }

        else
        {
          v81 = v22[1];
          v82 = v77[1];
          if (v81 < v82)
          {
            break;
          }

          if (v81 == v82)
          {
            if (v81 <= v20[1])
            {
              if (v23 < v78)
              {
                break;
              }
            }

            else if (v23 > v78)
            {
              break;
            }
          }
        }
      }

LABEL_208:
      m = a2;
      if (k < a2)
      {
        for (m = a2 - 1; ; --m)
        {
          v92 = v19 + 8 * v28;
          if (v23 == v21 && v30 == v21)
          {
            if (v22[1] <= *(v92 + 4))
            {
              break;
            }
          }

          else if (v23 == v21 || v30 == v21)
          {
            if (v23 == v21)
            {
              break;
            }
          }

          else
          {
            v95 = v22[1];
            v96 = *(v92 + 4);
            if (v95 >= v96)
            {
              if (v95 != v96)
              {
                break;
              }

              if (v95 <= v20[1])
              {
                if (v23 >= v30)
                {
                  break;
                }
              }

              else if (v23 <= v30)
              {
                break;
              }
            }
          }

          v97 = *(m - 1);
          v28 = v97;
          v30 = *(v19 + 8 * v97);
        }
      }

      if (k >= m)
      {
        goto LABEL_272;
      }

      v98 = *k;
      v99 = *m;
      do
      {
        *k++ = v99;
        *m = v98;
        v100 = *v22;
        v101 = *v20;
        while (1)
        {
          v98 = *k;
          v102 = (v19 + 8 * *k);
          v103 = *v102;
          if (v100 == v101 && v103 == v101)
          {
            if (v22[1] > v102[1])
            {
              goto LABEL_252;
            }

            goto LABEL_245;
          }

          if (v100 != v101 && v103 != v101)
          {
            break;
          }

          if (v100 != v101)
          {
            goto LABEL_252;
          }

LABEL_245:
          ++k;
        }

        v106 = v22[1];
        v107 = v102[1];
        if (v106 < v107)
        {
          goto LABEL_252;
        }

        if (v106 != v107)
        {
          goto LABEL_245;
        }

        if (v106 <= v20[1])
        {
          if (v100 < v103)
          {
            goto LABEL_252;
          }

          goto LABEL_245;
        }

        if (v100 <= v103)
        {
          goto LABEL_245;
        }

        while (1)
        {
          do
          {
            while (1)
            {
LABEL_252:
              while (1)
              {
                v108 = *--m;
                v99 = v108;
                v109 = (v19 + 8 * v108);
                v110 = *v109;
                if (v100 != v101 || v110 != v101)
                {
                  break;
                }

                if (v22[1] <= v109[1])
                {
                  goto LABEL_271;
                }
              }

              if (v100 != v101 && v110 != v101)
              {
                break;
              }

              if (v100 == v101)
              {
                goto LABEL_271;
              }
            }

            v113 = v22[1];
            v114 = v109[1];
          }

          while (v113 < v114);
          if (v113 != v114)
          {
            break;
          }

          if (v113 <= v20[1])
          {
            if (v100 >= v110)
            {
              break;
            }
          }

          else if (v100 <= v110)
          {
            break;
          }
        }

LABEL_271:
        ;
      }

      while (k < m);
LABEL_272:
      v115 = k - 1;
      if (k - 1 != v9)
      {
        *v9 = *v115;
      }

      a5 = 0;
      *v115 = v18;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (k == a2)
    {
      return result;
    }

    v238 = k + 1;
    if (k + 1 == a2)
    {
      return result;
    }

    v239 = *a3;
    v240 = *(a3 + 8);
    while (1)
    {
      v241 = v9;
      v9 = v238;
      v243 = *v241;
      v242 = v241[1];
      v244 = (v239 + 8 * v242);
      v245 = *v244;
      v246 = *v240;
      v247 = (v239 + 8 * *v241);
      v248 = *v247;
      if (*v244 == *v240 && v248 == v246)
      {
        break;
      }

      if (v245 == v246 || v248 == v246)
      {
        if (v245 == v246)
        {
          goto LABEL_553;
        }

LABEL_534:
        while (2)
        {
          while (1)
          {
            v253 = v241;
            v254 = *--v241;
            v241[2] = v243;
            v243 = v254;
            v255 = *v244;
            v256 = *v240;
            v257 = (v239 + 8 * v254);
            v258 = *v257;
            if (*v244 == *v240 && v258 == v256)
            {
              break;
            }

            if (v255 == v256 || v258 == v256)
            {
              if (v255 == v256)
              {
                goto LABEL_552;
              }

              continue;
            }

            v261 = v244[1];
            v262 = v257[1];
            if (v261 < v262)
            {
              continue;
            }

            if (v261 != v262)
            {
              goto LABEL_552;
            }

            if (v261 > v240[1])
            {
              goto LABEL_546;
            }

            if (v255 >= v258)
            {
LABEL_552:
              *v253 = v242;
              goto LABEL_553;
            }
          }

          v255 = v244[1];
          v258 = v257[1];
LABEL_546:
          if (v255 <= v258)
          {
            goto LABEL_552;
          }

          continue;
        }
      }

      v251 = v244[1];
      v252 = v247[1];
      if (v251 < v252)
      {
        goto LABEL_534;
      }

      if (v251 == v252)
      {
        if (v251 > v240[1])
        {
          goto LABEL_531;
        }

        if (v245 < v248)
        {
          goto LABEL_534;
        }
      }

LABEL_553:
      v238 = v9 + 1;
      if (v9 + 1 == a2)
      {
        return result;
      }
    }

    v245 = v244[1];
    v248 = v247[1];
LABEL_531:
    if (v245 > v248)
    {
      goto LABEL_534;
    }

    goto LABEL_553;
  }

  if (k == a2)
  {
    return result;
  }

  v128 = k + 1;
  if (k + 1 == a2)
  {
    return result;
  }

  v129 = 0;
  v130 = *a3;
  v131 = *(a3 + 8);
  v132 = k;
  while (2)
  {
    v133 = v132;
    v132 = v128;
    v134 = v133[1];
    v135 = (v130 + 8 * v134);
    v136 = *v135;
    v137 = *v131;
    v138 = (v130 + 8 * *v133);
    v139 = *v138;
    if (*v135 == *v131 && v139 == v137)
    {
      v136 = v135[1];
      v139 = v138[1];
LABEL_319:
      if (v136 <= v139)
      {
        goto LABEL_349;
      }

      goto LABEL_322;
    }

    if (v136 == v137 || v139 == v137)
    {
      if (v136 == v137)
      {
        goto LABEL_349;
      }

      goto LABEL_322;
    }

    v142 = v135[1];
    v143 = v138[1];
    if (v142 < v143)
    {
      goto LABEL_322;
    }

    if (v142 != v143)
    {
      goto LABEL_349;
    }

    if (v142 > v131[1])
    {
      goto LABEL_319;
    }

    if (v136 >= v139)
    {
      goto LABEL_349;
    }

LABEL_322:
    v133[1] = *v133;
    v144 = k;
    if (v133 == k)
    {
      goto LABEL_348;
    }

    v145 = v129;
    while (2)
    {
      v146 = *(k + v145 - 8);
      v147 = *v135;
      v148 = *v131;
      result = v130 + 8 * v146;
      v149 = *result;
      if (*v135 == *v131 && v149 == v148)
      {
        v147 = v135[1];
        v149 = *(result + 4);
        goto LABEL_336;
      }

      if (v147 == v148 || v149 == v148)
      {
        if (v147 == v148)
        {
          v144 = (k + v145);
          goto LABEL_348;
        }

LABEL_337:
        --v133;
        *(k + v145) = v146;
        v145 -= 8;
        if (!v145)
        {
          v144 = k;
          goto LABEL_348;
        }

        continue;
      }

      break;
    }

    v152 = v135[1];
    v153 = *(result + 4);
    if (v152 < v153)
    {
      goto LABEL_337;
    }

    if (v152 != v153)
    {
      goto LABEL_343;
    }

    if (v152 > v131[1])
    {
LABEL_336:
      if (v147 <= v149)
      {
        goto LABEL_343;
      }

      goto LABEL_337;
    }

    if (v147 < v149)
    {
      goto LABEL_337;
    }

LABEL_343:
    v144 = v133;
LABEL_348:
    *v144 = v134;
LABEL_349:
    v128 = v132 + 1;
    v129 += 8;
    if (v132 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4, float *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = (a4 + 8 * *a2);
  v8 = *v7;
  v9 = *a5;
  v10 = (a4 + 8 * *result);
  v11 = *v10;
  if (*v7 == *a5 && v11 == v9)
  {
    v17 = v7[1];
    if (v17 > v10[1])
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (v8 == v9 || v11 == v9)
  {
    if (v8 != v9)
    {
      v14 = *a3;
      v15 = *(a4 + 8 * *a3);
      v16 = v15 == v9;
      goto LABEL_29;
    }

    goto LABEL_13;
  }

  v17 = v7[1];
  v22 = v10[1];
  if (v17 < v22)
  {
    goto LABEL_25;
  }

  if (v17 != v22)
  {
LABEL_13:
    v18 = (a4 + 8 * *a3);
    v19 = *v18;
    if (v8 == v9 && v19 == v9)
    {
      if (v18[1] <= v7[1])
      {
        return result;
      }
    }

    else if (v8 == v9 || v19 == v9)
    {
      if (v19 == v9)
      {
        return result;
      }
    }

    else
    {
      v33 = v18[1];
      v34 = v7[1];
      if (v33 >= v34)
      {
        if (v33 != v34)
        {
          return result;
        }

        if (v33 <= a5[1])
        {
          if (v19 >= v8)
          {
            return result;
          }
        }

        else if (v19 <= v8)
        {
          return result;
        }
      }
    }

    *a2 = *a3;
    *a3 = v5;
    v35 = *result;
    v36 = (a4 + 8 * *a2);
    v37 = *v36;
    v38 = *a5;
    v39 = (a4 + 8 * *result);
    v40 = *v39;
    if (*v36 == *a5 && v40 == v38)
    {
      v37 = v36[1];
      v40 = v39[1];
    }

    else
    {
      if (v37 == v38 || v40 == v38)
      {
        if (v37 == v38)
        {
          return result;
        }

        goto LABEL_75;
      }

      v43 = v36[1];
      v44 = v39[1];
      if (v43 < v44)
      {
        goto LABEL_75;
      }

      if (v43 != v44)
      {
        return result;
      }

      if (v43 <= a5[1])
      {
        if (v37 >= v40)
        {
          return result;
        }

LABEL_75:
        *result = *a2;
        *a2 = v35;
        return result;
      }
    }

    if (v37 <= v40)
    {
      return result;
    }

    goto LABEL_75;
  }

  if (v17 > a5[1])
  {
    if (v8 > v11)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (v8 >= v11)
  {
    goto LABEL_13;
  }

LABEL_25:
  v14 = *a3;
  v23 = (a4 + 8 * *a3);
  v15 = *v23;
  v16 = *v23 == v9;
  if (v8 == v9 && v15 == v9)
  {
    if (v23[1] <= v17)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_29:
  if (v8 == v9 || v16)
  {
    if (v16)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v25 = *(a4 + 8 * v14 + 4);
  v26 = v7[1];
  if (v25 < v26)
  {
    goto LABEL_39;
  }

  if (v25 != v26)
  {
    goto LABEL_41;
  }

  if (v25 > a5[1])
  {
    if (v15 <= v8)
    {
      goto LABEL_41;
    }

LABEL_39:
    *result = v14;
LABEL_82:
    *a3 = v6;
    return result;
  }

  if (v15 < v8)
  {
    goto LABEL_39;
  }

LABEL_41:
  *result = v5;
  *a2 = v6;
  v27 = (a4 + 8 * *a3);
  v28 = *v27;
  v29 = *a5;
  v30 = *v10;
  if (*v27 == *a5 && v30 == v29)
  {
    v28 = v27[1];
    v30 = v10[1];
LABEL_72:
    if (v28 > v30)
    {
      goto LABEL_81;
    }

    return result;
  }

  if (v28 == v29 || v30 == v29)
  {
    if (v28 != v29)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v45 = v27[1];
    v46 = v10[1];
    if (v45 < v46)
    {
LABEL_81:
      *a2 = *a3;
      goto LABEL_82;
    }

    if (v45 == v46)
    {
      if (v45 <= a5[1])
      {
        if (v28 < v30)
        {
          goto LABEL_81;
        }

        return result;
      }

      goto LABEL_72;
    }
  }

  return result;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a2, a3, *a5, *(a5 + 8));
  v11 = *a3;
  v13 = *a5;
  v12 = *(a5 + 8);
  v14 = (*a5 + 8 * *a4);
  v15 = *v14;
  v16 = *v12;
  v17 = (*a5 + 8 * *a3);
  v18 = *v17;
  if (*v14 == *v12 && v18 == v16)
  {
    v15 = v14[1];
    v18 = v17[1];
    goto LABEL_13;
  }

  if (v15 != v16 && v18 != v16)
  {
    v21 = v14[1];
    v22 = v17[1];
    if (v21 < v22)
    {
      goto LABEL_16;
    }

    if (v21 != v22)
    {
      return result;
    }

    if (v21 <= v12[1])
    {
      if (v15 >= v18)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_13:
    if (v15 <= v18)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v15 == v16)
  {
    return result;
  }

LABEL_16:
  *a3 = *a4;
  *a4 = v11;
  v23 = *a2;
  v24 = (v13 + 8 * *a3);
  v25 = *v24;
  v26 = *v12;
  v27 = (v13 + 8 * *a2);
  v28 = *v27;
  if (*v24 == *v12 && v28 == v26)
  {
    v25 = v24[1];
    v28 = v27[1];
LABEL_28:
    if (v25 <= v28)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v25 == v26 || v28 == v26)
  {
    if (v25 == v26)
    {
      return result;
    }

    goto LABEL_31;
  }

  v31 = v24[1];
  v32 = v27[1];
  if (v31 >= v32)
  {
    if (v31 != v32)
    {
      return result;
    }

    if (v31 <= v12[1])
    {
      if (v25 >= v28)
      {
        return result;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_31:
  *a2 = *a3;
  *a3 = v23;
  v33 = *a1;
  v34 = (v13 + 8 * *a2);
  v35 = *v34;
  v36 = *v12;
  v37 = (v13 + 8 * *a1);
  v38 = *v37;
  if (*v34 == *v12 && v38 == v36)
  {
    v35 = v34[1];
    v38 = v37[1];
    goto LABEL_43;
  }

  if (v35 == v36 || v38 == v36)
  {
    if (v35 == v36)
    {
      return result;
    }

    goto LABEL_50;
  }

  v41 = v34[1];
  v42 = v37[1];
  if (v41 < v42)
  {
LABEL_50:
    *a1 = *a2;
    *a2 = v33;
    return result;
  }

  if (v41 == v42)
  {
    if (v41 <= v12[1])
    {
      if (v35 >= v38)
      {
        return result;
      }

      goto LABEL_50;
    }

LABEL_43:
    if (v35 <= v38)
    {
      return result;
    }

    goto LABEL_50;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a2, a3, a4, a6);
  v13 = *a4;
  v15 = *a6;
  v14 = a6[1];
  v16 = (*a6 + 8 * *a5);
  v17 = *v16;
  v18 = *v14;
  v19 = (*a6 + 8 * *a4);
  v20 = *v19;
  if (*v16 == *v14 && v20 == v18)
  {
    v17 = v16[1];
    v20 = v19[1];
    goto LABEL_13;
  }

  if (v17 != v18 && v20 != v18)
  {
    v23 = v16[1];
    v24 = v19[1];
    if (v23 < v24)
    {
      goto LABEL_16;
    }

    if (v23 != v24)
    {
      return result;
    }

    if (v23 <= v14[1])
    {
      if (v17 >= v20)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_13:
    if (v17 <= v20)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v17 == v18)
  {
    return result;
  }

LABEL_16:
  *a4 = *a5;
  *a5 = v13;
  v25 = *a3;
  v26 = (v15 + 8 * *a4);
  v27 = *v26;
  v28 = *v14;
  v29 = (v15 + 8 * *a3);
  v30 = *v29;
  if (*v26 == *v14 && v30 == v28)
  {
    v27 = v26[1];
    v30 = v29[1];
    goto LABEL_28;
  }

  if (v27 != v28 && v30 != v28)
  {
    v33 = v26[1];
    v34 = v29[1];
    if (v33 < v34)
    {
      goto LABEL_31;
    }

    if (v33 != v34)
    {
      return result;
    }

    if (v33 <= v14[1])
    {
      if (v27 >= v30)
      {
        return result;
      }

      goto LABEL_31;
    }

LABEL_28:
    if (v27 <= v30)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v27 == v28)
  {
    return result;
  }

LABEL_31:
  *a3 = *a4;
  *a4 = v25;
  v35 = *a2;
  v36 = (v15 + 8 * *a3);
  v37 = *v36;
  v38 = *v14;
  v39 = (v15 + 8 * *a2);
  v40 = *v39;
  if (*v36 == *v14 && v40 == v38)
  {
    v37 = v36[1];
    v40 = v39[1];
LABEL_43:
    if (v37 <= v40)
    {
      return result;
    }

    goto LABEL_50;
  }

  if (v37 == v38 || v40 == v38)
  {
    if (v37 == v38)
    {
      return result;
    }

LABEL_50:
    *a2 = *a3;
    *a3 = v35;
    v45 = *a1;
    v46 = (v15 + 8 * *a2);
    v47 = *v46;
    v48 = *v14;
    v49 = (v15 + 8 * *a1);
    v50 = *v49;
    if (*v46 == *v14 && v50 == v48)
    {
      v47 = v46[1];
      v50 = v49[1];
    }

    else
    {
      if (v47 == v48 || v50 == v48)
      {
        if (v47 == v48)
        {
          return result;
        }

        goto LABEL_67;
      }

      v51 = v46[1];
      v52 = v49[1];
      if (v51 < v52)
      {
LABEL_67:
        *a1 = *a2;
        *a2 = v45;
        return result;
      }

      if (v51 != v52)
      {
        return result;
      }

      if (v51 <= v14[1])
      {
        if (v47 >= v50)
        {
          return result;
        }

        goto LABEL_67;
      }
    }

    if (v47 <= v50)
    {
      return result;
    }

    goto LABEL_67;
  }

  v43 = v36[1];
  v44 = v39[1];
  if (v43 < v44)
  {
    goto LABEL_50;
  }

  if (v43 == v44)
  {
    if (v43 <= v14[1])
    {
      if (v37 >= v40)
      {
        return result;
      }

      goto LABEL_50;
    }

    goto LABEL_43;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a1 + 1, a2 - 1, *a3, *(a3 + 8));
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = *(a3 + 8);
      v10 = (*a3 + 8 * v7);
      v11 = *v10;
      v12 = *v9;
      v13 = (*a3 + 8 * *a1);
      v14 = *v13;
      if (*v10 == *v9 && v14 == v12)
      {
        v11 = v10[1];
        v14 = v13[1];
      }

      else
      {
        if (v11 == v12 || v14 == v12)
        {
          if (v11 == v12)
          {
            return 1;
          }

          goto LABEL_70;
        }

        v43 = v10[1];
        v44 = v13[1];
        if (v43 < v44)
        {
LABEL_70:
          *a1 = v7;
          *(a2 - 1) = v8;
          return 1;
        }

        if (v43 != v44)
        {
          return 1;
        }

        if (v43 <= v9[1])
        {
          if (v11 < v14)
          {
            goto LABEL_70;
          }

          return 1;
        }
      }

      if (v11 > v14)
      {
        goto LABEL_70;
      }

      return 1;
    }
  }

  v17 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::computePlaneBoxIntersections(re::Vector3<float> const&,re::Vector3<float> const&,re::AABB const&,re::DynamicArray<re::Vector3<float>> &)::$_1 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, *a3, *(a3 + 8));
  v18 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v21 = *a3;
  v22 = *(a3 + 8);
  while (2)
  {
    v23 = *v18;
    v24 = (v21 + 8 * *v18);
    v25 = *v24;
    v26 = *v22;
    v27 = (v21 + 8 * *v17);
    v28 = *v27;
    if (*v24 == *v22 && v28 == v26)
    {
      v25 = v24[1];
      v28 = v27[1];
LABEL_34:
      if (v25 <= v28)
      {
        goto LABEL_59;
      }

      goto LABEL_37;
    }

    if (v25 == v26 || v28 == v26)
    {
      if (v25 == v26)
      {
        goto LABEL_59;
      }

      goto LABEL_37;
    }

    v31 = v24[1];
    v32 = v27[1];
    if (v31 >= v32)
    {
      if (v31 != v32)
      {
        goto LABEL_59;
      }

      if (v31 <= v22[1])
      {
        if (v25 >= v28)
        {
          goto LABEL_59;
        }

        goto LABEL_37;
      }

      goto LABEL_34;
    }

LABEL_37:
    *v18 = *v17;
    v33 = v19;
    while (1)
    {
      v34 = *(a1 + v33 + 8);
      v35 = *v24;
      v36 = *v22;
      v37 = (v21 + 8 * v34);
      v38 = *v37;
      if (*v24 == *v22 && v38 == v36)
      {
        v35 = v24[1];
        v38 = v37[1];
LABEL_50:
        if (v35 <= v38)
        {
          goto LABEL_58;
        }

        goto LABEL_51;
      }

      if (v35 == v36 || v38 == v36)
      {
        if (v35 == v36)
        {
          goto LABEL_58;
        }

        goto LABEL_51;
      }

      v41 = v24[1];
      v42 = v37[1];
      if (v41 >= v42)
      {
        break;
      }

LABEL_51:
      --v17;
      *(a1 + v33 + 16) = v34;
      v33 -= 8;
      if (v33 == -16)
      {
        v17 = a1;
        goto LABEL_58;
      }
    }

    if (v41 == v42)
    {
      if (v41 <= v22[1])
      {
        if (v35 >= v38)
        {
          goto LABEL_58;
        }

        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v17 = (a1 + v33 + 16);
LABEL_58:
    *v17 = v23;
    if (++v20 != 8)
    {
LABEL_59:
      v17 = v18;
      v19 += 8;
      if (++v18 == a2)
      {
        return 1;
      }

      continue;
    }

    return v18 + 1 == a2;
  }
}

uint64_t re::internal::mergeVertexPositions(re::internal *this, re::GeomMesh *a2)
{
  v82 = *MEMORY[0x1E69E9840];
  re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute((this + 16), "vertexUV");
  re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute((this + 16), "vertexNormal");
  re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute((this + 16), "vertexTangent");
  re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute((this + 16), "vertexBitangent");
  v55 = 1;
  v56 = 0;
  v58 = xmmword_1E30A0560;
  v59 = 0;
  re::computeAABB(this, &v62);
  v6 = vsubq_f32(v63, v62);
  v6.i32[3] = 0;
  v7 = vmaxnmq_f32(v6, 0);
  v8 = vmulq_f32(v7, v7);
  v57 = (sqrtf(v8.f32[2] + vaddv_f32(*v8.f32)) * 0.5) * 0.000001;
  v54 = 0;
  v51[1] = 0;
  v52 = 0;
  v51[0] = 0;
  v53 = 0;
  v9 = *(this + 4);
  v10 = re::mergeVertices(this, v51, &v55);
  v50 = 0;
  v47[1] = 0;
  v48 = 0;
  v47[0] = 0;
  v49 = 0;
  re::DynamicArray<re::Vector3<float>>::resize(v47, (v9 - v10));
  v46 = 0;
  v43[1] = 0;
  v44 = 0;
  v43[0] = 0;
  v45 = 0;
  re::DynamicArray<unsigned int>::resize(v43, *(this + 4), &re::kInvalidMeshIndex);
  v11 = re::GeomMesh::accessVertexPositions(this);
  v13 = *(this + 4);
  if (v13)
  {
    v14 = v12;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v2 = v52;
      if (v52 <= v15)
      {
        break;
      }

      v4 = *(v54 + 4 * v15);
      v2 = v44;
      if (v44 <= v4)
      {
        goto LABEL_61;
      }

      if (*(v46 + 4 * v4) == -1)
      {
        if (v4 >= v12)
        {
          goto LABEL_66;
        }

        v2 = v16;
        v3 = v48;
        if (v48 <= v16)
        {
LABEL_67:
          *v72 = 0;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v62 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v79[0] = 136315906;
          *&v79[1] = "operator[]";
          LOWORD(v79[3]) = 1024;
          *(&v79[3] + 2) = 789;
          HIWORD(v79[4]) = 2048;
          *&v79[5] = v2;
          LOWORD(v79[7]) = 2048;
          *(&v79[7] + 2) = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_68:
          *v72 = 0;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v62 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v79[0] = 136315906;
          *&v79[1] = "operator[]";
          LOWORD(v79[3]) = 1024;
          *(&v79[3] + 2) = 789;
          HIWORD(v79[4]) = 2048;
          *&v79[5] = v4;
          LOWORD(v79[7]) = 2048;
          *(&v79[7] + 2) = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(v50 + 16 * v16) = *(v11 + 16 * v4);
        v2 = v44;
        if (v44 <= v4)
        {
          goto LABEL_68;
        }

        *(v46 + 4 * v4) = v16++;
        v13 = *(this + 4);
      }

      if (++v15 >= v13)
      {
        goto LABEL_11;
      }
    }

LABEL_60:
    *v72 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v79[0] = 136315906;
    *&v79[1] = "operator[]";
    LOWORD(v79[3]) = 1024;
    *(&v79[3] + 2) = 789;
    HIWORD(v79[4]) = 2048;
    *&v79[5] = v15;
    LOWORD(v79[7]) = 2048;
    *(&v79[7] + 2) = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_61:
    *v72 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v79[0] = 136315906;
    *&v79[1] = "operator[]";
    LOWORD(v79[3]) = 1024;
    *(&v79[3] + 2) = 789;
    HIWORD(v79[4]) = 2048;
    *&v79[5] = v4;
    LOWORD(v79[7]) = 2048;
    *(&v79[7] + 2) = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_62;
  }

LABEL_11:
  v41 = v10;
  v42 = (v9 - v10);
  v17 = *(this + 10);
  v4 = &v62;
  re::GeomMeshBuilder::GeomMeshBuilder(&v62, this);
  if (!v17)
  {
    goto LABEL_37;
  }

  v10 = 0;
  v14 = v64;
  do
  {
    if (v14 <= v10)
    {
      goto LABEL_64;
    }

    v18 = 0;
    v19 = (v65 + 16 * v10);
    v61 = *v19;
    v2 = HIDWORD(v61);
    if (HIDWORD(v61) == -1)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    v3 = v52;
    v21 = v54;
    v15 = v44;
    v22 = v46;
    do
    {
      v23 = *(&v61 + v18);
      if (v3 <= v23)
      {
        v60 = 0;
        v80 = 0u;
        v81 = 0u;
        memset(v79, 0, sizeof(v79));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v72 = 136315906;
        *&v72[4] = "operator[]";
        v73 = 1024;
        v74 = 789;
        v75 = 2048;
        v76 = v23;
        v77 = 2048;
        v78 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_59:
        v60 = 0;
        v2 = v72;
        v80 = 0u;
        v81 = 0u;
        memset(v79, 0, sizeof(v79));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v72 = 136315906;
        *&v72[4] = "operator[]";
        v73 = 1024;
        v74 = 789;
        v75 = 2048;
        v76 = v23;
        v77 = 2048;
        v78 = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_60;
      }

      v23 = *(v21 + 4 * v23);
      if (v15 <= v23)
      {
        goto LABEL_59;
      }

      *(&v61 + v18++) = *(v22 + 4 * v23);
    }

    while (v20 != v18);
    if (*v19 != -1)
    {
      v24 = *(v19 + 3);
      v25 = v2 == -1 || HIDWORD(v61) == -1;
      v26 = v25;
      if ((((v24 != -1) ^ v26) & 1) == 0)
      {
        v27 = v71;
        if (v71)
        {
          v28 = 0;
          do
          {
            v29 = re::internal::GeomAttributeContainer::attributeByIndex(&v70, v28);
            re::internal::accessFaceVaryingAttributeSubmesh(v29, v30);
            ++v28;
          }

          while (v27 != v28);
          v14 = v64;
        }
      }
    }

    if (v14 <= v10)
    {
      goto LABEL_65;
    }

    v32 = DWORD2(v61);
    v31 = HIDWORD(v61);
    if (v2 == -1)
    {
      v31 = -1;
    }

    v33 = v65 + 16 * v10;
    *v33 = v61;
    *(v33 + 8) = v32;
    *(v33 + 12) = v31;
    ++v10;
  }

  while (v10 != v17);
LABEL_37:
  v3 = v42;
  v62.i32[2] = v42;
  v67 = v42;
  if (v68)
  {
    v34 = v69;
    v35 = 8 * v68;
    do
    {
      v36 = *v34++;
      (*(*v36 + 80))(v36, v67);
      v35 -= 8;
    }

    while (v35);
  }

  v37 = re::GeomMesh::operator=(this, &v62.i32[2]);
  re::GeomMesh::setName(v37, v62.i64[0]);
  re::GeomMesh::freeName(&v62);
  v38 = re::GeomMesh::modifyVertexPositions(this);
  if (v9 != v41)
  {
    v2 = 0;
    v14 = v39;
    while (1)
    {
      v15 = v48;
      if (v48 <= v2)
      {
        break;
      }

      if (v2 == v39)
      {
        goto LABEL_63;
      }

      *(v38 + 16 * v2) = *(v50 + 16 * v2);
      if (++v2 == v42)
      {
        goto LABEL_45;
      }
    }

LABEL_62:
    v60 = 0;
    v80 = 0u;
    v81 = 0u;
    memset(v79, 0, sizeof(v79));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    v73 = 1024;
    v74 = 789;
    v75 = 2048;
    v76 = v2;
    v77 = 2048;
    v78 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_63:
    v60 = 0;
    v80 = 0u;
    v81 = 0u;
    memset(v79, 0, sizeof(v79));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    v73 = 1024;
    v74 = 621;
    v75 = 2048;
    v76 = v14;
    v77 = 2048;
    v78 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_64:
    v60 = 0;
    v80 = 0u;
    v81 = 0u;
    memset(v79, 0, sizeof(v79));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    v73 = 1024;
    v74 = 797;
    v75 = 2048;
    v76 = v10;
    v77 = 2048;
    v78 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_65:
    v60 = 0;
    v80 = 0u;
    v81 = 0u;
    memset(v79, 0, sizeof(v79));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    v73 = 1024;
    v74 = 789;
    v75 = 2048;
    v76 = v10;
    v77 = 2048;
    v78 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_66:
    *v72 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v79[0] = 136315906;
    *&v79[1] = "operator[]";
    LOWORD(v79[3]) = 1024;
    *(&v79[3] + 2) = 613;
    HIWORD(v79[4]) = 2048;
    *&v79[5] = v4;
    LOWORD(v79[7]) = 2048;
    *(&v79[7] + 2) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_67;
  }

LABEL_45:
  re::GeomMesh::freeName(&v62);
  re::internal::GeomAttributeManager::~GeomAttributeManager((&v65 + 8));
  if (v63.i64[0] && v65)
  {
    (*(*v63.i64[0] + 40))();
  }

  if (v43[0] && v46)
  {
    (*(*v43[0] + 40))();
  }

  if (v47[0] && v50)
  {
    (*(*v47[0] + 40))();
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

uint64_t re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(uint64_t result, uint64_t a2, float a3)
{
  v3 = 0;
  v33[3] = *MEMORY[0x1E69E9840];
  *result = a2;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  v9 = vdup_n_s32(0x3FC3AB4Bu);
  do
  {
    v10 = &_MergedGlobals_421[v3 / 4];
    v11 = re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(float,re::Vector2<float>)::kSmoothCornerPoints[v3 / 8];
    *v10 = vrev64_s32(vsub_f32(_D1, re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(float,re::Vector2<float>)::kCircularPoints[v3 / 8]));
    v10[10] = vrev64_s32(vsub_f32(v9, v11));
    v3 += 8;
  }

  while (v3 != 80);
  v12 = 0;
  v13 = fminf(fmaxf(*&a2, 0.0), 1.0);
  v14 = fminf(fmaxf(*(&a2 + 1), 0.0), 1.0);
  v15 = &unk_1EE1B6C0C;
  do
  {
    v16 = v15[20];
    v17 = *v15;
    *&v32[v12 * 4 + 4] = (v13 * v15[19]) + ((1.0 - v13) * *(v15 - 1));
    v31[v12++] = (v14 * v16) + ((1.0 - v14) * v17);
    v15 += 2;
  }

  while (v12 != 10);
  v18 = 1.5287;
  v19 = 1.5287;
  if (*&a2 < 1.0)
  {
    v19 = 1.0;
    if (*&a2 > 0.0)
    {
      v19 = (*&a2 * 0.52866) + 1.0;
    }
  }

  if (*(&a2 + 1) < 1.0)
  {
    v18 = 1.0;
    if (*(&a2 + 1) > 0.0)
    {
      v18 = (*(&a2 + 1) * 0.52866) + 1.0;
    }
  }

  v20 = 0;
  v21 = v19 * a3;
  v22 = v18 * a3;
  v23 = -a3;
  v24 = v32;
  do
  {
    *&v25 = v21 + (v23 * v31[v20]);
    v26 = *v24--;
    *(&v25 + 1) = v22 + (v23 * v26);
    *(result + 8 + 8 * v20++) = v25;
  }

  while (v20 != 5);
  v27 = 0;
  v28 = v33;
  do
  {
    v29 = *v28--;
    *&v30 = v21 + (v23 * v29);
    *(&v30 + 1) = v22 + (v23 * *(v33 + v27 + 1));
    *(result + 48 + 8 * v27++) = v30;
  }

  while (v27 != 5);
  return result;
}

float32x2_t re::internal::UIKitStyleBezierArc::eval(re::internal::UIKitStyleBezierArc *this, float a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (a2 >= 0.333333333)
  {
    if (v2 >= 0.666666667)
    {
      v4 = (v2 + -0.666666667) * 3.0;
      v3 = 6;
    }

    else
    {
      v4 = (v2 + -0.333333333) * 3.0;
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
    v4 = a2 * 3.0;
  }

  v5 = 0;
  v6 = 1.0 - v4;
  v7.f32[0] = v6 * v6;
  v16 = v6 * (v6 * v6);
  v7.f32[1] = 1.0 - v4;
  __asm { FMOV            V1.2S, #3.0 }

  v13 = vmul_f32(v7, _D1);
  v7.f32[0] = v4;
  v7.f32[1] = v4 * v4;
  v17 = vmul_f32(v7, v13);
  v18 = v4 * (v4 * v4);
  v14 = this + 8 * v3 + 8;
  result = 0;
  do
  {
    result = vadd_f32(result, vmul_n_f32(*&v14[8 * v5], *(&v16 + v5)));
    ++v5;
  }

  while (v5 != 4);
  return result;
}

float32x2_t re::internal::UIKitStyleBezierArc::evalFirstDerivative(re::internal::UIKitStyleBezierArc *this, float a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (a2 >= 0.333333333)
  {
    if (v2 >= 0.666666667)
    {
      v4 = (v2 + -0.666666667) * 3.0;
      v3 = 6;
    }

    else
    {
      v4 = (v2 + -0.333333333) * 3.0;
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
    v4 = a2 * 3.0;
  }

  v5 = 0;
  v6 = 1.0 - v4;
  v9[0] = (v6 * v6) * -3.0;
  v9[1] = ((v6 * v6) * 3.0) + (((1.0 - v4) * -6.0) * v4);
  v9[2] = (v4 * ((1.0 - v4) * 6.0)) + ((v4 * v4) * -3.0);
  v9[3] = (v4 * v4) * 3.0;
  v7 = this + 8 * v3 + 8;
  result = 0;
  do
  {
    result = vadd_f32(result, vmul_n_f32(*&v7[8 * v5], v9[v5]));
    ++v5;
  }

  while (v5 != 4);
  return result;
}

uint64_t re::internal::mergePlanarRegions@<X0>(re::GeomMesh *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = v295;
  v10 = v263;
  v11 = &v234;
  v303 = *MEMORY[0x1E69E9840];
  v12 = cosf((*a2 * 3.1416) / 180.0);
  v211 = a2;
  v13 = a2[1];
  v234 = a1;
  v235 = v12;
  v236 = v13;
  v238 = 0;
  v239 = 0;
  v237 = 0;
  v240 = 0;
  v250 = 0;
  *__src = 0u;
  v242 = 0u;
  v244 = 0u;
  v245 = 0u;
  v243 = 0;
  v246 = 0;
  v247 = 0u;
  v248 = 0u;
  v249 = 0;
  memset(v268, 0, 28);
  *(&v270 + 1) = 0;
  v268[2] = 0u;
  v269 = 0u;
  LODWORD(v270) = 0;
  v214 = a1;
  re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(v268, a1);
  v232 = 0;
  v229 = 0;
  v230 = 0;
  v228 = 0;
  LODWORD(v231) = 0;
  v14 = *&v268[1];
  if (LODWORD(v268[1]))
  {
    v15 = 0;
    v215 = 0;
    FirstBitSet = &v259[24];
    while (1)
    {
      if (v15)
      {
        v16 = v15 - 1;
        if (v14 <= v15 - 1)
        {
          goto LABEL_409;
        }

        v17 = *(*&v268[2] + 4 * v16);
      }

      else
      {
        v17 = 0;
      }

      if (v14 <= v15)
      {
        goto LABEL_407;
      }

      v225 = v15;
      v18 = *(*&v268[2] + 4 * v15);
      re::DynamicArray<float>::resize(&v228, v18 - v17);
      v19 = v18 - v17;
      if (v18 > v17)
      {
        break;
      }

LABEL_16:
      *v265 = 0;
      v22 = v232;
      v23 = v230;
      __dst.i64[0] = 0;
      v254.i64[0] = 0;
      v253 = 0uLL;
      v254.i32[2] = 0;
      *&v259[8] = 0;
      *v259 = 0;
      *&v259[16] = 1;
      *&v259[24] = 0;
      *&v259[32] = 0;
      v24 = *(v234 + 4);
      if ((v24 & 0x3F) != 0)
      {
        v25 = (v24 >> 6) + 1;
      }

      else
      {
        v25 = v24 >> 6;
      }

      v261 = *(v234 + 4);
      v298.i64[0] = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(v259, v25, &v298);
      v26 = *&v259[8];
      if (*&v259[8])
      {
        v27 = *&v259[32];
        if (v259[16])
        {
          v27 = &v259[24];
        }

        do
        {
          *v27++ = 0;
          v28 = *&v259[32];
          if (v259[16])
          {
            v28 = &v259[24];
          }
        }

        while (v27 != &v28[8 * v26]);
      }

      v11 = re::GeomMesh::accessVertexPositions(v234);
      v3 = v29;
      v5 = 4 * v23;
      if (v23)
      {
        v216 = v23;
        v218 = 4 * v23;
        v9 = 0;
        v16 = 0;
        v14 = v5;
        v220 = v22;
        do
        {
          FirstBitSet = *v22;
          v5 = *(v234 + 5);
          if (v5 <= FirstBitSet)
          {
            goto LABEL_363;
          }

          v30 = (*(v234 + 7) + 16 * FirstBitSet);
          FirstBitSet = *v30;
          v6 = v30[1];
          v5 = v30[2];
          v10 = v30[3];
          re::DynamicBitset<unsigned long long,64ul>::setBit(v259, FirstBitSet);
          re::DynamicBitset<unsigned long long,64ul>::setBit(v259, v6);
          re::DynamicBitset<unsigned long long,64ul>::setBit(v259, v5);
          if (FirstBitSet >= v3)
          {
            goto LABEL_364;
          }

          if (v6 >= v3)
          {
            goto LABEL_365;
          }

          if (v5 >= v3)
          {
            goto LABEL_366;
          }

          if (v10 == -1)
          {
            v33 = *(v11 + 16 * FirstBitSet);
            v31 = vsubq_f32(*(v11 + 16 * v6), v33);
            v32 = vsubq_f32(*(v11 + 16 * v5), v33);
          }

          else
          {
            re::DynamicBitset<unsigned long long,64ul>::setBit(v259, v10);
            if (v10 >= v3)
            {
              goto LABEL_373;
            }

            v31 = vsubq_f32(*(v11 + 16 * v6), *(v11 + 16 * v10));
            v32 = vsubq_f32(*(v11 + 16 * v5), *(v11 + 16 * FirstBitSet));
          }

          v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vnegq_f32(v31)), v32, vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL));
          v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
          v36 = vmulq_f32(v34, v34);
          if ((v36.f32[1] + (v36.f32[2] + v36.f32[0])) > 0.0)
          {
            v16 = v35.u64[1];
            v9 = v35.i64[0];
          }

          ++v22;
          v14 -= 4;
        }

        while (v14);
        v37.i64[0] = v9;
        v37.i64[1] = v16;
        v222 = v37;
        v10 = v263;
        v9 = v295;
        v5 = v218;
        v22 = v220;
        v23 = v216;
      }

      else
      {
        v222 = 0u;
      }

      v254.i64[0] = 0;
      v254.i32[2] = 1;
      v38 = *&v259[32];
      if (v259[16])
      {
        v38 = &v259[24];
      }

      v39 = *&v259[8];
      if ((*&v259[8] & 0x3FFFFFFFFFFFFFFLL) != 0)
      {
        v40 = 0;
        while (1)
        {
          v42 = *v38++;
          v41 = v42;
          if (v42)
          {
            break;
          }

          v40 -= 64;
          if (!--v39)
          {
            goto LABEL_51;
          }
        }

        v43 = __clz(__rbit64(v41));
        if (v43 + 1 != v40)
        {
          FirstBitSet = v43 - v40;
          while (v3 > FirstBitSet)
          {
            re::DynamicArray<re::Vector3<float>>::add(&v253, (v11 + 16 * FirstBitSet));
            FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v259, FirstBitSet + 1);
            if (FirstBitSet == -1)
            {
              goto LABEL_51;
            }
          }

          *v295 = 0;
          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          v298 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v263 = 136315906;
          *&v263[4] = "operator[]";
          *&v263[12] = 1024;
          *&v263[14] = 613;
          *&v263[18] = 2048;
          *&v263[20] = FirstBitSet;
          *&v263[28] = 2048;
          *&v263[30] = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_391:
          v252 = 0;
          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          v298 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v295 = 136315906;
          *&v295[4] = "operator[]";
          *&v295[12] = 1024;
          *&v295[14] = 613;
          *&v295[18] = 2048;
          *&v295[20] = v10;
          v296 = 2048;
          *v297 = FirstBitSet;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_392:
          v252 = 0;
          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          v298 = 0u;
          v73 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v295 = 136315906;
          *&v295[4] = "operator[]";
          *&v295[12] = 1024;
          *&v295[14] = 613;
          *&v295[18] = 2048;
          *&v295[20] = v10;
          v296 = 2048;
          *v297 = FirstBitSet;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_393:
          *v263 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v16 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v253.i32[0] = 136315906;
          *(v11 + 196) = "operator[]";
          v253.i16[6] = 1024;
          *(v11 + 206) = 789;
          v254.i16[1] = 2048;
          *(v11 + 212) = v73;
          v254.i16[6] = 2048;
          *(v11 + 222) = v73;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_394:
          *v295 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v263 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v263[12] = 1024;
          *(v10 + 14) = 789;
          *&v263[18] = 2048;
          *(v10 + 20) = v16;
          *&v263[28] = 2048;
          *(v10 + 30) = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_395:
          *v295 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v263 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v263[12] = 1024;
          *(v10 + 14) = 789;
          *&v263[18] = 2048;
          *(v10 + 20) = FirstBitSet;
          *&v263[28] = 2048;
          *(v10 + 30) = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_396:
          *v295 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v263 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v263[12] = 1024;
          *(v10 + 14) = 789;
          *&v263[18] = 2048;
          *(v10 + 20) = v11;
          *&v263[28] = 2048;
          *(v10 + 30) = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_397:
          *v295 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v263 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v263[12] = 1024;
          *(v10 + 14) = 789;
          *&v263[18] = 2048;
          *(v10 + 20) = v16;
          *&v263[28] = 2048;
          *(v10 + 30) = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_398:
          *v295 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v263 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v263[12] = 1024;
          *(v10 + 14) = 789;
          *&v263[18] = 2048;
          *(v10 + 20) = v14;
          *&v263[28] = 2048;
          *(v10 + 30) = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_399:
          *v295 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v263 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v263[12] = 1024;
          *(v10 + 14) = 789;
          *&v263[18] = 2048;
          *(v10 + 20) = v16;
          *&v263[28] = 2048;
          *(v10 + 30) = FirstBitSet;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_400:
          v252 = 0;
          v3 = v263;
          v269 = 0u;
          v270 = 0u;
          memset(v268, 0, sizeof(v268));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v265 = 136315906;
          *&v265[4] = "operator[]";
          *&v265[12] = 1024;
          *&v265[14] = 789;
          *&v265[18] = 2048;
          *&v265[20] = v16;
          v266 = 2048;
          *v267 = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_401:
          v252 = 0;
          v16 = v263;
          v269 = 0u;
          v270 = 0u;
          memset(v268, 0, sizeof(v268));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v265 = 136315906;
          *&v265[4] = "operator[]";
          *&v265[12] = 1024;
          *&v265[14] = 613;
          *&v265[18] = 2048;
          *&v265[20] = v14;
          v266 = 2048;
          *v267 = FirstBitSet;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_402:
          v252 = 0;
          v269 = 0u;
          v270 = 0u;
          memset(v268, 0, sizeof(v268));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v265 = 136315906;
          *&v265[4] = "operator[]";
          *&v265[12] = 1024;
          *&v265[14] = 789;
          *&v265[18] = 2048;
          *&v265[20] = v16;
          v266 = 2048;
          *v267 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_403:
          v252 = 0;
          v14 = v263;
          v269 = 0u;
          v270 = 0u;
          memset(v268, 0, sizeof(v268));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v265 = 136315906;
          *&v265[4] = "operator[]";
          *&v265[12] = 1024;
          *&v265[14] = 789;
          *&v265[18] = 2048;
          *&v265[20] = v16;
          v266 = 2048;
          *v267 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_404:
          *v265 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v295 = 136315906;
          *(v9 + 4) = "operator[]";
          *&v295[12] = 1024;
          *(v9 + 14) = 789;
          *&v295[18] = 2048;
          *(v9 + 20) = v14;
          v296 = 2048;
          *(v9 + 30) = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_405:
          *v265 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v295 = 136315906;
          *(v9 + 4) = "operator[]";
          *&v295[12] = 1024;
          *(v9 + 14) = 789;
          *&v295[18] = 2048;
          *(v9 + 20) = v5;
          v296 = 2048;
          *(v9 + 30) = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_406:
          *v265 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v295 = 136315906;
          *(v9 + 4) = "operator[]";
          *&v295[12] = 1024;
          *(v9 + 14) = 789;
          *&v295[18] = 2048;
          *(v9 + 20) = FirstBitSet;
          v296 = 2048;
          *(v9 + 30) = FirstBitSet;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_407:
          v253.i64[0] = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v16 = v15;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v259 = 136315906;
          *&v259[4] = "operator[]";
          *&v259[12] = 1024;
          *&v259[14] = 797;
          *&v259[18] = 2048;
          *&v259[20] = v16;
          *&v259[28] = 2048;
          *&v259[30] = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_408:
          *v265 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v295 = 136315906;
          *(v9 + 4) = "operator[]";
          *&v295[12] = 1024;
          *(v9 + 14) = 789;
          *&v295[18] = 2048;
          *(v9 + 20) = v6;
          v296 = 2048;
          *(v9 + 30) = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_409:
          v253.i64[0] = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v259 = 136315906;
          *&v259[4] = "operator[]";
          *&v259[12] = 1024;
          *&v259[14] = 797;
          *&v259[18] = 2048;
          *&v259[20] = v16;
          *&v259[28] = 2048;
          *&v259[30] = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_410:
          v253.i64[0] = 0;
          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          v298 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v268[0]) = 136315906;
          *(v268 + 4) = "operator[]";
          WORD6(v268[0]) = 1024;
          *(v268 + 14) = 797;
          WORD1(v268[1]) = 2048;
          *(&v268[1] + 4) = v3;
          WORD6(v268[1]) = 2048;
          *(&v268[1] + 14) = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_411:
          v252 = 0;
          v3 = v295;
          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          v298 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v295 = 136315906;
          *&v295[4] = "operator[]";
          *&v295[12] = 1024;
          *&v295[14] = 797;
          *&v295[18] = 2048;
          *&v295[20] = v16;
          v296 = 2048;
          *v297 = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_412:
          v252 = 0;
          v269 = 0u;
          v270 = 0u;
          memset(v268, 0, sizeof(v268));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v265 = 136315906;
          *&v265[4] = "operator[]";
          *&v265[12] = 1024;
          *&v265[14] = 797;
          *&v265[18] = 2048;
          *&v265[20] = v3;
          v266 = 2048;
          *v267 = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_413;
        }
      }

LABEL_51:
      if (*v259 && (v259[16] & 1) == 0)
      {
        (*(**v259 + 40))();
      }

      *v263 = 0u;
      v298 = 0u;
      re::computeBestFitPlane(__dst.i64[0], v254.u64[0], v298.i64, v263);
      v44 = *v263;
      v45 = vmulq_f32(v222, *v263);
      v11 = &v234;
      if ((v45.f32[2] + vaddv_f32(*v45.f32)) < 0.0)
      {
        v44 = vnegq_f32(*v263);
        *v263 = v44;
      }

      v46 = vmulq_f32(v44, v298);
      v44.f32[3] = -(v46.f32[2] + vaddv_f32(*v46.f32));
      FirstBitSet = &v259[24];
      v223 = v44;
      if (v254.i64[0])
      {
        v47 = __dst.i64[0];
        while (1)
        {
          v48.i64[0] = *v47;
          v48.i32[2] = *(v47 + 8);
          v48.i32[3] = 1.0;
          v49 = vmulq_f32(v44, v48);
          if (vaddv_f32(vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL))) > v236)
          {
            break;
          }

          v47 += 16;
          if (v47 == __dst.i64[0] + 16 * v254.i64[0])
          {
            goto LABEL_60;
          }
        }

        v65 = 0;
      }

      else
      {
LABEL_60:
        v11 = v234;
        v50 = re::GeomMesh::accessVertexPositions(v234);
        *v265 = 0;
        if (v23)
        {
          v3 = v51;
          FirstBitSet = *(v11 + 40);
          v52 = 0.0;
          v53.i64[0] = 0x3F0000003F000000;
          v53.i64[1] = 0x3F0000003F000000;
          do
          {
            v16 = *v22;
            if (FirstBitSet <= v16)
            {
              goto LABEL_369;
            }

            v54 = (*(v11 + 56) + 16 * v16);
            v16 = *v54;
            if (v16 >= v51)
            {
              goto LABEL_370;
            }

            v14 = v54[1];
            if (v14 >= v51)
            {
              goto LABEL_371;
            }

            v55 = v5;
            v5 = v54[2];
            if (v5 >= v51)
            {
              goto LABEL_372;
            }

            v6 = v54[3];
            if (v6 == -1)
            {
              v56 = *(v50 + 16 * v16);
              v57 = *(v50 + 16 * v5);
              v58 = vsubq_f32(*(v50 + 16 * v14), v56);
            }

            else
            {
              if (v6 >= v51)
              {
                goto LABEL_374;
              }

              v56 = *(v50 + 16 * v16);
              v57 = *(v50 + 16 * v5);
              v58 = vsubq_f32(*(v50 + 16 * v14), *(v50 + 16 * v6));
            }

            v59 = vsubq_f32(v57, v56);
            v60 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL), vnegq_f32(v58)), v59, vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL)), v53);
            v61 = vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL);
            v62 = vmulq_f32(v60, v60);
            v63 = sqrtf(v62.f32[1] + (v62.f32[2] + v62.f32[0]));
            if (v63 > 0.0)
            {
              v61 = vmulq_n_f32(v61, 1.0 / v63);
            }

            v64 = vmulq_f32(v61, *v263);
            if ((v64.f32[2] + vaddv_f32(*v64.f32)) > 0.0)
            {
              v52 = v63 + v52;
              *v265 = v52;
            }

            ++v22;
            v5 = v55 - 4;
          }

          while (v55 != 4);
          v65 = 1;
          v11 = &v234;
          FirstBitSet = &v259[24];
        }

        else
        {
          v65 = 1;
          v11 = &v234;
        }
      }

      if (v253.i64[0] && __dst.i64[0])
      {
        (*(*v253.i64[0] + 40))();
      }

      if (v65)
      {
        v215 += v230;
        v298.i32[0] = v215;
        re::DynamicArray<int>::add(&v244 + 1, &v298);
        if (v230)
        {
          v66 = v232;
          v67 = 4 * v230;
          do
          {
            v68 = *v66++;
            v298.i32[0] = v68;
            re::DynamicArray<int>::add(&v247 + 1, &v298);
            v67 -= 4;
          }

          while (v67);
        }

        re::DynamicArray<float>::add(&__src[1], v265);
        v3 = v239 + 1;
        if (v239 >= v238 && v238 < v3)
        {
          if (v237)
          {
            v71 = 8;
            if (v238)
            {
              v71 = 2 * v238;
            }

            if (v71 <= v3)
            {
              v72 = v239 + 1;
            }

            else
            {
              v72 = v71;
            }

            re::DynamicArray<re::Vector4<float>>::setCapacity(&v237, v72);
          }

          else
          {
            re::DynamicArray<re::Vector4<float>>::setCapacity(&v237, v3);
            ++v240;
          }
        }

        *(__src[0] + v239) = v223;
        v239 = (v239 + 1);
        ++v240;
      }

      v15 = v225 + 1;
      v14 = *&v268[1];
      if (v225 + 1 >= LODWORD(v268[1]))
      {
        goto LABEL_101;
      }
    }

    v16 = 0;
    v14 = *(&v269 + 1);
    v3 = v230;
    v20 = v232;
    if (*(&v269 + 1) <= v17)
    {
      v11 = v17;
    }

    else
    {
      v11 = *(&v269 + 1);
    }

    v21 = *(&v270 + 1) + 4 * v17;
    while (v11 - v17 != v16)
    {
      if (v3 <= v16)
      {
        goto LABEL_368;
      }

      v20[v16] = *(v21 + 4 * v16);
      if (v19 == ++v16)
      {
        goto LABEL_16;
      }
    }

LABEL_367:
    v253.i64[0] = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v259 = 136315906;
    *&v259[4] = "operator[]";
    *&v259[12] = 1024;
    *&v259[14] = 797;
    *&v259[18] = 2048;
    *&v259[20] = v11;
    *&v259[28] = 2048;
    *&v259[30] = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_368:
    v253.i64[0] = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v259 = 136315906;
    *&v259[4] = "operator[]";
    *&v259[12] = 1024;
    *&v259[14] = 789;
    *&v259[18] = 2048;
    *&v259[20] = v16;
    *&v259[28] = 2048;
    *&v259[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_369:
    *v295 = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v259 = 136315906;
    *&v259[4] = "operator[]";
    *&v259[12] = 1024;
    *&v259[14] = 797;
    *&v259[18] = 2048;
    *&v259[20] = v16;
    *&v259[28] = 2048;
    *&v259[30] = FirstBitSet;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_370:
    *v295 = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v259 = 136315906;
    *&v259[4] = "operator[]";
    *&v259[12] = 1024;
    *&v259[14] = 613;
    *&v259[18] = 2048;
    *&v259[20] = v16;
    *&v259[28] = 2048;
    *&v259[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_371:
    *v295 = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v259 = 136315906;
    *&v259[4] = "operator[]";
    *&v259[12] = 1024;
    *&v259[14] = 613;
    *&v259[18] = 2048;
    *&v259[20] = v14;
    *&v259[28] = 2048;
    *&v259[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_372:
    *v295 = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v259 = 136315906;
    *&v259[4] = "operator[]";
    *&v259[12] = 1024;
    *&v259[14] = 613;
    *&v259[18] = 2048;
    *&v259[20] = v5;
    *&v259[28] = 2048;
    *&v259[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_373:
    *v295 = 0;
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    v298 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v263 = 136315906;
    *&v263[4] = "operator[]";
    *&v263[12] = 1024;
    *&v263[14] = 613;
    *&v263[18] = 2048;
    *&v263[20] = v10;
    *&v263[28] = 2048;
    *&v263[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_374:
    *v295 = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v259 = 136315906;
    *&v259[4] = "operator[]";
    *&v259[12] = 1024;
    *&v259[14] = 613;
    *&v259[18] = 2048;
    *&v259[20] = v6;
    *&v259[28] = 2048;
    *&v259[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_375;
  }

LABEL_101:
  v3 = v239;
  *&v259[32] = 0;
  memset(v259, 0, 28);
  re::DynamicArray<float>::resize(v259, v239);
  v73 = *&v259[16];
  if (v3)
  {
    v74 = 0;
    v75 = *&v259[32];
    while (v73 != v74)
    {
      *(v75 + 4 * v74) = v74;
      if (v3 == ++v74)
      {
        goto LABEL_105;
      }
    }

    goto LABEL_393;
  }

LABEL_105:
  v298.i64[0] = &v234;
  v76 = 126 - 2 * __clz(v73);
  if (v73)
  {
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  re::DynamicArray<float>::DynamicArray(&v253, &__src[1]);
  if (v3)
  {
    v78 = 0;
    v16 = *&v259[16];
    v79 = *&v259[32];
    v14 = v254.i64[0];
    v80 = __dst.i64[0];
    v11 = *(&v242 + 1);
    v81 = v244;
    while (v16 != v78)
    {
      FirstBitSet = *(v79 + 4 * v78);
      if (v14 <= FirstBitSet)
      {
        goto LABEL_395;
      }

      if (v11 == v78)
      {
        goto LABEL_396;
      }

      *(v81 + 4 * v78++) = *(v80 + 4 * FirstBitSet);
      if (v3 == v78)
      {
        goto LABEL_114;
      }
    }

    goto LABEL_394;
  }

LABEL_114:
  if (v253.i64[0] && __dst.i64[0])
  {
    (*(*v253.i64[0] + 40))();
  }

  __dst.i64[0] = 0;
  v254.i64[0] = 0;
  v253 = 0uLL;
  v254.i32[2] = 0;
  if (v237)
  {
    v253.i64[0] = v237;
    re::DynamicArray<re::Vector4<float>>::setCapacity(&v253, v239);
    ++v254.i32[2];
    v11 = v239;
    if (v239 >= v254.i64[0])
    {
      re::DynamicArray<re::Vector4<float>>::setCapacity(&v253, v239);
      v82 = v254.i64[0];
      FirstBitSet = __dst.i64[0];
      if (v254.i64[0])
      {
        v5 = 16 * v254.i64[0];
        memmove(__dst.i64[0], __src[0], 16 * v254.i64[0]);
      }

      else
      {
        v5 = 0;
      }

      memcpy((FirstBitSet + 16 * v82), __src[0] + v5, 16 * (v11 - v82));
      if (!v3)
      {
        goto LABEL_134;
      }

      goto LABEL_129;
    }

    if (v239)
    {
      memmove(__dst.i64[0], __src[0], 16 * v239);
      if (!v3)
      {
        goto LABEL_134;
      }

LABEL_129:
      v16 = 0;
      v83 = __dst.i64[0];
      while (1)
      {
        v14 = *&v259[16];
        if (*&v259[16] <= v16)
        {
          goto LABEL_397;
        }

        v14 = *(*&v259[32] + 4 * v16);
        if (v11 <= v14)
        {
          goto LABEL_398;
        }

        FirstBitSet = v239;
        if (v239 <= v16)
        {
          goto LABEL_399;
        }

        *(__src[0] + v16++) = *(v83 + 16 * v14);
        if (v16 == v3)
        {
          goto LABEL_134;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (v3)
  {
    goto LABEL_129;
  }

LABEL_134:
  if (v253.i64[0] && __dst.i64[0])
  {
    (*(*v253.i64[0] + 40))();
  }

  re::DynamicArray<float>::DynamicArray(&v253, &v244 + 1);
  re::DynamicArray<float>::DynamicArray(v263, &v247 + 1);
  if (v3)
  {
    v84 = 0;
    v85 = 0;
    v14 = *&v259[16];
    v86 = *&v259[32];
    v16 = v254.i64[0];
    v87 = __dst.i64[0];
    v11 = *&v263[16];
    FirstBitSet = *(&v245 + 1);
    v88 = v247;
    while (1)
    {
      if (v84 == v14)
      {
        goto LABEL_404;
      }

      v5 = *(v86 + 4 * v84);
      if (v5)
      {
        v6 = (v5 - 1);
        if (v16 <= v6)
        {
          goto LABEL_408;
        }

        v89 = *(v87 + 4 * v6);
      }

      else
      {
        v89 = 0;
      }

      if (v16 <= v5)
      {
        goto LABEL_405;
      }

      v90 = *(v87 + 4 * v5) - v89;
      if (v90)
      {
        break;
      }

LABEL_150:
      if (v84 == FirstBitSet)
      {
        goto LABEL_406;
      }

      v85 += v90;
      *(v88 + 4 * v84) = v85;
      v84 = (v84 + 1);
      if (v84 == v3)
      {
        goto LABEL_152;
      }
    }

    v91 = *&v263[32];
    v92 = v85;
    v93 = *(v87 + 4 * v5) - v89;
    v5 = *(&v248 + 1);
    v94 = v250;
    while (1)
    {
      v6 = v89;
      if (v11 <= v89)
      {
        break;
      }

      v10 = v92;
      if (v5 <= v92)
      {
        goto LABEL_362;
      }

      *(v94 + 4 * v92++) = *(v91 + 4 * v89++);
      if (!--v93)
      {
        goto LABEL_150;
      }
    }

    *v265 = 0;
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    v298 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v295 = 136315906;
    *&v295[4] = "operator[]";
    *&v295[12] = 1024;
    *&v295[14] = 789;
    *&v295[18] = 2048;
    *&v295[20] = v6;
    v296 = 2048;
    *v297 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_362:
    *v265 = 0;
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    v298 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v295 = 136315906;
    *&v295[4] = "operator[]";
    *&v295[12] = 1024;
    *&v295[14] = 789;
    *&v295[18] = 2048;
    *&v295[20] = v10;
    v296 = 2048;
    *v297 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_363:
    *v295 = 0;
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    v298 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v263 = 136315906;
    *&v263[4] = "operator[]";
    *&v263[12] = 1024;
    *&v263[14] = 797;
    *&v263[18] = 2048;
    *&v263[20] = FirstBitSet;
    *&v263[28] = 2048;
    *&v263[30] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_364:
    *v295 = 0;
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    v298 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v263 = 136315906;
    *&v263[4] = "operator[]";
    *&v263[12] = 1024;
    *&v263[14] = 613;
    *&v263[18] = 2048;
    *&v263[20] = FirstBitSet;
    *&v263[28] = 2048;
    *&v263[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_365:
    *v295 = 0;
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    v298 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v263 = 136315906;
    *&v263[4] = "operator[]";
    *&v263[12] = 1024;
    *&v263[14] = 613;
    *&v263[18] = 2048;
    *&v263[20] = v6;
    *&v263[28] = 2048;
    *&v263[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_366:
    *v295 = 0;
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    v298 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v263 = 136315906;
    *&v263[4] = "operator[]";
    *&v263[12] = 1024;
    *&v263[14] = 613;
    *&v263[18] = 2048;
    *&v263[20] = v5;
    *&v263[28] = 2048;
    *&v263[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_367;
  }

LABEL_152:
  if (*v263 && *&v263[32])
  {
    (*(**v263 + 40))();
  }

  v11 = v214;
  if (v253.i64[0] && __dst.i64[0])
  {
    (*(*v253.i64[0] + 40))();
  }

  if (*v259 && *&v259[32])
  {
    (*(**v259 + 40))();
  }

  v14 = &v234;
  if (v228 && v232)
  {
    (*(*v228 + 40))();
  }

  if (*(&v268[2] + 1))
  {
    if (*(&v270 + 1))
    {
      (*(**(&v268[2] + 1) + 40))();
    }

    *(&v270 + 1) = 0;
    v269 = 0uLL;
    *(&v268[2] + 1) = 0;
    LODWORD(v270) = v270 + 1;
  }

  if (*&v268[0] && *&v268[2])
  {
    (*(**&v268[0] + 40))();
  }

  if (!v239)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    bzero((a3 + 16), 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((a3 + 16));
    *(a3 + 728) = 0;
    re::GeomMesh::copy(v214, a3);
    goto LABEL_345;
  }

  v217 = v239;
  v228 = 0;
  v229 = 0;
  LODWORD(v230) = 1;
  v231 = 0;
  v232 = 0;
  if ((v239 & 0x3F) != 0)
  {
    v95 = (v239 >> 6) + 1;
  }

  else
  {
    v95 = v239 >> 6;
  }

  v210 = v239;
  v233 = v239;
  v298.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v228, v95, &v298);
  v96 = v229;
  if (v229)
  {
    v97 = v232;
    if (v230)
    {
      v97 = &v231;
    }

    do
    {
      *v97 = 0;
      v97 += 2;
      v98 = v232;
      if (v230)
      {
        v98 = &v231;
      }
    }

    while (v97 != &v98[2 * v96]);
  }

  *&v263[8] = 0;
  *v263 = 0;
  *&v263[16] = 1;
  *&v263[32] = 0;
  *&v263[24] = 0;
  v99 = *(v214 + 5);
  if ((v99 & 0x3F) != 0)
  {
    v100 = (v99 >> 6) + 1;
  }

  else
  {
    v100 = v99 >> 6;
  }

  v264 = v99;
  v298.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(v263, v100, &v298);
  if (*(v214 + 10))
  {
    v101 = 0;
    do
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v263, v101++);
    }

    while (v101 < *(v214 + 10));
  }

  v102 = v211[1];
  v16 = v259;
  bzero(v259, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v259[16], 1uLL);
  ++v260;
  re::internal::GeomAttributeManager::GeomAttributeManager(v262);
  re::internal::GeomAttributeManager::addAttribute(v262, "vertexPosition", 1, 7);
  if (v217 == 1)
  {
    goto LABEL_334;
  }

  v3 = 0;
  v209 = 0;
  v104 = v102 * v102;
  v11 = v268;
  v9 = v265;
  v219 = 1;
  do
  {
    v16 = *(&v242 + 1);
    if (*(&v242 + 1) <= v3)
    {
      goto LABEL_410;
    }

    if (*(v244 + 4 * v3) <= v104)
    {
      break;
    }

    if (re::DynamicBitset<unsigned long long,64ul>::getBit(&v228, v3))
    {
      v6 = v3 + 1;
      goto LABEL_325;
    }

    re::DynamicBitset<unsigned long long,64ul>::setBit(&v228, v3);
    v258 = 0;
    v253 = 0u;
    v254 = 0u;
    __dst = 0u;
    v256 = 0u;
    memset(v257, 0, 28);
    re::GeomMesh::GeomMesh(&v298, 0);
    *&v297[2] = 0;
    memset(v295, 0, sizeof(v295));
    re::internal::extractMeshFromFaceSubset(v234, *&v297[2], *&v295[16], 0, v268);
    re::GeomMesh::operator=(&v298, v268);
    re::GeomMesh::~GeomMesh(v268);
    if (*v295 && *&v297[2])
    {
      (*(**v295 + 40))();
    }

    *&v297[2] = 0;
    memset(v295, 0, sizeof(v295));
    re::GeomConnectivityManifold::GeomConnectivityManifold(v268);
    re::GeomConnectivityManifold::buildIfManifold(&v298, v268, v105);
    *&v267[2] = 0;
    memset(v265, 0, sizeof(v265));
    re::findBoundaryLoops(v268, v265, v295);
    v107 = *&v265[16];
    v14 = v217;
    if (*v265 && *&v267[2])
    {
      (*(**v265 + 40))();
    }

    if (v292)
    {
      v108 = v294;
      if ((v294 & 1) == 0)
      {
        (*(*v292 + 40))();
        v108 = v294;
      }

      v292 = 0;
      v293 = 0;
      v294 = (v108 | 1) + 2;
    }

    if (v287)
    {
      if (v291)
      {
        (*(*v287 + 40))();
      }

      v291 = 0;
      v288 = 0;
      v289 = 0;
      v287 = 0;
      ++v290;
    }

    if (v282)
    {
      if (v286)
      {
        (*(*v282 + 40))();
      }

      v286 = 0;
      v283 = 0;
      v284 = 0;
      v282 = 0;
      ++v285;
    }

    if (v277)
    {
      if (v281)
      {
        (*(*v277 + 40))();
      }

      v281 = 0;
      v278 = 0;
      v279 = 0;
      v277 = 0;
      ++v280;
    }

    if (v272)
    {
      if (v276)
      {
        (*(*v272 + 40))();
      }

      v276 = 0;
      v273 = 0;
      v274 = 0;
      v272 = 0;
      ++v275;
    }

    if (v269)
    {
      if (v271)
      {
        (*(*v269 + 40))();
      }

      v271 = 0;
      *&v270 = 0;
      v269 = 0uLL;
      ++DWORD2(v270);
    }

    if (*(&v268[0] + 1) && *(&v268[2] + 1))
    {
      (*(**(&v268[0] + 1) + 40))();
    }

    if (v107 == 1)
    {
      v11 = v239;
      if (v239 <= v3)
      {
        goto LABEL_412;
      }

      v109 = (__src[0] + 16 * v3);
      v106.i64[0] = *v109;
      v110 = v109[2];
      if (fabsf(v110) >= 0.00001)
      {
        v111.i32[0] = 0;
        v111.f32[1] = -v110;
        v111.i64[1] = v106.u32[1];
      }

      else
      {
        v111 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v106.f32[1]), v106);
      }

      v106.f32[2] = v109[2];
      v113 = vmulq_f32(v111, v111);
      *&v114 = v113.f32[2] + vaddv_f32(*v113.f32);
      *v113.f32 = vrsqrte_f32(v114);
      *v113.f32 = vmul_f32(*v113.f32, vrsqrts_f32(v114, vmul_f32(*v113.f32, *v113.f32)));
      v115 = vmulq_n_f32(v111, vmul_f32(*v113.f32, vrsqrts_f32(v114, vmul_f32(*v113.f32, *v113.f32))).f32[0]);
      v116 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v115, v115), v115, 0xCuLL), vnegq_f32(v106)), v115, vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL));
      v254 = v115;
      __dst = vextq_s8(vuzp1q_s32(v116, v116), v116, 0xCuLL);
      v118.i32[2] = v119;
      v253 = vmulq_n_f32(v118, COERCE_FLOAT(v117 ^ 0x80000000));
      v5 = re::GeomMesh::accessVertexPositions(&v298);
      FirstBitSet = v120;
      v121 = *&v295[16];
      v11 = *&v295[16];
      re::DynamicArray<unsigned long>::resize(v257, *&v295[16]);
      if (v121)
      {
        v16 = 0;
        do
        {
          v14 = *&v295[16];
          if (*&v295[16] <= v16)
          {
            goto LABEL_400;
          }

          v14 = *(*&v297[2] + 4 * v16);
          if (v14 >= FirstBitSet)
          {
            goto LABEL_401;
          }

          v6 = v257[2];
          if (v257[2] <= v16)
          {
            goto LABEL_402;
          }

          v122 = vsubq_f32(*(v5 + 16 * v14), v253);
          v123 = vmulq_f32(v254, v122);
          v124 = vmulq_f32(v122, __dst);
          v258[v16++] = vadd_f32(vzip1_s32(*&vextq_s8(v123, v123, 8uLL), *&vextq_s8(v124, v124, 8uLL)), vadd_f32(vzip1_s32(*v123.i8, *v124.i8), vzip2_s32(*v123.i8, *v124.i8)));
        }

        while (v11 != v16);
        v16 = v257[2];
        if (v257[2])
        {
          v125 = v258 + 1;
          v256.i64[0] = *v258;
          v256.i64[1] = v256.i64[0];
          v127 = v256.f32[1];
          v126 = v256.f32[0];
          v128 = v257[2];
          v129 = v256.f32[1];
          v130 = v256.f32[0];
          LODWORD(v14) = v217;
          while (v128)
          {
            if (v126 >= *(v125 - 1))
            {
              v126 = *(v125 - 1);
            }

            v256.f32[0] = v126;
            if (v129 >= *v125)
            {
              v129 = *v125;
            }

            v256.f32[1] = v129;
            if (*(v125 - 1) >= v130)
            {
              v130 = *(v125 - 1);
            }

            v256.f32[2] = v130;
            v131 = *v125;
            v125 += 2;
            v132 = v131;
            if (v131 >= v127)
            {
              v127 = v132;
            }

            v256.f32[3] = v127;
            --v128;
            if (!--v11)
            {
              goto LABEL_250;
            }
          }

          goto LABEL_403;
        }

LABEL_413:
        v252 = 0;
        v191 = v263;
        v269 = 0u;
        v270 = 0u;
        memset(v268, 0, sizeof(v268));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v265 = 136315906;
        *&v265[4] = "operator[]";
        *&v265[12] = 1024;
        *&v265[14] = 789;
        *&v265[18] = 2048;
        *&v265[20] = 0;
        v266 = 2048;
        *v267 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_414;
      }

LABEL_250:
      v112 = v121 != 0;
    }

    else
    {
      v112 = 0;
    }

    if (*v295 && *&v297[2])
    {
      (*(**v295 + 40))();
    }

    re::GeomMesh::~GeomMesh(&v298);
    v6 = v3 + 1;
    if (v3 + 1 >= v210 || !v112)
    {
      goto LABEL_321;
    }

    v11 = v219;
    do
    {
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(&v228, v11))
      {
        goto LABEL_320;
      }

      v135 = v134;
      v137 = v136;
      v138 = HIDWORD(v134);
      v141.i64[0] = __PAIR64__(v138, v135);
      v141.i32[2] = v137;
      v143.i64[0] = v139;
      v143.i32[2] = v142;
      v144 = vmulq_f32(v141, v143);
      v145 = (v144.f32[2] + vaddv_f32(*v144.f32)) >= 0.0 ? 1.0 : -1.0;
      v146 = vmulq_f32(vmulq_n_f32(v143, v145), v141);
      if ((v146.f32[2] + vaddv_f32(*v146.f32)) < v235 || fabsf(*(&v137 + 1) - (v145 * v140)) > v236)
      {
        goto LABEL_320;
      }

      *&v268[2] = 0;
      memset(v268, 0, 28);
      v147 = *&v268[2];
      v148 = *&v268[1];
      v149 = re::GeomMesh::accessVertexPositions(v214);
      if (!v148)
      {
        goto LABEL_317;
      }

      v5 = v149;
      FirstBitSet = v150;
      LOBYTE(v149) = 0;
      v213 = &v147[v148];
LABEL_267:
      v16 = *v147;
      v14 = *(v214 + 5);
      if (v14 <= v16)
      {
        goto LABEL_411;
      }

      v14 = 0;
      *v265 = *(*(v214 + 7) + 16 * v16);
      if (*&v265[12] == -1)
      {
        v151 = 3;
      }

      else
      {
        v151 = 4;
      }

      while (1)
      {
        v10 = *&v265[4 * v14];
        if (v10 >= FirstBitSet)
        {
          goto LABEL_391;
        }

        v152 = v253;
        v153 = v254;
        v154 = vsubq_f32(*(v5 + 16 * v10), v253);
        v155 = vmulq_f32(v254, v154);
        v156 = __dst;
        v157 = vmulq_f32(v154, __dst);
        *v157.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v155, v155, 8uLL), *&vextq_s8(v157, v157, 8uLL)), vadd_f32(vzip1_s32(*v155.i8, *v157.f32), vzip2_s32(*v155.i8, *v157.f32)));
        v251 = *v157.f32;
        v158 = ++v14;
        if (v14 == v151)
        {
          v158 = 0;
        }

        v10 = *&v265[4 * v158];
        if (v10 >= FirstBitSet)
        {
          goto LABEL_392;
        }

        v157.i64[1] = v157.i64[0];
        v159 = vmovn_s32(vcgtq_f32(v157, v256));
        v160.i32[0] = vmovn_s32(vcgtq_f32(v256, v157)).u32[0];
        v160.i32[1] = v159.i32[1];
        if (vmaxv_u16(v160))
        {
          goto LABEL_316;
        }

        v161 = *(v5 + 16 * v10);
        v162 = v257[2];
        if ((v149 & 1) == 0)
        {
          break;
        }

        LODWORD(v149) = 1;
        if (v257[2])
        {
          goto LABEL_280;
        }

LABEL_306:
        if (v14 == v151)
        {
          if (++v147 == v213)
          {
            LODWORD(v14) = v217;
            if (!v149)
            {
              goto LABEL_317;
            }

            if (!*&v268[1])
            {
LABEL_315:
              re::DynamicBitset<unsigned long long,64ul>::setBit(&v228, v11);
              v209 = 1;
              goto LABEL_316;
            }

            v190 = *&v268[2];
            v191 = *&v263[8];
            v192 = 4 * *&v268[1];
            while (1)
            {
              v193 = *v190;
              v14 = v193 >> 6;
              if (v191 <= v193 >> 6)
              {
                break;
              }

              v194 = &v263[24];
              if ((v263[16] & 1) == 0)
              {
                v194 = *&v263[32];
              }

              *&v194[8 * v14] &= ~(1 << v193);
              ++v190;
              v192 -= 4;
              if (!v192)
              {
                goto LABEL_315;
              }
            }

LABEL_414:
            *v265 = 0;
            v301 = 0u;
            v302 = 0u;
            v299 = 0u;
            v300 = 0u;
            v298 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v295 = 136315906;
            *&v295[4] = "operator[]";
            *&v295[12] = 1024;
            *&v295[14] = 858;
            *&v295[18] = 2048;
            *&v295[20] = v14;
            v296 = 2048;
            *v297 = v191;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          goto LABEL_267;
        }
      }

      v298.i64[0] = v258;
      v298.i64[1] = v257[2];
      v226 = v254;
      v227 = v253;
      v221 = v161;
      v224 = __dst;
      LODWORD(v149) = re::internal::isPointInsidePolygon(&v251, &v298);
      v161 = v221;
      v156 = v224;
      v153 = v226;
      v152 = v227;
      v162 = v257[2];
      if (!v257[2])
      {
        goto LABEL_306;
      }

LABEL_280:
      v163 = 0;
      v164 = vsubq_f32(v161, v152);
      v165 = vmulq_f32(v153, v164);
      v166 = vmulq_f32(v156, v164);
      _D1 = vsub_f32(vadd_f32(vzip1_s32(*&vextq_s8(v165, v165, 8uLL), *&vextq_s8(v166, v166, 8uLL)), vadd_f32(vzip1_s32(*v165.i8, *v166.i8), vzip2_s32(*v165.i8, *v166.i8))), v251);
      v168 = vmul_f32(_D1, _D1);
      v169 = vaddv_f32(v168) * 0.000001;
      v170 = vdup_lane_s32(vadd_f32(v168, vdup_lane_s32(v168, 1)), 0);
      v171 = 1;
      while (1)
      {
        v172 = v162 - 1 == v163 ? 0 : v163 + 1;
        v173 = v258[v163];
        _D7 = vsub_f32(v258[v172], v173);
        v175 = vsub_f32(v173, v251);
        __asm { FMLA            S16, S1, V7.S[1] }

        if ((_S16 * _S16) <= (v169 * vaddv_f32(vmul_f32(_D7, _D7))))
        {
          break;
        }

        v180 = ((v175.f32[0] * _D7.f32[1]) - (v175.f32[1] * _D7.f32[0])) / _S16;
        if (v180 >= 0.0 && v180 <= 1.0)
        {
          v182 = ((_D1.f32[0] * -v175.f32[1]) + (v175.f32[0] * _D1.f32[1])) / _S16;
          if (v182 >= 0.0 && v182 <= 1.0)
          {
            goto LABEL_305;
          }
        }

LABEL_304:
        v171 = v162 > ++v163;
        if (v162 == v163)
        {
          goto LABEL_305;
        }
      }

      if ((((v175.f32[0] * _D1.f32[1]) - (v175.f32[1] * _D1.f32[0])) * ((v175.f32[0] * _D1.f32[1]) - (v175.f32[1] * _D1.f32[0]))) > (v169 * vaddv_f32(vmul_f32(v175, v175))))
      {
        goto LABEL_304;
      }

      v184 = vmul_f32(_D1, v175);
      v185 = vmul_f32(_D1, _D7);
      v186 = vdiv_f32(vadd_f32(vzip1_s32(v184, v185), vzip2_s32(v184, v185)), v170);
      v187 = vadd_f32(v186, vdup_lane_s32(v186, 1));
      v188 = vaddv_f32(v186);
      if (vcgt_f32(v186, v187).u8[0])
      {
        v189 = v188;
      }

      else
      {
        v189 = v186.f32[0];
      }

      if (vcgt_f32(v187, v186).u32[0])
      {
        v186.f32[0] = v188;
      }

      if (v189 > 1.0 || v186.f32[0] < 0.0)
      {
        goto LABEL_304;
      }

LABEL_305:
      if (!v171)
      {
        goto LABEL_306;
      }

LABEL_316:
      LODWORD(v14) = v217;
LABEL_317:
      if (*&v268[0] && *&v268[2])
      {
        (*(**&v268[0] + 40))();
      }

LABEL_320:
      ++v11;
    }

    while (v11 != v14);
LABEL_321:
    if (v257[0] && v258)
    {
      (*(*v257[0] + 40))();
    }

    v14 = &v234;
    v11 = v268;
LABEL_325:
    ++v219;
    v3 = v6;
  }

  while (v6 != v217 - 1);
  v11 = v214;
  v16 = v259;
  if ((v209 & 1) == 0)
  {
LABEL_334:
    *a3 = 0;
    *(a3 + 8) = 0;
    bzero((a3 + 16), 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((a3 + 16));
    *(a3 + 728) = 0;
    re::GeomMesh::copy(v11, a3);
    goto LABEL_335;
  }

  *&v300 = 0;
  *&v299 = 0;
  v298 = 0uLL;
  DWORD2(v299) = 0;
  v195 = *&v263[32];
  if (v263[16])
  {
    v195 = &v263[24];
  }

  v196 = *&v263[8];
  if ((*&v263[8] & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_380;
  }

  v197 = 0;
  while (1)
  {
    v199 = *v195++;
    v198 = v199;
    if (v199)
    {
      break;
    }

    v197 -= 64;
    if (!--v196)
    {
      goto LABEL_380;
    }
  }

LABEL_375:
  v201 = __clz(__rbit64(v198));
  v202 = v201 - v197;
  if (v201 + 1 == v197 || v202 >= *(v11 + 40))
  {
LABEL_380:
    v204 = 0;
    v205 = 0;
  }

  else
  {
    do
    {
      LODWORD(v268[0]) = v202;
      re::DynamicArray<int>::add(&v298, v268);
      v207 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v263, v202 + 1);
      v202 = v207;
    }

    while (v207 != -1 && v207 < *(v11 + 40));
    v205 = v300;
    v204 = v299;
  }

  MeshFromFaceSubset = re::internal::extractMeshFromFaceSubset(v11, v205, v204, *(v211 + 1), a3);
  if (v298.i64[0] && v300)
  {
    (*(*v298.i64[0] + 40))(MeshFromFaceSubset);
  }

LABEL_335:
  re::GeomMesh::freeName(v259);
  re::internal::GeomAttributeManager::~GeomAttributeManager((v16 + 56));
  if (*&v259[16] && v261)
  {
    (*(**&v259[16] + 40))(*&v259[16], v261);
  }

  if (*v263 && (v263[16] & 1) == 0)
  {
    (*(**v263 + 40))(*v263, *&v263[32]);
  }

  if (v228 && (v230 & 1) == 0)
  {
    (*(*v228 + 40))(v228, v232);
  }

LABEL_345:
  if (*(&v247 + 1))
  {
    if (v250)
    {
      (*(**(&v247 + 1) + 40))(*(&v247 + 1), v250);
    }

    v250 = 0;
    *(v14 + 144) = 0;
    *(v14 + 152) = 0;
    *(v14 + 136) = 0;
    ++v249;
  }

  if (*(&v244 + 1))
  {
    if (v247)
    {
      (*(**(&v244 + 1) + 40))(*(&v244 + 1), v247);
    }

    *&v247 = 0;
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
    *(v14 + 96) = 0;
    ++v246;
  }

  if (__src[1])
  {
    if (v244)
    {
      (*(*__src[1] + 40))(__src[1], v244);
    }

    *&v244 = 0;
    *(v14 + 64) = 0;
    *(v14 + 72) = 0;
    *(v14 + 56) = 0;
    ++v243;
  }

  result = v237;
  if (v237)
  {
    if (__src[0])
    {
      return (*(*v237 + 40))(v237, __src[0]);
    }
  }

  return result;
}
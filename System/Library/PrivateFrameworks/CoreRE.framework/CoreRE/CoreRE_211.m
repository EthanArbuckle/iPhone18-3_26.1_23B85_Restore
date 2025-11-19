uint64_t re::RealityDataPipe::addAnchorTransformData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 2072);
  v5 = *(a1 + 2040);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 2032), (v4 + 4) >> 2);
    v5 = *(a1 + 2040);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 2048))
  {
    v6 = a1 + 2056;
  }

  else
  {
    v6 = *(a1 + 2064);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 2072);
  ++*(a1 + 2080);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 2072);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 2032, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetAnchorTransformData(re::RealityDataPipe *this)
{
  if (*(this + 259))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 2032, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetAnchorTransformDataArray(re::RealityDataPipe *this)
{
  if (*(this + 259))
  {
    return this + 2032;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addVirtualEnvironmentProbeContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 2128);
  v5 = *(a1 + 2096);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::VirtualEnvironmentProbeContext,4ul>::setBucketsCapacity((a1 + 2088), (v4 + 4) >> 2);
    v5 = *(a1 + 2096);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  if (*(a1 + 2104))
  {
    v6 = a1 + 2112;
  }

  else
  {
    v6 = *(a1 + 2120);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 2128);
  ++*(a1 + 2136);
  v8 = v7 + ((v4 & 3) << 7);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a2 + 48);
  v13 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v13;
  *(v8 + 48) = v12;
  LODWORD(v11) = *(a2 + 96);
  *(v8 + 96) = v11;
  if (v11 == 1)
  {
    v14 = *(a2 + 104);
    *(v8 + 104) = *(v8 + 104) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
    *(v8 + 104) = *(a2 + 104) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
    *(v8 + 112) = *(a2 + 112);
    *(a2 + 104) = 0;
    *(a2 + 112) = &str_67;
  }

  v15 = *(a1 + 2128);
  if (!v15)
  {
LABEL_14:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](a1 + 2088, v15 - 1);
}

unint64_t re::RealityDataPipe::tryGetVirtualEnvironmentProbeContext(re::RealityDataPipe *this)
{
  if (*(this + 266))
  {
    return re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](this + 2088, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetVirtualEnvironmentProbeContextArray(re::RealityDataPipe *this)
{
  if (*(this + 266))
  {
    return this + 2088;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addMXIContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 2184);
  v5 = *(a1 + 2152);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MXIContext,4ul>::setBucketsCapacity((a1 + 2144), (v4 + 4) >> 2);
    v5 = *(a1 + 2152);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 2160))
  {
    v6 = a1 + 2168;
  }

  else
  {
    v6 = *(a1 + 2176);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 2184);
  ++*(a1 + 2192);
  v8 = v7 + 288 * (v4 & 3);
  v9 = *a2;
  v10 = *(a2 + 32);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 32) = v10;
  *v8 = v9;
  v11 = *(a2 + 48);
  *(v8 + 48) = *(v8 + 48) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  *(v8 + 48) = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  *(v8 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = &str_67;
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  v14 = *(a2 + 112);
  *(v8 + 96) = *(a2 + 96);
  *(v8 + 112) = v14;
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 128) = 0;
  *(v8 + 136) = *(a2 + 136);
  *(a2 + 136) = 0;
  v15 = *(v8 + 128);
  *(v8 + 128) = 0;
  *(v8 + 128) = *(a2 + 128);
  *(a2 + 128) = v15;
  v16 = *(v8 + 144);
  *(v8 + 144) = *(a2 + 144);
  *(a2 + 144) = v16;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 160) = *(a2 + 160);
  *(a2 + 160) = 0;
  v17 = *(v8 + 152);
  *(v8 + 152) = 0;
  *(v8 + 152) = *(a2 + 152);
  *(a2 + 152) = v17;
  v18 = *(v8 + 168);
  *(v8 + 168) = *(a2 + 168);
  *(a2 + 168) = v18;
  *(v8 + 208) = 0;
  *(v8 + 200) = 0;
  *(v8 + 184) = 0;
  *(v8 + 192) = 0;
  *(v8 + 176) = 0;
  v19 = *(a2 + 184);
  *(v8 + 176) = *(a2 + 176);
  *(v8 + 184) = v19;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v20 = *(v8 + 192);
  *(v8 + 192) = *(a2 + 192);
  *(a2 + 192) = v20;
  v21 = *(v8 + 208);
  *(v8 + 208) = *(a2 + 208);
  *(a2 + 208) = v21;
  ++*(a2 + 200);
  ++*(v8 + 200);
  *(v8 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  v22 = *(a2 + 224);
  v23 = *(a2 + 240);
  v24 = *(a2 + 272);
  *(v8 + 256) = *(a2 + 256);
  *(v8 + 272) = v24;
  *(v8 + 224) = v22;
  *(v8 + 240) = v23;
  v25 = *(a1 + 2184);
  if (!v25)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::LightInfoArrays,4ul>::operator[](a1 + 2144, v25 - 1);
}

uint64_t re::RealityDataPipe::tryGetMXIContext(re::RealityDataPipe *this)
{
  if (*(this + 273))
  {
    return re::BucketArray<re::LightInfoArrays,4ul>::operator[](this + 2144, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetMXIContextArray(re::RealityDataPipe *this)
{
  if (*(this + 273))
  {
    return this + 2144;
  }

  else
  {
    return 0;
  }
}

void *re::BucketArray<re::DynamicArray<re::RenderProfilerText>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DynamicArray<re::RenderProfilerText>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::DynamicArray<re::RenderProfilerText>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 160, 0);
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

void *re::BucketArray<re::CameraViewDescriptorsPerFrameData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::CameraViewDescriptorsPerFrameData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::CameraViewDescriptorsPerFrameData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 64, 0);
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

void *re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 352, 0);
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

void *re::BucketArray<re::TintContext,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::TintContext,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::TintContext,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 128, 0);
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

uint64_t *re::BucketArray<re::MeshSceneCollection,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshSceneCollection,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::MeshSceneCollection,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 160, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void *re::BucketArray<re::StaticTextInfo,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::StaticTextInfo,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::StaticTextInfo,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 32, 0);
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

void *re::BucketArray<re::FilterViewMeshScenes,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::FilterViewMeshScenes,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::FilterViewMeshScenes,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 160, 0);
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

void *re::BucketArray<re::MeshSortingCollection,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshSortingCollection,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::MeshSortingCollection,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 800, 0);
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

void *re::BucketArray<re::DepthMitigationRenderData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DepthMitigationRenderData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::DepthMitigationRenderData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 560, 0);
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

void *re::BucketArray<re::SceneCRWSReferencePosition,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::SceneCRWSReferencePosition,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::SceneCRWSReferencePosition,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 64, 0);
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

void *re::BucketArray<re::SceneUnderstandingDepthRenderData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::SceneUnderstandingDepthRenderData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::SceneUnderstandingDepthRenderData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 224, 0);
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

uint64_t re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 32 * (a2 & 3);
}

uint64_t re::BucketArray<re::OpenSkyData,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 208 * (a2 & 3);
}

uint64_t re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 320 * (a2 & 3);
}

uint64_t re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 88 * (a2 & 3);
}

uint64_t re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1, i);
      re::DynamicArray<re::VFXScene>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 6992 * (a2 & 3);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 6992 * (a2 & 3);
}

unint64_t re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + (a2 & 3);
}

uint64_t re::BucketArray<re::MeshSortingCollection,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 200 * (a2 & 3);
}

uint64_t re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) - (a2 & 3) + 8 * (a2 & 3);
}

uint64_t re::BucketArray<re::DepthMitigationRenderData,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 140 * (a2 & 3);
}

void *re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 160, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<re::Slice<re::UberClippingParametersEntry>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 64, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::Slice<re::UberClippingParametersEntry>,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<re::SFBSystemShellBlurContext,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 128, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::SFBSystemShellBlurContext,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<re::OpenSkyData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 832, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::OpenSkyData,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 1280, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<re::UIShadowRenderData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 192, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::UIShadowRenderData,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::BucketArray<re::IBLContext,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::IBLContext,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 56 * (v2 & 3);
}

void *re::BucketArray<re::IBLContext,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 224, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::IBLContext,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::BucketArray<re::MeshSceneCollection,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::MeshSceneCollection,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 40 * (v2 & 3);
}

uint64_t re::DynamicArray<re::MeshScene>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::MeshScene>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshScene>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::MeshScene>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshScene>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MeshScene *,re::MeshScene *,re::MeshScene *>(&v31, *(a2 + 32), *(a2 + 32) + 736 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = v9 + 736 * v4;
      v11 = a1[4];
      v12 = 736 * v8;
      do
      {
        v13 = v11 + v12;
        v14 = v9 + v12;
        memcpy((v11 + v12), (v9 + v12), 0x160uLL);
        re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(v11 + v12 + 352, v9 + v12 + 352);
        *(v13 + 416) = *(v9 + v12 + 416);
        v15 = *(v9 + v12 + 424);
        *(v13 + 424) = v15;
        if (v15 == 1)
        {
          *(v13 + 432) = *(v14 + 432);
        }

        v16 = *(v14 + 456);
        *(v13 + 440) = *(v14 + 440);
        *(v13 + 456) = v16;
        v17 = *(v14 + 472);
        v18 = *(v14 + 488);
        v19 = *(v14 + 504);
        *(v13 + 517) = *(v14 + 517);
        *(v13 + 488) = v18;
        *(v13 + 504) = v19;
        *(v13 + 472) = v17;
        v20 = *(v14 + 544);
        *(v13 + 544) = v20;
        if (v20 == 1)
        {
          v21 = v11 + v12;
          v22 = *(v9 + v12 + 576);
          *(v21 + 560) = *(v9 + v12 + 560);
          *(v21 + 576) = v22;
        }

        *(v13 + 592) = *(v14 + 592);
        v23 = *(v14 + 608);
        *(v13 + 608) = v23;
        if (v23 == 1)
        {
          v24 = (v11 + v12);
          v25 = *(v9 + v12 + 624);
          v26 = *(v9 + v12 + 640);
          v27 = *(v9 + v12 + 672);
          v24[41] = *(v9 + v12 + 656);
          v24[42] = v27;
          v24[39] = v25;
          v24[40] = v26;
        }

        v28 = *(v14 + 688);
        v29 = *(v14 + 704);
        *(v13 + 720) = *(v14 + 720);
        *(v13 + 688) = v28;
        *(v13 + 704) = v29;
        v11 += 736;
        v9 += 736;
      }

      while (v14 + 736 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MeshScene *,re::MeshScene *,re::MeshScene *>(&v30, *(a2 + 32), *(a2 + 32) + 736 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = -736 * v4 + 736 * v5;
      v7 = 736 * v4 + a1[4] + 352;
      do
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v7);
        v7 += 736;
        v6 -= 736;
      }

      while (v6);
    }
  }

  a1[2] = v4;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MeshScene *,re::MeshScene *,re::MeshScene *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    memcpy((a4 + v7), (a2 + v7), 0x160uLL);
    if (a4 != a2)
    {
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::copy((v8 + 352), v9 + 352);
    }

    *(v8 + 416) = *(v9 + 416);
    if (*(v8 + 424))
    {
      if (*(v9 + 424))
      {
        *(a4 + v7 + 432) = *(a2 + v7 + 432);
      }

      else
      {
        *(v8 + 424) = 0;
      }
    }

    else if (*(v9 + 424))
    {
      *(v8 + 424) = 1;
      *(a4 + v7 + 432) = *(a2 + v7 + 432);
    }

    v10 = a4 + v7;
    v11 = (a4 + v7 + 440);
    v12 = *(v9 + 456);
    *v11 = *(v9 + 440);
    v11[1] = v12;
    v13 = *(v9 + 472);
    v14 = *(v9 + 488);
    v15 = *(v9 + 504);
    *(v11 + 77) = *(v9 + 517);
    v11[3] = v14;
    v11[4] = v15;
    v11[2] = v13;
    if (*(a4 + v7 + 544))
    {
      if (*(v9 + 544))
      {
        v16 = a4 + v7;
        v17 = *(a2 + v7 + 576);
        *(v16 + 560) = *(a2 + v7 + 560);
        *(v16 + 576) = v17;
      }

      else
      {
        *(v10 + 544) = 0;
      }
    }

    else if (*(v9 + 544))
    {
      *(v10 + 544) = 1;
      v18 = a4 + v7;
      v19 = *(a2 + v7 + 576);
      *(v18 + 560) = *(a2 + v7 + 560);
      *(v18 + 576) = v19;
    }

    v20 = a4 + v7;
    *(a4 + v7 + 592) = *(v9 + 592);
    if (*(a4 + v7 + 608))
    {
      if (*(v9 + 608))
      {
        v21 = (a4 + v7);
        v22 = *(a2 + v7 + 624);
        v23 = *(a2 + v7 + 640);
        v24 = *(a2 + v7 + 672);
        v21[41] = *(a2 + v7 + 656);
        v21[42] = v24;
        v21[39] = v22;
        v21[40] = v23;
      }

      else
      {
        *(v20 + 608) = 0;
      }
    }

    else if (*(v9 + 608))
    {
      *(v20 + 608) = 1;
      v25 = (a4 + v7);
      v26 = *(a2 + v7 + 624);
      v27 = *(a2 + v7 + 640);
      v28 = *(a2 + v7 + 672);
      v25[41] = *(a2 + v7 + 656);
      v25[42] = v28;
      v25[39] = v26;
      v25[40] = v27;
    }

    v29 = a4 + v7;
    v30 = *(v9 + 688);
    v31 = *(v9 + 704);
    *(v29 + 720) = *(v9 + 720);
    *(v29 + 688) = v30;
    *(v29 + 704) = v31;
    v7 += 736;
  }

  while (v9 + 736 != v6);
  return v6;
}

uint64_t re::BucketArray<re::DynamicArray<re::RenderGraphFileProvider>,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 40 * (v2 & 3);
}

void *re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 27968, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 4, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 28, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<re::DepthMitigationReductionRenderData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 32, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::DepthMitigationReductionRenderData,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<re::VirtualEnvironmentProbeContext,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 512, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::VirtualEnvironmentProbeContext,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::BucketArray<re::MXIContext,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 1152, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::MXIContext,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::allocInfo_RenderGraphSelectionParams(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_508))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEA50, "RenderGraphSelectionParams");
    __cxa_guard_release(&_MergedGlobals_508);
  }

  return &unk_1EE1BEA50;
}

void re::initInfo_RenderGraphSelectionParams(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x5F078B5A7D39B3B4;
  v10[1] = "RenderGraphSelectionParams";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1BE9E0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BE9E0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BE9D8 = v8;
      __cxa_guard_release(&qword_1EE1BE9E0);
    }
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1BE9D8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSelectionParams>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSelectionParams>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSelectionParams>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSelectionParams>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

float32x4_t re::internal::defaultConstruct<re::RenderGraphSelectionParams>(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  a3->i64[0] = &unk_1F5D10168;
  a3->i64[1] = -1;
  a3[1].i64[0] = -1;
  a3[1].i64[1] = 0xFFFFFFFF00000000;
  a3[2].i32[0] = -1;
  v3.i64[0] = 0x3F0000003FLL;
  v3.i64[1] = 0x3F0000003FLL;
  result = vnegq_f32(v3);
  a3[3] = result;
  a3[4] = result;
  a3[5] = result;
  a3[6] = result;
  a3[7] = result;
  a3[8] = result;
  a3[9] = result;
  a3[10] = result;
  return result;
}

float32x4_t re::internal::defaultConstructV2<re::RenderGraphSelectionParams>(float32x4_t *a1)
{
  a1->i64[0] = &unk_1F5D10168;
  a1->i64[1] = -1;
  a1[1].i64[0] = -1;
  a1[1].i64[1] = 0xFFFFFFFF00000000;
  a1[2].i32[0] = -1;
  v1.i64[0] = 0x3F0000003FLL;
  v1.i64[1] = 0x3F0000003FLL;
  result = vnegq_f32(v1);
  a1[3] = result;
  a1[4] = result;
  a1[5] = result;
  a1[6] = result;
  a1[7] = result;
  a1[8] = result;
  a1[9] = result;
  a1[10] = result;
  return result;
}

re::RenderGraphSelectionEmitter *re::RenderGraphSelectionEmitter::RenderGraphSelectionEmitter(re::RenderGraphSelectionEmitter *this)
{
  *(this + 8) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 124) = 0x7FFFFFFFLL;
  *this = &unk_1F5D10100;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = 0;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 260) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 46) = 0;
  *(this + 276) = 0x7FFFFFFFLL;
  *(this + 36) = &unk_1F5D10168;
  *(this + 37) = -1;
  *(this + 38) = -1;
  *(this + 39) = 0xFFFFFFFF00000000;
  *(this + 80) = -1;
  v2.i64[0] = 0x3F0000003FLL;
  v2.i64[1] = 0x3F0000003FLL;
  v3 = vnegq_f32(v2);
  *(this + 21) = v3;
  *(this + 22) = v3;
  *(this + 23) = v3;
  *(this + 24) = v3;
  *(this + 25) = v3;
  *(this + 26) = v3;
  *(this + 27) = v3;
  *(this + 28) = v3;
  re::StringID::invalid((this + 464));
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 62) = &str_67;
  return this;
}

uint64_t re::RenderGraphSelectionEmitter::handleRenderFrameData(uint64_t this, re::RenderFrame *a2)
{
  v3 = this;
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 74);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 35);
    while (1)
    {
      v7 = *v6;
      v6 += 18;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 74);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 35);
    v24 = *(a2 + 74);
    while (1)
    {
      v9 = v8 + 72 * v5;
      v10 = **(re::RenderFrameData::stream((a2 + 264), (v9 + 8)) + 48);
      this = (*(v10 + 488))();
      v12 = this;
      if (*(v3 + 488) <= 1uLL)
      {
        v13 = *(v3 + 496);
        if (v13)
        {
          if (!*v13)
          {
            break;
          }
        }
      }

      if (this)
      {
        if (!*(this + 40))
        {
          re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 761, v24);
          _os_crash();
          __break(1u);
LABEL_42:
          re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 761);
          _os_crash();
          __break(1u);
LABEL_43:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        v14 = re::BucketArray<re::SceneName,4ul>::operator[](this, v11);
        this = re::StringID::operator==((v14 + 8), (v3 + 488));
        if (this)
        {
          if (!*(v12 + 40))
          {
            goto LABEL_42;
          }

          this = re::BucketArray<re::SceneName,4ul>::operator[](v12, v15);
          if (!*(this + 24))
          {
            break;
          }
        }
      }

      if (*(a2 + 74) <= (v5 + 1))
      {
        v22 = v5 + 1;
      }

      else
      {
        v22 = *(a2 + 74);
      }

      v8 = *(a2 + 35);
      while (v22 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 72 * v5) & 0x80000000) != 0)
        {
          goto LABEL_37;
        }
      }

      LODWORD(v5) = v22;
LABEL_37:
      if (v5 == v4)
      {
        return this;
      }
    }

    strcpy(v29, "Selection");
    strcpy(v28, "Selection");
    if ((atomic_load_explicit(&qword_1EE1BE9F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE9F8))
    {
      qword_1EE1BE9F0 = re::getCombinedScopeHash(v29, v28, v23);
      __cxa_guard_release(&qword_1EE1BE9F8);
    }

    v26[0] = &unk_1F5D10710;
    v26[1] = v3;
    v27 = v26;
    v16 = re::RenderFrameData::stream((a2 + 264), (v9 + 8));
    re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v16, &v25, &v30);
    {
LABEL_24:
      if (v27 == v26)
      {
        (*(*v27 + 32))(v27);
      }

      else if (v27)
      {
        (*(*v27 + 40))();
      }

      v30 = v29[0];
      v31 = v29[1];
      v32 = v28[0];
      v33 = v28[1];
      operator new();
    }

    v20 = 0;
    while (1)
    {
      v21 = re::BucketArray<unsigned long,4ul>::operator[](v18, v20);
      if (!v27)
      {
        goto LABEL_43;
      }

      (*(*v27 + 48))(v27, a2, a2 + 32, v21);
      if (v19 == ++v20)
      {
        goto LABEL_24;
      }
    }
  }

  return this;
}

re *re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphSelectionEmitter *this, re::RenderGraphManager *a2, AssetService *a3)
{
  v12[5] = *MEMORY[0x1E69E9840];
  result = re::FontID::isValid((this + 464));
  if ((result & 1) == 0)
  {
    v6 = re::globalAllocators(result);
    v7 = v6[2];
    v12[0] = &unk_1F5D101A8;
    v12[1] = this;
    v12[3] = v7;
    v12[4] = v12;
    v8 = re::globalAllocators(v6)[2];
    v11[0] = &unk_1F5D10328;
    v11[1] = this;
    v11[3] = v8;
    v11[4] = v11;
    re::RenderGraphManager::addProvider(a2, "Selection", v12, v11, 0, v10);
    v9 = re::StringID::operator=((this + 464), v10);
    *(this + 60) = v10[2];
    if (v10[0])
    {
      if (v10[0])
      {
      }
    }

    v10[0] = 0;
    v10[1] = &str_67;
    re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v11);
    return re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v12);
  }

  return result;
}

void re::RenderGraphSelectionEmitter::unregisterProviders(const StringID *this, re::RenderGraphManager *a2)
{
  if (re::FontID::isValid(&this[29]))
  {
    re::StringID::StringID(v5, this + 29);
    v5[2] = *&this[30].var0;
    v4 = re::RenderGraphManager::removeProvider(a2, v5);
    if (v5[0])
    {
      if (v5[0])
      {
      }
    }

    v5[0] = 0;
    v5[1] = &str_67;
    re::ProviderHandle::invalidate(&this[29]);
  }
}

void re::ProviderHandle::invalidate(re::ProviderHandle *this)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  re::StringID::invalid(v3);
  v4 = 0;
  v2 = re::StringID::operator=(this, v3);
  *(this + 2) = v4;
  if (v3[0])
  {
    if (v3[0])
    {
    }
  }
}

uint64_t re::RenderGraphSelectionEmitter::addSelectionCompleteCallback(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[3] = 0;
  v6 = v4;
  std::function<void ()(re::Slice<unsigned long long> const&)>::operator=(v7, a3);
  re::DynamicArray<re::SelectionCompleteHandler>::add((a1 + 160), &v6);
  return std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](v7);
}

void *std::function<void ()(re::Slice<unsigned long long> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t re::DynamicArray<re::SelectionCompleteHandler>::add(_anonymous_namespace_ *this, void *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SelectionCompleteHandler>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 40 * v4);
  *v5 = *a2;
  result = std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::__value_func[abi:nn200100]((v5 + 1), (a2 + 1));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderGraphSelectionEmitter::addSelectionConcludeCallback(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[3] = 0;
  v6 = v4;
  std::function<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::operator=(v7, a3);
  re::DynamicArray<re::SelectionConcludeHandler>::add((a1 + 200), &v6);
  return std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](v7);
}

void *std::function<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t re::DynamicArray<re::SelectionConcludeHandler>::add(_anonymous_namespace_ *this, void *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SelectionConcludeHandler>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 40 * v4);
  *v5 = *a2;
  result = std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::__value_func[abi:nn200100]((v5 + 1), (a2 + 1));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderGraphSelectionEmitter::setFilteredEntityIDSet(re::RenderGraphSelectionEmitter *this, const __CFArray *a2)
{
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 240);
  result = CFArrayGetCount(a2);
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      valuePtr = 0;
      result = CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, &valuePtr);
      if (result)
      {
        v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (valuePtr ^ (valuePtr >> 30))) ^ ((0xBF58476D1CE4E5B9 * (valuePtr ^ (valuePtr >> 30))) >> 27));
        v9 = v8 ^ (v8 >> 31);
        v10 = *(this + 66);
        if (v10)
        {
          v11 = v9 % v10;
          v12 = *(*(this + 31) + 4 * (v9 % v10));
          if (v12 != 0x7FFFFFFF)
          {
            v13 = *(this + 32);
            while (*(v13 + 24 * v12 + 16) != valuePtr)
            {
              LODWORD(v12) = *(v13 + 24 * v12 + 8) & 0x7FFFFFFF;
              if (v12 == 0x7FFFFFFF)
              {
                goto LABEL_11;
              }
            }

            continue;
          }
        }

        else
        {
          LODWORD(v11) = 0;
        }

LABEL_11:
        result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(this + 240, v11, v9, &valuePtr, &valuePtr);
        ++*(this + 70);
      }
    }
  }

  return result;
}

void *re::allocInfo_RenderGraphSelectionEmitter(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEA00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEA00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEAE0, "RenderGraphSelectionEmitter");
    __cxa_guard_release(&qword_1EE1BEA00);
  }

  return &unk_1EE1BEAE0;
}

void re::initInfo_RenderGraphSelectionEmitter(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x81E9DFF0C63BCB34;
  v14[1] = "RenderGraphSelectionEmitter";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BEA08, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BEA08);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphEmitterBase(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphEmitterBase";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BEA40 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "selectionMaterial";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x8800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BEA48 = v12;
      __cxa_guard_release(&qword_1EE1BEA08);
    }
  }

  *(this + 2) = 0x20000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BEA40;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSelectionEmitter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSelectionEmitter>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSelectionEmitter>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSelectionEmitter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultDestruct<re::RenderGraphSelectionEmitter>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::StringID::destroyString((a3 + 61));
  re::StringID::destroyString((a3 + 58));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a3 + 30);
  re::DynamicArray<re::SelectionConcludeHandler>::deinit((a3 + 25));
  re::DynamicArray<re::SelectionCompleteHandler>::deinit((a3 + 20));
  re::AssetHandle::~AssetHandle((a3 + 17));
  *a3 = &unk_1F5D151C0;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3 + 11);
  re::DynamicArray<re::BindPointAndPath>::deinit((a3 + 6));

  return re::BindNode::deinit((a3 + 2));
}

double re::internal::defaultDestructV2<re::RenderGraphSelectionEmitter>(uint64_t *a1)
{
  re::StringID::destroyString((a1 + 61));
  re::StringID::destroyString((a1 + 58));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 30);
  re::DynamicArray<re::SelectionConcludeHandler>::deinit((a1 + 25));
  re::DynamicArray<re::SelectionCompleteHandler>::deinit((a1 + 20));
  re::AssetHandle::~AssetHandle((a1 + 17));
  *a1 = &unk_1F5D151C0;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 11);
  re::DynamicArray<re::BindPointAndPath>::deinit((a1 + 6));

  return re::BindNode::deinit((a1 + 2));
}

void re::RenderGraphSelectionEmitter::~RenderGraphSelectionEmitter(re::RenderGraphSelectionEmitter *this)
{
  re::StringID::destroyString((this + 488));
  re::StringID::destroyString((this + 464));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 30);
  re::DynamicArray<re::SelectionConcludeHandler>::deinit(this + 200);
  re::DynamicArray<re::SelectionCompleteHandler>::deinit(this + 160);
  re::AssetHandle::~AssetHandle((this + 136));
  *this = &unk_1F5D151C0;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 11);
  re::DynamicArray<re::BindPointAndPath>::deinit(this + 48);
  re::BindNode::deinit((this + 16));
}

{
  re::StringID::destroyString((this + 488));
  re::StringID::destroyString((this + 464));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 30);
  re::DynamicArray<re::SelectionConcludeHandler>::deinit(this + 200);
  re::DynamicArray<re::SelectionCompleteHandler>::deinit(this + 160);
  re::AssetHandle::~AssetHandle((this + 136));
  *this = &unk_1F5D151C0;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 11);
  re::DynamicArray<re::BindPointAndPath>::deinit(this + 48);
  re::BindNode::deinit((this + 16));

  JUMPOUT(0x1E6906520);
}

unint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::operator()(uint64_t a1, const char **a2, const char **a3, unint64_t *a4)
{
  v164 = *MEMORY[0x1E69E9840];
  v6 = 0x9E3779B97F4A7C17;
  v7 = *a2;
  v8 = *a3;
  v9 = *(a1 + 8);
  v10 = strlen(*a2);
  if (v10)
  {
    MurmurHash3_x64_128(v7, v10, 0, &v156);
    v11 = (v157 - 0x61C8864680B583E9 + (v156 << 6) + (v156 >> 2)) ^ v156;
  }

  else
  {
    v11 = 0;
  }

  v12 = strlen(v8);
  if (v12)
  {
    MurmurHash3_x64_128(v8, v12, 0, &v156);
    v13 = ((v157 - 0x61C8864680B583E9 + (v156 << 6) + (v156 >> 2)) ^ v156) - 0x61C8864680B583E9;
  }

  else
  {
    v13 = 0x9E3779B97F4A7C17;
  }

  v14 = ((v11 >> 2) + (v11 << 6) + v13) ^ v11;
  v15 = "N2re16SkyboxMeshIDDataE";
  if (("N2re16SkyboxMeshIDDataE" & 0x8000000000000000) != 0)
  {
    v16 = ("N2re16SkyboxMeshIDDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  v19 = (v14 - 0x61C8864680B583E9);
  v20 = (a4 + 12);
  if (!a4[12])
  {
    goto LABEL_18;
  }

  v21 = (&v19[4 * v15] + (v15 >> 2)) ^ v15;
  v22 = *(a4[13] + 4 * (v21 % *(a4 + 30)));
  if (v22 == 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  v23 = a4[14];
  while (*(v23 + 24 * v22 + 8) != v21)
  {
    v22 = *(v23 + 24 * v22) & 0x7FFFFFFF;
    if (v22 == 0x7FFFFFFF)
    {
      goto LABEL_18;
    }
  }

  v24 = *(v23 + 24 * v22 + 16);
  if (v24)
  {
    v25 = 0;
    v4 = *(v24 + 8);
  }

  else
  {
LABEL_18:
    v25 = 1;
  }

  v148 = re::RenderGraphDataStore::get<re::CurrentSelectionData>((a4 + 4), v14);
  v149 = v8;
  v151 = *(*(v148 + 8) + 840);
  v150 = *(v151 + 40);
  v147 = a4 + 12;
  if (!v150)
  {
    goto LABEL_39;
  }

  v145 = v19;
  v146 = a4;
  v20 = 0;
  v26 = 0;
  a4 = &v156;
  v19 = v160;
  while (1)
  {
    v27 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v151, v26);
    v28 = *(v27 + 16);
    if (v28)
    {
      break;
    }

LABEL_36:
    if (++v26 == v150)
    {
      v39 = 8 * v20;
      v6 = 0x9E3779B97F4A7C17;
      v19 = v145;
      a4 = v146;
      v20 = v147;
      goto LABEL_40;
    }
  }

  v6 = *(v27 + 32);
  v29 = v6 + 736 * v28;
  while (1)
  {
    if ((v25 & 1) == 0 && *(v6 + 512) == v4 || re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v9 + 240, (v6 + 512)))
    {
      goto LABEL_35;
    }

    v156 = v6;
    v31 = *(v6 + 112);
    v157 = *v31;
    v158 = v31[1];
    v32 = *(v6 + 8);
    *&v160[0] = 0;
    *(&v160[0] + 1) = v32;
    v160[1] = xmmword_1E3047670;
    v160[2] = xmmword_1E3047680;
    v160[3] = xmmword_1E30476A0;
    v160[4] = xmmword_1E30474D0;
    v161 = 0;
    v162 = 0;
    if (!*(v6 + 56))
    {
      break;
    }

    v163 = *(v6 + 48);
    v33 = *(&v163 + 1);
    if (*(&v163 + 1))
    {
      v34 = v163;
      goto LABEL_30;
    }

LABEL_35:
    v6 += 736;
    if (v6 == v29)
    {
      goto LABEL_36;
    }
  }

  *&v163 = v160;
  *(&v163 + 1) = 1;
  v34 = v160;
  v33 = 1;
LABEL_30:
  v35 = v34 + 1;
  v36 = v33;
  while (v36)
  {
    v37 = *(v35 - 1);
    v38 = *v35 - v37;
    if (*v35 < v37)
    {
      v38 = 0;
    }

    v20 += v38;
    v35 += 12;
    if (!--v36)
    {
      goto LABEL_35;
    }
  }

  re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v33 - 1, v33);
  _os_crash();
  __break(1u);
LABEL_39:
  v39 = 0;
LABEL_40:
  if (([*(a4[1] + 208) supportsFamily:1007] & 1) == 0)
  {
    [*(a4[1] + 208) supportsFamily:2002];
  }

  v40 = "N2re27SelectionDrawCallBufferDataE";
  if (("N2re27SelectionDrawCallBufferDataE" & 0x8000000000000000) != 0)
  {
    v41 = ("N2re27SelectionDrawCallBufferDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v42 = 5381;
    do
    {
      v40 = v42;
      v43 = *v41++;
      v42 = (33 * v42) ^ v43;
    }

    while (v43);
  }

  v156 = (&v19[4 * v40] + (v40 >> 2)) ^ v40;
  v44 = (*(*a4[5] + 32))(a4[5], 16, 8);
  *v44 = &unk_1F5D10258;
  v44[1] = v39;
  v155 = v44;
  v45 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v20, &v156, &v155);
  v46 = a4[49];
  v155 = 0;
  {
    re::introspect<re::CameraData>(BOOL)::info = re::introspect_CameraData(0);
  }

  v154 = re::introspect<re::CameraData>(BOOL)::info;
  v47 = strlen(*(re::introspect<re::CameraData>(BOOL)::info + 6));
  if (v47)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraData>(BOOL)::info + 6), v47, 0, &v156);
    v48 = (v157 + v6 + (v156 << 6) + (v156 >> 2)) ^ v156;
  }

  else
  {
    v48 = 0;
  }

  v155 = v48;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace((a4 + 26), &v155, &v154);
  v156 = (&v19[4 * v155] + (v155 >> 2)) ^ v155;
  v49 = (*(*a4[5] + 32))(a4[5], 960, 16);
  v154 = re::CameraData::CameraData(v49, v46);
  v50 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v20, &v156, &v154);
  v51 = *(v148 + 8);
  *(v50 + 840) = v51[105];
  *(v50 + 848) = v51[106];
  re::DynamicInlineArray<re::RenderCamera,2ul>::operator=((v50 + 48), v51 + 6);
  v52 = *(v148 + 8);
  if (v50 != v52)
  {
    re::DynamicInlineArray<re::Projection,2ul>::copy((v50 + 128), (v52 + 128));
    ++*(v50 + 136);
  }

  v53 = (*(v9 + 308) * *(v9 + 304));
  v54 = *(v45 + 8);
  if (v54)
  {
    if (v149)
    {
      v55 = *v149;
      if (*v149)
      {
        v56 = v149[1];
        if (v56)
        {
          v57 = (v149 + 2);
          do
          {
            v55 = 31 * v55 + v56;
            v58 = *v57++;
            v56 = v58;
          }

          while (v58);
        }

        v55 &= ~0x8000000000000000;
      }
    }

    else
    {
      v55 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v155 = v55;
    v59 = *(*a4 + 296);
    LOBYTE(v158) = 0;
    HIDWORD(v158) = 1065353216;
    v160[0] = xmmword_1E3062D70;
    v159 = 0xFFFFFFFF00000000;
    v157 = v54;
    LODWORD(v156) = 2;
    v154 = 0x2618A8D597CCFD23;
    v152 = 0x2618A8D597CCFD23;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v59, &v155, &v154, &v152, a4, &v156, &v153, 0);
  }

  if (v53)
  {
    v60 = v19;
    v61 = 16 * v53;
    v62 = *(v50 + 48) * 16 * v53;
    if (v149)
    {
      v63 = *v149;
      if (*v149)
      {
        v64 = v149[1];
        if (v64)
        {
          v65 = (v149 + 2);
          do
          {
            v63 = 31 * v63 + v64;
            v66 = *v65++;
            v64 = v66;
          }

          while (v66);
        }

        v63 &= ~0x8000000000000000;
      }
    }

    else
    {
      v63 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v155 = v63;
    v67 = *(*a4 + 296);
    LOBYTE(v158) = 0;
    HIDWORD(v158) = 1065353216;
    v160[0] = xmmword_1E3062D70;
    v159 = 0xFFFFFFFF00000000;
    v157 = v62;
    LODWORD(v156) = 2;
    v154 = 0x211811B8C8C65228;
    v152 = 0x211811B8C8C65228;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v67, &v155, &v154, &v152, a4, &v156, &v153, 0);
    v68 = *(v50 + 48) * v61;
    if (v149)
    {
      v69 = *v149;
      if (*v149)
      {
        v70 = v149[1];
        if (v70)
        {
          v71 = (v149 + 2);
          do
          {
            v69 = 31 * v69 + v70;
            v72 = *v71++;
            v70 = v72;
          }

          while (v72);
        }

        v69 &= ~0x8000000000000000;
      }
    }

    else
    {
      v69 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v155 = v69;
    v73 = *(*a4 + 296);
    LOBYTE(v158) = 0;
    HIDWORD(v158) = 1065353216;
    v160[0] = xmmword_1E3062D70;
    v159 = 0xFFFFFFFF00000000;
    v157 = v68;
    LODWORD(v156) = 2;
    v154 = 0x211811B8FDAC8D69;
    v152 = 0x211811B8FDAC8D69;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v73, &v155, &v154, &v152, a4, &v156, &v153, 0);
    v74 = *(v50 + 48) * v61;
    if (v149)
    {
      v75 = *v149;
      if (*v149)
      {
        v76 = v149[1];
        if (v76)
        {
          v77 = (v149 + 2);
          do
          {
            v75 = 31 * v75 + v76;
            v78 = *v77++;
            v76 = v78;
          }

          while (v78);
        }

        v75 &= ~0x8000000000000000;
      }
    }

    else
    {
      v75 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v155 = v75;
    v79 = *(*a4 + 296);
    LOBYTE(v158) = 0;
    HIDWORD(v158) = 1065353216;
    v160[0] = xmmword_1E3062D70;
    v159 = 0xFFFFFFFF00000000;
    v157 = v74;
    LODWORD(v156) = 2;
    v154 = 0x211811B93292C8AALL;
    v152 = 0x211811B93292C8AALL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v79, &v155, &v154, &v152, a4, &v156, &v153, 0);
    v80 = *(v50 + 48) * v61;
    if (v149)
    {
      v81 = *v149;
      if (*v149)
      {
        v82 = v149[1];
        if (v82)
        {
          v83 = (v149 + 2);
          do
          {
            v81 = 31 * v81 + v82;
            v84 = *v83++;
            v82 = v84;
          }

          while (v84);
        }

        v81 &= ~0x8000000000000000;
      }
    }

    else
    {
      v81 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v155 = v81;
    v85 = *(*a4 + 296);
    LOBYTE(v158) = 0;
    HIDWORD(v158) = 1065353216;
    v160[0] = xmmword_1E3062D70;
    v159 = 0xFFFFFFFF00000000;
    v157 = v80;
    LODWORD(v156) = 2;
    v154 = 0x211811B9677903EBLL;
    v152 = 0x211811B9677903EBLL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v85, &v155, &v154, &v152, a4, &v156, &v153, 0);
    v86 = *(v50 + 48) * v61;
    if (v149)
    {
      v87 = *v149;
      if (*v149)
      {
        v88 = v149[1];
        if (v88)
        {
          v89 = (v149 + 2);
          do
          {
            v87 = 31 * v87 + v88;
            v90 = *v89++;
            v88 = v90;
          }

          while (v90);
        }

        v87 &= ~0x8000000000000000;
      }
    }

    else
    {
      v87 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v155 = v87;
    v91 = *(*a4 + 296);
    LOBYTE(v158) = 0;
    HIDWORD(v158) = 1065353216;
    v160[0] = xmmword_1E3062D70;
    v159 = 0xFFFFFFFF00000000;
    v157 = v86;
    LODWORD(v156) = 2;
    v154 = 0x211811B99C5F3F2CLL;
    v152 = 0x211811B99C5F3F2CLL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v91, &v155, &v154, &v152, a4, &v156, &v153, 0);
    v92 = *(v50 + 48) * v61;
    if (v149)
    {
      v93 = *v149;
      if (*v149)
      {
        v94 = v149[1];
        if (v94)
        {
          v95 = (v149 + 2);
          do
          {
            v93 = 31 * v93 + v94;
            v96 = *v95++;
            v94 = v96;
          }

          while (v96);
        }

        v93 &= ~0x8000000000000000;
      }
    }

    else
    {
      v93 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v155 = v93;
    v97 = *(*a4 + 296);
    LOBYTE(v158) = 0;
    HIDWORD(v158) = 1065353216;
    v160[0] = xmmword_1E3062D70;
    v159 = 0xFFFFFFFF00000000;
    v157 = v92;
    LODWORD(v156) = 2;
    v154 = 0x211811B9D1457A6DLL;
    v152 = 0x211811B9D1457A6DLL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v97, &v155, &v154, &v152, a4, &v156, &v153, 0);
    v98 = *(v50 + 48) * v61;
    if (v149)
    {
      v99 = *v149;
      if (*v149)
      {
        v100 = v149[1];
        if (v100)
        {
          v101 = (v149 + 2);
          do
          {
            v99 = 31 * v99 + v100;
            v102 = *v101++;
            v100 = v102;
          }

          while (v102);
        }

        v99 &= ~0x8000000000000000;
      }
    }

    else
    {
      v99 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v155 = v99;
    v103 = *(*a4 + 296);
    LOBYTE(v158) = 0;
    HIDWORD(v158) = 1065353216;
    v160[0] = xmmword_1E3062D70;
    v159 = 0xFFFFFFFF00000000;
    v157 = v98;
    LODWORD(v156) = 2;
    v154 = 0x211811BA062BB5AELL;
    v152 = 0x211811BA062BB5AELL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v103, &v155, &v154, &v152, a4, &v156, &v153, 0);
    v104 = *(v50 + 48) * v61;
    if (v149)
    {
      v105 = *v149;
      v19 = v60;
      if (*v149)
      {
        v106 = v149[1];
        if (v106)
        {
          v107 = (v149 + 2);
          do
          {
            v105 = 31 * v105 + v106;
            v108 = *v107++;
            v106 = v108;
          }

          while (v108);
        }

        v105 &= ~0x8000000000000000;
      }
    }

    else
    {
      v105 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = v60;
    }

    v155 = v105;
    v109 = *(*a4 + 296);
    LOBYTE(v158) = 0;
    HIDWORD(v158) = 1065353216;
    v160[0] = xmmword_1E3062D70;
    v159 = 0xFFFFFFFF00000000;
    v157 = v104;
    LODWORD(v156) = 2;
    v154 = 0x211811BA3B11F0EFLL;
    v152 = 0x211811BA3B11F0EFLL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v109, &v155, &v154, &v152, a4, &v156, &v153, 0);
    v20 = v147;
  }

  v155 = 0;
  if ((atomic_load_explicit(&qword_1EE1BEA18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEA18))
  {
    qword_1EE1BEA10 = re::internal::getOrCreateInfo("RenderGraphSelectionParams", re::allocInfo_RenderGraphSelectionParams, re::initInfo_RenderGraphSelectionParams, &unk_1EE1BE9E8, 0);
    __cxa_guard_release(&qword_1EE1BEA18);
  }

  v154 = qword_1EE1BEA10;
  v110 = strlen(*(qword_1EE1BEA10 + 48));
  if (v110)
  {
    MurmurHash3_x64_128(*(qword_1EE1BEA10 + 48), v110, 0, &v156);
    v111 = (v157 + v6 + (v156 << 6) + (v156 >> 2)) ^ v156;
  }

  else
  {
    v111 = 0;
  }

  v155 = v111;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace((a4 + 26), &v155, &v154);
  v156 = (&v19[4 * v155] + (v155 >> 2)) ^ v155;
  v112 = (*(*a4[5] + 32))(a4[5], 176, 16);
  *v112 = &unk_1F5D10168;
  v114 = *(v9 + 312);
  v113 = *(v9 + 328);
  *(v112 + 8) = *(v9 + 296);
  *(v112 + 24) = v114;
  *(v112 + 40) = v113;
  v115 = *(v9 + 376);
  v116 = *(v9 + 392);
  v117 = *(v9 + 360);
  *(v112 + 56) = *(v9 + 344);
  *(v112 + 104) = v116;
  *(v112 + 88) = v115;
  *(v112 + 72) = v117;
  v119 = *(v9 + 424);
  v118 = *(v9 + 440);
  v120 = *(v9 + 456);
  *(v112 + 120) = *(v9 + 408);
  *(v112 + 168) = v120;
  *(v112 + 152) = v118;
  *(v112 + 136) = v119;
  v154 = v112;
  v121 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v20, &v156, &v154);
  v122 = re::globalAllocators(v121);
  v123 = (*(*v122[2] + 32))(v122[2], 40, 8);
  v124 = v123;
  *(v123 + 32) = 0;
  *(v123 + 8) = 0;
  *(v123 + 16) = 0;
  *v123 = 0;
  v125 = "N2re22DrawCallIdentifierDataE";
  *(v123 + 24) = 0;
  if (("N2re22DrawCallIdentifierDataE" & 0x8000000000000000) != 0)
  {
    v126 = ("N2re22DrawCallIdentifierDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v127 = 5381;
    do
    {
      v125 = v127;
      v128 = *v126++;
      v127 = (33 * v127) ^ v128;
    }

    while (v128);
  }

  v156 = (&v19[4 * v125] + (v125 >> 2)) ^ v125;
  v129 = re::globalAllocators(v123);
  v130 = (*(*v129[2] + 32))(v129[2], 16, 8);
  *v130 = &unk_1F5D10298;
  v130[1] = v124;
  v155 = v130;
  v131 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew((a4 + 6), &v156, &v155);
  v132 = *(*v131 + 8);
  v159 = re::globalAllocators(v131)[2];
  v133 = (*(*v159 + 32))(v159, 32, 0);
  *v133 = &unk_1F5D102C0;
  v133[1] = v9;
  v133[2] = v132;
  v133[3] = a4;
  *&v160[0] = v133;
  re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((a4 + 507), &v156);
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(&v156);
  if (!*(v45 + 8))
  {
    return 0;
  }

  v134 = *(re::AssetHandle::assetInfo((v9 + 136)) + 10);
  if (v134 == -1)
  {
    v134 = 0;
  }

  v135 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v134 ^ (v134 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v134 ^ (v134 >> 30))) >> 27));
  v136 = 0xBF58476D1CE4E5B9 * (*(v9 + 316) ^ (*(v9 + 316) >> 30));
  v137 = (0x94D049BB133111EBLL * (v136 ^ (v136 >> 27))) ^ ((0x94D049BB133111EBLL * (v136 ^ (v136 >> 27))) >> 31);
  v138 = 0xBF58476D1CE4E5B9 * (*(v9 + 320) ^ (*(v9 + 320) >> 30));
  v139 = (v6 + ((v135 ^ (v135 >> 31)) << 6) + ((v135 ^ (v135 >> 31)) >> 2) + ((((0x94D049BB133111EBLL * (v138 ^ (v138 >> 27))) ^ ((0x94D049BB133111EBLL * (v138 ^ (v138 >> 27))) >> 31)) + v6 + (v137 << 6) + (v137 >> 2)) ^ v137)) ^ v135 ^ (v135 >> 31);
  v140 = 0xBF58476D1CE4E5B9 * (*(v9 + 304) ^ (*(v9 + 304) >> 30));
  v141 = (0x94D049BB133111EBLL * (v140 ^ (v140 >> 27))) ^ ((0x94D049BB133111EBLL * (v140 ^ (v140 >> 27))) >> 31);
  v142 = *(v9 + 308) ^ (*(v9 + 308) >> 30);
  v143 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v142) ^ ((0xBF58476D1CE4E5B9 * v142) >> 27));
  return ((((v143 ^ (v143 >> 31)) + v6 + (v141 << 6) + (v141 >> 2)) ^ v141) + v6 + (v139 << 6) + (v139 >> 2)) ^ v139;
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D101A8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D101A8;
  a2[1] = v2;
  return a2;
}

uint64_t *re::DynamicInlineArray<re::RenderCamera,2ul>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = (a2 + 2);
      v7 = &v6[32 * v4];
      v8 = a1 + 2;
      if (v4)
      {
        memmove(a1 + 2, v6, 32 * v4);
      }

      memcpy(&v8[4 * v4], v7, 32 * v5);
    }

    else if (v3)
    {
      memmove(a1 + 2, a2 + 2, 32 * v3);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

uint64_t re::RenderGraphDataStore::get<re::CurrentSelectionData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re20CurrentSelectionDataE";
  if (("N2re20CurrentSelectionDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re20CurrentSelectionDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

__int128 *re::DynamicInlineArray<re::Projection,2ul>::copy(void *a1, __int128 *a2)
{
  v3 = (a2 + 1);
  v4 = *a2;
  v5 = (a1 + 2);
  if (*a2 >= *a1)
  {
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(&v24, a2 + 1, &v3[30 * *a1], v5);
    if (*a1 != v4)
    {
      v8 = 240 * *a1 + 112;
      v9 = a1 + v8;
      v10 = (a2 + v8);
      do
      {
        *(v9 - 6) = *(v10 - 6);
        v11 = *(v10 - 5);
        v12 = *(v10 - 4);
        v13 = *(v10 - 3);
        *(v9 - 16) = *(v10 - 16);
        *(v9 - 4) = v12;
        *(v9 - 3) = v13;
        *(v9 - 5) = v11;
        v14 = *(v10 - 16);
        *(v9 - 16) = v14;
        if (v14 == 1)
        {
          v15 = *v10;
          v16 = v10[1];
          v17 = v10[3];
          *(v9 + 2) = v10[2];
          *(v9 + 3) = v17;
          *v9 = v15;
          *(v9 + 1) = v16;
        }

        v18 = v10 - 6;
        v19 = *(v10 + 64);
        v9[64] = v19;
        if (v19 == 1)
        {
          v20 = v10[5];
          v21 = v10[6];
          v22 = v10[8];
          *(v9 + 7) = v10[7];
          *(v9 + 8) = v22;
          *(v9 + 5) = v20;
          *(v9 + 6) = v21;
        }

        v9 += 240;
        v10 += 15;
      }

      while (v18 + 15 != &v3[30 * v4]);
    }
  }

  else
  {
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(&v23, a2 + 1, &v3[30 * v4], v5);
  }

  *a1 = v4;
  return result;
}

void re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(char const*,char const*,re::RenderFrame &)#1}::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::FrameCount)#1},void ()(re::FrameCount const&)>::operator()(_anonymous_namespace_ *a1, uint64_t *a2)
{
  v2 = a1;
  v119 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v105 = 0;
  v106 = 0;
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v4 = *(a1 + 1);
  if (*(*(a1 + 2) + 16))
  {
    v5 = *(a1 + 3);
    *(&v114 + 1) = -1;
    LOBYTE(v115) = 0;
    DWORD1(v115) = 1065353216;
    *(&v115 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v114) = 2;
    *&v116 = -1;
    *(&v116 + 1) = 0xBF0B4817E6B68A8;
    re::RenderFrame::getExternalBuffer(v5, &v114, v98);
    re::BufferSlice::buffer(v98, v6);
    a1 = NS::SharedPtr<MTL::Buffer>::operator=(&v110, v98);
    if (v100 != -1)
    {
      a1 = (off_1F5D10308[v100])(v111, v98);
    }
  }

  if (*(v4 + 308) * *(v4 + 304))
  {
    v7 = *(v2 + 3);
    *(&v114 + 1) = -1;
    LOBYTE(v115) = 0;
    DWORD1(v115) = 1065353216;
    *(&v115 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v114) = 2;
    *&v116 = -1;
    *(&v116 + 1) = 0xCD9A3EE13CFD7E25;
    re::RenderFrame::getExternalBuffer(v7, &v114, v98);
    re::BufferSlice::buffer(v98, v8);
    NS::SharedPtr<MTL::Buffer>::operator=(&v109, v98);
    if (v100 != -1)
    {
      (off_1F5D10308[v100])(v111, v98);
    }

    v9 = *(v2 + 3);
    *(&v114 + 1) = -1;
    LOBYTE(v115) = 0;
    DWORD1(v115) = 1065353216;
    *(&v115 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v114) = 2;
    *&v116 = -1;
    *(&v116 + 1) = 0xCD9A3EDFC6AF0674;
    re::RenderFrame::getExternalBuffer(v9, &v114, v98);
    re::BufferSlice::buffer(v98, v10);
    NS::SharedPtr<MTL::Buffer>::operator=(&v108, v98);
    if (v100 != -1)
    {
      (off_1F5D10308[v100])(v111, v98);
    }

    v11 = *(v2 + 3);
    *(&v114 + 1) = -1;
    LOBYTE(v115) = 0;
    DWORD1(v115) = 1065353216;
    *(&v115 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v114) = 2;
    *&v116 = -1;
    *(&v116 + 1) = 0xCD9A3ECDB3592287;
    re::RenderFrame::getExternalBuffer(v11, &v114, v98);
    re::BufferSlice::buffer(v98, v12);
    NS::SharedPtr<MTL::Buffer>::operator=(&v107, v98);
    if (v100 != -1)
    {
      (off_1F5D10308[v100])(v111, v98);
    }

    v13 = *(v2 + 3);
    *(&v114 + 1) = -1;
    LOBYTE(v115) = 0;
    DWORD1(v115) = 1065353216;
    *(&v115 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v114) = 2;
    *&v116 = -1;
    *(&v116 + 1) = 0xCD9A3E38AFED4AD6;
    re::RenderFrame::getExternalBuffer(v13, &v114, v98);
    re::BufferSlice::buffer(v98, v14);
    NS::SharedPtr<MTL::Buffer>::operator=(&v106, v98);
    if (v100 != -1)
    {
      (off_1F5D10308[v100])(v111, v98);
    }

    v15 = *(v2 + 3);
    *(&v114 + 1) = -1;
    LOBYTE(v115) = 0;
    DWORD1(v115) = 1065353216;
    *(&v115 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v114) = 2;
    *&v116 = -1;
    *(&v116 + 1) = 0xCD9A3E3693039762;
    re::RenderFrame::getExternalBuffer(v15, &v114, v98);
    re::BufferSlice::buffer(v98, v16);
    NS::SharedPtr<MTL::Buffer>::operator=(&v105, v98);
    if (v100 != -1)
    {
      (off_1F5D10308[v100])(v111, v98);
    }

    v17 = *(v2 + 3);
    *(&v114 + 1) = -1;
    LOBYTE(v115) = 0;
    DWORD1(v115) = 1065353216;
    *(&v115 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v114) = 2;
    *&v116 = -1;
    *(&v116 + 1) = 0xCD9A3E2587607D33;
    re::RenderFrame::getExternalBuffer(v17, &v114, v98);
    re::BufferSlice::buffer(v98, v18);
    NS::SharedPtr<MTL::Buffer>::operator=(&v104, v98);
    if (v100 != -1)
    {
      (off_1F5D10308[v100])(v111, v98);
    }

    v19 = *(v2 + 3);
    *(&v114 + 1) = -1;
    LOBYTE(v115) = 0;
    DWORD1(v115) = 1065353216;
    *(&v115 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v114) = 2;
    *&v116 = -1;
    *(&v116 + 1) = 0xCD9A3E139AC6D3C0;
    re::RenderFrame::getExternalBuffer(v19, &v114, v98);
    re::BufferSlice::buffer(v98, v20);
    NS::SharedPtr<MTL::Buffer>::operator=(&v103, v98);
    if (v100 != -1)
    {
      (off_1F5D10308[v100])(v111, v98);
    }

    v21 = *(v2 + 3);
    *(&v114 + 1) = -1;
    LOBYTE(v115) = 0;
    DWORD1(v115) = 1065353216;
    *(&v115 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v114) = 2;
    *&v116 = -1;
    *(&v116 + 1) = 0xCD9A3E0CD8A43591;
    re::RenderFrame::getExternalBuffer(v21, &v114, v98);
    re::BufferSlice::buffer(v98, v22);
    a1 = NS::SharedPtr<MTL::Buffer>::operator=(&v102, v98);
    if (v100 != -1)
    {
      a1 = (off_1F5D10308[v100])(v111, v98);
    }
  }

  v101 = 0;
  v98[1] = 0;
  v99 = 0;
  v98[0] = 0;
  v100 = 0;
  if (*(v4 + 176))
  {
    a1 = v110;
    if (v110)
    {
      v23 = *(*(v2 + 2) + 16);
      a1 = [v110 contents];
      if (v23 >= 5)
      {
        v24 = a1;
        v25 = 0;
        v26 = v23 / 5;
        do
        {
          if (*(v24 + v25))
          {
            v27 = *(v2 + 2);
            v28 = *(v27 + 16);
            if (v28 <= v25)
            {
              v93 = 0;
              v117 = 0u;
              v118 = 0u;
              v115 = 0u;
              v116 = 0u;
              v114 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v111 = 136315906;
              *&v111[4] = "operator[]";
              *&v111[12] = 1024;
              *&v111[14] = 789;
              *&v111[18] = 2048;
              *&v111[20] = v25;
              v112 = 2048;
              *v113 = v28;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_130:
              std::__throw_bad_function_call[abi:nn200100]();
            }

            *&v114 = *(*(v27 + 32) + 8 * v25);
            a1 = re::DynamicArray<re::TransitionCondition *>::add(v98, &v114);
          }

          ++v25;
        }

        while (v26 != v25);
      }
    }
  }

  v77 = v2;
  v78 = v3;
  *&v116 = 0;
  *&v115 = 0;
  v114 = 0uLL;
  DWORD2(v115) = 0;
  v79 = v4;
  if (*(v4 + 216))
  {
    a1 = v109;
    if (v109)
    {
      if (v108 && v107 && v106 && v105 && v104 && v103)
      {
        v29 = [v109 contents];
        v83 = [v108 contents];
        v82 = [v107 contents];
        v81 = [v106 contents];
        [v105 contents];
        [v104 contents];
        [v103 contents];
        a1 = [v102 contents];
        if (*(v4 + 304) == -1)
        {
          v35 = 1;
        }

        else
        {
          v35 = *(v4 + 304);
        }

        v36 = *(v4 + 308);
        if (v36 == -1)
        {
          v36 = 1;
        }

        v85 = v36;
        if (v36)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v80 = v29 + 8;
          v41 = 1.0;
          v84 = v35;
          do
          {
            v86 = v40;
            if (v35)
            {
              v42 = 16 * v39;
              v44 = v81;
              v43 = v82;
              v45 = v80;
              v46 = v83;
              do
              {
                v47 = *&v45[v42 - 8];
                if (v47)
                {
                  *&v33 = *&v43[v42];
                  DWORD2(v33) = *&v43[v42 + 8];
                  *&v34 = *&v44[v42];
                  DWORD2(v34) = *&v44[v42 + 8];
                  v48 = *&v45[v42];
                  v49 = *&v46[v42];
                  v50 = *&v43[v42 + 12];
                  v51 = *&v44[v42 + 12];
                  v52 = fmaxf(v50, v51);
                  *&v32 = (v41 - v51) - v50;
                  v53 = v52 <= 1.0;
                  if (v52 <= 1.0)
                  {
                    LODWORD(v31) = *&v44[v42 + 12];
                  }

                  else
                  {
                    *&v31 = 0.0;
                  }

                  if (v53)
                  {
                    LODWORD(v30) = *&v43[v42 + 12];
                  }

                  else
                  {
                    *&v32 = 0.0;
                    *&v30 = 0.0;
                  }

                  if (v38 >= *(&v114 + 1))
                  {
                    v54 = v38 + 1;
                    if (*(&v114 + 1) < v38 + 1)
                    {
                      v87 = v32;
                      v88 = v31;
                      v89 = v30;
                      v90 = v34;
                      v91 = v33;
                      if (v114)
                      {
                        v55 = 2 * *(&v114 + 1);
                        if (!*(&v114 + 1))
                        {
                          v55 = 8;
                        }

                        if (v55 <= v54)
                        {
                          v56 = v38 + 1;
                        }

                        else
                        {
                          v56 = v55;
                        }

                        a1 = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v114, v56);
                      }

                      else
                      {
                        a1 = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v114, v54);
                        ++DWORD2(v115);
                      }

                      v41 = 1.0;
                      v34 = v90;
                      v33 = v91;
                      v31 = v88;
                      v30 = v89;
                      v32 = v87;
                    }

                    v38 = v115;
                    v37 = v116;
                  }

                  HIDWORD(v33) = 0;
                  *(&v34 + 3) = v41;
                  *&v57 = __PAIR64__(v31, v32);
                  *(&v57 + 1) = v30;
                  v58 = v37 + 80 * v38;
                  *v58 = v47;
                  *(v58 + 16) = v33;
                  *(v58 + 32) = v34;
                  *(v58 + 48) = v48;
                  *(v58 + 56) = v49;
                  *(v58 + 64) = v57;
                  v38 = v115 + 1;
                  *&v115 = v115 + 1;
                  ++DWORD2(v115);
                }

                ++v39;
                v46 += 16;
                v44 += 16;
                v45 += 16;
                v43 += 16;
                --v35;
              }

              while (v35);
            }

            v40 = v86 + 1;
            v35 = v84;
          }

          while (v86 + 1 != v85);
        }
      }
    }
  }

  *&v113[2] = 0;
  memset(v111, 0, sizeof(v111));
  v59 = *(v79 + 176);
  if (v59)
  {
    v60 = *(v79 + 192);
    v61 = 40 * v59;
    do
    {
      if ((*v60 & 0xFFFFFFFFFFFFFFFuLL) <= (v78 & 0xFFFFFFFFFFFFFFFuLL))
      {
        v93 = v101;
        v94 = v99;
        v62 = v60[4];
        if (!v62)
        {
          goto LABEL_130;
        }

        a1 = (*(*v62 + 48))(v62, &v93);
      }

      else
      {
        a1 = re::DynamicArray<re::SelectionCompleteHandler>::add(v111, v60);
      }

      v60 += 5;
      v61 -= 40;
    }

    while (v61);
  }

  if ((v79 + 160) != v111)
  {
    if (*(v79 + 160))
    {
      if (*v111)
      {
        a1 = re::DynamicArray<re::SelectionCompleteHandler>::copy((v79 + 160), v111);
      }

      else
      {
        v64 = *(v79 + 176);
        *(v79 + 176) = 0;
        if (v64)
        {
          v65 = 40 * v64;
          a1 = (*(v79 + 192) + 8);
          do
          {
            a1 = (std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](a1) + 40);
            v65 -= 40;
          }

          while (v65);
        }
      }

      ++*(v79 + 184);
    }

    else if (*v111)
    {
      v63 = *&v111[16];
      *(v79 + 160) = *v111;
      re::DynamicArray<re::SelectionCompleteHandler>::setCapacity((v79 + 160), v63);
      ++*(v79 + 184);
      a1 = re::DynamicArray<re::SelectionCompleteHandler>::copy((v79 + 160), v111);
    }
  }

  v97 = 0;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v96 = 0;
  v66 = *(v79 + 216);
  if (v66)
  {
    v67 = *(v79 + 232);
    v68 = v116;
    v69 = v115;
    v70 = 40 * v66;
    do
    {
      if ((*v67 & 0xFFFFFFFFFFFFFFFuLL) <= (v78 & 0xFFFFFFFFFFFFFFFuLL))
      {
        v92[0] = v68;
        v92[1] = v69;
        v71 = v67[4];
        if (!v71)
        {
          goto LABEL_130;
        }

        a1 = (*(*v71 + 48))(v71, v92);
      }

      else
      {
        a1 = re::DynamicArray<re::SelectionConcludeHandler>::add(&v93, v67);
      }

      v67 += 5;
      v70 -= 40;
    }

    while (v70);
  }

  if ((v79 + 200) != &v93)
  {
    if (*(v79 + 200))
    {
      if (v93)
      {
        a1 = re::DynamicArray<re::SelectionConcludeHandler>::copy((v79 + 200), &v93);
      }

      else
      {
        v73 = *(v79 + 216);
        *(v79 + 216) = 0;
        if (v73)
        {
          v74 = 40 * v73;
          a1 = (*(v79 + 232) + 8);
          do
          {
            a1 = (std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](a1) + 40);
            v74 -= 40;
          }

          while (v74);
        }
      }

      ++*(v79 + 224);
    }

    else if (v93)
    {
      v72 = v95;
      *(v79 + 200) = v93;
      re::DynamicArray<re::SelectionConcludeHandler>::setCapacity((v79 + 200), v72);
      ++*(v79 + 224);
      a1 = re::DynamicArray<re::SelectionConcludeHandler>::copy((v79 + 200), &v93);
    }
  }

  v75 = *(v77 + 2);
  if (v75)
  {
    v76 = re::globalAllocators(a1)[2];
    re::DynamicArray<unsigned long>::deinit(v75);
    (*(*v76 + 40))(v76, v75);
  }

  re::DynamicArray<re::SelectionConcludeHandler>::deinit(&v93);
  re::DynamicArray<re::SelectionCompleteHandler>::deinit(v111);
  if (v114 && v116)
  {
    (*(*v114 + 40))(v114);
  }

  if (v98[0] && v101)
  {
    (*(*v98[0] + 40))();
  }

  if (v102)
  {
  }

  if (v103)
  {
  }

  if (v104)
  {
  }

  if (v105)
  {
  }

  if (v106)
  {
  }

  if (v107)
  {
  }

  if (v108)
  {
  }

  if (v109)
  {
  }

  if (v110)
  {
  }
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(char const*,char const*,re::RenderFrame &)#1}::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::FrameCount)#1},void ()(re::FrameCount const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D102C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(char const*,char const*,re::RenderFrame &)#1}::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::FrameCount)#1},void ()(re::FrameCount const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D102C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::DynamicArray<re::SelectionCompleteHandler>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::SelectionCompleteHandler>::setCapacity(result, *(a2 + 16));
    v13 = *(a2 + 32);
    v14 = v3[2];
    v15 = v3[4];
    if (v14)
    {
      v16 = &v13[5 * v14];
      v17 = *(a2 + 32);
      v18 = v3[4];
      do
      {
        v19 = *v17;
        v17 += 5;
        *v18 = v19;
        v18 += 5;
        result = std::function<void ()(re::Slice<unsigned long long> const&)>::operator=(v15 + 1, (v13 + 1));
        v15 = v18;
        v13 = v17;
      }

      while (v17 != v16);
      v15 = v3[4];
      v14 = v3[2];
      v13 = *(a2 + 32);
    }

    if (v14 != v4)
    {
      v20 = 40 * v4 - 40 * v14;
      v21 = 40 * v14 + 8;
      v22 = v13 + v21;
      result = (v15 + v21);
      do
      {
        *(result - 1) = *(v22 - 8);
        v23 = std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::__value_func[abi:nn200100](result, v22);
        v22 += 40;
        result = (v23 + 40);
        v20 -= 40;
      }

      while (v20);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = &v7[5 * v4];
      v9 = v7;
      v10 = result[4];
      do
      {
        v11 = *v9;
        v9 += 5;
        *v10 = v11;
        v10 += 5;
        result = std::function<void ()(re::Slice<unsigned long long> const&)>::operator=(v6 + 1, (v7 + 1));
        v6 = v10;
        v7 = v9;
      }

      while (v9 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v12 = 40 * v5 - 40 * v4;
      result = &v6[5 * v4 + 1];
      do
      {
        result = (std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](result) + 40);
        v12 -= 40;
      }

      while (v12);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::SelectionCompleteHandler>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::SelectionCompleteHandler>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_21;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_21:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v7 + 4);
        v11 = (v8 + 32);
        v12 = 40 * v9;
        do
        {
          *(v10 - 4) = *(v11 - 4);
          v13 = *v11;
          if (*v11)
          {
            if (v11 - 3 == v13)
            {
              *v10 = (v10 - 3);
              (*(**v11 + 24))();
            }

            else
            {
              *v10 = v13;
              *v11 = 0;
            }
          }

          else
          {
            *v10 = 0;
          }

          std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100]((v11 - 3));
          v10 += 5;
          v11 += 5;
          v12 -= 40;
        }

        while (v12);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *re::DynamicArray<re::SelectionConcludeHandler>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::SelectionConcludeHandler>::setCapacity(result, *(a2 + 16));
    v13 = *(a2 + 32);
    v14 = v3[2];
    v15 = v3[4];
    if (v14)
    {
      v16 = &v13[5 * v14];
      v17 = *(a2 + 32);
      v18 = v3[4];
      do
      {
        v19 = *v17;
        v17 += 5;
        *v18 = v19;
        v18 += 5;
        result = std::function<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::operator=(v15 + 1, (v13 + 1));
        v15 = v18;
        v13 = v17;
      }

      while (v17 != v16);
      v15 = v3[4];
      v14 = v3[2];
      v13 = *(a2 + 32);
    }

    if (v14 != v4)
    {
      v20 = 40 * v4 - 40 * v14;
      v21 = 40 * v14 + 8;
      v22 = v13 + v21;
      result = (v15 + v21);
      do
      {
        *(result - 1) = *(v22 - 8);
        v23 = std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::__value_func[abi:nn200100](result, v22);
        v22 += 40;
        result = (v23 + 40);
        v20 -= 40;
      }

      while (v20);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = &v7[5 * v4];
      v9 = v7;
      v10 = result[4];
      do
      {
        v11 = *v9;
        v9 += 5;
        *v10 = v11;
        v10 += 5;
        result = std::function<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::operator=(v6 + 1, (v7 + 1));
        v6 = v10;
        v7 = v9;
      }

      while (v9 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v12 = 40 * v5 - 40 * v4;
      result = &v6[5 * v4 + 1];
      do
      {
        result = (std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](result) + 40);
        v12 -= 40;
      }

      while (v12);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::SelectionConcludeHandler>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::SelectionConcludeHandler>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_21;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_21:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v7 + 4);
        v11 = (v8 + 32);
        v12 = 40 * v9;
        do
        {
          *(v10 - 4) = *(v11 - 4);
          v13 = *v11;
          if (*v11)
          {
            if (v11 - 3 == v13)
            {
              *v10 = (v10 - 3);
              (*(**v11 + 24))();
            }

            else
            {
              *v10 = v13;
              *v11 = 0;
            }
          }

          else
          {
            *v10 = 0;
          }

          std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100]((v11 - 3));
          v10 += 5;
          v11 += 5;
          v12 -= 40;
        }

        while (v12);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t re::DynamicArray<re::SelectionConcludeHandler>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        v6 = v3 + 8;
        do
        {
          v6 = std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](v6) + 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::SelectionCompleteHandler>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        v6 = v3 + 8;
        do
        {
          v6 = std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](v6) + 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::operator()(uint64_t a1, const char **a2, char **a3, re::RenderFrame *a4)
{
  v193 = *MEMORY[0x1E69E9840];
  v5 = 0x9E3779B97F4A7C17;
  v6 = *a2;
  v7 = *a3;
  v8 = *(a1 + 8);
  v9 = strlen(*a2);
  if (v9)
  {
    MurmurHash3_x64_128(v6, v9, 0, &v165);
    v10 = (v166 - 0x61C8864680B583E9 + (v165 << 6) + (v165 >> 2)) ^ v165;
  }

  else
  {
    v10 = 0;
  }

  v11 = strlen(v7);
  v12 = 0x9E3779B97F4A7C17;
  if (v11)
  {
    MurmurHash3_x64_128(v7, v11, 0, &v165);
    v12 = ((v166 - 0x61C8864680B583E9 + (v165 << 6) + (v165 >> 2)) ^ v165) - 0x61C8864680B583E9;
  }

  v13 = (v10 >> 2) + (v10 << 6) + v12;
  v14 = re::RenderGraphDataStore::get<re::CurrentSelectionData>(a4 + 32, v13 ^ v10);
  v15 = re::RenderGraphDataStore::get<re::SelectionDrawCallBufferData>(a4 + 32, v13 ^ v10);
  if (v7)
  {
    v16 = *v7;
    if (*v7)
    {
      v17 = v7[1];
      if (v17)
      {
        v18 = (v7 + 2);
        do
        {
          v16 = 31 * v16 + v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }

      v5 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 0x61C8864680B583E9;
    }
  }

  else
  {
    v5 = 0x1E3779B97F4A7C16;
  }

  v20 = *(v8 + 144);
  if (v20)
  {
    v21 = atomic_load((v20 + 896));
    if (v21 == 2)
    {
      goto LABEL_18;
    }

    v22 = *(v8 + 144);
  }

  else
  {
    v22 = 0;
  }

  re::AssetHandle::loadNow(v22, 0);
LABEL_18:
  if (*(v15 + 8))
  {
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 - 0x704FA064A6CD77F8) ^ 0x2618A8D597CCFD23;
    re::RenderFrame::createBuffer(a4, &v165, "SelectedQuery0Buffer", &v127);
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72A063C61E8ALL) ^ 0x211811B8C8C65228;
    re::RenderFrame::createBuffer(a4, &v165, "SelectedColor0Buffer", &v125);
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72ADAA8E7D9ALL) ^ 0x211811B8FDAC8D69;
    re::RenderFrame::createBuffer(a4, &v165, "SelectedColor1Buffer", &v123);
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72BAF156DCAALL) ^ 0x211811B93292C8AALL;
    re::RenderFrame::createBuffer(a4, &v165, "SelectedColor2Buffer", &v121);
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72C8381F3BBALL) ^ 0x211811B9677903EBLL;
    re::RenderFrame::createBuffer(a4, &v165, "SelectedColor3Buffer", &v119);
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72D57EE79ACBLL) ^ 0x211811B99C5F3F2CLL;
    re::RenderFrame::createBuffer(a4, &v165, "SelectedColor4Buffer", &v117);
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72E2C5AFF9DBLL) ^ 0x211811B9D1457A6DLL;
    re::RenderFrame::createBuffer(a4, &v165, "SelectedColor5Buffer", &v115);
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72F00C7858EBLL) ^ 0x211811BA062BB5AELL;
    re::RenderFrame::createBuffer(a4, &v165, "SelectedColor6Buffer", &v113);
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72FD5340B7FBLL) ^ 0x211811BA3B11F0EFLL;
    re::RenderFrame::createBuffer(a4, &v165, "SelectedColor7Buffer", &v111);
    v23 = *(v14 + 8);
    if (*(v23 + 16))
    {
      v24 = *(v23 + 24);
    }

    else
    {
      v24 = (v23 + 17);
    }

    ScopeResolution = re::RenderFrame::getScopeResolution(a4, v24);
    v26 = *(v8 + 316);
    v27 = *(v8 + 320);
    if (v26 == -1)
    {
      v28 = ScopeResolution;
    }

    else
    {
      v28 = v26;
    }

    *&v167[12] = -1;
    if (v27 == -1)
    {
      v29 = HIDWORD(ScopeResolution);
    }

    else
    {
      v29 = v27;
    }

    *&v167[4] = -1;
    v168[0] = 0;
    __asm { FMOV            V8.2S, #1.0 }

    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0xFC00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v28;
    v35 = v28;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(a4, &v165, "Depth0Target", &v108);
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7B00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(a4, &v165, "Color0Target", &v106);
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7B00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(a4, &v165, "Color1Target", &v104);
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(a4, &v165, "Color2Target", &v102);
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(a4, &v165, "Color3Target", &v100);
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(a4, &v165, "Color4Target", &v98);
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(a4, &v165, "Color5Target", &v96);
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(a4, &v165, "Color6Target", &v94);
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(a4, &v165, "Color7Target", &v92);
    RenderGraph = re::RenderFrame::makeRenderGraph(a4, "SelectionGraph", 0);
    v87[0] = v106;
    v87[2] = v104;
    v82[0] = v102;
    v82[1] = v103;
    v82[2] = v100;
    v82[3] = v101;
    v77[0] = v98;
    v77[1] = v99;
    v71[0] = v106;
    v77[2] = v96;
    v71[2] = v104;
    v71[4] = v102;
    v77[3] = v97;
    v71[5] = v103;
    v72[0] = v94;
    v71[6] = v100;
    v71[7] = v101;
    v72[1] = v95;
    v71[8] = v98;
    v72[2] = v92;
    v71[9] = v99;
    v72[3] = v93;
    v71[10] = v96;
    v71[11] = v97;
    v71[12] = v94;
    v71[13] = v95;
    v71[14] = v92;
    v71[15] = v93;
    v71[18] = v125;
    v71[20] = v123;
    v71[22] = v121;
    v71[24] = v119;
    v71[26] = v117;
    v71[28] = v115;
    *&v71[30] = v113;
    v71[32] = v111;
    v165 = *&v106;
    *v167 = v104;
    *&v167[16] = v102;
    *&v168[8] = v100;
    *&v168[24] = v98;
    *&v168[40] = v96;
    v169 = v94;
    v171 = v92;
    v173 = v127;
    v87[1] = v107;
    v87[3] = v105;
    v71[1] = v107;
    v71[3] = v105;
    v71[19] = v126;
    v71[21] = v124;
    v71[23] = v122;
    v71[25] = v120;
    v71[27] = v118;
    v71[29] = v116;
    v71[31] = v114;
    v71[33] = v112;
    v166 = *&v107;
    *&v167[8] = v105;
    *v168 = v103;
    *&v168[16] = v101;
    *&v168[32] = v99;
    *&v168[48] = v97;
    v170 = v95;
    v172 = v93;
    v174 = v128;
    v176 = v126;
    v178 = v124;
    v180 = v122;
    v182 = v120;
    v184 = v118;
    v186 = v116;
    v188 = v114;
    v175 = v125;
    v36 = v108;
    v177 = v123;
    v179 = v121;
    v70 = v8;
    v37 = v109;
    v38 = v110;
    v87[4] = v108;
    v88 = v109;
    v89 = v110;
    v181 = v119;
    v183 = v117;
    v39 = v127;
    v40 = v127;
    v90 = v127;
    v185 = v115;
    v187 = v113;
    v41 = LODWORD(v128);
    v42 = LODWORD(v128);
    v189 = v111;
    v43 = v35 | (v29 << 32);
    v191 = v35;
    v192 = v29;
    v44 = HIDWORD(v128);
    v45 = HIDWORD(v128);
    v91 = v128;
    v82[4] = v108;
    v83 = v109;
    v84 = v110;
    v85 = v127;
    v86 = v128;
    v77[4] = v108;
    v78 = v109;
    v79 = v110;
    v80 = v127;
    v81 = v128;
    v72[4] = v108;
    v73 = v109;
    v74 = v110;
    v75 = v127;
    v76 = v128;
    v71[16] = v127;
    v71[17] = v128;
    v190 = v112;
    v163 = re::globalAllocators(v113)[2];
    v46 = (*(*v163 + 32))(v163, 40, 0);
    *v46 = &unk_1F5D10430;
    *(v46 + 8) = v36;
    *(v46 + 16) = v37;
    *(v46 + 20) = v38;
    *(v46 + 24) = v39;
    *(v46 + 32) = v41;
    *(v46 + 36) = v44;
    v164 = v46;
    v160 = re::globalAllocators(v46)[2];
    v47 = (*(*v160 + 32))(v160, 40, 0);
    *v47 = &unk_1F5D10498;
    *(v47 + 8) = v70;
    *(v47 + 16) = v40;
    *(v47 + 24) = v42;
    *(v47 + 28) = v45;
    *(v47 + 32) = v43;
    v161 = v47;
    re::RenderGraph::addNode(RenderGraph, "SelectionRenderVisibleNode", v162, v159);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v159);
    v48 = re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v162);
    v49 = re::globalAllocators(v48)[2];
    v157 = v49;
    if (v49)
    {
      v49 = (*(*v49 + 32))(v49, 72, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#2},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(v49, v87);
    v158 = v50;
    v154 = re::globalAllocators(v50)[2];
    v51 = (*(*v154 + 32))(v154, 40, 0);
    *v51 = &unk_1F5D10498;
    *(v51 + 8) = v70;
    *(v51 + 16) = v40;
    *(v51 + 24) = v42;
    *(v51 + 28) = v45;
    *(v51 + 32) = v43;
    v155 = v51;
    re::RenderGraph::addNode(RenderGraph, "SelectionRenderGroup01Node", v156, v153);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v153);
    v52 = re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v156);
    v53 = re::globalAllocators(v52)[2];
    v151 = v53;
    if (v53)
    {
      v53 = (*(*v53 + 32))(v53, 72, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#3},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(v53, v82);
    v152 = v54;
    v148 = re::globalAllocators(v54)[2];
    v55 = (*(*v148 + 32))(v148, 40, 0);
    *v55 = &unk_1F5D10498;
    *(v55 + 8) = v70;
    *(v55 + 16) = v40;
    *(v55 + 24) = v42;
    *(v55 + 28) = v45;
    *(v55 + 32) = v43;
    v149 = v55;
    re::RenderGraph::addNode(RenderGraph, "SelectionRenderGroup23Node", v150, v147);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v147);
    v56 = re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v150);
    v57 = re::globalAllocators(v56)[2];
    v145 = v57;
    if (v57)
    {
      v57 = (*(*v57 + 32))(v57, 72, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#4},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(v57, v77);
    v146 = v58;
    v142 = re::globalAllocators(v58)[2];
    v59 = (*(*v142 + 32))(v142, 40, 0);
    *v59 = &unk_1F5D10498;
    *(v59 + 8) = v70;
    *(v59 + 16) = v40;
    *(v59 + 24) = v42;
    *(v59 + 28) = v45;
    *(v59 + 32) = v43;
    v143 = v59;
    re::RenderGraph::addNode(RenderGraph, "SelectionRenderGroup45Node", v144, v141);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v141);
    v60 = re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v144);
    v61 = re::globalAllocators(v60)[2];
    v139 = v61;
    if (v61)
    {
      v61 = (*(*v61 + 32))(v61, 72, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#5},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(v61, v72);
    v140 = v62;
    v136 = re::globalAllocators(v62)[2];
    v63 = (*(*v136 + 32))(v136, 40, 0);
    *v63 = &unk_1F5D10498;
    *(v63 + 8) = v70;
    *(v63 + 16) = v40;
    *(v63 + 24) = v42;
    *(v63 + 28) = v45;
    *(v63 + 32) = v43;
    v137 = v63;
    re::RenderGraph::addNode(RenderGraph, "SelectionRenderGroup67Node", v138, v135);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v135);
    v64 = re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v138);
    v65 = re::globalAllocators(v64)[2];
    v133 = v65;
    if (v65)
    {
      v65 = (*(*v65 + 32))(v65, 280, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#6},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(v65, v71);
    v134 = v66;
    v67 = re::globalAllocators(v66)[2];
    v130 = v67;
    if (v67)
    {
      v67 = (*(*v67 + 32))(v67, 288, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#2},void ()(re::RenderGraphContext &)>::Callable(v67, &v165);
    v131 = v68;
    re::RenderGraph::addNode(RenderGraph, "SelectionGatherResultsNode", v132, v129);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v129);
    re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v132);
  }
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D10328;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D10328;
  a2[1] = v2;
  return a2;
}

void *re::RenderGraph::addNode(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 184, 8);
  v18 = *(a3 + 24);
  v19 = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator=<24ul>(v17, a3);
  v15 = *(a4 + 24);
  v16 = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::operator=<24ul>(v14, a4);
  re::InlineRenderGraphNode::InlineRenderGraphNode(v9, a2, v17, v14);
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v14);
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v17);
  v13 = v9;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v13);
  v10 = *(a1 + 12);
  v11 = *(a1 + 13);
  v9[3] = *(a1 + 10);
  v9[4] = v10;
  v9[6] = v11;
  return v9;
}

uint64_t re::RenderGraphDataStore::get<re::SelectionDrawCallBufferData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27SelectionDrawCallBufferDataE";
  if (("N2re27SelectionDrawCallBufferDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27SelectionDrawCallBufferDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

uint64_t re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::InlineRenderGraphNode::InlineRenderGraphNode(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F5CB52A8;
  *(a1 + 8) = 0;
  v8 = (a1 + 8);
  *(a1 + 16) = &str_67;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *a1 = &unk_1F5D10390;
  *(a1 + 128) = *(a3 + 24);
  *(a1 + 136) = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator=<24ul>(a1 + 104, a3);
  *(a1 + 168) = *(a4 + 24);
  *(a1 + 176) = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::operator=<24ul>(a1 + 144, a4);
  return a1;
}

void re::InlineRenderGraphNode::~InlineRenderGraphNode(id *this)
{
  *this = &unk_1F5D10390;
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable((this + 18));
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable((this + 13));
  *this = &unk_1F5CB52A8;

  re::StringID::destroyString((this + 1));
}

{
  *this = &unk_1F5D10390;
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable((this + 18));
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable((this + 13));
  *this = &unk_1F5CB52A8;

  re::StringID::destroyString((this + 1));

  JUMPOUT(0x1E6906520);
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#1},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0x200000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 8, &v5);
  return re::RenderGraphBuilder::setVisibilityResultsBuffer(a2, a1 + 24);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#1},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10430;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  return a2;
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#1},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::moveInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10430;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  return a2;
}

void re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#1},void ()(re::RenderGraphContext &)>::operator()(int32x2_t *a1, re::RenderGraphContext *a2)
{
  v193 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v6 = re::RenderGraphDataStore::get<re::RenderGraphSelectionParams>(*(a2 + 146), *(*(a2 + 5) + 48));
  v7.i32[0] = 0;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = vbicq_s8(xmmword_1E3102070, vceqq_s32(*(v6 + 8), v8));
  v9.i32[0] = vaddvq_s32(v9);
  v8.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v8.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v7.i64[0] = vceqq_s8(vandq_s8(v9, v8), vandq_s8(v7, v8)).u64[0];
  v10 = vdupq_lane_s8(*v7.i8, 0);
  v11 = a1[4];
  v7.i64[0] = v7.i8[0] & 0xF | (16 * (v10.i8[1] & 0xF)) | ((v10.i8[2] & 0xF) << 8) & 0xFFF | ((v10.i8[3] & 0xFu) << 12) | ((v10.i8[4] & 0xF) << 16) & 0xFFFFFFFFFF0FFFFFLL | ((v10.i8[5] & 0xF) << 20) | ((v10.i8[6] & 0xF) << 24) | ((v10.i8[7] & 0xF) << 28) | ((v10.i8[8] & 0xF) << 32) | ((v10.i8[9] & 0xF) << 36) | ((v10.i8[10] & 0xF) << 40) | ((v10.i8[11] & 0xF) << 44) | ((v10.i8[12] & 0xF) << 48) | ((v10.i8[13] & 0xF) << 52) | ((v10.i8[14] & 0xF) << 56) | (v10.u8[15] << 60);
  v12 = vbsl_s8(*v7.i8, 0x100000001, *(v6 + 16));
  v13 = vbsl_s8(*v7.i8, vshr_n_u32(v11, 1uLL), *(v6 + 8));
  re::RenderGraphContext::acquireManagedRenderCommandEncoder(&v175, a2, 0);
  *&v14 = v13.u32[0];
  *(&v14 + 1) = v13.u32[1];
  v15 = v14;
  v114 = v11;
  v16 = vbsl_s8(vcgt_u32(vadd_s32(v13, v12), v11), vsub_s32(v11, v13), v12);
  *&v14 = v16.u32[0];
  *(&v14 + 1) = v16.u32[1];
  v187 = v15;
  v188 = v14;
  [v175 setScissorRect_];
  *&v187 = 0;
  DWORD2(v187) = 0;
  v189 = 0;
  v190 = 0;
  v192 = 0;
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v174 = 0x7FFFFFFFLL;
  v169 = 0;
  memset(v168, 0, sizeof(v168));
  v170 = 0x7FFFFFFFLL;
  v17 = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((*&v5 + 136)) + 1776);
  v18 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v19 = *(a2 + 146);
  v20 = *(a2 + 5);
  v21 = "N2re16SkyboxMeshIDDataE";
  if (("N2re16SkyboxMeshIDDataE" & 0x8000000000000000) != 0)
  {
    v22 = ("N2re16SkyboxMeshIDDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  v25 = *(v20 + 48) - 0x61C8864680B583E9;
  v113 = a1;
  v115 = v6;
  if (!*(v19 + 64))
  {
    goto LABEL_12;
  }

  v26 = (v25 + (v21 << 6) + (v21 >> 2)) ^ v21;
  v27 = *(*(v19 + 72) + 4 * (v26 % *(v19 + 88)));
  if (v27 == 0x7FFFFFFF)
  {
    goto LABEL_12;
  }

  v28 = *(v19 + 80);
  while (*(v28 + 24 * v27 + 8) != v26)
  {
    v27 = *(v28 + 24 * v27) & 0x7FFFFFFF;
    if (v27 == 0x7FFFFFFF)
    {
      goto LABEL_12;
    }
  }

  v29 = *(v28 + 24 * v27 + 16);
  if (v29)
  {
    v2 = *(v29 + 8);
    v30 = 1;
  }

  else
  {
LABEL_12:
    v30 = 0;
  }

  v31 = "N2re22DrawCallIdentifierDataE";
  if (("N2re22DrawCallIdentifierDataE" & 0x8000000000000000) != 0)
  {
    v32 = ("N2re22DrawCallIdentifierDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v33 = 5381;
    do
    {
      v31 = v33;
      v34 = *v32++;
      v33 = (33 * v33) ^ v34;
    }

    while (v34);
  }

  v35 = 0x7FFFFFFFLL;
  if (*(v19 + 16))
  {
    v36 = (v25 + (v31 << 6) + (v31 >> 2)) ^ v31;
    v37 = *(*(v19 + 24) + 4 * (v36 % *(v19 + 40)));
    if (v37 != 0x7FFFFFFF)
    {
      v38 = *(v19 + 32);
      v35 = 0x7FFFFFFFLL;
      while (*(v38 + 24 * v37 + 8) != v36)
      {
        v37 = *(v38 + 24 * v37) & 0x7FFFFFFF;
        if (v37 == 0x7FFFFFFF)
        {
          goto LABEL_23;
        }
      }

      v35 = v37;
    }
  }

LABEL_23:
  v39 = *(*(*(v19 + 32) + 24 * v35 + 16) + 8);
  v116 = a2;
  v40 = *a2;
  memset(&v150[32], 0, 96);
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  memset(v150, 0, 25);
  v151 = v18 + 16;
  v152 = &v187;
  v155 = 0;
  v153 = 0;
  v154 = 0;
  v157 = 0u;
  v158 = 0u;
  v156 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0xFFFF0100FFFF0100;
  v162 = 0;
  v163 = 0;
  v146 = &unk_1F5D04380;
  v164 = &v171;
  v165 = v39;
  v166 = v17;
  v167 = v40;
  v41 = re::RenderGraphDataStore::get<re::CameraData>(v19, *(v20 + 48));
  v42 = v41;
  v43 = *(v41 + 840);
  v44 = *(v43 + 40);
  if (v44)
  {
    for (i = 0; i != v44; ++i)
    {
      v41 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v43, i);
      v46 = *(v41 + 16);
      if (v46)
      {
        v47 = 736 * v46;
        v48 = *(v41 + 32) + 512;
        do
        {
          if (*v48 == v2)
          {
            v49 = v30;
          }

          else
          {
            v49 = 0;
          }

          if (*v48)
          {
            if ((v49 & 1) == 0)
            {
              v41 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(*&v5 + 240, v48);
              if ((v41 & 1) == 0 && (*(v48 + 12) & *(v42 + 904)) != 0)
              {
                v41 = re::mesh_traversal::traverseMeshScene(&v146, (v48 - 512), 0);
              }
            }
          }

          v48 += 736;
          v47 -= 736;
        }

        while (v47);
      }
    }
  }

  v50 = a2;
  v125 = v115[4];
  v127 = v115[3];
  v121 = v115[6];
  v123 = v115[5];
  v145 = 0;
  memset(v143, 0, sizeof(v143));
  v144 = 0;
  if (*(v42 + 48))
  {
    v51 = 0;
    v52 = v42 + 64;
    do
    {
      v194.columns[1] = v125;
      v194.columns[0] = v127;
      v194.columns[3] = v121;
      v194.columns[2] = v123;
      v185 = __invert_f4(v194);
      re::DynamicArray<re::Matrix4x4<float>>::add(v143, &v185);
      ++v51;
      v52 += 32;
    }

    while (v51 < *(v42 + 48));
  }

  v128 = v115[7].i32[0];
  v126 = v115[7].i32[1];
  v124 = v115[7].i32[2];
  v120 = v115[8].i32[0];
  v122 = v115[7].i32[3];
  v118 = v115[8].i32[2];
  v119 = v115[8].i32[1];
  v117 = v115[8].i32[3];
  v53 = v115[9].i32[0];
  v54 = v115[9].i32[1];
  v55 = v115[9].i32[2];
  v56 = v115[9].i32[3];
  v57 = v115[10].i32[0];
  v58 = v115[10].i32[1];
  v60 = v115[10].i32[2];
  v59 = v115[10].i32[3];
  v142 = 0;
  memset(v140, 0, sizeof(v140));
  v141 = 0;
  if (*(v42 + 128))
  {
    v61 = 0;
    v62 = v42 + 144;
    do
    {
      v185.columns[0].i64[0] = __PAIR64__(v126, v128);
      v185.columns[0].i64[1] = __PAIR64__(v122, v124);
      v185.columns[1].i64[0] = __PAIR64__(v119, v120);
      v185.columns[1].i64[1] = __PAIR64__(v117, v118);
      v185.columns[2].i64[0] = __PAIR64__(v54, v53);
      v185.columns[2].i64[1] = __PAIR64__(v56, v55);
      v185.columns[3].i64[0] = __PAIR64__(v58, v57);
      v185.columns[3].i64[1] = __PAIR64__(v59, v60);
      re::DynamicArray<re::Matrix4x4<float>>::add(v140, &v185);
      ++v61;
      v62 += 240;
    }

    while (v61 < *(v42 + 128));
  }

  v63 = *(v42 + 890);
  v137 = 0;
  HIBYTE(v138) = 0;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v139 = -1;
  if (v63 > 1)
  {
    if (v135)
    {
      **(&v135 + 1) = xmmword_1E30DA6E0;
      v65 = v135;
      if (v135)
      {
        if (*(&v133 + 1))
        {
          *v66.f32 = vcvt_f32_u32(v114);
          v66.i64[1] = v66.i64[0];
          v67 = *(&v135 + 1);
          v68 = v134;
          *v134 = vrndaq_f32(vmulq_f32(**(&v135 + 1), v66));
          *(v68 + 16) = 0x3F80000000000000;
          if (v65 != 1)
          {
            *(v67 + 16) = xmmword_1E30DA6F0;
            v50 = v135;
            if (v135 > 1)
            {
              v50 = *(&v133 + 1);
              if (*(&v133 + 1) > 1uLL)
              {
                v69 = v134;
                *(v134 + 24) = vrndaq_f32(vmulq_f32(*(*(&v135 + 1) + 16), v66));
                *(v69 + 40) = 0;
                v70 = (v69 + 44);
                v50 = a2;
                goto LABEL_55;
              }

LABEL_148:
              v129 = 0;
              v186 = 0u;
              memset(&v185, 0, sizeof(v185));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v177 = 136315906;
              v178 = "operator[]";
              v179 = 1024;
              v180 = 468;
              v181 = 2048;
              v182 = 1;
              v183 = 2048;
              v184 = v50;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

LABEL_147:
            v129 = 0;
            v186 = 0u;
            memset(&v185, 0, sizeof(v185));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v177 = 136315906;
            v178 = "operator[]";
            v179 = 1024;
            v180 = 468;
            v181 = 2048;
            v182 = 1;
            v183 = 2048;
            v184 = v50;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_148;
          }

LABEL_146:
          v129 = 0;
          v186 = 0u;
          memset(&v185, 0, sizeof(v185));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v177 = 136315906;
          v178 = "operator[]";
          v179 = 1024;
          v180 = 468;
          v181 = 2048;
          v182 = 1;
          v183 = 2048;
          v184 = 1;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_147;
        }

        goto LABEL_144;
      }

      goto LABEL_142;
    }

    v129 = 0;
    v186 = 0u;
    memset(&v185, 0, sizeof(v185));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v177 = 136315906;
    v178 = "operator[]";
    v179 = 1024;
    v180 = 468;
    v181 = 2048;
    v182 = 0;
    v183 = 2048;
    v184 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v129 = 0;
    v186 = 0u;
    memset(&v185, 0, sizeof(v185));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v177 = 136315906;
    v178 = "operator[]";
    v179 = 1024;
    v180 = 468;
    v181 = 2048;
    v182 = 0;
    v183 = 2048;
    v184 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_142:
    v129 = 0;
    v186 = 0u;
    memset(&v185, 0, sizeof(v185));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v177 = 136315906;
    v178 = "operator[]";
    v179 = 1024;
    v180 = 468;
    v181 = 2048;
    v182 = 0;
    v183 = 2048;
    v184 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_143;
  }

  if (!v135)
  {
    goto LABEL_141;
  }

  **(&v135 + 1) = xmmword_1E3063230;
  if (!v135)
  {
LABEL_143:
    v129 = 0;
    v186 = 0u;
    memset(&v185, 0, sizeof(v185));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v177 = 136315906;
    v178 = "operator[]";
    v179 = 1024;
    v180 = 468;
    v181 = 2048;
    v182 = 0;
    v183 = 2048;
    v184 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_144:
    v129 = 0;
    v186 = 0u;
    memset(&v185, 0, sizeof(v185));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v177 = 136315906;
    v178 = "operator[]";
    v179 = 1024;
    v180 = 468;
    v181 = 2048;
    v182 = 0;
    v183 = 2048;
    v184 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_145;
  }

  if (!*(&v133 + 1))
  {
LABEL_145:
    v129 = 0;
    v186 = 0u;
    memset(&v185, 0, sizeof(v185));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v177 = 136315906;
    v178 = "operator[]";
    v179 = 1024;
    v180 = 468;
    v181 = 2048;
    v182 = 0;
    v183 = 2048;
    v184 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_146;
  }

  v71 = v134;
  *v72.f32 = vcvt_f32_u32(v114);
  v72.i64[1] = v72.i64[0];
  *v134 = vrndaq_f32(vmulq_f32(**(&v135 + 1), v72));
  *(v71 + 16) = 0;
  v70 = (v71 + 20);
LABEL_55:
  *v70 = 1065353216;
  v136 = 2;
  v132[0] = 0;
  v138 = 0;
  v73 = re::RenderGraphContext::rtResolution(v50);
  if (!*(v50 + 1352))
  {
    v74 = 0;
    v75 = 0;
    goto LABEL_57;
  }

  v75 = re::DrawCallRecorder::allocateDrawCallRecorderGroup((v50 + 1352), "SelectionEmitter", "SelectionAll");
  if (!*(v50 + 1352))
  {
    v74 = 0;
    goto LABEL_57;
  }

  v74 = re::DrawCallRecorder::allocateDrawCallRecorderGroup((v50 + 1352), "SelectionEmitter", "SelectionNearestPass1");
  if (!*(v50 + 1352))
  {
LABEL_57:
    v76 = 0;
    goto LABEL_58;
  }

  v76 = re::DrawCallRecorder::allocateDrawCallRecorderGroup((v50 + 1352), "SelectionEmitter", "SelectionNearestPass2");
LABEL_58:
  (v176[20])(*v176, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"Selection" encoding:4]);
  v77 = v115[1].i32[2];
  v78 = *(*(v50 + 40) + 16);
  v79 = strcmp(v78, "SelectionRenderGroup01Node");
  if (v77 == 1)
  {
    if (v79)
    {
      if (!strcmp(v78, "SelectionRenderGroup23Node"))
      {
        v80 = "SelectionAllGroup23";
      }

      else if (!strcmp(v78, "SelectionRenderGroup45Node"))
      {
        v80 = "SelectionAllGroup45";
      }

      else if (!strcmp(v78, "SelectionRenderGroup67Node"))
      {
        v80 = "SelectionAllGroup67";
      }

      else
      {
        v80 = "SelectionAll";
      }
    }

    else
    {
      v80 = "SelectionAllGroup01";
    }

    v82 = strlen(v80);
    if (v82)
    {
      MurmurHash3_x64_128(v80, v82, 0, &v185);
      v83 = (v185.columns[0].i64[1] - 0x61C8864680B583E9 + (v185.columns[0].i64[0] << 6) + (v185.columns[0].i64[0] >> 2)) ^ v185.columns[0].i64[0];
    }

    else
    {
      v83 = 0;
    }

    if (v171)
    {
      v84 = *(*(&v171 + 1) + 4 * (v83 % DWORD2(v172)));
      if (v84 != 0x7FFFFFFF)
      {
        while (*(v172 + 344 * v84 + 8) != v83)
        {
          v84 = *(v172 + 344 * v84) & 0x7FFFFFFF;
          if (v84 == 0x7FFFFFFF)
          {
            goto LABEL_115;
          }
        }

        re::DrawTableSlice::DrawTableSlice(&v185, v172 + 344 * v84 + 16);
        v85 = *v116;
        v86 = *(v116 + 1);
        v87 = *(v116 + 3);
        re::RenderGraphContext::rtInfo(v116, *(v116 + 5), &v177);
        v129 = 134217472;
        v130 = 134217472;
        v131 = 0;
        re::encodeDrawCalls(&v175, &v185, v85, v86, v87, &v177, &v129, v80, *(*(v116 + 5) + 16), *(*(v116 + 5) + 24), *(*(v116 + 5) + 32), v145, v142, v132, v73, v75, v80 == "SelectionAll", 0, 0, 0, 0);
      }
    }
  }

  else
  {
    if (v79)
    {
      if (!strcmp(v78, "SelectionRenderGroup23Node"))
      {
        v81 = "SelectionNearestPass1Group23";
      }

      else if (!strcmp(v78, "SelectionRenderGroup45Node"))
      {
        v81 = "SelectionNearestPass1Group45";
      }

      else if (!strcmp(v78, "SelectionRenderGroup67Node"))
      {
        v81 = "SelectionNearestPass1Group67";
      }

      else
      {
        v81 = "SelectionNearestPass1";
      }
    }

    else
    {
      v81 = "SelectionNearestPass1Group01";
    }

    v88 = strlen(v81);
    if (v88)
    {
      MurmurHash3_x64_128(v81, v88, 0, &v185);
      v89 = (v185.columns[0].i64[1] - 0x61C8864680B583E9 + (v185.columns[0].i64[0] << 6) + (v185.columns[0].i64[0] >> 2)) ^ v185.columns[0].i64[0];
    }

    else
    {
      v89 = 0;
    }

    if (v171)
    {
      v90 = *(*(&v171 + 1) + 4 * (v89 % DWORD2(v172)));
      if (v90 != 0x7FFFFFFF)
      {
        while (*(v172 + 344 * v90 + 8) != v89)
        {
          v90 = *(v172 + 344 * v90) & 0x7FFFFFFF;
          if (v90 == 0x7FFFFFFF)
          {
            goto LABEL_95;
          }
        }

        re::DrawTableSlice::DrawTableSlice(&v185, v172 + 344 * v90 + 16);
        v91 = *v50;
        v92 = *(v50 + 8);
        v93 = *(v50 + 24);
        re::RenderGraphContext::rtInfo(v50, *(v50 + 40), &v177);
        v129 = 134217472;
        v130 = 134217472;
        v131 = 0;
        re::encodeDrawCalls(&v175, &v185, v91, v92, v93, &v177, &v129, v81, *(*(v50 + 40) + 16), *(*(v50 + 40) + 24), *(*(v50 + 40) + 32), v145, v142, v132, v73, v74, 0, 0, 0, 0, 0);
      }
    }

LABEL_95:
    v94 = *(v50 + 40);
    v95 = re::RenderGraphDataStore::get<re::SelectionDrawCallBufferData>(*(v50 + 1168), *(v94 + 48));
    if (*(v95 + 8))
    {
      v96 = v95;
      v97 = re::RenderGraphContext::metalBuffer(v50, &v113[2]);
      v99 = [*re::BufferSlice::buffer(v97 v98)];
      bzero(v99, *(v96 + 8));
      v94 = *(v50 + 40);
    }

    v100 = *(v94 + 16);
    if (!strcmp(v100, "SelectionRenderGroup01Node"))
    {
      v101 = "SelectionNearestPass2Group01";
    }

    else if (!strcmp(v100, "SelectionRenderGroup23Node"))
    {
      v101 = "SelectionNearestPass2Group23";
    }

    else if (!strcmp(v100, "SelectionRenderGroup45Node"))
    {
      v101 = "SelectionNearestPass2Group45";
    }

    else if (!strcmp(v100, "SelectionRenderGroup67Node"))
    {
      v101 = "SelectionNearestPass2Group67";
    }

    else
    {
      v101 = "SelectionNearestPass2";
    }

    v102 = strlen(v101);
    if (v102)
    {
      MurmurHash3_x64_128(v101, v102, 0, &v185);
      v103 = (v185.columns[0].i64[1] - 0x61C8864680B583E9 + (v185.columns[0].i64[0] << 6) + (v185.columns[0].i64[0] >> 2)) ^ v185.columns[0].i64[0];
    }

    else
    {
      v103 = 0;
    }

    if (v171)
    {
      v104 = *(*(&v171 + 1) + 4 * (v103 % DWORD2(v172)));
      if (v104 != 0x7FFFFFFF)
      {
        while (*(v172 + 344 * v104 + 8) != v103)
        {
          v104 = *(v172 + 344 * v104) & 0x7FFFFFFF;
          if (v104 == 0x7FFFFFFF)
          {
            goto LABEL_115;
          }
        }

        re::DrawTableSlice::DrawTableSlice(&v185, v172 + 344 * v104 + 16);
        v105 = *v116;
        v106 = *(v116 + 1);
        v107 = *(v116 + 3);
        re::RenderGraphContext::rtInfo(v116, *(v116 + 5), &v177);
        v129 = 134217472;
        v130 = 134217472;
        v131 = 0;
        re::encodeDrawCalls(&v175, &v185, v105, v106, v107, &v177, &v129, v101, *(*(v116 + 5) + 16), *(*(v116 + 5) + 24), *(*(v116 + 5) + 32), v145, v142, v132, v73, v76, v101 == "SelectionNearestPass2", 0, 0, 0, 0);
      }
    }
  }

LABEL_115:
  (v176[21])(*v176, sel_popDebugGroup);
  if (*(&v134 + 1))
  {
    if (v135)
    {
      (*(**(&v134 + 1) + 40))();
      v135 = 0uLL;
    }

    *(&v134 + 1) = 0;
  }

  if (v133 && *(&v133 + 1))
  {
    (*(*v133 + 40))();
  }

  if (v140[0] && v142)
  {
    (*(*v140[0] + 40))();
  }

  if (v143[0] && v145)
  {
    (*(*v143[0] + 40))();
  }

  v146 = &unk_1F5D034D8;
  for (j = 240; j != 160; j -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(&v146 + j);
  }

  re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v168);
  re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(&v171);
  if (v189)
  {
    v109 = &v191[9 * v189];
    v110 = v191;
    do
    {
      *v110 = 0;
      ++*(v110 + 2);
      v110 += 9;
    }

    while (v110 != v109);
  }

  if (v187)
  {
    v111 = &v187 + 7 * v187 + 1;
    v112 = &v188;
    do
    {
      *v112 = 0;
      ++*(v112 + 2);
      v112 += 7;
    }

    while (v112 != v111);
  }

  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v175);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#1},void ()(re::RenderGraphContext &)>::cloneInto(void *a1, void *a2)
{
  a2[2] = 0;
  v2 = a1[1];
  v3 = a1[2];
  *a2 = &unk_1F5D10498;
  a2[1] = v2;
  a2[3] = -1;
  a2[2] = v3;
  a2[3] = a1[3];
  a2[4] = a1[4];
  return a2;
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#1},void ()(re::RenderGraphContext &)>::moveInto(void *a1, void *a2)
{
  a2[2] = 0;
  v2 = a1[1];
  v3 = a1[2];
  *a2 = &unk_1F5D10498;
  a2[1] = v2;
  a2[3] = -1;
  a2[2] = v3;
  a2[3] = a1[3];
  a2[4] = a1[4];
  return a2;
}

uint64_t re::RenderGraphDataStore::get<re::RenderGraphSelectionParams>(uint64_t a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1BEA18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEA18))
  {
    qword_1EE1BEA10 = re::internal::getOrCreateInfo("RenderGraphSelectionParams", re::allocInfo_RenderGraphSelectionParams, re::initInfo_RenderGraphSelectionParams, &unk_1EE1BE9E8, 0);
    __cxa_guard_release(&qword_1EE1BEA18);
  }

  v4 = strlen(*(qword_1EE1BEA10 + 48));
  if (v4)
  {
    MurmurHash3_x64_128(*(qword_1EE1BEA10 + 48), v4, 0, v11);
    v5 = (v11[1] - 0x61C8864680B583E9 + (v11[0] << 6) + (v11[0] >> 2)) ^ v11[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

uint64_t re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re22MeshLodSelectInputDataE";
  if (("N2re22MeshLodSelectInputDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re22MeshLodSelectInputDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#2},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D10500;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  result = a2[7];
  a1[8] = result;
  return result;
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#2},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = 0x100000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 8, v5);
  v5[0] = 0x100000001;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 24, v5);
  v5[0] = 0x200000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  return re::RenderGraphBuilder::write(a2, a1 + 40, v5);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#2},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10500;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  return a2;
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#3},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D10558;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  result = a2[7];
  a1[8] = result;
  return result;
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#3},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = 0x100000002;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 8, v5);
  v5[0] = 0x100000003;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 24, v5);
  v5[0] = 0x200000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  return re::RenderGraphBuilder::write(a2, a1 + 40, v5);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#3},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10558;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  return a2;
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#4},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D105B0;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  result = a2[7];
  a1[8] = result;
  return result;
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#4},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = 0x100000004;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 8, v5);
  v5[0] = 0x100000005;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 24, v5);
  v5[0] = 0x200000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  return re::RenderGraphBuilder::write(a2, a1 + 40, v5);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#4},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D105B0;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  return a2;
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#5},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D10608;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  result = a2[7];
  a1[8] = result;
  return result;
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#5},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = 0x100000006;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 8, v5);
  v5[0] = 0x100000007;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 24, v5);
  v5[0] = 0x200000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  return re::RenderGraphBuilder::write(a2, a1 + 40, v5);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#5},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10608;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  return a2;
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#6},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D10660;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  a1[8] = a2[7];
  a1[9] = 0.0;
  a1[10] = NAN;
  a1[9] = a2[8];
  a1[10] = a2[9];
  a1[11] = 0.0;
  a1[12] = NAN;
  a1[11] = a2[10];
  a1[12] = a2[11];
  a1[13] = 0.0;
  a1[14] = NAN;
  a1[13] = a2[12];
  a1[14] = a2[13];
  a1[15] = 0.0;
  a1[16] = NAN;
  a1[15] = a2[14];
  a1[16] = a2[15];
  a1[17] = 0.0;
  a1[18] = NAN;
  a1[17] = a2[16];
  a1[18] = a2[17];
  a1[19] = 0.0;
  a1[20] = NAN;
  a1[19] = a2[18];
  a1[20] = a2[19];
  a1[21] = 0.0;
  a1[22] = NAN;
  a1[21] = a2[20];
  a1[22] = a2[21];
  a1[23] = 0.0;
  a1[24] = NAN;
  a1[23] = a2[22];
  a1[24] = a2[23];
  a1[25] = 0.0;
  a1[26] = NAN;
  a1[25] = a2[24];
  a1[26] = a2[25];
  a1[27] = 0.0;
  a1[28] = NAN;
  a1[27] = a2[26];
  a1[28] = a2[27];
  a1[29] = 0.0;
  a1[30] = NAN;
  a1[29] = a2[28];
  a1[30] = a2[29];
  a1[31] = 0.0;
  a1[32] = NAN;
  a1[31] = a2[30];
  a1[32] = a2[31];
  a1[33] = 0.0;
  a1[34] = NAN;
  a1[33] = a2[32];
  result = a2[33];
  a1[34] = result;
  return result;
}

void re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#6},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 136, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 8, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 24, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 40, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 56, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 72, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 88, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 104, &v4);
  *(&v4 + 3) = 0;
  LODWORD(v4) = 0;
  v5 = 2;
  re::RenderGraphBuilder::read(a2, a1 + 120, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 152, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 168, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 184, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 200, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 216, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 232, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 248, &v4);
  v4 = 0x400000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 264, &v4);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#6},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10660;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  a2[9] = 0;
  a2[10] = -1;
  a2[9] = a1[9];
  a2[10] = a1[10];
  a2[11] = 0;
  a2[12] = -1;
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = 0;
  a2[14] = -1;
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = 0;
  a2[16] = -1;
  a2[15] = a1[15];
  a2[16] = a1[16];
  a2[17] = 0;
  a2[18] = -1;
  a2[17] = a1[17];
  a2[18] = a1[18];
  a2[19] = 0;
  a2[20] = -1;
  a2[19] = a1[19];
  a2[20] = a1[20];
  a2[21] = 0;
  a2[22] = -1;
  a2[21] = a1[21];
  a2[22] = a1[22];
  a2[23] = 0;
  a2[24] = -1;
  a2[23] = a1[23];
  a2[24] = a1[24];
  a2[25] = 0;
  a2[26] = -1;
  a2[25] = a1[25];
  a2[26] = a1[26];
  a2[27] = 0;
  a2[28] = -1;
  a2[27] = a1[27];
  a2[28] = a1[28];
  a2[29] = 0;
  a2[30] = -1;
  a2[29] = a1[29];
  a2[30] = a1[30];
  a2[31] = 0;
  a2[32] = -1;
  a2[31] = a1[31];
  a2[32] = a1[32];
  a2[33] = 0;
  a2[34] = -1;
  a2[33] = a1[33];
  a2[34] = a1[34];
  return a2;
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#2},void ()(re::RenderGraphContext &)>::Callable(double *a1, double *a2)
{
  *a1 = &unk_1F5D106B8;
  a1[1] = 0.0;
  a1[2] = NAN;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = 0.0;
  a1[4] = NAN;
  a1[3] = a2[2];
  a1[4] = a2[3];
  a1[5] = 0.0;
  a1[6] = NAN;
  a1[5] = a2[4];
  a1[6] = a2[5];
  a1[7] = 0.0;
  a1[8] = NAN;
  a1[7] = a2[6];
  a1[8] = a2[7];
  a1[9] = 0.0;
  a1[10] = NAN;
  a1[9] = a2[8];
  a1[10] = a2[9];
  a1[11] = 0.0;
  a1[12] = NAN;
  a1[11] = a2[10];
  a1[12] = a2[11];
  a1[13] = 0.0;
  a1[14] = NAN;
  a1[13] = a2[12];
  a1[14] = a2[13];
  a1[15] = 0.0;
  a1[16] = NAN;
  a1[15] = a2[14];
  a1[16] = a2[15];
  a1[17] = 0.0;
  a1[18] = NAN;
  a1[17] = a2[16];
  a1[18] = a2[17];
  a1[19] = 0.0;
  a1[20] = NAN;
  a1[19] = a2[18];
  a1[20] = a2[19];
  a1[21] = 0.0;
  a1[22] = NAN;
  a1[21] = a2[20];
  a1[22] = a2[21];
  a1[23] = 0.0;
  a1[24] = NAN;
  a1[23] = a2[22];
  a1[24] = a2[23];
  a1[25] = 0.0;
  a1[26] = NAN;
  a1[25] = a2[24];
  a1[26] = a2[25];
  a1[27] = 0.0;
  a1[28] = NAN;
  a1[27] = a2[26];
  a1[28] = a2[27];
  a1[29] = 0.0;
  a1[30] = NAN;
  a1[29] = a2[28];
  a1[30] = a2[29];
  a1[31] = 0.0;
  a1[32] = NAN;
  a1[31] = a2[30];
  a1[32] = a2[31];
  a1[33] = 0.0;
  a1[34] = NAN;
  a1[33] = a2[32];
  result = a2[33];
  a1[34] = result;
  a1[35] = a2[34];
  return result;
}

void re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#2},void ()(re::RenderGraphContext &)>::operator()(uint64_t a1, re::RenderGraphContext *a2)
{
  v4 = *(re::RenderGraphDataStore::get<re::RenderGraphSelectionParams>(*(a2 + 146), *(*(a2 + 5) + 48)) + 8);
  v5.i64[0] = -1;
  v5.i64[1] = -1;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v4, v5)))))
  {
    v6 = v4.i32[0];
    v7 = v4.u32[1];
    v8 = v4.u32[2];
    v9 = v4.u32[3];
  }

  else
  {
    v6 = *(a1 + 280) >> 1;
    v7 = *(a1 + 284) >> 1;
    v8 = 1;
    v9 = 1;
  }

  v68 = 0;
  v69 = 16 * v8;
  v70 = 0;
  v10 = v8;
  v67[0] = 0;
  v67[1] = v69;
  v67[2] = 0;
  v66[0] = 0;
  v66[1] = v69;
  v66[2] = 0;
  v65[0] = 0;
  v65[1] = v69;
  v65[2] = 0;
  v64[0] = 0;
  v64[1] = v69;
  v64[2] = 0;
  v63[0] = 0;
  v63[1] = v69;
  v63[2] = 0;
  v62[0] = 0;
  v62[1] = v69;
  v62[2] = 0;
  v61[0] = 0;
  v61[1] = v69;
  v61[2] = 0;
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(a2, 0, &v60);
  re::RenderGraphContext::metalTexture(a2, a1 + 8, 0, 0, &v59);
  v11 = v59;
  v12 = v6;
  v56 = v6;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v13 = re::RenderGraphContext::metalBuffer(a2, a1 + 152);
  re::BufferSlice::buffer(v13, v14);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v11, 0, 0, &v56, &v54, v13, &v68);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 24, 0, 0, &v59);
  v15 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v16 = re::RenderGraphContext::metalBuffer(a2, a1 + 168);
  re::BufferSlice::buffer(v16, v17);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v15, 0, 0, &v56, &v54, v16, v67);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 40, 0, 0, &v59);
  v18 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v19 = re::RenderGraphContext::metalBuffer(a2, a1 + 184);
  re::BufferSlice::buffer(v19, v20);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v18, 0, 0, &v56, &v54, v19, v66);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 56, 0, 0, &v59);
  v21 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v22 = re::RenderGraphContext::metalBuffer(a2, a1 + 200);
  re::BufferSlice::buffer(v22, v23);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v21, 0, 0, &v56, &v54, v22, v65);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 72, 0, 0, &v59);
  v24 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v25 = re::RenderGraphContext::metalBuffer(a2, a1 + 216);
  re::BufferSlice::buffer(v25, v26);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v24, 0, 0, &v56, &v54, v25, v64);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 88, 0, 0, &v59);
  v27 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v28 = re::RenderGraphContext::metalBuffer(a2, a1 + 232);
  re::BufferSlice::buffer(v28, v29);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v27, 0, 0, &v56, &v54, v28, v63);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 104, 0, 0, &v59);
  v30 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v31 = re::RenderGraphContext::metalBuffer(a2, a1 + 248);
  re::BufferSlice::buffer(v31, v32);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v30, 0, 0, &v56, &v54, v31, v62);
  if (v59)
  {
  }

  re::RenderGraphContext::metalTexture(a2, a1 + 120, 0, 0, &v59);
  v33 = v59;
  v56 = v12;
  v57 = v7;
  v58 = 0;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = 1;
  v34 = re::RenderGraphContext::metalBuffer(a2, a1 + 264);
  re::BufferSlice::buffer(v34, v35);
  re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(&v60, v33, 0, 0, &v56, &v54, v34, v61);
  if (v59)
  {
  }

  v36 = re::RenderGraphContext::metalBuffer(a2, a1 + 136);
  re::BufferSlice::buffer(v36, v37);
  v38 = re::RenderGraphContext::metalBuffer(a2, a1 + 152);
  re::BufferSlice::buffer(v38, v39);
  v40 = re::RenderGraphContext::metalBuffer(a2, a1 + 168);
  re::BufferSlice::buffer(v40, v41);
  v42 = re::RenderGraphContext::metalBuffer(a2, a1 + 184);
  re::BufferSlice::buffer(v42, v43);
  v44 = re::RenderGraphContext::metalBuffer(a2, a1 + 200);
  re::BufferSlice::buffer(v44, v45);
  v46 = re::RenderGraphContext::metalBuffer(a2, a1 + 216);
  re::BufferSlice::buffer(v46, v47);
  v48 = re::RenderGraphContext::metalBuffer(a2, a1 + 232);
  re::BufferSlice::buffer(v48, v49);
  v50 = re::RenderGraphContext::metalBuffer(a2, a1 + 248);
  re::BufferSlice::buffer(v50, v51);
  v52 = re::RenderGraphContext::metalBuffer(a2, a1 + 264);
  re::BufferSlice::buffer(v52, v53);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#2},void ()(re::RenderGraphContext &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D106B8;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  a2[5] = 0;
  a2[6] = -1;
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = 0;
  a2[8] = -1;
  a2[7] = a1[7];
  a2[8] = a1[8];
  a2[9] = 0;
  a2[10] = -1;
  a2[9] = a1[9];
  a2[10] = a1[10];
  a2[11] = 0;
  a2[12] = -1;
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = 0;
  a2[14] = -1;
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = 0;
  a2[16] = -1;
  a2[15] = a1[15];
  a2[16] = a1[16];
  a2[17] = 0;
  a2[18] = -1;
  a2[17] = a1[17];
  a2[18] = a1[18];
  a2[19] = 0;
  a2[20] = -1;
  a2[19] = a1[19];
  a2[20] = a1[20];
  a2[21] = 0;
  a2[22] = -1;
  a2[21] = a1[21];
  a2[22] = a1[22];
  a2[23] = 0;
  a2[24] = -1;
  a2[23] = a1[23];
  a2[24] = a1[24];
  a2[25] = 0;
  a2[26] = -1;
  a2[25] = a1[25];
  a2[26] = a1[26];
  a2[27] = 0;
  a2[28] = -1;
  a2[27] = a1[27];
  a2[28] = a1[28];
  a2[29] = 0;
  a2[30] = -1;
  a2[29] = a1[29];
  a2[30] = a1[30];
  a2[31] = 0;
  a2[32] = -1;
  a2[31] = a1[31];
  a2[32] = a1[32];
  a2[33] = 0;
  a2[34] = -1;
  a2[33] = a1[33];
  a2[34] = a1[34];
  a2[35] = a1[35];
  return a2;
}

uint64_t std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::ecs2::SkyboxMeshID &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D10710;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::ecs2::SkyboxMeshID &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = *a4;
  v5 = "N2re16SkyboxMeshIDDataE";
  if (("N2re16SkyboxMeshIDDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re16SkyboxMeshIDDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v13 = (qword_1EE1BE9F0 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a3 + 8) + 32))(*(a3 + 8), 16, 8);
  *v9 = &unk_1F5D10790;
  v9[1] = v11;
  v12 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a3 + 64, &v13, &v12);
}

uint64_t std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_0>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::ecs2::SkyboxMeshID &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraView> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D107C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraView> &)>::operator()(uint64_t a1, re::RenderFrame *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a4 + 16))
  {
    v5 = a3;
    v4 = a1;
    v6 = *(a4 + 32);
    if (atomic_load_explicit(&qword_1EE1BEA28, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    a2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v16 = __cxa_guard_acquire(&qword_1EE1BEA28);
  if (v16)
  {
    qword_1EE1BEA20 = re::hashString(v16, v17);
    __cxa_guard_release(&qword_1EE1BEA28);
  }

LABEL_3:
  if (*(v6 + 8))
  {
    v8 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 9);
  }

  v9 = qword_1EE1BEA20;
  v10 = 0x9E3779B97F4A7C17;
  v11 = strlen(v8);
  if (v11)
  {
    MurmurHash3_x64_128(v8, v11, 0, v18);
    v10 = ((*(&v18[0] + 1) - 0x61C8864680B583E9 + (*&v18[0] << 6) + (*&v18[0] >> 2)) ^ *&v18[0]) - 0x61C8864680B583E9;
  }

  v12 = (v9 >> 2) + (v9 << 6) + v10;
  v13 = re::RenderGraphDataStore::tryGet<re::CameraData>(v5, v12 ^ v9);
  if (v13)
  {
    if (*(v13 + 840))
    {
      *&v18[0] = &unk_1F5D10848;
      *(&v18[0] + 1) = v13;
      re::RenderGraphDataStore::add<re::CurrentSelectionData,re::CurrentSelectionData&>(v5, qword_1EE1BE9F0, v18);
      v14 = qword_1EE1BE9F0;
      v15 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(v5, v12 ^ v9);
      re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData&>(v5, v14, v15);
      re::RenderFrame::emitGraph(a2, (v4 + 8), (v4 + 18));
    }
  }
}

uint64_t std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_1>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraView> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphDataStore::add<re::CurrentSelectionData,re::CurrentSelectionData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re20CurrentSelectionDataE";
  if (("N2re20CurrentSelectionDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re20CurrentSelectionDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v13 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  v10 = *(a3 + 8);
  *v9 = &unk_1F5D10848;
  v9[1] = v10;
  v12 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v13, &v12);
}

uint64_t re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re22MeshLodSelectInputDataE";
  if (("N2re22MeshLodSelectInputDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re22MeshLodSelectInputDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v26 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 320, 16);
  *v9 = &unk_1F5D069E0;
  v10 = *(a3 + 32);
  v12 = *(a3 + 48);
  v11 = *(a3 + 64);
  *(v9 + 16) = *(a3 + 16);
  *(v9 + 32) = v10;
  *(v9 + 48) = v12;
  *(v9 + 64) = v11;
  *(v9 + 80) = *(a3 + 80);
  v14 = *(a3 + 112);
  v13 = *(a3 + 128);
  v15 = *(a3 + 96);
  *(v9 + 144) = *(a3 + 144);
  *(v9 + 112) = v14;
  *(v9 + 128) = v13;
  *(v9 + 96) = v15;
  v16 = *(a3 + 160);
  *(v9 + 160) = v16;
  if (v16 == 1)
  {
    v17 = *(a3 + 176);
    v18 = *(a3 + 192);
    v19 = *(a3 + 224);
    *(v9 + 208) = *(a3 + 208);
    *(v9 + 224) = v19;
    *(v9 + 176) = v17;
    *(v9 + 192) = v18;
  }

  v20 = *(a3 + 240);
  *(v9 + 240) = v20;
  if (v20 == 1)
  {
    v21 = *(a3 + 256);
    v22 = *(a3 + 272);
    v23 = *(a3 + 304);
    *(v9 + 288) = *(a3 + 288);
    *(v9 + 304) = v23;
    *(v9 + 256) = v21;
    *(v9 + 272) = v22;
  }

  v25 = v9;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v26, &v25);
}

__n128 std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraMultiView> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D10880;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraMultiView> &)>::operator()(uint64_t a1, re::RenderFrame *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a4 + 16))
  {
    v5 = a3;
    v4 = a1;
    v6 = *(a4 + 32);
    if (atomic_load_explicit(&qword_1EE1BEA38, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    a2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v16 = __cxa_guard_acquire(&qword_1EE1BEA38);
  if (v16)
  {
    qword_1EE1BEA30 = re::hashString(v16, v17);
    __cxa_guard_release(&qword_1EE1BEA38);
  }

LABEL_3:
  if (*(v6 + 8))
  {
    v8 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 9);
  }

  v9 = qword_1EE1BEA30;
  v10 = 0x9E3779B97F4A7C17;
  v11 = strlen(v8);
  if (v11)
  {
    MurmurHash3_x64_128(v8, v11, 0, v18);
    v10 = ((*(&v18[0] + 1) - 0x61C8864680B583E9 + (*&v18[0] << 6) + (*&v18[0] >> 2)) ^ *&v18[0]) - 0x61C8864680B583E9;
  }

  v12 = (v9 >> 2) + (v9 << 6) + v10;
  v13 = re::RenderGraphDataStore::tryGet<re::CameraData>(v5, v12 ^ v9);
  if (v13)
  {
    if (*(v13 + 840))
    {
      *&v18[0] = &unk_1F5D10848;
      *(&v18[0] + 1) = v13;
      re::RenderGraphDataStore::add<re::CurrentSelectionData,re::CurrentSelectionData&>(v5, qword_1EE1BE9F0, v18);
      v14 = qword_1EE1BE9F0;
      v15 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(v5, v12 ^ v9);
      re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData&>(v5, v14, v15);
      re::RenderFrame::emitGraph(a2, (v4 + 8), (v4 + 18));
    }
  }
}

uint64_t std::__function::__func<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2,std::allocator<re::RenderGraphSelectionEmitter::handleRenderFrameDataStream(re::RenderFrame &,re::WeakStringID const&)::$_2>,void ()(re::RenderFrame &,re::RenderGraphDataStore &,re::DynamicArray<re::CameraMultiView> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::BucketArray<re::SceneName,4ul>::operator[](uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 40))
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, 0, 0);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (!*(a1 + 8))
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v2 = a1 + 24;
  }

  else
  {
    v2 = *(a1 + 32);
  }

  return *v2;
}

void *re::DynamicArray<re::SelectionCompleteHandler>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SelectionCompleteHandler>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SelectionCompleteHandler>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SelectionConcludeHandler>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SelectionConcludeHandler>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SelectionConcludeHandler>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void *std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t re::isBoundingBoxInsideVCAPlanes(uint64_t a1, float32x4_t *a2, uint64_t a3, int a4, _BYTE *a5, float32x4_t *a6, float32x4_t *a7, uint64_t a8, float32x4_t *a9, uint64_t a10, uint64_t a11, int a12)
{
  v17 = re::transformedAABBVertices(a1, a2, v38);
  if (a3 == a11 && a3 != 0 && a11 != 0)
  {
    if (a12 <= a4)
    {
      return 0;
    }

    goto LABEL_37;
  }

  v20 = *a5;
  if (v20 > 2)
  {
    if (v20 == 5)
    {
      v25 = *a6;
      v25.i32[3] = 1.0;
      v26 = vmulq_f32(*a7, v25);
      v27 = vaddv_f32(vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)));
      goto LABEL_36;
    }

    if (v20 == 4)
    {
      goto LABEL_23;
    }

    if (v20 != 3)
    {
LABEL_28:
      if ((atomic_exchange(re::isBoundingBoxInsideVCAPlanes(re::AABB const&,re::Matrix4x4<float> const&,unsigned long long,int,re::MeshSortingConfiguration const&,re::Vector3<float> const&,re::PlaneF const&,re::Slice<re::PlaneF>,unsigned long long,int)::__FILE____LINE___logged, 1u) & 1) == 0)
      {
        v28 = *re::graphicsLogObjects(v17);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 0;
          _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "An unknown mesh sort point heuristic has been encountered. All unknown heuristics will default to kCentroid.", v37, 2u);
        }
      }

      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (*a5)
  {
    if (v20 != 1)
    {
      if (v20 != 2)
      {
        goto LABEL_28;
      }

LABEL_23:
      v23 = 0;
      while (1)
      {
        v24 = vmulq_f32(*a7, v38[v23]);
        if (vaddv_f32(vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL))) > 0.0)
        {
          return 0;
        }

        if (++v23 == 8)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_19:
    v21 = 0;
    while (1)
    {
      v22 = vmulq_f32(*a7, v38[v21]);
      if (vaddv_f32(vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL))) <= 0.0)
      {
        break;
      }

      if (++v21 == 8)
      {
        return 0;
      }
    }

    goto LABEL_37;
  }

LABEL_31:
  v29 = 0;
  v27 = 0.0;
  do
  {
    v30 = vmulq_f32(*a7, v38[v29]);
    v31 = vaddv_f32(vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)));
    if (v31 >= 0.0)
    {
      v32 = 1.0;
    }

    else
    {
      v32 = 2.0;
    }

    v27 = v27 + (v31 * v32);
    ++v29;
  }

  while (v29 != 8);
LABEL_36:
  if (v27 > 0.0)
  {
    return 0;
  }

LABEL_37:
  if (!a10)
  {
    return 1;
  }

  v33 = a9;
  result = 1;
  do
  {
    v35 = 0;
    while (1)
    {
      v36 = vmulq_f32(*v33, v38[v35]);
      if (vaddv_f32(vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL))) <= 0.0)
      {
        break;
      }

      if (++v35 == 8)
      {
        return 0;
      }
    }

    ++v33;
  }

  while (v33 != &a9[a10]);
  return result;
}

void re::SFBSystemShellStencilBlurMeshNode::execute(re::SFBSystemShellStencilBlurMeshNode *this, float32x4_t *a2)
{
  v7 = a2;
  *&v316 = this;
  v514 = *MEMORY[0x1E69E9840];
  v8 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(a2[73].i64[0], *(a2[2].i64[1] + 48));
  {
    return;
  }

  v7[70].i8[0] = 1;
  v7[97].i8[1] = 5;
  *&v453.var0 = 0x2476C06B76;
  v453.var1 = "VCABlur";
  v9 = &v453;
  *&v454.var0 = 5231452;
  v454.var1 = "True";
  *&v451.var0 = 0x4CB6D3AA6EABE92CLL;
  v451.var1 = "Transparent_BackCompat";
  *&v452.var0 = 5231452;
  v452.var1 = "True";
  re::StringID::StringID(v447, &v453);
  re::StringID::StringID(&v448, &v454);
  re::StringID::StringID(&v449, &v451);
  re::StringID::StringID(&v450, &v452);
  if ((atomic_load_explicit(&qword_1EE1BEB80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEB80))
  {
    qword_1EE1BEB78 = re::hashString("PlattersOnly", v222);
    __cxa_guard_release(&qword_1EE1BEB80);
  }

  if ((atomic_load_explicit(&qword_1EE1BEB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEB90))
  {
    qword_1EE1BEB88 = re::hashString("PlatterContentsOnly", v223);
    __cxa_guard_release(&qword_1EE1BEB90);
  }

  v10 = re::RenderGraphDataStore::tryGet<re::VCARenderData>(v7[73].i64[0], *(v7[2].i64[1] + 48));
  if (v10)
  {
    v329 = v10;
    v11 = re::RenderGraphDataStore::get<re::CameraData>(v7[73].i64[0], *(v7[2].i64[1] + 48));
    if (*(v11 + 48))
    {
      v4 = v11;
      *v332 = v11 + 64;
      re::RenderCamera::computeLocalTransform((v11 + 64), v474);
      v13 = vmulq_f32(v475, v475);
      *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
      *v13.f32 = vrsqrte_f32(v14);
      *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
      v446 = vmulq_n_f32(vnegq_f32(v475), vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
      v445 = v4[4];
      v15 = *(v7->i64[0] + 32);
      v443 = &unk_1F5D10F80;
      v444 = 0;
      v16 = (*(*v15 + 32))(v15, 48, 8);
      *v16 = 0u;
      *(v16 + 16) = 0u;
      *(v16 + 32) = 0;
      _D9 = 0x7FFFFFFFLL;
      *(v16 + 36) = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v16, v15, 3);
      v444 = v16;
      if ((atomic_load_explicit(&qword_1EE1BEBA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBA0))
      {
        qword_1EE1BEB98 = re::getCombinedScopeHash("RenderGraphGlobals", v224, v225);
        __cxa_guard_release(&qword_1EE1BEBA0);
      }

      v17 = re::RenderGraphDataStore::get<re::RendererGlobals>(v7[73].i64[0], qword_1EE1BEB98);
      v3 = re::RenderGraphDataStore::get<re::SceneScope>(v7[73].i64[0], *(v7[2].i64[1] + 48));
      if ((atomic_load_explicit(&qword_1EE1BEBB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBB0))
      {
        qword_1EE1BEBA8 = re::hashString("DynamicFunctionConstants", v226);
        __cxa_guard_release(&qword_1EE1BEBB0);
      }

      v18 = qword_1EE1BEBA8;
      v19 = strlen(*(v316 + 32));
      if (v19)
      {
        MurmurHash3_x64_128(*(v316 + 32), v19, 0, v474);
        v20 = ((v474[0].i64[1] - 0x61C8864680B583E9 + (v474[0].i64[0] << 6) + (v474[0].i64[0] >> 2)) ^ v474[0].i64[0]) - 0x61C8864680B583E9;
      }

      else
      {
        v20 = 0x9E3779B97F4A7C17;
      }

      v21 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(v7[73].i64[0], ((v18 >> 2) + (v18 << 6) + v20) ^ v18);
      if (v21)
      {
        v9 = (v21 + 8);
      }

      else
      {
        v9 = 0;
      }

      v22 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(v7[73].i64[0], *(v7[2].i64[1] + 48));
      v423 = &unk_1F5D069E0;
      v428 = *(v22 + 80);
      v23 = *(v22 + 96);
      v24 = *(v22 + 112);
      v25 = *(v22 + 128);
      v432 = *(v22 + 144);
      v431 = v25;
      v430 = v24;
      v429 = v23;
      v433 = *(v22 + 160);
      if (v433 == 1)
      {
        v26 = *(v22 + 176);
        v27 = *(v22 + 192);
        v28 = *(v22 + 208);
        v437 = *(v22 + 224);
        v436 = v28;
        v435 = v27;
        v434 = v26;
      }

      v438 = *(v22 + 240);
      if (v438 == 1)
      {
        v29 = *(v22 + 256);
        v30 = *(v22 + 272);
        v31 = *(v22 + 288);
        v442 = *(v22 + 304);
        v441 = v31;
        v440 = v30;
        v439 = v29;
      }

      v32 = vaddq_f32(v445, vmulq_f32(v446, vdupq_n_s32(0xC2C80000)));
      v33 = vsubq_f32(v32, vaddq_f32(v446, v445));
      v34 = vmulq_f32(v33, v33);
      v35 = vaddv_f32(*v34.f32);
      *v34.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35));
      *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35), vmul_f32(*v34.f32, *v34.f32)));
      v36 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35), vmul_f32(*v34.f32, *v34.f32))).f32[0]);
      v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
      v38 = vmlaq_f32(vmulq_f32(v37, xmmword_1E30661D0), xmmword_1E30476A0, v36);
      v39 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
      v40 = vmulq_f32(v38, v38);
      *&v41 = v40.f32[1] + (v40.f32[2] + v40.f32[0]);
      *v40.f32 = vrsqrte_f32(v41);
      *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
      v42 = vmulq_n_f32(v39, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
      v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), vnegq_f32(v36)), v42, v37);
      v44 = vmulq_f32(v32, v42);
      v45 = vmulq_f32(v32, vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL));
      v46 = vadd_f32(vzip1_s32(*v44.i8, *v45.i8), vzip2_s32(*v44.i8, *v45.i8));
      v47 = vextq_s8(v45, v45, 8uLL);
      *v47.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *v47.f32), v46);
      v48 = vmulq_f32(v32, v36);
      v44.i64[0] = __PAIR64__(v43.u32[0], v42.u32[1]);
      *&v49 = __PAIR64__(v43.u32[1], v42.u32[2]);
      v42.i32[1] = v43.i32[2];
      v42.i64[1] = v36.u32[0];
      v44.i64[1] = v36.u32[1];
      *(&v49 + 1) = v36.u32[2];
      v36.i64[0] = vnegq_f32(v47).u64[0];
      v36.i64[1] = __PAIR64__(1.0, -(v48.f32[2] + vaddv_f32(*v48.f32)));
      v424 = v42;
      v425 = v44;
      v426 = v49;
      v427 = v36;
      *&v313 = v15;
      re::CameraMatrices::CameraMatrices(v503, v15, v4[55].u8[10]);
      if (!v4[55].i8[10])
      {
LABEL_28:
        v418[0] = v7;
        v418[1] = v4;
        v418[2] = v503;
        v418[3] = v3;
        v418[4] = v17;
        v418[5] = &v443;
        v418[6] = &v423;
        v418[7] = 0;
        v419 = 1;
        v420 = 1;
        v421 = 0;
        v422 = v9;
        re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(v418, v51, v52, v53, v54, v55);
        v65.i64[0] = 0x7F0000007FLL;
        v65.i64[1] = 0x7F0000007FLL;
        v7[4] = vnegq_f32(v65);
        v7[5] = v65;
        *(&v313 + 1) = v7;
        MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(&v443, qword_1EE1BEB78);
        v66 = re::MeshPassInfoData::getMeshPartBucket(&v443, qword_1EE1BEB88);
        v415 = 0;
        v416 = 0;
        re::rendergraph_helper::getOcclusionMeshPasses(v474);
        re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v443, &v415, v474);
        v412 = 0;
        v413 = 0;
        re::rendergraph_helper::getOpaqueMeshPasses(v474);
        re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v443, &v412, v474);
        v409 = 0;
        v410 = 0;
        re::rendergraph_helper::getTransparentMeshPasses(v474);
        for (i = 0; i != 14; i += 2)
        {
          v68 = v474[i].u64[1];
          v69 = v474[i + 1].i8[0];
          v70 = v474[i + 1].i8[1];
          v71 = v474[i + 1].i8[2];
          v368.i32[0] = *(v474[i + 1].i32 + 3);
          v368.i8[4] = v474[i + 1].i8[7];
          v72 = v474[i + 1].i8[8];
          v73 = re::MeshPassInfoData::getMeshPartBucket(&v443, v68);
          if (v73)
          {
            v494 = v73;
            LOBYTE(v495) = 1;
            *(&v495 + 1) = v368.i32[0];
            BYTE5(v495) = v368.i8[4];
            BYTE6(v495) = v69;
            HIBYTE(v495) = v70;
            LOBYTE(v496) = v71;
            BYTE1(v496) = v72;
            BYTE2(v496) = 1;
            re::DynamicInlineArray<re::FilteredMeshPass,10ul>::add(&v409, &v494);
          }
        }

        LODWORD(v2) = v409;
        if (v66)
        {
          v474[0].i64[0] = v66;
          v474[0].i8[8] = 1;
          v474[0].i8[13] = 3;
          *(&v474[0].i32[2] + 1) = 50529027;
          *(&v474[0].i32[3] + 2) = 65280;
          v474[1].i8[2] = 1;
          re::DynamicInlineArray<re::FilteredMeshPass,10ul>::add(&v409, v474);
        }

        v408 = 0;
        v406 = 0;
        v405[0] = 0;
        v405[1] = 0;
        v407 = 0;
        v402 = 0;
        v403 = 0;
        v7 = *(&v313 + 1);
        RenderGraphDataPipe = re::RenderGraphDataStore::tryGet<re::SceneScope>(*(*(&v313 + 1) + 1168), *(*(*(&v313 + 1) + 40) + 48));
        if (RenderGraphDataPipe)
        {
          v5 = v313;
          if (*(RenderGraphDataPipe + 16))
          {
            v75 = *(RenderGraphDataPipe + 3);
          }

          else
          {
            v75 = RenderGraphDataPipe + 17;
          }

          v76 = strlen(v75);
          if (v76)
          {
            MurmurHash3_x64_128(v75, v76, 0, v474);
            v76 = ((v474[0].i64[1] - 0x61C8864680B583E9 + (v474[0].i64[0] << 6) + (v474[0].i64[0] >> 2)) ^ v474[0].i64[0]);
          }

          v9 = MeshPartBucket;
          RenderGraphDataPipe = re::RenderGraphContext::tryGetRenderGraphDataPipe(*(&v313 + 1), v76);
          if (RenderGraphDataPipe)
          {
            RenderGraphDataPipe = (*(*RenderGraphDataPipe + 832))(RenderGraphDataPipe);
            *(&v316 + 1) = RenderGraphDataPipe;
          }

          else
          {
            *(&v316 + 1) = 0;
          }
        }

        else
        {
          *(&v316 + 1) = 0;
          v5 = v313;
          v9 = MeshPartBucket;
        }

        v3 = (*(&v313 + 1) + 1352);
        if (!*(*(&v313 + 1) + 1352))
        {
          v77 = 0;
          if (!v9)
          {
            goto LABEL_52;
          }

          goto LABEL_46;
        }

LABEL_51:
        RenderGraphDataPipe = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v3, *(v316 + 16), "BlurPlatterMeshDraw");
        v77 = RenderGraphDataPipe;
        if (!v9)
        {
LABEL_52:
          if (!*(*(&v316 + 1) + 40))
          {
LABEL_61:
            if (v406)
            {
              memset(v401, 0, sizeof(v401));
              re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(v7, v401);
              v81 = *(v7->i64[1] + 72);
              if (v81)
              {
                re::VFXManager::beginFrame(v81, *(v7->i64[0] + 40) & 0xFFFFFFFFFFFFFFFLL);
              }

              v494 = v5;
              LODWORD(v495) = 0;
              v496 = 0;
              v497 = 0;
              v501 = 0;
              memset(v500, 0, sizeof(v500));
              v502 = 0x7FFFFFFFLL;
              v82 = (*(*v5 + 32))(v5, 328, 8);
              v83 = re::DrawTable::DrawTable(v82, v5, (v406 + 127) >> 7);
              v455.i32[0] = 0;
              v455.i64[1] = v83;
              v456 = v329;
              v457 = &v494;
              v84 = (v83 + 280);
              if (*(v82 + 320) != 1)
              {
                (**v84)(v84);
              }

              *(v82 + 280) = &unk_1F5D110F8;
              *(v82 + 288) = &v455;
              *(v82 + 320) = 0;
              v359 = v404;
              v360 = v402;
              v395[0] = 0;
              v395[20] = 0;
              v399 = 0;
              v400 = 0;
              v397 = 0;
              v396 = 0;
              v398 = 0;
              DrawCallsFromMeshParts = re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(&v359, v408, v406, v7, v82, v507, v503, 0, v77, v395);
              if (*(v82 + 40))
              {
                re::DrawTableSlice::DrawTableSlice(v474, v82);
                v86 = 0;
                v368.i64[0] = "StencilBlurSetStencil";
                v368.i64[1] = v474;
                v369 = v505;
                v370 = v509;
                v371 = 0;
                v372[0] = v513;
                *&v372[1] = 2;
                *&v372[4] = 256;
                *&v372[6] = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kWriteStInfo;
                v373 = 0;
                v374 = 0;
                if (*v3)
                {
                  v86 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v3, *(v316 + 16), "StencilBlurSetStencil");
                }

                v375 = v86;
                v376 = 0;
                DrawCallsFromMeshParts = re::RenderGraphContext::encodeDrawCalls(v7, v401, &v368);
              }

              v492 = re::globalAllocators(DrawCallsFromMeshParts)[2];
              v491[0] = &unk_1F5D11028;
              v491[1] = v329;
              v491[2] = &v494;
              v493 = v491;
              v272 = v3;
              HIDWORD(v262) = v2;
              v325 = v404;
              if (*v3)
              {
                goto LABEL_309;
              }

              v87 = 0;
              v88 = 0;
              v89 = 0;
              while (2)
              {
                v90 = v415;
                memset(v474, 0, 24);
                v91 = &v453;
                v474[1].i64[1] = &v453;
                v92 = v474;
                v475.i64[0] = 1;
                v477 = v492;
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::operator=<32ul>(&v475.i64[1], v491);
                LOWORD(v478) = 0;
                BYTE4(v478) = 0;
                LOWORD(v479) = 0;
                v93 = v90;
                v94 = *(&v313 + 1);
                v7 = v313;
                re::RenderGraphMeshNodeBase::sortMeshParts(1, v417, v93, *(&v313 + 1), v89, v474, v313, &v392, v229, v233, SHIDWORD(v233), v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v272, v275, v278, v281, SDWORD2(v281), v286, *(&v286 + 1), v291, *(&v291 + 1), v296, v299, v417, v307, v310, v313, v316, v319, v325, v329, v332[0], v332[1], SBYTE1(v332[1]), SBYTE2(v332[1]), SHIBYTE(v332[1]), v332[2], v332[3], v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v475.i64[1]);
                v95 = v414;
                v96 = v412;
                memset(v474, 0, 24);
                v474[1].i64[1] = &v453;
                v475.i64[0] = 1;
                v477 = v492;
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::operator=<32ul>(&v475.i64[1], v491);
                LOWORD(v478) = 0;
                BYTE4(v478) = 0;
                LOWORD(v479) = 0;
                re::RenderGraphMeshNodeBase::sortMeshParts(1, v414, v96, v94, v88, v474, v7, &v389, v230, v234, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, v269, v273, v276, v279, v282, v284, v287, v289, v292, v294, v297, v300, v303, v308, v414, v314, v317, v320, v326, v330, v333, v337, v339, v341, v343, v345, v347, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v475.i64[1]);
                v97 = v411;
                v98 = v409;
                memset(v474, 0, 24);
                v474[1].i64[1] = v447;
                v475.i64[0] = 2;
                v477 = v492;
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::operator=<32ul>(&v475.i64[1], v491);
                LOWORD(v478) = 768;
                BYTE4(v478) = 0;
                LOWORD(v479) = 0;
                re::RenderGraphMeshNodeBase::sortMeshParts(2, v411, v98, v94, v87, v474, v7, &v386, v231, v235, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v274, v277, v280, v283, v285, v288, v290, v293, v295, v298, v301, v304, v309, v311, v315, v318, v321, v327, v331, v334, v338, v340, v342, v344, v346, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
                re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v475.i64[1]);
                v256 = v411;
                if (v406)
                {
                  v100 = v408 + 12 * v406;
                  if (v402 <= *(v100 - 8))
                  {
                    re::internal::assertLog(6, v99, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, *(v100 - 8), v402);
                    _os_crash();
                    __break(1u);
LABEL_312:
                    v147 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v92, *(v316 + 16), "Occlusion");
                    goto LABEL_145;
                  }

                  v307 = *re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(v328 + 24 * *(v100 - 8)), *(v100 - 12));
                }

                else
                {
                  v307 = 0;
                }

                v385 = 0;
                v383 = 0;
                v384 = 0;
                v382 = 0;
                v381 = v7;
                re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v381, 0);
                ++v384;
                LOWORD(v349) = 0;
                re::buildCullingFrustum(v335, v4[9].i32, v4[55].u8[10], &v349, v474, v102, v103);
                v368.i64[0] = 0;
                v368.i32[2] = 0;
                re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::copy(&v368, v474);
                if (!*(&v316 + 1))
                {
                  goto LABEL_125;
                }

                v322 = *(*(&v316 + 1) + 40);
                if (!v322)
                {
                  goto LABEL_125;
                }

                v105 = 0;
                do
                {
                  v323 = v105;
                  v106 = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](*(&v316 + 1), v105);
                  v108 = *(v106 + 6972);
                  if (!v108)
                  {
                    v109 = (v106 + 32);
                    v336 = v106 + 32 + 864 * *(v106 + 16);
                    goto LABEL_89;
                  }

                  v109 = (v106 + 6944);
                  v95 = *(v106 + 6976);
                  if (v95)
                  {
                    v88 = 0;
                    v110 = *(v106 + 6960);
                    while ((*v110 & 0x80000000) == 0)
                    {
                      v110 += 216;
                      if (v95 == ++v88)
                      {
                        LODWORD(v88) = *(v106 + 6976);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v88) = 0;
                  }

                  v336 = v106 + 6944;
                  while (1)
                  {
LABEL_89:
                    if (v108)
                    {
                      if (v95 == v88)
                      {
                        break;
                      }

                      v111 = (v109[1].i64[0] + 864 * v88 + 16);
                      goto LABEL_94;
                    }

                    if (v109 == v336)
                    {
                      break;
                    }

                    v111 = v109 + 1;
                    if (v111[45].i8[0] != 1)
                    {
                      goto LABEL_102;
                    }

                    re::MeshScene::meshSceneBoundingBox(v111 + 2, v107, &v455);
                    if (!re::isBoundingBoxInsidePlanesArray(&v455, &v368, v111 + 10))
                    {
                      goto LABEL_102;
                    }

LABEL_94:
                    v113 = v329 + 32;
                    if ((*(v329 + 24) & 1) == 0)
                    {
                      v113 = *(v329 + 40);
                    }

                    v114 = v113 + 40 * *(v329 + 16);
                    v115 = *(v114 - 24);
                    if (v115)
                    {
                      v116 = *(v114 - 8);
                      v117 = 112 * v115;
                      v118 = v116 + 6;
                      v119 = v116 + 2;
                      while (!re::isBoundingBoxInsideVCAPlanes(&v455, v111 + 10, 0, 0, &v111[29].i8[8], v111 + 30, v118, v112, v119, 4, v118[-6].i64[1], v118[-5].i32[0]))
                      {
                        v118 += 7;
                        v119 += 7;
                        v117 -= 112;
                        if (!v117)
                        {
                          goto LABEL_102;
                        }
                      }

                      LOBYTE(v359) = 0;
                      v104.n128_f32[0] = re::RenderGraphMeshNodeBase::computeSortDistance(&v455, v111 + 10, &v111[29].i8[8], v111 + 30, &v445, &v446, 0, &v359, v104.n128_f64[0], v120, v121, v122, v123, v124);
                      v129 = v104.n128_u32[0];
                      v130 = v383 + 1;
                      if (v383 >= v382 && v382 < v130)
                      {
                        if (v381)
                        {
                          v134 = 8;
                          if (v382)
                          {
                            v134 = 2 * v382;
                          }

                          if (v134 <= v130)
                          {
                            v135 = v383 + 1;
                          }

                          else
                          {
                            v135 = v134;
                          }

                          re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v381, v135);
                        }

                        else
                        {
                          re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v381, v130);
                          ++v384;
                        }
                      }

                      v132 = v383;
                      v133 = v385 + 16 * v383;
                      *v133 = v129;
                      *(v133 + 8) = v111;
                      v383 = v132 + 1;
                      ++v384;
                      if (v108)
                      {
                        goto LABEL_103;
                      }

LABEL_115:
                      v109 += 54;
                    }

                    else
                    {
LABEL_102:
                      if (!v108)
                      {
                        goto LABEL_115;
                      }

LABEL_103:
                      v125 = v88 + 1;
                      if (v109[2].i32[0] <= (v88 + 1))
                      {
                        LODWORD(v88) = v88 + 1;
                      }

                      else
                      {
                        LODWORD(v88) = v109[2].i32[0];
                      }

                      while (v88 != v125)
                      {
                        v126 = v125;
                        v127 = *(v109[1].i64[0] + 864 * v125++);
                        if (v127 < 0)
                        {
                          LODWORD(v88) = v126;
                          goto LABEL_89;
                        }
                      }
                    }
                  }

                  v105 = v323 + 1;
                }

                while (v323 + 1 != v322);
LABEL_125:
                v136 = 126 - 2 * __clz(v383);
                if (v383)
                {
                  v137 = v136;
                }

                else
                {
                  v137 = 0;
                }

                std::__introsort<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,false>(v385, (v385 + 16 * v383), v137, 1, v104);
                if (v368.i64[0])
                {
                  v138 = &v368 + 7 * v368.i64[0] + 1;
                  v139 = &v369;
                  do
                  {
                    *v139 = 0;
                    ++*(v139 + 2);
                    v139 += 14;
                  }

                  while (v139 != v138);
                }

                v7 = *(&v313 + 1);
                v92 = v272;
                v97 = &v368;
                if (*(&v484 + 1))
                {
                  v140 = &v487 + 18 * *(&v484 + 1);
                  v141 = &v487;
                  do
                  {
                    *v141 = 0;
                    ++*(v141 + 2);
                    v141 += 18;
                  }

                  while (v141 != v140);
                }

                v91 = v313;
                if (v474[0].i64[0])
                {
                  v142 = &v474[7 * v474[0].i64[0] + 1];
                  v143 = &v474[1];
                  do
                  {
                    v143->i64[0] = 0;
                    ++v143->i32[2];
                    v143 += 7;
                  }

                  while (v143 != v142);
                }

                v144 = v387;
                if (v387 <= v393)
                {
                  v144 = v393;
                }

                if (v390 <= v144)
                {
                  v145 = v144;
                }

                else
                {
                  v145 = v390;
                }

                v94 = (*(*v313 + 32))(v313, 328, 8);
                v146 = re::DrawTable::DrawTable(v94, v313, (v145 + 127) >> 7);
                v472[0] = &unk_1F5D11160;
                v472[1] = v329;
                v472[2] = v146;
                v472[3] = &v494;
                v473 = 0;
                if (!v393)
                {
                  goto LABEL_147;
                }

                re::DrawTable::clearAll(v94);
                re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=((v94 + 280), v472);
                if (*v272)
                {
                  goto LABEL_312;
                }

                v147 = 0;
LABEL_145:
                v474[0].i64[0] = *v305;
                v474[0].i64[1] = v415;
                LOBYTE(v359) = 0;
                BYTE4(v361) = 0;
                v366 = 0;
                v367 = 0;
                v363 = 0;
                v364 = 0;
                v365 = 0;
                re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(v474, v394, v393, v7, v94, v507, v503, 0, v147, &v359);
                if (*(v94 + 40))
                {
                  re::DrawTableSlice::DrawTableSlice(v474, v94);
                  v368.i64[0] = "Occlusion";
                  v368.i64[1] = v474;
                  v369 = v505;
                  v370 = v509;
                  v371 = 0;
                  v372[0] = v513;
                  *(&v97[2].i16[4] + 1) = 2;
                  *&v372[4] = 256;
                  *(&v97[2] + 14) = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kReadStInfo;
                  v373 = 0;
                  v374 = 0;
                  v375 = v147;
                  v376 = 0;
                  re::RenderGraphContext::encodeDrawCalls(v7, v401, &v368);
                }

LABEL_147:
                if (v390)
                {
                  re::DrawTable::clearAll(v94);
                  re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=((v94 + 280), v472);
                  v148 = *v92 ? re::DrawCallRecorder::allocateDrawCallRecorderGroup(v92, *(v316 + 16), "Opaque") : 0;
                  v474[0].i64[0] = v312;
                  v474[0].i64[1] = v412;
                  LOBYTE(v349) = 0;
                  BYTE4(v350) = 0;
                  DWORD1(v352) = 0;
                  LOBYTE(v353) = 0;
                  v351 = 0uLL;
                  LOBYTE(v352) = 0;
                  re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(v474, v391, v390, v7, v94, v507, v503, 0, v148, &v349);
                  if (*(v94 + 40))
                  {
                    re::DrawTableSlice::DrawTableSlice(v474, v94);
                    v368.i64[0] = "Opaque";
                    v368.i64[1] = v474;
                    v369 = v505;
                    v370 = v509;
                    v371 = 0;
                    v372[0] = v513;
                    *(&v97[2].i16[4] + 1) = 2;
                    *&v372[4] = 256;
                    *(&v97[2] + 14) = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kReadStInfo;
                    v373 = 0;
                    v374 = 0;
                    v375 = v148;
                    v376 = 0;
                    re::RenderGraphContext::encodeDrawCalls(v7, v401, &v368);
                  }
                }

                v259 = v94;
                v368.i64[0] = v91;
                v368.i32[2] = 0;
                v369 = 0;
                LODWORD(v370) = 0;
                v377 = 0u;
                v378 = 0u;
                v379 = 0;
                *(v97[12].i64 + 4) = _D9;
                if ((atomic_load_explicit(&qword_1EE1BEBE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBE0))
                {
                  qword_1EE1BEBD8 = re::hashString("PlattersOnly", v227);
                  __cxa_guard_release(&qword_1EE1BEBE0);
                }

                v253 = *(*(&v316 + 1) + 40);
                if (v253)
                {
                  v149 = 0;
                  v265 = &v458;
                  v4 = &v371;
                  v296 = xmmword_1E3047670;
                  v291 = xmmword_1E3047680;
                  v286 = xmmword_1E30476A0;
                  v281 = xmmword_1E30474D0;
                  *v332 = xmmword_1E304F3C0;
                  __asm { FMOV            V9.2S, #1.0 }

                  v306 = 10854;
                  *&v319 = &v371;
LABEL_155:
                  v153 = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](*(&v316 + 1), v149);
                  v155 = *(v153 + 6972);
                  if (v155)
                  {
                    v156 = (v153 + 6944);
                    v157 = *(v153 + 6976);
                    if (v157)
                    {
                      v158 = 0;
                      v159 = *(v153 + 6960);
                      while ((*v159 & 0x80000000) == 0)
                      {
                        v159 += 216;
                        if (v157 == ++v158)
                        {
                          v158 = *(v153 + 6976);
                          break;
                        }
                      }
                    }

                    else
                    {
                      v158 = 0;
                    }

                    v268 = v153 + 6944;
                  }

                  else
                  {
                    v156 = (v153 + 32);
                    v268 = v153 + 32 + 864 * *(v153 + 16);
                    v157 = v306;
                    v158 = v97;
                  }

                  v275 = v149;
                  v306 = v157;
                  HIDWORD(v278) = *(v153 + 6972);
                  while (1)
                  {
                    *&v313 = v156;
                    if (v155)
                    {
                      if (v157 == v158)
                      {
                        goto LABEL_224;
                      }

                      v160 = v156[2] + 864 * v158;
                      v156 = (v160 + 8);
                      v161 = (v160 + 16);
                    }

                    else
                    {
                      if (v156 == v268)
                      {
LABEL_224:
                        v97 = v158;
                        if (++v149 == v253)
                        {
                          goto LABEL_225;
                        }

                        goto LABEL_155;
                      }

                      v161 = v156 + 2;
                    }

                    v310 = v158;
                    v162 = v161[28];
                    v163 = v161[29];
                    v455.i64[0] = (v161 + 4);
                    v164 = v161[18];
                    v455.i64[1] = *v164;
                    v165 = v161[5];
                    v456 = v164[1];
                    v458 = 0;
                    *v459 = v165;
                    *&v459[8] = xmmword_1E3047670;
                    v460 = xmmword_1E3047680;
                    v461 = xmmword_1E30476A0;
                    v462 = xmmword_1E30474D0;
                    v463 = 0;
                    v464 = 0;
                    if (!v161[11])
                    {
                      break;
                    }

                    v465 = *(v161 + 5);
                    *(&v319 + 1) = *(&v465 + 1);
                    if (*(&v465 + 1))
                    {
                      goto LABEL_174;
                    }

LABEL_214:
                    v155 = HIDWORD(v278);
                    if (HIDWORD(v278))
                    {
                      v156 = v313;
                      v190 = *(v313 + 32);
                      v191 = v310 + 1;
                      if (v190 <= v310 + 1)
                      {
                        v158 = (v310 + 1);
                      }

                      else
                      {
                        v158 = v190;
                      }

                      v7 = *(&v313 + 1);
                      v149 = v275;
                      while (v158 != v191)
                      {
                        v192 = v191;
                        v193 = *(*(v313 + 16) + 864 * v191++);
                        if (v193 < 0)
                        {
                          v158 = v192;
                          break;
                        }
                      }

                      LODWORD(v157) = v306;
                    }

                    else
                    {
                      v7 = *(&v313 + 1);
                      v156 = (v313 + 864);
                      v149 = v275;
                      LODWORD(v157) = v306;
                      v158 = v310;
                    }
                  }

                  *&v465 = &v458;
                  *(&v465 + 1) = 1;
                  *(&v319 + 1) = 1;
LABEL_174:
                  v166 = 0;
                  while (1)
                  {
                    v466 = &v455;
                    v325 = v166;
                    v467 = v166;
                    v167 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(&v466, v154);
                    v169 = v167[1];
                    v170 = v169 >= *v167;
                    v171 = v169 - *v167;
                    v3 = v170 ? v171 : 0;
                    if (v171 != 0 && v170)
                    {
                      break;
                    }

LABEL_213:
                    re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(&v466, v168);
                    v166 = (v325 + 1);
                    if ((v325 + 1) == *(&v319 + 1))
                    {
                      goto LABEL_214;
                    }
                  }

                  v172 = 0;
LABEL_181:
                  v173 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::materialIndexForPart(&v466, v172);
                  v481 = 0;
                  v482 = 0;
                  v483 = 0;
                  memset(v474, 0, sizeof(v474));
                  v475 = 0u;
                  v476[0] = 0;
                  *&v476[8] = 0u;
                  v477 = 0u;
                  v478 = 0u;
                  v479 = 0u;
                  memset(v480, 0, 74);
                  v484 = xmmword_1E304F3C0;
                  v485 = 0;
                  v486 = 10854;
                  v487 = _D9;
                  v488 = 0;
                  v489 = 0;
                  v490 = 0;
                  if (v163 <= v173)
                  {
                    re::internal::assertLog(6, v174, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v173, v163);
                    _os_crash();
                    __break(1u);
LABEL_307:
                    re::internal::assertLog(6, v177, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
                    _os_crash();
                    __break(1u);
LABEL_308:
                    v244 = -1;
                    v247 = 0;
                    v238 = "operator[]";
                    v241 = 381;
                    re::internal::assertLog(6, v181, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size");
                    _os_crash();
                    __break(1u);
LABEL_309:
                    v89 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v3, *(v316 + 16), "Occlusion");
                    if (*v3)
                    {
                      v88 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v272, *(v316 + 16), "Opaque");
                      if (*v272)
                      {
                        v87 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v272, *(v316 + 16), "Transparent");
                      }

                      else
                      {
                        v87 = 0;
                      }
                    }

                    else
                    {
                      v87 = 0;
                      v88 = 0;
                    }

                    continue;
                  }

                  v175 = v161[47];
                  *&v476[8] = *(v162 + 8 * v173);
                  *&v478 = v175;
                  v176 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v474, qword_1EE1BEBD8);
                  if (!v177)
                  {
                    goto LABEL_307;
                  }

                  if (*v176 != -1)
                  {
                    if (HIDWORD(v378))
                    {
                      goto LABEL_185;
                    }

                    if (v369)
                    {
                      v178 = 8 * v369;
                      v179 = &v371;
                      while (*v179 != *v156)
                      {
                        ++v179;
                        v178 -= 8;
                        if (!v178)
                        {
                          v179 = &v372[8 * v369 - 8];
                          break;
                        }
                      }

                      if (v179 == &v372[8 * v369 - 8])
                      {
                        if (v369 <= 0xF)
                        {
                          goto LABEL_193;
                        }

                        v183 = v368.i64[0];
                        if (!v368.i64[0])
                        {
                        }

                        if (!v377)
                        {
                          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(&v377, v183, 32);
                        }

                        if (v369)
                        {
                          v184 = &v371;
                          v185 = &v372[8 * v369 - 8];
                          do
                          {
                            v186 = 0xBF58476D1CE4E5B9 * (*v184 ^ (*v184 >> 30));
                            v187 = (0x94D049BB133111EBLL * (v186 ^ (v186 >> 27))) ^ ((0x94D049BB133111EBLL * (v186 ^ (v186 >> 27))) >> 31);
                            if (DWORD2(v378))
                            {
                              v188 = v187 % DWORD2(v378);
                              v189 = *(*(&v377 + 1) + 4 * v188);
                              if (v189 != 0x7FFFFFFF)
                              {
                                while (*(v378 + 16 * v189 + 8) != *v184)
                                {
                                  v189 = *(v378 + 16 * v189) & 0x7FFFFFFF;
                                  if (v189 == 0x7FFFFFFF)
                                  {
                                    goto LABEL_210;
                                  }
                                }

                                goto LABEL_211;
                              }
                            }

                            else
                            {
                              LODWORD(v188) = 0;
                            }

LABEL_210:
                            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(&v377, v188, v187, v184, v184);
                            ++v380;
LABEL_211:
                            ++v184;
                          }

                          while (v184 != v185);
                        }

                        v369 = 0;
                        LODWORD(v370) = v370 + 1;
                        v4 = &v371;
LABEL_185:
                        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(&v377, v156);
                      }
                    }

                    else
                    {
LABEL_193:
                      v180 = re::DynamicInlineArray<unsigned long long,16ul>::ensureCapacity(&v369, v177);
                      v182 = v369;
                      if (v180)
                      {
                        *&v372[8 * v369 - 8] = *v156;
                        v369 = ++v182;
                        LODWORD(v370) = v370 + 1;
                      }

                      if (!v182)
                      {
                        goto LABEL_308;
                      }
                    }
                  }

                  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v480[8]);
                  if (++v172 >= v3)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_181;
                }

                break;
              }

LABEL_225:
              v194 = v383;
              v195 = v307;
              if (v383)
              {
                v196 = 0;
                v197 = v385;
                do
                {
                  v198 = *(v197 + 16 * v196 + 8);
                  v200 = &v198[1];
                  v199 = v198[1].u64[0];
                  if (v199 != v195)
                  {
                    if (!v201 || (v203 = *v201 + 1, *v201 == 0xFE))
                    {
                      re::MeshScene::meshSceneBoundingBox(v198 + 2, v202, v474);
                      v205 = v329 + 32;
                      if ((*(v329 + 24) & 1) == 0)
                      {
                        v205 = *(v329 + 40);
                      }

                      v206 = v205 + 40 * *(v329 + 16);
                      v207 = *(v206 - 24);
                      if (v207)
                      {
                        v208 = *(v206 - 8);
                        v209 = v208 + 6;
                        v210 = 112 * v207;
                        v211 = v208 + 2;
                        v203 = -1;
                        do
                        {
                          if (re::isBoundingBoxInsideVCAPlanes(v474, v198 + 10, 0, 0, &v198[29].i8[8], v198 + 30, v209, v204, v211, 4, v209[-6].i64[1], v209[-5].i32[0]))
                          {
                            if (v212)
                            {
                              if (v203 >= *v212)
                              {
                                v203 = *v212;
                              }
                            }
                          }

                          v209 += 7;
                          v211 += 7;
                          v210 -= 112;
                        }

                        while (v210);
                      }

                      else
                      {
                        v203 = -1;
                      }

                      v195 = v307;
                    }

                    if (HIDWORD(v378))
                    {
                      v213 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(&v377, v200);
                    }

                    else
                    {
                      if (v369)
                      {
                        v214 = 8 * v369;
                        v215 = &v371;
                        while (*v215 != *v200)
                        {
                          ++v215;
                          v214 -= 8;
                          if (!v214)
                          {
                            goto LABEL_248;
                          }
                        }
                      }

                      else
                      {
LABEL_248:
                        v215 = &v372[8 * v369 - 8];
                      }

                      v213 = v215 != &v372[8 * v369 - 8];
                    }

                    v474[0].i16[0] = 1;
                    v474[0].i8[2] = 0;
                    v474[0].i8[3] = v213;
                    v474[0].i32[1] = 65537;
                    v216 = *(v316 + 24);
                    v474[0].i64[1] = *(v316 + 16);
                    v474[1].i64[0] = 0;
                    v474[1].i8[8] = 0;
                    v474[1].i8[10] = 127;
                    v474[1].i8[11] = v203;
                    v7 = *(&v313 + 1);
                    re::StencilPtInjectionNode::executeForPortal(v198, *(&v313 + 1), v474[0].i64[1], v216, *(v316 + 32), v474);
                  }

                  ++v196;
                }

                while (v196 != v194);
              }

              if (v377)
              {
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(&v377);
              }

              LODWORD(v370) = v370 + 1;
              v369 = 0;
              v368.i64[0] = 0;
              v217.n128_f64[0] = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(&v377);
              if (v387)
              {
                re::DrawTable::clearAll(v259);
                v466 = &unk_1F5D111B8;
                v467 = v329;
                v468 = &v494;
                v469 = v259;
                v470 = BYTE4(v262);
                v471 = 0;
                re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=(v259 + 280, &v466);
                if (*v272)
                {
                  v218 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v272, *(v316 + 16), "Transparent");
                }

                else
                {
                  v218 = 0;
                }

                v474[0].i64[0] = v411;
                v474[0].i64[1] = v409;
                v368.i8[0] = 0;
                BYTE4(v369) = 0;
                *&v372[12] = 0;
                LOBYTE(v375) = 0;
                *v372 = 0;
                v371 = 0;
                v372[8] = 0;
                re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(v474, v388, v387, v7, v259, v507, v503, 0, v218, &v368);
                if (*(v259 + 5))
                {
                  re::DrawTableSlice::DrawTableSlice(v474, v259);
                  v455.i64[0] = "Transparent";
                  v455.i64[1] = v474;
                  v456 = v505;
                  v457 = v509;
                  v458 = 0;
                  v459[0] = v513;
                  *&v459[1] = 2;
                  *&v459[4] = 256;
                  *&v459[6] = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kReadStInfo;
                  *&v459[22] = 0;
                  *&v460 = v218;
                  BYTE8(v460) = 0;
                  re::RenderGraphContext::encodeDrawCalls(v7, v401, &v455);
                }

                if ((v471 & 1) == 0)
                {
                  (v466->i64[0])(&v466);
                }
              }

              v219 = *(v7->i64[1] + 72);
              if (v219)
              {
                re::VFXManager::endFrame(v219, *(v7->i64[0] + 40) & 0xFFFFFFFFFFFFFFFLL);
              }

              if ((v473 & 1) == 0)
              {
                (*v472[0])(v472, v217);
              }

              if (v381 && v385)
              {
                (*(*v381 + 40))(v217);
              }

              if (v386 && v388)
              {
                (*(*v386 + 40))(v217);
              }

              if (v389 && v391)
              {
                (*(*v389 + 40))(v217);
              }

              if (v392 && v394)
              {
                (*(*v392 + 40))(v217);
              }

              re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(v491);
              v496 = 0;
              ++v497;
              re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v500);
              v494 = 0;
              LODWORD(v495) = 0;
              v101.n128_f64[0] = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v500);
            }

            else
            {
              re::RenderGraphContext::acquireManagedRenderCommandEncoder(v474, v7, 0);
              re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v474);
            }

            if (v405[0] && v408)
            {
              (*(*v405[0] + 40))(v101);
            }

            if (v510[0])
            {
              if (v512)
              {
                (*(*v510[0] + 40))(v101);
              }

              v512 = 0;
              memset(v510, 0, sizeof(v510));
              ++v511;
            }

            if (v506[0])
            {
              if (v509)
              {
                (*(*v506[0] + 40))(v101);
              }

              v509 = 0;
              v506[1] = 0;
              v507 = 0;
              v506[0] = 0;
              ++v508;
            }

            if (v504[0] && v505)
            {
              (*(*v504[0] + 40))(v101);
            }

            goto LABEL_292;
          }

LABEL_53:
          v78 = v402;
          if (*(v329 + 24))
          {
            v79 = v329 + 32;
          }

          else
          {
            v79 = *(v329 + 40);
          }

          v80 = v79 + 40 * *(v329 + 16) - 40;
          v498 = re::globalAllocators(RenderGraphDataPipe)[2];
          v494 = &unk_1F5D10FC0;
          v495 = v80;
          v499 = &v494;
          v474[0].i64[0] = 0;
          v474[0].i64[1] = &v453;
          v474[1] = 1uLL;
          v475.i64[0] = 0;
          v477 = v498;
          re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::operator=<32ul>(&v475.i64[1], &v494);
          LOWORD(v478) = 1;
          BYTE4(v478) = 0;
          LOWORD(v479) = 0;
          re::RenderGraphMeshNodeBase::sortMeshParts(2, v404, v78, v7, v77, v474, v5, &v368, v228, v232, SHIDWORD(v232), v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v271, v275, v278, v281, SDWORD2(v281), v286, *(&v286 + 1), v291, *(&v291 + 1), v296, v299, v302, v307, v310, v313, v316, v319, MeshPartBucket, v329, v332[0], v332[1], SBYTE1(v332[1]), SBYTE2(v332[1]), SHIBYTE(v332[1]), v332[2], v332[3], v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
          re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v405, &v368);
          if (v368.i64[0])
          {
            if (v371)
            {
              (*(*v368.i64[0] + 40))();
            }

            v371 = 0;
            v369 = 0;
            v368 = 0uLL;
            LODWORD(v370) = v370 + 1;
          }

          re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v475.i64[1]);
          re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v494);
          goto LABEL_61;
        }

LABEL_46:
        v474[0].i64[0] = v9;
        v474[0].i8[8] = 0;
        *(&v474[0].i32[3] + 2) = 65280;
        v474[1].i8[2] = 0;
        RenderGraphDataPipe = re::DynamicInlineArray<re::FilteredMeshPass,2ul>::add(&v402, v474);
        goto LABEL_53;
      }

      v2 = 0;
      v56 = v4 + 9;
      v5 = *v332;
      while (1)
      {
        v57 = v4[8].u64[0];
        if (v57 <= v2)
        {
          break;
        }

        if (v56[5].i8[0] == 1)
        {
          v58 = v56[6];
          v59 = v56[7];
          v60 = v56[8];
          *v476 = v56[9];
          v475 = v60;
          v474[1] = v59;
          v474[0] = v58;
        }

        else
        {
          re::Projection::cullingProjectionMatrix(v56, v474);
        }

        re::DynamicArray<re::Matrix4x4<float>>::add(v506, v474);
        v62 = v4[8].u64[0];
        if (v62 <= v2)
        {
          goto LABEL_48;
        }

        re::Projection::cullingProjectionMatrix(v56, v474);
        re::DynamicArray<re::Matrix4x4<float>>::add(v510, v474);
        v64 = v4[3].u64[0];
        if (v64 <= v2)
        {
          goto LABEL_49;
        }

        re::RenderCamera::computeInverseTransform(v5, v474);
        *&v51 = re::DynamicArray<re::Matrix4x4<float>>::add(v504, v474).n128_u64[0];
        ++v2;
        v5 = (v5 + 32);
        v56 += 15;
        if (v2 >= v4[55].u8[10])
        {
          goto LABEL_28;
        }
      }

      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v2, v57);
      _os_crash();
      __break(1u);
LABEL_48:
      re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v2, v62);
      _os_crash();
      __break(1u);
LABEL_49:
      re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v2, v64);
      _os_crash();
      __break(1u);
    }

    v244 = 0;
    v247 = 0;
    v238 = "operator[]";
    v241 = 389;
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size");
    _os_crash();
    __break(1u);
    goto LABEL_51;
  }

  re::RenderGraphContext::acquireManagedRenderCommandEncoder(v474, v7, 0);
  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v474);
LABEL_292:
  v220 = 64;
  do
  {
    re::StringID::destroyString((&v446 + v220));
    re::StringID::destroyString((&v445 + v220));
    v220 -= 32;
  }

  while (v220);
  if (*&v452.var0)
  {
  }

  if (*&v451.var0)
  {
  }

  if (*&v454.var0)
  {
    if (*&v454.var0)
    {
    }
  }

  v454.var1 = &str_67;
  *&v454.var0 = 0;
  if (*&v453.var0)
  {
    if (*&v453.var0)
    {
    }
  }

  v7[70].i8[0] = 0;
  v7[97].i8[1] = 0;
}
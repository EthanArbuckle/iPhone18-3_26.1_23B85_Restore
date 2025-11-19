uint64_t re::createArgumentEncoderForBindlessArgument@<X0>(re *this@<X0>, void **a2@<X1>, const re::mtl::Device *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = a3;
  result = re::mtl::Device::supportsArgumentBuffers(a2, a2);
  if (result)
  {
    v14 = a4;
    v19 = 0;
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v9 = *(this + 9);
    if (v9)
    {
      v10 = 80 * v9;
      v11 = (*(this + 10) + 36);
      v12 = MEMORY[0x1E6973FD8];
      do
      {
        v16 = [objc_msgSend(v12 alloc];
        [v16 setIndex_];
        [v16 setArrayLength_];
        [v16 setAccess_];
        if (v4 && re::mtl::Device::needsArgumentBufferTextureEmulation(a2))
        {
          v13 = *v11;
          if (v13 == 58)
          {
            [v16 setDataType_];
          }

          else
          {
            [v16 setDataType_];
          }
        }

        else
        {
          [v16 setDataType_];
          if (*v11 == 58)
          {
            [v16 setTextureType_];
          }
        }

        re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add(v17, &v16);
        if (v16)
        {
        }

        v11 += 40;
        v10 -= 80;
      }

      while (v10);
    }

    re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::DynamicArray(v15, v17);
    re::mtl::Device::makeArgumentEncoder(a2, v15, &v16);
    *v14 = 1;
    *(v14 + 1) = v16;
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v15);
    return re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v17);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *re::validateArgumentsCount@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  {
    v18 = a2;
    v19 = a1;
    v12 = a4;
    v13 = a3;
    a3 = v13;
    a4 = v12;
    v16 = v15;
    a2 = v18;
    a1 = v19;
    if (v16)
    {
      v17 = 31;
      if (a5)
      {
        v17 = 96;
      }

      re::validateArgumentsCount(re::DynamicArray<re::BufferArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TextureArgument> const&,re::DynamicArray<re::SamplerArgument> const&,BOOL)::textureLimit = v17;
      a2 = v18;
      a1 = v19;
      a3 = v13;
      a4 = v12;
    }
  }

  v7 = *(a1 + 2) + *(a2 + 16);
  v8 = *(a3 + 16);
  v9 = *(a4 + 16);
  v21 = 0uLL;
  v22 = 0;
  result = re::DynamicString::setCapacity(&v20, 0);
  if (v7 >= 0x20)
  {
    result = re::DynamicString::appendf(&v20, "Constant buffer count [%zu] exceeds limit [%zu]. ", v7, 0x1FuLL);
  }

  if (v8 > re::validateArgumentsCount(re::DynamicArray<re::BufferArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TextureArgument> const&,re::DynamicArray<re::SamplerArgument> const&,BOOL)::textureLimit)
  {
    result = re::DynamicString::appendf(&v20, "Texture count [%zu] exceeds limit [%zu]. ", v8, re::validateArgumentsCount(re::DynamicArray<re::BufferArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TextureArgument> const&,re::DynamicArray<re::SamplerArgument> const&,BOOL)::textureLimit);
    if (v9 < 0x11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v9 > 0x10)
  {
LABEL_8:
    result = re::DynamicString::appendf(&v20, "Sampler count [%zu] exceeds limit [%zu]. ", v9, 0x10uLL);
LABEL_9:
    *a6 = 1;
    *(a6 + 8) = v20;
    *(a6 + 32) = v22;
    *(a6 + 16) = v21;
    return result;
  }

  if (v7 >= 0x20)
  {
    goto LABEL_9;
  }

  *a6 = 0;
  result = v20;
  if (v20 && (v21 & 1) != 0)
  {
    v11 = *(*v20 + 40);

    return v11();
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::BufferArgument>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::BufferArgument>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::BufferArgument>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = (*(v3 + 4) + 24 * v5);
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v11[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v11[2] = a2[2];
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void re::makeBufferArgument(uint64_t a1, id *a2)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 0;
  *(a1 + 16) = [*a2 index];
  *(a1 + 18) = [*a2 bufferAlignment];
  *(a1 + 20) = [*a2 bufferDataSize];
  v4 = [objc_msgSend(*a2 name)];
  v6 = 0;
  v7 = &str_67;
  v5 = re::StringID::operator=(a1, &v6);
  if (v6)
  {
    if (v6)
    {
    }
  }
}

__n128 re::DynamicArray<re::TextureArgument>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::RigPose>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::RigPose>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 32 * v5);
  v12 = a2->n128_u64[0];
  v11->n128_u64[0] = v11->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | a2->n128_u64[0] & 1;
  v11->n128_u64[0] = a2->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v11->n128_u64[1] = a2->n128_u64[1];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = &str_67;
  result = a2[1];
  v11[1] = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::SamplerArgument>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::SamplerArgument>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::SamplerArgument>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 24 * v5;
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  *(v11 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  LOWORD(v12) = *(a2 + 8);
  *(v11 + 18) = *(a2 + 18);
  *(v11 + 16) = v12;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::ForwardedBufferArgument>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ForwardedBufferArgument>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[4 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v13 = v8[2];
          *(v11 + 12) = *(v8 + 12);
          v11[2] = v13;
          re::StringID::destroyString(v8);
          v8 += 4;
          v11 += 4;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::BufferArgument>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BufferArgument>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 24 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = &str_67;
          v11[2] = *(v8 + 2);
          re::StringID::destroyString(v8);
          v8 = (v8 + 24);
          v11 += 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::SamplerArgument>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SamplerArgument>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOWORD(v12) = *(v8 + 8);
          *(v11 + 18) = *(v8 + 18);
          *(v11 + 8) = v12;
          re::StringID::destroyString(v8);
          v8 += 3;
          v11 += 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = a1[2];
    v13 = a1[4];
    if (v12)
    {
      v14 = 8 * v12;
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v13++, v11++);
        v14 -= 8;
      }

      while (v14);
      v13 = a1[4];
      v12 = a1[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = &v11[v12];
      v16 = &v13[v12];
      v17 = 8 * v4 - 8 * v12;
      do
      {
        v18 = *v15++;
        *v16++ = v18;
        v17 -= 8;
      }

      while (v17);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 8 * v4;
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v6++, v7++);
        v8 -= 8;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v9 = &v6[v4];
      v10 = 8 * v5 - 8 * v4;
      do
      {
        if (*v9)
        {

          *v9 = 0;
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }
  }

  a1[2] = v4;
}

id re::makeView1DTo1DArray@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = [*a1 textureType];
  v5 = *a1;
  if (v4 == 1)
  {
    result = v5;
  }

  else
  {
    result = [*a1 newTextureViewWithPixelFormat:objc_msgSend(*a1 textureType:sel_pixelFormat) levels:1 slices:0, objc_msgSend(v5, sel_mipmapLevelCount), 0, 1];
  }

  *a2 = result;
  return result;
}

id re::makeView2DTo2DArray@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = [*a1 textureType];
  v5 = *a1;
  if (v4 == 3)
  {
    result = v5;
  }

  else
  {
    result = [*a1 newTextureViewWithPixelFormat:objc_msgSend(*a1 textureType:sel_pixelFormat) levels:3 slices:0, objc_msgSend(v5, sel_mipmapLevelCount), 0, 1];
  }

  *a2 = result;
  return result;
}

id re::makeView2DArrayTo2D@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = [*a1 textureType];
  v7 = *a1;
  if (v6 == 2)
  {
    result = v7;
  }

  else
  {
    result = [*a1 newTextureViewWithPixelFormat:objc_msgSend(*a1 textureType:sel_pixelFormat) levels:2 slices:0, objc_msgSend(v7, sel_mipmapLevelCount), a2, 1];
  }

  *a3 = result;
  return result;
}

id re::makeView2DMultisampleTo2DMultisampleArray@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = [*a1 textureType];
  v5 = *a1;
  if (v4 == 8)
  {
    result = v5;
  }

  else
  {
    result = [*a1 newTextureViewWithPixelFormat:objc_msgSend(*a1 textureType:sel_pixelFormat) levels:8 slices:0, objc_msgSend(v5, sel_mipmapLevelCount), 0, 1];
  }

  *a2 = result;
  return result;
}

float32_t re::Centroid::add(float32x4_t *a1, __n128 *a2)
{
  re::Queue<re::Vector3<float>>::enqueue(a1, a2);
  v5 = a1[1].u64[0];
  if (v5 > a1[3].i32[0])
  {
    re::Queue<re::Vector3<float>>::dequeue(a1, v3);
    v5 = a1[1].u64[0];
  }

  if (v5)
  {
    v6 = a1[1].u64[1];
    v7 = 0uLL;
    v8 = v5;
    do
    {
      v4 = *(a1[2].i64[1] + 16 * (v6 % a1->i64[1]));
      v7 = vaddq_f32(v7, v4);
      ++v6;
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = 0uLL;
  }

  v4.f32[0] = v5;
  a1[4] = vdivq_f32(v7, vdupq_lane_s32(*v4.f32, 0));

  return re::Centroid::updateError(a1);
}

__n128 re::Queue<re::Vector3<float>>::enqueue(_anonymous_namespace_ *this, __n128 *a2)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4 + 1 >= v5)
  {
    re::Queue<re::Vector3<float>>::growCapacity(this, v4 + 1);
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 5) + 16 * ((*(this + 3) + v4) % v5)) = *a2;
  ++*(this + 2);
  ++*(this + 8);
  return result;
}

uint64_t re::Queue<re::Vector3<float>>::dequeue(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(*(a1 + 40) + 16 * v5);
    if ((v5 + 1) < *(a1 + 8))
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 16) = v4 - 1;
    *(a1 + 24) = v7;
    ++*(a1 + 32);
    return v6;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Queue<T> is empty", "m_size > 0", "dequeue", 569, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

float32_t re::Centroid::updateError(float32x4_t *this)
{
  this[5].i64[0] = 0xFF7FFFFF00000000;
  v1 = this[1].i64[0];
  if (v1)
  {
    v2 = this[1].u64[1];
    v3 = this->u64[1];
    v4 = this[2].i64[1];
    v5 = this[4];
    v6 = 0.0;
    v7 = -3.4028e38;
    do
    {
      v8 = vsubq_f32(v5, *(v4 + 16 * (v2 % v3)));
      v9 = vmulq_f32(v8, v8);
      v10 = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
      if (v7 < v10)
      {
        this[5].f32[1] = v10;
        v7 = v10;
      }

      v6 = v6 + (v10 * v10);
      this[5].f32[0] = v6;
      ++v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v6 = 0.0;
  }

  result = v6 / this[3].i32[0];
  this[5].f32[0] = result;
  return result;
}

void *re::Queue<re::Vector3<float>>::growCapacity(void *this, unint64_t a2)
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

      return re::Queue<re::Vector3<float>>::setCapacity(this, a2);
    }

    else
    {
      this = re::Queue<re::Vector3<float>>::setCapacity(v4, v3);
      v4[2] = 0;
      v4[3] = 0;
      *(v4 + 8) = 0;
    }
  }

  return this;
}

void *re::Queue<re::Vector3<float>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::Vector3<float>>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 16);
          if (result)
          {
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      if (v5[2])
      {
        v9 = 0;
        v10 = v5[3];
        do
        {
          *&v8[2 * v10] = *(v5[5] + 16 * ((v9 + v5[3]) % v5[1]));
          if (v10 + 1 < a2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v9;
        }

        while (v9 != v5[2]);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t *re::RenderGraphProcessor::updateTextureLifetimes(uint64_t *this, re::RenderGraphCompiled *a2)
{
  if (this[49])
  {
    v2 = this;
    v3 = 0;
    while (1)
    {
      if (v2[59] <= v3)
      {
        goto LABEL_17;
      }

      v4 = v2[61] + 40 * v3;
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_8:
      if (v2[64] <= v3)
      {
        goto LABEL_18;
      }

      v9 = v2[66] + 40 * v3;
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = *(v9 + 32);
        v12 = 4 * v10;
        while (v2[49] > v3)
        {
          v13 = *v11++;
          this = re::RenderGraphCompiled::setLastRead(v2[37], v13, *(v2[51] + 4 * v3));
          v12 -= 4;
          if (!v12)
          {
            goto LABEL_13;
          }
        }

LABEL_16:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_17:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_18:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_13:
      if (++v3 >= v2[49])
      {
        return this;
      }
    }

    v6 = *(v4 + 32);
    v7 = 4 * v5;
    while (v2[49] > v3)
    {
      v8 = *v6++;
      this = re::RenderGraphCompiled::setFirstWritten(v2[37], v8, *(v2[51] + 4 * v3));
      v7 -= 4;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  return this;
}

uint64_t re::RenderGraphCompiled::setFirstWritten(uint64_t this, unsigned int a2, int a3)
{
  if (*(this + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 32) + 48 * a2 + 32) = a3;
  return this;
}

uint64_t re::RenderGraphCompiled::setLastRead(uint64_t this, unsigned int a2, int a3)
{
  if (*(this + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 32) + 48 * a2 + 36) = a3;
  return this;
}

_anonymous_namespace_ *re::RenderGraphProcessorManager::addDefaultProcessors(re::RenderGraphProcessorManager *this)
{
  v43[5] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 48, 8);
  v4 = re::globalAllocators(v3)[2];
  v43[0] = &unk_1F5D04BF8;
  v43[3] = v4;
  v43[4] = v43;
  *v3 = &unk_1F5D04C60;
  *(v3 + 4) = v4;
  *(v3 + 5) = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(v3 + 8, v43);
  v38 = v3;
  re::DynamicArray<re::RigDataValue *>::add(this, &v38);
  v5 = re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(v43);
  if (*(this + 121) == 1)
  {
    v6 = re::globalAllocators(v5);
    v7 = (*(*v6[2] + 32))(v6[2], 176, 8);
    *(v7 + 120) = 0u;
    *(v7 + 136) = 0u;
    *(v7 + 152) = 0u;
    *(v7 + 40) = xmmword_1E871F758;
    *(v7 + 56) = *&off_1E871F768;
    *(v7 + 72) = xmmword_1E871F778;
    *(v7 + 8) = xmmword_1E871F738;
    *v7 = &unk_1F5D05E50;
    *(v7 + 24) = *&off_1E871F748;
    *(v7 + 88) = "QueryVisibility";
    *(v7 + 96) = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
    *(v7 + 120) = 0;
    *(v7 + 168) = 0;
    *(v7 + 160) = 0;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0u;
    v38 = v7;
    v8 = re::DynamicArray<re::RigDataValue *>::add(this, &v38);
    v9 = re::globalAllocators(v8);
    v10 = (*(*v9[2] + 32))(v9[2], 8, 8);
    *v10 = &unk_1F5D04CA0;
    v38 = v10;
    v11 = re::DynamicArray<re::RigDataValue *>::add(this, &v38);
  }

  else
  {
    v12 = re::globalAllocators(v5);
    v13 = (*(*v12[2] + 32))(v12[2], 48, 8);
    v14 = re::globalAllocators(v13)[2];
    v42[0] = &unk_1F5D04CE0;
    v42[3] = v14;
    v42[4] = v42;
    *v13 = &unk_1F5D04C60;
    *(v13 + 4) = v14;
    *(v13 + 5) = 0;
    re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(v13 + 8, v42);
    v38 = v13;
    re::DynamicArray<re::RigDataValue *>::add(this, &v38);
    v11 = re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(v42);
  }

  if ((atomic_load_explicit(&qword_1EE1B88E0, memory_order_acquire) & 1) == 0)
  {
    v11 = __cxa_guard_acquire(&qword_1EE1B88E0);
    if (v11)
    {
      re::Defaults::BOOLValue("disableNoClearOptimization", v36, &v38);
      _MergedGlobals_442 = 1;
      if (v38)
      {
        v37 = BYTE1(v38);
      }

      else
      {
        v37 = 1;
      }

      byte_1EE1B88D9 = v37;
      __cxa_guard_release(&qword_1EE1B88E0);
    }
  }

  if ((_MergedGlobals_442 & 1) == 0)
  {
    if ((*(this + 120) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = byte_1EE1B88D9;
  *(this + 120) = byte_1EE1B88D9 ^ 1;
  if ((v15 & 1) == 0)
  {
LABEL_9:
    v16 = re::globalAllocators(v11);
    v17 = (*(*v16[2] + 32))(v16[2], 8, 8);
    *v17 = &unk_1F5D05180;
    v38 = v17;
    v11 = re::DynamicArray<re::RigDataValue *>::add(this, &v38);
  }

LABEL_10:
  if (*(this + 122) == 1)
  {
    v18 = re::globalAllocators(v11);
    v19 = (*(*v18[2] + 32))(v18[2], 88, 8);
    v38 = re::RenderGraphNodeCombineProcessor::RenderGraphNodeCombineProcessor(v19, v20);
    v21 = re::DynamicArray<re::RigDataValue *>::add(this, &v38);
  }

  else
  {
    v22 = re::globalAllocators(v11);
    v23 = (*(*v22[2] + 32))(v22[2], 48, 8);
    v24 = re::globalAllocators(v23)[2];
    v41[0] = &unk_1F5D04D38;
    v41[3] = v24;
    v41[4] = v41;
    *v23 = &unk_1F5D04C60;
    *(v23 + 4) = v24;
    *(v23 + 5) = 0;
    re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(v23 + 8, v41);
    v38 = v23;
    re::DynamicArray<re::RigDataValue *>::add(this, &v38);
    v21 = re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(v41);
  }

  v25 = re::globalAllocators(v21);
  v26 = (*(*v25[2] + 32))(v25[2], 48, 8);
  v27 = re::globalAllocators(v26)[2];
  v40[0] = &unk_1F5D04D90;
  v40[3] = v27;
  v40[4] = v40;
  *v26 = &unk_1F5D04C60;
  *(v26 + 4) = v27;
  *(v26 + 5) = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(v26 + 8, v40);
  v38 = v26;
  re::DynamicArray<re::RigDataValue *>::add((this + 80), &v38);
  v28 = re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(v40);
  v29 = re::globalAllocators(v28);
  v30 = (*(*v29[2] + 32))(v29[2], 48, 8);
  v31 = re::globalAllocators(v30)[2];
  v39[0] = &unk_1F5D04DE8;
  v39[1] = this;
  v39[3] = v31;
  v39[4] = v39;
  *v30 = &unk_1F5D04C60;
  *(v30 + 4) = v31;
  *(v30 + 5) = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(v30 + 8, v39);
  v38 = v30;
  re::DynamicArray<re::RigDataValue *>::add((this + 80), &v38);
  v32 = re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(v39);
  v33 = re::globalAllocators(v32);
  v34 = (*(*v33[2] + 32))(v33[2], 8, 8);
  *v34 = &unk_1F5D04E40;
  v38 = v34;
  return re::DynamicArray<re::RigDataValue *>::add((this + 80), &v38);
}

void re::RenderGraphProcessorManager::process(uint64_t a1, uint64_t a2, void *a3)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v30, 5020, *(a1 + 121));
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      (*(*v9 + 16))(v9, a2);
      v8 -= 8;
    }

    while (v8);
  }

  v10 = a3[2];
  if (v10)
  {
    v11 = a3[4];
    v12 = 8 * v10;
    do
    {
      v13 = *v11++;
      (*(*v13 + 16))(v13, a2);
      v12 -= 8;
    }

    while (v12);
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    v15 = *(a1 + 72);
    v16 = 8 * v14;
    do
    {
      v17 = *v15++;
      (*(*v17 + 16))(v17, a2);
      v16 -= 8;
    }

    while (v16);
  }

  v18 = a3[7];
  if (v18)
  {
    v19 = a3[9];
    v20 = 8 * v18;
    do
    {
      v21 = *v19++;
      (*(*v21 + 16))(v21, a2);
      v20 -= 8;
    }

    while (v20);
  }

  v22 = *(a1 + 96);
  if (v22)
  {
    v23 = *(a1 + 112);
    v24 = 8 * v22;
    do
    {
      v25 = *v23++;
      (*(*v25 + 16))(v25, a2);
      v24 -= 8;
    }

    while (v24);
  }

  v26 = a3[12];
  if (v26)
  {
    v27 = a3[14];
    v28 = 8 * v26;
    do
    {
      v29 = *v27++;
      (*(*v29 + 16))(v29, a2);
      v28 -= 8;
    }

    while (v28);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v30);
}

void re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_0,void ()(re::RenderGraphCompiled &)>::operator()(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2[44];
  if (v3)
  {
    v5 = a2[46];
    v6 = v5 + 200 * v3;
    do
    {
      v7 = *(v5 + 56);
      if (v7)
      {
        v8 = v7 << 6;
        v9 = (*(v5 + 72) + 52);
        do
        {
          v10 = a2[37];
          v11 = *v9;
          v12 = *(v10 + 16);
          if (v12 <= v11)
          {
            v21[0] = 0;
            v34 = 0u;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v22 = 136315906;
            v23 = "operator[]";
            v24 = 1024;
            v25 = 789;
            v26 = 2048;
            v27 = v11;
            v28 = 2048;
            v29 = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_19:
            v21[2] = 0;
            v34 = 0u;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v22 = 136315906;
            v23 = "operator[]";
            v24 = 1024;
            v25 = 789;
            v26 = 2048;
            v27 = v12;
            v28 = 2048;
            v29 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v13 = *(v10 + 32) + 48 * v11;
          if (*v13 == 1)
          {
            *&v30 = *(v13 + 8) >> 1;
            *(&v30 + 1) = *(v13 + 24);
            v19 = re::RenderGraphCompiled::bufferDescription(a2, &v30);
            if (*v19 == 4)
            {
              v20 = v19[7];
              if (v20 != -1)
              {
                *v9 = v20;
              }
            }
          }

          else if (!*v13)
          {
            v21[0] = *(v13 + 8) >> 1;
            v21[1] = *(v13 + 24);
            v14 = re::RenderGraphCompiled::targetDescription(a2, v21);
            if (*v14 == 4)
            {
              v15 = v14;
              v12 = v14[19];
              if (v12 != -1)
              {
                *v9 = v12;
                v16 = a2[37];
                v2 = *(v16 + 16);
                if (v2 <= v12)
                {
                  goto LABEL_19;
                }

                v17 = *(v16 + 32) + 48 * v12;
                *&v30 = *(v17 + 8) >> 1;
                *(&v30 + 1) = *(v17 + 24);
                v18 = re::RenderGraphCompiled::targetDescription(a2, &v30);
                *(v18 + 68) |= v15[17];
              }
            }
          }

          v9 += 16;
          v8 -= 64;
        }

        while (v8);
      }

      v5 += 200;
    }

    while (v5 != v6);
  }
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_0,void ()(re::RenderGraphCompiled &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04BF8;
  return result;
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_0,void ()(re::RenderGraphCompiled &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04BF8;
  return result;
}

void re::RenderGraphInlineProcessor::~RenderGraphInlineProcessor(re::RenderGraphInlineProcessor *this)
{
  re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(this + 8);
}

{
  re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(uint64_t a1))(void)
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

re::FixLifetimeOfExternalsProcessor *re::FixLifetimeOfExternalsProcessor::process(uint64_t this, re::RenderGraphCompiled *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 44))
  {
    goto LABEL_20;
  }

  v5 = *(*(a2 + 37) + 16);
  LOBYTE(v49) = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v6 = *(a2 + 44);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = 0;
  v8 = 0;
  v2 = 1;
  do
  {
    v9 = *(a2 + 46) + 200 * v7;
    v10 = *(v9 + 56);
    if (!v10)
    {
      goto LABEL_16;
    }

    v3 = v10 << 6;
    v11 = (*(v9 + 72) + 52);
    do
    {
      if (!re::RenderGraphCompiled::resourceIsExternal(a2, *v11))
      {
        goto LABEL_14;
      }

      v12 = *(v11 - 12);
      if ((v12 - 1) >= 8)
      {
        if (v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = *v11;
        v14 = v38;
        if (v38 <= v13)
        {
          v40 = 0;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v49 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v41 = 136315906;
          v42 = "operator[]";
          v43 = 1024;
          v44 = 468;
          v45 = 2048;
          v46 = v13;
          v47 = 2048;
          v48 = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_60;
        }

        if (*(v39 + v13))
        {
          goto LABEL_13;
        }

        *(v39 + v13) = 1;
        re::RenderGraphCompiled::setFirstWritten(*(a2 + 37), v13, v8);
      }

      LODWORD(v13) = *v11;
LABEL_13:
      re::RenderGraphCompiled::setLastRead(*(a2 + 37), v13, v8);
LABEL_14:
      v11 += 16;
      v3 -= 64;
    }

    while (v3);
    v6 = *(a2 + 44);
LABEL_16:
    v7 = (v8 + 1);
    v8 = v7;
  }

  while (v6 > v7);
LABEL_17:
  this = v37;
  if (v37 && v38)
  {
    this = (*(*v37 + 40))();
  }

LABEL_20:
  v15 = *(a2 + 37);
  if (*(v15 + 16))
  {
    v16 = 0;
    v17 = 0;
    v2 = 48;
    do
    {
      v18 = *(v15 + 32);
      v19 = *(v18 + v16);
      if (v19 == 1)
      {
        v22 = v18 + v16;
        v37 = (*(v22 + 8) >> 1);
        v38 = *(v22 + 24);
        this = re::RenderGraphCompiled::bufferDescription(a2, &v37);
        if (*this != 2)
        {
          goto LABEL_36;
        }

        this = re::RenderGraphCompiled::firstWrittenIsValid(*(a2 + 37), v17);
        if (this)
        {
          goto LABEL_36;
        }

        this = re::RenderGraphCompiled::bufferDescription(a2, &v37);
        if (*this != 4)
        {
          goto LABEL_36;
        }

        v13 = *(this + 28);
        if (v13 == -1)
        {
          goto LABEL_36;
        }

        v21 = *(a2 + 37);
        v3 = *(v21 + 2);
        if (v3 <= v13)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v19)
        {
          goto LABEL_36;
        }

        v20 = v18 + v16;
        v37 = (*(v20 + 8) >> 1);
        v38 = *(v20 + 24);
        this = re::RenderGraphCompiled::targetDescription(a2, &v37);
        if (*this != 2)
        {
          goto LABEL_36;
        }

        this = re::RenderGraphCompiled::firstWrittenIsValid(*(a2 + 37), v17);
        if (this)
        {
          goto LABEL_36;
        }

        this = re::RenderGraphCompiled::targetDescription(a2, &v37);
        if (*this != 4)
        {
          goto LABEL_36;
        }

        v13 = *(this + 76);
        if (v13 == -1)
        {
          goto LABEL_36;
        }

        v21 = *(a2 + 37);
        v3 = *(v21 + 2);
        if (v3 <= v13)
        {
          goto LABEL_65;
        }
      }

      v23 = *(*(v21 + 4) + 48 * v13 + 24);
      FirstWritten = re::RenderGraphCompiled::getFirstWritten(v21, v23);
      re::RenderGraphCompiled::setFirstWritten(*(a2 + 37), v17, FirstWritten);
      v25 = re::RenderGraphCompiled::getLastRead(*(a2 + 37), v23);
      this = re::RenderGraphCompiled::setLastRead(*(a2 + 37), v17, v25);
LABEL_36:
      ++v17;
      v15 = *(a2 + 37);
      v16 += 48;
    }

    while (*(v15 + 16) > v17);
  }

  v26 = *(a2 + 44);
  LODWORD(v49) = -1;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v28 = *(a2 + 49);
  if (v28)
  {
    v29 = 0;
    v30 = *(a2 + 51);
    v8 = v38;
    v31 = v39;
    while (1)
    {
      v13 = *(v30 + 4 * v29);
      if (v8 <= v13)
      {
        break;
      }

      *(v31 + 4 * v13) = v29++;
      if (v28 == v29)
      {
        goto LABEL_41;
      }
    }

LABEL_60:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    v44 = 468;
    v45 = 2048;
    v46 = v13;
    v47 = 2048;
    v48 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_61:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    v44 = 468;
    v45 = 2048;
    v46 = v13;
    v47 = 2048;
    v48 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    v44 = 468;
    v45 = 2048;
    v46 = v8;
    v47 = 2048;
    v48 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_63:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    v44 = 789;
    v45 = 2048;
    v46 = v13;
    v47 = 2048;
    v48 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_64:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    v44 = 789;
    v45 = 2048;
    v46 = v8;
    v47 = 2048;
    v48 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_65:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    v44 = 789;
    v45 = 2048;
    v46 = v13;
    v47 = 2048;
    v48 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_66:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    v44 = 789;
    v45 = 2048;
    v46 = v13;
    v47 = 2048;
    v48 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_41:
  v36 = 0;
  if (*(*(a2 + 37) + 16))
  {
    LODWORD(v27) = 0;
    do
    {
      if (re::RenderGraphCompiled::resourceIsExternal(a2, v27))
      {
        IsValid = re::RenderGraphCompiled::firstWrittenIsValid(*(a2 + 37), v36);
        v8 = re::RenderGraphCompiled::lastReadIsValid(*(a2 + 37), v36);
        if (IsValid)
        {
          v33 = re::RenderGraphCompiled::getFirstWritten(*(a2 + 37), v36);
          v13 = v33;
          v2 = v38;
          if (v38 <= v33)
          {
            goto LABEL_61;
          }

          v13 = *(v39 + 4 * v33);
          if ((v13 & 0x80000000) == 0)
          {
            v2 = *(a2 + 59);
            if (v2 <= v13)
            {
              goto LABEL_63;
            }

            re::DynamicArray<int>::add((*(a2 + 61) + 40 * v13), &v36);
          }
        }

        if (v8)
        {
          v34 = re::RenderGraphCompiled::getLastRead(*(a2 + 37), v36);
          v8 = v34;
          v13 = v38;
          if (v38 <= v34)
          {
            goto LABEL_62;
          }

          v8 = *(v39 + 4 * v34);
          if ((v8 & 0x80000000) == 0)
          {
            v13 = *(a2 + 64);
            if (v13 <= v8)
            {
              goto LABEL_64;
            }

            re::DynamicArray<int>::add((*(a2 + 66) + 40 * v8), &v36);
          }
        }
      }

      v27 = ++v36;
    }

    while (*(*(a2 + 37) + 16) > v36);
  }

  re::RenderGraphProcessor::updateTextureLifetimes(a2, v27);
  result = v37;
  if (v37)
  {
    if (v38)
    {
      return (*(*v37 + 40))();
    }
  }

  return result;
}

BOOL re::RenderGraphCompiled::resourceIsExternal(re::RenderGraphCompiled *this, unsigned int a2)
{
  v2 = *(this + 37);
  if (*(v2 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v3 = (*(v2 + 32) + 48 * a2);
  if (!*v3)
  {
    v4 = v3[7];
    v8 = *(this + 38);
    if (*(v8 + 16) > v4)
    {
      v6 = *(v8 + 32);
      v7 = 112;
      return *(v6 + v4 * v7) == 2;
    }

LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*v3 == 1)
  {
    v4 = v3[7];
    v5 = *(this + 39);
    if (*(v5 + 16) > v4)
    {
      v6 = *(v5 + 32);
      v7 = 48;
      return *(v6 + v4 * v7) == 2;
    }

    goto LABEL_12;
  }

  return 0;
}

BOOL re::RenderGraphCompiled::firstWrittenIsValid(re::RenderGraphCompiled *this, unsigned int a2)
{
  if (*(this + 2) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 48 * a2 + 32) != -1;
}

uint64_t re::RenderGraphCompiled::getFirstWritten(re::RenderGraphCompiled *this, unsigned int a2)
{
  if (*(this + 2) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 48 * a2 + 32);
}

uint64_t re::RenderGraphCompiled::getLastRead(re::RenderGraphCompiled *this, unsigned int a2)
{
  if (*(this + 2) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 48 * a2 + 36);
}

BOOL re::RenderGraphCompiled::lastReadIsValid(re::RenderGraphCompiled *this, unsigned int a2)
{
  if (*(this + 2) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 48 * a2 + 36) != -1;
}

uint64_t *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_1,void ()(re::RenderGraphCompiled &)>::operator()(_anonymous_namespace_ *a1, re::RenderGraphProcessor *this)
{
  v3 = this;
  v49 = *MEMORY[0x1E69E9840];
  if (!*(this + 44))
  {
    goto LABEL_27;
  }

  v4 = *(v3[37] + 16);
  LOBYTE(v44) = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  if (!v3[44])
  {
    goto LABEL_24;
  }

  v5 = 200;
  do
  {
    re::DynamicArray<int>::add(v3 + 47, &v31);
    *&v46 = 0;
    *&v45 = 0;
    v44 = 0uLL;
    DWORD2(v45) = 0;
    re::DynamicArray<re::DynamicArray<unsigned int>>::add(v3 + 57, &v44);
    if (v44 && v46)
    {
      (*(*v44 + 40))();
    }

    *&v46 = 0;
    *&v45 = 0;
    v44 = 0uLL;
    DWORD2(v45) = 0;
    re::DynamicArray<re::DynamicArray<unsigned int>>::add(v3 + 62, &v44);
    if (v44)
    {
      this = v46;
      if (v46)
      {
        (*(*v44 + 40))();
      }
    }

    v6 = v31;
    v7 = v3[44];
    if (v7 <= v31)
    {
      goto LABEL_62;
    }

    v8 = v3[46] + 200 * v31;
    v9 = *(v8 + 56);
    if (!v9)
    {
      goto LABEL_23;
    }

    v6 = v9 << 6;
    v2 = (*(v8 + 72) + 52);
    do
    {
      v10 = *(v2 - 12);
      if ((v10 - 1) < 8)
      {
        v7 = *v2;
        v11 = v33;
        if (v33 <= v7)
        {
          *v35 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v36 = 136315906;
          v37 = "operator[]";
          v38 = 1024;
          v39 = 468;
          v40 = 2048;
          v41 = v7;
          v42 = 2048;
          v43 = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_62:
          *v35 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v36 = 136315906;
          v37 = "operator[]";
          v38 = 1024;
          v39 = 789;
          v40 = 2048;
          v41 = v6;
          v42 = 2048;
          v43 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_63:
          v32 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v36 = 136315906;
          v37 = "operator[]";
          v38 = 1024;
          v39 = 789;
          v40 = 2048;
          v41 = v7;
          v42 = 2048;
          v43 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_64:
          v32 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v36 = 136315906;
          v37 = "operator[]";
          v38 = 1024;
          v39 = 789;
          v40 = 2048;
          v41 = v5;
          v42 = 2048;
          v43 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_65:
          v32 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v36 = 136315906;
          v37 = "operator[]";
          v38 = 1024;
          v39 = 789;
          v40 = 2048;
          v41 = v7;
          v42 = 2048;
          v43 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_66:
          v32 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v36 = 136315906;
          v37 = "operator[]";
          v38 = 1024;
          v39 = 789;
          v40 = 2048;
          v41 = v7;
          v42 = 2048;
          v43 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_67:
          v32 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v36 = 136315906;
          v37 = "operator[]";
          v38 = 1024;
          v39 = 789;
          v40 = 2048;
          v41 = v7;
          v42 = 2048;
          v43 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_68:
          v32 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v36 = 136315906;
          v37 = "operator[]";
          v38 = 1024;
          v39 = 789;
          v40 = 2048;
          v41 = v7;
          v42 = 2048;
          v43 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_69:
          *v35 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v36 = 136315906;
          v37 = "operator[]";
          v38 = 1024;
          v39 = 789;
          v40 = 2048;
          v41 = v5;
          v42 = 2048;
          v43 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_70:
          *v35 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v36 = 136315906;
          v37 = "operator[]";
          v38 = 1024;
          v39 = 789;
          v40 = 2048;
          v41 = v5;
          v42 = 2048;
          v43 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v12 = v31;
        if ((*(v34 + v7) & 1) == 0)
        {
          *(v34 + v7) = 1;
          re::RenderGraphCompiled::setFirstWritten(v3[37], v7, v12);
          LODWORD(v7) = *v2;
          v12 = v31;
        }

        v13 = v3[37];
        v14 = v7;
        goto LABEL_18;
      }

      if (!v10)
      {
        v14 = *v2;
        v12 = v31;
        v13 = v3[37];
LABEL_18:
        re::RenderGraphCompiled::setLastRead(v13, v14, v12);
      }

      v2 += 16;
      v6 -= 64;
    }

    while (v6);
    LODWORD(v6) = v31;
    v7 = v3[44];
LABEL_23:
    v31 = v6 + 1;
  }

  while (v7 > (v6 + 1));
LABEL_24:
  if (v32 && v33)
  {
    (*(*v32 + 40))();
  }

LABEL_27:
  v15 = v3[37];
  if (!*(v15 + 2))
  {
    return re::RenderGraphProcessor::updateTextureLifetimes(v3, this);
  }

  v16 = 0;
  v17 = 0;
  v6 = 48;
  while (2)
  {
    v18 = *(v15 + 4);
    v19 = *(v18 + v16);
    if (v19 == 1)
    {
      v23 = v18 + v16;
      v32 = *(v23 + 8) >> 1;
      v33 = *(v23 + 24);
      if (!re::RenderGraphCompiled::firstWrittenIsValid(v15, v17))
      {
        v24 = re::RenderGraphCompiled::bufferDescription(v3, &v32);
        if (*v24 == 4)
        {
          v5 = v24[7];
          if (v5 != -1)
          {
            v22 = v3[37];
            v2 = *(v22 + 2);
            if (v2 <= v5)
            {
              goto LABEL_70;
            }

LABEL_40:
            v25 = *(*(v22 + 4) + 48 * v5 + 24);
            FirstWritten = re::RenderGraphCompiled::getFirstWritten(v22, v25);
            re::RenderGraphCompiled::setFirstWritten(v3[37], v17, FirstWritten);
            v27 = re::RenderGraphCompiled::getLastRead(v3[37], v25);
            re::RenderGraphCompiled::setLastRead(v3[37], v17, v27);
          }
        }
      }
    }

    else if (!v19)
    {
      v20 = v18 + v16;
      v32 = *(v20 + 8) >> 1;
      v33 = *(v20 + 24);
      if (!re::RenderGraphCompiled::firstWrittenIsValid(v15, v17))
      {
        v21 = re::RenderGraphCompiled::targetDescription(v3, &v32);
        if (*v21 == 4)
        {
          v5 = v21[19];
          if (v5 != -1)
          {
            v22 = v3[37];
            v2 = *(v22 + 2);
            if (v2 <= v5)
            {
              goto LABEL_69;
            }

            goto LABEL_40;
          }
        }
      }
    }

    ++v17;
    v15 = v3[37];
    v28 = *(v15 + 2);
    v16 += 48;
    if (v28 > v17)
    {
      continue;
    }

    break;
  }

  v35[0] = 0;
  if (v28)
  {
    LODWORD(this) = 0;
    while (1)
    {
      IsValid = re::RenderGraphCompiled::firstWrittenIsValid(v15, this);
      v7 = re::RenderGraphCompiled::lastReadIsValid(v3[37], v35[0]);
      if (re::RenderGraphCompiled::resourceIsExternal(v3, v35[0]))
      {
        if (IsValid)
        {
          v5 = re::RenderGraphCompiled::getFirstWritten(v3[37], v35[0]);
          v6 = v3[59];
          if (v6 <= v5)
          {
            goto LABEL_64;
          }

          re::DynamicArray<int>::add((v3[61] + 40 * v5), v35);
        }

        if (!v7)
        {
          goto LABEL_59;
        }

        v7 = re::RenderGraphCompiled::getLastRead(v3[37], v35[0]);
        v5 = v3[64];
        if (v5 <= v7)
        {
          goto LABEL_65;
        }

        goto LABEL_58;
      }

      if ((IsValid & v7) == 1)
      {
        break;
      }

      if (!(v7 & 1 | !IsValid))
      {
        v7 = re::RenderGraphCompiled::getFirstWritten(v3[37], v35[0]);
        v5 = v3[59];
        if (v5 <= v7)
        {
          goto LABEL_67;
        }

        re::DynamicArray<int>::add((v3[61] + 40 * v7), v35);
        v7 = re::RenderGraphCompiled::getFirstWritten(v3[37], v35[0]);
        v5 = v3[64];
        if (v5 <= v7)
        {
          goto LABEL_68;
        }

        goto LABEL_58;
      }

LABEL_59:
      this = ++v35[0];
      v15 = v3[37];
      if (*(v15 + 2) <= v35[0])
      {
        return re::RenderGraphProcessor::updateTextureLifetimes(v3, this);
      }
    }

    v7 = re::RenderGraphCompiled::getFirstWritten(v3[37], v35[0]);
    v5 = v3[59];
    if (v5 <= v7)
    {
      goto LABEL_63;
    }

    re::DynamicArray<int>::add((v3[61] + 40 * v7), v35);
    v7 = re::RenderGraphCompiled::getLastRead(v3[37], v35[0]);
    v5 = v3[64];
    if (v5 <= v7)
    {
      goto LABEL_66;
    }

LABEL_58:
    re::DynamicArray<int>::add((v3[66] + 40 * v7), v35);
    goto LABEL_59;
  }

  return re::RenderGraphProcessor::updateTextureLifetimes(v3, this);
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_1,void ()(re::RenderGraphCompiled &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04CE0;
  return result;
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_1,void ()(re::RenderGraphCompiled &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04CE0;
  return result;
}

uint64_t *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_2,void ()(re::RenderGraphCompiled &)>::operator()(int a1, re::RenderGraphProcessor *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(this + 49))
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = *(*(this + 51) + 4 * v3);
      if (*(this + 44) <= v5)
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v6 = *(this + 46) + 200 * v5;
      if (!*(v6 + 16))
      {
        goto LABEL_8;
      }

      v7 = *(v6 + 32);
      *&v10 = v5;
      re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::add(this + 656, v7, &v10);
      v3 = v4;
    }

    while (*(this + 49) > v4++);
  }

  return re::RenderGraphProcessor::updateTextureLifetimes(this, this);
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_2,void ()(re::RenderGraphCompiled &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04D38;
  return result;
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_2,void ()(re::RenderGraphCompiled &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04D38;
  return result;
}

uint64_t re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::add(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

void re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_3,void ()(re::RenderGraphCompiled &)>::operator()(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 432);
  if (v2)
  {
    v4 = 4 * v2;
    for (i = *(a2 + 448); ; ++i)
    {
      v6 = *i;
      v7 = *(a2 + 296);
      v8 = *(v7 + 16);
      if (v8 <= v6)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v21 = 136315906;
        *v22 = "operator[]";
        *&v22[8] = 1024;
        *&v22[10] = 789;
        v23 = 2048;
        v24 = v6;
        v25 = 2048;
        v26 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = *(v7 + 32) + 48 * v6;
      if (*v9 != 1)
      {
        break;
      }

      v18 = *(v9 + 8);
      v17 = v9 + 8;
      *&v27 = v18 >> 1;
      *(&v27 + 1) = *(v17 + 16);
      if (*re::RenderGraphCompiled::bufferDescription(a2, &v27) != 2)
      {
        FirstWritten = re::RenderGraphCompiled::getFirstWritten(*(a2 + 296), v6);
        if (FirstWritten > re::RenderGraphCompiled::getLastRead(*(a2 + 296), v6))
        {
          re::StringID::StringID(&v21, v17);
          re::DynamicString::format("Buffer (%s) with invalid lifecycle detected (firstWritten > lastRead).", &v27, *&v22[4]);
LABEL_22:
          re::RenderGraphCompiled::addError(a2, &v27);
          v20 = v27;
          if (v27)
          {
            if (BYTE8(v27))
            {
              v20 = (*(*v27 + 40))();
            }

            v27 = 0u;
            v28 = 0u;
          }

          if (v21)
          {
            if (v21)
            {
            }
          }
        }
      }

LABEL_29:
      v4 -= 4;
      if (!v4)
      {
        return;
      }
    }

    if (*v9)
    {
      goto LABEL_29;
    }

    v11 = *(v9 + 8);
    v10 = v9 + 8;
    *&v27 = v11 >> 1;
    *(&v27 + 1) = *(v10 + 16);
    v12 = re::RenderGraphCompiled::targetDescription(a2, &v27);
    v13 = *v12;
    if ((*v12 - 2) >= 3)
    {
      v14 = v12;
      if (*(a2 + 352) <= re::RenderGraphCompiled::getLastRead(*(a2 + 296), v6))
      {
        re::StringID::StringID(&v21, v10);
        re::DynamicString::format("Texture (%s) with invalid lifecycle detected (lastRead later than end of graph).", &v27, *&v22[4]);
        re::RenderGraphCompiled::addError(a2, &v27);
        v15 = v27;
        if (v27)
        {
          if (BYTE8(v27))
          {
            v15 = (*(*v27 + 40))();
          }

          v27 = 0u;
          v28 = 0u;
        }

        if (v21)
        {
          if (v21)
          {
          }
        }
      }

      v13 = *v14;
    }

    if (v13 == 2)
    {
      goto LABEL_29;
    }

    v16 = re::RenderGraphCompiled::getFirstWritten(*(a2 + 296), v6);
    if (v16 <= re::RenderGraphCompiled::getLastRead(*(a2 + 296), v6))
    {
      goto LABEL_29;
    }

    re::StringID::StringID(&v21, v10);
    re::DynamicString::format("Texture (%s) with invalid lifecycle detected (firstWritten > lastRead).", &v27, *&v22[4]);
    goto LABEL_22;
  }
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_3,void ()(re::RenderGraphCompiled &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04D90;
  return result;
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_3,void ()(re::RenderGraphCompiled &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04D90;
  return result;
}

uint64_t re::RenderGraphCompiled::addError(uint64_t a1, uint64_t a2)
{
  v4.n128_u64[0] = 2000;
  v4.n128_u64[1] = &re::GraphicsErrorCategory(void)::instance;
  v5 = *a2;
  v7 = *(a2 + 24);
  v6 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = re::DynamicArray<re::DetailedError>::add((a1 + 576), &v4);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))(v2);
    }
  }

  return result;
}

void re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_4,void ()(re::RenderGraphCompiled &)>::operator()(uint64_t a1, re::RenderGraphCompiled *this)
{
  v2 = *(this + 37);
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a1 + 8);
    do
    {
      v7 = *(v2 + 32);
      IsExternal = re::RenderGraphCompiled::resourceIsExternal(this, v5);
      if ((*(v6 + 121) & 1) == 0 && !IsExternal)
      {
        v9 = v7 + 48 * v4;
        FirstWritten = re::RenderGraphCompiled::getFirstWritten(*(this + 37), v5);
        if (FirstWritten > re::RenderGraphCompiled::getLastRead(*(this + 37), v5))
        {
          re::StringID::StringID(&v17, (v9 + 8));
          re::DynamicString::format("Resource (%s) with invalid lifecycle detected (firstWritten > lastRead).", &v19, v18);
          re::RenderGraphCompiled::addError(this, &v19);
          v11 = v19;
          if (v19)
          {
            if (BYTE8(v19))
            {
              v11 = (*(*v19 + 40))();
            }

            v19 = 0u;
            v20 = 0u;
          }

          if (v17)
          {
            if (v17)
            {
            }
          }
        }

        if (*v9 == 1)
        {
          v15 = *(v9 + 8);
          v14 = v9 + 8;
          *&v19 = v15 >> 1;
          *(&v19 + 1) = *(v14 + 16);
          if ((*re::RenderGraphCompiled::bufferDescription(this, &v19) & 0xFFFFFFFE) != 2 && *(this + 44) <= re::RenderGraphCompiled::getLastRead(*(this + 37), v5))
          {
            re::StringID::StringID(&v17, v14);
            re::DynamicString::format("Buffer (%s) with invalid lifecycle detected (lastRead later than end of graph).", &v19, v18);
            goto LABEL_21;
          }
        }

        else if (!*v9)
        {
          v13 = *(v9 + 8);
          v12 = v9 + 8;
          *&v19 = v13 >> 1;
          *(&v19 + 1) = *(v12 + 16);
          if ((*re::RenderGraphCompiled::targetDescription(this, &v19) & 0xFFFFFFFE) != 2 && *(this + 44) <= re::RenderGraphCompiled::getLastRead(*(this + 37), v5))
          {
            re::StringID::StringID(&v17, v12);
            re::DynamicString::format("Texture (%s) with invalid lifecycle detected (lastRead later than end of graph).", &v19, v18);
LABEL_21:
            re::RenderGraphCompiled::addError(this, &v19);
            v16 = v19;
            if (v19)
            {
              if (BYTE8(v19))
              {
                v16 = (*(*v19 + 40))();
              }

              v19 = 0u;
              v20 = 0u;
            }

            if (v17)
            {
              if (v17)
              {
              }
            }
          }
        }
      }

      v2 = *(this + 37);
      v4 = ++v5;
    }

    while (*(v2 + 16) > v5);
  }
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_4,void ()(re::RenderGraphCompiled &)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D04DE8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_4,void ()(re::RenderGraphCompiled &)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D04DE8;
  a2[1] = v2;
  return a2;
}

re::RenderGraphCompiled *re::MarkMemorylessProcessor::process(re::MarkMemorylessProcessor *this, re::RenderGraphCompiled *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  result = *(a2 + 37);
  if (*(result + 2))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(result + 4) + 48 * v4;
      if (*v6 == 1)
      {
        if (re::RenderGraphCompiled::firstWrittenIsValid(result, v5) && re::RenderGraphCompiled::lastReadIsValid(*(a2 + 37), v5))
        {
          FirstWritten = re::RenderGraphCompiled::getFirstWritten(*(a2 + 37), v5);
          v26 = re::RenderGraphCompiled::getLastRead(*(a2 + 37), v5);
          *&v44 = *(v6 + 8) >> 1;
          *(&v44 + 1) = *(v6 + 24);
          v27 = re::RenderGraphCompiled::bufferDescription(a2, &v44);
          if (*v27 != 2)
          {
            v28 = *(a2 + 49);
            if (v28)
            {
              v29 = 0;
              v30 = *(a2 + 44);
              while (1)
              {
                v31 = (*(a2 + 51) + 4 * v29);
                v32 = v30 + 1;
                if (v29 < v28 - 1)
                {
                  v32 = v31[1];
                }

                v33 = *v31;
                if (FirstWritten >= v33 && v26 < v32)
                {
                  if (v30 <= v33)
                  {
                    goto LABEL_57;
                  }

                  v35 = *(a2 + 46) + 200 * v33;
                  v36 = *(v35 + 56);
                  if (!v36)
                  {
                    break;
                  }

                  v37 = 0;
                  v38 = (v36 << 6) - 64;
                  v39 = (*(v35 + 72) + 4);
                  do
                  {
                    v40 = *v39;
                    v39 += 16;
                    v41 = (v40 & 0xFFFFFFFE) == 4;
                    v42 = (v40 & 0xFFFFFFFE) == 4 || v38 == 0;
                    v38 -= 64;
                    v37 |= v41;
                  }

                  while (!v42);
                  if ((v37 & 1) == 0)
                  {
                    break;
                  }
                }

                if (++v29 == v28)
                {
                  goto LABEL_54;
                }
              }

              v43 = v27 + 6;
LABEL_53:
              *v43 = 48;
            }
          }
        }
      }

      else if (!*v6 && re::RenderGraphCompiled::firstWrittenIsValid(result, v5) && re::RenderGraphCompiled::lastReadIsValid(*(a2 + 37), v5))
      {
        v7 = re::RenderGraphCompiled::getFirstWritten(*(a2 + 37), v5);
        v8 = re::RenderGraphCompiled::getLastRead(*(a2 + 37), v5);
        *&v44 = *(v6 + 8) >> 1;
        *(&v44 + 1) = *(v6 + 24);
        v9 = re::RenderGraphCompiled::targetDescription(a2, &v44);
        if (*v9 != 2)
        {
          v10 = *(a2 + 49);
          if (v10)
          {
            v11 = 0;
            v12 = *(a2 + 44);
            do
            {
              v13 = (*(a2 + 51) + 4 * v11);
              v14 = v12 + 1;
              if (v11 < v10 - 1)
              {
                v14 = v13[1];
              }

              v15 = *v13;
              if (v7 >= v15 && v8 < v14)
              {
                if (v12 <= v15)
                {
                  v47 = 0u;
                  v48 = 0u;
                  v45 = 0u;
                  v46 = 0u;
                  v44 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_57:
                  v47 = 0u;
                  v48 = 0u;
                  v45 = 0u;
                  v46 = 0u;
                  v44 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                }

                v17 = *(a2 + 46) + 200 * v15;
                v18 = *(v17 + 56);
                if (!v18)
                {
                  goto LABEL_51;
                }

                v19 = 0;
                v20 = (v18 << 6) - 64;
                v21 = (*(v17 + 72) + 4);
                do
                {
                  v22 = *v21;
                  v21 += 16;
                  v23 = (v22 & 0xFFFFFFFE) == 4;
                  v24 = (v22 & 0xFFFFFFFE) == 4 || v20 == 0;
                  v20 -= 64;
                  v19 |= v23;
                }

                while (!v24);
                if ((v19 & 1) == 0)
                {
LABEL_51:
                  v43 = v9 + 18;
                  goto LABEL_53;
                }
              }

              ++v11;
            }

            while (v11 != v10);
          }
        }
      }

LABEL_54:
      result = *(a2 + 37);
      v4 = ++v5;
    }

    while (*(result + 2) > v5);
  }

  return result;
}

double re::wrapAsTextureMip@<D0>(id *this@<X0>, const re::CPUTexture *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v10[0] = vmovn_s64(v11[5]);
  v7 = this[6];
  if (v7 <= v3)
  {
    v10[1] = 0;
    memset(v11, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    v15 = 797;
    v16 = 2048;
    v17 = v6;
    v18 = 2048;
    v19 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = this[8] + 40 * v6;
  return MetalEmulation::wrapTextureMip(this[3], v3, v10, *(v8 + 32), *(v8 + 16), a3);
}

void *re::PbrConstantSource::constantNameMap(re::PbrConstantSource *this)
{
  {
    byte_1ECF1C960 = 0;
    re::PbrConstantSource::constantNameMap(void)::linearAllocator = &unk_1F5CCF5B8;
    *algn_1ECF1C958 = "pbrConstantAllocator";
    xmmword_1ECF1C990 = 0u;
    unk_1ECF1C9A0 = 0u;
    dword_1ECF1C9B0 = 0;
    *&qword_1ECF1C968 = 0u;
    *&qword_1ECF1C978 = 0u;
    dword_1ECF1C988 = 0;
    *algn_1ECF1C9B4 = 0x7FFFFFFFLL;
    byte_1ECF1C9C0 = 1;
  }

  if ((re::PbrConstantSource::constantNameMap(void)::initialized & 1) == 0)
  {
    qword_1ECF1C968 = &re::PbrConstantSource::constantNameMap(void)::s_pbrConstantMemory;
    unk_1ECF1C970 = &re::PbrConstantSource::constantNameMap(void)::linearAllocator;
    qword_1ECF1C978 = &re::PbrConstantSource::constantNameMap(void)::s_pbrConstantMemory;
    unk_1ECF1C980 = &re::PbrConstantSource::constantNameMap(void)::linearAllocator;
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(re::PbrConstantSource::constantNameMap(void)::nameMap, &re::PbrConstantSource::constantNameMap(void)::linearAllocator, 16);
    for (i = 0; i != 128; i += 8)
    {
      v2 = &re::s_pbrConstantMembers[i];
      v3 = *&re::s_pbrConstantMembers[i + 4];
      if (v3)
      {
        v4 = *v3;
        if (*v3)
        {
          v5 = v3[1];
          if (v5)
          {
            v6 = (v3 + 2);
            do
            {
              v4 = 31 * v4 + v5;
              v7 = *v6++;
              v5 = v7;
            }

            while (v7);
          }

          v4 &= ~0x8000000000000000;
        }
      }

      else
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v12 = v4;
      v8 = v2[1];
      LOWORD(v10) = re::s_pbrConstantMembers[i];
      HIWORD(v10) = v8;
      v11 = *(v2 + 24);
      re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::addNew(re::PbrConstantSource::constantNameMap(void)::nameMap, &v12, &v10);
    }

    re::PbrConstantSource::constantNameMap(void)::initialized = 1;
  }

  return re::PbrConstantSource::constantNameMap(void)::nameMap;
}

uint64_t re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::addNew(void *a1, void *a2, int *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::internalAdd(a1, a2, a3);
}

void *re::PbrTextureSource::textureNameMap(re::PbrTextureSource *this)
{
  {
    byte_1ECF1CB40 = 0;
    re::PbrTextureSource::textureNameMap(void)::linearAllocator = &unk_1F5CCF5B8;
    *algn_1ECF1CB38 = "pbrTextureAllocator";
    xmmword_1ECF1CB70 = 0u;
    unk_1ECF1CB80 = 0u;
    dword_1ECF1CB90 = 0;
    *&qword_1ECF1CB48 = 0u;
    *&qword_1ECF1CB58 = 0u;
    dword_1ECF1CB68 = 0;
    *algn_1ECF1CB94 = 0x7FFFFFFFLL;
    byte_1ECF1CBA0 = 1;
  }

  if ((re::PbrTextureSource::textureNameMap(void)::initialized & 1) == 0)
  {
    qword_1ECF1CB48 = &re::PbrTextureSource::textureNameMap(void)::s_pbrTextureMemory;
    unk_1ECF1CB50 = &re::PbrTextureSource::textureNameMap(void)::linearAllocator;
    qword_1ECF1CB58 = &re::PbrTextureSource::textureNameMap(void)::s_pbrTextureMemory;
    unk_1ECF1CB60 = &re::PbrTextureSource::textureNameMap(void)::linearAllocator;
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(re::PbrTextureSource::textureNameMap(void)::nameMap, &re::PbrTextureSource::textureNameMap(void)::linearAllocator, 14);
    for (i = 0; i != 14; ++i)
    {
      v2 = re::s_pbrTextureNames[i];
      v3 = *v2;
      if (*v2)
      {
        v4 = v2[1];
        if (v4)
        {
          v5 = (v2 + 2);
          do
          {
            v3 = 31 * v3 + v4;
            v6 = *v5++;
            v4 = v6;
          }

          while (v6);
        }

        v3 &= ~0x8000000000000000;
      }

      v9 = v3;
      LOBYTE(v8) = 0;
      HIBYTE(v8) = i;
      re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::addNew(re::PbrTextureSource::textureNameMap(void)::nameMap, &v9, &v8);
    }

    re::PbrTextureSource::textureNameMap(void)::initialized = 1;
  }

  return re::PbrTextureSource::textureNameMap(void)::nameMap;
}

uint64_t re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::addNew(void *a1, void *a2, _WORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::internalAdd(a1, a2, a3);
}

uint64_t re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::internalAdd(uint64_t a1, void *a2, int *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::resize(a1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  v17 = *(a1 + 8) + 16 * v16;
  *v17 = *a2;
  v18 = *a3;
  *(v17 + 12) = *(a3 + 2);
  *(v17 + 8) = v18;
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v20);
  re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::updateHashes(a1, *(a1 + 8) + 16 * v16);
  return *(a1 + 8) + 16 * v16 + 8;
}

_anonymous_namespace_ *re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::resize(uint64_t a1)
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
  memset(v52, 0, sizeof(v52));
  result = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v52, v8, v3);
  v53 = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v54 = v15 ^ 0xFFFF;
      if (v15 != 0xFFFF)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_30;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFF));
    v17 = v16 - v12;
    v55 = v16 - v12;
    if (v16 + 1 != v12)
    {
      v51 = vdupq_n_s64(1uLL).u64[0];
      do
      {
        v18 = *(v53 + 1);
        if (*(&v52[3] + 1))
        {
          v19 = *&v52[2];
        }

        else
        {
          *&v52[1] = 16;
          *&v35 = -1;
          *(&v35 + 1) = -1;
          **&v52[0] = v35;
          v19 = *&v52[1];
          *(&v52[0] + 1) = *&v52[0] + 16;
          *(&v52[1] + 1) = 0;
          v52[2] = *&v52[1];
          *&v52[3] = 0;
        }

        v20 = xmmword_1E304FAD0;
        if (!v19 || (v21 = *&v52[1], *&v52[1] > (8 * v19)))
        {
          re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::resize(v52);
          v20 = xmmword_1E304FAD0;
          v21 = *&v52[1];
        }

        v22 = v18 + 16 * v17;
        v23 = 0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30));
        v24 = (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31);
        v25 = v21 >> 4;
        v26 = v24 % (v21 >> 4);
        v27 = v26;
        while (1)
        {
          v28 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v52[0] + 16 * v27)), v20)))), 0x3830282018100800)));
          if (v28 < 0x40)
          {
            break;
          }

          if (v27 + 1 == v25)
          {
            v27 = 0;
          }

          else
          {
            ++v27;
          }

          if (v27 == v26)
          {
            re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
            result = _os_crash();
            __break(1u);
            return result;
          }
        }

        v29 = *&v52[0] + 16 * v27;
        v30 = *(v29 + v28);
        *(v29 + v28) = v24 & 0x7F;
        v31 = v28 + 16 * v27;
        v32 = *(&v52[0] + 1) + 16 * v31;
        *v32 = *v22;
        LODWORD(v29) = *(v22 + 8);
        *(v32 + 12) = *(v22 + 12);
        *(v32 + 8) = v29;
        if (v30 == 255)
        {
          v33 = -1;
        }

        else
        {
          v33 = 0;
        }

        v34.i64[0] = v51;
        v34.i64[1] = v33;
        *(&v52[1] + 8) = vaddq_s64(*(&v52[1] + 8), v34);
        re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::updateHashes(v52, *(&v52[0] + 1) + 16 * v31);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v53);
        v17 = v55;
      }

      while (v55 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_30:
  v37 = *(&v52[3] + 1);
  *(&v52[3] + 1) = *(a1 + 56);
  v36 = *(&v52[3] + 1);
  v38 = *a1;
  v39 = *(a1 + 8);
  v40 = v52[0];
  v41 = v52[1];
  *&v52[0] = *a1;
  *(&v52[0] + 1) = v39;
  *&v52[1] = v11;
  v42 = v52[2];
  v43 = *(a1 + 40);
  *(a1 + 48) = *&v52[3];
  *(a1 + 56) = v37;
  *(&v52[2] + 8) = v43;
  v44 = *(a1 + 24);
  *a1 = v40;
  *(a1 + 16) = v41;
  *(a1 + 32) = v42;
  *(&v52[1] + 8) = v44;
  if (v36)
  {
    if (v39)
    {
      v53 = v52;
      if (v11 >= 0x10)
      {
        v45 = 0;
        v46 = v11 >> 4;
        v47 = v38;
        while (1)
        {
          v48 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v47), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v54 = v48 ^ 0xFFFFLL;
          if (v48 != 0xFFFFLL)
          {
            break;
          }

          v45 -= 16;
          ++v47;
          if (!--v46)
          {
            goto LABEL_39;
          }
        }

        v49 = __clz(__rbit64(v48 ^ 0xFFFFLL));
        v50 = v49 - v45;
        v55 = v49 - v45;
        if (v49 + 1 != v45)
        {
          do
          {
            *(v39 + 16 * v50) = 0;
            result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v53);
            v50 = v55;
          }

          while (v55 != -1);
        }
      }

LABEL_39:
      *(&v52[0] + 1) = 0;
    }

    if (v38)
    {
      return (*(*v36 + 40))(v36, v38);
    }
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::updateHashes(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = v3 ^ *(result + 40);
  v5 = 0xBF58476D1CE4E5B9 * ((*(a2 + 8) | (*(a2 + 11) << 24) | (*(a2 + 10) << 16)) ^ (*(a2 + 11) >> 6));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = 73244475 * ((73244475 * *(a2 + 12)) ^ ((73244475 * *(a2 + 12)) >> 16));
  v8 = *(result + 48) ^ v3 ^ ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + (((v7 ^ HIWORD(v7)) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6));
  *(result + 40) = v4;
  *(result + 48) = v8;
  return result;
}

void re::RenderGraphExecutable::execute(re::RenderGraphExecutable *this, re::RenderGraphContext *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v42, 5018, *(*(this + 21) + 392));
  v4 = *(this + 21);
  if (v4[49])
  {
    v5 = 0;
    v6 = &unk_1EE1C6000;
    while (1)
    {
      v7 = *(v4[51] + 4 * v5);
      *(a2 + 12) = v7;
      v8 = v4[44];
      if (v8 <= v7)
      {
        break;
      }

      v9 = v4[46] + 200 * v7;
      if (!*(v9 + 16))
      {
        goto LABEL_65;
      }

      *(a2 + 5) = **(v9 + 32);
      re::RenderGraphResourceAllocationManager::startSetup(*(a2 + 4));
      re::RenderGraphContext::allocateRenderTargetsBeforeSetup(a2);
      re::RenderGraphContext::checkForReadAfterWriteDependenciesWait(a2);
      v10 = *(this + 21);
      v7 = *(a2 + 12);
      v8 = *(v10 + 352);
      if (v8 <= v7)
      {
        goto LABEL_66;
      }

      v11 = (*(v10 + 368) + 200 * v7);
      v12 = v11[1].i64[0];
      if (v12)
      {
        v13 = v11[2].i64[0] + 8 * v12;
        do
        {
          v15 = *(v13 - 8);
          v13 -= 8;
          v14 = v15;
          (*(*v15 + 96))(v15, a2);
          v16 = (*(*v14 + 72))(v14);
          if (v17)
          {
            v18 = v16 + (v17 << 6);
            do
            {
              v19 = v11[3].i64[1];
              if (v19)
              {
                v20 = v11[4].i64[1];
                v21 = v19 << 6;
                do
                {
                  v22 = *(v16 + 20);
                  if (v22 == *(v20 + 4) && (v22 - 1) <= 2 && *(v16 + 16) == *v20)
                  {
                    *(v20 + 16) = *(v16 + 32);
                  }

                  v20 += 64;
                  v21 -= 64;
                }

                while (v21);
              }

              v16 += 64;
            }

            while (v16 != v18);
          }

          v11[10].i8[11] |= *(v14 + 67);
          v11[11] = vbslq_s8(vcgtq_u64(v11[11], *(v14 + 72)), v11[11], *(v14 + 72));
          v11[12].i8[0] = *(v14 + 88);
        }

        while (v13 != v11[2].i64[0]);
      }

      v24 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
      if (!v24 || *(v24 + 862) != 1)
      {
        goto LABEL_38;
      }

      v44 = 0uLL;
      LODWORD(v45) = 1;
      *(&v45 + 1) = 0;
      *&v46 = 0;
      v25 = *(this + 21);
      v7 = *(a2 + 12);
      v8 = *(v25 + 352);
      if (v8 <= v7)
      {
        goto LABEL_68;
      }

      v26 = *(v25 + 368) + 200 * v7;
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = v6;
        v29 = *(v26 + 32);
        v30 = &v29[v27];
        while (1)
        {
          v31 = *v29;
          *(a2 + 5) = *v29;
          re::RenderGraphContext::rtAttachmentHandles(a2, v31, &v44);
          v32 = (v45 & 1) != 0 ? (&v45 + 8) : v46;
          if (*(&v44 + 1))
          {
            break;
          }

LABEL_34:
          if (++v29 == v30)
          {
            v6 = v28;
            if (v44 && (v45 & 1) == 0)
            {
              (*(*v44 + 40))();
            }

            goto LABEL_38;
          }
        }

        v33 = &v32[2 * *(&v44 + 1)];
        while (1)
        {
          v40 = 0;
          v41 = -1;
          v40 = *v32;
          v41 = v32[1];
          if (*(re::RenderGraphResourceDescriptions::targetDescription(*(*(a2 + 147) + 168), &v40) + 104) == 1)
          {
            break;
          }

          v32 += 2;
          if (v32 == v33)
          {
            goto LABEL_34;
          }
        }

        if (v44 && (v45 & 1) == 0)
        {
          (*(*v44 + 40))();
        }

        v6 = v28;
      }

      else
      {
LABEL_38:
        re::RenderGraphContext::handleManagedForceClear(a2);
      }

      v34 = *(this + 21);
      v7 = *(a2 + 12);
      v8 = *(v34 + 352);
      if (v8 <= v7)
      {
        goto LABEL_67;
      }

      v35 = *(v34 + 368) + 200 * v7;
      v36 = *(v35 + 16);
      if (v36)
      {
        v37 = *(v35 + 32);
        v38 = 8 * v36;
        do
        {
          v39 = *v37;
          *(a2 + 5) = *v37;
          if (re::RenderGraphContext::setupUsesCustomEncoders(a2))
          {
            re::RenderGraphContext::releaseManagedEncoder(a2, 1);
          }

          (*(*v39 + 104))(v39, a2);
          if ((re::RenderGraphContext::setupUsesCustomEncoders(a2) & 1) == 0 && re::RenderGraphContext::isSetupParallel(a2))
          {
            re::RenderGraphContext::releaseManagedRenderEncodersFromParallelEncoder(a2);
          }

          ++v37;
          v38 -= 8;
        }

        while (v38);
      }

      if ((re::RenderGraphContext::setupUsesCustomEncoders(a2) & 1) == 0)
      {
        if (v6[322] != -1)
        {
          dispatch_once(&re::GraphicsFeatureFlags::mergeComputeEncoders(void)::onceToken, &__block_literal_global_6_2);
        }

        if (re::GraphicsFeatureFlags::mergeComputeEncoders(void)::gMergeComputeEncoders == 1 && *(a2 + 296) == 1)
        {
          re::RenderGraphResourceAllocationManager::addCompleteFence(*(a2 + 4), *(a2 + 150));
        }

        else
        {
          re::RenderGraphContext::releaseManagedEncoder(a2, 1);
        }
      }

      re::RenderGraphContext::releaseRenderTargetsAfterSetup(a2);
      ++v5;
      v4 = *(this + 21);
      if (v5 >= v4[49])
      {
        goto LABEL_61;
      }
    }

    *v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v56[0] = 136315906;
    *&v56[1] = "operator[]";
    LOWORD(v56[3]) = 1024;
    *(&v56[3] + 2) = 789;
    HIWORD(v56[4]) = 2048;
    *&v56[5] = v7;
    LOWORD(v56[7]) = 2048;
    *(&v56[7] + 2) = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_65:
    *v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v56[0] = 136315906;
    *&v56[1] = "operator[]";
    LOWORD(v56[3]) = 1024;
    *(&v56[3] + 2) = 789;
    HIWORD(v56[4]) = 2048;
    *&v56[5] = 0;
    LOWORD(v56[7]) = 2048;
    *(&v56[7] + 2) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_66:
    *v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v56[0] = 136315906;
    *&v56[1] = "operator[]";
    LOWORD(v56[3]) = 1024;
    *(&v56[3] + 2) = 789;
    HIWORD(v56[4]) = 2048;
    *&v56[5] = v7;
    LOWORD(v56[7]) = 2048;
    *(&v56[7] + 2) = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_67:
    *v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v56[0] = 136315906;
    *&v56[1] = "operator[]";
    LOWORD(v56[3]) = 1024;
    *(&v56[3] + 2) = 789;
    HIWORD(v56[4]) = 2048;
    *&v56[5] = v7;
    LOWORD(v56[7]) = 2048;
    *(&v56[7] + 2) = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_68:
    v43 = 0;
    v57 = 0u;
    v58 = 0u;
    memset(v56, 0, sizeof(v56));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v49 = 136315906;
    *&v49[4] = "operator[]";
    v50 = 1024;
    v51 = 789;
    v52 = 2048;
    v53 = v7;
    v54 = 2048;
    v55 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_61:
  if (*(a2 + 296) != 4)
  {
    re::RenderGraphContext::releaseManagedEncoder(a2, 1);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v42);
}

uint64_t re::RenderGraphExecutable::validateAttachmentsPerFrame(uint64_t result, uint64_t a2)
{
  v2 = *(result + 168);
  v3 = *(v2 + 392);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 408);
    v7 = &v6[v3];
    while (1)
    {
      v8 = *(v5 + 168);
      v9 = *v6;
      if (*(v8 + 352) <= v9)
      {
        goto LABEL_11;
      }

      v10 = (*(v8 + 368) + 200 * v9);
      v11 = v10[12];
      if (v11)
      {
        break;
      }

LABEL_8:
      if (++v6 == v7)
      {
        return result;
      }
    }

    v12 = v10[14];
    v13 = 8 * v11;
    while (v10[2] > *v12)
    {
      v14 = *(v10[4] + 8 * *v12);
      result = (*(*v14 + 112))(v14, v5, a2);
      ++v12;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

unint64_t re::RenderGraphExecutable::calculateResourcePropertiesHash(re::RenderGraphExecutable *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = (*(this + 2) + 44);
    v3 = 31;
    do
    {
      v4 = 0xBF58476D1CE4E5B9 * (*(v2 - 11) ^ (*(v2 - 11) >> 30));
      v5 = 0xBF58476D1CE4E5B9 * (*(v2 - 10) ^ (*(v2 - 10) >> 30));
      v6 = ((v3 << 6) - 0x61C8864680B583E9 + (v3 >> 2) + ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31))) ^ v3;
      v7 = ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v6 << 6);
      v8 = 0xBF58476D1CE4E5B9 * (*(v2 - 9) ^ (*(v2 - 9) >> 30));
      v9 = (v7 + (v6 >> 2)) ^ v6;
      v10 = ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v9 << 6) + (v9 >> 2);
      v11 = 0xBF58476D1CE4E5B9 * (*(v2 - 8) ^ (*(v2 - 8) >> 30));
      v12 = v10 ^ v9;
      v13 = ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v12 << 6);
      v14 = 0xBF58476D1CE4E5B9 * (*(v2 - 7) ^ (*(v2 - 7) >> 30));
      v15 = (((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31)) - 0x61C8864680B583E9 + (((v13 + (v12 >> 2)) ^ v12) << 6) + (((v13 + (v12 >> 2)) ^ v12) >> 2)) ^ (v13 + (v12 >> 2)) ^ v12;
      v16 = 0xBF58476D1CE4E5B9 * (*(v2 - 6) ^ (*(v2 - 6) >> 30));
      v17 = 0xBF58476D1CE4E5B9 * (*(v2 - 5) ^ (*(v2 - 5) >> 30));
      v18 = (((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v15 << 6) + (v15 >> 2)) ^ v15;
      v19 = ((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) ^ ((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v18 << 6) + (v18 >> 2);
      v20 = 0xBF58476D1CE4E5B9 * (*(v2 - 4) ^ (*(v2 - 4) >> 30));
      v21 = (((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) - 0x61C8864680B583E9 + ((v19 ^ v18) << 6) + ((v19 ^ v18) >> 2)) ^ v19 ^ v18;
      v22 = 0xBF58476D1CE4E5B9 * (*(v2 - 3) ^ (*(v2 - 3) >> 30));
      v23 = 0xBF58476D1CE4E5B9 * (*v2 ^ (*v2 >> 30));
      v24 = (((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) ^ ((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v21 << 6) + (v21 >> 2)) ^ v21;
      v25 = ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v24 << 6) + (v24 >> 2);
      v26 = 0xBF58476D1CE4E5B9 * (v2[1] ^ (v2[1] >> 30));
      v27 = v25 ^ v24;
      v28 = ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) ^ ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v27 << 6);
      v29 = 0xBF58476D1CE4E5B9 * (v2[2] ^ (v2[2] >> 30));
      v30 = (v28 + (v27 >> 2)) ^ v27;
      v31 = ((0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) ^ ((0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2);
      v32 = 0xBF58476D1CE4E5B9 * (v2[3] ^ (v2[3] >> 30));
      v33 = v31 ^ v30;
      v34 = ((0x94D049BB133111EBLL * (v32 ^ (v32 >> 27))) ^ ((0x94D049BB133111EBLL * (v32 ^ (v32 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v33 << 6);
      v35 = 0xBF58476D1CE4E5B9 * (v2[6] ^ (v2[6] >> 30));
      v36 = (((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) ^ ((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) >> 31)) - 0x61C8864680B583E9 + (((v34 + (v33 >> 2)) ^ v33) << 6) + (((v34 + (v33 >> 2)) ^ v33) >> 2)) ^ (v34 + (v33 >> 2)) ^ v33;
      v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v2[7] ^ (v2[7] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v2[7] ^ (v2[7] >> 30))) >> 27));
      v38 = 0xBF58476D1CE4E5B9 * (*(v2 + 11) ^ (*(v2 + 11) >> 30));
      v39 = ((v37 ^ (v37 >> 31)) - 0x61C8864680B583E9 + (v36 << 6) + (v36 >> 2)) ^ v36;
      v40 = ((0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) ^ ((0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v39 << 6) + (v39 >> 2);
      if ((v2[7] & 0x70) == 0x30)
      {
        v41 = 0xBF58476D1CE4E5B9;
      }

      else
      {
        v41 = 0;
      }

      v3 = (((0x94D049BB133111EBLL * (v41 ^ (v41 >> 27))) ^ ((0x94D049BB133111EBLL * (v41 ^ (v41 >> 27))) >> 31)) - 0x61C8864680B583E9 + ((v40 ^ v39) << 6) + ((v40 ^ v39) >> 2)) ^ v40 ^ v39;
      v2 += 28;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = 31;
  }

  v42 = *(this + 4);
  if (v42)
  {
    v43 = (*(this + 5) + 20);
    do
    {
      v44 = 0xBF58476D1CE4E5B9 * (*(v43 - 5) ^ (*(v43 - 5) >> 30));
      v45 = ((v3 << 6) - 0x61C8864680B583E9 + (v3 >> 2) + ((0x94D049BB133111EBLL * (v44 ^ (v44 >> 27))) ^ ((0x94D049BB133111EBLL * (v44 ^ (v44 >> 27))) >> 31))) ^ v3;
      v46 = 0xBF58476D1CE4E5B9 * (*(v43 - 3) ^ (*(v43 - 3) >> 30));
      v47 = (((0x94D049BB133111EBLL * (v46 ^ (v46 >> 27))) ^ ((0x94D049BB133111EBLL * (v46 ^ (v46 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45;
      v48 = 0xBF58476D1CE4E5B9 * (*v43 ^ (*v43 >> 30));
      v49 = (((0x94D049BB133111EBLL * (v48 ^ (v48 >> 27))) ^ ((0x94D049BB133111EBLL * (v48 ^ (v48 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v47 << 6) + (v47 >> 2)) ^ v47;
      v50 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v43[1] ^ (v43[1] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v43[1] ^ (v43[1] >> 30))) >> 27));
      v51 = ((v50 ^ (v50 >> 31)) - 0x61C8864680B583E9 + (v49 << 6) + (v49 >> 2)) ^ v49;
      v52 = 0xBF58476D1CE4E5B9 * (*(v43 + 3) ^ (*(v43 + 3) >> 30));
      v53 = (((0x94D049BB133111EBLL * (v52 ^ (v52 >> 27))) ^ ((0x94D049BB133111EBLL * (v52 ^ (v52 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v51 << 6) + (v51 >> 2)) ^ v51;
      if ((v43[1] & 0x70) == 0x30)
      {
        v54 = 0xBF58476D1CE4E5B9;
      }

      else
      {
        v54 = 0;
      }

      v3 = (((0x94D049BB133111EBLL * (v54 ^ (v54 >> 27))) ^ ((0x94D049BB133111EBLL * (v54 ^ (v54 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v53 << 6) + (v53 >> 2)) ^ v53;
      v43 += 12;
      --v42;
    }

    while (v42);
  }

  return v3;
}

uint64_t re::RenderGraphDataStore::tryGet<re::CameraData>(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::CameraData>(BOOL)::info = re::introspect_CameraData(0);
  }

  v4 = strlen(*(re::introspect<re::CameraData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraData>(BOOL)::info + 6), v4, 0, v10);
    v5 = (v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0];
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

re::RenderGraphNodeCombineProcessor *re::RenderGraphNodeCombineProcessor::RenderGraphNodeCombineProcessor(re::RenderGraphNodeCombineProcessor *this, const char *a2)
{
  *this = &unk_1F5D04E90;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  re::RenderGraphEncoderSplitLogBuffer::RenderGraphEncoderSplitLogBuffer((this + 32), a2);
  re::Defaults::intValue("encoderSplitLoggingPerFrame", v3, v14);
  if (v14[0] != 1 || v15 == 0)
  {
    re::Defaults::intValue("encoderSplitLoggingOnChange", v5, v14);
    if (v14[0] != 1 || v15 == 0)
    {
      *(this + 80) = 0;
      v10 = *re::graphicsLogObjects(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        v9 = "Encoder Split: Logging Disabled.";
LABEL_17:
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, v9, v14, 2u);
      }
    }

    else
    {
      *(this + 80) = 1;
      v10 = *re::graphicsLogObjects(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        v9 = "Encoder Split: Logging OnChange.";
        goto LABEL_17;
      }
    }
  }

  else
  {
    *(this + 80) = 2;
    v10 = *re::graphicsLogObjects(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v9 = "Encoder Split: Logging PerFrame.";
      goto LABEL_17;
    }
  }

  return this;
}

uint64_t re::RenderGraphNodeCombineProcessor::process(re::RenderGraphNodeCombineProcessor *this, re::RenderGraphCompiled *a2)
{
  v143 = *MEMORY[0x1E69E9840];
  v111 = 0;
  v110 = 0;
  v109 = 0u;
  v112 = 0u;
  v113 = 0u;
  v115 = 0u;
  v116 = 0u;
  v114 = 0;
  v117 = 0;
  v118 = 0u;
  v119 = 0u;
  v120 = 0;
  memset(v121, 0, sizeof(v121));
  v122 = 0x7FFFFFFFLL;
  if (!*(a2 + 49))
  {
    goto LABEL_30;
  }

  v7 = this;
  if (*(this + 80))
  {
    *(this + 8) = 1;
    re::RenderGraphEncoderSplitLogBuffer::clear(this + 32);
    if (!*(a2 + 49))
    {
LABEL_264:
      *&v133 = 0;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v137 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v142 = 136315906;
      *&v142[4] = "operator[]";
      *&v142[12] = 1024;
      *&v142[14] = 789;
      *&v142[18] = 2048;
      *&v142[20] = 0;
      *&v142[28] = 2048;
      *&v142[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_265;
    }
  }

  v2 = **(a2 + 51);
  v3 = *(a2 + 44);
  if (v3 <= v2)
  {
LABEL_265:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = v2;
    *&v142[28] = 2048;
    *&v142[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_266;
  }

  v2 = *(a2 + 46) + 200 * v2;
  v108 = 0;
  v105[1] = 0;
  v106 = 0;
  v105[0] = 0;
  v107 = 0;
  if (!*(v2 + 16))
  {
LABEL_266:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_267:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_268:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_269;
  }

  if ((*(***(v2 + 32) + 16))(**(v2 + 32)))
  {
    if (!*(v2 + 16))
    {
LABEL_273:
      *&v133 = 0;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v137 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v142 = 136315906;
      *&v142[4] = "operator[]";
      *&v142[12] = 1024;
      *&v142[14] = 789;
      *&v142[18] = 2048;
      *&v142[20] = 0;
      *&v142[28] = 2048;
      *&v142[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_274;
    }

    *&v137 = (*(***(v2 + 32) + 16))(**(v2 + 32));
    re::DynamicArray<re::TransitionCondition *>::add(v105, &v137);
  }

  v104 = 0;
  v101[1] = 0;
  v102 = 0;
  v101[0] = 0;
  v103 = 0;
  if (!*(v2 + 16))
  {
    goto LABEL_267;
  }

  if ((*(***(v2 + 32) + 24))(**(v2 + 32)))
  {
    if (!*(v2 + 16))
    {
LABEL_274:
      *&v133 = 0;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v137 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v142 = 136315906;
      *&v142[4] = "operator[]";
      *&v142[12] = 1024;
      *&v142[14] = 789;
      *&v142[18] = 2048;
      *&v142[20] = 0;
      *&v142[28] = 2048;
      *&v142[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_275:
      re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) Invalid RenderGraphResourceOperationType %d.", "!Unreachable code", "operator()", 131, v33);
      _os_crash();
      __break(1u);
LABEL_276:
      re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) Invalid RenderGraphResourceOperationType %d.", "!Unreachable code", "operator()", 306, v51);
      _os_crash();
      __break(1u);
    }

    *&v137 = (*(***(v2 + 32) + 24))(**(v2 + 32));
    re::DynamicArray<re::TransitionCondition *>::add(v101, &v137);
  }

  if (!*(a2 + 49))
  {
    goto LABEL_268;
  }

  re::DynamicArray<int>::add(&v109, *(a2 + 51));
  if (!*(a2 + 59))
  {
LABEL_269:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_270;
  }

  re::DynamicArray<re::DynamicArray<unsigned int>>::add((&v115 + 8), *(a2 + 61));
  if (!*(a2 + 64))
  {
LABEL_270:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_271;
  }

  re::DynamicArray<re::DynamicArray<unsigned int>>::add((&v118 + 8), *(a2 + 66));
  if (!*(v2 + 16))
  {
LABEL_271:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_272;
  }

  if (!*(a2 + 49))
  {
LABEL_272:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_273;
  }

  v8 = *(v2 + 32);
  *&v137 = **(a2 + 51);
  re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::add(a2 + 656, v8, &v137);
  v10 = *(a2 + 49);
  if (v10 != 1)
  {
    v100 = 0;
    LODWORD(v3) = 0;
    v90 = v7;
    while (1)
    {
      v3 = (v3 + 1);
      if (v10 <= v3)
      {
        break;
      }

      v10 = *(*(a2 + 51) + 4 * v3);
      v4 = *(a2 + 44);
      if (v4 <= v10)
      {
        goto LABEL_250;
      }

      v4 = *(a2 + 46) + 200 * v10;
      v126 = 0;
      v123[1] = 0;
      v124 = 0;
      v123[0] = 0;
      v125 = 0;
      if ((*(v4 + 169) & 1) != 0 || *(v2 + 169) == 1)
      {
        re::RenderGraphEncoderSplitLogManager::logEntry(v7 + 8, 8uLL, a2, v2, v4, 0, 0);
LABEL_44:
        v10 = 0;
        goto LABEL_45;
      }

      LODWORD(v139) = 0;
      v137 = 0u;
      v138 = 0u;
      *(&v139 + 4) = 0x7FFFFFFFLL;
      memset(v142, 0, 36);
      *&v142[36] = 0x7FFFFFFFLL;
      v135 = 0;
      v133 = 0u;
      v134 = 0u;
      v136 = 0x7FFFFFFFLL;
      v131 = 0;
      v129 = 0u;
      v130 = 0u;
      v132 = 0x7FFFFFFFLL;
      v28 = *(v2 + 56);
      if (v28)
      {
        v5 = 0;
        v29 = 0;
        v30 = 0;
        v95 = 0;
        v96 = 0;
        v98 = 0;
        v99 = 0;
        v31 = *(v2 + 72);
        v32 = v28 << 6;
        v97 = 0xFFFFFFFFLL;
        while (1)
        {
          v33 = v31[1];
          if (v33 > 5)
          {
            break;
          }

          if (v33 <= 2)
          {
            if (v33)
            {
              if (v33 != 1)
              {
                if (v33 != 2)
                {
                  goto LABEL_275;
                }

                v34 = v31[13];
                v127 = v31;
                v128 = v34;
                re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v133, &v128, &v127);
                v5 = 1;
                v99 = v31;
                goto LABEL_102;
              }

              v44 = *v31;
              v127 = v31;
              v128 = v44;
              v42 = &v137;
LABEL_100:
              re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(v42, &v128, &v127);
              v45 = v31[13];
              v127 = v31;
              v128 = v45;
              re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v133, &v128, &v127);
              v5 = 1;
              goto LABEL_102;
            }

LABEL_95:
            v40 = v31[13];
            v127 = v31;
            v128 = v40;
            re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v129, &v128, &v127);
            goto LABEL_102;
          }

          if (v33 == 3)
          {
            v43 = v31[13];
            v127 = v31;
            v128 = v43;
            re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v133, &v128, &v127);
            v5 = 1;
            v98 = v31;
            goto LABEL_102;
          }

          if (v33 == 4)
          {
            goto LABEL_94;
          }

          v36 = v31[13];
          v127 = v31;
          v128 = v36;
          re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v129, &v128, &v127);
          v37 = v31[13];
          v127 = v31;
          v128 = v37;
          re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v133, &v128, &v127);
          v29 = 1;
LABEL_102:
          v31 += 16;
          v32 -= 64;
          if (!v32)
          {
            goto LABEL_105;
          }
        }

        if (v33 <= 8)
        {
          if (v33 != 6)
          {
            if (v33 == 7)
            {
              v46 = v31[13];
              v127 = v31;
              v128 = v46;
              re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v133, &v128, &v127);
              v5 = 1;
              v96 = v31;
            }

            else
            {
              v35 = v31[13];
              v127 = v31;
              v128 = v35;
              re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v133, &v128, &v127);
              v5 = 1;
              v95 = v31;
            }

            goto LABEL_102;
          }

          v41 = *v31;
          v127 = v31;
          v128 = v41;
          v42 = v142;
          goto LABEL_100;
        }

        if (v33 == 9)
        {
          v97 = v31[13];
          goto LABEL_102;
        }

        if (v33 == 10)
        {
          goto LABEL_95;
        }

        if (v33 != 11)
        {
          goto LABEL_275;
        }

LABEL_94:
        v38 = v31[13];
        v127 = v31;
        v128 = v38;
        re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v129, &v128, &v127);
        v39 = v31[13];
        v127 = v31;
        v128 = v39;
        re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v133, &v128, &v127);
        v30 = 1;
        goto LABEL_102;
      }

      v98 = 0;
      v99 = 0;
      v95 = 0;
      v96 = 0;
      v30 = 0;
      v29 = 0;
      v5 = 0;
      v97 = 0xFFFFFFFFLL;
LABEL_105:
      v93 = v29;
      if (*(v4 + 56))
      {
        v47 = 0;
        v48 = 0;
        v91 = 0;
        v92 = 0;
        v49 = 0;
        v94 = 0;
        while (1)
        {
          v50 = (*(v4 + 72) + (v47 << 6));
          v51 = v50[1];
          if (v51 > 5)
          {
            if (v51 <= 8)
            {
              if (v51 != 6)
              {
                if (v51 != 7)
                {
                  v52 = v95;
                  if (!v95)
                  {
                    goto LABEL_205;
                  }

                  if (v95[13] != v50[13])
                  {
                    goto LABEL_190;
                  }

                  if (v95[10] != v50[10])
                  {
                    goto LABEL_209;
                  }

LABEL_151:
                  if (*(v50 + 32) == 1)
                  {
                    goto LABEL_191;
                  }

                  v49 = 1;
                  BYTE4(v91) = 1;
                  goto LABEL_176;
                }

                v52 = v96;
                if (!v96)
                {
                  goto LABEL_205;
                }

                if (v96[13] != v50[13])
                {
LABEL_190:
                  v7 = v90;
                  v71 = v90 + 8;
                  v72 = 1;
                  goto LABEL_210;
                }

                if (v96[9] != v50[9])
                {
LABEL_209:
                  v7 = v90;
                  v71 = v90 + 8;
                  v72 = 4;
LABEL_210:
                  v73 = a2;
                  v74 = v2;
                  v75 = v4;
LABEL_211:
                  v76 = v50;
                  goto LABEL_212;
                }

                goto LABEL_163;
              }

              if (*(v50 + 32) == 1)
              {
                goto LABEL_191;
              }

              v62 = *v50;
              v63 = v142;
              goto LABEL_157;
            }

            if (v51 != 9)
            {
              if (v51 != 10)
              {
                if (v51 != 11)
                {
                  goto LABEL_276;
                }

LABEL_133:
                if (!v129 || (v56 = v50[13], v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v56 ^ (v56 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v56 ^ (v56 >> 30))) >> 27)), v58 = *(*(&v129 + 1) + 4 * ((v57 ^ (v57 >> 31)) % DWORD2(v130))), v58 == 0x7FFFFFFF))
                {
LABEL_137:
                  v128 = v50;
                  re::DynamicArray<re::RigDataValue *>::add(v123, &v128);
                }

                else
                {
                  while (*(v130 + 32 * v58 + 8) != v56)
                  {
                    v58 = *(v130 + 32 * v58) & 0x7FFFFFFF;
                    if (v58 == 0x7FFFFFFF)
                    {
                      goto LABEL_137;
                    }
                  }
                }

                v94 = 1;
                goto LABEL_176;
              }

              if (v129)
              {
                v65 = v50[13];
                v66 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v65 ^ (v65 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v65 ^ (v65 >> 30))) >> 27));
                v67 = *(*(&v129 + 1) + 4 * ((v66 ^ (v66 >> 31)) % DWORD2(v130)));
                if (v67 != 0x7FFFFFFF)
                {
                  while (*(v130 + 32 * v67 + 8) != v65)
                  {
                    v67 = *(v130 + 32 * v67) & 0x7FFFFFFF;
                    if (v67 == 0x7FFFFFFF)
                    {
                      goto LABEL_175;
                    }
                  }

                  goto LABEL_176;
                }
              }

LABEL_175:
              v128 = v50;
              re::DynamicArray<re::RigDataValue *>::add(v123, &v128);
              goto LABEL_176;
            }

            if (v97 != v50[13])
            {
              v7 = v90;
              v71 = v90 + 8;
              v72 = 12;
              goto LABEL_189;
            }

            LODWORD(v91) = 1;
          }

          else
          {
            if (v51 <= 2)
            {
              if (!v51)
              {
                if ((atomic_load_explicit(&qword_1EE1B88F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B88F0))
                {
                  re::Defaults::BOOLValue("disableComputeReadAfterWrite", v9, &v128);
                  if (v128)
                  {
                    v70 = BYTE1(v128);
                  }

                  else
                  {
                    v70 = 0;
                  }

                  _MergedGlobals_443 = v70;
                  __cxa_guard_release(&qword_1EE1B88F0);
                }

                if ((v93 & 1) != 0 && (_MergedGlobals_443 & 1) == 0)
                {
                  v59 = v50[13];
                }

                else
                {
                  v59 = v50[13];
                  if (v133)
                  {
                    v60 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) >> 27));
                    v61 = *(*(&v133 + 1) + 4 * ((v60 ^ (v60 >> 31)) % DWORD2(v134)));
                    if (v61 != 0x7FFFFFFF)
                    {
                      while (*(v134 + 32 * v61 + 8) != v59)
                      {
                        v61 = *(v134 + 32 * v61) & 0x7FFFFFFF;
                        if (v61 == 0x7FFFFFFF)
                        {
                          goto LABEL_171;
                        }
                      }

                      v7 = v90;
                      v71 = v90 + 8;
                      v72 = 11;
                      goto LABEL_208;
                    }
                  }
                }

LABEL_171:
                if (v129)
                {
                  v68 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) >> 27));
                  v69 = *(*(&v129 + 1) + 4 * ((v68 ^ (v68 >> 31)) % DWORD2(v130)));
                  if (v69 != 0x7FFFFFFF)
                  {
                    while (*(v130 + 32 * v69 + 8) != v59)
                    {
                      v69 = *(v130 + 32 * v69) & 0x7FFFFFFF;
                      if (v69 == 0x7FFFFFFF)
                      {
                        goto LABEL_175;
                      }
                    }

                    goto LABEL_176;
                  }
                }

                goto LABEL_175;
              }

              if (v51 != 1)
              {
                if (v51 != 2)
                {
                  goto LABEL_276;
                }

                v52 = v99;
                if (!v99)
                {
LABEL_205:
                  v7 = v90;
                  v71 = v90 + 8;
                  v72 = 3;
                  goto LABEL_210;
                }

                if (v99[13] != v50[13])
                {
                  goto LABEL_190;
                }

LABEL_163:
                if (*(v50 + 32) == 1)
                {
LABEL_191:
                  v7 = v90;
                  v71 = v90 + 8;
                  v72 = 0;
LABEL_208:
                  v73 = a2;
                  v74 = v2;
                  v75 = v4;
                  v52 = 0;
                  goto LABEL_211;
                }

                v49 = 1;
                LOBYTE(v92) = 1;
                goto LABEL_176;
              }

              if (*(v50 + 32) == 1)
              {
                goto LABEL_191;
              }

              v62 = *v50;
              v63 = &v137;
LABEL_157:
              v64 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v63, v62);
              if (!v64)
              {
                v7 = v90;
                v71 = v90 + 8;
                v72 = 2;
                goto LABEL_208;
              }

              v52 = *v64;
              if (*(*v64 + 52) != v50[13])
              {
                goto LABEL_190;
              }

              v49 = 1;
              goto LABEL_176;
            }

            if (v51 == 3)
            {
              v52 = v98;
              if (!v98)
              {
                goto LABEL_205;
              }

              if (v98[13] != v50[13])
              {
                goto LABEL_190;
              }

              goto LABEL_151;
            }

            if (v51 == 4)
            {
              goto LABEL_133;
            }

            if (!v129 || (v53 = v50[13], v54 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v53 ^ (v53 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v53 ^ (v53 >> 30))) >> 27)), v55 = *(*(&v129 + 1) + 4 * ((v54 ^ (v54 >> 31)) % DWORD2(v130))), v55 == 0x7FFFFFFF))
            {
LABEL_128:
              v128 = v50;
              re::DynamicArray<re::RigDataValue *>::add(v123, &v128);
            }

            else
            {
              while (*(v130 + 32 * v55 + 8) != v53)
              {
                v55 = *(v130 + 32 * v55) & 0x7FFFFFFF;
                if (v55 == 0x7FFFFFFF)
                {
                  goto LABEL_128;
                }
              }
            }

            HIDWORD(v92) = 1;
          }

LABEL_176:
          v47 = ++v48;
          if (*(v4 + 56) <= v48)
          {
            goto LABEL_184;
          }
        }
      }

      v91 = 0;
      v92 = 0;
      v94 = 0;
      v49 = 0;
LABEL_184:
      v7 = v90;
      if ((v5 | v93 | v30) & 1) != 0 && ((v49 | HIDWORD(v92) | v94))
      {
        if (v5 & v93 & v30 & 1) != 0 || (v49 & HIDWORD(v92) & v94 & 1) != 0 || ((v5 ^ v49) & 1) != 0 || ((v93 ^ HIDWORD(v92)) & 1) != 0 || ((v30 ^ v94))
        {
          v71 = v90 + 8;
          v72 = 13;
LABEL_189:
          v73 = a2;
          v74 = v2;
          v75 = v4;
          v52 = 0;
          v76 = 0;
LABEL_212:
          re::RenderGraphEncoderSplitLogManager::logEntry(v71, v72, v73, v74, v75, v52, v76);
          goto LABEL_213;
        }

        if (!((v99 == 0) | v92 & 1))
        {
          v71 = v90 + 8;
          v72 = 9;
          goto LABEL_189;
        }

        if (!((v98 == 0) | BYTE4(v91) & 1))
        {
          v77 = v90 + 8;
          v78 = 10;
          goto LABEL_221;
        }

        if (*(v2 + 160) != *(v4 + 160))
        {
          v77 = v90 + 8;
          v78 = 14;
          goto LABEL_221;
        }

        if ((((v97 == 0xFFFFFFFFLL) ^ v91) & 1) == 0)
        {
          v77 = v90 + 8;
          v78 = 12;
          goto LABEL_221;
        }

        if (!((*(v2 + 176) == *(v4 + 176)) | v93 & 1))
        {
          v77 = v90 + 8;
          v78 = 5;
          goto LABEL_221;
        }

        if (*(v2 + 184) != *(v4 + 184))
        {
          v77 = v90 + 8;
          v78 = 15;
LABEL_221:
          re::RenderGraphEncoderSplitLogManager::logEntry(v77, v78, a2, v2, v4, 0, 0);
LABEL_213:
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v129);
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v133);
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v142);
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v137);
          goto LABEL_44;
        }

        if (*(v2 + 192) && *(v4 + 192) && *(v2 + 192) != *(v4 + 192))
        {
          v77 = v90 + 8;
          v78 = 6;
          goto LABEL_221;
        }

        if (*(v2 + 171) != *(v4 + 171))
        {
          v71 = v90 + 8;
          v72 = 7;
          goto LABEL_189;
        }
      }

      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v129);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v133);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v142);
      v79.n128_f64[0] = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v137);
      v80 = *(v4 + 16);
      if (v80)
      {
        v81 = *(v4 + 32);
        v5 = &v81[v80];
        do
        {
          *&v137 = *v81;
          if ((*(*v137 + 16))(v137, v79))
          {
            v82 = (*(*v137 + 16))(v137);
            if (v106)
            {
              v83 = 8 * v106;
              v84 = v108;
              while (*v84 != v82)
              {
                ++v84;
                v83 -= 8;
                if (!v83)
                {
                  goto LABEL_233;
                }
              }
            }

            else
            {
              v84 = v108;
            }

            if (v84 == &v108[v106])
            {
LABEL_233:
              *v142 = *(v2 + 16);
              re::DynamicArray<unsigned long>::add((v2 + 80), v142);
              *v142 = (*(*v137 + 16))(v137);
              re::DynamicArray<re::TransitionCondition *>::add(v105, v142);
            }
          }

          if ((*(*v137 + 24))(v137))
          {
            v85 = (*(*v137 + 24))(v137);
            if (v102)
            {
              v86 = 8 * v102;
              v87 = v104;
              while (*v87 != v85)
              {
                ++v87;
                v86 -= 8;
                if (!v86)
                {
                  goto LABEL_242;
                }
              }
            }

            else
            {
              v87 = v104;
            }

            if (v87 == &v104[v102])
            {
LABEL_242:
              *v142 = *(v2 + 16);
              re::DynamicArray<unsigned long>::add((v2 + 120), v142);
              *v142 = (*(*v137 + 24))(v137);
              re::DynamicArray<re::TransitionCondition *>::add(v101, v142);
            }
          }

          re::DynamicArray<re::TransitionCondition *>::add(v2, &v137);
          ++v81;
        }

        while (v81 != v5);
      }

      if (v124)
      {
        v88 = v126;
        v5 = 8 * v124;
        do
        {
          v89 = *v88++;
          re::DynamicArray<re::RigTransform>::add((v2 + 40), v89);
          v5 -= 8;
        }

        while (v5);
      }

      *(v2 + 170) = (*(v4 + 170) | *(v2 + 170)) & 1;
      v10 = 1;
LABEL_45:
      if (v123[0] && v126)
      {
        (*(*v123[0] + 40))();
      }

      if (v10)
      {
        v10 = *(a2 + 59);
        if (v10 <= v3)
        {
          goto LABEL_252;
        }

        v18 = *(a2 + 61) + 40 * v3;
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = *(v18 + 32);
          v5 = 4 * v19;
          do
          {
            v21 = *v20++;
            LODWORD(v137) = v21;
            re::DynamicArray<int>::add((v118 + 40 * *(&v116 + 1) - 40), &v137);
            v5 -= 4;
          }

          while (v5);
        }

        v10 = *(a2 + 64);
        if (v10 <= v3)
        {
          goto LABEL_253;
        }

        v22 = *(a2 + 66) + 40 * v3;
        v23 = *(v22 + 16);
        if (v23)
        {
          v10 = *(v22 + 32);
          v5 = 4 * v23;
          do
          {
            v24 = *v10;
            v10 += 4;
            LODWORD(v137) = v24;
            re::DynamicArray<int>::add((*v121 + 40 * *(&v119 + 1) - 40), &v137);
            v5 -= 4;
          }

          while (v5);
        }

        if (!*(v4 + 16))
        {
          goto LABEL_255;
        }

        v10 = v100;
        v5 = *(a2 + 49);
        if (v5 <= v100)
        {
          goto LABEL_256;
        }

        v25 = *(v4 + 32);
        v26 = *(v2 + 16) - 1;
        LODWORD(v137) = *(*(a2 + 51) + 4 * v100);
        DWORD1(v137) = v26;
        re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::add(a2 + 656, v25, &v137);
      }

      else
      {
        v106 = 0;
        ++v107;
        if (!*(v4 + 16))
        {
          goto LABEL_251;
        }

        if ((*(***(v4 + 32) + 16))(**(v4 + 32)))
        {
          if (!*(v4 + 16))
          {
            goto LABEL_262;
          }

          *&v137 = (*(***(v4 + 32) + 16))(**(v4 + 32));
          re::DynamicArray<re::TransitionCondition *>::add(v105, &v137);
        }

        v102 = 0;
        ++v103;
        if (!*(v4 + 16))
        {
          goto LABEL_254;
        }

        if ((*(***(v4 + 32) + 24))(**(v4 + 32)))
        {
          if (!*(v4 + 16))
          {
            goto LABEL_263;
          }

          *&v137 = (*(***(v4 + 32) + 24))(**(v4 + 32));
          re::DynamicArray<re::TransitionCondition *>::add(v101, &v137);
        }

        v2 = *(a2 + 49);
        if (v2 <= v3)
        {
          goto LABEL_257;
        }

        re::DynamicArray<int>::add(&v109, (*(a2 + 51) + 4 * v3));
        v2 = *(a2 + 59);
        if (v2 <= v3)
        {
          goto LABEL_258;
        }

        re::DynamicArray<re::DynamicArray<unsigned int>>::add((&v115 + 8), (*(a2 + 61) + 40 * v3));
        v2 = *(a2 + 64);
        if (v2 <= v3)
        {
          goto LABEL_259;
        }

        re::DynamicArray<re::DynamicArray<unsigned int>>::add((&v118 + 8), (*(a2 + 66) + 40 * v3));
        if (!*(v4 + 16))
        {
          goto LABEL_260;
        }

        v2 = *(a2 + 49);
        if (v2 <= v3)
        {
          goto LABEL_261;
        }

        v27 = *(v4 + 32);
        *&v137 = *(*(a2 + 51) + 4 * v3);
        re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::add(a2 + 656, v27, &v137);
        v100 = v3;
        v2 = v4;
      }

      v10 = *(a2 + 49);
      if (v10 - 1 <= v3)
      {
        goto LABEL_19;
      }
    }

    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = v3;
    *&v142[28] = 2048;
    *&v142[30] = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_250:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = v10;
    *&v142[28] = 2048;
    *&v142[30] = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_251:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_252:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = v3;
    *&v142[28] = 2048;
    *&v142[30] = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_253:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = v3;
    *&v142[28] = 2048;
    *&v142[30] = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_254:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_255:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_256:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = v10;
    *&v142[28] = 2048;
    *&v142[30] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_257:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = v3;
    *&v142[28] = 2048;
    *&v142[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_258:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = v3;
    *&v142[28] = 2048;
    *&v142[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_259:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = v3;
    *&v142[28] = 2048;
    *&v142[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_260:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_261:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = v3;
    *&v142[28] = 2048;
    *&v142[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_262:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_263:
    *&v133 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v142 = 136315906;
    *&v142[4] = "operator[]";
    *&v142[12] = 1024;
    *&v142[14] = 789;
    *&v142[18] = 2048;
    *&v142[20] = 0;
    *&v142[28] = 2048;
    *&v142[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_264;
  }

LABEL_19:
  v11 = *(a2 + 54);
  if (v11)
  {
    v12 = *(a2 + 56);
    v13 = 4 * v11;
    do
    {
      v14 = *v12++;
      LODWORD(v137) = v14;
      re::DynamicArray<int>::add(&v112 + 1, &v137);
      v13 -= 4;
    }

    while (v13);
  }

  re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 376, &v109);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 456, &v115 + 8);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 496, &v118 + 8);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 416, &v112 + 8);
  re::RenderGraphProcessor::updateTextureLifetimes(a2, v15);
  v16 = *(v7 + 80);
  if (*(v7 + 80))
  {
    *(v7 + 8) = 0;
    re::RenderGraphEncoderSplitLogManager::save((v7 + 8), v16 == 2);
  }

  if (v101[0] && v104)
  {
    (*(*v101[0] + 40))();
  }

  if (v105[0] && v108)
  {
    (*(*v105[0] + 40))();
  }

LABEL_30:
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v121[8]);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v118 + 8);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v115 + 8);
  if (*(&v112 + 1))
  {
    if (v115)
    {
      (*(**(&v112 + 1) + 40))();
    }

    *&v115 = 0;
    v113 = 0uLL;
    *(&v112 + 1) = 0;
    ++v114;
  }

  result = v109;
  if (v109)
  {
    if (v112)
    {
      return (*(*v109 + 40))();
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::DynamicArray<unsigned int>>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DynamicArray<unsigned int>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::DynamicArray<float>::DynamicArray(*(this + 4) + 40 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::RenderGraphNodeCombineProcessor::~RenderGraphNodeCombineProcessor(re::RenderGraphNodeCombineProcessor *this)
{
  re::DynamicArray<re::DynamicString>::deinit(this + 32);
}

{
  re::DynamicArray<re::DynamicString>::deinit(this + 32);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  v8 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
    v9 = *a3;
    *(result + 8) = *a2;
    *(result + 16) = v9;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 32 * v8 + 16) = *a3;
  }

  return result;
}

uint64_t usePlacementHeaps(void)
{
  if ((atomic_load_explicit(&qword_1EE1B8900, memory_order_acquire) & 1) == 0)
  {
    v6 = v0;
    v7 = v1;
    if (__cxa_guard_acquire(&qword_1EE1B8900))
    {
      re::Defaults::BOOLValue("usePlacementHeaps", v3, v5);
      if (v5[0])
      {
        v4 = v5[1];
      }

      else
      {
        v4 = 1;
      }

      _MergedGlobals_444 = v4;
      __cxa_guard_release(&qword_1EE1B8900);
    }
  }

  return _MergedGlobals_444;
}

void DeviceHeap::~DeviceHeap(id *this)
{
  *this = &unk_1F5D04ED0;
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit((this + 12));
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit((this + 7));
  re::DynamicString::deinit((this + 3));
}

{
  DeviceHeap::~DeviceHeap(this);

  JUMPOUT(0x1E6906520);
}

uint64_t DeviceHeap::makeTexture(uint64_t a1, id *a2)
{
  re::mtl::Device::makeTexture(*a2, (a1 + 16), &v5);
  if (!v5)
  {
    return -1;
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 56), &v5);
  v3 = *(a1 + 72) - 1;
  if (v5)
  {
  }

  return v3;
}

void DeviceHeap::releaseTexture(DeviceHeap *this, unint64_t a2)
{
  if (*(this + 9) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(this + 11);

  *(v3 + 8 * a2) = 0;
}

uint64_t DeviceHeap::makeBuffer(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 0xFFFF)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  v5 = [*(a1 + 16) newBufferWithLength:a2 options:v4];
  v9 = v5;
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 96), &v9);
  v7 = *(a1 + 112) - 1;

  return v7;
}

void DeviceHeap::releaseBuffer(DeviceHeap *this, unint64_t a2)
{
  if (*(this + 14) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(this + 16);

  *(v3 + 8 * a2) = 0;
}

void DeviceHeap::onFrameFinish(DeviceHeap *this)
{
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 56);

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 96);
}

void MetalHeap::init(uint64_t a1, void *a2, id *a3, uint64_t a4, int a5)
{
  v13[0] = a2;
  v13[1] = strlen(a2);
  re::DynamicString::operator=((a1 + 32), v13);
  v9 = [objc_msgSend(MEMORY[0x1E69740E8] alloc)];
  [v9 setStorageMode_];
  [v9 setSize_];
  v13[0] = [*a3 newHeapWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=((a1 + 16), v13);
  if (v13[0])
  {
  }

  v10 = re::ObjCObject::operator=((a1 + 24), a3);
  *(a1 + 8) = 2;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 64), 0);
  ++*(a1 + 88);
  *(a1 + 108) = a5;
  v11 = re::DataArray<MetalHeap::TextureEntry>::allocBlock((a1 + 64));
  v12 = a1 + 128;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v12, 0);
  ++*(v12 + 24);
  *(v12 + 44) = a5;
  re::DataArray<MetalHeap::TextureEntry>::allocBlock(v12);
  if (v9)
  {
  }
}

void MetalHeap::~MetalHeap(id *this)
{
  *this = &unk_1F5D04F60;

  this[2] = 0;
  if (*(this + 43))
  {
    v2 = re::DataArray<MetalHeap::TextureEntry>::clear(this + 16);
    if (!this[18])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_11;
    }

    v3 = this[20];
    (*(*this[16] + 40))(this[16], *v3, v2);
    (*(*this[16] + 40))(this[16], v3[1]);
    re::DynamicArray<unsigned long>::deinit((this + 16));
    *(this + 43) = 0;
  }

  re::DynamicArray<unsigned long>::deinit((this + 16));
  if (!*(this + 27))
  {
    goto LABEL_7;
  }

  v4 = re::DataArray<MetalHeap::TextureEntry>::clear(this + 8);
  if (!this[10])
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = this[12];
  (*(*this[8] + 40))(this[8], *v5, v4);
  (*(*this[8] + 40))(this[8], v5[1]);
  re::DynamicArray<unsigned long>::deinit((this + 8));
  *(this + 27) = 0;
LABEL_7:
  re::DynamicArray<unsigned long>::deinit((this + 8));
  re::DynamicString::deinit((this + 4));

  v6 = this[2];
  if (v6)
  {

    this[2] = 0;
  }
}

{
  MetalHeap::~MetalHeap(this);

  JUMPOUT(0x1E6906520);
}

uint64_t MetalHeap::makeTexture(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v7 = [*(a1 + 16) newTextureWithDescriptor_];
  if (!v7)
  {
    return -1;
  }

  v8 = v7;
  v9 = [*(a1 + 16) maxAvailableSizeWithAlignment_];
  if (v9 < *(a1 + 192))
  {
    *(a1 + 192) = v9;
    *(a1 + 200) = [*(a1 + 16) usedSize];
  }

  v10 = v8;
  v12 = v10;
  if (v10)
  {
  }

  v13 = *a4;
  v14 = *(a1 + 120);
  if ((v14 + 1) >> 24)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14 + 1;
  }

  *(a1 + 120) = v15;
  v16 = *(a1 + 116);
  v17 = *(a1 + 118);
  if (v16 != 0xFFFF || v17 != 0xFFFF)
  {
    if (*(a1 + 80) > v17)
    {
      v22 = (*(a1 + 96) + 16 * v17);
      *(v22[1] + 4 * v16) = v15;
      v20 = *v22 + 24 * v16;
      *(a1 + 116) = *v20;
      goto LABEL_19;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  if (*(a1 + 112) >= *(a1 + 108))
  {
    re::DataArray<MetalHeap::TextureEntry>::allocBlock((a1 + 64));
  }

  v18 = *(a1 + 80);
  v17 = (v18 - 1);
  if (!v18)
  {
LABEL_24:
    v24 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v25) = 136315906;
    *(&v25 + 4) = "operator[]";
    WORD6(v25) = 1024;
    HIWORD(v25) = 789;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    re::internal::assertLog(5, v11, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v16, v24, v25);
    _os_crash();
    __break(1u);
  }

  v16 = *(a1 + 112);
  if (v16 >= 0x10000)
  {
    goto LABEL_25;
  }

  v19 = (*(a1 + 96) + 16 * v17);
  *(a1 + 112) = v16 + 1;
  *(v19[1] + 4 * v16) = *(a1 + 120);
  v20 = *v19 + 24 * v16;
LABEL_19:
  ++*(a1 + 104);
  *v20 = v12;
  *(v20 + 8) = a3;
  *(v20 + 16) = v13;
  v21 = v16 + (v17 << 16) + ((*(a1 + 120) & 0xFFFFFF) << 32);
  if (v12)
  {
  }

  return v21;
}

double MetalHeap::releaseTexture(MetalHeap *this, unint64_t a2)
{
  v4 = re::DataArray<re::TextureAtlasTile>::get(this + 64, a2);
  if ((*(v4 + 8) & 1) == 0)
  {
    [*v4 makeAliasable];
  }

  re::DataArray<MetalHeap::TextureEntry>::destroy(this + 64, a2);
  if (!*(this + 26))
  {

    return re::DataArray<MetalHeap::TextureEntry>::clear(this + 8);
  }

  return result;
}

void re::DataArray<MetalHeap::TextureEntry>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = re::DataArray<re::TextureAtlasTile>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    *(v5 + 16) = 0;
    v7 = *v5;
    if (v7)
    {

      *v6 = 0;
    }

    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

double re::DataArray<MetalHeap::TextureEntry>::clear(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a1;
  if (*(a1 + 10))
  {
    LODWORD(v11) = 0;
    if (!a1[2])
    {
      goto LABEL_24;
    }

    v3 = a1;
    if (!**(a1[4] + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
    }
  }

  else
  {
    LODWORD(v11) = -1;
    v3 = a1;
  }

  v10 = v3;
  if (v3 != a1 || v11 != 0xFFFFFFFFLL)
  {
    v4 = v11;
    v5 = WORD1(v11);
    do
    {
      v6 = v3[2];
      if (v6 <= v5)
      {
        goto LABEL_23;
      }

      re::DataArray<MetalHeap::TextureEntry>::destroy(a1, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
      v4 = v11;
      v5 = WORD1(v11);
    }

    while (v10 != a1 || v11 != 0xFFFFLL || WORD1(v11) != 0xFFFFLL);
  }

  v7 = a1[2];
  v5 = v7 - 1;
  if (v7 != 1)
  {
    v6 = 16 * v7 - 16;
    while (v7 > v5)
    {
      v8 = (a1[4] + v6);
      (*(**a1 + 40))(*a1, *v8);
      (*(**a1 + 40))(*a1, v8[1]);
      v1 = a1[2];
      if (v1 <= v5)
      {
        goto LABEL_22;
      }

      v7 = v1 - 1;
      if (v1 - 1 > v5)
      {
        *(a1[4] + v6) = *(a1[4] + 16 * v1 - 16);
        v7 = a1[2] - 1;
      }

      a1[2] = v7;
      ++*(a1 + 6);
      v6 -= 16;
      if (!--v5)
      {
        goto LABEL_20;
      }
    }

    v10 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_22:
    v10 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "removeAt";
    v15 = 1024;
    v16 = 931;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v12 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 797;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_24:
    v12 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 797;
    v17 = 2048;
    v18 = 0;
    v19 = 2048;
    v20 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_20:
  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

void **MetalHeap::releaseTextureForCaching(MetalHeap *this, int a2)
{
  result = re::DataArray<re::TextureAtlasTile>::get(this + 64, a2);
  if ((result[1] & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1B8908, memory_order_acquire) & 1) == 0)
    {
      v7 = result;
      v5 = __cxa_guard_acquire(&qword_1EE1B8908);
      result = v7;
      if (v5)
      {
        re::Defaults::BOOLValue("enableRenderGraphResourceAliasingWhenCaching", v4, v8);
        if (v8[0])
        {
          v6 = v8[1];
        }

        else
        {
          v6 = 1;
        }

        byte_1EE1B88F9 = v6;
        __cxa_guard_release(&qword_1EE1B8908);
        result = v7;
      }
    }

    if (byte_1EE1B88F9 == 1)
    {
      v3 = *result;

      return [v3 makeAliasable];
    }
  }

  return result;
}

uint64_t MetalHeap::makeBuffer(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t *a5)
{
  v8 = [*(a1 + 16) newBufferWithLength:a2 options:a3];
  if (!v8)
  {
    return -1;
  }

  v9 = v8;
  v10 = [*(a1 + 16) maxAvailableSizeWithAlignment_];
  if (v10 < *(a1 + 192))
  {
    *(a1 + 192) = v10;
    *(a1 + 200) = [*(a1 + 16) usedSize];
  }

  v11 = v9;
  v13 = v11;
  if (v11)
  {
  }

  v14 = *a5;
  v15 = *(a1 + 184);
  if ((v15 + 1) >> 24)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15 + 1;
  }

  *(a1 + 184) = v16;
  v17 = *(a1 + 180);
  v18 = *(a1 + 182);
  if (v17 != 0xFFFF || v18 != 0xFFFF)
  {
    if (*(a1 + 144) > v18)
    {
      v23 = (*(a1 + 160) + 16 * v18);
      *(v23[1] + 4 * v17) = v16;
      v21 = *v23 + 24 * v17;
      *(a1 + 180) = *v21;
      goto LABEL_19;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  if (*(a1 + 176) >= *(a1 + 172))
  {
    re::DataArray<MetalHeap::TextureEntry>::allocBlock((a1 + 128));
  }

  v19 = *(a1 + 144);
  v18 = (v19 - 1);
  if (!v19)
  {
LABEL_24:
    v25 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v26) = 136315906;
    *(&v26 + 4) = "operator[]";
    WORD6(v26) = 1024;
    HIWORD(v26) = 789;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    re::internal::assertLog(5, v12, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v17, v25, v26);
    _os_crash();
    __break(1u);
  }

  v17 = *(a1 + 176);
  if (v17 >= 0x10000)
  {
    goto LABEL_25;
  }

  v20 = (*(a1 + 160) + 16 * v18);
  *(a1 + 176) = v17 + 1;
  *(v20[1] + 4 * v17) = *(a1 + 184);
  v21 = *v20 + 24 * v17;
LABEL_19:
  ++*(a1 + 168);
  *v21 = v13;
  *(v21 + 8) = a4;
  *(v21 + 16) = v14;
  v22 = v17 + (v18 << 16) + ((*(a1 + 184) & 0xFFFFFF) << 32);
  if (v13)
  {
  }

  return v22;
}

double MetalHeap::releaseBuffer(MetalHeap *this, unint64_t a2)
{
  v4 = re::DataArray<re::TextureAtlasTile>::get(this + 128, a2);
  if ((*(v4 + 8) & 1) == 0)
  {
    [*v4 makeAliasable];
  }

  re::DataArray<MetalHeap::TextureEntry>::destroy(this + 128, a2);
  if (!*(this + 42))
  {

    return re::DataArray<MetalHeap::TextureEntry>::clear(this + 16);
  }

  return result;
}

void **MetalHeap::releaseBufferForCaching(MetalHeap *this, int a2)
{
  result = re::DataArray<re::TextureAtlasTile>::get(this + 128, a2);
  if ((result[1] & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1B8910, memory_order_acquire) & 1) == 0)
    {
      v7 = result;
      v5 = __cxa_guard_acquire(&qword_1EE1B8910);
      result = v7;
      if (v5)
      {
        re::Defaults::BOOLValue("enableRenderGraphResourceAliasingWhenCaching", v4, v8);
        if (v8[0])
        {
          v6 = v8[1];
        }

        else
        {
          v6 = 1;
        }

        byte_1EE1B88FA = v6;
        __cxa_guard_release(&qword_1EE1B8910);
        result = v7;
      }
    }

    if (byte_1EE1B88FA == 1)
    {
      v3 = *result;

      return [v3 makeAliasable];
    }
  }

  return result;
}

id MetalHeap::onFrameStart(id *this)
{
  result = [this[2] size];
  this[24] = result;
  this[25] = 0;
  return result;
}

void MetalPlacementHeap::init(uint64_t a1, void *a2, id *a3, uint64_t a4, int a5)
{
  v13[0] = a2;
  v13[1] = strlen(a2);
  re::DynamicString::operator=((a1 + 32), v13);
  v9 = [objc_msgSend(MEMORY[0x1E69740E8] alloc)];
  [v9 setStorageMode_];
  [v9 setSize_];
  [v9 setType_];
  v13[0] = [*a3 newHeapWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=((a1 + 16), v13);
  if (v13[0])
  {
  }

  v10 = re::ObjCObject::operator=((a1 + 24), a3);
  *(a1 + 8) = 2;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 64), 0);
  ++*(a1 + 88);
  *(a1 + 108) = a5;
  v11 = re::DataArray<MetalPlacementHeap::TextureEntry>::allocBlock((a1 + 64));
  v12 = a1 + 128;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v12, 0);
  ++*(v12 + 24);
  *(v12 + 44) = a5;
  re::DataArray<MetalPlacementHeap::TextureEntry>::allocBlock(v12);
  MTLRangeAllocatorInit();
  if (v9)
  {
  }
}

void MetalPlacementHeap::~MetalPlacementHeap(id *this)
{
  *this = &unk_1F5D04FF0;
  MTLRangeAllocatorDestroy();

  this[2] = 0;
  if (*(this + 43))
  {
    v2 = re::DataArray<MetalPlacementHeap::TextureEntry>::clear(this + 16);
    if (!this[18])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_11;
    }

    v3 = this[20];
    (*(*this[16] + 40))(this[16], *v3, v2);
    (*(*this[16] + 40))(this[16], v3[1]);
    re::DynamicArray<unsigned long>::deinit((this + 16));
    *(this + 43) = 0;
  }

  re::DynamicArray<unsigned long>::deinit((this + 16));
  if (!*(this + 27))
  {
    goto LABEL_7;
  }

  v4 = re::DataArray<MetalPlacementHeap::TextureEntry>::clear(this + 8);
  if (!this[10])
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = this[12];
  (*(*this[8] + 40))(this[8], *v5, v4);
  (*(*this[8] + 40))(this[8], v5[1]);
  re::DynamicArray<unsigned long>::deinit((this + 8));
  *(this + 27) = 0;
LABEL_7:
  re::DynamicArray<unsigned long>::deinit((this + 8));
  re::DynamicString::deinit((this + 4));

  v6 = this[2];
  if (v6)
  {

    this[2] = 0;
  }
}

{
  MetalPlacementHeap::~MetalPlacementHeap(this);

  JUMPOUT(0x1E6906520);
}

unint64_t MetalPlacementHeap::makeTexture(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v8 = [*(a1 + 24) heapTextureSizeAndAlignWithDescriptor_];
  v9 = -1;
  MTLRangeAllocatorAllocate();
  v10 = [*(a1 + 16) newTextureWithDescriptor:*a2 offset:-1];
  if (!v10)
  {
    return v9;
  }

  v11 = v10;
  v12 = [*(a1 + 16) maxAvailableSizeWithAlignment_];
  if (v12 < *(a1 + 192))
  {
    *(a1 + 192) = v12;
    *(a1 + 200) = [*(a1 + 16) usedSize];
  }

  v13 = v11;
  v15 = v13;
  if (v13)
  {
  }

  v16 = *a4;
  v17 = *(a1 + 120);
  if ((v17 + 1) >> 24)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 + 1;
  }

  *(a1 + 120) = v18;
  v19 = *(a1 + 116);
  v20 = *(a1 + 118);
  if (v19 != 0xFFFF || v20 != 0xFFFF)
  {
    if (*(a1 + 80) > v20)
    {
      v24 = (*(a1 + 96) + 16 * v20);
      *(v24[1] + 4 * v19) = v18;
      v23 = *v24 + 40 * v19;
      *(a1 + 116) = *v23;
      goto LABEL_18;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  if (*(a1 + 112) >= *(a1 + 108))
  {
    re::DataArray<MetalPlacementHeap::TextureEntry>::allocBlock((a1 + 64));
  }

  v21 = *(a1 + 80);
  v20 = (v21 - 1);
  if (!v21)
  {
LABEL_23:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_24:
    re::internal::assertLog(5, v14, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v19);
    _os_crash();
    __break(1u);
  }

  v19 = *(a1 + 112);
  if (v19 >= 0x10000)
  {
    goto LABEL_24;
  }

  v22 = (*(a1 + 96) + 16 * v20);
  *(a1 + 112) = v19 + 1;
  *(v22[1] + 4 * v19) = *(a1 + 120);
  v23 = *v22 + 40 * v19;
LABEL_18:
  ++*(a1 + 104);
  *v23 = v15;
  *(v23 + 8) = a3;
  *(v23 + 16) = v16;
  *(v23 + 24) = -1;
  *(v23 + 32) = v8;
  v9 = v19 + (v20 << 16) + ((*(a1 + 120) & 0xFFFFFF) << 32);
  if (v15)
  {
  }

  return v9;
}

double MetalPlacementHeap::releaseTexture(MetalPlacementHeap *this, unint64_t a2)
{
  re::DataArray<re::ecs2::System::SystemScheduling>::get(this + 64, a2);
  MTLRangeAllocatorDeallocate();
  re::DataArray<MetalPlacementHeap::TextureEntry>::destroy(this + 64, a2);
  if (!*(this + 26))
  {

    return re::DataArray<MetalPlacementHeap::TextureEntry>::clear(this + 8);
  }

  return result;
}

void re::DataArray<MetalPlacementHeap::TextureEntry>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    *(v5 + 16) = 0;
    v7 = *v5;
    if (v7)
    {

      *v6 = 0;
    }

    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

double re::DataArray<MetalPlacementHeap::TextureEntry>::clear(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a1;
  if (*(a1 + 10))
  {
    LODWORD(v11) = 0;
    if (!a1[2])
    {
      goto LABEL_24;
    }

    v3 = a1;
    if (!**(a1[4] + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
    }
  }

  else
  {
    LODWORD(v11) = -1;
    v3 = a1;
  }

  v10 = v3;
  if (v3 != a1 || v11 != 0xFFFFFFFFLL)
  {
    v4 = v11;
    v5 = WORD1(v11);
    do
    {
      v6 = v3[2];
      if (v6 <= v5)
      {
        goto LABEL_23;
      }

      re::DataArray<MetalPlacementHeap::TextureEntry>::destroy(a1, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
      v4 = v11;
      v5 = WORD1(v11);
    }

    while (v10 != a1 || v11 != 0xFFFFLL || WORD1(v11) != 0xFFFFLL);
  }

  v7 = a1[2];
  v5 = v7 - 1;
  if (v7 != 1)
  {
    v6 = 16 * v7 - 16;
    while (v7 > v5)
    {
      v8 = (a1[4] + v6);
      (*(**a1 + 40))(*a1, *v8);
      (*(**a1 + 40))(*a1, v8[1]);
      v1 = a1[2];
      if (v1 <= v5)
      {
        goto LABEL_22;
      }

      v7 = v1 - 1;
      if (v1 - 1 > v5)
      {
        *(a1[4] + v6) = *(a1[4] + 16 * v1 - 16);
        v7 = a1[2] - 1;
      }

      a1[2] = v7;
      ++*(a1 + 6);
      v6 -= 16;
      if (!--v5)
      {
        goto LABEL_20;
      }
    }

    v10 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_22:
    v10 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "removeAt";
    v15 = 1024;
    v16 = 931;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v12 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 797;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_24:
    v12 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 797;
    v17 = 2048;
    v18 = 0;
    v19 = 2048;
    v20 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_20:
  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

uint64_t MetalPlacementHeap::releaseTextureForCaching(MetalPlacementHeap *this, int a2)
{
  re::DataArray<re::ecs2::System::SystemScheduling>::get(this + 64, a2);

  return MTLRangeAllocatorDeallocate();
}

unint64_t MetalPlacementHeap::makeBuffer(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t *a5)
{
  v8 = a3;
  v9 = [*(a1 + 24) heapBufferSizeAndAlignWithLength:a2 options:a3];
  v10 = -1;
  MTLRangeAllocatorAllocate();
  v11 = [*(a1 + 16) newBufferWithLength:v9 options:v8 offset:-1];
  if (!v11)
  {
    return v10;
  }

  v12 = v11;
  v13 = [*(a1 + 16) maxAvailableSizeWithAlignment_];
  if (v13 < *(a1 + 192))
  {
    *(a1 + 192) = v13;
    *(a1 + 200) = [*(a1 + 16) usedSize];
  }

  v14 = v12;
  v16 = v14;
  if (v14)
  {
  }

  v17 = *a5;
  v18 = *(a1 + 184);
  if ((v18 + 1) >> 24)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18 + 1;
  }

  *(a1 + 184) = v19;
  v20 = *(a1 + 180);
  v21 = *(a1 + 182);
  if (v20 != 0xFFFF || v21 != 0xFFFF)
  {
    if (*(a1 + 144) > v21)
    {
      v25 = (*(a1 + 160) + 16 * v21);
      *(v25[1] + 4 * v20) = v19;
      v24 = *v25 + 40 * v20;
      *(a1 + 180) = *v24;
      goto LABEL_18;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  if (*(a1 + 176) >= *(a1 + 172))
  {
    re::DataArray<MetalPlacementHeap::TextureEntry>::allocBlock((a1 + 128));
  }

  v22 = *(a1 + 144);
  v21 = (v22 - 1);
  if (!v22)
  {
LABEL_23:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_24:
    re::internal::assertLog(5, v15, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v20);
    _os_crash();
    __break(1u);
  }

  v20 = *(a1 + 176);
  if (v20 >= 0x10000)
  {
    goto LABEL_24;
  }

  v23 = (*(a1 + 160) + 16 * v21);
  *(a1 + 176) = v20 + 1;
  *(v23[1] + 4 * v20) = *(a1 + 184);
  v24 = *v23 + 40 * v20;
LABEL_18:
  ++*(a1 + 168);
  *v24 = v16;
  *(v24 + 8) = a4;
  *(v24 + 16) = v17;
  *(v24 + 24) = -1;
  *(v24 + 32) = v9;
  v10 = v20 + (v21 << 16) + ((*(a1 + 184) & 0xFFFFFF) << 32);
  if (v16)
  {
  }

  return v10;
}

double MetalPlacementHeap::releaseBuffer(MetalPlacementHeap *this, unint64_t a2)
{
  re::DataArray<re::ecs2::System::SystemScheduling>::get(this + 128, a2);
  MTLRangeAllocatorDeallocate();
  re::DataArray<MetalPlacementHeap::TextureEntry>::destroy(this + 128, a2);
  if (!*(this + 42))
  {

    return re::DataArray<MetalPlacementHeap::TextureEntry>::clear(this + 16);
  }

  return result;
}

uint64_t MetalPlacementHeap::releaseBufferForCaching(MetalPlacementHeap *this, int a2)
{
  re::DataArray<re::ecs2::System::SystemScheduling>::get(this + 128, a2);

  return MTLRangeAllocatorDeallocate();
}

id MetalPlacementHeap::onFrameStart(id *this)
{
  result = [this[2] size];
  this[24] = result;
  this[25] = 0;
  return result;
}

void CachingHeap::~CachingHeap(CachingHeap *this)
{
  *this = &unk_1F5D05080;
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 56);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 96);
  if (*(this + 41))
  {
    v2 = *(this + 40);
    if (v2)
    {
      memset_pattern16(*(this + 18), &unk_1E304C660, 4 * v2);
    }

    if (*(this + 42))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::EntryBase::free(*(this + 19) + v3);
        ++v4;
        v3 += 72;
      }

      while (v4 < *(this + 42));
    }

    *(this + 41) = 0;
    *(this + 42) = 0;
    v5 = *(this + 44) + 1;
    *(this + 43) = 0x7FFFFFFF;
    *(this + 44) = v5;
  }

  re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::deinit(this + 17);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 96);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 56);
  re::DynamicString::deinit((this + 24));
}

{
  CachingHeap::~CachingHeap(this);

  JUMPOUT(0x1E6906520);
}

uint64_t CachingHeap::makeTexture(uint64_t a1, id *a2, char a3, uint64_t *a4)
{
  v8 = *a2;
  v42 = v8;
  v43 = a3;
  re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::findEntry<CachingHeap::TextureCacheKey>(&v35, a1 + 136, &v42);
  v9 = v37;
  if (v37 == 0x7FFFFFFF)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v11 = *(a1 + 152) + 72 * v37;
  v10 = v11 + 24;
  v12 = *(v11 + 40);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = *(v11 + 56);
  v14 = 40 * v12;
  while (*(v13 + 32) != -1)
  {
    v13 += 40;
    v14 -= 40;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 56), v13);
  v15 = *(a1 + 72);
  v16 = v15 - 1;
  *(v13 + 32) = v15 - 1;
  *(v13 + 24) = 0;
  if (!v15)
  {
LABEL_9:
    re::mtl::Device::makeTexture(*a2, (a1 + 16), &v41);
    if (!v41)
    {
      v16 = -1;
      goto LABEL_34;
    }

    v17 = v41;
    v18 = v17;
    v35 = v18;
    v36 = 0;
    if (v17)
    {
    }

    v38 = *a4;
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 56), &v41);
    v16 = *(a1 + 72) - 1;
    v40 = v16;
    v39 = 0;
    if (v9 == 0x7FFFFFFF)
    {
      v34 = 0;
      v31[1] = 0;
      v32 = 0;
      v31[0] = 0;
      v33 = 0;
      re::DynamicArray<CachingHeap::TextureEntry>::add(v31, &v35);
      v44 = 0;
      v45 = 0;
      v46 = 0;
      re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::findEntry<CachingHeap::TextureCacheKey>(&v44, a1 + 136, &v42);
      if (HIDWORD(v45) == 0x7FFFFFFF)
      {
        v19 = re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::allocEntry(a1 + 136, v45, v44);
        *(v19 + 8) = v8;
        *(v19 + 24) = 0;
        *(v19 + 16) = a3;
        *(v19 + 56) = 0;
        *(v19 + 32) = 0;
        *(v19 + 40) = 0;
        *(v19 + 48) = 0;
        if (v31[0])
        {
          v20 = v32;
          *(v19 + 24) = v31[0];
          re::DynamicArray<CachingHeap::TextureEntry>::setCapacity((v19 + 24), v20);
          ++*(v19 + 48);
          if (v20 >= *(v19 + 40))
          {
            re::DynamicArray<CachingHeap::TextureEntry>::setCapacity((v19 + 24), v20);
            v24 = v34;
            std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,0>(v34, v34 + 40 * *(v19 + 40), *(v19 + 56));
            v25 = *(v19 + 40);
            if (v25 != v20)
            {
              v26 = v24 + 40 * v20;
              v27 = 5 * v25;
              v28 = v24 + 8 * v27;
              v29 = *(v19 + 56) + 8 * v27;
              do
              {
                *v29 = *v28;
                *(v29 + 8) = *(v28 + 8);
                *(v29 + 16) = *(v28 + 16);
                *(v29 + 24) = *(v28 + 24);
                v28 += 40;
                v29 += 40;
              }

              while (v28 != v26);
            }
          }

          else
          {
            std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,0>(v34, v34 + 40 * v20, *(v19 + 56));
            v21 = *(v19 + 40);
            if (v20 != v21)
            {
              v22 = *(v19 + 56) + 40 * v20;
              v23 = 40 * v21 - 40 * v20;
              do
              {
                *(v22 + 16) = 0;
                if (*v22)
                {

                  *v22 = 0;
                }

                v22 += 40;
                v23 -= 40;
              }

              while (v23);
            }
          }

          *(v19 + 40) = v20;
        }

        ++*(a1 + 176);
      }

      re::DynamicArray<CachingHeap::TextureEntry>::deinit(v31);
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    else
    {
      re::DynamicArray<CachingHeap::TextureEntry>::add(v10, &v35);
      if (!v18)
      {
LABEL_32:
        if (v41)
        {
        }

        goto LABEL_34;
      }
    }

    goto LABEL_32;
  }

LABEL_34:
  if (v8)
  {
  }

  return v16;
}

__n128 re::DynamicArray<CachingHeap::TextureEntry>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<CachingHeap::TextureEntry>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<CachingHeap::TextureEntry>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 40 * v5;
  *v11 = *a2;
  *(v11 + 8) = *(a2 + 8);
  *(v11 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(v11 + 24) = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t CachingHeap::makeBuffer(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 0xFFFF)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  v5 = [*(a1 + 16) newBufferWithLength:a2 options:v4];
  v9 = v5;
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 96), &v9);
  v7 = *(a1 + 112) - 1;

  return v7;
}

void CachingHeap::releaseBuffer(CachingHeap *this, unint64_t a2)
{
  if (*(this + 14) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(this + 16);

  *(v3 + 8 * a2) = 0;
}

void CachingHeap::onFrameFinish(CachingHeap *this)
{
  v32 = *MEMORY[0x1E69E9840];
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 56);
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 16);
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      if (v5)
      {
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 96);
  v6 = *(this + 42);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 19);
    while (1)
    {
      v9 = *v8;
      v8 += 18;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(this + 42);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    v10 = *(this + 19) + 72 * v7;
    v11 = *(v10 + 40);
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = 0;
    do
    {
      v13 = *(v10 + 56) + 40 * v12;
      v14 = *(v13 + 24);
      if (v14 < 4)
      {
        *(v13 + 32) = -1;
        *(v13 + 24) = v14 + 1;
        ++v12;
      }

      else
      {

        *v13 = 0;
        v15 = *(v10 + 40);
        if (v15 <= v12)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v27 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (v15 - 1 > v12)
        {
          v16 = *(v10 + 56);
          v17 = v16 + 40 * v15;
          v18 = v16 + 40 * v12;
          NS::SharedPtr<MTL::Texture>::operator=(v18, (v17 - 40));
          *(v18 + 8) = *(v17 - 32);
          *(v18 + 16) = *(v17 - 24);
          *(v18 + 24) = *(v17 - 16);
          v15 = *(v10 + 40);
        }

        v19 = *(v10 + 56) + 40 * v15;
        *(v19 - 24) = 0;
        v20 = *(v19 - 40);
        if (v20)
        {

          *(v19 - 40) = 0;
          v15 = *(v10 + 40);
        }

        v11 = v15 - 1;
        *(v10 + 40) = v15 - 1;
        ++*(v10 + 48);
      }
    }

    while (v12 < v11);
    if (!v11)
    {
LABEL_25:
      re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::findEntry<CachingHeap::TextureCacheKey>(&v27, this + 136, (v10 + 8));
      v21 = HIDWORD(v27);
      if (HIDWORD(v27) != 0x7FFFFFFF)
      {
        v22 = *(this + 19);
        v23 = (v22 + 72 * HIDWORD(v27));
        v24 = *v23 & 0x7FFFFFFF;
        if (v28 == 0x7FFFFFFF)
        {
          *(*(this + 18) + 4 * DWORD2(v27)) = v24;
        }

        else
        {
          *(v22 + 72 * v28) = *(v22 + 72 * v28) & 0x80000000 | v24;
        }

        re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::EntryBase::free(v23);
        *(*(this + 19) + 72 * v21) = *(*(this + 19) + 72 * v21) & 0x80000000 | *(this + 43);
        --*(this + 41);
        v25 = *(this + 44) + 1;
        *(this + 43) = v21;
        *(this + 44) = v25;
      }
    }

    v26 = *(this + 42);
    if (v26 <= v7 + 1)
    {
      v26 = v7 + 1;
    }

    while (v26 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(this + 19) + 72 * v7) & 0x80000000) != 0)
      {
        goto LABEL_36;
      }
    }

    LODWORD(v7) = v26;
LABEL_36:
    ;
  }
}

re::RenderGraphResourceAllocationManager *re::RenderGraphResourceAllocationManager::RenderGraphResourceAllocationManager(re::RenderGraphResourceAllocationManager *this)
{
  *(this + 4) = 0;
  *this = 0;
  *(this + 8) = 0u;
  *(this + 6) = 0;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this, 8uLL);
  ++*(this + 6);
  *(this + 40) = 0;
  *(this + 6) = 0;
  *(this + 13) = 0;
  *(this + 56) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 15) = 0;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0x7FFFFFFFLL;
  *(this + 31) = 0;
  *(this + 128) = 0;
  *(this + 60) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 1032) = xmmword_1E3049610;
  *(this + 262) = 2;
  *(this + 132) = 0;
  *(this + 1064) = 0u;
  *(this + 270) = 0;
  *(this + 141) = 0;
  *(this + 1136) = 0;
  *(this + 143) = 0;
  *(this + 72) = 0u;
  *(this + 292) = 0;
  *(this + 166) = 0;
  *(this + 1336) = 0u;
  *(this + 338) = 0;
  *(this + 205) = 0;
  *(this + 1649) = 0;
  *(this + 85) = 0u;
  *(this + 86) = 0u;
  *(this + 348) = 0;
  *(this + 1400) = 0u;
  *(this + 1416) = 0u;
  *(this + 358) = 0;
  *(this + 368) = 0;
  *(this + 91) = 0u;
  *(this + 90) = 0u;
  *(this + 1480) = 0u;
  *(this + 1496) = 0u;
  *(this + 378) = 0;
  *(this + 95) = 0u;
  *(this + 96) = 0u;
  *(this + 388) = 0;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 398) = 0;
  *(this + 100) = 0u;
  *(this + 101) = 0u;
  *(this + 408) = 0;
  *(this + 209) = 0;
  *(this + 420) = 0;
  *(this + 1656) = 0u;
  *(this + 280) = 0;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 302) = 0;
  *(this + 1176) = 0u;
  *(this + 1192) = 0u;
  *(this + 312) = 0;
  *(this + 77) = 0u;
  *(this + 76) = 0u;
  *(this + 322) = 0;
  *(this + 1256) = 0u;
  *(this + 1272) = 0u;
  *(this + 81) = 0u;
  *(this + 164) = 0;
  *(this + 1688) = 0u;
  *(this + 1704) = 0u;
  *(this + 1720) = 0u;
  *(this + 1736) = 0u;
  *(this + 1752) = 0u;
  *(this + 221) = 0;
  return this;
}

void re::RenderGraphResourceAllocationManager::~RenderGraphResourceAllocationManager(re::RenderGraphResourceAllocationManager *this)
{
  re::RenderGraphResourceAllocationManager::deinit(this);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::deinit(this + 1656);
  re::DynamicArray<unsigned long>::deinit(this + 1608);
  re::DynamicArray<unsigned long>::deinit(this + 1568);
  re::DynamicArray<unsigned long>::deinit(this + 1528);
  re::DynamicArray<unsigned long>::deinit(this + 1488);
  re::DynamicArray<unsigned long>::deinit(this + 1448);
  re::DynamicArray<unsigned long>::deinit(this + 1408);
  re::DynamicArray<unsigned long>::deinit(this + 1368);
  re::DynamicArray<unsigned long>::deinit(this + 1328);
  re::DynamicArray<unsigned long>::deinit(this + 1264);
  re::DynamicArray<unsigned long>::deinit(this + 1224);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::deinit(this + 1184);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::deinit(this + 1144);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::deinit(this + 1096);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::deinit(this + 1056);
  for (i = 768; i != 256; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  re::DynamicArray<unsigned long>::deinit(this + 216);
  re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 20);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 72);

  re::DynamicArray<unsigned long>::deinit(this);
}

uint64_t re::RenderGraphResourceAllocationManager::deinit(uint64_t this)
{
  if (*(this + 40) == 1)
  {
    v1 = this;
    re::internal::destroyPersistent<re::Heap>(*(this + 208));
    *(v1 + 208) = 0;
    *(v1 + 232) = 0;
    ++*(v1 + 240);
    this = re::internal::destroyPersistent<re::Heap>(*(v1 + 64));
    *(v1 + 64) = 0;
    *(v1 + 88) = 0;
    ++*(v1 + 96);
    if (*(v1 + 136))
    {
      v2 = 0;
      do
      {
        v3 = *(v1 + 152) + 48 * v2;
        if (*(v3 + 24))
        {
          v4 = 0;
          v5 = 0;
          do
          {
            re::internal::destroyPersistent<re::Heap>(*(*(v3 + 40) + v4));
            ++v5;
            v4 += 56;
          }

          while (*(v3 + 24) > v5);
        }

        this = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::clear(v3 + 8);
        ++v2;
      }

      while (*(v1 + 136) > v2);
    }

    v6 = *(v1 + 192);
    if (v6)
    {
      v7 = 0;
      v8 = *(v1 + 176);
      while (1)
      {
        v9 = *v8;
        v8 += 30;
        if (v9 < 0)
        {
          break;
        }

        if (v6 == ++v7)
        {
          LODWORD(v7) = *(v1 + 192);
          break;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    while (v7 != v6)
    {
      v10 = *(v1 + 176) + 120 * v7;
      v12 = *(v10 + 16);
      v11 = v10 + 16;
      this = re::internal::destroyPersistent<re::Heap>(v12);
      *v11 = 0;
      *(v11 + 24) = 0;
      ++*(v11 + 32);
      if (*(v11 + 72))
      {
        v13 = 0;
        do
        {
          v14 = *(v11 + 88) + 48 * v13;
          if (*(v14 + 24))
          {
            v15 = 0;
            v16 = 0;
            do
            {
              re::internal::destroyPersistent<re::Heap>(*(*(v14 + 40) + v15));
              ++v16;
              v15 += 56;
            }

            while (*(v14 + 24) > v16);
          }

          this = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::clear(v14 + 8);
          ++v13;
        }

        while (*(v11 + 72) > v13);
      }

      v17 = *(v1 + 192);
      if (v17 <= v7 + 1)
      {
        v17 = v7 + 1;
      }

      while (v17 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(*(v1 + 176) + 120 * v7) & 0x80000000) != 0)
        {
          goto LABEL_27;
        }
      }

      LODWORD(v7) = v17;
LABEL_27:
      ;
    }

    if (*(v1 + 1160))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      __asm { FMOV            V1.2S, #1.0 }

      while (1)
      {
        v26 = *(v1 + 1176) + v18;
        *v26 = -1;
        *(v26 + 16) = 0;
        *(v26 + 24) += 2;
        *(v26 + 88) = 0;
        *(v26 + 96) += 2;
        *(v26 + 152) = 0;
        *(v26 + 160) = 0;
        *(v26 + 168) = 0;
        if (*(v1 + 1240) <= v20)
        {
          break;
        }

        v27 = *(v1 + 1256) + v19;
        *v27 = 3;
        *(v27 + 8) = 2;
        *(v27 + 28) = -1;
        *(v27 + 20) = -1;
        *(v27 + 12) = -1;
        *(v27 + 36) = 0;
        *(v27 + 40) = 0;
        *(v27 + 44) = _D1;
        *(v27 + 52) = xmmword_1E30A3B60;
        *(v27 + 68) = 0x2000000000;
        *(v27 + 76) = -1;
        *(v27 + 84) = -1;
        *(v27 + 92) = -1;
        *(v27 + 96) = 0;
        *(v27 + 104) = 0;
        ++v20;
        v19 += 112;
        v18 += 184;
        if (*(v1 + 1160) <= v20)
        {
          goto LABEL_32;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_39:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_32:
    if (*(v1 + 1200))
    {
      v28 = 0;
      v29 = 0;
      v30 = 168;
      do
      {
        v31 = (*(v1 + 1216) + v30);
        *(v31 - 21) = -1;
        *(v31 - 19) = 0;
        *(v31 - 36) += 2;
        *(v31 - 10) = 0;
        *(v31 - 18) += 2;
        *(v31 - 2) = 0;
        *(v31 - 8) = 0;
        *v31 = 0;
        if (*(v1 + 1280) <= v29)
        {
          goto LABEL_39;
        }

        v32 = *(v1 + 1296) + v28;
        *v32 = 0;
        *(v32 + 8) = -1;
        *(v32 + 16) = 0;
        *(v32 + 20) = 1065353216;
        *(v32 + 24) = 0xFFFFFFFF00000020;
        *(v32 + 32) = xmmword_1E3062D70;
        ++v29;
        v28 += 48;
        v30 += 184;
      }

      while (*(v1 + 1200) > v29);
    }

    *(v1 + 40) = 0;
  }

  return this;
}

void re::RenderGraphResourceAllocationManager::init(id *this, id *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if ((this[5] & 1) == 0)
  {
    re::ObjCObject::operator=(this + 6, a2 + 26);
    this[7] = a2;
    *(this + 42) = re::mtl::Device::isPhysicalHardware((this + 6)) ^ 1;
    *(this + 41) = 0;
    v4 = this[6];
    v42[0] = v4;
    *v35 = 4;
    v34 = 70;
    v32 = 2;
    v33 = 2;
    TextureCompressionType = re::mtl::getTextureCompressionType(v42, &v33, &v34, v35, &v32);
    v6 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v6 setStorageMode_];
    if (([v6 respondsToSelector_] & 1) != 0 || objc_msgSend(v6, sel_methodSignatureForSelector_, sel_setCompressionType_))
    {
      [v6 setCompressionType_];
    }

    [v6 setTextureType_];
    [v6 setWidth_];
    [v6 setHeight_];
    [v6 setPixelFormat_];
    [v6 setMipmapLevelCount_];
    [v6 setUsage_];
    [v6 setSampleCount_];
    *(this + 41) = [this[6] heapTextureSizeAndAlignWithDescriptor_] > 0x1FBD0;
    if (v6)
    {
    }

    if (*(this + 41) == 1)
    {
      v42[0] = 41943040;
      re::DynamicArray<unsigned long>::add(this, v42);
      v42[0] = (v42[0] * 2);
      re::DynamicArray<unsigned long>::add(this, v42);
      v42[0] = v42[0] + (v42[0] >> 1);
      re::DynamicArray<unsigned long>::add(this, v42);
      v42[0] = v42[0] + (v42[0] >> 1);
      re::DynamicArray<unsigned long>::add(this, v42);
      v42[0] = v42[0] + (v42[0] >> 1);
      re::DynamicArray<unsigned long>::add(this, v42);
      v42[0] = v42[0] + (v42[0] >> 1);
      re::DynamicArray<unsigned long>::add(this, v42);
      v42[0] = v42[0] + (v42[0] >> 1);
      re::DynamicArray<unsigned long>::add(this, v42);
      v42[0] = v42[0] + (v42[0] >> 1);
      v7 = v42;
    }

    else
    {
      v8 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
      if (([v8 respondsToSelector_] & 1) != 0 || objc_msgSend(v8, sel_methodSignatureForSelector_, sel_setCompressionType_))
      {
        [v8 setCompressionType_];
      }

      [v8 setWidth_];
      [v8 setHeight_];
      [v8 setPixelFormat_];
      [v8 setTextureType_];
      [v8 setStorageMode_];
      [v8 setUsage_];
      v9 = [this[6] heapTextureSizeAndAlignWithDescriptor_];
      v11 = v10;
      if (v8)
      {
      }

      v12 = *(this[7] + 70);
      if (v12 <= 0x1D)
      {
        v13 = (1 << v12);
        v14 = (v9 - 0x100000) + 2 * v11;
        do
        {
          v42[0] = (v13 + (v13 >> 20) * v14);
          re::DynamicArray<unsigned long>::add(this, v42);
          v15 = v13 >> 29;
          v13 *= 2;
        }

        while (!v15);
      }

      v7 = &re::RenderGraphResourceAllocationManager::kHeapTopMemorySize;
    }

    re::DynamicArray<unsigned long>::add(this, v7);
    v16 = this[2];
    if (v16)
    {
      v17 = 0;
      while (1)
      {
        v18 = *(this[4] + v17++);
        if (v18 >> 30)
        {
          break;
        }

        if (v16 == v17)
        {
          goto LABEL_24;
        }
      }

      v16 = v17;
    }

LABEL_24:
    re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::resize(this + 15, v16);
    if (this[17])
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = re::RenderGraphResourceAllocationManager::indexToSize(this, v20);
        v22 = this[17];
        if (v22 <= v20)
        {
          v34 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          *v42 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v35 = 136315906;
          *&v35[4] = "operator[]";
          v36 = 1024;
          v37 = 789;
          v38 = 2048;
          v39 = v20;
          v40 = 2048;
          v41 = v22;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v23 = (this[19] + v19);
        *v23 = v21;
        if (v23[2] <= 0x7F)
        {
          re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity(v23 + 1, 0x80uLL);
          v22 = this[17];
        }

        ++v20;
        v19 += 48;
      }

      while (v22 > v20);
    }

    *(re::RenderGraphResourceAllocationManager::allocateNewHeap(this, *(this[7] + 36), 1024, 0) + 49) = 1;
    re::RenderGraphResourceAllocationManager::allocateSmallBlockHeap(v42, this, 0);
    this[8] = v42[0];
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((this + 9), &v42[1]);
    *(this + 56) = v45;
    v24 = v42[1];
    if (v42[1] && *(&v44 + 1))
    {
      v24 = (*(*v42[1] + 40))();
    }

    v25 = re::globalAllocators(v24);
    v26 = (*(*v25[2] + 32))(v25[2], 136, 8);
    *(v26 + 40) = 0u;
    *(v26 + 8) = 0u;
    *(v26 + 56) = 0u;
    *(v26 + 72) = 0u;
    *(v26 + 88) = 0u;
    *(v26 + 104) = 0u;
    *(v26 + 120) = 0u;
    *(v26 + 24) = 0u;
    *v26 = &unk_1F5D04ED0;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0;
    *(v26 + 16) = 0u;
    re::DynamicString::setCapacity((v26 + 24), 0);
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    *(v26 + 80) = 0;
    *(v26 + 72) = 0;
    *(v26 + 128) = 0;
    *(v26 + 88) = 0u;
    *(v26 + 104) = 0u;
    *(v26 + 120) = 0;
    v27 = this[6];
    v31 = v27;
    v42[0] = "HeapForMemoryless";
    v42[1] = 17;
    re::DynamicString::operator=((v26 + 24), v42);
    re::ObjCObject::operator=((v26 + 16), &v31);
    *(v26 + 8) = 1;

    *(&v44 + 1) = 0;
    v42[0] = v26;
    v42[1] = 0;
    v43 = 0uLL;
    LODWORD(v44) = 0;
    LOWORD(v45) = 0;
    this[26] = v26;
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((this + 27), &v42[1]);
    *(this + 128) = v45;
    if (v42[1] && *(&v44 + 1))
    {
      (*(*v42[1] + 40))();
    }

    v28 = this + 33;
    v29 = this + 97;
    v30 = 64;
    do
    {
      v42[0] = [this[6] newFence];
      NS::SharedPtr<MTL::Texture>::operator=(v28, v42);
      if (v42[0])
      {
      }

      *v29++ = -1;
      ++v28;
      --v30;
    }

    while (v30);
    *(this + 40) = 1;
  }
}

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = (48 * a2) | 8;
    v9 = a2;
    do
    {
      result = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::deinit(v3[4] + v8);
      ++v9;
      v8 += 48;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 48 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 40) = 0;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::RenderGraphResourceAllocationManager::indexToSize(re::RenderGraphResourceAllocationManager *this, unint64_t a2)
{
  v2 = *(this + 2);
  if (a2 >= v2 - 1)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = a2;
  }

  if (v2 <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 8 * v3);
}

uint64_t re::RenderGraphResourceAllocationManager::allocateNewHeap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = re::RenderGraphResourceAllocationManager::heapGroupHierarchyFor(a1, a4);
  v9 = v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    while (*(*(a1 + 32) + 8 * v11) < (a2 + a3))
    {
      if (v10 == ++v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v10 - 1;
  }

  if (v11 >= *(v8 + 72))
  {
    return 0;
  }

  v12 = re::RenderGraphResourceAllocationManager::indexToSize(a1, v11);
  v13 = *(a1 + 1696);
  *(a1 + 1696) = v13 + 1;
  v14 = re::DynamicString::format("Heap_%zu_(%zuMB)", &v47, v13, v12 >> 20);
  if (*(a1 + 42) == 1)
  {
    v15 = re::globalAllocators(v14);
    v16 = (*(*v15[2] + 32))(v15[2], 184, 8);
    *(v16 + 40) = 0u;
    *(v16 + 8) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 88) = 0u;
    *(v16 + 104) = 0u;
    *(v16 + 120) = 0u;
    *(v16 + 136) = 0u;
    *(v16 + 152) = 0u;
    *(v16 + 168) = 0u;
    *(v16 + 24) = 0u;
    *v16 = &unk_1F5D05080;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0;
    *(v16 + 16) = 0u;
    re::DynamicString::setCapacity((v16 + 24), 0);
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    *(v16 + 80) = 0;
    *(v16 + 72) = 0;
    *(v16 + 88) = 0u;
    *(v16 + 104) = 0u;
    *(v16 + 120) = 0;
    *(v16 + 144) = 0u;
    *(v16 + 160) = 0u;
    *(v16 + 128) = 0u;
    *(v16 + 176) = 0;
    *(v16 + 172) = 0x7FFFFFFF;
    if (v48)
    {
      v17 = v50;
    }

    else
    {
      v17 = v49;
    }

    v46 = *(a1 + 48);
    v18 = strlen(v17);
    *&v60 = v17;
    *(&v60 + 1) = v18;
    re::DynamicString::operator=((v16 + 24), &v60);
    v19 = &v46;
    re::ObjCObject::operator=((v16 + 16), &v46);
    v20 = 3;
LABEL_18:
    *(v16 + 8) = v20;
    goto LABEL_19;
  }

  if (a4)
  {
    v22 = re::globalAllocators(v14);
    v16 = (*(*v22[2] + 32))(v22[2], 136, 8);
    *v16 = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 0u;
    *(v16 + 96) = 0u;
    *(v16 + 112) = 0u;
    *(v16 + 128) = 0;
    *(v16 + 16) = 0u;
    DeviceHeap::DeviceHeap(v16);
    if (v48)
    {
      v23 = v50;
    }

    else
    {
      v23 = v49;
    }

    v45 = *(a1 + 48);
    re::DynamicString::operator=((v16 + 24), v23);
    v19 = &v45;
    re::ObjCObject::operator=((v16 + 16), &v45);
    v20 = 1;
    goto LABEL_18;
  }

  v34 = usePlacementHeaps();
  v35 = v34;
  v36 = *(*re::globalAllocators(v34)[2] + 32);
  if (v35)
  {
    v16 = v36();
    *(v16 + 56) = 0u;
    *(v16 + 8) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 88) = 0u;
    *(v16 + 104) = 0u;
    *(v16 + 120) = 0u;
    *(v16 + 136) = 0u;
    *(v16 + 152) = 0u;
    *(v16 + 168) = 0u;
    *(v16 + 184) = 0u;
    *(v16 + 200) = 0u;
    *(v16 + 216) = 0u;
    *(v16 + 232) = 0u;
    *v16 = &unk_1F5D04FF0;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0;
    re::DynamicString::setCapacity((v16 + 32), 0);
    *(v16 + 88) = 0;
    *(v16 + 80) = 0;
    *(v16 + 64) = 0u;
    *(v16 + 96) = 0u;
    *(v16 + 112) = 0;
    *(v16 + 116) = 0x1FFFFFFFFLL;
    *(v16 + 128) = 0;
    *(v16 + 136) = 0u;
    *(v16 + 152) = 0;
    *(v16 + 160) = 0u;
    *(v16 + 176) = 0;
    *(v16 + 180) = 0x1FFFFFFFFLL;
    if (v48)
    {
      v37 = v50;
    }

    else
    {
      v37 = v49;
    }

    v43 = *(a1 + 48);
    v38 = *(*(a1 + 56) + 272);
    v19 = &v43;
    MetalPlacementHeap::init(v16, v37, &v43, v12, v38);
  }

  else
  {
    v16 = v36();
    *(v16 + 56) = 0u;
    *(v16 + 8) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 88) = 0u;
    *(v16 + 104) = 0u;
    *(v16 + 120) = 0u;
    *(v16 + 136) = 0u;
    *(v16 + 152) = 0u;
    *(v16 + 168) = 0u;
    *(v16 + 184) = 0u;
    *(v16 + 200) = 0;
    *v16 = &unk_1F5D04F60;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0;
    re::DynamicString::setCapacity((v16 + 32), 0);
    *(v16 + 88) = 0;
    *(v16 + 80) = 0;
    *(v16 + 64) = 0u;
    *(v16 + 96) = 0u;
    *(v16 + 112) = 0;
    *(v16 + 116) = 0x1FFFFFFFFLL;
    *(v16 + 128) = 0;
    *(v16 + 136) = 0u;
    *(v16 + 152) = 0;
    *(v16 + 160) = 0u;
    *(v16 + 176) = 0;
    *(v16 + 180) = 0x1FFFFFFFFLL;
    if (v48)
    {
      v39 = v50;
    }

    else
    {
      v39 = v49;
    }

    v44 = *(a1 + 48);
    v40 = *(*(a1 + 56) + 272);
    v19 = &v44;
    MetalHeap::init(v16, v39, &v44, v12, v40);
  }

LABEL_19:

  v25 = *(v9 + 72);
  if (v25 <= v11)
  {
    v51 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v52 = 136315906;
    v53 = "operator[]";
    v54 = 1024;
    v55 = 789;
    v56 = 2048;
    v57 = v11;
    v58 = 2048;
    v59 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  v26 = *(v9 + 88) + 48 * v11;
  v27 = *(v26 + 16);
  v28 = *(v26 + 24);
  if (v28 >= v27)
  {
    v29 = v28 + 1;
    if (v27 < v28 + 1)
    {
      if (*(v26 + 8))
      {
        v30 = 2 * v27;
        v31 = v27 == 0;
        v32 = 8;
        if (!v31)
        {
          v32 = v30;
        }

        if (v32 <= v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = v32;
        }

        re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity((v26 + 8), v33);
      }

      else
      {
        re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity((v26 + 8), v29);
        ++*(v26 + 32);
      }
    }

    v28 = *(v26 + 24);
  }

  v41 = *(v26 + 40) + 56 * v28;
  *(v41 + 40) = 0;
  *v41 = v16;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 1;
  *(v41 + 48) = 0;
  ++*(v26 + 24);
  ++*(v26 + 32);
  v16 = *(v9 + 72);
  if (v16 <= v11)
  {
LABEL_46:
    v51 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v52 = 136315906;
    v53 = "operator[]";
    v54 = 1024;
    v55 = 789;
    v56 = 2048;
    v57 = v11;
    v58 = 2048;
    v59 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v21 = *(*(v9 + 88) + 48 * v11 + 40) + 56 * *(*(v9 + 88) + 48 * v11 + 24) - 56;
  if (v47 && (v48 & 1) != 0)
  {
    (*(*v47 + 40))();
  }

  return v21;
}

void re::RenderGraphResourceAllocationManager::allocateSmallBlockHeap(re::RenderGraphResourceAllocationManager *this, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 42) == 1)
  {
    v5 = re::globalAllocators(this);
    v6 = (*(*v5[2] + 32))(v5[2], 184, 8);
    *(v6 + 40) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 24) = 0u;
    *v6 = &unk_1F5D05080;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0;
    *(v6 + 16) = 0u;
    re::DynamicString::setCapacity((v6 + 24), 0);
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    *(v6 + 80) = 0;
    *(v6 + 72) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 176) = 0;
    *(v6 + 172) = 0x7FFFFFFF;
    v18 = *(a2 + 48);
    v19[0] = "SmallBlock";
    v19[1] = 10;
    re::DynamicString::operator=((v6 + 24), v19);
    v7 = &v18;
    re::ObjCObject::operator=((v6 + 16), &v18);
    v8 = 3;
LABEL_5:
    *(v6 + 8) = v8;
    goto LABEL_6;
  }

  if (a3)
  {
    v9 = re::globalAllocators(this);
    v6 = (*(*v9[2] + 32))(v9[2], 136, 8);
    *v6 = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 128) = 0;
    *(v6 + 16) = 0u;
    DeviceHeap::DeviceHeap(v6);
    v17 = *(a2 + 48);
    re::DynamicString::operator=((v6 + 24), "SmallBlock");
    v7 = &v17;
    re::ObjCObject::operator=((v6 + 16), &v17);
    v8 = 1;
    goto LABEL_5;
  }

  v10 = usePlacementHeaps();
  v11 = v10;
  v12 = *(*re::globalAllocators(v10)[2] + 32);
  if (v11)
  {
    v6 = v12();
    *(v6 + 56) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0u;
    *(v6 + 216) = 0u;
    *(v6 + 232) = 0u;
    *v6 = &unk_1F5D04FF0;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0;
    re::DynamicString::setCapacity((v6 + 32), 0);
    *(v6 + 88) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0;
    *(v6 + 116) = 0x1FFFFFFFFLL;
    *(v6 + 128) = 0;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0u;
    *(v6 + 176) = 0;
    *(v6 + 180) = 0x1FFFFFFFFLL;
    v15 = *(a2 + 48);
    v13 = *(*(a2 + 56) + 272);
    v7 = &v15;
    MetalPlacementHeap::init(v6, "SmallBlock", &v15, 0x800000, v13);
  }

  else
  {
    v6 = v12();
    *(v6 + 56) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0;
    *v6 = &unk_1F5D04F60;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0;
    re::DynamicString::setCapacity((v6 + 32), 0);
    *(v6 + 88) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0;
    *(v6 + 116) = 0x1FFFFFFFFLL;
    *(v6 + 128) = 0;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0u;
    *(v6 + 176) = 0;
    *(v6 + 180) = 0x1FFFFFFFFLL;
    v16 = *(a2 + 48);
    v14 = *(*(a2 + 56) + 272);
    v7 = &v16;
    MetalHeap::init(v6, "SmallBlock", &v16, 0x800000, v14);
  }

LABEL_6:

  *(this + 5) = 0;
  *this = v6;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
}

void DeviceHeap::DeviceHeap(DeviceHeap *this)
{
  *(this + 2) = 0;
  *this = &unk_1F5D04ED0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  re::DynamicString::setCapacity(this + 3, 0);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 9) = 0;
  *(this + 16) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
}

re *re::internal::destroyPersistent<re::Heap>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 56 * v2;
    v4 = *(result + 32) + 8;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v4);
      v4 += 56;
      v3 -= 56;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

void re::RenderGraphResourceAllocationManager::makeTexture(re::RenderGraphResourceAllocationManager *this@<X0>, const re::RenderGraphTargetDescription *a2@<X2>, const re::StringID *a3@<X3>, unint64_t a4@<X1>, void *a5@<X8>)
{
  v7 = a3;
  v8 = a2;
  v9 = a4;
  v90 = *MEMORY[0x1E69E9840];
  if (*(this + 1136) != 1)
  {
    goto LABEL_8;
  }

  v12 = a4;
  v13 = *(this + 145);
  if (v13 <= a4)
  {
LABEL_62:
    *v82 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v89[0]) = 136315906;
    *(v89 + 4) = "operator[]";
    WORD6(v89[0]) = 1024;
    *(v89 + 14) = 789;
    WORD1(v89[1]) = 2048;
    *(&v89[1] + 4) = v12;
    WORD6(v89[1]) = 2048;
    *(&v89[1] + 14) = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_63:
    v68[1] = 0;
    memset(v89, 0, sizeof(v89));
    v56 = v24;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v82 = 136315906;
    *&v82[4] = "operator[]";
    v83 = 1024;
    v84 = 789;
    v85 = 2048;
    v86 = v56;
    v87 = 2048;
    v88 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_64:
    *v82 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *v69 = 0u;
    v57 = v30;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v89[0]) = 136315906;
    *(v89 + 4) = "operator[]";
    WORD6(v89[0]) = 1024;
    *(v89 + 14) = 789;
    WORD1(v89[1]) = 2048;
    *(&v89[1] + 4) = v57;
    WORD6(v89[1]) = 2048;
    *(&v89[1] + 14) = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

  v14 = *(this + 147);
  if (*(v14 + 184 * a4 + 168))
  {
    if (*(v14 + 184 * a4 + 152) == *a3 >> 1)
    {
      v9 = *(this + 134);
      if (v9 <= a4)
      {
LABEL_67:
        *v82 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *v69 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v89[0]) = 136315906;
        *(v89 + 4) = "operator[]";
        WORD6(v89[0]) = 1024;
        *(v89 + 14) = 789;
        WORD1(v89[1]) = 2048;
        *(&v89[1] + 4) = v12;
        WORD6(v89[1]) = 2048;
        *(&v89[1] + 14) = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_68;
      }

      v15 = v14 + 184 * a4;
      v9 = *(this + 136) + 184 * a4;
      *v9 = *v15;
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v9 + 8, (v15 + 8));
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v9 + 80, (v15 + 80));
      *(v9 + 152) = *(v15 + 152);
      v16 = *(v15 + 160);
      *(v9 + 176) = *(v15 + 176);
      *(v9 + 160) = v16;
      v7 = *(this + 134);
      if (v7 <= v12)
      {
LABEL_68:
        *v82 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *v69 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v89[0]) = 136315906;
        *(v89 + 4) = "operator[]";
        WORD6(v89[0]) = 1024;
        *(v89 + 14) = 789;
        WORD1(v89[1]) = 2048;
        *(&v89[1] + 4) = v12;
        WORD6(v89[1]) = 2048;
        *(&v89[1] + 14) = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_69;
      }

      *(*(*(this + 136) + 184 * v12 + 168) + 48) = 1;
      goto LABEL_50;
    }

    v17 = 1;
  }

  else
  {
LABEL_8:
    v17 = 0;
  }

  textureDescFromTargetDesc(a2, v68);
  v5 = 0;
  v18 = *(v8 + 72) & 0x70;
  if (*(this + 42))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    if (v18 != 48)
    {
      v6 = [*(this + 6) heapTextureSizeAndAlignWithDescriptor_];
      v5 = v19;
    }
  }

  v65 = a5;
  if (v18 == 48)
  {
    HeapFor = (this + 208);
  }

  else
  {
    HeapFor = re::RenderGraphResourceAllocationManager::findHeapFor(this, v6, v5, *(v8 + 88));
    if (!HeapFor)
    {
      *v65 = 0;
      if (v68[0])
      {
      }

      return;
    }
  }

  v63 = v18 == 48;
  v13 = *HeapFor;
  v21 = v68[0];
  v66 = *v7 >> 1;
  v67 = v21;
  v12 = (*(*v13 + 24))(v13, &v67, v18 == 48, &v66);
  v66 = 0;
  if (v67)
  {

    v67 = 0;
  }

  if (v12 == -1)
  {
    *v65 = 0;
  }

  else
  {
    *(HeapFor + 48) = 1;
    v5 += v6;
    *(this + 215) += v5;
    v22 = *(this + 213) + v5;
    *(this + 213) = v22;
    if (v22 > *(this + 214))
    {
      *(this + 214) = v22;
    }

    if (v5 > *(this + 216))
    {
      *(this + 216) = v5;
    }

    ++*(this + 219);
    v23 = *v7 >> 1;
    v69[1] = 0;
    *&v70 = 0;
    v69[0] = v12;
    DWORD2(v70) = 1;
    v71 = 0uLL;
    v74 = 0;
    v75 = 0;
    v76 = 1;
    v77 = 0;
    v78 = 0;
    v79 = v23;
    LOBYTE(v80) = 0;
    *(&v80 + 1) = HeapFor;
    v81 = 0;
    v24 = v9;
    v6 = *(this + 134);
    if (v6 <= v9)
    {
      goto LABEL_63;
    }

    v25 = v9;
    v9 = v7;
    v7 = v17;
    v64 = v24;
    v26 = *(this + 136) + 184 * v24;
    *v26 = v12;
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v26 + 8, &v69[1]);
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v26 + 80, &v74);
    *(v26 + 152) = v79;
    v27 = v80;
    *(v26 + 176) = v81;
    *(v26 + 160) = v27;
    v28 = v7;
    v79 = 0;
    if (v74)
    {
      v29 = v76;
      if ((v76 & 1) == 0)
      {
        (*(*v74 + 40))();
        v29 = v76;
      }

      v74 = 0;
      v75 = 0;
      v76 = (v29 | 1) + 2;
    }

    if (v69[1] && (BYTE8(v70) & 1) == 0)
    {
      (*(*v69[1] + 40))();
    }

    v6 = *(this + 134);
    v30 = v64;
    if (v6 <= v64)
    {
      goto LABEL_64;
    }

    v7 = v9;
    v31 = *(this + 136) + 184 * v64;
    *(v31 + 160) = v63;
    *(v31 + 176) = v5;
    v9 = v25;
    if (v28)
    {
      v5 = *(this + 145);
      if (v5 <= v64)
      {
LABEL_65:
        *v82 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *v69 = 0u;
        v58 = v30;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v89[0]) = 136315906;
        *(v89 + 4) = "operator[]";
        WORD6(v89[0]) = 1024;
        *(v89 + 14) = 789;
        WORD1(v89[1]) = 2048;
        *(&v89[1] + 4) = v58;
        WORD6(v89[1]) = 2048;
        *(&v89[1] + 14) = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_66;
      }

      v32 = *(this + 147) + 184 * v64;
      *(this + 213) -= *(v32 + 176);
      (*(***(v32 + 168) + 32))(**(v32 + 168), *v32);
      v30 = v64;
      v5 = *(this + 155);
      if (v5 <= v64)
      {
LABEL_66:
        *v82 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *v69 = 0u;
        v59 = v30;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v89[0]) = 136315906;
        *(v89 + 4) = "operator[]";
        WORD6(v89[0]) = 1024;
        *(v89 + 14) = 789;
        WORD1(v89[1]) = 2048;
        *(&v89[1] + 4) = v59;
        WORD6(v89[1]) = 2048;
        *(&v89[1] + 14) = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_67;
      }

      v33 = *(this + 157) + 112 * v64;
      *v33 = 3;
      *(v33 + 8) = 2;
      *(v33 + 12) = -1;
      *(v33 + 20) = -1;
      *(v33 + 28) = -1;
      *(v33 + 36) = 0;
      *(v33 + 40) = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *(v33 + 44) = _D0;
      *(v33 + 52) = xmmword_1E30A3B60;
      *(v33 + 68) = 0x2000000000;
      *(v33 + 76) = -1;
      *(v33 + 84) = -1;
      *(v33 + 92) = -1;
      *(v33 + 96) = 0;
      *(v33 + 104) = 0;
    }

    if (*(this + 1136) == 1 && v13[2] == 2)
    {
      v5 = *(this + 134);
      if (v5 <= v30)
      {
LABEL_69:
        *v82 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *v69 = 0u;
        v60 = v30;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v89[0]) = 136315906;
        *(v89 + 4) = "operator[]";
        WORD6(v89[0]) = 1024;
        *(v89 + 14) = 789;
        WORD1(v89[1]) = 2048;
        *(&v89[1] + 4) = v60;
        WORD6(v89[1]) = 2048;
        *(&v89[1] + 14) = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_70;
      }

      v5 = *(this + 145);
      if (v5 <= v30)
      {
LABEL_70:
        *v82 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *v69 = 0u;
        v61 = v30;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v89[0]) = 136315906;
        *(v89 + 4) = "operator[]";
        WORD6(v89[0]) = 1024;
        *(v89 + 14) = 789;
        WORD1(v89[1]) = 2048;
        *(&v89[1] + 4) = v61;
        WORD6(v89[1]) = 2048;
        *(&v89[1] + 14) = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_71:
        *v82 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *v69 = 0u;
        v62 = v41;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v89[0]) = 136315906;
        *(v89 + 4) = "operator[]";
        WORD6(v89[0]) = 1024;
        *(v89 + 14) = 789;
        WORD1(v89[1]) = 2048;
        *(&v89[1] + 4) = v62;
        WORD6(v89[1]) = 2048;
        *(&v89[1] + 14) = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v39 = *(this + 136) + 184 * v30;
      v40 = *(this + 147) + 184 * v30;
      *v40 = *v39;
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v40 + 8, (v39 + 8));
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v40 + 80, (v39 + 80));
      v41 = v64;
      *(v40 + 152) = *(v39 + 152);
      v42 = *(v39 + 160);
      *(v40 + 176) = *(v39 + 176);
      *(v40 + 160) = v42;
      v5 = *(this + 155);
      if (v5 <= v64)
      {
        goto LABEL_71;
      }

      v43 = (*(this + 157) + 112 * v64);
      v44 = *v8;
      v45 = *(v8 + 32);
      v43[1] = *(v8 + 16);
      v43[2] = v45;
      *v43 = v44;
      v46 = *(v8 + 48);
      v47 = *(v8 + 64);
      v48 = *(v8 + 80);
      *(v43 + 89) = *(v8 + 89);
      v43[4] = v47;
      v43[5] = v48;
      v43[3] = v46;
    }

    (*(*v13 + 96))(v69, v13, v12);
    v8 = v69[0];
    [v69[0] setLabel_];
    if (v69[0])
    {
    }
  }

  if (v68[0])
  {
  }

  if (v12 != -1)
  {
    v7 = *(this + 134);
    v12 = v9;
LABEL_50:
    if (v7 > v12)
    {
      v49 = *(this + 136) + 184 * v12;
      v50 = *(v49 + 168);
      v51 = *v50;
      v52 = *v49;
      if (*(v49 + 160))
      {
        ++*(this + 217);
      }

      else if (v50[3])
      {
        v53 = 0;
        v54 = 0;
        do
        {
          v55 = v50[5] + v53;
          v8 = v8 & 0xFFFFFFFF00000000 | *(v55 + 8);
          re::RenderGraphResourceAllocationManager::SetupData::addUniqueFence((this + 1328), *v55, v8);
          ++v54;
          v53 += 12;
        }

        while (v50[3] > v54);
      }

      (*(*v51 + 96))(v51, v52);
      return;
    }

    *v82 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v89[0]) = 136315906;
    *(v89 + 4) = "operator[]";
    WORD6(v89[0]) = 1024;
    *(v89 + 14) = 789;
    WORD1(v89[1]) = 2048;
    *(&v89[1] + 4) = v12;
    WORD6(v89[1]) = 2048;
    *(&v89[1] + 14) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_62;
  }
}

void *re::RenderGraphResourceAllocationManager::findHeapFor(re::RenderGraphResourceAllocationManager *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = re::RenderGraphResourceAllocationManager::heapGroupHierarchyFor(a1, a4);
  v9 = v8;
  v10 = a2 + a3;
  v11 = *(a1 + 2);
  if (v11)
  {
    v12 = 0;
    while (*(*(a1 + 4) + 8 * v12) < v10)
    {
      if (v11 == ++v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v11 - 1;
  }

  v13 = v8[9];
  if (v12 >= v13)
  {
    return 0;
  }

  if (a2 >> 21)
  {
    goto LABEL_10;
  }

  if ((*(**v8 + 112))() >= a2)
  {
    return v9;
  }

  v13 = v9[9];
LABEL_10:
  if (v13 <= v12)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v14 = v9[11] + 48 * v12;
  if (*(v14 + 24))
  {
    v15 = 0;
    v16 = 0;
    while ((*(**(*(v14 + 40) + v15) + 112))(*(*(v14 + 40) + v15), a3) < a2)
    {
      ++v16;
      v15 += 56;
      if (*(v14 + 24) <= v16)
      {
        goto LABEL_15;
      }
    }

    if (*(v14 + 24) > v16)
    {
      return (*(v14 + 40) + v15);
    }

    goto LABEL_31;
  }

LABEL_15:
  if (re::RenderGraphResourceAllocationManager::indexToSize(a1, v12) < 2 * v10 && v12 + 1 < v9[9])
  {
    v17 = v9[11] + 48 * (v12 + 1);
    if (*(v17 + 24))
    {
      v18 = 0;
      v19 = 0;
      while ((*(**(*(v17 + 40) + v18) + 112))(*(*(v17 + 40) + v18), a3) < a2)
      {
        ++v19;
        v18 += 56;
        if (*(v17 + 24) <= v19)
        {
          goto LABEL_21;
        }
      }

      if (*(v17 + 24) > v19)
      {
        return (*(v17 + 40) + v18);
      }

LABEL_32:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_21:

  return re::RenderGraphResourceAllocationManager::allocateNewHeap(a1, a2, a3, a4);
}

_anonymous_namespace_ *re::RenderGraphResourceAllocationManager::SetupData::addUniqueFence(_anonymous_namespace_ *result, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = a3;
  if (a2 != -1)
  {
    v3 = *(result + 32);
    if (v3)
    {
      for (i = (*(result + 34) + 8); *(i - 2) != a2 || *i > a3; i += 3)
      {
        if (!--v3)
        {
          return re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((result + 240), &v5);
        }
      }
    }

    else
    {
      return re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((result + 240), &v5);
    }
  }

  return result;
}

_anonymous_namespace_ *re::RenderGraphResourceAllocationManager::releaseTexture(_anonymous_namespace_ *this, unsigned int a2, const char *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(this + 134) <= a2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v4 = this;
  v5 = (*(this + 136) + 184 * a2);
  if (*v5 == -1)
  {
    return this;
  }

  v6 = v5[21];
  v7 = *v6;
  if (*(v4 + 1136) == 1)
  {
    this = (*(*v7 + 40))(v7);
  }

  else
  {
    *(v4 + 213) -= v5[22];
    this = (*(*v7 + 32))(v7);
  }

  if (*(v4 + 134) <= v3)
  {
LABEL_16:
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(v4 + 136) + 184 * v3;
  *v8 = -1;
  *(v8 + 16) = 0;
  *(v8 + 24) += 2;
  *(v8 + 88) = 0;
  *(v8 + 96) += 2;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  v9 = *(v4 + 203);
  if (v9)
  {
    v10 = *(v4 + 205);
    v11 = 12 * v9;
    do
    {
      *&v15 = *v10;
      DWORD2(v15) = *(v10 + 8);
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v6 + 1), &v15);
      v10 += 12;
      v11 -= 12;
    }

    while (v11);
  }

  if ((*(v4 + 1649) & 1) == 0)
  {
    v12 = *(v4 + 198);
    if (v12)
    {
      v13 = *(v4 + 200);
      v14 = 12 * v12;
      do
      {
        *&v15 = *v13;
        DWORD2(v15) = *(v13 + 8);
        this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v6 + 1), &v15);
        v13 += 12;
        v14 -= 12;
      }

      while (v14);
    }
  }

  return this;
}
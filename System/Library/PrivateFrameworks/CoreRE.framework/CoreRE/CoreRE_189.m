void re::InstanceConstantsLateLatch::trackInstanceConstantsBuffer(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5)
{
  if (re::LateLatch::shouldApplyAnchorLateLatching(a1))
  {
    v9 = a4[1];
    if (v9)
    {
      v10 = *a4;
      v11 = 16 * v9;
      v12 = (v10 + 8);
      do
      {
        if (*(v12 - 2) == 3 && !*(v12 - 1) && v12[1] >= 0x70)
        {
          v13.n128_u64[0] = a2 + *v12;
          v13.n128_u8[8] = a5;
          re::DynamicArray<re::InstanceConstantsLateLatch::Entry>::add(a1, &v13);
        }

        v12 += 4;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

__n128 re::DynamicArray<re::InstanceConstantsLateLatch::Entry>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::InstanceConstantsLateLatch::Entry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 16 * v4) = *a2;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::InstanceConstantsLateLatch::patchTrackedInstanceConstantsBuffers(re::LateLatch *a1, os_unfair_lock_s *a2, uint64_t a3, float32x4_t *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (re::LateLatch::shouldApplyAnchorLateLatching(a1))
  {
    re::LateLatchingManager::getLateLatchPoseCorrections(a2, a3, &v29);
    v10 = *(a1 + 2);
    if (v10)
    {
      v11 = *(a1 + 4);
      v12 = &v11[16 * v10];
      do
      {
        if (v35)
        {
          v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v11[8]) ^ ((0xBF58476D1CE4E5B9 * v11[8]) >> 27));
          v9 = re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::findEntry<unsigned char>(v34, v11 + 8, v13 ^ (v13 >> 31), &buf);
          if (buf.columns[0].i32[3] == 0x7FFFFFFF)
          {
            goto LABEL_14;
          }

          v14 = (v34[2] + 80 * buf.columns[0].u32[3] + 16);
        }

        else
        {
          if (!v31)
          {
LABEL_14:
            v27 = *re::graphicsLogObjects(v9);
            v9 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
            if (v9)
            {
              v28 = v11[8];
              buf.columns[0].i32[0] = 67109120;
              buf.columns[0].i32[1] = v28;
              _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Failed to obtain late-latch state for anchor ID '%u'", &buf, 8u);
            }

            goto LABEL_16;
          }

          v26 = 80 * v31;
          v14 = &v33;
          while (v14[-1].u8[0] != v11[8])
          {
            v14 += 5;
            v26 -= 80;
            if (!v26)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = 0;
        v16 = *v11;
        v17 = *(*v11 + 32);
        v18 = vaddq_f32(*(*v11 + 48), *a4);
        v18.i32[3] = HIDWORD(*(*v11 + 48));
        *(v16 + 48) = v18;
        v19 = *v14;
        v20 = v14[1];
        v21 = v14[2];
        v22 = v14[3];
        v23 = *(v16 + 16);
        v36[0] = *v16;
        v36[1] = v23;
        v36[2] = v17;
        v36[3] = v18;
        do
        {
          buf.columns[v15] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(v36[v15])), v20, *&v36[v15], 1), v21, v36[v15], 2), v22, v36[v15], 3);
          ++v15;
        }

        while (v15 != 4);
        v40 = buf;
        v24 = v38;
        *v16 = buf.columns[0];
        *(v16 + 16) = v40.columns[1];
        *(v16 + 32) = v40.columns[2];
        *(v16 + 48) = v24;
        v25 = vsubq_f32(v24, *a4);
        v25.i32[3] = v24.i32[3];
        *(v16 + 48) = v25;
        v41 = __invert_f3(v40);
        *(v16 + 72) = v41.columns[2].i32[0];
        *(v16 + 88) = v41.columns[2].i32[1];
        *(v16 + 104) = v41.columns[2].i32[2];
        *(v16 + 64) = vzip1q_s32(v41.columns[0], v41.columns[1]).u64[0];
        *(v16 + 80) = vtrn2q_s32(v41.columns[0], v41.columns[1]).u64[0];
        *(v16 + 96) = vzip1q_s32(vdupq_laneq_s32(v41.columns[0], 2), vdupq_laneq_s32(v41.columns[1], 2)).u64[0];
LABEL_16:
        v11 += 16;
      }

      while (v11 != v12);
    }

    v31 = 0;
    ++v32;
    re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v34);
    v29 = 0;
    v30 = 0;
    return re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v34);
  }

  return result;
}

re::VFXLateLatch *re::VFXLateLatch::VFXLateLatch(re::VFXLateLatch *this, re::Allocator *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *this = a2;
  re::DynamicArray<re::PatchHandler>::setCapacity(this, 0);
  ++*(this + 6);
  if (*(this + 1) <= 0x1FuLL)
  {
    re::DynamicArray<re::PatchHandler>::setCapacity(this, 0x20uLL);
  }

  return this;
}

__n128 re::DynamicArray<re::PatchHandler>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PatchHandler>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 16 * v4) = *a2;
  *(this + 2) = v4 + 1;
  ++*(this + 6);
  return result;
}

uint64_t re::VFXLateLatch::patchTrackedVFXDrawCalls(re::LateLatch *a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = re::LateLatch::shouldApplyHeadPoseLateLatching(a1);
  if (result)
  {
    v9 = *(a1 + 2);
    if (v9)
    {
      v10 = (*(a1 + 4) + 8);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10)
        {
          result = *v12;
          if (*v12)
          {
            result = (*(result + 16))(result, a3, a4, *a2);
          }
        }

        v10 += 2;
        v11 -= 16;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t re::VisualDepthLateLatch::patchCameraMatrix(re::LateLatch *a1, uint64_t a2, int a3)
{
  result = re::LateLatch::shouldApplyVisualDepthLateLatching(a1);
  if (result)
  {
    v7 = *(a1 + 3);
    if (v7)
    {
      v8 = *(a1 + 5);
      v9 = 40 * v7;
      v10 = (v8 + 32);
      do
      {
        v13 = a2;
        v12 = a3;
        v11 = *v10;
        v10 += 5;
        result = (*(*v11 + 16))(v11, &v13, &v12);
        v9 -= 40;
      }

      while (v9);
    }
  }

  return result;
}

void *re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::InstanceConstantsLateLatch::Entry>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PatchHandler>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PatchHandler>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
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
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 16 * v9;
        v11 = v7;
        v12 = v5[4];
        do
        {
          v13 = *v12++;
          *v11++ = v13;
          v10 -= 16;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

void *re::DynamicArray<re::PatchHandler>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::PatchHandler>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PatchHandler>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<void ()(re::Matrix4x4<float> const*,unsigned int)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Function<void ()(re::Matrix4x4<float> const*,unsigned int)>>::setCapacity(v5, a2);
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
              goto LABEL_28;
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
LABEL_28:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          if (v8 != v11)
          {
            re::FunctionBase<24ul,void ()(re::Matrix4x4<float> const*,unsigned int)>::destroyCallable(v11);
            v12 = *(v8 + 32);
            if (*(v11 + 24) != *(v8 + 24) || v8 == v12)
            {
              if (v12)
              {
                v14 = (*(*v12 + 40))(v12);
                v15 = v11;
                if (v14 >= 0x19)
                {
                  v16 = v14;
                  v17 = *(v11 + 24);
                  if (v17)
                  {
                    v15 = (*(*v17 + 32))(v17, v16, 0);
                  }

                  else
                  {
                    v15 = 0;
                  }
                }

                *(v11 + 32) = v15;
                (*(**(v8 + 32) + 32))(*(v8 + 32));
                re::FunctionBase<24ul,void ()(re::Matrix4x4<float> const*,unsigned int)>::destroyCallable(v8);
              }
            }

            else
            {
              *(v11 + 32) = v12;
              *(v8 + 32) = 0;
            }
          }

          re::FunctionBase<24ul,void ()(re::Matrix4x4<float> const*,unsigned int)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_28;
    }
  }

  return result;
}

void *re::MeshBoundingBoxes::init(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = *a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  v5 = (a1 + 16);
  v6 = re::DynamicOverflowArray<unsigned int,8ul>::setCapacity((a1 + 16), 0);
  v7 = *(a1 + 32) + 2;
  *(a1 + 32) = v7;
  v8 = a3[1];
  v9 = *(a1 + 24);
  if (v9 < v8)
  {
    if (*v5)
    {
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v10 = *(a1 + 40);
LABEL_9:
        if (v10 < v8)
        {
          re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(v5, v8);
        }

        v12 = *(a1 + 24);
        if (v12 < v8)
        {
          do
          {
            v13 = a1 + 40;
            if ((*(a1 + 32) & 1) == 0)
            {
              v13 = *(a1 + 48);
            }

            *(v13 + 4 * v12++) = 0;
          }

          while (v8 != v12);
        }

        goto LABEL_15;
      }
    }

    else
    {
      re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(v5, v8);
      v11 = *(a1 + 32) + 2;
      *(a1 + 32) = v11;
      if ((v11 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v10 = 8;
    goto LABEL_9;
  }

  if (v9 > v8)
  {
LABEL_15:
    *(a1 + 24) = v8;
    v7 = *(a1 + 32) + 2;
    *(a1 + 32) = v7;
    v8 = a3[1];
  }

  if (v8 <= 0x40)
  {
    v14 = 4 * v8;
  }

  else
  {
    v14 = 256;
  }

  if (v7)
  {
    v15 = (a1 + 40);
  }

  else
  {
    v15 = *(a1 + 48);
  }

  if (a3[1] >= 0x41uLL)
  {
    v17 = 128;
    v18 = 64;
    do
    {
      if (*(a1 + 24) <= v18)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v19 = a1 + 40;
      if ((*(a1 + 32) & 1) == 0)
      {
        v19 = *(a1 + 48);
      }

      *(v19 + 4 * v18++) = v17;
      v17 += 2;
    }

    while (v18 < a3[1]);
  }

  return result;
}

float32x4_t *re::MeshScene::meshSceneBoundingBox@<X0>(float32x4_t *this@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = a3;
  v45 = *MEMORY[0x1E69E9840];
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *a3 = vnegq_f32(v4);
  a3[1] = v4;
  v5 = this[7].i64[0];
  if (v5)
  {
    v6 = *(v5 + 24);
    if (v6)
    {
      v22[0] = *v5;
      v7 = this->i64[1];
      v22[1] = *(v5 + 8);
      v23[0] = 0;
      v23[1] = v7;
      v24 = xmmword_1E3047670;
      v25 = xmmword_1E3047680;
      v26 = xmmword_1E30476A0;
      v27 = xmmword_1E30474D0;
      v28 = 0;
      v29 = 0;
      if (!this[3].i64[1])
      {
        v9 = v23;
        v8 = 1;
        v30.i64[0] = v23;
        v30.i64[1] = 1;
        goto LABEL_7;
      }

      v30 = this[3];
      v8 = v30.u64[1];
      if (v30.i64[1])
      {
        v9 = v30.i64[0];
LABEL_7:
        v10 = 0;
        v11 = *(v5 + 32);
        v12.i64[0] = 0x7F0000007FLL;
        v12.i64[1] = 0x7F0000007FLL;
        v13 = vnegq_f32(v12);
        v14 = v9 + 1;
        while (v6 != v10)
        {
          v15 = v5 + 40;
          if ((v11 & 1) == 0)
          {
            v15 = *(v5 + 48);
          }

          if (v8 <= v10)
          {
            goto LABEL_18;
          }

          v20 = v13;
          v21 = v12;
          this = re::AABB::transform((v22[*(v15 + 4 * v10) & 1] + ((16 * *(v15 + 4 * v10)) & 0xFFFFFFFE0)), v14, &v40);
          v16 = v20;
          v16.i32[3] = 0;
          v17 = v40;
          v18 = v41;
          v17.i32[3] = 0;
          v13 = vminnmq_f32(v16, v17);
          v19 = v21;
          v19.i32[3] = 0;
          v18.i32[3] = 0;
          v12 = vmaxnmq_f32(v19, v18);
          ++v10;
          v14 += 6;
          if (v8 == v10)
          {
            goto LABEL_15;
          }
        }

        *v3 = v13;
        v3[1] = v12;
        v31 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v3 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v32 = 136315906;
        v33 = "operator[]";
        v34 = 1024;
        v35 = 866;
        v36 = 2048;
        v37 = v6;
        v38 = 2048;
        v39 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_18:
        *v3 = v13;
        v3[1] = v12;
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v8);
        _os_crash();
        __break(1u);
      }

      v12.i64[0] = 0x7F0000007FLL;
      v12.i64[1] = 0x7F0000007FLL;
      v13 = vnegq_f32(v12);
LABEL_15:
      *v3 = v13;
      v3[1] = v12;
    }
  }

  return this;
}

void *re::MeshScene::setRenderModel(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a3 + 56);
  if (v7 == 1)
  {
    v9 = *(a3 + 64);
    v10 = (*(*a2 + 32))(a2, 8, 8);
    *v10 = v9;
    *a1 = v10;
    *(a1 + 8) = 1;
    if (a4)
    {
      v25 = v9 + 416;
      v26 = 1;
      v11 = (*(*a2 + 32))(a2, 72, 8);
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 32) = 1;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      re::MeshBoundingBoxes::init(v11, a2, &v25);
      *(a1 + 112) = v11;
      v12 = *(v9 + 432);
      *(a1 + 80) = *(v9 + 416);
      *(a1 + 96) = v12;
      *(a1 + 120) = v11;
    }
  }

  else
  {
    v13 = (*(*a2 + 32))(a2, 24, 8);
    v13[1] = 0;
    v13[2] = 0;
    *v13 = 0;
    re::FixedArray<re::MeshPart const*>::init<>(v13, a2, v7);
    v14 = v13[1];
    *a1 = v13[2];
    *(a1 + 8) = v14;
    v25 = a3 + 16;
    v26 = 1;
    v15 = (*(*a2 + 32))(a2, 72, 8);
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 1;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    re::MeshBoundingBoxes::init(v15, a2, &v25);
    *(a1 + 112) = v15;
    v16 = *(a3 + 56);
    v17 = (*(*a2 + 32))(a2, 40, 8);
    *(v17 + 32) = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *v17 = a2;
    re::DynamicArray<re::AABB>::setCapacity(v17, v16);
    ++*(v17 + 24);
    v18 = *(a3 + 56);
    if (v18)
    {
      v19 = 544 * v18;
      v20 = *(a3 + 64) + 416;
      do
      {
        re::DynamicArray<re::AABB>::add(v17, v20);
        v20 += 544;
        v19 -= 544;
      }

      while (v19);
    }

    v21 = *(v17 + 16);
    v25 = *(v17 + 32);
    v26 = v21;
    v22 = (*(*a2 + 32))(a2, 72, 8);
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 1;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    re::MeshBoundingBoxes::init(v22, a2, &v25);
    *(a1 + 120) = v22;
    v23 = *(a3 + 32);
    *(a1 + 80) = *(a3 + 16);
    *(a1 + 96) = v23;
  }

  result = (*(*a2 + 32))(a2, 8, 8);
  *result = a3 + 80;
  *(a1 + 64) = result;
  *(a1 + 72) = 1;
  return result;
}

void *re::MeshScene::setRenderModelHandles(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t **a4, char a5)
{
  v7 = a4[1];
  if (v7)
  {
    v9 = 0;
    v10 = *a4;
    v11 = 8 * v7;
    do
    {
      v12 = *v10++;
      v9 += *(re::DataArray<re::MeshModel>::get(a3 + 8, v12) + 56);
      v11 -= 8;
    }

    while (v11);
    v13 = a4[1];
  }

  else
  {
    v13 = 0;
    v9 = 0;
  }

  v14 = (*(*a2 + 32))(a2, 40, 8);
  *(v14 + 32) = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *v14 = a2;
  re::DynamicArray<float *>::setCapacity(v14, v9);
  ++*(v14 + 24);
  v15 = (*(*a2 + 32))(a2, 40, 8);
  *(v15 + 32) = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *v15 = a2;
  re::DynamicArray<re::RigJoint>::setCapacity(v15, v13);
  ++*(v15 + 24);
  v16 = (*(*a2 + 32))(a2, 40, 8);
  *(v16 + 32) = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v53 = a2;
  *v16 = a2;
  v51 = v13;
  result = re::DynamicArray<float *>::setCapacity(v16, v13);
  ++*(v16 + 24);
  v55 = a4;
  v18 = a4[1];
  if (v18)
  {
    v19 = *a4;
    v20 = &(*v55)[v18];
    do
    {
      v21 = *(v14 + 16);
      v22 = re::DataArray<re::MeshModel>::get(a3 + 8, *v19);
      v23 = v22;
      v24 = *(v22 + 56);
      if (v24)
      {
        v25 = *(v22 + 64);
        v26 = 544 * v24;
        do
        {
          v57 = v25;
          re::DynamicArray<re::TransitionCondition *>::add(v14, &v57);
          v25 += 544;
          v26 -= 544;
        }

        while (v26);
      }

      v27 = *(v14 + 16);
      v57 = v21;
      v58 = v27;
      v59 = xmmword_1E3047670;
      v60 = xmmword_1E3047680;
      v61 = xmmword_1E30476A0;
      v62 = xmmword_1E30474D0;
      v63 = 0;
      v64 = 0;
      re::DynamicArray<re::RigJoint>::add(v15, &v57);
      v57 = v23 + 80;
      result = re::DynamicArray<re::TransitionCondition *>::add(v16, &v57);
      ++v19;
    }

    while (v19 != v20);
  }

  v28 = *(v14 + 16);
  a1->i64[0] = *(v14 + 32);
  a1->i64[1] = v28;
  v29 = *(v15 + 16);
  a1[3].i64[0] = *(v15 + 32);
  a1[3].i64[1] = v29;
  v30 = *(v16 + 16);
  a1[4].i64[0] = *(v16 + 32);
  a1[4].i64[1] = v30;
  if (a5)
  {
    v31 = (*(*v53 + 32))(v53, 40, 8);
    *(v31 + 32) = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *v31 = v53;
    re::DynamicArray<re::AABB>::setCapacity(v31, v51);
    ++*(v31 + 24);
    v32 = (*(*v53 + 32))(v53, 40, 8);
    *(v32 + 32) = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *v32 = v53;
    re::DynamicArray<re::AABB>::setCapacity(v32, v9);
    ++*(v32 + 24);
    v33 = v55[1];
    if (v33)
    {
      v34 = *v55;
      v35 = &(*v55)[v33];
      do
      {
        v36 = re::DataArray<re::MeshModel>::get(a3 + 8, *v34);
        re::DynamicArray<re::AABB>::add(v31, v36 + 16);
        v37 = *(v36 + 56);
        if (v37)
        {
          v38 = 544 * v37;
          v39 = *(v36 + 64) + 416;
          do
          {
            re::DynamicArray<re::AABB>::add(v32, v39);
            v39 += 544;
            v38 -= 544;
          }

          while (v38);
        }

        ++v34;
      }

      while (v34 != v35);
    }

    v40 = *(v31 + 16);
    v57 = *(v31 + 32);
    v58 = v40;
    v41 = (*(*v53 + 32))(v53, 72, 8);
    *v41 = 0u;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 1;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    re::MeshBoundingBoxes::init(v41, v53, &v57);
    a1[7].i64[0] = v41;
    v42 = *(v32 + 16);
    v57 = *(v32 + 32);
    v58 = v42;
    v43 = (*(*v53 + 32))(v53, 72, 8);
    *v43 = 0u;
    *(v43 + 16) = 0u;
    *(v43 + 32) = 1;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    result = re::MeshBoundingBoxes::init(v43, v53, &v57);
    a1[7].i64[1] = v43;
    v44 = *(v31 + 16);
    if (v44)
    {
      v45 = *(v31 + 32);
      v46 = &v45[2 * v44];
      v47.i64[0] = 0x7F0000007FLL;
      v47.i64[1] = 0x7F0000007FLL;
      v48 = vnegq_f32(v47);
      do
      {
        v48.i32[3] = 0;
        v49 = *v45;
        v50 = v45[1];
        v45 += 2;
        v49.i32[3] = 0;
        v47.i32[3] = 0;
        v48 = vminnmq_f32(v48, v49);
        v50.i32[3] = 0;
        v47 = vmaxnmq_f32(v47, v50);
      }

      while (v45 != v46);
    }

    else
    {
      v47.i64[0] = 0x7F0000007FLL;
      v47.i64[1] = 0x7F0000007FLL;
      v48 = vnegq_f32(v47);
    }

    a1[5] = v48;
    a1[6] = v47;
  }

  return result;
}

void *re::MeshScene::setPrecomputedRenderMeshData(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a9;
  v23[0] = a9;
  v23[1] = a10;
  v22[0] = a11;
  v22[1] = a12;
  a1->i64[0] = a3;
  a1->i64[1] = a4;
  a1[3].i64[0] = a5;
  a1[3].i64[1] = a6;
  a1[4].i64[0] = a7;
  a1[4].i64[1] = a8;
  v15 = (*(*a2 + 32))(a2, 72, 8);
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 1;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  re::MeshBoundingBoxes::init(v15, a2, v23);
  a1[7].i64[0] = v15;
  v16 = (*(*a2 + 32))(a2, 72, 8);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 1;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  result = re::MeshBoundingBoxes::init(v16, a2, v22);
  a1[7].i64[1] = v16;
  if (a10)
  {
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v19 = vnegq_f32(v18);
    do
    {
      v19.i32[3] = 0;
      v20 = *v14;
      v21 = v14[1];
      v14 += 2;
      v20.i32[3] = 0;
      v18.i32[3] = 0;
      v19 = vminnmq_f32(v19, v20);
      v21.i32[3] = 0;
      v18 = vmaxnmq_f32(v18, v21);
    }

    while (v14 != &a9[2 * a10]);
  }

  else
  {
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v19 = vnegq_f32(v18);
  }

  a1[5] = v19;
  a1[6] = v18;
  return result;
}

uint64_t MetalEmulation::generatePrefilteredSpecularMap(uint64_t a1, uint16x4_t a2, uint32x4_t a3)
{
  v4 = a1 + 64;
  a3.i64[0] = *(a1 + 256);
  v5 = vaddw_u16(a3, a2).u64[0];
  v6 = a2.i16[2] + *(a1 + 264);
  v7 = WORD2(v5);
  v56 = v5;
  WORD1(v5) = WORD2(v5);
  WORD2(v5) = v6;
  v65 = v5;
  *v8.f32 = MetalEmulation::getCubeDir(v5, v7, v6, *(a1 + 64));
  v67 = v8;
  v9 = MetalEmulation::hash3D(vmovl_u16(v65));
  v12 = *(v4 + 208);
  if (v12 >= 2)
  {
    v13 = 1.0 / (v12 - 1);
  }

  else
  {
    v13 = 0.0;
  }

  v14 = vmulq_f32(v67, v67);
  *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v16 = vmulq_n_f32(v67, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  v17 = fminf(fmaxf(v13 * *(a1 + 268), 0.01), 1.0);
  if (v17 == 0.0)
  {
    (*(*(a1 + 56) + 184))(v16);
  }

  else
  {
    v19 = *(a1 + 276);
    v64 = v16;
    if (v16.n128_f32[2] >= -0.9999)
    {
      v20 = 1.0 / (v16.n128_f32[2] + 1.0);
      v11.f32[0] = vmuls_lane_f32(-v16.n128_f32[0], v16.n128_u64[0], 1) * v20;
      v10.f32[0] = ((-v16.n128_f32[0] * v16.n128_f32[0]) * v20) + 1.0;
      v10.i32[1] = v11.i32[0];
      v10.f32[2] = -v16.n128_f32[0];
      v11.f32[1] = (vmuls_lane_f32(-v16.n128_f32[1], v16.n128_u64[0], 1) * v20) + 1.0;
      v11.f32[2] = -v16.n128_f32[1];
      v62 = v10;
      v63 = v11;
    }

    else
    {
      v63 = xmmword_1E3047690;
      v62 = xmmword_1E30476B0;
    }

    v21 = vcvts_n_f32_u32(v9, 0x20uLL);
    v22 = (v21 * 3.1416) + (v21 * 3.1416);
    _ZF = v21 == 1.0;
    v24 = 0.0;
    if (!_ZF)
    {
      v24 = v22;
    }

    v25 = __sincosf_stret(v24);
    if (v19)
    {
      v26 = 0;
      v27.f32[0] = -v25.__sinval;
      v27.i32[1] = LODWORD(v25.__cosval);
      v61 = v27;
      v28 = 12.566 / vmuls_lane_f32(6.0 * COERCE_FLOAT(*(*(a1 + 56) + 104)), *(*(a1 + 56) + 104), 1);
      v29 = v17 * v17;
      v30 = v19;
      v60 = vnegq_f32(v64);
      v31 = v29 * v29;
      v66 = 0u;
      __asm { FMOV            V0.4S, #1.0 }

      v59 = *(&_Q0 + 1);
      *&_Q0 = 0;
      do
      {
        v68 = _Q0;
        v36 = __sincosf_stret(vcvts_n_f32_u32(__rbit32(v26), 0x20uLL) * 6.2832);
        v37 = v29 * sqrtf((v26 / v30) / (1.0 - (v26 / v30)));
        v38 = sqrtf((v37 * v37) + 1.0);
        v39 = -(v37 * v36.__sinval);
        v40.i64[1] = v59;
        v40.f32[0] = -(v37 * v36.__cosval);
        v40.f32[1] = v39;
        v41 = vmulq_n_f32(v40, 1.0 / v38);
        v42 = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v25.__sinval), LODWORD(v25.__cosval)), v41.f32[0]), v61, *v41.f32, 1);
        v43 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v63, v42, 1), v62, v42.f32[0]), v64, v41, 2);
        v44 = vmulq_f32(v64, v43);
        v45 = v44.f32[2] + vaddv_f32(*v44.f32);
        v46 = vmlaq_n_f32(v60, v43, v45 + v45);
        v47 = vmulq_f32(v64, v46);
        v48 = fminf(fmaxf(v47.f32[2] + vaddv_f32(*v47.f32), 0.0), 1.0);
        if (v48 <= 0.0)
        {
          _Q0 = v68;
        }

        else
        {
          v49 = fminf(fmaxf(v45, 0.0), 1.0);
          v57 = v46;
          v58 = v48;
          v50 = (-(v49 - (v31 * v49)) * v49) + 1.0;
          v51 = log2f((1.0 / (((v31 / (v50 * (v50 * 3.1416))) * 0.25) * v30)) / v28);
          *v52.i64 = (*(a1 + 40))(a1, v57, fminf(fmaxf((v51 * 0.5) + 1.0, 0.0), *(a1 + 4)));
          v66 = vmlaq_n_f32(v66, v52, v58);
          _Q0 = v68;
          *&_Q0 = *&v68 + v58;
        }

        ++v26;
      }

      while (v19 != v26);
    }

    else
    {
      v66 = 0u;
      *&_Q0 = 0;
    }

    v18 = vdivq_f32(v66, vdupq_lane_s32(*&_Q0, 0));
  }

  v18.i32[3] = 1.0;
  v53 = vminnmq_f32(vmaxnmq_f32(v18, 0), vdupq_n_s32(0x477FE000u));
  HIWORD(v69) = WORD2(v56);
  LOWORD(v69) = v56;
  v54 = *(a1 + 232);

  return v54(v4, v69, v6, v53);
}

uint64_t MetalEmulation::generatePrefilteredDiffuseMap(uint64_t a1, double a2)
{
  v3 = WORD2(a2);
  v4 = a1 + 64;
  v32 = LODWORD(a2);
  *v5.f32 = MetalEmulation::getCubeDir(LOWORD(a2), WORD1(a2), WORD2(a2), *(a1 + 64));
  v8 = vmulq_f32(v5, v5);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v10 = vmulq_n_f32(v5, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  v11 = *(v4 + 192);
  if (v10.f32[2] < -0.9999)
  {
    v36 = xmmword_1E3047690;
    v35 = xmmword_1E30476B0;
    if (*(v4 + 192))
    {
      goto LABEL_3;
    }

LABEL_9:
    *&v37 = 0;
    v38 = 0u;
    goto LABEL_10;
  }

  v27 = 1.0 / (v10.f32[2] + 1.0);
  v7.f32[0] = vmuls_lane_f32(-v10.f32[0], *v10.f32, 1) * v27;
  v6.f32[0] = ((-v10.f32[0] * v10.f32[0]) * v27) + 1.0;
  v6.i32[1] = v7.i32[0];
  v6.f32[2] = -v10.f32[0];
  v7.f32[1] = (vmuls_lane_f32(-v10.f32[1], *v10.f32, 1) * v27) + 1.0;
  v7.f32[2] = -v10.f32[1];
  v35 = v6;
  v36 = v7;
  if (!*(v4 + 192))
  {
    goto LABEL_9;
  }

LABEL_3:
  v34 = v10;
  v12 = 0;
  v13 = v11;
  v38 = 0u;
  v37 = 0u;
  do
  {
    v14 = v12 / v13;
    v15 = sqrtf(v14);
    v16 = __sincosf_stret(vcvts_n_f32_u32(__rbit32(v12), 0x20uLL) * 6.2832);
    v17 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v36, v15 * v16.__cosval), v35, v15 * v16.__sinval), v34, sqrtf(fmaxf(1.0 - v14, 0.0)));
    v18 = vmulq_f32(v17, v17);
    *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
    *v18.f32 = vrsqrte_f32(v19);
    *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
    v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
    v21 = vmulq_f32(v34, v20);
    v22 = fminf(fmaxf(v21.f32[2] + vaddv_f32(*v21.f32), 0.0), 1.0);
    if (v22 > 0.0)
    {
      v33 = v20;
      v23 = log2f((1.0 / ((v22 * 0.31831) * v13)) / (12.566 / ((**(a1 + 56) * 6.0) * WORD1(**(a1 + 56)))));
      *v24.i64 = (*(a1 + 40))(a1, v33, fmaxf((v23 * 0.5) + 1.0, 0.0));
      v25 = vaddq_f32(v38, v24);
      v26 = v37;
      *&v26 = *&v37 + 1.0;
      v37 = v26;
      v38 = v25;
    }

    ++v12;
  }

  while (v11 != v12);
LABEL_10:
  v28 = vdivq_f32(v38, vdupq_lane_s32(*&v37, 0));
  v28.i32[3] = 1.0;
  v29 = vminnmq_f32(vmaxnmq_f32(v28, 0), vdupq_n_s32(0x477FE000u));
  v30 = *(a1 + 232);

  return v30(v4, v32, v3, v29);
}

void *re::allocInfo_ProtectionOptionsService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_473, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_473))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BAD40, "ProtectionOptionsService");
    __cxa_guard_release(&_MergedGlobals_473);
  }

  return &unk_1EE1BAD40;
}

void re::initInfo_ProtectionOptionsService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x5EBCAF223B8CB20;
  v6[1] = "ProtectionOptionsService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_ProtectionOptionsService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::DrawCallMeshPartsDetails::DrawCallMeshPartsDetails(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 64);
  *a1 = v9;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = v9;
  re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity((a1 + 8), 0);
  ++*(a1 + 32);
  v11[0] = *a5;
  if (v11[0] == 1)
  {
    v12 = *(a5 + 4);
  }

  re::DrawCallMeshPartsDetails::appendPerMeshPartDetails(a1, a3, a4, v11);
  return a1;
}

void *re::DrawCallMeshPartsDetails::appendPerMeshPartDetails(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v17[0] = 0;
  if (a3)
  {
    re::DynamicString::format(*a1, "%s", &v14, a3);
    LOBYTE(v8) = 1;
    v9 = v14;
    v11 = v16;
    v10 = v15;
    re::Optional<re::DynamicString>::operator=(v17, &v8);
    if (v8 == 1 && v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    v8 = a2;
    LOBYTE(v9) = v17[0];
    if (v17[0])
    {
      re::DynamicString::DynamicString(&v10, &v18);
    }
  }

  else
  {
    v8 = a2;
    LOBYTE(v9) = 0;
  }

  v12 = *a4;
  if (v12 == 1)
  {
    v13 = *(a4 + 1);
  }

  result = re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::add((a1 + 8), &v8);
  if (v9 == 1)
  {
    result = v10;
    if (v10)
    {
      if (BYTE8(v10))
      {
        result = (*(*v10 + 40))();
      }
    }
  }

  if (v17[0] == 1)
  {
    result = v18;
    if (v18)
    {
      if (v19)
      {
        return (*(*v18 + 40))(v18, v20);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 56 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 40) = *(a2 + 40);
    v7 = *(a2 + 24);
    *(v5 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a2 + 32);
    *(a2 + 40) = 0;
    v10 = *(v5 + 24);
    v9 = *(v5 + 32);
    *(v5 + 24) = v7;
    *(v5 + 32) = v8;
    *(a2 + 24) = v10;
    *(a2 + 32) = v9;
  }

  v11 = *(a2 + 48);
  *(v5 + 48) = v11;
  if (v11 == 1)
  {
    *(v5 + 52) = *(a2 + 52);
  }

  ++v3[2];
  ++*(v3 + 6);
  return this;
}

re::DrawCallRecorderGroup *re::DrawCallRecorderGroup::DrawCallRecorderGroup(re::DrawCallRecorderGroup *this, const char *a2, const char *a3, re::Allocator *a4)
{
  *this = 0u;
  *(this + 1) = 0u;
  v8 = re::DynamicString::setCapacity(this, 0);
  *(this + 3) = 0u;
  *(this + 2) = 0u;
  re::DynamicString::setCapacity(this + 4, 0);
  *(this + 8) = a4;
  *(this + 13) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 9) = a4;
  re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::setCapacity(this + 9, 0);
  ++*(this + 24);
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 7) = 0u;
  *(this + 148) = 0x7FFFFFFFLL;
  re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(this + 112, a4, 3);
  *(this + 24) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 20) = a4;
  re::DynamicArray<re::EncodedDrawCallDetails>::setCapacity(this + 20, 0);
  ++*(this + 46);
  *(this + 208) = 0;
  if (!a2)
  {
    a2 = "nullptr";
  }

  v11 = a2;
  v12 = strlen(a2);
  re::DynamicString::operator=(this, &v11);
  if (!a3)
  {
    a3 = "nullptr";
  }

  v9 = strlen(a3);
  v11 = a3;
  v12 = v9;
  re::DynamicString::operator=((this + 32), &v11);
  return this;
}

uint64_t re::DrawCallRecorderGroup::allocateSortingDebugContextAndReturnIndex(re::DrawCallRecorderGroup *this)
{
  v2 = *(this + 11);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  re::DynamicString::setCapacity(v5, 0);
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  v6 = vnegq_f32(v3);
  v7 = v3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  LOBYTE(v12) = 0;
  re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::add(this + 9, v5);
  if (*&v5[0] && (BYTE8(v5[0]) & 1) != 0)
  {
    (*(**&v5[0] + 40))();
  }

  return v2;
}

void *re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 160 * v4;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v6 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v7 = *(a2 + 16);
  *(a2 + 24) = 0;
  v9 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  v12 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v12;
  *(v5 + 64) = v10;
  *(v5 + 80) = v11;
  v13 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v13;
  LODWORD(v7) = *(a2 + 128);
  *(v5 + 128) = v7;
  if (v7 == 1)
  {
    *(v5 + 144) = *(a2 + 144);
  }

  ++v3[2];
  ++*(v3 + 6);
  return this;
}

uint64_t re::DrawCallRecorderGroup::getSortingContextUnsafe(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    v4 = *(a2 + 4);
    if (*(a1 + 88) > v4)
    {
      return *(a1 + 104) + 160 * v4;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "hasSortingContext(index)", "getSortingContextUnsafe", 90, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::DrawCallRecorderGroup::getMutableSortingContext(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 88) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 104) + 160 * a2;
}

unint64_t re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(uint64_t a1, int *a2, void *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v12) << 6) + 8;
  }

  v7 = re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v12, v11);
  v8 = *a2;
  *(v7 + 8) = *a3;
  v9 = v7 + 8;
  *(v7 + 4) = v8;
  re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::DynamicArray(v7 + 16, a3 + 1);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::DrawCallRecorderGroup::recordEncodedDrawCall(uint64_t a1, uint64_t a2, const char *a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v16 = re::DynamicString::DynamicString(&v62, "", *(a1 + 64));
  v64 = 0u;
  v65 = 0u;
  v17 = re::DynamicString::setCapacity(&v64, 0);
  v67 = 0u;
  v66 = 0u;
  v18 = re::DynamicString::setCapacity(&v66, 0);
  v68 = 0;
  *&v80[1] = 134217472;
  *&v80[9] = 134217472;
  v83 = 0u;
  v82 = 0u;
  re::DynamicString::setCapacity(&v82, 0);
  v84 = 0;
  if (!a3)
  {
    a3 = "nullptr";
  }

  v57 = a3;
  *&v58 = strlen(a3);
  re::DynamicString::operator=(&v62, &v57);
  re::DynamicString::format(*(a1 + 64), "Unknown", &v57);
  v20 = *a4;
  v19 = (a4 + 8);
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = &v57;
  }

  re::DynamicString::operator=(&v64, v21);
  if (v57 && (v58 & 1) != 0)
  {
    (*(*v57 + 40))();
  }

  re::DynamicString::format(*(a1 + 64), "Unknown", &v57);
  v23 = *a5;
  v22 = (a5 + 8);
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = &v57;
  }

  re::DynamicString::operator=(&v66, v24);
  if (v57 && (v58 & 1) != 0)
  {
    (*(*v57 + 40))();
  }

  if (v68)
  {
    if (*a6)
    {
      v69 = *(a6 + 8);
      v70 = *(a6 + 24);
      v71 = *(a6 + 40);
      v72 = *(a6 + 56);
      if (v73)
      {
        if ((*(a6 + 60) & 1) == 0)
        {
          v73 = 0;
LABEL_32:
          re::DynamicArray<re::RenderAttachmentState>::operator=(&v75, (a6 + 64));
          goto LABEL_33;
        }
      }

      else
      {
        if ((*(a6 + 60) & 1) == 0)
        {
          goto LABEL_32;
        }

        v73 = 1;
      }

      v74 = *(a6 + 61);
      goto LABEL_32;
    }

    if (v75)
    {
      if (v79)
      {
        (*(*v75 + 40))();
      }

      v79 = 0;
      v76 = 0;
      v77 = 0;
      v75 = 0;
      ++v78;
    }

    v68 = 0;
  }

  else if (*a6)
  {
    v68 = 1;
    v69 = *(a6 + 8);
    v70 = *(a6 + 24);
    v71 = *(a6 + 40);
    v72 = *(a6 + 56);
    v73 = *(a6 + 60);
    if (v73 == 1)
    {
      v74 = *(a6 + 61);
    }

    re::DynamicArray<re::RenderAttachmentState>::DynamicArray(&v75, (a6 + 64));
  }

LABEL_33:
  v80[0] = *(a2 + 80);
  *&v80[1] = *a7;
  v80[17] = *(a7 + 16);
  v89 = a9;
  *&v80[24] = a8;
  *(&v81 + 4) = *(a2 + 16);
  v25 = *(a2 + 44);
  LODWORD(v81) = *(a2 + 40);
  HIDWORD(v81) = v25;
  if (*(a2 + 48) != 1)
  {
    goto LABEL_51;
  }

  v26 = *(a2 + 52);
  LODWORD(v90[0]) = *(a2 + 52);
  if (!*(a1 + 112))
  {
    goto LABEL_51;
  }

  v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) >> 27));
  v28 = v27 ^ (v27 >> 31);
  v29 = *(*(a1 + 120) + 4 * (v28 % *(a1 + 136)));
  if (v29 == 0x7FFFFFFF)
  {
    goto LABEL_51;
  }

  v30 = *(a1 + 128);
  while (*(v30 + (v29 << 6) + 4) != v26)
  {
    v29 = *(v30 + (v29 << 6)) & 0x7FFFFFFF;
    if (v29 == 0x7FFFFFFF)
    {
      goto LABEL_51;
    }
  }

  re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1 + 112, v90, v28, &v57);
  v31 = *(a1 + 128) + (DWORD1(v58) << 6);
  LOBYTE(v57) = 1;
  *&v58 = *(v31 + 8);
  re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::DynamicArray(&v58 + 8, (v31 + 16));
  if (v84)
  {
    if (v57)
    {
      *&v85 = v58;
      v33 = *(&v85 + 1);
      if (*(&v85 + 1) && *(&v58 + 1) && *(&v85 + 1) != *(&v58 + 1))
      {
        re::internal::assertLog(4, v32, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
        result = _os_crash();
        __break(1u);
        return result;
      }

      *(&v85 + 1) = *(&v58 + 1);
      *(&v58 + 1) = v33;
      v34 = v86;
      v86 = v59;
      v59 = v34;
      v35 = v88;
      v88 = v61;
      v61 = v35;
      ++v60;
      v36 = v87 + 1;
      goto LABEL_48;
    }

    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(&v85 + 8);
    v84 = 0;
    if (v57)
    {
      goto LABEL_50;
    }
  }

  else if (v57)
  {
    v36 = 1;
    v84 = 1;
    v85 = v58;
    v86 = v59;
    *(&v58 + 1) = 0;
    v59 = 0uLL;
    v88 = v61;
    v61 = 0;
    ++v60;
LABEL_48:
    v87 = v36;
LABEL_50:
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(&v58 + 8);
  }

LABEL_51:
  re::DynamicString::format(*(a1 + 64), "Unknown", &v57);
  v37 = *(a2 + 3);
  if (v37 <= 2)
  {
    v38 = off_1E8720A40[v37];
    v39 = strlen(v38);
    v90[0] = v38;
    v90[1] = v39;
    re::DynamicString::operator=(&v57, v90);
  }

  v40 = re::DynamicString::operator=(&v82, &v57);
  v42 = *(a1 + 168);
  v41 = *(a1 + 176);
  if (v41 >= v42)
  {
    v43 = v41 + 1;
    if (v42 < v41 + 1)
    {
      if (*(a1 + 160))
      {
        v44 = 2 * v42;
        if (!v42)
        {
          v44 = 8;
        }

        if (v44 <= v43)
        {
          v45 = v43;
        }

        else
        {
          v45 = v44;
        }

        re::DynamicArray<re::EncodedDrawCallDetails>::setCapacity((a1 + 160), v45);
      }

      else
      {
        re::DynamicArray<re::EncodedDrawCallDetails>::setCapacity((a1 + 160), v43);
        ++*(a1 + 184);
      }
    }

    v41 = *(a1 + 176);
  }

  v46 = *(a1 + 192) + 344 * v41;
  re::DynamicString::DynamicString(v46, &v62);
  re::DynamicString::DynamicString((v46 + 32), &v64);
  re::DynamicString::DynamicString((v46 + 64), &v66);
  v47 = v68;
  *(v46 + 96) = v68;
  if (v47 == 1)
  {
    v48 = v69;
    v49 = v70;
    v50 = v71;
    *(v46 + 152) = v72;
    *(v46 + 136) = v50;
    *(v46 + 120) = v49;
    *(v46 + 104) = v48;
    v51 = v73;
    *(v46 + 156) = v73;
    if (v51 == 1)
    {
      *(v46 + 157) = v74;
    }

    re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v46 + 160, &v75);
  }

  v52 = *v80;
  v53 = *&v80[16];
  *(v46 + 232) = v81;
  *(v46 + 216) = v53;
  *(v46 + 200) = v52;
  re::DynamicString::DynamicString((v46 + 248), &v82);
  v54 = v84;
  *(v46 + 280) = v84;
  if (v54 == 1)
  {
    *(v46 + 288) = v85;
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::DynamicArray(v46 + 296, &v85 + 1);
  }

  *(v46 + 336) = v89;
  ++*(a1 + 176);
  ++*(a1 + 184);
  if (v57 && (v58 & 1) != 0)
  {
    (*(*v57 + 40))();
  }

  if (v84 == 1)
  {
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(&v85 + 8);
  }

  if (v82)
  {
    if (BYTE8(v82))
    {
      (*(*v82 + 40))();
    }

    v82 = 0u;
    v83 = 0u;
  }

  if (v68 == 1 && v75)
  {
    if (v79)
    {
      (*(*v75 + 40))();
    }

    v79 = 0;
    v76 = 0;
    v77 = 0;
    v75 = 0;
    ++v78;
  }

  if (v66)
  {
    if (BYTE8(v66))
    {
      (*(*v66 + 40))();
    }

    v66 = 0u;
    v67 = 0u;
  }

  if (v64)
  {
    if (BYTE8(v64))
    {
      (*(*v64 + 40))();
    }

    v64 = 0u;
    v65 = 0u;
  }

  result = v62;
  if (v62)
  {
    if (v63)
    {
      return (*(*v62 + 40))();
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *>(*(a2 + 32), (*(a2 + 32) + 56 * a1[2]), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = v9 + 56 * v4;
      v11 = a1[4];
      v12 = 56 * v8;
      do
      {
        v13 = v9 + v12;
        v14 = v11 + v12;
        *v14 = *(v9 + v12);
        v15 = *(v9 + v12 + 8);
        *(v14 + 8) = v15;
        if (v15 == 1)
        {
          re::DynamicString::DynamicString((v14 + 16), (v13 + 16));
        }

        v16 = *(v13 + 48);
        *(v14 + 48) = v16;
        if (v16 == 1)
        {
          *(v11 + v12 + 52) = *(v9 + v12 + 52);
        }

        v9 += 56;
        v11 += 56;
      }

      while (v13 + 56 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *>(*(a2 + 32), (*(a2 + 32) + 56 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = -56 * v4 + 56 * v5;
      v7 = (56 * v4 + a1[4] + 16);
      do
      {
        if (*(v7 - 8) == 1)
        {
          re::DynamicString::deinit(v7);
        }

        v7 = (v7 + 56);
        v6 -= 56;
      }

      while (v6);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_22;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
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
LABEL_22:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 56 * v9);
        v11 = (v8 + 32);
        v12 = v7 + 4;
        do
        {
          v13 = v11 - 4;
          *(v12 - 4) = *(v11 - 4);
          v14 = *(v11 - 24);
          *(v12 - 24) = v14;
          if (v14 == 1)
          {
            *(v12 - 1) = 0u;
            *v12 = 0u;
            v12[1] = v11[1];
            v15 = *(v11 - 1);
            *(v12 - 2) = *(v11 - 2);
            *(v11 - 2) = 0;
            v16 = *v11;
            v11[1] = 0;
            v18 = *(v12 - 1);
            v17 = *v12;
            *(v12 - 1) = v15;
            *v12 = v16;
            *(v11 - 1) = v18;
            *v11 = v17;
          }

          v19 = *(v11 + 16);
          *(v12 + 16) = v19;
          if (v19 == 1)
          {
            *(v12 + 5) = *(v11 + 5);
          }

          if (*(v11 - 24) == 1)
          {
            re::DynamicString::deinit((v11 - 2));
          }

          v11 += 7;
          v12 += 7;
        }

        while (v13 + 7 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_22;
    }
  }

  return result;
}

_BYTE *std::__copy_impl::operator()[abi:nn200100]<re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *>(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = a3 + 48;
    v5 = result + 52;
    do
    {
      *(v4 - 48) = *(v5 - 13);
      v6 = v5 - 11;
      result = re::Optional<re::DynamicString>::operator=((v4 - 40), v5 - 44);
      if (*v4)
      {
        if (*(v5 - 1))
        {
          goto LABEL_8;
        }

        *v4 = 0;
      }

      else if (*(v5 - 1))
      {
        *v4 = 1;
LABEL_8:
        *(v4 + 4) = *v5;
      }

      v4 += 56;
      v5 += 14;
    }

    while (v6 + 12 != a2);
  }

  return result;
}

void *re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
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
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 160 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 112);
          *(v11 + 6) = *(v8 + 96);
          *(v11 + 7) = v18;
          *(v11 + 4) = v16;
          *(v11 + 5) = v17;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          LODWORD(v13) = *(v8 + 128);
          *(v11 + 128) = v13;
          if (v13 == 1)
          {
            *(v11 + 9) = *(v8 + 144);
          }

          re::DynamicString::deinit(v8);
          v8 += 160;
          v11 += 20;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_22, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

void *re::DynamicArray<re::EncodedDrawCallDetails>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::EncodedDrawCallDetails>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x158uLL))
        {
          v2 = 344 * a2;
          result = (*(*result + 32))(result, 344 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_26;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 344, a2);
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
LABEL_26:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = 344 * v9;
        v12 = 0uLL;
        do
        {
          v13 = v8 + v10;
          v14 = &v7[v10 / 8];
          *v14 = v12;
          *(v14 + 1) = v12;
          v14[3] = *(v8 + v10 + 24);
          v15 = *(v8 + v10 + 8);
          *v14 = *(v8 + v10);
          *v13 = 0;
          v16 = *(v8 + v10 + 16);
          *(v13 + 24) = 0;
          v18 = v7[v10 / 8 + 1];
          v17 = v7[v10 / 8 + 2];
          v14[1] = v15;
          v14[2] = v16;
          *(v13 + 8) = v18;
          *(v13 + 16) = v17;
          *(v14 + 2) = v12;
          *(v14 + 3) = v12;
          v14[4] = *(v8 + v10 + 32);
          *(v8 + v10 + 32) = 0;
          v14[7] = *(v8 + v10 + 56);
          *(v13 + 56) = 0;
          v20 = v7[v10 / 8 + 5];
          v19 = v7[v10 / 8 + 6];
          v21 = *(v8 + v10 + 48);
          v14[5] = *(v8 + v10 + 40);
          v14[6] = v21;
          *(v13 + 40) = v20;
          *(v13 + 48) = v19;
          *(v14 + 4) = v12;
          *(v14 + 5) = v12;
          v14[8] = *(v8 + v10 + 64);
          *(v8 + v10 + 64) = 0;
          v14[11] = *(v8 + v10 + 88);
          *(v13 + 88) = 0;
          v23 = v7[v10 / 8 + 9];
          v22 = v7[v10 / 8 + 10];
          v24 = *(v8 + v10 + 80);
          v14[9] = *(v8 + v10 + 72);
          v14[10] = v24;
          *(v13 + 72) = v23;
          *(v13 + 80) = v22;
          LODWORD(v22) = *(v8 + v10 + 96);
          *(v14 + 96) = v22;
          if (v22 == 1)
          {
            v25 = *(v13 + 104);
            v26 = *(v13 + 120);
            v27 = *(v13 + 136);
            *(v14 + 38) = *(v13 + 152);
            *(v14 + 17) = v27;
            *(v14 + 15) = v26;
            *(v14 + 13) = v25;
            v28 = *(v13 + 156);
            *(v14 + 156) = v28;
            if (v28 == 1)
            {
              BYTE5(v7[v10 / 8 + 19]) = *(v8 + v10 + 157);
            }

            v29 = &v7[v10 / 8];
            v30 = v8 + v10;
            v29[24] = 0;
            v29[21] = 0;
            v29[22] = 0;
            v29[20] = 0;
            *(v29 + 46) = 0;
            v31 = *(v8 + v10 + 168);
            v29[20] = *(v8 + v10 + 160);
            v29[21] = v31;
            *(v30 + 160) = 0;
            *(v30 + 168) = 0;
            v32 = v7[v10 / 8 + 22];
            v29[22] = *(v8 + v10 + 176);
            *(v30 + 176) = v32;
            v33 = v7[v10 / 8 + 24];
            v29[24] = *(v8 + v10 + 192);
            *(v30 + 192) = v33;
            *(v30 + 184) = *(v8 + v10 + 184) + 1;
            *(v29 + 46) = LODWORD(v7[v10 / 8 + 23]) + 1;
          }

          v34 = *(v13 + 200);
          v35 = *(v13 + 216);
          v36 = *(v13 + 232);
          *(v14 + 31) = v12;
          v37 = v14 + 31;
          *(v37 - 2) = v35;
          *(v37 - 1) = v36;
          *(v37 - 3) = v34;
          *(v37 + 1) = v12;
          *v37 = *(v13 + 248);
          *(v13 + 248) = 0;
          v37[3] = *(v13 + 272);
          *(v13 + 272) = 0;
          v39 = v37[1];
          v38 = v37[2];
          v40 = *(v13 + 264);
          v37[1] = *(v13 + 256);
          v37[2] = v40;
          *(v13 + 256) = v39;
          *(v13 + 264) = v38;
          LODWORD(v38) = *(v13 + 280);
          *(v37 + 32) = v38;
          if (v38 == 1)
          {
            v41 = v8 + v10;
            v42 = *(v8 + v10 + 288);
            v43 = &v7[v10 / 8];
            v43[41] = 0;
            v43[36] = v42;
            v43[37] = 0;
            v43[38] = 0;
            v43[39] = 0;
            *(v43 + 80) = 0;
            v44 = *(v8 + v10 + 304);
            v43[37] = *(v8 + v10 + 296);
            v43[38] = v44;
            *(v41 + 296) = 0;
            *(v41 + 304) = 0;
            v45 = v7[v10 / 8 + 39];
            v43[39] = *(v8 + v10 + 312);
            *(v41 + 312) = v45;
            v46 = v7[v10 / 8 + 41];
            v43[41] = *(v8 + v10 + 328);
            *(v41 + 328) = v46;
            *(v41 + 320) = *(v8 + v10 + 320) + 1;
            *(v43 + 80) = LODWORD(v7[v10 / 8 + 40]) + 1;
            LOBYTE(v46) = *(v13 + 280);
            *(v43 + 336) = *(v8 + v10 + 336);
            if (v46)
            {
              re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(v41 + 296);
            }
          }

          else
          {
            LOBYTE(v7[v10 / 8 + 42]) = *(v8 + v10 + 336);
          }

          re::DynamicString::deinit((v13 + 248));
          if (*(v13 + 96) == 1)
          {
            re::DynamicArray<unsigned long>::deinit(v8 + v10 + 160);
          }

          re::DynamicString::deinit((v8 + v10 + 64));
          re::DynamicString::deinit((v8 + v10 + 32));
          re::DynamicString::deinit((v8 + v10));
          v10 += 344;
          v12 = 0uLL;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_26;
    }
  }

  return result;
}

void *re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + (v6 << 6) + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + (v6 << 6)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 6) + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + (v8 << 6)) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          *&v30[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v13 = *&v30[32];
          *(a1 + 24) = v14;
          ++*&v30[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 32;
            do
            {
              if ((*(*&v30[16] + v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(*&v30[16] + v17 + 24) % *(a1 + 24));
                v19 = *&v30[16] + v17;
                *(v18 + 4) = *(*&v30[16] + v17 - 28);
                v20 = *(v19 - 24);
                *(v18 + 48) = 0;
                *(v18 + 8) = v20;
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                v21 = *(v19 - 8);
                *(v18 + 16) = *(v19 - 16);
                *(v18 + 24) = v21;
                *(v19 - 16) = 0;
                *(v19 - 8) = 0;
                v22 = *(v18 + 32);
                *(v18 + 32) = *v19;
                *v19 = v22;
                v23 = *(v18 + 48);
                *(v18 + 48) = *(v19 + 16);
                *(v19 + 16) = v23;
                ++*(v19 + 8);
                ++*(v18 + 40);
                v15 = *&v30[32];
              }

              ++v16;
              v17 += 64;
            }

            while (v16 < v15);
          }

          re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + (v5 << 6));
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + (v5 << 6));
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + (v5 << 6);
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v27 + 56) = a3;
  *(v28 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v24 + (v5 << 6);
}

double re::ConstantSetupHelper::populateInstanceConstants(uint64_t a1, uint64_t a2, float32x4_t *a3, int a4, float a5)
{
  v12 = *a2;
  v8 = vsubq_f32(*(a2 + 48), *a3);
  v8.i32[3] = HIDWORD(*(a2 + 48));
  *a1 = *a2;
  *(a1 + 16) = v12.columns[1];
  *(a1 + 32) = v12.columns[2];
  *(a1 + 48) = v8;
  v13 = __invert_f3(v12);
  v9 = vdupq_laneq_s32(v13.columns[0], 2);
  *(a1 + 72) = v13.columns[2].i32[0];
  v10 = vzip1q_s32(v13.columns[0], v13.columns[1]).u64[0];
  *&result = vtrn2q_s32(v13.columns[0], v13.columns[1]).u64[0];
  *(a1 + 64) = v10;
  *(a1 + 88) = v13.columns[2].i32[1];
  *(a1 + 80) = result;
  *(a1 + 104) = v13.columns[2].i32[2];
  *(a1 + 96) = vzip1q_s32(v9, vdupq_laneq_s32(v13.columns[1], 2)).u64[0];
  *(a1 + 116) = a5;
  *(a1 + 120) = a4;
  return result;
}

double re::ConstantSetupHelper::populateViewConstants(uint64_t a1, float32x4_t *a2, float32x4_t *a3, _OWORD *a4, float32x4_t *a5, uint64_t a6, int a7, uint64_t a8, int32x2_t a9, int32x2_t a10, int32x2_t a11, unsigned __int8 a12, int a13, _OWORD *a14)
{
  v22 = 0;
  v23 = *a5;
  v23.i32[3] = 1.0;
  v24 = *a2;
  v25 = a2[1];
  v26 = a2[2];
  v27 = a2[3];
  v77 = xmmword_1E3047670;
  v78 = xmmword_1E3047680;
  v79 = xmmword_1E30476A0;
  v80 = v23;
  do
  {
    *(&v81 + v22) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v77 + v22))), v25, *(&v77 + v22), 1), v26, *(&v77 + v22), 2), v27, *(&v77 + v22), 3);
    v22 += 16;
  }

  while (v22 != 64);
  v28 = v82;
  v29 = v83;
  v30 = v84;
  *a1 = v81;
  *(a1 + 16) = v28;
  *(a1 + 32) = v29;
  *(a1 + 48) = v30;
  v31 = *a3;
  v32 = a3[1];
  v33 = a3[3];
  *(a1 + 544) = a3[2];
  *(a1 + 560) = v33;
  *(a1 + 512) = v31;
  *(a1 + 528) = v32;
  v85 = __invert_f4(*a3->f32);
  v34 = 0;
  *(a1 + 640) = v85;
  v35 = *a3;
  v36 = a3[1];
  v37 = a3[2];
  v38 = a3[3];
  v39 = *(a1 + 16);
  v40 = *(a1 + 32);
  v41 = *(a1 + 48);
  v77 = *a1;
  v78 = v39;
  v79 = v40;
  v80 = v41;
  do
  {
    *(&v81 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*(&v77 + v34))), v36, *(&v77 + v34), 1), v37, *(&v77 + v34), 2), v38, *(&v77 + v34), 3);
    v34 += 16;
  }

  while (v34 != 64);
  v42 = v82;
  v43 = v83;
  v44 = v84;
  *(a1 + 256) = v81;
  *(a1 + 272) = v42;
  *(a1 + 288) = v43;
  *(a1 + 304) = v44;
  v86 = __invert_f4(*a2->f32);
  *(a1 + 768) = vsubq_f32(v86.columns[3], *a5);
  *(a1 + 832) = *a4;
  *v86.columns[1].f32 = vcvt_f32_s32(a6);
  __asm { FMOV            V8.2S, #1.0 }

  *&v86.columns[1].u32[2] = vdiv_f32(_D8, *v86.columns[1].f32);
  *(a1 + 864) = *a4;
  *(a1 + 880) = v86.columns[1];
  if (a7 >= 2)
  {
    v50 = 0;
    v51 = *a5;
    v51.i32[3] = 1.0;
    v52 = a2[4];
    v53 = a2[5];
    v54 = a2[6];
    v55 = a2[7];
    v77 = xmmword_1E3047670;
    v78 = xmmword_1E3047680;
    v79 = xmmword_1E30476A0;
    v80 = v51;
    do
    {
      *(&v81 + v50) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v52, COERCE_FLOAT(*(&v77 + v50))), v53, *(&v77 + v50), 1), v54, *(&v77 + v50), 2), v55, *(&v77 + v50), 3);
      v50 += 16;
    }

    while (v50 != 64);
    v56 = v82;
    v57 = v83;
    v58 = v84;
    *(a1 + 64) = v81;
    *(a1 + 80) = v56;
    *(a1 + 96) = v57;
    *(a1 + 112) = v58;
    v59 = a3[4];
    v60 = a3[5];
    v61 = a3[7];
    *(a1 + 608) = a3[6];
    *(a1 + 624) = v61;
    *(a1 + 576) = v59;
    *(a1 + 592) = v60;
    v87 = __invert_f4(*a3[4].f32);
    v62 = 0;
    *(a1 + 704) = v87;
    v63 = a3[4];
    v64 = a3[5];
    v65 = a3[6];
    v66 = a3[7];
    v67 = *(a1 + 80);
    v68 = *(a1 + 96);
    v69 = *(a1 + 112);
    v77 = *(a1 + 64);
    v78 = v67;
    v79 = v68;
    v80 = v69;
    do
    {
      *(&v81 + v62) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*(&v77 + v62))), v64, *(&v77 + v62), 1), v65, *(&v77 + v62), 2), v66, *(&v77 + v62), 3);
      v62 += 16;
    }

    while (v62 != 64);
    v70 = v82;
    v71 = v83;
    v72 = v84;
    *(a1 + 320) = v81;
    *(a1 + 336) = v70;
    *(a1 + 352) = v71;
    *(a1 + 368) = v72;
    v88 = __invert_f4(*a2[4].f32);
    *(a1 + 784) = vsubq_f32(v88.columns[3], *a5);
    *(a1 + 848) = a4[1];
  }

  *(a1 + 912) = *(a8 + 4);
  *(a1 + 936) = *(a8 + 48);
  v73 = *(a8 + 36);
  HIDWORD(v73) = *a8;
  *(a1 + 928) = v73;
  *(a1 + 940) = a7;
  *(a1 + 944) = a12;
  *(a1 + 952) = a13;
  *&v74 = vcvt_f32_s32(a9);
  *(&v74 + 1) = vdiv_f32(_D8, *&v74);
  *(a1 + 896) = v74;
  *&v74 = vcvt_f32_s32(a10);
  *(&v74 + 1) = vdiv_f32(_D8, *&v74);
  *&v75 = vcvt_f32_s32(a11);
  *(&v75 + 1) = vdiv_f32(_D8, *&v75);
  *(a1 + 800) = v74;
  *(a1 + 816) = v75;
  *(a1 + 960) = *a14;
  *(a1 + 976) = 0;
  result = 0.0;
  *(a1 + 992) = 0u;
  return result;
}

void re::DebugSettingsManager::init(re::DebugSettingsManager *this)
{
  re::DebugSettingsManager::registerSetting(this, 0x1E695FCE1494EB4ALL, "SampleValue1");
  re::DebugSettingsManager::registerSetting(this, 0x1E695FCE1494EB4BLL, "SampleValue2");
  re::DebugSettingsManager::registerSetting(this, 0x1E695FCE1494EB4CLL, "SampleValue3");
  re::DebugSettingsManager::registerSetting(this, 0x4AD3ADA1EAB6A46BLL, "overrides:enableHeadPoseLateLatching");
  re::DebugSettingsManager::registerSetting(this, 0x25B9E8AA8E91FF52, "overrides:useLegacyHeadPoseLateLatching");
  re::DebugSettingsManager::registerSetting(this, 0x15F23EC33CDB440FLL, "overrides:enableAnchorLateLatching");
  re::DebugSettingsManager::registerSetting(this, 0x4EB14AA23FAD13D1, "overrides:enableVisualDepthLateLatching");
  re::DebugSettingsManager::registerSetting(this, 0x377411C73B00B0F8, "overrides:enableclipping");
  re::DebugSettingsManager::registerSetting(this, 0x2AB792EDE7CD178CLL, "overrides:enablelightspill");
  re::DebugSettingsManager::registerSetting(this, 0x2C3D5D608048D8D0, "overrides:enablemeshshadows");
  re::DebugSettingsManager::registerSetting(this, 0x1C5ED07EF8B1877CLL, "overrides:enablemsaa");
  re::DebugSettingsManager::registerSetting(this, 0x1ABF41F98C193A4CLL, "overrides:msaasamplecount");
  re::DebugSettingsManager::registerSetting(this, 0x7DA8E7CFE5E8985DLL, "overrides:enableshadows");
  re::DebugSettingsManager::registerSetting(this, 0x1C60553B9660D93ALL, "overrides:usepbrlite");
  re::DebugSettingsManager::registerSetting(this, 0x3FD3AE66E8662563, "overrides:disablefrustumculling");
  re::DebugSettingsManager::registerSetting(this, 0x7A9F53C31F88016FLL, "overrides:disablelightfrustumculling");
  re::DebugSettingsManager::registerSetting(this, 0x20BF5606F6EDF2D7, "clipping:featherOverride");
  re::DebugSettingsManager::registerSetting(this, 0x7AF1C433BF713161, "clipping:disableDepthPrePass");
  re::DebugSettingsManager::registerSetting(this, 0x2C7C0E471869E350, "colorpipe:forcePreBlend");
  re::DebugSettingsManager::registerSetting(this, 0x630A53FA5817C202, "colorpipe:forceColorGamutConvert");
  re::DebugSettingsManager::registerSetting(this, 0x502716179914D977, "colorpipe:workingColorGamut");
  re::DebugSettingsManager::registerSetting(this, 0x38C545178E73EAF7, "colorpipe:targetDisplayColorGamut");
  re::DebugSettingsManager::registerSetting(this, 0x6CC2286D20547545, "colorpipe:forcePosBlendLUTBake");
  re::DebugSettingsManager::registerSetting(this, 0x175E06519841ED78, "colorpipe:disableContentAwareTonemapping");
  re::DebugSettingsManager::registerSetting(this, 0x2F894448D9085DE7, "colorpipe:imageStatisticsFrequency");
  re::DebugSettingsManager::registerSetting(this, 0x2554488D45CBA96BLL, "colorpipe:colorRangeScaler");
  re::DebugSettingsManager::registerSetting(this, 0x52774F1B8DD45737, "colorpipe:disablePreBlendLUTBake");
  re::DebugSettingsManager::registerSetting(this, 0x1E67F4ED4713694ALL, "colorpipe:trueToneStrength");
  re::DebugSettingsManager::registerSetting(this, 0x7F70D00B486A24A2, "colorpipe:wpcStrength");
  re::DebugSettingsManager::registerSetting(this, 0x1EAB16688C877DF0, "colorpipe:tonemapOverrideMode");
  re::DebugSettingsManager::registerSetting(this, 0x6D988F94BB033466, "colorpipe:tonemapGamma");
  re::DebugSettingsManager::registerSetting(this, 0x32978C057688C12ALL, "colorpipe:tonemapToeStrength");
  re::DebugSettingsManager::registerSetting(this, 0x48E8FB59BA9AD20FLL, "colorpipe:tonemapToeLength");
  re::DebugSettingsManager::registerSetting(this, 0x25FBDC400F30F7E2, "colorpipe:tonemapShoulderStrength");
  re::DebugSettingsManager::registerSetting(this, 0x5637679686D156C7, "colorpipe:tonemapShoulderLength");
  re::DebugSettingsManager::registerSetting(this, 0x5D9EB0C2C9F3DCD2, "colorpipe:tonemapShoulderAngle");
  re::DebugSettingsManager::registerSetting(this, 0x4CACACD82121E5E3, "colorpipe:tonemapContrast");
  re::DebugSettingsManager::registerSetting(this, 0x4CACACE6D0204FE8, "colorpipe:tonemapExposure");
  re::DebugSettingsManager::registerSetting(this, 0x6679CD83635919C5, "colorpipe:tonemapEnableExposureCompensation");
  re::DebugSettingsManager::registerSetting(this, 0x428391350F7F6E94, "colorpipe:tonemapExposureCompensationInputScalar");
  re::DebugSettingsManager::registerSetting(this, 0x11A9D51E128E0A5FLL, "colorpipe:tonemapExposureCompensationTargetScalar");
  re::DebugSettingsManager::registerSetting(this, 0x3DEA5983EAEB4337, "colorpipe:rabEnabled");
  re::DebugSettingsManager::registerSetting(this, 0x1276DF3FA3527408, "colorpipe:rabSystemScalarMode");
  re::DebugSettingsManager::registerSetting(this, 0x3DEA59856A607C24, "colorpipe:rabLuxGain");
  re::DebugSettingsManager::registerSetting(this, 0x64059CB469905377, "colorpipe:rabMinEnvironmentScalar");
  re::DebugSettingsManager::registerSetting(this, 0x4B4DDC3FA9F01AA5, "colorpipe:rabMaxEnvironmentScalar");
  re::DebugSettingsManager::registerSetting(this, 0x6D2A866E39BA831DLL, "colorpipe:imageStatisticsMin");
  re::DebugSettingsManager::registerSetting(this, 0x6D2A866E39BA822FLL, "colorpipe:imageStatisticsMax");
  re::DebugSettingsManager::registerSetting(this, 0x38264758FD95D05ALL, "colorpipe:imageStatisticsMean");
  re::DebugSettingsManager::registerSetting(this, 0x47B1D50FFA746247, "colorpipe:imageStatisticsStdDev");
  re::DebugSettingsManager::registerSetting(this, 0x1D1D63010E18A40ALL, "colorpipe:clippingPointLux");
  re::DebugSettingsManager::registerSetting(this, 0x5989E972902BAB62, "colorpipe:enableISPTonemapping");
  re::DebugSettingsManager::registerSetting(this, 0x9C4892E9E03230CLL, "blur:passthroughTextureWidth");
  re::DebugSettingsManager::registerSetting(this, 0x220D61ADD8F199ACLL, "blur:VCATextureWidth");
  re::DebugSettingsManager::registerSetting(this, 0x1FB904B04FA1795DLL, "blur:VCABlurSigma");
  re::DebugSettingsManager::registerSetting(this, 0x5D4B845A085A0FF7, "blur:VCABlurExpansion");
  re::DebugSettingsManager::registerSetting(this, 0x60A28BD5A634C468, "blur:passthroughMaterialSkipCount");
  re::DebugSettingsManager::registerSetting(this, 0x75DFB04BBB876FC1, "blur:passthroughMaterialSkipThresholdDeltaTime");
  re::DebugSettingsManager::registerSetting(this, 0x12122C2FF38B84B5, "blur:filter.luminance");
  re::DebugSettingsManager::registerSetting(this, 0x5B6BF0ADE3CC67A5, "blur:filter.contrast");
  re::DebugSettingsManager::registerSetting(this, 0x3033F2CDEF57B3B5, "blur:filter.saturation");
  re::DebugSettingsManager::registerSetting(this, 0x2AE6078D60D13CLL, "blur:taaMixValue.passthrough");
  re::DebugSettingsManager::registerSetting(this, 0x387CA5FE27B41EFCLL, "blur:taaMixValue.vca");
  re::DebugSettingsManager::registerSetting(this, 0x9D4C53427E48C13, "blur:enableReprojectionLerping");
  re::DebugSettingsManager::registerSetting(this, 0x19CC93554F9D8913, "blur:showUnblurredPassthrough");
  re::DebugSettingsManager::registerSetting(this, 0x1B6C5B035E27EC2ELL, "blur:showUnblurredVC");
  re::DebugSettingsManager::registerSetting(this, 0x71954FC3B18DE725, "overdraw:enable");
  re::DebugSettingsManager::registerSetting(this, 0x3ED82E3206C6B68DLL, "fallbackRenderingMode");
  re::DebugSettingsManager::registerSetting(this, 0x2BEEBA4D72CED6EALL, "overrides:enableRenderOnTop");
  re::DebugSettingsManager::registerSetting(this, 0x54F6EAFC70854159, "renderOnTop:debug");
  re::DebugSettingsManager::registerSetting(this, 0x5CB05A5A574850FDLL, "meshnode:debugMeshPartBounds");
  re::DebugSettingsManager::registerSetting(this, 0x6B60467DFF21ACC2, "meshnode:debugDrawOrder");
  re::DebugSettingsManager::registerSetting(this, 0x794CBF01D1C56756, "meshsorting:enableDepthBias");
  re::DebugSettingsManager::registerSetting(this, 0x2CB0643D1840A119, "meshsorting:visualizeRPGSortPoints");
  re::DebugSettingsManager::registerSetting(this, 0x1E315F23B2A11300, "meshshadow:visualizeClusters");
  re::DebugSettingsManager::registerSetting(this, 0x136E7B3046509F21, "meshshadow:visualizeClusterInfo");
  re::DebugSettingsManager::registerSetting(this, 0x1E315F6179C04EA1, "meshshadow:visualizeMatrices");
  re::DebugSettingsManager::registerSetting(this, 0x472AE20CAF4B812CLL, "meshshadow:visualizeShadows");
  re::DebugSettingsManager::registerSetting(this, 0x2B96074AB66EFC9ELL, "meshshadow:visualizePlanes");
  re::DebugSettingsManager::registerSetting(this, 0x2D1098146373A2BCLL, "meshshadow:visualizeCullBoundingBoxes");
  re::DebugSettingsManager::registerSetting(this, 0x242CDC5539CF210ELL, "meshshadow:enableShadowFlattening");
  re::DebugSettingsManager::registerSetting(this, 0x16A242FF8584ABC0, "meshshadow:enableMeshDepthFallbackWhenFlattening");
  re::DebugSettingsManager::registerSetting(this, 0x2E961E6192BE15DDLL, "meshshadow:enableShadowOcclusion");
  re::DebugSettingsManager::registerSetting(this, 0xA57CE2FDA58C3E7, "meshshadow:shadowOcclusionTextureResolution");
  re::DebugSettingsManager::registerSetting(this, 0x472AE20BF3D51A20, "meshshadow:visualizeOverlap");
  re::DebugSettingsManager::registerSetting(this, 0x458046F7842C25BDLL, "meshshadow:enableMaxBlend");
  re::DebugSettingsManager::registerSetting(this, 0x5AA655D01423B2B8, "meshshadow:visualizeDepthPrepass");
  re::DebugSettingsManager::registerSetting(this, 0x379650D977CA4D1BLL, "meshshadow:textureGenerationNominalDequeueSize");
  re::DebugSettingsManager::registerSetting(this, 0x568D19638A7BE013, "meshshadow:textureGenerationWorkDivisionFactor");
  re::DebugSettingsManager::registerSetting(this, 0x5F74E73501260C1CLL, "meshshadow:textureGenerationEnableViewFrustumCulling");
  re::DebugSettingsManager::registerSetting(this, 0x40135D59ACCBFE38, "meshshadow:enableSUMeshCullingPerCaster");
  re::DebugSettingsManager::registerSetting(this, 0x56C83116F1263190, "meshshadow:enableShadow");
  re::DebugSettingsManager::registerSetting(this, 0x7F88A24B37E0733FLL, "meshshadow:enableWallShadowsBreakthrough");
  re::DebugSettingsManager::registerSetting(this, 0x2F426543A7EF4E28, "meshshadow:uiWallShadowIntensity");
  re::DebugSettingsManager::registerSetting(this, 0x12301713BFF1C3D1, "perceptualBlendingMode");
  re::DebugSettingsManager::registerSetting(this, 0x643E337A47167255, "opensky:drawPlane");
  re::DebugSettingsManager::registerSetting(this, 0x6F31DA471DA5C50FLL, "globaldirectionallight");
  re::DebugSettingsManager::registerSetting(this, 0x5836EF7F6CEC8E5CLL, "iblshadow:distanceforglobaldirectionallight");
  re::DebugSettingsManager::registerSetting(this, 0x70AA9AC19D8788F9, "imageBasedReflectionSystem:debugLog");
  re::DebugSettingsManager::registerSetting(this, 0x3FDAE28DD02622EBLL, "imageBasedLight:systemIBLIntensity");
  re::DebugSettingsManager::registerSetting(this, 0x1ADFD9400DB95D0ALL, "environment:visualizeFeatherRegion");
  re::DebugSettingsManager::registerSetting(this, 0x1D04501948780AE9, "environment:applyColorAdjustment");
  re::DebugSettingsManager::registerSetting(this, 0x12B330E83CA6F40ALL, "environment:colorAdjustGain");
  re::DebugSettingsManager::registerSetting(this, 0x32AA97CBBCA6165ELL, "environment:colorAdjustOffset");
  re::DebugSettingsManager::registerSetting(this, 0x43B2EC1F58379C7CLL, "environment:colorAdjustGamma");
  re::DebugSettingsManager::registerSetting(this, 0x2BC5F7FD468DE8B3, "overrides:enableDepthDither");
  re::DebugSettingsManager::registerSetting(this, 0x2117A23260761480, "drawcallrecording:takeSnapshotNow");
  re::DebugSettingsManager::registerSetting(this, 0xC27DA287CEDDB9CLL, "drawcallrecording:record");
  v2 = re::internal::compileTimeHornerHash<54ul>(0, 0, 53);
  re::DebugSettingsManager::registerSetting(this, v2 & 0x7FFFFFFFFFFFFFFFLL, "overrides:enableStaticOcclusionFadeTechniquesOverride");
  v3 = re::internal::compileTimeHornerHash<49ul>(0, 0, 48);
  re::DebugSettingsManager::registerSetting(this, v3 & 0x7FFFFFFFFFFFFFFFLL, "overrides:enableStaticOcclusionShaderCalculation");
  v4 = re::internal::compileTimeHornerHash<15ul>(31, "overrides:enableRendersToFarPlane", 0, 0, 33);
  re::DebugSettingsManager::registerSetting(this, v4 & 0x7FFFFFFFFFFFFFFFLL, "overrides:enableRendersToFarPlane");
  v5 = re::internal::compileTimeHornerHash<53ul>(0, 0, 52);
  re::DebugSettingsManager::registerSetting(this, v5 & 0x7FFFFFFFFFFFFFFFLL, "overrides:enableStaticOcclusionFarDistanceMitigation");
  *(this + 112) = 1;
}

void re::DebugSettingsManager::registerSetting(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 2 * a2;
  v9 = a3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = 0xBF58476D1CE4E5B9 * (a2 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * a2) >> 31));
  v5 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, &v8, (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v6 = re::HashTable<re::StringID,re::Optional<std::variant<int,float,BOOL>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
    v7 = v9;
    *(v6 + 8) = v8;
    *(v6 + 16) = v7;
    *(v6 + 24) = 0;
    ++*(a1 + 40);
  }

  else if (v8)
  {
    if (v8)
    {
    }
  }
}

uint64_t re::HashTable<re::StringID,re::Optional<std::variant<int,float,BOOL>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          if (v14)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = 0xBF58476D1CE4E5B9 * ((*(v13 + v16 + 8) >> 31) ^ (*(v13 + v16 + 8) >> 1));
                v20 = re::HashTable<re::StringID,re::Optional<std::variant<int,float,BOOL>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31)) % *(a1 + 24));
                v21 = *(v18 + 8);
                *(v20 + 8) = *(v20 + 8) & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                *(v20 + 8) = *(v18 + 8) & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                *(v20 + 16) = *(v18 + 16);
                *(v18 + 8) = 0;
                *(v18 + 16) = &str_67;
                v13 = *&v30[16];
                v22 = *&v30[16] + v16;
                v23 = *(*&v30[16] + v16 + 24);
                *(v20 + 24) = v23;
                if (v23 == 1)
                {
                  *(v20 + 28) = *(v22 + 28);
                }
              }

              ++v17;
              v16 += 40;
            }

            while (v17 < *&v30[32]);
          }

          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 40 * v4);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 40 * v4);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = 40 * v4;
  *(v24 + v27) = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *(v24 + v27) = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v24 + 40 * v4;
}

uint64_t re::internal::compileTimeHornerHash<54ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aOverridesEnabl_9[a2] + 887503681 * aOverridesEnabl_9[a2 + 1] + 28629151 * aOverridesEnabl_9[a2 + 2] + 923521 * aOverridesEnabl_9[a2 + 3] + 29791 * aOverridesEnabl_9[a2 + 4] + 961 * aOverridesEnabl_9[a2 + 5] - aOverridesEnabl_9[a2 + 6] + 32 * aOverridesEnabl_9[a2 + 6];
          v4 = a2 + 7;
          return v6 + aOverridesEnabl_9[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aOverridesEnabl_9[a2] + 0x667E12CDFLL * aOverridesEnabl_9[a2 + 1] + 887503681 * aOverridesEnabl_9[a2 + 2] + 28629151 * aOverridesEnabl_9[a2 + 3] + 923521 * aOverridesEnabl_9[a2 + 4] + 29791 * aOverridesEnabl_9[a2 + 5] + 961 * aOverridesEnabl_9[a2 + 6] - aOverridesEnabl_9[a2 + 7] + 32 * aOverridesEnabl_9[a2 + 7];
          v4 = a2 + 8;
          return v6 + aOverridesEnabl_9[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aOverridesEnabl_9[a2] + 0xC694446F01 * aOverridesEnabl_9[a2 + 1] + 0x667E12CDFLL * aOverridesEnabl_9[a2 + 2] + 887503681 * aOverridesEnabl_9[a2 + 3] + 28629151 * aOverridesEnabl_9[a2 + 4] + 923521 * aOverridesEnabl_9[a2 + 5] + 29791 * aOverridesEnabl_9[a2 + 6] + 961 * aOverridesEnabl_9[a2 + 7] - aOverridesEnabl_9[a2 + 8] + 32 * aOverridesEnabl_9[a2 + 8];
          v4 = a2 + 9;
          return v6 + aOverridesEnabl_9[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aOverridesEnabl_9[a2] + 29791 * aOverridesEnabl_9[a2 + 1] + 961 * aOverridesEnabl_9[a2 + 2] - aOverridesEnabl_9[a2 + 3] + 32 * aOverridesEnabl_9[a2 + 3];
          v4 = a2 + 4;
          return v6 + aOverridesEnabl_9[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aOverridesEnabl_9[a2] + 923521 * aOverridesEnabl_9[a2 + 1] + 29791 * aOverridesEnabl_9[a2 + 2] + 961 * aOverridesEnabl_9[a2 + 3] - aOverridesEnabl_9[a2 + 4] + 32 * aOverridesEnabl_9[a2 + 4];
          v4 = a2 + 5;
          return v6 + aOverridesEnabl_9[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aOverridesEnabl_9[a2] + 28629151 * aOverridesEnabl_9[a2 + 1] + 923521 * aOverridesEnabl_9[a2 + 2] + 29791 * aOverridesEnabl_9[a2 + 3] + 961 * aOverridesEnabl_9[a2 + 4] - aOverridesEnabl_9[a2 + 5] + 32 * aOverridesEnabl_9[a2 + 5];
          v4 = a2 + 6;
          return v6 + aOverridesEnabl_9[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aOverridesEnabl_9[a2] + 32 * aOverridesEnabl_9[a2];
        v4 = a2 + 1;
        return v6 + aOverridesEnabl_9[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aOverridesEnabl_9[a2] - aOverridesEnabl_9[a2 + 1] + 32 * aOverridesEnabl_9[a2 + 1];
        v4 = a2 + 2;
        return v6 + aOverridesEnabl_9[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aOverridesEnabl_9[a2] + 961 * aOverridesEnabl_9[a2 + 1] - aOverridesEnabl_9[a2 + 2] + 32 * aOverridesEnabl_9[a2 + 2];
        v4 = a2 + 3;
        return v6 + aOverridesEnabl_9[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aOverridesEnabl_9[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<54ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<54ul>(aOverridesEnabl_9[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

uint64_t re::internal::compileTimeHornerHash<49ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aOverridesEnabl_10[a2] + 887503681 * aOverridesEnabl_10[a2 + 1] + 28629151 * aOverridesEnabl_10[a2 + 2] + 923521 * aOverridesEnabl_10[a2 + 3] + 29791 * aOverridesEnabl_10[a2 + 4] + 961 * aOverridesEnabl_10[a2 + 5] - aOverridesEnabl_10[a2 + 6] + 32 * aOverridesEnabl_10[a2 + 6];
          v4 = a2 + 7;
          return v6 + aOverridesEnabl_10[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aOverridesEnabl_10[a2] + 0x667E12CDFLL * aOverridesEnabl_10[a2 + 1] + 887503681 * aOverridesEnabl_10[a2 + 2] + 28629151 * aOverridesEnabl_10[a2 + 3] + 923521 * aOverridesEnabl_10[a2 + 4] + 29791 * aOverridesEnabl_10[a2 + 5] + 961 * aOverridesEnabl_10[a2 + 6] - aOverridesEnabl_10[a2 + 7] + 32 * aOverridesEnabl_10[a2 + 7];
          v4 = a2 + 8;
          return v6 + aOverridesEnabl_10[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aOverridesEnabl_10[a2] + 0xC694446F01 * aOverridesEnabl_10[a2 + 1] + 0x667E12CDFLL * aOverridesEnabl_10[a2 + 2] + 887503681 * aOverridesEnabl_10[a2 + 3] + 28629151 * aOverridesEnabl_10[a2 + 4] + 923521 * aOverridesEnabl_10[a2 + 5] + 29791 * aOverridesEnabl_10[a2 + 6] + 961 * aOverridesEnabl_10[a2 + 7] - aOverridesEnabl_10[a2 + 8] + 32 * aOverridesEnabl_10[a2 + 8];
          v4 = a2 + 9;
          return v6 + aOverridesEnabl_10[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aOverridesEnabl_10[a2] + 29791 * aOverridesEnabl_10[a2 + 1] + 961 * aOverridesEnabl_10[a2 + 2] - aOverridesEnabl_10[a2 + 3] + 32 * aOverridesEnabl_10[a2 + 3];
          v4 = a2 + 4;
          return v6 + aOverridesEnabl_10[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aOverridesEnabl_10[a2] + 923521 * aOverridesEnabl_10[a2 + 1] + 29791 * aOverridesEnabl_10[a2 + 2] + 961 * aOverridesEnabl_10[a2 + 3] - aOverridesEnabl_10[a2 + 4] + 32 * aOverridesEnabl_10[a2 + 4];
          v4 = a2 + 5;
          return v6 + aOverridesEnabl_10[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aOverridesEnabl_10[a2] + 28629151 * aOverridesEnabl_10[a2 + 1] + 923521 * aOverridesEnabl_10[a2 + 2] + 29791 * aOverridesEnabl_10[a2 + 3] + 961 * aOverridesEnabl_10[a2 + 4] - aOverridesEnabl_10[a2 + 5] + 32 * aOverridesEnabl_10[a2 + 5];
          v4 = a2 + 6;
          return v6 + aOverridesEnabl_10[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aOverridesEnabl_10[a2] + 32 * aOverridesEnabl_10[a2];
        v4 = a2 + 1;
        return v6 + aOverridesEnabl_10[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aOverridesEnabl_10[a2] - aOverridesEnabl_10[a2 + 1] + 32 * aOverridesEnabl_10[a2 + 1];
        v4 = a2 + 2;
        return v6 + aOverridesEnabl_10[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aOverridesEnabl_10[a2] + 961 * aOverridesEnabl_10[a2 + 1] - aOverridesEnabl_10[a2 + 2] + 32 * aOverridesEnabl_10[a2 + 2];
        v4 = a2 + 3;
        return v6 + aOverridesEnabl_10[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aOverridesEnabl_10[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<49ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<49ul>(aOverridesEnabl_10[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

uint64_t re::internal::compileTimeHornerHash<53ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aOverridesEnabl_12[a2] + 887503681 * aOverridesEnabl_12[a2 + 1] + 28629151 * aOverridesEnabl_12[a2 + 2] + 923521 * aOverridesEnabl_12[a2 + 3] + 29791 * aOverridesEnabl_12[a2 + 4] + 961 * aOverridesEnabl_12[a2 + 5] - aOverridesEnabl_12[a2 + 6] + 32 * aOverridesEnabl_12[a2 + 6];
          v4 = a2 + 7;
          return v6 + aOverridesEnabl_12[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aOverridesEnabl_12[a2] + 0x667E12CDFLL * aOverridesEnabl_12[a2 + 1] + 887503681 * aOverridesEnabl_12[a2 + 2] + 28629151 * aOverridesEnabl_12[a2 + 3] + 923521 * aOverridesEnabl_12[a2 + 4] + 29791 * aOverridesEnabl_12[a2 + 5] + 961 * aOverridesEnabl_12[a2 + 6] - aOverridesEnabl_12[a2 + 7] + 32 * aOverridesEnabl_12[a2 + 7];
          v4 = a2 + 8;
          return v6 + aOverridesEnabl_12[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aOverridesEnabl_12[a2] + 0xC694446F01 * aOverridesEnabl_12[a2 + 1] + 0x667E12CDFLL * aOverridesEnabl_12[a2 + 2] + 887503681 * aOverridesEnabl_12[a2 + 3] + 28629151 * aOverridesEnabl_12[a2 + 4] + 923521 * aOverridesEnabl_12[a2 + 5] + 29791 * aOverridesEnabl_12[a2 + 6] + 961 * aOverridesEnabl_12[a2 + 7] - aOverridesEnabl_12[a2 + 8] + 32 * aOverridesEnabl_12[a2 + 8];
          v4 = a2 + 9;
          return v6 + aOverridesEnabl_12[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aOverridesEnabl_12[a2] + 29791 * aOverridesEnabl_12[a2 + 1] + 961 * aOverridesEnabl_12[a2 + 2] - aOverridesEnabl_12[a2 + 3] + 32 * aOverridesEnabl_12[a2 + 3];
          v4 = a2 + 4;
          return v6 + aOverridesEnabl_12[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aOverridesEnabl_12[a2] + 923521 * aOverridesEnabl_12[a2 + 1] + 29791 * aOverridesEnabl_12[a2 + 2] + 961 * aOverridesEnabl_12[a2 + 3] - aOverridesEnabl_12[a2 + 4] + 32 * aOverridesEnabl_12[a2 + 4];
          v4 = a2 + 5;
          return v6 + aOverridesEnabl_12[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aOverridesEnabl_12[a2] + 28629151 * aOverridesEnabl_12[a2 + 1] + 923521 * aOverridesEnabl_12[a2 + 2] + 29791 * aOverridesEnabl_12[a2 + 3] + 961 * aOverridesEnabl_12[a2 + 4] - aOverridesEnabl_12[a2 + 5] + 32 * aOverridesEnabl_12[a2 + 5];
          v4 = a2 + 6;
          return v6 + aOverridesEnabl_12[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aOverridesEnabl_12[a2] + 32 * aOverridesEnabl_12[a2];
        v4 = a2 + 1;
        return v6 + aOverridesEnabl_12[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aOverridesEnabl_12[a2] - aOverridesEnabl_12[a2 + 1] + 32 * aOverridesEnabl_12[a2 + 1];
        v4 = a2 + 2;
        return v6 + aOverridesEnabl_12[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aOverridesEnabl_12[a2] + 961 * aOverridesEnabl_12[a2 + 1] - aOverridesEnabl_12[a2 + 2] + 32 * aOverridesEnabl_12[a2 + 2];
        v4 = a2 + 3;
        return v6 + aOverridesEnabl_12[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aOverridesEnabl_12[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<53ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<53ul>(aOverridesEnabl_12[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

uint64_t *re::mtl::introspect_CompareFunction(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BADE0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BADE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BADE8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB058, "CompareFunction", 1, 1, 1, 1);
      qword_1EE1BB058 = &unk_1F5D0C658;
      qword_1EE1BB098 = &re::mtl::introspect_CompareFunction(BOOL)::enumTable;
      dword_1EE1BB068 = 9;
      __cxa_guard_release(&qword_1EE1BADE8);
    }

    if (v2)
    {
      if (_MergedGlobals_474)
      {
        return &qword_1EE1BB058;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v54);
      v3 = _MergedGlobals_474;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v54);
      if (v3)
      {
        return &qword_1EE1BB058;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_474)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_474 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB058, a2);
    v51 = 0xA476CA4CF3E2F7ALL;
    v52 = "CompareFunction";
    v55 = 0x31CD534126;
    v56 = "uint8_t";
    v9 = v54[0];
    v10 = v54[1];
    if (v55)
    {
      if (v55)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v52);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE1BADE0);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "Never";
      qword_1EE1BAF58 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "Less";
      qword_1EE1BAF60 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 2;
      *(v40 + 2) = "Equal";
      qword_1EE1BAF68 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 3;
      *(v42 + 2) = "LessEqual";
      qword_1EE1BAF70 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 4;
      *(v44 + 2) = "Greater";
      qword_1EE1BAF78 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 5;
      *(v46 + 2) = "NotEqual";
      qword_1EE1BAF80 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 6;
      *(v48 + 2) = "GreaterEqual";
      qword_1EE1BAF88 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 8) = 7;
      *(v50 + 16) = "Always";
      qword_1EE1BAF90 = v50;
      __cxa_guard_release(&qword_1EE1BADE0);
    }
  }

  v11 = qword_1EE1BB098;
  v55 = v9;
  v56 = v10;
  re::TypeBuilder::beginEnumType(v54, &v51, 1, 1, &v55);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v53.var0 = 2 * v16;
        v53.var1 = v15;
        re::TypeBuilder::addEnumConstant(v54, v20, &v53);
        if (*&v53.var0)
        {
          if (*&v53.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v53.var0 = 2 * v25;
          v53.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v54, v29, &v53);
          if (*&v53.var0)
          {
            if (*&v53.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v54, v31);
  xmmword_1EE1BB078 = v53;
  if (v51)
  {
    if (v51)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB058;
}

uint64_t *re::mtl::introspect_BlendFactor(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BADF0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BADF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BADF8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB0A0, "BlendFactor", 4, 4, 1, 1);
      qword_1EE1BB0A0 = &unk_1F5D0C658;
      qword_1EE1BB0E0 = &re::mtl::introspect_BlendFactor(BOOL)::enumTable;
      dword_1EE1BB0B0 = 9;
      __cxa_guard_release(&qword_1EE1BADF8);
    }

    if (v2)
    {
      if (byte_1EE1BADD1)
      {
        return &qword_1EE1BB0A0;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v76);
      v3 = byte_1EE1BADD1;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v76);
      if (v3)
      {
        return &qword_1EE1BB0A0;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD1)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB0A0, a2);
    v73 = 0x1954B877535D9C0;
    v74 = "BlendFactor";
    v77 = 208862;
    v78 = "int";
    v9 = v76[0];
    v10 = v76[1];
    if (v77)
    {
      if (v77)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v74);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE1BADF0);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "Zero";
      qword_1EE1BB4C8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "One";
      qword_1EE1BB4D0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 2;
      *(v40 + 2) = "SourceColor";
      qword_1EE1BB4D8 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 3;
      *(v42 + 2) = "OneMinusSourceColor";
      qword_1EE1BB4E0 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 4;
      *(v44 + 2) = "SourceAlpha";
      qword_1EE1BB4E8 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 5;
      *(v46 + 2) = "OneMinusSourceAlpha";
      qword_1EE1BB4F0 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 6;
      *(v48 + 2) = "DestinationColor";
      qword_1EE1BB4F8 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 7;
      *(v50 + 2) = "OneMinusDestinationColor";
      qword_1EE1BB500 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 8;
      *(v52 + 2) = "DestinationAlpha";
      qword_1EE1BB508 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 9;
      *(v54 + 2) = "OneMinusDestinationAlpha";
      qword_1EE1BB510 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 1) = 10;
      *(v56 + 2) = "SourceAlphaSaturated";
      qword_1EE1BB518 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 1;
      *(v58 + 1) = 11;
      *(v58 + 2) = "BlendColor";
      qword_1EE1BB520 = v58;
      v59 = re::introspectionAllocator(v58);
      v60 = (*(*v59 + 32))(v59, 24, 8);
      *v60 = 1;
      *(v60 + 1) = 12;
      *(v60 + 2) = "OneMinusBlendColor";
      qword_1EE1BB528 = v60;
      v61 = re::introspectionAllocator(v60);
      v62 = (*(*v61 + 32))(v61, 24, 8);
      *v62 = 1;
      *(v62 + 1) = 13;
      *(v62 + 2) = "BlendAlpha";
      qword_1EE1BB530 = v62;
      v63 = re::introspectionAllocator(v62);
      v64 = (*(*v63 + 32))(v63, 24, 8);
      *v64 = 1;
      *(v64 + 1) = 14;
      *(v64 + 2) = "OneMinusBlendAlpha";
      qword_1EE1BB538 = v64;
      v65 = re::introspectionAllocator(v64);
      v66 = (*(*v65 + 32))(v65, 24, 8);
      *v66 = 1;
      *(v66 + 1) = 15;
      *(v66 + 2) = "Source1Color";
      qword_1EE1BB540 = v66;
      v67 = re::introspectionAllocator(v66);
      v68 = (*(*v67 + 32))(v67, 24, 8);
      *v68 = 1;
      *(v68 + 1) = 16;
      *(v68 + 2) = "OneMinusSource1Color";
      qword_1EE1BB548 = v68;
      v69 = re::introspectionAllocator(v68);
      v70 = (*(*v69 + 32))(v69, 24, 8);
      *v70 = 1;
      *(v70 + 1) = 17;
      *(v70 + 2) = "Source1Alpha";
      qword_1EE1BB550 = v70;
      v71 = re::introspectionAllocator(v70);
      v72 = (*(*v71 + 32))(v71, 24, 8);
      *v72 = 1;
      *(v72 + 8) = 18;
      *(v72 + 16) = "OneMinusSource1Alpha";
      qword_1EE1BB558 = v72;
      __cxa_guard_release(&qword_1EE1BADF0);
    }
  }

  v11 = qword_1EE1BB0E0;
  v77 = v9;
  v78 = v10;
  re::TypeBuilder::beginEnumType(v76, &v73, 1, 1, &v77);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v75.var0 = 2 * v16;
        v75.var1 = v15;
        re::TypeBuilder::addEnumConstant(v76, v20, &v75);
        if (*&v75.var0)
        {
          if (*&v75.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v75.var0 = 2 * v25;
          v75.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v76, v29, &v75);
          if (*&v75.var0)
          {
            if (*&v75.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v76, v31);
  xmmword_1EE1BB0C0 = v75;
  if (v73)
  {
    if (v73)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB0A0;
}

void *re::mtl::introspect_BlendOperation(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Add";
      re::mtl::introspect_BlendOperation(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Subtract";
      qword_1EE1C6040 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "ReverseSubtract";
      qword_1EE1C6048 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 1) = 3;
      *(v17 + 2) = "Min";
      qword_1EE1C6050 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 8) = 4;
      *(v19 + 16) = "Max";
      qword_1EE1C6058 = v19;
    }
  }

  {
    v20 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_BlendOperation(BOOL)::info, "BlendOperation", 4, 4, 1, 1);
    *v20 = &unk_1F5D0C658;
    *(v20 + 8) = &re::mtl::introspect_BlendOperation(BOOL)::enumTable;
    *(v20 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_BlendOperation(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_BlendOperation(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v22);
    v3 = re::mtl::introspect_BlendOperation(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v22);
    if (v3)
    {
      return &re::mtl::introspect_BlendOperation(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_BlendOperation(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_BlendOperation(BOOL)::info;
    }
  }

  re::mtl::introspect_BlendOperation(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_BlendOperation(BOOL)::info, a2);
  v21[0] = 0x3CA077184A19D86CLL;
  v21[1] = "BlendOperation";
  xmmword_1EE1C6010 = v22;
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_BlendOperation(BOOL)::info;
}

uint64_t *re::mtl::introspect_ColorWriteMask(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE00, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE08))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB0E8, "ColorWriteMask", 4, 4, 1, 1);
      qword_1EE1BB0E8 = &unk_1F5D0C658;
      qword_1EE1BB128 = &re::mtl::introspect_ColorWriteMask(BOOL)::enumTable;
      dword_1EE1BB0F8 = 9;
      __cxa_guard_release(&qword_1EE1BAE08);
    }

    if (v2)
    {
      if (byte_1EE1BADD2)
      {
        return &qword_1EE1BB0E8;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v70);
      v3 = byte_1EE1BADD2;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v70);
      if (v3)
      {
        return &qword_1EE1BB0E8;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD2)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD2 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB0E8, a2);
    v67 = 0x28E7E0D0848E4ED0;
    v68 = "ColorWriteMask";
    v71 = 208862;
    v72 = "int";
    v9 = v70[0];
    v10 = v70[1];
    if (v71)
    {
      if (v71)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v68);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE1BAE00);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "None";
      qword_1EE1BB328 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "Alpha";
      qword_1EE1BB330 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 2;
      *(v40 + 2) = "Blue";
      qword_1EE1BB338 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 4;
      *(v42 + 2) = "Green";
      qword_1EE1BB340 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 8;
      *(v44 + 2) = "Red";
      qword_1EE1BB348 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 12;
      *(v46 + 2) = "RedGreen";
      qword_1EE1BB350 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 10;
      *(v48 + 2) = "RedBlue";
      qword_1EE1BB358 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 6;
      *(v50 + 2) = "GreenBlue";
      qword_1EE1BB360 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 9;
      *(v52 + 2) = "RedAlpha";
      qword_1EE1BB368 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 5;
      *(v54 + 2) = "GreenAlpha";
      qword_1EE1BB370 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 1) = 3;
      *(v56 + 2) = "BlueAlpha";
      qword_1EE1BB378 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 1;
      *(v58 + 1) = 14;
      *(v58 + 2) = "RedGreenBlue";
      qword_1EE1BB380 = v58;
      v59 = re::introspectionAllocator(v58);
      v60 = (*(*v59 + 32))(v59, 24, 8);
      *v60 = 1;
      *(v60 + 1) = 13;
      *(v60 + 2) = "RedGreenAlpha";
      qword_1EE1BB388 = v60;
      v61 = re::introspectionAllocator(v60);
      v62 = (*(*v61 + 32))(v61, 24, 8);
      *v62 = 1;
      *(v62 + 1) = 11;
      *(v62 + 2) = "RedBlueAlpha";
      qword_1EE1BB390 = v62;
      v63 = re::introspectionAllocator(v62);
      v64 = (*(*v63 + 32))(v63, 24, 8);
      *v64 = 1;
      *(v64 + 1) = 7;
      *(v64 + 2) = "GreenBlueAlpha";
      qword_1EE1BB398 = v64;
      v65 = re::introspectionAllocator(v64);
      v66 = (*(*v65 + 32))(v65, 24, 8);
      *v66 = 1;
      *(v66 + 8) = 15;
      *(v66 + 16) = "All";
      qword_1EE1BB3A0 = v66;
      __cxa_guard_release(&qword_1EE1BAE00);
    }
  }

  v11 = qword_1EE1BB128;
  v71 = v9;
  v72 = v10;
  re::TypeBuilder::beginEnumType(v70, &v67, 1, 1, &v71);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v69.var0 = 2 * v16;
        v69.var1 = v15;
        re::TypeBuilder::addEnumConstant(v70, v20, &v69);
        if (*&v69.var0)
        {
          if (*&v69.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v69.var0 = 2 * v25;
          v69.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v70, v29, &v69);
          if (*&v69.var0)
          {
            if (*&v69.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v70, v31);
  xmmword_1EE1BB108 = v69;
  if (v67)
  {
    if (v67)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB0E8;
}

void *re::mtl::introspect_CullMode(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "CullModeNone";
      re::mtl::introspect_CullMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "CullModeFront";
      qword_1EE1C6260 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "CullModeBack";
      qword_1EE1C6268 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_CullMode(BOOL)::info, "CullMode", 1, 1, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::mtl::introspect_CullMode(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_CullMode(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_CullMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::mtl::introspect_CullMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::mtl::introspect_CullMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_CullMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_CullMode(BOOL)::info;
    }
  }

  re::mtl::introspect_CullMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_CullMode(BOOL)::info, a2);
  v17[0] = 0x38C37139CAALL;
  v17[1] = "CullMode";
  xmmword_1EE1C6230 = v18;
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

  return &re::mtl::introspect_CullMode(BOOL)::info;
}

void *re::mtl::introspect_TextureUsage(re::mtl *this, const re::IntrospectionBase *a2)
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
      re::mtl::introspect_TextureUsage(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "ShaderRead";
      qword_1EE1C60C0 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "ShaderWrite";
      qword_1EE1C60C8 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 1) = 4;
      *(v17 + 2) = "RenderTarget";
      qword_1EE1C60D0 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 8) = 16;
      *(v19 + 16) = "PixelFormatView";
      qword_1EE1C60D8 = v19;
    }
  }

  {
    v20 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_TextureUsage(BOOL)::info, "TextureUsage", 4, 4, 1, 1);
    *v20 = &unk_1F5D0C658;
    *(v20 + 8) = &re::mtl::introspect_TextureUsage(BOOL)::enumTable;
    *(v20 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_TextureUsage(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_TextureUsage(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v22);
    v3 = re::mtl::introspect_TextureUsage(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v22);
    if (v3)
    {
      return &re::mtl::introspect_TextureUsage(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_TextureUsage(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_TextureUsage(BOOL)::info;
    }
  }

  re::mtl::introspect_TextureUsage(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_TextureUsage(BOOL)::info, a2);
  v21[0] = 0x3DA0ACA55F420ACCLL;
  v21[1] = "TextureUsage";
  xmmword_1EE1C6090 = v22;
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_TextureUsage(BOOL)::info;
}

void *re::mtl::introspect_VertexStepFunction(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Constant";
      re::mtl::introspect_VertexStepFunction(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "PerVertex";
      qword_1EE1C5E98 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "PerInstance";
      qword_1EE1C5EA0 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 1) = 3;
      *(v17 + 2) = "PerPatch";
      qword_1EE1C5EA8 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 8) = 4;
      *(v19 + 16) = "PerPatchControlPoint";
      qword_1EE1C5EB0 = v19;
    }
  }

  {
    v20 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_VertexStepFunction(BOOL)::info, "VertexStepFunction", 1, 1, 1, 1);
    *v20 = &unk_1F5D0C658;
    *(v20 + 8) = &re::mtl::introspect_VertexStepFunction(BOOL)::enumTable;
    *(v20 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_VertexStepFunction(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_VertexStepFunction(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v22);
    v3 = re::mtl::introspect_VertexStepFunction(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v22);
    if (v3)
    {
      return &re::mtl::introspect_VertexStepFunction(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_VertexStepFunction(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_VertexStepFunction(BOOL)::info;
    }
  }

  re::mtl::introspect_VertexStepFunction(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_VertexStepFunction(BOOL)::info, a2);
  v21[0] = 0xF4871ED6F7417D50;
  v21[1] = "VertexStepFunction";
  xmmword_1EE1C5E68 = v22;
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_VertexStepFunction(BOOL)::info;
}

uint64_t *re::mtl::introspect_VertexFormat(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE10, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE18))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB130, "VertexFormat", 1, 1, 1, 1);
      qword_1EE1BB130 = &unk_1F5D0C658;
      qword_1EE1BB170 = &re::mtl::introspect_VertexFormat(BOOL)::enumTable;
      dword_1EE1BB140 = 9;
      __cxa_guard_release(&qword_1EE1BAE18);
    }

    if (v2)
    {
      if (byte_1EE1BADD3)
      {
        return &qword_1EE1BB130;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v138);
      v3 = byte_1EE1BADD3;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v138);
      if (v3)
      {
        return &qword_1EE1BB130;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD3)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD3 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB130, a2);
    v135 = 0x3F089ECB224C3DB6;
    v136 = "VertexFormat";
    v139 = 0x31CD534126;
    v140 = "uint8_t";
    v9 = v138[0];
    v10 = v138[1];
    if (v139)
    {
      if (v139)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v136);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE1BAE10);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "Invalid";
      qword_1EE1BB560 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 45;
      *(v38 + 2) = "UChar";
      qword_1EE1BB568 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 1;
      *(v40 + 2) = "UChar2";
      qword_1EE1BB570 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 2;
      *(v42 + 2) = "UChar3";
      qword_1EE1BB578 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 3;
      *(v44 + 2) = "UChar4";
      qword_1EE1BB580 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 46;
      *(v46 + 2) = "Char";
      qword_1EE1BB588 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 4;
      *(v48 + 2) = "Char2";
      qword_1EE1BB590 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 5;
      *(v50 + 2) = "Char3";
      qword_1EE1BB598 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 6;
      *(v52 + 2) = "Char4";
      qword_1EE1BB5A0 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 47;
      *(v54 + 2) = "UCharNormalized";
      qword_1EE1BB5A8 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 1) = 7;
      *(v56 + 2) = "UChar2Normalized";
      qword_1EE1BB5B0 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 1;
      *(v58 + 1) = 8;
      *(v58 + 2) = "UChar3Normalized";
      qword_1EE1BB5B8 = v58;
      v59 = re::introspectionAllocator(v58);
      v60 = (*(*v59 + 32))(v59, 24, 8);
      *v60 = 1;
      *(v60 + 1) = 9;
      *(v60 + 2) = "UChar4Normalized";
      qword_1EE1BB5C0 = v60;
      v61 = re::introspectionAllocator(v60);
      v62 = (*(*v61 + 32))(v61, 24, 8);
      *v62 = 1;
      *(v62 + 1) = 42;
      *(v62 + 2) = "UChar4Normalized_BGRA";
      qword_1EE1BB5C8 = v62;
      v63 = re::introspectionAllocator(v62);
      v64 = (*(*v63 + 32))(v63, 24, 8);
      *v64 = 1;
      *(v64 + 1) = 48;
      *(v64 + 2) = "CharNormalized";
      qword_1EE1BB5D0 = v64;
      v65 = re::introspectionAllocator(v64);
      v66 = (*(*v65 + 32))(v65, 24, 8);
      *v66 = 1;
      *(v66 + 1) = 10;
      *(v66 + 2) = "Char2Normalized";
      qword_1EE1BB5D8 = v66;
      v67 = re::introspectionAllocator(v66);
      v68 = (*(*v67 + 32))(v67, 24, 8);
      *v68 = 1;
      *(v68 + 1) = 11;
      *(v68 + 2) = "Char3Normalized";
      qword_1EE1BB5E0 = v68;
      v69 = re::introspectionAllocator(v68);
      v70 = (*(*v69 + 32))(v69, 24, 8);
      *v70 = 1;
      *(v70 + 1) = 12;
      *(v70 + 2) = "Char4Normalized";
      qword_1EE1BB5E8 = v70;
      v71 = re::introspectionAllocator(v70);
      v72 = (*(*v71 + 32))(v71, 24, 8);
      *v72 = 1;
      *(v72 + 1) = 49;
      *(v72 + 2) = "UShort";
      qword_1EE1BB5F0 = v72;
      v73 = re::introspectionAllocator(v72);
      v74 = (*(*v73 + 32))(v73, 24, 8);
      *v74 = 1;
      *(v74 + 1) = 13;
      *(v74 + 2) = "UShort2";
      qword_1EE1BB5F8 = v74;
      v75 = re::introspectionAllocator(v74);
      v76 = (*(*v75 + 32))(v75, 24, 8);
      *v76 = 1;
      *(v76 + 1) = 14;
      *(v76 + 2) = "UShort3";
      qword_1EE1BB600 = v76;
      v77 = re::introspectionAllocator(v76);
      v78 = (*(*v77 + 32))(v77, 24, 8);
      *v78 = 1;
      *(v78 + 1) = 15;
      *(v78 + 2) = "UShort4";
      qword_1EE1BB608 = v78;
      v79 = re::introspectionAllocator(v78);
      v80 = (*(*v79 + 32))(v79, 24, 8);
      *v80 = 1;
      *(v80 + 1) = 50;
      *(v80 + 2) = "Short";
      qword_1EE1BB610 = v80;
      v81 = re::introspectionAllocator(v80);
      v82 = (*(*v81 + 32))(v81, 24, 8);
      *v82 = 1;
      *(v82 + 1) = 16;
      *(v82 + 2) = "Short2";
      qword_1EE1BB618 = v82;
      v83 = re::introspectionAllocator(v82);
      v84 = (*(*v83 + 32))(v83, 24, 8);
      *v84 = 1;
      *(v84 + 1) = 17;
      *(v84 + 2) = "Short3";
      qword_1EE1BB620 = v84;
      v85 = re::introspectionAllocator(v84);
      v86 = (*(*v85 + 32))(v85, 24, 8);
      *v86 = 1;
      *(v86 + 1) = 18;
      *(v86 + 2) = "Short4";
      qword_1EE1BB628 = v86;
      v87 = re::introspectionAllocator(v86);
      v88 = (*(*v87 + 32))(v87, 24, 8);
      *v88 = 1;
      *(v88 + 1) = 51;
      *(v88 + 2) = "UShortNormalized";
      qword_1EE1BB630 = v88;
      v89 = re::introspectionAllocator(v88);
      v90 = (*(*v89 + 32))(v89, 24, 8);
      *v90 = 1;
      *(v90 + 1) = 19;
      *(v90 + 2) = "UShort2Normalized";
      qword_1EE1BB638 = v90;
      v91 = re::introspectionAllocator(v90);
      v92 = (*(*v91 + 32))(v91, 24, 8);
      *v92 = 1;
      *(v92 + 1) = 20;
      *(v92 + 2) = "UShort3Normalized";
      qword_1EE1BB640 = v92;
      v93 = re::introspectionAllocator(v92);
      v94 = (*(*v93 + 32))(v93, 24, 8);
      *v94 = 1;
      *(v94 + 1) = 21;
      *(v94 + 2) = "UShort4Normalized";
      qword_1EE1BB648 = v94;
      v95 = re::introspectionAllocator(v94);
      v96 = (*(*v95 + 32))(v95, 24, 8);
      *v96 = 1;
      *(v96 + 1) = 52;
      *(v96 + 2) = "ShortNormalized";
      qword_1EE1BB650 = v96;
      v97 = re::introspectionAllocator(v96);
      v98 = (*(*v97 + 32))(v97, 24, 8);
      *v98 = 1;
      *(v98 + 1) = 22;
      *(v98 + 2) = "Short2Normalized";
      qword_1EE1BB658 = v98;
      v99 = re::introspectionAllocator(v98);
      v100 = (*(*v99 + 32))(v99, 24, 8);
      *v100 = 1;
      *(v100 + 1) = 23;
      *(v100 + 2) = "Short3Normalized";
      qword_1EE1BB660 = v100;
      v101 = re::introspectionAllocator(v100);
      v102 = (*(*v101 + 32))(v101, 24, 8);
      *v102 = 1;
      *(v102 + 1) = 24;
      *(v102 + 2) = "Short4Normalized";
      qword_1EE1BB668 = v102;
      v103 = re::introspectionAllocator(v102);
      v104 = (*(*v103 + 32))(v103, 24, 8);
      *v104 = 1;
      *(v104 + 1) = 53;
      *(v104 + 2) = "Half";
      qword_1EE1BB670 = v104;
      v105 = re::introspectionAllocator(v104);
      v106 = (*(*v105 + 32))(v105, 24, 8);
      *v106 = 1;
      *(v106 + 1) = 25;
      *(v106 + 2) = "Half2";
      qword_1EE1BB678 = v106;
      v107 = re::introspectionAllocator(v106);
      v108 = (*(*v107 + 32))(v107, 24, 8);
      *v108 = 1;
      *(v108 + 1) = 26;
      *(v108 + 2) = "Half3";
      qword_1EE1BB680 = v108;
      v109 = re::introspectionAllocator(v108);
      v110 = (*(*v109 + 32))(v109, 24, 8);
      *v110 = 1;
      *(v110 + 1) = 27;
      *(v110 + 2) = "Half4";
      qword_1EE1BB688 = v110;
      v111 = re::introspectionAllocator(v110);
      v112 = (*(*v111 + 32))(v111, 24, 8);
      *v112 = 1;
      *(v112 + 1) = 28;
      *(v112 + 2) = "Float";
      qword_1EE1BB690 = v112;
      v113 = re::introspectionAllocator(v112);
      v114 = (*(*v113 + 32))(v113, 24, 8);
      *v114 = 1;
      *(v114 + 1) = 29;
      *(v114 + 2) = "Float2";
      qword_1EE1BB698 = v114;
      v115 = re::introspectionAllocator(v114);
      v116 = (*(*v115 + 32))(v115, 24, 8);
      *v116 = 1;
      *(v116 + 1) = 30;
      *(v116 + 2) = "Float3";
      qword_1EE1BB6A0 = v116;
      v117 = re::introspectionAllocator(v116);
      v118 = (*(*v117 + 32))(v117, 24, 8);
      *v118 = 1;
      *(v118 + 1) = 31;
      *(v118 + 2) = "Float4";
      qword_1EE1BB6A8 = v118;
      v119 = re::introspectionAllocator(v118);
      v120 = (*(*v119 + 32))(v119, 24, 8);
      *v120 = 1;
      *(v120 + 1) = 32;
      *(v120 + 2) = "Int";
      qword_1EE1BB6B0 = v120;
      v121 = re::introspectionAllocator(v120);
      v122 = (*(*v121 + 32))(v121, 24, 8);
      *v122 = 1;
      *(v122 + 1) = 33;
      *(v122 + 2) = "Int2";
      qword_1EE1BB6B8 = v122;
      v123 = re::introspectionAllocator(v122);
      v124 = (*(*v123 + 32))(v123, 24, 8);
      *v124 = 1;
      *(v124 + 1) = 34;
      *(v124 + 2) = "Int3";
      qword_1EE1BB6C0 = v124;
      v125 = re::introspectionAllocator(v124);
      v126 = (*(*v125 + 32))(v125, 24, 8);
      *v126 = 1;
      *(v126 + 1) = 35;
      *(v126 + 2) = "Int4";
      qword_1EE1BB6C8 = v126;
      v127 = re::introspectionAllocator(v126);
      v128 = (*(*v127 + 32))(v127, 24, 8);
      *v128 = 1;
      *(v128 + 1) = 36;
      *(v128 + 2) = "UInt";
      qword_1EE1BB6D0 = v128;
      v129 = re::introspectionAllocator(v128);
      v130 = (*(*v129 + 32))(v129, 24, 8);
      *v130 = 1;
      *(v130 + 1) = 37;
      *(v130 + 2) = "UInt2";
      qword_1EE1BB6D8 = v130;
      v131 = re::introspectionAllocator(v130);
      v132 = (*(*v131 + 32))(v131, 24, 8);
      *v132 = 1;
      *(v132 + 1) = 38;
      *(v132 + 2) = "UInt3";
      qword_1EE1BB6E0 = v132;
      v133 = re::introspectionAllocator(v132);
      v134 = (*(*v133 + 32))(v133, 24, 8);
      *v134 = 1;
      *(v134 + 8) = 39;
      *(v134 + 16) = "UInt4";
      qword_1EE1BB6E8 = v134;
      __cxa_guard_release(&qword_1EE1BAE10);
    }
  }

  v11 = qword_1EE1BB170;
  v139 = v9;
  v140 = v10;
  re::TypeBuilder::beginEnumType(v138, &v135, 1, 1, &v139);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v137.var0 = 2 * v16;
        v137.var1 = v15;
        re::TypeBuilder::addEnumConstant(v138, v20, &v137);
        if (*&v137.var0)
        {
          if (*&v137.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v137.var0 = 2 * v25;
          v137.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v138, v29, &v137);
          if (*&v137.var0)
          {
            if (*&v137.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v138, v31);
  xmmword_1EE1BB150 = v137;
  if (v135)
  {
    if (v135)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB130;
}

uint64_t *re::mtl::introspect_PixelFormat(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE20, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE28))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB178, "PixelFormat", 4, 4, 1, 1);
      qword_1EE1BB178 = &unk_1F5D0C658;
      qword_1EE1BB1B8 = &re::mtl::introspect_PixelFormat(BOOL)::enumTable;
      dword_1EE1BB188 = 9;
      __cxa_guard_release(&qword_1EE1BAE28);
    }

    if (v2)
    {
      if (byte_1EE1BADD4)
      {
        return &qword_1EE1BB178;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v314);
      v3 = byte_1EE1BADD4;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v314);
      if (v3)
      {
        return &qword_1EE1BB178;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD4)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD4 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB178, a2);
    v311 = 0x1E660D208CFC3FALL;
    v312 = "PixelFormat";
    v315 = 208862;
    v316 = "int";
    v9 = v314[0];
    v10 = v314[1];
    if (v315)
    {
      if (v315)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v312);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE1BAE20);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "Invalid";
      qword_1EE1BB6F0 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "A8Unorm";
      qword_1EE1BB6F8 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 10;
      *(v40 + 2) = "R8Unorm";
      qword_1EE1BB700 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 11;
      *(v42 + 2) = "R8Unorm_sRGB";
      qword_1EE1BB708 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 12;
      *(v44 + 2) = "R8Snorm";
      qword_1EE1BB710 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 13;
      *(v46 + 2) = "R8Uint";
      qword_1EE1BB718 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 14;
      *(v48 + 2) = "R8Sint";
      qword_1EE1BB720 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 20;
      *(v50 + 2) = "R16Unorm";
      qword_1EE1BB728 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 22;
      *(v52 + 2) = "R16Snorm";
      qword_1EE1BB730 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 23;
      *(v54 + 2) = "R16Uint";
      qword_1EE1BB738 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 1) = 24;
      *(v56 + 2) = "R16Sint";
      qword_1EE1BB740 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 1;
      *(v58 + 1) = 25;
      *(v58 + 2) = "R16Float";
      qword_1EE1BB748 = v58;
      v59 = re::introspectionAllocator(v58);
      v60 = (*(*v59 + 32))(v59, 24, 8);
      *v60 = 1;
      *(v60 + 1) = 30;
      *(v60 + 2) = "RG8Unorm";
      qword_1EE1BB750 = v60;
      v61 = re::introspectionAllocator(v60);
      v62 = (*(*v61 + 32))(v61, 24, 8);
      *v62 = 1;
      *(v62 + 1) = 31;
      *(v62 + 2) = "RG8Unorm_sRGB";
      qword_1EE1BB758 = v62;
      v63 = re::introspectionAllocator(v62);
      v64 = (*(*v63 + 32))(v63, 24, 8);
      *v64 = 1;
      *(v64 + 1) = 32;
      *(v64 + 2) = "RG8Snorm";
      qword_1EE1BB760 = v64;
      v65 = re::introspectionAllocator(v64);
      v66 = (*(*v65 + 32))(v65, 24, 8);
      *v66 = 1;
      *(v66 + 1) = 33;
      *(v66 + 2) = "RG8Uint";
      qword_1EE1BB768 = v66;
      v67 = re::introspectionAllocator(v66);
      v68 = (*(*v67 + 32))(v67, 24, 8);
      *v68 = 1;
      *(v68 + 1) = 34;
      *(v68 + 2) = "RG8Sint";
      qword_1EE1BB770 = v68;
      v69 = re::introspectionAllocator(v68);
      v70 = (*(*v69 + 32))(v69, 24, 8);
      *v70 = 1;
      *(v70 + 1) = 40;
      *(v70 + 2) = "B5G6R5Unorm";
      qword_1EE1BB778 = v70;
      v71 = re::introspectionAllocator(v70);
      v72 = (*(*v71 + 32))(v71, 24, 8);
      *v72 = 1;
      *(v72 + 1) = 41;
      *(v72 + 2) = "A1BGR5Unorm";
      qword_1EE1BB780 = v72;
      v73 = re::introspectionAllocator(v72);
      v74 = (*(*v73 + 32))(v73, 24, 8);
      *v74 = 1;
      *(v74 + 1) = 42;
      *(v74 + 2) = "ABGR4Unorm";
      qword_1EE1BB788 = v74;
      v75 = re::introspectionAllocator(v74);
      v76 = (*(*v75 + 32))(v75, 24, 8);
      *v76 = 1;
      *(v76 + 1) = 43;
      *(v76 + 2) = "BGR5A1Unorm";
      qword_1EE1BB790 = v76;
      v77 = re::introspectionAllocator(v76);
      v78 = (*(*v77 + 32))(v77, 24, 8);
      *v78 = 1;
      *(v78 + 1) = 53;
      *(v78 + 2) = "R32Uint";
      qword_1EE1BB798 = v78;
      v79 = re::introspectionAllocator(v78);
      v80 = (*(*v79 + 32))(v79, 24, 8);
      *v80 = 1;
      *(v80 + 1) = 54;
      *(v80 + 2) = "R32Sint";
      qword_1EE1BB7A0 = v80;
      v81 = re::introspectionAllocator(v80);
      v82 = (*(*v81 + 32))(v81, 24, 8);
      *v82 = 1;
      *(v82 + 1) = 55;
      *(v82 + 2) = "R32Float";
      qword_1EE1BB7A8 = v82;
      v83 = re::introspectionAllocator(v82);
      v84 = (*(*v83 + 32))(v83, 24, 8);
      *v84 = 1;
      *(v84 + 1) = 60;
      *(v84 + 2) = "RG16Unorm";
      qword_1EE1BB7B0 = v84;
      v85 = re::introspectionAllocator(v84);
      v86 = (*(*v85 + 32))(v85, 24, 8);
      *v86 = 1;
      *(v86 + 1) = 62;
      *(v86 + 2) = "RG16Snorm";
      qword_1EE1BB7B8 = v86;
      v87 = re::introspectionAllocator(v86);
      v88 = (*(*v87 + 32))(v87, 24, 8);
      *v88 = 1;
      *(v88 + 1) = 63;
      *(v88 + 2) = "RG16Uint";
      qword_1EE1BB7C0 = v88;
      v89 = re::introspectionAllocator(v88);
      v90 = (*(*v89 + 32))(v89, 24, 8);
      *v90 = 1;
      *(v90 + 1) = 64;
      *(v90 + 2) = "RG16Sint";
      qword_1EE1BB7C8 = v90;
      v91 = re::introspectionAllocator(v90);
      v92 = (*(*v91 + 32))(v91, 24, 8);
      *v92 = 1;
      *(v92 + 1) = 65;
      *(v92 + 2) = "RG16Float";
      qword_1EE1BB7D0 = v92;
      v93 = re::introspectionAllocator(v92);
      v94 = (*(*v93 + 32))(v93, 24, 8);
      *v94 = 1;
      *(v94 + 1) = 70;
      *(v94 + 2) = "RGBA8Unorm";
      qword_1EE1BB7D8 = v94;
      v95 = re::introspectionAllocator(v94);
      v96 = (*(*v95 + 32))(v95, 24, 8);
      *v96 = 1;
      *(v96 + 1) = 71;
      *(v96 + 2) = "RGBA8Unorm_sRGB";
      qword_1EE1BB7E0 = v96;
      v97 = re::introspectionAllocator(v96);
      v98 = (*(*v97 + 32))(v97, 24, 8);
      *v98 = 1;
      *(v98 + 1) = 72;
      *(v98 + 2) = "RGBA8Snorm";
      qword_1EE1BB7E8 = v98;
      v99 = re::introspectionAllocator(v98);
      v100 = (*(*v99 + 32))(v99, 24, 8);
      *v100 = 1;
      *(v100 + 1) = 73;
      *(v100 + 2) = "RGBA8Uint";
      qword_1EE1BB7F0 = v100;
      v101 = re::introspectionAllocator(v100);
      v102 = (*(*v101 + 32))(v101, 24, 8);
      *v102 = 1;
      *(v102 + 1) = 74;
      *(v102 + 2) = "RGBA8Sint";
      qword_1EE1BB7F8 = v102;
      v103 = re::introspectionAllocator(v102);
      v104 = (*(*v103 + 32))(v103, 24, 8);
      *v104 = 1;
      *(v104 + 1) = 80;
      *(v104 + 2) = "BGRA8Unorm";
      qword_1EE1BB800 = v104;
      v105 = re::introspectionAllocator(v104);
      v106 = (*(*v105 + 32))(v105, 24, 8);
      *v106 = 1;
      *(v106 + 1) = 81;
      *(v106 + 2) = "BGRA8Unorm_sRGB";
      qword_1EE1BB808 = v106;
      v107 = re::introspectionAllocator(v106);
      v108 = (*(*v107 + 32))(v107, 24, 8);
      *v108 = 1;
      *(v108 + 1) = 90;
      *(v108 + 2) = "RGB10A2Unorm";
      qword_1EE1BB810 = v108;
      v109 = re::introspectionAllocator(v108);
      v110 = (*(*v109 + 32))(v109, 24, 8);
      *v110 = 1;
      *(v110 + 1) = 91;
      *(v110 + 2) = "RGB10A2Uint";
      qword_1EE1BB818 = v110;
      v111 = re::introspectionAllocator(v110);
      v112 = (*(*v111 + 32))(v111, 24, 8);
      *v112 = 1;
      *(v112 + 1) = 92;
      *(v112 + 2) = "RG11B10Float";
      qword_1EE1BB820 = v112;
      v113 = re::introspectionAllocator(v112);
      v114 = (*(*v113 + 32))(v113, 24, 8);
      *v114 = 1;
      *(v114 + 1) = 93;
      *(v114 + 2) = "RGB9E5Float";
      qword_1EE1BB828 = v114;
      v115 = re::introspectionAllocator(v114);
      v116 = (*(*v115 + 32))(v115, 24, 8);
      *v116 = 1;
      *(v116 + 1) = 554;
      *(v116 + 2) = "BGR10_XR";
      qword_1EE1BB830 = v116;
      v117 = re::introspectionAllocator(v116);
      v118 = (*(*v117 + 32))(v117, 24, 8);
      *v118 = 1;
      *(v118 + 1) = 555;
      *(v118 + 2) = "BGR10_XR_sRGB";
      qword_1EE1BB838 = v118;
      v119 = re::introspectionAllocator(v118);
      v120 = (*(*v119 + 32))(v119, 24, 8);
      *v120 = 1;
      *(v120 + 1) = 103;
      *(v120 + 2) = "RG32Uint";
      qword_1EE1BB840 = v120;
      v121 = re::introspectionAllocator(v120);
      v122 = (*(*v121 + 32))(v121, 24, 8);
      *v122 = 1;
      *(v122 + 1) = 104;
      *(v122 + 2) = "RG32Sint";
      qword_1EE1BB848 = v122;
      v123 = re::introspectionAllocator(v122);
      v124 = (*(*v123 + 32))(v123, 24, 8);
      *v124 = 1;
      *(v124 + 1) = 105;
      *(v124 + 2) = "RG32Float";
      qword_1EE1BB850 = v124;
      v125 = re::introspectionAllocator(v124);
      v126 = (*(*v125 + 32))(v125, 24, 8);
      *v126 = 1;
      *(v126 + 1) = 110;
      *(v126 + 2) = "RGBA16Unorm";
      qword_1EE1BB858 = v126;
      v127 = re::introspectionAllocator(v126);
      v128 = (*(*v127 + 32))(v127, 24, 8);
      *v128 = 1;
      *(v128 + 1) = 112;
      *(v128 + 2) = "RGBA16Snorm";
      qword_1EE1BB860 = v128;
      v129 = re::introspectionAllocator(v128);
      v130 = (*(*v129 + 32))(v129, 24, 8);
      *v130 = 1;
      *(v130 + 1) = 113;
      *(v130 + 2) = "RGBA16Uint";
      qword_1EE1BB868 = v130;
      v131 = re::introspectionAllocator(v130);
      v132 = (*(*v131 + 32))(v131, 24, 8);
      *v132 = 1;
      *(v132 + 1) = 114;
      *(v132 + 2) = "RGBA16Sint";
      qword_1EE1BB870 = v132;
      v133 = re::introspectionAllocator(v132);
      v134 = (*(*v133 + 32))(v133, 24, 8);
      *v134 = 1;
      *(v134 + 1) = 115;
      *(v134 + 2) = "RGBA16Float";
      qword_1EE1BB878 = v134;
      v135 = re::introspectionAllocator(v134);
      v136 = (*(*v135 + 32))(v135, 24, 8);
      *v136 = 1;
      *(v136 + 1) = 552;
      *(v136 + 2) = "BGRA10_XR";
      qword_1EE1BB880 = v136;
      v137 = re::introspectionAllocator(v136);
      v138 = (*(*v137 + 32))(v137, 24, 8);
      *v138 = 1;
      *(v138 + 1) = 553;
      *(v138 + 2) = "BGRA10_XR_sRGB";
      qword_1EE1BB888 = v138;
      v139 = re::introspectionAllocator(v138);
      v140 = (*(*v139 + 32))(v139, 24, 8);
      *v140 = 1;
      *(v140 + 1) = 123;
      *(v140 + 2) = "RGBA32Uint";
      qword_1EE1BB890 = v140;
      v141 = re::introspectionAllocator(v140);
      v142 = (*(*v141 + 32))(v141, 24, 8);
      *v142 = 1;
      *(v142 + 1) = 124;
      *(v142 + 2) = "RGBA32Sint";
      qword_1EE1BB898 = v142;
      v143 = re::introspectionAllocator(v142);
      v144 = (*(*v143 + 32))(v143, 24, 8);
      *v144 = 1;
      *(v144 + 1) = 125;
      *(v144 + 2) = "RGBA32Float";
      qword_1EE1BB8A0 = v144;
      v145 = re::introspectionAllocator(v144);
      v146 = (*(*v145 + 32))(v145, 24, 8);
      *v146 = 1;
      *(v146 + 1) = 130;
      *(v146 + 2) = "BC1_RGBA";
      qword_1EE1BB8A8 = v146;
      v147 = re::introspectionAllocator(v146);
      v148 = (*(*v147 + 32))(v147, 24, 8);
      *v148 = 1;
      *(v148 + 1) = 131;
      *(v148 + 2) = "BC1_RGBA_sRGB";
      qword_1EE1BB8B0 = v148;
      v149 = re::introspectionAllocator(v148);
      v150 = (*(*v149 + 32))(v149, 24, 8);
      *v150 = 1;
      *(v150 + 1) = 132;
      *(v150 + 2) = "BC2_RGBA";
      qword_1EE1BB8B8 = v150;
      v151 = re::introspectionAllocator(v150);
      v152 = (*(*v151 + 32))(v151, 24, 8);
      *v152 = 1;
      *(v152 + 1) = 133;
      *(v152 + 2) = "BC2_RGBA_sRGB";
      qword_1EE1BB8C0 = v152;
      v153 = re::introspectionAllocator(v152);
      v154 = (*(*v153 + 32))(v153, 24, 8);
      *v154 = 1;
      *(v154 + 1) = 134;
      *(v154 + 2) = "BC3_RGBA";
      qword_1EE1BB8C8 = v154;
      v155 = re::introspectionAllocator(v154);
      v156 = (*(*v155 + 32))(v155, 24, 8);
      *v156 = 1;
      *(v156 + 1) = 135;
      *(v156 + 2) = "BC3_RGBA_sRGB";
      qword_1EE1BB8D0 = v156;
      v157 = re::introspectionAllocator(v156);
      v158 = (*(*v157 + 32))(v157, 24, 8);
      *v158 = 1;
      *(v158 + 1) = 140;
      *(v158 + 2) = "BC4_RUnorm";
      qword_1EE1BB8D8 = v158;
      v159 = re::introspectionAllocator(v158);
      v160 = (*(*v159 + 32))(v159, 24, 8);
      *v160 = 1;
      *(v160 + 1) = 141;
      *(v160 + 2) = "BC4_RSnorm";
      qword_1EE1BB8E0 = v160;
      v161 = re::introspectionAllocator(v160);
      v162 = (*(*v161 + 32))(v161, 24, 8);
      *v162 = 1;
      *(v162 + 1) = 142;
      *(v162 + 2) = "BC5_RGUnorm";
      qword_1EE1BB8E8 = v162;
      v163 = re::introspectionAllocator(v162);
      v164 = (*(*v163 + 32))(v163, 24, 8);
      *v164 = 1;
      *(v164 + 1) = 143;
      *(v164 + 2) = "BC5_RGSnorm";
      qword_1EE1BB8F0 = v164;
      v165 = re::introspectionAllocator(v164);
      v166 = (*(*v165 + 32))(v165, 24, 8);
      *v166 = 1;
      *(v166 + 1) = 150;
      *(v166 + 2) = "BC6H_RGBFloat";
      qword_1EE1BB8F8 = v166;
      v167 = re::introspectionAllocator(v166);
      v168 = (*(*v167 + 32))(v167, 24, 8);
      *v168 = 1;
      *(v168 + 1) = 151;
      *(v168 + 2) = "BC6H_RGBUfloat";
      qword_1EE1BB900 = v168;
      v169 = re::introspectionAllocator(v168);
      v170 = (*(*v169 + 32))(v169, 24, 8);
      *v170 = 1;
      *(v170 + 1) = 152;
      *(v170 + 2) = "BC7_RGBAUnorm";
      qword_1EE1BB908 = v170;
      v171 = re::introspectionAllocator(v170);
      v172 = (*(*v171 + 32))(v171, 24, 8);
      *v172 = 1;
      *(v172 + 1) = 153;
      *(v172 + 2) = "BC7_RGBAUnorm_sRGB";
      qword_1EE1BB910 = v172;
      v173 = re::introspectionAllocator(v172);
      v174 = (*(*v173 + 32))(v173, 24, 8);
      *v174 = 1;
      *(v174 + 1) = 160;
      *(v174 + 2) = "PVRTC_RGB_2BPP";
      qword_1EE1BB918 = v174;
      v175 = re::introspectionAllocator(v174);
      v176 = (*(*v175 + 32))(v175, 24, 8);
      *v176 = 1;
      *(v176 + 1) = 161;
      *(v176 + 2) = "PVRTC_RGB_2BPP_sRGB";
      qword_1EE1BB920 = v176;
      v177 = re::introspectionAllocator(v176);
      v178 = (*(*v177 + 32))(v177, 24, 8);
      *v178 = 1;
      *(v178 + 1) = 162;
      *(v178 + 2) = "PVRTC_RGB_4BPP";
      qword_1EE1BB928 = v178;
      v179 = re::introspectionAllocator(v178);
      v180 = (*(*v179 + 32))(v179, 24, 8);
      *v180 = 1;
      *(v180 + 1) = 163;
      *(v180 + 2) = "PVRTC_RGB_4BPP_sRGB";
      qword_1EE1BB930 = v180;
      v181 = re::introspectionAllocator(v180);
      v182 = (*(*v181 + 32))(v181, 24, 8);
      *v182 = 1;
      *(v182 + 1) = 164;
      *(v182 + 2) = "PVRTC_RGBA_2BPP";
      qword_1EE1BB938 = v182;
      v183 = re::introspectionAllocator(v182);
      v184 = (*(*v183 + 32))(v183, 24, 8);
      *v184 = 1;
      *(v184 + 1) = 165;
      *(v184 + 2) = "PVRTC_RGBA_2BPP_sRGB";
      qword_1EE1BB940 = v184;
      v185 = re::introspectionAllocator(v184);
      v186 = (*(*v185 + 32))(v185, 24, 8);
      *v186 = 1;
      *(v186 + 1) = 166;
      *(v186 + 2) = "PVRTC_RGBA_4BPP";
      qword_1EE1BB948 = v186;
      v187 = re::introspectionAllocator(v186);
      v188 = (*(*v187 + 32))(v187, 24, 8);
      *v188 = 1;
      *(v188 + 1) = 167;
      *(v188 + 2) = "PVRTC_RGBA_4BPP_sRGB";
      qword_1EE1BB950 = v188;
      v189 = re::introspectionAllocator(v188);
      v190 = (*(*v189 + 32))(v189, 24, 8);
      *v190 = 1;
      *(v190 + 1) = 170;
      *(v190 + 2) = "EAC_R11Unorm";
      qword_1EE1BB958 = v190;
      v191 = re::introspectionAllocator(v190);
      v192 = (*(*v191 + 32))(v191, 24, 8);
      *v192 = 1;
      *(v192 + 1) = 172;
      *(v192 + 2) = "EAC_R11Snorm";
      qword_1EE1BB960 = v192;
      v193 = re::introspectionAllocator(v192);
      v194 = (*(*v193 + 32))(v193, 24, 8);
      *v194 = 1;
      *(v194 + 1) = 174;
      *(v194 + 2) = "EAC_RG11Unorm";
      qword_1EE1BB968 = v194;
      v195 = re::introspectionAllocator(v194);
      v196 = (*(*v195 + 32))(v195, 24, 8);
      *v196 = 1;
      *(v196 + 1) = 176;
      *(v196 + 2) = "EAC_RG11Snorm";
      qword_1EE1BB970 = v196;
      v197 = re::introspectionAllocator(v196);
      v198 = (*(*v197 + 32))(v197, 24, 8);
      *v198 = 1;
      *(v198 + 1) = 178;
      *(v198 + 2) = "EAC_RGBA8";
      qword_1EE1BB978 = v198;
      v199 = re::introspectionAllocator(v198);
      v200 = (*(*v199 + 32))(v199, 24, 8);
      *v200 = 1;
      *(v200 + 1) = 179;
      *(v200 + 2) = "EAC_RGBA8_sRGB";
      qword_1EE1BB980 = v200;
      v201 = re::introspectionAllocator(v200);
      v202 = (*(*v201 + 32))(v201, 24, 8);
      *v202 = 1;
      *(v202 + 1) = 180;
      *(v202 + 2) = "ETC2_RGB8";
      qword_1EE1BB988 = v202;
      v203 = re::introspectionAllocator(v202);
      v204 = (*(*v203 + 32))(v203, 24, 8);
      *v204 = 1;
      *(v204 + 1) = 181;
      *(v204 + 2) = "ETC2_RGB8_sRGB";
      qword_1EE1BB990 = v204;
      v205 = re::introspectionAllocator(v204);
      v206 = (*(*v205 + 32))(v205, 24, 8);
      *v206 = 1;
      *(v206 + 1) = 182;
      *(v206 + 2) = "ETC2_RGB8A1";
      qword_1EE1BB998 = v206;
      v207 = re::introspectionAllocator(v206);
      v208 = (*(*v207 + 32))(v207, 24, 8);
      *v208 = 1;
      *(v208 + 1) = 183;
      *(v208 + 2) = "ETC2_RGB8A1_sRGB";
      qword_1EE1BB9A0 = v208;
      v209 = re::introspectionAllocator(v208);
      v210 = (*(*v209 + 32))(v209, 24, 8);
      *v210 = 1;
      *(v210 + 1) = 186;
      *(v210 + 2) = "ASTC_4x4_sRGB";
      qword_1EE1BB9A8 = v210;
      v211 = re::introspectionAllocator(v210);
      v212 = (*(*v211 + 32))(v211, 24, 8);
      *v212 = 1;
      *(v212 + 1) = 187;
      *(v212 + 2) = "ASTC_5x4_sRGB";
      qword_1EE1BB9B0 = v212;
      v213 = re::introspectionAllocator(v212);
      v214 = (*(*v213 + 32))(v213, 24, 8);
      *v214 = 1;
      *(v214 + 1) = 188;
      *(v214 + 2) = "ASTC_5x5_sRGB";
      qword_1EE1BB9B8 = v214;
      v215 = re::introspectionAllocator(v214);
      v216 = (*(*v215 + 32))(v215, 24, 8);
      *v216 = 1;
      *(v216 + 1) = 189;
      *(v216 + 2) = "ASTC_6x5_sRGB";
      qword_1EE1BB9C0 = v216;
      v217 = re::introspectionAllocator(v216);
      v218 = (*(*v217 + 32))(v217, 24, 8);
      *v218 = 1;
      *(v218 + 1) = 190;
      *(v218 + 2) = "ASTC_6x6_sRGB";
      qword_1EE1BB9C8 = v218;
      v219 = re::introspectionAllocator(v218);
      v220 = (*(*v219 + 32))(v219, 24, 8);
      *v220 = 1;
      *(v220 + 1) = 192;
      *(v220 + 2) = "ASTC_8x5_sRGB";
      qword_1EE1BB9D0 = v220;
      v221 = re::introspectionAllocator(v220);
      v222 = (*(*v221 + 32))(v221, 24, 8);
      *v222 = 1;
      *(v222 + 1) = 193;
      *(v222 + 2) = "ASTC_8x6_sRGB";
      qword_1EE1BB9D8 = v222;
      v223 = re::introspectionAllocator(v222);
      v224 = (*(*v223 + 32))(v223, 24, 8);
      *v224 = 1;
      *(v224 + 1) = 194;
      *(v224 + 2) = "ASTC_8x8_sRGB";
      qword_1EE1BB9E0 = v224;
      v225 = re::introspectionAllocator(v224);
      v226 = (*(*v225 + 32))(v225, 24, 8);
      *v226 = 1;
      *(v226 + 1) = 195;
      *(v226 + 2) = "ASTC_10x5_sRGB";
      qword_1EE1BB9E8 = v226;
      v227 = re::introspectionAllocator(v226);
      v228 = (*(*v227 + 32))(v227, 24, 8);
      *v228 = 1;
      *(v228 + 1) = 196;
      *(v228 + 2) = "ASTC_10x6_sRGB";
      qword_1EE1BB9F0 = v228;
      v229 = re::introspectionAllocator(v228);
      v230 = (*(*v229 + 32))(v229, 24, 8);
      *v230 = 1;
      *(v230 + 1) = 197;
      *(v230 + 2) = "ASTC_10x8_sRGB";
      qword_1EE1BB9F8 = v230;
      v231 = re::introspectionAllocator(v230);
      v232 = (*(*v231 + 32))(v231, 24, 8);
      *v232 = 1;
      *(v232 + 1) = 198;
      *(v232 + 2) = "ASTC_10x10_sRGB";
      qword_1EE1BBA00 = v232;
      v233 = re::introspectionAllocator(v232);
      v234 = (*(*v233 + 32))(v233, 24, 8);
      *v234 = 1;
      *(v234 + 1) = 199;
      *(v234 + 2) = "ASTC_12x10_sRGB";
      qword_1EE1BBA08 = v234;
      v235 = re::introspectionAllocator(v234);
      v236 = (*(*v235 + 32))(v235, 24, 8);
      *v236 = 1;
      *(v236 + 1) = 200;
      *(v236 + 2) = "ASTC_12x12_sRGB";
      qword_1EE1BBA10 = v236;
      v237 = re::introspectionAllocator(v236);
      v238 = (*(*v237 + 32))(v237, 24, 8);
      *v238 = 1;
      *(v238 + 1) = 204;
      *(v238 + 2) = "ASTC_4x4_LDR";
      qword_1EE1BBA18 = v238;
      v239 = re::introspectionAllocator(v238);
      v240 = (*(*v239 + 32))(v239, 24, 8);
      *v240 = 1;
      *(v240 + 1) = 205;
      *(v240 + 2) = "ASTC_5x4_LDR";
      qword_1EE1BBA20 = v240;
      v241 = re::introspectionAllocator(v240);
      v242 = (*(*v241 + 32))(v241, 24, 8);
      *v242 = 1;
      *(v242 + 1) = 206;
      *(v242 + 2) = "ASTC_5x5_LDR";
      qword_1EE1BBA28 = v242;
      v243 = re::introspectionAllocator(v242);
      v244 = (*(*v243 + 32))(v243, 24, 8);
      *v244 = 1;
      *(v244 + 1) = 207;
      *(v244 + 2) = "ASTC_6x5_LDR";
      qword_1EE1BBA30 = v244;
      v245 = re::introspectionAllocator(v244);
      v246 = (*(*v245 + 32))(v245, 24, 8);
      *v246 = 1;
      *(v246 + 1) = 208;
      *(v246 + 2) = "ASTC_6x6_LDR";
      qword_1EE1BBA38 = v246;
      v247 = re::introspectionAllocator(v246);
      v248 = (*(*v247 + 32))(v247, 24, 8);
      *v248 = 1;
      *(v248 + 1) = 210;
      *(v248 + 2) = "ASTC_8x5_LDR";
      qword_1EE1BBA40 = v248;
      v249 = re::introspectionAllocator(v248);
      v250 = (*(*v249 + 32))(v249, 24, 8);
      *v250 = 1;
      *(v250 + 1) = 211;
      *(v250 + 2) = "ASTC_8x6_LDR";
      qword_1EE1BBA48 = v250;
      v251 = re::introspectionAllocator(v250);
      v252 = (*(*v251 + 32))(v251, 24, 8);
      *v252 = 1;
      *(v252 + 1) = 212;
      *(v252 + 2) = "ASTC_8x8_LDR";
      qword_1EE1BBA50 = v252;
      v253 = re::introspectionAllocator(v252);
      v254 = (*(*v253 + 32))(v253, 24, 8);
      *v254 = 1;
      *(v254 + 1) = 213;
      *(v254 + 2) = "ASTC_10x5_LDR";
      qword_1EE1BBA58 = v254;
      v255 = re::introspectionAllocator(v254);
      v256 = (*(*v255 + 32))(v255, 24, 8);
      *v256 = 1;
      *(v256 + 1) = 214;
      *(v256 + 2) = "ASTC_10x6_LDR";
      qword_1EE1BBA60 = v256;
      v257 = re::introspectionAllocator(v256);
      v258 = (*(*v257 + 32))(v257, 24, 8);
      *v258 = 1;
      *(v258 + 1) = 215;
      *(v258 + 2) = "ASTC_10x8_LDR";
      qword_1EE1BBA68 = v258;
      v259 = re::introspectionAllocator(v258);
      v260 = (*(*v259 + 32))(v259, 24, 8);
      *v260 = 1;
      *(v260 + 1) = 216;
      *(v260 + 2) = "ASTC_10x10_LDR";
      qword_1EE1BBA70 = v260;
      v261 = re::introspectionAllocator(v260);
      v262 = (*(*v261 + 32))(v261, 24, 8);
      *v262 = 1;
      *(v262 + 1) = 217;
      *(v262 + 2) = "ASTC_12x10_LDR";
      qword_1EE1BBA78 = v262;
      v263 = re::introspectionAllocator(v262);
      v264 = (*(*v263 + 32))(v263, 24, 8);
      *v264 = 1;
      *(v264 + 1) = 218;
      *(v264 + 2) = "ASTC_12x12_LDR";
      qword_1EE1BBA80 = v264;
      v265 = re::introspectionAllocator(v264);
      v266 = (*(*v265 + 32))(v265, 24, 8);
      *v266 = 1;
      *(v266 + 1) = 222;
      *(v266 + 2) = "ASTC_4x4_HDR";
      qword_1EE1BBA88 = v266;
      v267 = re::introspectionAllocator(v266);
      v268 = (*(*v267 + 32))(v267, 24, 8);
      *v268 = 1;
      *(v268 + 1) = 223;
      *(v268 + 2) = "ASTC_5x4_HDR";
      qword_1EE1BBA90 = v268;
      v269 = re::introspectionAllocator(v268);
      v270 = (*(*v269 + 32))(v269, 24, 8);
      *v270 = 1;
      *(v270 + 1) = 224;
      *(v270 + 2) = "ASTC_5x5_HDR";
      qword_1EE1BBA98 = v270;
      v271 = re::introspectionAllocator(v270);
      v272 = (*(*v271 + 32))(v271, 24, 8);
      *v272 = 1;
      *(v272 + 1) = 225;
      *(v272 + 2) = "ASTC_6x5_HDR";
      qword_1EE1BBAA0 = v272;
      v273 = re::introspectionAllocator(v272);
      v274 = (*(*v273 + 32))(v273, 24, 8);
      *v274 = 1;
      *(v274 + 1) = 226;
      *(v274 + 2) = "ASTC_6x6_HDR";
      qword_1EE1BBAA8 = v274;
      v275 = re::introspectionAllocator(v274);
      v276 = (*(*v275 + 32))(v275, 24, 8);
      *v276 = 1;
      *(v276 + 1) = 228;
      *(v276 + 2) = "ASTC_8x5_HDR";
      qword_1EE1BBAB0 = v276;
      v277 = re::introspectionAllocator(v276);
      v278 = (*(*v277 + 32))(v277, 24, 8);
      *v278 = 1;
      *(v278 + 1) = 229;
      *(v278 + 2) = "ASTC_8x6_HDR";
      qword_1EE1BBAB8 = v278;
      v279 = re::introspectionAllocator(v278);
      v280 = (*(*v279 + 32))(v279, 24, 8);
      *v280 = 1;
      *(v280 + 1) = 230;
      *(v280 + 2) = "ASTC_8x8_HDR";
      qword_1EE1BBAC0 = v280;
      v281 = re::introspectionAllocator(v280);
      v282 = (*(*v281 + 32))(v281, 24, 8);
      *v282 = 1;
      *(v282 + 1) = 231;
      *(v282 + 2) = "ASTC_10x5_HDR";
      qword_1EE1BBAC8 = v282;
      v283 = re::introspectionAllocator(v282);
      v284 = (*(*v283 + 32))(v283, 24, 8);
      *v284 = 1;
      *(v284 + 1) = 232;
      *(v284 + 2) = "ASTC_10x6_HDR";
      qword_1EE1BBAD0 = v284;
      v285 = re::introspectionAllocator(v284);
      v286 = (*(*v285 + 32))(v285, 24, 8);
      *v286 = 1;
      *(v286 + 1) = 233;
      *(v286 + 2) = "ASTC_10x8_HDR";
      qword_1EE1BBAD8 = v286;
      v287 = re::introspectionAllocator(v286);
      v288 = (*(*v287 + 32))(v287, 24, 8);
      *v288 = 1;
      *(v288 + 1) = 234;
      *(v288 + 2) = "ASTC_10x10_HDR";
      qword_1EE1BBAE0 = v288;
      v289 = re::introspectionAllocator(v288);
      v290 = (*(*v289 + 32))(v289, 24, 8);
      *v290 = 1;
      *(v290 + 1) = 235;
      *(v290 + 2) = "ASTC_12x10_HDR";
      qword_1EE1BBAE8 = v290;
      v291 = re::introspectionAllocator(v290);
      v292 = (*(*v291 + 32))(v291, 24, 8);
      *v292 = 1;
      *(v292 + 1) = 236;
      *(v292 + 2) = "ASTC_12x12_HDR";
      qword_1EE1BBAF0 = v292;
      v293 = re::introspectionAllocator(v292);
      v294 = (*(*v293 + 32))(v293, 24, 8);
      *v294 = 1;
      *(v294 + 1) = 240;
      *(v294 + 2) = "GBGR422";
      qword_1EE1BBAF8 = v294;
      v295 = re::introspectionAllocator(v294);
      v296 = (*(*v295 + 32))(v295, 24, 8);
      *v296 = 1;
      *(v296 + 1) = 241;
      *(v296 + 2) = "BGRG422";
      qword_1EE1BBB00 = v296;
      v297 = re::introspectionAllocator(v296);
      v298 = (*(*v297 + 32))(v297, 24, 8);
      *v298 = 1;
      *(v298 + 1) = 250;
      *(v298 + 2) = "Depth16Unorm";
      qword_1EE1BBB08 = v298;
      v299 = re::introspectionAllocator(v298);
      v300 = (*(*v299 + 32))(v299, 24, 8);
      *v300 = 1;
      *(v300 + 1) = 252;
      *(v300 + 2) = "Depth32Float";
      qword_1EE1BBB10 = v300;
      v301 = re::introspectionAllocator(v300);
      v302 = (*(*v301 + 32))(v301, 24, 8);
      *v302 = 1;
      *(v302 + 1) = 253;
      *(v302 + 2) = "Stencil8";
      qword_1EE1BBB18 = v302;
      v303 = re::introspectionAllocator(v302);
      v304 = (*(*v303 + 32))(v303, 24, 8);
      *v304 = 1;
      *(v304 + 1) = 255;
      *(v304 + 2) = "Depth24Unorm_Stencil8";
      qword_1EE1BBB20 = v304;
      v305 = re::introspectionAllocator(v304);
      v306 = (*(*v305 + 32))(v305, 24, 8);
      *v306 = 1;
      *(v306 + 1) = 260;
      *(v306 + 2) = "Depth32Float_Stencil8";
      qword_1EE1BBB28 = v306;
      v307 = re::introspectionAllocator(v306);
      v308 = (*(*v307 + 32))(v307, 24, 8);
      *v308 = 1;
      *(v308 + 1) = 261;
      *(v308 + 2) = "X32_Stencil8";
      qword_1EE1BBB30 = v308;
      v309 = re::introspectionAllocator(v308);
      v310 = (*(*v309 + 32))(v309, 24, 8);
      *v310 = 1;
      *(v310 + 8) = 262;
      *(v310 + 16) = "X24_Stencil8";
      qword_1EE1BBB38 = v310;
      __cxa_guard_release(&qword_1EE1BAE20);
    }
  }

  v11 = qword_1EE1BB1B8;
  v315 = v9;
  v316 = v10;
  re::TypeBuilder::beginEnumType(v314, &v311, 1, 1, &v315);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v313.var0 = 2 * v16;
        v313.var1 = v15;
        re::TypeBuilder::addEnumConstant(v314, v20, &v313);
        if (*&v313.var0)
        {
          if (*&v313.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v313.var0 = 2 * v25;
          v313.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v314, v29, &v313);
          if (*&v313.var0)
          {
            if (*&v313.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v314, v31);
  xmmword_1EE1BB198 = v313;
  if (v311)
  {
    if (v311)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB178;
}

uint64_t *re::mtl::introspect_TextureType(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE30, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE38))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB1C0, "TextureType", 4, 4, 1, 1);
      qword_1EE1BB1C0 = &unk_1F5D0C658;
      qword_1EE1BB200 = &re::mtl::introspect_TextureType(BOOL)::enumTable;
      dword_1EE1BB1D0 = 9;
      __cxa_guard_release(&qword_1EE1BAE38);
    }

    if (v2)
    {
      if (byte_1EE1BADD5)
      {
        return &qword_1EE1BB1C0;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v52);
      v3 = byte_1EE1BADD5;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v52);
      if (v3)
      {
        return &qword_1EE1BB1C0;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD5)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD5 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB1C0, a2);
    v49 = 0x1FCECCB8732F5AALL;
    v50 = "TextureType";
    v53 = 208862;
    v54 = "int";
    v9 = v52[0];
    v10 = v52[1];
    if (v53)
    {
      if (v53)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v50);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE1BAE30);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "Texture1D";
      qword_1EE1BAF20 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "Texture1DArray";
      qword_1EE1BAF28 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 2;
      *(v40 + 2) = "Texture2D";
      qword_1EE1BAF30 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 3;
      *(v42 + 2) = "Texture2DArray";
      qword_1EE1BAF38 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 4;
      *(v44 + 2) = "Texture2DMultisample";
      qword_1EE1BAF40 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 5;
      *(v46 + 2) = "TextureCube";
      qword_1EE1BAF48 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 8) = 7;
      *(v48 + 16) = "Texture3D";
      qword_1EE1BAF50 = v48;
      __cxa_guard_release(&qword_1EE1BAE30);
    }
  }

  v11 = qword_1EE1BB200;
  v53 = v9;
  v54 = v10;
  re::TypeBuilder::beginEnumType(v52, &v49, 1, 1, &v53);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v51.var0 = 2 * v16;
        v51.var1 = v15;
        re::TypeBuilder::addEnumConstant(v52, v20, &v51);
        if (*&v51.var0)
        {
          if (*&v51.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v51.var0 = 2 * v25;
          v51.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v52, v29, &v51);
          if (*&v51.var0)
          {
            if (*&v51.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v52, v31);
  xmmword_1EE1BB1E0 = v51;
  if (v49)
  {
    if (v49)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB1C0;
}

void re::mtl::introspect_TextureSwizzle(re::mtl *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BAE40, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE48))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB208, "TextureSwizzle", 1, 1, 1, 1);
      qword_1EE1BB208 = &unk_1F5D0C658;
      qword_1EE1BB248 = &re::mtl::introspect_TextureSwizzle(BOOL)::enumTable;
      dword_1EE1BB218 = 9;
      __cxa_guard_release(&qword_1EE1BAE48);
    }

    if (byte_1EE1BADD6)
    {
      break;
    }

    byte_1EE1BADD6 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB208, a2);
    v41 = 0x582818C9D1EBD686;
    v42 = "TextureSwizzle";
    v45 = 0x31CD534126;
    v46 = "uint8_t";
    v4 = v44[0];
    v5 = v44[1];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BB248;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(v44, &v41, 1, 1, &v45);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v43.var0 = 2 * v11;
            v43.var1 = v10;
            re::TypeBuilder::addEnumConstant(v44, v15, &v43);
            if (*&v43.var0)
            {
              if (*&v43.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v43.var0 = 2 * v20;
              v43.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v44, v24, &v43);
              if (*&v43.var0)
              {
                if (*&v43.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v44, v26);
      xmmword_1EE1BB228 = v43;
      if (v41)
      {
        if (v41)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1BAE40);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Zero";
      qword_1EE1BAEC0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "One";
      qword_1EE1BAEC8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Red";
      qword_1EE1BAED0 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "Green";
      qword_1EE1BAED8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "Blue";
      qword_1EE1BAEE0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 5;
      *(v40 + 16) = "Alpha";
      qword_1EE1BAEE8 = v40;
      __cxa_guard_release(&qword_1EE1BAE40);
    }
  }
}

void *re::mtl::allocInfo_TextureSwizzleChannels(re::mtl *this)
{
  if ((atomic_load_explicit(&qword_1EE1BAE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BB3A8, "TextureSwizzleChannels");
    __cxa_guard_release(&qword_1EE1BAE50);
  }

  return &unk_1EE1BB3A8;
}

void re::mtl::initInfo_TextureSwizzleChannels(re::mtl *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x5A47A4A43A050066;
  v19[1] = "TextureSwizzleChannels";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1BAE58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BAE58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::mtl::introspect_TextureSwizzle(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "red";
      *(v8 + 16) = &qword_1EE1BB208;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BAEA0 = v8;
      v9 = re::introspectionAllocator(v8);
      re::mtl::introspect_TextureSwizzle(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "green";
      *(v11 + 16) = &qword_1EE1BB208;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x100000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1BAEA8 = v11;
      v12 = re::introspectionAllocator(v11);
      re::mtl::introspect_TextureSwizzle(v12, v13);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "blue";
      *(v14 + 16) = &qword_1EE1BB208;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x200000003;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1BAEB0 = v14;
      v15 = re::introspectionAllocator(v14);
      re::mtl::introspect_TextureSwizzle(v15, v16);
      v17 = (*(*v15 + 32))(v15, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "alpha";
      *(v17 + 16) = &qword_1EE1BB208;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x300000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BAEB8 = v17;
      __cxa_guard_release(&qword_1EE1BAE58);
    }
  }

  *(this + 2) = 0x400000008;
  *(this + 6) = 1;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BAEA0;
  *(this + 9) = re::internal::defaultConstruct<re::mtl::TextureSwizzleChannels>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::mtl::TextureSwizzleChannels>;
  *(this + 13) = re::internal::defaultConstructV2<re::mtl::TextureSwizzleChannels>;
  *(this + 14) = re::internal::defaultDestructV2<re::mtl::TextureSwizzleChannels>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::mtl::TextureSwizzleChannels>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *&result = 84148994;
  *a3 = 84148994;
  return result;
}

double re::internal::defaultConstructV2<re::mtl::TextureSwizzleChannels>(_DWORD *a1)
{
  *&result = 84148994;
  *a1 = 84148994;
  return result;
}

uint64_t *re::mtl::introspect_StencilOperation(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE60, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE68))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB250, "StencilOperation", 1, 1, 1, 1);
      qword_1EE1BB250 = &unk_1F5D0C658;
      qword_1EE1BB290 = &re::mtl::introspect_StencilOperation(BOOL)::enumTable;
      dword_1EE1BB260 = 9;
      __cxa_guard_release(&qword_1EE1BAE68);
    }

    if (v2)
    {
      if (byte_1EE1BADD7)
      {
        return &qword_1EE1BB250;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v54);
      v3 = byte_1EE1BADD7;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v54);
      if (v3)
      {
        return &qword_1EE1BB250;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD7)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD7 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB250, a2);
    v51 = 0xFB14E724CF1ABE56;
    v52 = "StencilOperation";
    v55 = 0x31CD534126;
    v56 = "uint8_t";
    v9 = v54[0];
    v10 = v54[1];
    if (v55)
    {
      if (v55)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v52);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE1BAE60);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "Keep";
      qword_1EE1BAF98 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "Zero";
      qword_1EE1BAFA0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 2;
      *(v40 + 2) = "Replace";
      qword_1EE1BAFA8 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 3;
      *(v42 + 2) = "IncrementClamp";
      qword_1EE1BAFB0 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 4;
      *(v44 + 2) = "DecrementClamp";
      qword_1EE1BAFB8 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 5;
      *(v46 + 2) = "Invert";
      qword_1EE1BAFC0 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 6;
      *(v48 + 2) = "IncrementWrap";
      qword_1EE1BAFC8 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 8) = 7;
      *(v50 + 16) = "DecrementWrap";
      qword_1EE1BAFD0 = v50;
      __cxa_guard_release(&qword_1EE1BAE60);
    }
  }

  v11 = qword_1EE1BB290;
  v55 = v9;
  v56 = v10;
  re::TypeBuilder::beginEnumType(v54, &v51, 1, 1, &v55);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v53.var0 = 2 * v16;
        v53.var1 = v15;
        re::TypeBuilder::addEnumConstant(v54, v20, &v53);
        if (*&v53.var0)
        {
          if (*&v53.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v53.var0 = 2 * v25;
          v53.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v54, v29, &v53);
          if (*&v53.var0)
          {
            if (*&v53.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v54, v31);
  xmmword_1EE1BB270 = v53;
  if (v51)
  {
    if (v51)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB250;
}

void *re::mtl::introspect_LoadAction(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "DontCare";
      re::mtl::introspect_LoadAction(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Load";
      qword_1EE1C6198 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "Clear";
      qword_1EE1C61A0 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_LoadAction(BOOL)::info, "LoadAction", 4, 4, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::mtl::introspect_LoadAction(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_LoadAction(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_LoadAction(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::mtl::introspect_LoadAction(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::mtl::introspect_LoadAction(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_LoadAction(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_LoadAction(BOOL)::info;
    }
  }

  re::mtl::introspect_LoadAction(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_LoadAction(BOOL)::info, a2);
  v17[0] = 0xEF852949E8DB8;
  v17[1] = "LoadAction";
  xmmword_1EE1C6168 = v18;
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

  return &re::mtl::introspect_LoadAction(BOOL)::info;
}

void *re::mtl::allocInfo_Viewport(re::mtl *this)
{
  if ((atomic_load_explicit(&qword_1EE1BAE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BB438, "Viewport");
    __cxa_guard_release(&qword_1EE1BAE70);
  }

  return &unk_1EE1BB438;
}

void re::mtl::initInfo_Viewport(re::mtl *this, re::IntrospectionBase *a2)
{
  v31[0] = 0x47A965CB98CLL;
  v31[1] = "Viewport";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1BAE78, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BAE78);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "originX";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BAEF0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "originY";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BAEF8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "width";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BAF00 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "height";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1BAF08 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "zNear";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x1000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1BAF10 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_float(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "zFar";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1400000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1BAF18 = v29;
      __cxa_guard_release(&qword_1EE1BAE78);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1BAEF0;
  *(this + 9) = re::internal::defaultConstruct<re::mtl::Viewport>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::mtl::Viewport>;
  *(this + 13) = re::internal::defaultConstructV2<re::mtl::Viewport>;
  *(this + 14) = re::internal::defaultDestructV2<re::mtl::Viewport>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v30 = v32;
}

void re::internal::defaultConstruct<re::mtl::Viewport>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0x3F80000000000000;
}

void *re::internal::defaultConstructV2<re::mtl::Viewport>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0x3F80000000000000;
  return result;
}

void *re::mtl::introspect_TriangleFillMode(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Fill";
      re::mtl::introspect_TriangleFillMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 8) = 1;
      *(v13 + 16) = "Line";
      qword_1EE1C5F78 = v13;
    }
  }

  {
    v14 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_TriangleFillMode(BOOL)::info, "TriangleFillMode", 1, 1, 1, 1);
    *v14 = &unk_1F5D0C658;
    *(v14 + 8) = &re::mtl::introspect_TriangleFillMode(BOOL)::enumTable;
    *(v14 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_TriangleFillMode(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_TriangleFillMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v16);
    v3 = re::mtl::introspect_TriangleFillMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v16);
    if (v3)
    {
      return &re::mtl::introspect_TriangleFillMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_TriangleFillMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_TriangleFillMode(BOOL)::info;
    }
  }

  re::mtl::introspect_TriangleFillMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_TriangleFillMode(BOOL)::info, a2);
  v15[0] = 0x7681134D4FCCA81CLL;
  v15[1] = "TriangleFillMode";
  xmmword_1EE1C5F48 = v16;
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_TriangleFillMode(BOOL)::info;
}

void *re::mtl::introspect_IndexType(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "UInt16";
      re::mtl::introspect_IndexType(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 8) = 1;
      *(v13 + 16) = "UInt32";
      qword_1EE1C6200 = v13;
    }
  }

  {
    v14 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_IndexType(BOOL)::info, "IndexType", 1, 1, 1, 1);
    *v14 = &unk_1F5D0C658;
    *(v14 + 8) = &re::mtl::introspect_IndexType(BOOL)::enumTable;
    *(v14 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_IndexType(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_IndexType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v16);
    v3 = re::mtl::introspect_IndexType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v16);
    if (v3)
    {
      return &re::mtl::introspect_IndexType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_IndexType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_IndexType(BOOL)::info;
    }
  }

  re::mtl::introspect_IndexType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_IndexType(BOOL)::info, a2);
  v15[0] = 0x76EC8EA12618;
  v15[1] = "IndexType";
  xmmword_1EE1C61D0 = v16;
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_IndexType(BOOL)::info;
}

void *re::mtl::introspect_MultisampleDepthResolveFilter(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Sample0";
      re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Min";
      qword_1EE1C5DD0 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "Max";
      qword_1EE1C5DD8 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info, "MultisampleDepthResolveFilter", 4, 4, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info;
    }
  }

  re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info, a2);
  v17[0] = 0x623525B3D9212FC8;
  v17[1] = "MultisampleDepthResolveFilter";
  xmmword_1EE1C5DA0 = v18;
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

  return &re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info;
}

void *re::mtl::introspect_MultisampleStencilResolveFilter(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Sample0";
      re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 8) = 1;
      *(v13 + 16) = "DepthResolvedSample";
      qword_1EE1C5D70 = v13;
    }
  }

  {
    v14 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info, "MultisampleStencilResolveFilter", 4, 4, 1, 1);
    *v14 = &unk_1F5D0C658;
    *(v14 + 8) = &re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::enumTable;
    *(v14 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v16);
    v3 = re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v16);
    if (v3)
    {
      return &re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info;
    }
  }

  re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info, a2);
  v15[0] = 0x57DB6309EED0C996;
  v15[1] = "MultisampleStencilResolveFilter";
  xmmword_1EE1C5D40 = v16;
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info;
}

uint64_t *re::mtl::introspect_SamplerAddressMode(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE80, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE88))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB298, "SamplerAddressMode", 4, 4, 1, 1);
      qword_1EE1BB298 = &unk_1F5D0C658;
      qword_1EE1BB2D8 = &re::mtl::introspect_SamplerAddressMode(BOOL)::enumTable;
      dword_1EE1BB2A8 = 9;
      __cxa_guard_release(&qword_1EE1BAE88);
    }

    if (v2)
    {
      if (byte_1EE1BADD8)
      {
        return &qword_1EE1BB298;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v54);
      v3 = byte_1EE1BADD8;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v54);
      if (v3)
      {
        return &qword_1EE1BB298;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD8)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD8 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB298, a2);
    v51 = 0xF558394B10E0FD5ELL;
    v52 = "SamplerAddressMode";
    v55 = 208862;
    v56 = "int";
    v9 = v54[0];
    v10 = v54[1];
    if (v55)
    {
      if (v55)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v52);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE1BAE80);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "ClampToEdge";
      qword_1EE1BAFD8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 0;
      *(v38 + 2) = "Clamp";
      qword_1EE1BAFE0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 1;
      *(v40 + 2) = "MirrorClampToEdge";
      qword_1EE1BAFE8 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 1;
      *(v42 + 2) = "Mirror";
      qword_1EE1BAFF0 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 2;
      *(v44 + 2) = "Repeat";
      qword_1EE1BAFF8 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 3;
      *(v46 + 2) = "MirrorRepeat";
      qword_1EE1BB000 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 4;
      *(v48 + 2) = "ClampToZero";
      qword_1EE1BB008 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 8) = 5;
      *(v50 + 16) = "ClampToBorderColor";
      qword_1EE1BB010 = v50;
      __cxa_guard_release(&qword_1EE1BAE80);
    }
  }

  v11 = qword_1EE1BB2D8;
  v55 = v9;
  v56 = v10;
  re::TypeBuilder::beginEnumType(v54, &v51, 1, 1, &v55);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v53.var0 = 2 * v16;
        v53.var1 = v15;
        re::TypeBuilder::addEnumConstant(v54, v20, &v53);
        if (*&v53.var0)
        {
          if (*&v53.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v53.var0 = 2 * v25;
          v53.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v54, v29, &v53);
          if (*&v53.var0)
          {
            if (*&v53.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v54, v31);
  xmmword_1EE1BB2B8 = v53;
  if (v51)
  {
    if (v51)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB298;
}

void *re::mtl::introspect_SamplerBorderColor(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "TransparentBlack";
      re::mtl::introspect_SamplerBorderColor(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "OpaqueBlack";
      qword_1EE1C5F10 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "OpaqueWhite";
      qword_1EE1C5F18 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_SamplerBorderColor(BOOL)::info, "SamplerBorderColor", 4, 4, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::mtl::introspect_SamplerBorderColor(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_SamplerBorderColor(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_SamplerBorderColor(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::mtl::introspect_SamplerBorderColor(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::mtl::introspect_SamplerBorderColor(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_SamplerBorderColor(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_SamplerBorderColor(BOOL)::info;
    }
  }

  re::mtl::introspect_SamplerBorderColor(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_SamplerBorderColor(BOOL)::info, a2);
  v17[0] = 0xF560323C0B41AB1ELL;
  v17[1] = "SamplerBorderColor";
  xmmword_1EE1C5EE0 = v18;
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

  return &re::mtl::introspect_SamplerBorderColor(BOOL)::info;
}

void *re::mtl::introspect_SamplerMinMagFilter(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Nearest";
      re::mtl::introspect_SamplerMinMagFilter(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 8) = 1;
      *(v13 + 16) = "Linear";
      qword_1EE1C5E38 = v13;
    }
  }

  {
    v14 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_SamplerMinMagFilter(BOOL)::info, "SamplerMinMagFilter", 4, 4, 1, 1);
    *v14 = &unk_1F5D0C658;
    *(v14 + 8) = &re::mtl::introspect_SamplerMinMagFilter(BOOL)::enumTable;
    *(v14 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_SamplerMinMagFilter(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_SamplerMinMagFilter(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v16);
    v3 = re::mtl::introspect_SamplerMinMagFilter(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v16);
    if (v3)
    {
      return &re::mtl::introspect_SamplerMinMagFilter(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_SamplerMinMagFilter(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_SamplerMinMagFilter(BOOL)::info;
    }
  }

  re::mtl::introspect_SamplerMinMagFilter(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_SamplerMinMagFilter(BOOL)::info, a2);
  v15[0] = 0xBE442AE103A9B102;
  v15[1] = "SamplerMinMagFilter";
  xmmword_1EE1C5E08 = v16;
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_SamplerMinMagFilter(BOOL)::info;
}

void *re::mtl::introspect_SamplerMipFilter(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "NotMipmapped";
      re::mtl::introspect_SamplerMipFilter(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Nearest";
      qword_1EE1C5FD8 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "Linear";
      qword_1EE1C5FE0 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_SamplerMipFilter(BOOL)::info, "SamplerMipFilter", 4, 4, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::mtl::introspect_SamplerMipFilter(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_SamplerMipFilter(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_SamplerMipFilter(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::mtl::introspect_SamplerMipFilter(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::mtl::introspect_SamplerMipFilter(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_SamplerMipFilter(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_SamplerMipFilter(BOOL)::info;
    }
  }

  re::mtl::introspect_SamplerMipFilter(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_SamplerMipFilter(BOOL)::info, a2);
  v17[0] = 0xFF8F91A9E51F7C8;
  v17[1] = "SamplerMipFilter";
  xmmword_1EE1C5FA8 = v18;
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

  return &re::mtl::introspect_SamplerMipFilter(BOOL)::info;
}

uint64_t *re::mtl::introspect_SamplerCompareFunction(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE90, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE98))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB2E0, "SamplerCompareFunction", 4, 4, 1, 1);
      qword_1EE1BB2E0 = &unk_1F5D0C658;
      qword_1EE1BB320 = &re::mtl::introspect_SamplerCompareFunction(BOOL)::enumTable;
      dword_1EE1BB2F0 = 9;
      __cxa_guard_release(&qword_1EE1BAE98);
    }

    if (v2)
    {
      if (byte_1EE1BADD9)
      {
        return &qword_1EE1BB2E0;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v54);
      v3 = byte_1EE1BADD9;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v54);
      if (v3)
      {
        return &qword_1EE1BB2E0;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD9)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD9 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB2E0, a2);
    v51 = 0xB5BF6CF331CEE5AALL;
    v52 = "SamplerCompareFunction";
    v55 = 208862;
    v56 = "int";
    v9 = v54[0];
    v10 = v54[1];
    if (v55)
    {
      if (v55)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v52);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE1BAE90);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "Never";
      qword_1EE1BB018 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "Less";
      qword_1EE1BB020 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 2;
      *(v40 + 2) = "Equal";
      qword_1EE1BB028 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 3;
      *(v42 + 2) = "LessEqual";
      qword_1EE1BB030 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 4;
      *(v44 + 2) = "Greater";
      qword_1EE1BB038 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 5;
      *(v46 + 2) = "NotEqual";
      qword_1EE1BB040 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 6;
      *(v48 + 2) = "GreaterEqual";
      qword_1EE1BB048 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 8) = 7;
      *(v50 + 16) = "Always";
      qword_1EE1BB050 = v50;
      __cxa_guard_release(&qword_1EE1BAE90);
    }
  }

  v11 = qword_1EE1BB320;
  v55 = v9;
  v56 = v10;
  re::TypeBuilder::beginEnumType(v54, &v51, 1, 1, &v55);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v53.var0 = 2 * v16;
        v53.var1 = v15;
        re::TypeBuilder::addEnumConstant(v54, v20, &v53);
        if (*&v53.var0)
        {
          if (*&v53.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v53.var0 = 2 * v25;
          v53.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v54, v29, &v53);
          if (*&v53.var0)
          {
            if (*&v53.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v54, v31);
  xmmword_1EE1BB300 = v53;
  if (v51)
  {
    if (v51)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB2E0;
}

void *re::mtl::introspect_RenderStage(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 1;
      *(v11 + 2) = "Vertex";
      re::mtl::introspect_RenderStage(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 8) = 2;
      *(v13 + 16) = "Fragment";
      qword_1EE1C6138 = v13;
    }
  }

  {
    v14 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_RenderStage(BOOL)::info, "RenderStage", 4, 4, 1, 1);
    *v14 = &unk_1F5D0C658;
    *(v14 + 8) = &re::mtl::introspect_RenderStage(BOOL)::enumTable;
    *(v14 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_RenderStage(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_RenderStage(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v16);
    v3 = re::mtl::introspect_RenderStage(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v16);
    if (v3)
    {
      return &re::mtl::introspect_RenderStage(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_RenderStage(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_RenderStage(BOOL)::info;
    }
  }

  re::mtl::introspect_RenderStage(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_RenderStage(BOOL)::info, a2);
  v15[0] = 0x1F136AA037B8DD0;
  v15[1] = "RenderStage";
  xmmword_1EE1C6108 = v16;
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_RenderStage(BOOL)::info;
}

double re::MotionParallaxPredictor::MotionParallaxPredictor(re::MotionParallaxPredictor *this)
{
  *this = 1;
  *(this + 4) = 0x400000004;
  *(this + 7) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 16) = 4;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 19) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 40) = 4;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 76) = 1092616192;
  *(this + 154) = 1;
  *(this + 312) = xmmword_1E30DB780;
  *(this + 328) = xmmword_1E30DB790;
  *(this + 344) = xmmword_1E30DB7A0;
  *(this + 180) = 0;
  result = 7.7031233e-27;
  *(this + 364) = xmmword_1E30DB7B0;
  return result;
}

void re::MotionParallaxPredictor::updateCameraTransform(uint64_t a1, float32x4_t *a2, float a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  *(a1 + 240) = a2[2];
  *(a1 + 256) = v7;
  *(a1 + 208) = v5;
  *(a1 + 224) = v6;
  v14 = a2[3];
  re::Centroid::add((a1 + 16), &v14);
  v8 = 312;
  if (*(a1 + 309))
  {
    v8 = 316;
  }

  *(a1 + 309) = *(a1 + 100) > *(a1 + v8);
  v9 = *(a1 + 304) * a3;
  if (v9 <= 1.0)
  {
    v10 = *(a1 + 304) * a3;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = v9 < 0.0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = v10;
  }

  v13 = vmlaq_n_f32(vmulq_n_f32(v14, v12), *(a1 + 288), 1.0 - v12);
  *(a1 + 272) = *(a1 + 288);
  *(a1 + 288) = v13;
}

void re::MotionParallaxPredictor::getMotionParallaxPrediction(float32x4_t *this, float a2)
{
  v4 = this[17];
  v5 = vsubq_f32(this[18], v4);
  v4.i64[0] = this[15].i64[0];
  v4.i32[2] = this[15].i32[2];
  v6 = vmulq_f32(v4, v4);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  *v6.f32 = vrsqrte_f32(v7);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
  v8 = vmulq_n_f32(v4, vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v9 = vmulq_f32(v8, v8);
  v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  if (v10 >= 0.00000011921)
  {
    v11 = vmulq_f32(v5, v8);
    v5 = vsubq_f32(v5, vmulq_n_f32(v8, (v11.f32[2] + vaddv_f32(*v11.f32)) / v10));
  }

  v17 = v5;
  re::Centroid::add(this + 7, &v17);
  if (this[19].i8[4])
  {
    v12 = this + 11;
  }

  else
  {
    v12 = &v17;
  }

  v13 = vmulq_f32(*v12, *v12);
  v14 = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
  if ((this[19].i8[5] & 1) != 0 || (v15 = 0.0, v14 <= this[21].f32[0]))
  {
    v15 = v14;
  }

  v16 = this[20].f32[2];
  if (v16 >= v15)
  {
    v16 = v15;
  }

  re::SmoothDampener::smooth((&this[20].u64[1] + 4), v16, a2);
}

void re::MotionParallaxPredictor::getParallaxAmount(float32x4_t *this, float a2)
{
  if (this->i8[0] == 1)
  {
    re::MotionParallaxPredictor::getMotionParallaxPrediction(this, a2);
    v5 = (v4 - this[22].f32[3]) / (this[23].f32[0] - this[22].f32[3]);
    if (v5 <= 1.0)
    {
      v6 = (v4 - this[22].f32[3]) / (this[23].f32[0] - this[22].f32[3]);
    }

    else
    {
      v6 = 1.0;
    }

    if (v5 < 0.0)
    {
      v6 = 0.0;
    }

    v7 = 1.0 - ((v6 * v6) / ((((v6 * v6) - v5) * 2.0) + 1.0));
    v8 = this[23].f32[2] * a2;
    if (v8 <= 1.0)
    {
      v9 = this[23].f32[2] * a2;
    }

    else
    {
      v9 = 1.0;
    }

    if (v8 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    this[23].f32[1] = (v10 * v7) + (this[23].f32[1] * (1.0 - v10));
  }
}

float re::MotionParallaxPredictor::updateParamsFromDefaults(re::MotionParallaxPredictor *this, const char *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("DepthMitigation.MotionParallaxEnabled", a2, &v24);
  if (v24 == 1)
  {
    *this = BYTE1(v24);
  }

  v4 = *(this + 1);
  re::Defaults::intValue("DepthMitigation.CameraTransformWindow", v3, &v24);
  if (v24)
  {
    v6 = DWORD1(v24);
  }

  else
  {
    v6 = v4;
  }

  if (v6 != *(this + 1))
  {
    *(this + 1) = v6;
    v27 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    LODWORD(v28) = v6;
    v30 = 0;
    v29 = 0uLL;
    re::Queue<re::Vector3<float>>::operator=(this + 2, &v24);
    v7 = v29;
    *(this + 4) = v28;
    *(this + 5) = v7;
    *(this + 12) = v30;
    if (v24)
    {
      v5 = v27;
      if (v27)
      {
        (*(*v24 + 40))();
      }
    }
  }

  v8 = *(this + 2);
  re::Defaults::intValue("DepthMitigation.ParallaxWindowSize", v5, &v24);
  if (v24)
  {
    v10 = DWORD1(v24);
  }

  else
  {
    v10 = v8;
  }

  if (v10 != *(this + 2))
  {
    *(this + 2) = v10;
    v27 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    LODWORD(v28) = v10;
    v30 = 0;
    v29 = 0uLL;
    re::Queue<re::Vector3<float>>::operator=(this + 14, &v24);
    v11 = v29;
    *(this + 10) = v28;
    *(this + 11) = v11;
    *(this + 24) = v30;
    if (v24)
    {
      v9 = v27;
      if (v27)
      {
        (*(*v24 + 40))();
      }
    }
  }

  re::Defaults::floatValue("DepthMitigation.CameraPositionLerpRate", v9, &v24);
  if (v24 == 1)
  {
    *(this + 76) = DWORD1(v24);
  }

  re::Defaults::floatValue("DepthMitigation.MinimalParallaxAmount", v12, &v24);
  if (v24 == 1)
  {
    *(this + 91) = DWORD1(v24);
  }

  re::Defaults::floatValue("DepthMitigation.MaximalParallaxAmount", v13, &v24);
  if (v24 == 1)
  {
    *(this + 92) = DWORD1(v24);
  }

  re::Defaults::floatValue("DepthMitigation.MotionParallaxSmoothTime", v14, &v24);
  if (v24 == 1)
  {
    *(this + 94) = DWORD1(v24);
  }

  re::Defaults::floatValue("DepthMitigation.MaxErrorToBreakStable", v15, &v24);
  if (v24 == 1)
  {
    *(this + 79) = DWORD1(v24);
  }

  re::Defaults::floatValue("DepthMitigation.MaxErrorToReturnStable", v16, &v24);
  if (v24 == 1)
  {
    *(this + 78) = DWORD1(v24);
  }

  re::Defaults::floatValue("DepthMitigation.ParallaxClipping", v17, &v24);
  if (v24 == 1)
  {
    *(this + 82) = DWORD1(v24);
  }

  re::Defaults::floatValue("DepthMitigation.SoftDampenerSmoothing", v18, &v24);
  if (v24 == 1)
  {
    *(this + 85) = DWORD1(v24);
  }

  re::Defaults::floatValue("DepthMitigation.SoftDampenerMaxVelocity", v19, &v24);
  if (v24 == 1)
  {
    *(this + 86) = DWORD1(v24);
  }

  re::Defaults::floatValue("DepthMitigation.SoftDampenerSmoothingDecrease", v20, &v24);
  if (v24 == 1)
  {
    *(this + 87) = DWORD1(v24);
  }

  re::Defaults::floatValue("DepthMitigation.SoftDampenerSmoothingIncrease", v21, &v24);
  if (v24 == 1)
  {
    *(this + 89) = DWORD1(v24);
  }

  re::Defaults::floatValue("DepthMitigation.SoftDampenerSmoothingChangeRate", v22, &v24);
  if (v24 == 1)
  {
    result = *(&v24 + 1);
    *(this + 88) = DWORD1(v24);
  }

  return result;
}

uint64_t *re::Queue<re::Vector3<float>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    v5 = *a2;
    if (*a1)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *a1 = v5;
      *a2 = v4;
      v7 = a1[1];
      a1[1] = a2[1];
      a2[1] = v7;
      v8 = a1[2];
      a1[2] = a2[2];
      a2[2] = v8;
      v9 = a1[5];
      a1[5] = a2[5];
      a2[5] = v9;
      v10 = a1[3];
      a1[3] = a2[3];
      a2[3] = v10;
    }

    else
    {
      if (v5)
      {
        v11 = a2[2];
        if (v11 >= a1[2])
        {
          re::Queue<re::Vector3<float>>::setCapacity(a1, a2[2]);
          std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float>&>,0>(v14, a2, 0, a2, a1[2], a1, 0);
          v13 = a1[2];
          a1[2] = v11;
          while (v13 != a2[2])
          {
            *(a1[5] + 16 * ((v13 + a1[3]) % a1[1])) = *(a2[5] + 16 * ((v13 + a2[3]) % a2[1]));
            ++v13;
          }
        }

        else
        {
          std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float>&>,0>(v14, a2, 0, a2, a2[2], a1, 0);
          a1[2] = v11;
        }
      }

      else
      {
        a1[2] = 0;
      }

      ++*(a1 + 8);
    }
  }

  return a1;
}

void *std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float>&>,0>(void *result, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a2 != a4 || a3 != a5)
  {
    do
    {
      do
      {
        v7 = a3;
        *(a6[5] + 16 * ((a7 + a6[3]) % a6[1])) = *(a2[5] + 16 * ((a3 + a2[3]) % a2[1]));
        ++a3;
        ++a7;
      }

      while (a2 != a4);
    }

    while (a5 - 1 != v7);
    a3 = a5;
  }

  *result = a2;
  result[1] = a3;
  result[2] = a6;
  result[3] = a7;
  return result;
}

re::SmoothDeformerModelBuilder *re::SmoothDeformerModelBuilder::SmoothDeformerModelBuilder(re::SmoothDeformerModelBuilder *this, re::Allocator *a2, uint64_t a3, unint64_t a4, DeformationModelData *a5)
{
  *this = a5;
  v9 = re::DeformationModelData::create<re::SmoothDeformer,re::SmoothDeformerModel>(a5, a2);
  re::FixedArray<re::StringID>::init<>(v9, a2, a4);
  re::FixedArray<unsigned short>::init<unsigned short const&>(v9 + 3, a2, a3, &re::SmoothDeformerModel::kInvalidIndex);
  return this;
}

uint64_t re::DeformationModelData::create<re::SmoothDeformer,re::SmoothDeformerModel>(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 48, 8);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v6[0] = &unk_1F5D09BF0;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D09BF0;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100]((a1 + 400), &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *(a1 + 400);
}

unint64_t *re::SmoothDeformerModelBuilder::setEnvelopeBufferName(re::SmoothDeformerModelBuilder *this, unint64_t a2, unint64_t a3, const re::StringID *a4)
{
  v4 = *(*this + 400);
  if (v4[4] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v4[5] + 2 * a2) = a3;
  if (v4[1] <= a3)
  {
    goto LABEL_7;
  }

  v5 = (v4[2] + 16 * a3);

  return re::StringID::operator=(v5, a4);
}

uint64_t re::SmoothDeformer::init(uint64_t result, uint64_t a2)
{
  if ((*(result + 24) & 1) == 0)
  {
    v2 = result;
    *(result + 24) = 1;
    v3 = *(a2 + 16);
    *(result + 8) = *(v3 + 32);
    if (*(v3 + 208))
    {
      if (*(v3 + 311) == 1)
      {
        v7 = 0;
        v10 = 0;
        memset(v13, 0, sizeof(v13));
        v14 = 0;
        v18 = 0;
        v19 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v5);
        NS::SharedPtr<MTL::Buffer>::operator=((v2 + 16), ComputePipelineState);
        *(v2 + 25) = 1;
        if (v18)
        {

          v18 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v13);
        if (v10 == 1 && v11)
        {
          if (BYTE8(v11))
          {
            (*(*v11 + 40))();
          }

          v11 = 0u;
          v12 = 0u;
        }

        if (v7 == 1 && v8)
        {
          if (BYTE8(v8))
          {
            (*(*v8 + 40))();
          }

          v9 = 0u;
          v8 = 0u;
        }

        result = v5;
        if (v5)
        {
          if (v6)
          {
            return (*(*v5 + 40))();
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::SmoothDeformer::addDeformationInstance@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v4 = 0;
  }

  else if (*(result + 24) == 1)
  {
    v4 = *(result + 25);
  }

  else
  {
    v4 = 1;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = vdupq_n_s64(2uLL);
  LODWORD(v5) = *a3;
  if (v5 == 255)
  {
    v5 = *(a3 + 2);
    if (v5)
    {
      LOBYTE(v5) = (*(v5 + 208) != 0) & v4;
    }
  }

  *(a4 + 24) = v5;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::SmoothDeformer::allocateBuffers(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = a5;
  v102 = *MEMORY[0x1E69E9840];
  v84 = *a5;
  v12 = *(*a5 + 48);
  re::globalAllocators(a1);
  v13 = (*(*a2 + 32))(a2, 24, 8);
  v15 = v13;
  v13[1] = v12;
  v13[2] = 0;
  *v13 = a2;
  if (v12)
  {
    if (v12 >> 57)
    {
LABEL_78:
      re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 128, v12);
      _os_crash();
      __break(1u);
      goto LABEL_79;
    }

    v13 = (*(*a2 + 32))(a2, v12 << 7, 8);
    *(v15 + 16) = v13;
    if (!v13)
    {
LABEL_79:
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_80:
      re::internal::assertLog(5, v65, "assertion failure: '%s' (%s:line %i) Invalid deformation execution mode: %u.", "!Unreachable code", "allocateBuffers", 203, a4);
      _os_crash();
      __break(1u);
    }

    v8 = v13;
    if (v12 != 1)
    {
      bzero(v13, (v12 << 7) - 128);
      v8 += 8 * v12 - 8;
    }

    v8[6] = 0u;
    v8[7] = 0u;
    v8[4] = 0u;
    v8[5] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    *v8 = 0u;
    v8[1] = 0u;
  }

  v17 = re::globalAllocators(v13)[2];
  *&v97 = &unk_1F5D09B98;
  *(&v98 + 1) = v17;
  *&v99 = &v97;
  v85 = (*(*a2 + 16))(a2, v15, &v97);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v97);
  if (v12)
  {
    v18 = 0;
    v81 = v12;
    v82 = v10;
    while (1)
    {
      v19 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v84 + 8, v18);
      v20 = *(v19 + 8);
      v21 = v10[6];
      if (v21 <= v20)
      {
        break;
      }

      v22 = v19;
      v23 = (v10[5] + 312 * v20);
      v15 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v10[1], v20);
      v88 = *(*(v15 + 352) + 104);
      LOBYTE(v97) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 1u);
      v6 = *(v23[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 7, &v97) + 20);
      LOBYTE(v97) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 1u);
      v24 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 15, &v97);
      v7 = *(v85 + 8);
      if (v7 <= v18)
      {
        goto LABEL_68;
      }

      v25 = *(a1 + 1);
      v7 = WORD1(*(*(v15 + 368) + 16));
      v8 = *(v25 + 24);
      if (v8 <= v7)
      {
        goto LABEL_69;
      }

      v87 = v22;
      v26 = *(*(v25 + 40) + 16 * WORD1(*(*(v15 + 368) + 16))) + 864 * *(*(v15 + 368) + 16);
      v9 = *(v15 + 392);
      v7 = *(v26 + 56);
      if (v7 <= v9)
      {
        goto LABEL_70;
      }

      v12 = *(v23[16] + 20 * v24 + 4);
      v27 = *(v85 + 16);
      v28 = (*(v26 + 64) + 544 * *(v15 + 392));
      v29 = *(*(v15 + 344) + 400);
      if (v29)
      {
        v7 = v29[4];
        if (v7 <= v9)
        {
          goto LABEL_71;
        }

        v7 = *(v29[5] + 2 * v9);
        v9 = v29[1];
        if (v9 <= v7)
        {
          goto LABEL_72;
        }

        re::StringID::StringID(&v97, (v29[2] + 16 * v7));
        v30 = v28;
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30 && !v31[8]);
        *v90 = v97 >> 1;
        v32 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v31 + 5, v90);
        if (v32 == -1)
        {
          v33 = 0;
        }

        else
        {
          v33 = v31[6] + 16 * v32 + 8;
        }

        if (v97)
        {
          if (v97)
          {
          }
        }
      }

      else
      {
        v33 = 0;
      }

      v34 = v6 / v12;
      v12 = v27 + (v18 << 7);
      v35 = v34;
      v36 = 4 * v34;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 4 * v34, 4uLL, &v97);
      v9 = v97;
      v6 = DWORD2(v97);
      v37 = HIDWORD(v97);
      v38 = v98;
      *(v12 + 80) = v97;
      *(v12 + 88) = v6;
      *(v12 + 92) = v37;
      *(v12 + 96) = v38;
      if (v33)
      {
        v39 = re::AttributeTable::buffers(v28);
        v41 = *v33;
        if (v40 <= v41)
        {
          goto LABEL_73;
        }

        v42 = re::BufferView::contents((v39 + 24 * *v33));
        memcpy(v6 + v9, v42, v36);
      }

      else if (v37 >= 4)
      {
        memset_pattern16(v6 + v9, &unk_1E30D6460, v37 & 0xFFFFFFFC);
      }

      v86 = v35;
      v43 = 4 * (v35 + 2 * v35);
      v44 = v28;
      do
      {
        v45 = v44;
        v44 = *v44;
      }

      while (v44 && !v45[8]);
      *&v97 = 0x68D02E008A94F13DLL;
      v46 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v45 + 5, &v97);
      if (v46 == -1)
      {
        v7 = 0;
      }

      else
      {
        v7 = v45[6] + 16 * v46 + 8;
      }

      v47 = v28;
      do
      {
        v48 = v47;
        v47 = *v47;
      }

      while (v47 && !v48[8]);
      *&v97 = 0x3A18F0C88F5C28F6;
      v49 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v48 + 5, &v97);
      if (v49 == -1)
      {
        v8 = 0;
      }

      else
      {
        v8 = (v48[6] + 16 * v49 + 8);
      }

      v50 = v28;
      do
      {
        v6 = v50;
        v50 = *v50;
      }

      while (v50 && !v6[8]);
      *&v97 = 0x68D02E0360163291;
      v51 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v6 + 5, &v97);
      if (v51 != -1 && v7 && v8)
      {
        v9 = v51;
        if (v88)
        {
          v52 = *v88;
          v53 = *(v88 + 1);
        }

        else
        {
          v53 = 0.5;
          v52 = 10;
        }

        v6 = v6[6];
        *v12 = v52;
        *(v12 + 4) = v53;
        v54 = re::AttributeTable::buffers(v28);
        v56 = *v7;
        if (v55 <= v56)
        {
          goto LABEL_74;
        }

        v7 = 24;
        *(v12 + 104) = v54 + 24 * v56;
        v57 = re::AttributeTable::buffers(v28);
        v59 = *v8;
        if (v58 <= v59)
        {
          goto LABEL_75;
        }

        v6 += 2 * v9;
        *(v12 + 112) = v57 + 24 * *v8;
        v60 = re::AttributeTable::buffers(v28);
        v62 = *(v6 + 8);
        if (v61 <= v62)
        {
          goto LABEL_76;
        }

        *(v12 + 120) = v60 + 24 * *(v6 + 8);
        v6 = a3;
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, v43, 4uLL, &v97);
        v63 = v98;
        v64 = *(&v97 + 1);
        *(v12 + 32) = v97;
        *(v12 + 40) = v64;
        *(v12 + 48) = v63;
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, v43, 4uLL, &v97);
        v66 = v98;
        v67 = *(&v97 + 1);
        *(v12 + 56) = v97;
        *(v12 + 64) = v67;
        *(v12 + 72) = v66;
        if (a4 == 1)
        {
          v10 = v82;
          v78 = v78 & 0xFFFF000000000000 | 0x1010001000CLL;
          v79 = v79 & 0xFFFFFF0000000000 | 0x1E00000000;
          v68 = re::DeformationBufferAllocator::alloc(*(v15 + 360), v82[2], 1, v78, v79, *(v87 + 16), v43);
          v69 = *(v15 + 360);
          v15 = *(v87 + 16);
          v6 = *(v69 + 8);
          if (v6 <= v15)
          {
            goto LABEL_77;
          }

          v70 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v69 + 16) + 72 * *(v87 + 16) + 16, v68);
          WORD2(v97) = 257;
          LODWORD(v97) = 65548;
          BYTE12(v97) = 30;
          DWORD2(v97) = 0;
          re::DeformationVertexBufferState::setOutputBuffer(v23, 1, 1, (v70 + 24), &v97);
          if (v88)
          {
            v71 = v88[1];
          }

          else
          {
            v71 = 1056964608;
          }

          v15 = v86;
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 8uLL, 4uLL, &v97);
          v72 = v97;
          v73 = v98;
          v74 = *(&v97 + 1);
          v75 = (v97 + DWORD2(v97));
          *v75 = v86;
          v75[1] = v71;
          *(v12 + 8) = v72;
          *(v12 + 16) = v74;
          *(v12 + 24) = v73;
        }

        else
        {
          v10 = v82;
          if (a4)
          {
            goto LABEL_80;
          }

          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, v43, 0x10uLL, &v97);
          *&v90[4] = 257;
          *v90 = 65548;
          LOBYTE(v91) = 30;
          *&v90[8] = 0;
          re::DeformationVertexBufferState::setOutputBuffer(v23, 1u, 0, &v97, v90);
        }
      }

      else
      {
        v10 = v82;
      }

      v12 = v81;
      if (++v18 == v81)
      {
        goto LABEL_66;
      }
    }

    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v19 + 8), v21);
    _os_crash();
    __break(1u);
LABEL_68:
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    v92 = 468;
    v93 = 2048;
    v94 = v18;
    v95 = 2048;
    v96 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_69:
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    v92 = 797;
    v93 = 2048;
    v94 = v7;
    v95 = 2048;
    v96 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_70:
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    v92 = 476;
    v93 = 2048;
    v94 = v9;
    v95 = 2048;
    v96 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_71:
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    v92 = 476;
    v93 = 2048;
    v94 = v9;
    v95 = 2048;
    v96 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_72:
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    v92 = 476;
    v93 = 2048;
    v94 = v7;
    v95 = 2048;
    v96 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_73:
    re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v41, v40);
    _os_crash();
    __break(1u);
LABEL_74:
    re::internal::assertLog(6, v55, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v56, v55);
    _os_crash();
    __break(1u);
LABEL_75:
    re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v59, v58);
    _os_crash();
    __break(1u);
LABEL_76:
    re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v62, v61);
    _os_crash();
    __break(1u);
LABEL_77:
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    v92 = 476;
    v93 = 2048;
    v94 = v15;
    v95 = 2048;
    v96 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_78;
  }

LABEL_66:
  *a6 |= 2uLL;
  *(a6 + 9) = 1;
  return v85;
}
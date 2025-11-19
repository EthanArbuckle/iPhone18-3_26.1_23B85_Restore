uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::Vector2<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v27 = 0;
    v24 = "Cannot make additive values, output values expected to match input values size.";
    v25 = &v27;
    goto LABEL_42;
  }

  if (!a2[1])
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v24 = "Cannot make additive values, base values array size must not be zero.";
    v25 = buf;
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    return 0;
  }

  result = 1;
  if (!a4)
  {
    return result;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    if (a4 == v6)
    {
      re::internal::assertLog(6, a2, *&v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash();
      __break(1u);
LABEL_44:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v12);
      _os_crash();
      __break(1u);
LABEL_45:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v14);
      _os_crash();
      __break(1u);
LABEL_46:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, a4);
      _os_crash();
      __break(1u);
LABEL_47:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v22);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v8 = *(*a1 + 8 * v6);
    v9 = *v8;
    v10 = *(a3 + 8 * v6);
    v11 = *v10;
    if (v9 != v11)
    {
      if (v11)
      {
        if ((v9 & 1) == 0)
        {
          *v10 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_13;
        }

        *v10 = 1;
      }

      *(v10 + 1) = *(v8 + 1);
    }

LABEL_13:
    v12 = *(a1 + 1);
    if (v12 <= v6)
    {
      goto LABEL_44;
    }

    v13 = *(*a1 + 8 * v6);
    v14 = a2[1];
    if (v13->i8[0] == 1)
    {
      if (v14 <= v6)
      {
        goto LABEL_45;
      }

      v15 = **(*a2 + 8 * v6);
      v7 = vneg_f32(v15);
      *(*(a3 + 8 * v6) + 8) = vsub_f32(v13[1], v15);
      v12 = *(a1 + 1);
      v14 = a2[1];
    }

    ++v6;
  }

  while (v12 > v6 && v14 > v6);
  result = 1;
  if (v12 > v6)
  {
    v16 = v6;
    if (a4 <= v6)
    {
      v17 = v6;
    }

    else
    {
      v17 = a4;
    }

    if (a4 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = a4;
    }

    while (1)
    {
      if (v6 == v16)
      {
        goto LABEL_46;
      }

      v18 = *(*a1 + 8 * v16);
      v19 = *v18;
      v20 = *(a3 + 8 * v16);
      v21 = *v20;
      if (v19 != v21)
      {
        if (v21)
        {
          if (v19)
          {
            goto LABEL_33;
          }

          *v20 = 0;
        }

        else if (v19)
        {
          *v20 = 1;
LABEL_33:
          *(v20 + 1) = *(v18 + 1);
        }
      }

      v22 = *(a1 + 1);
      if (v22 <= v16)
      {
        goto LABEL_47;
      }

      *(*(a3 + 8 * v16) + 8) = vadd_f32(v7, *(*(*a1 + 8 * v16) + 8));
      if (*(a1 + 1) <= ++v16)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::Vector3<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v27 = 0;
    v24 = "Cannot make additive values, output values expected to match input values size.";
    v25 = &v27;
    goto LABEL_42;
  }

  if (!a2[1])
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v24 = "Cannot make additive values, base values array size must not be zero.";
    v25 = buf;
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    return 0;
  }

  result = 1;
  if (!a4)
  {
    return result;
  }

  v6 = 0;
  v7 = 0uLL;
  do
  {
    if (a4 == v6)
    {
      re::internal::assertLog(6, a2, *v7.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash();
      __break(1u);
LABEL_44:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v12);
      _os_crash();
      __break(1u);
LABEL_45:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v14);
      _os_crash();
      __break(1u);
LABEL_46:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, a4);
      _os_crash();
      __break(1u);
LABEL_47:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v22);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v8 = *(*a1 + 8 * v6);
    v9 = *v8;
    v10 = *(a3 + 8 * v6);
    v11 = *v10;
    if (v9 != v11)
    {
      if (v11)
      {
        if ((v9 & 1) == 0)
        {
          *v10 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_13;
        }

        *v10 = 1;
      }

      *(v10 + 1) = *(v8 + 1);
    }

LABEL_13:
    v12 = *(a1 + 1);
    if (v12 <= v6)
    {
      goto LABEL_44;
    }

    v13 = *(*a1 + 8 * v6);
    v14 = a2[1];
    if (v13->i8[0] == 1)
    {
      if (v14 <= v6)
      {
        goto LABEL_45;
      }

      v15 = **(*a2 + 8 * v6);
      v7 = vnegq_f32(v15);
      *(*(a3 + 8 * v6) + 16) = vsubq_f32(v13[1], v15);
      v12 = *(a1 + 1);
      v14 = a2[1];
    }

    ++v6;
  }

  while (v12 > v6 && v14 > v6);
  result = 1;
  if (v12 > v6)
  {
    v16 = v6;
    if (a4 <= v6)
    {
      v17 = v6;
    }

    else
    {
      v17 = a4;
    }

    if (a4 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = a4;
    }

    while (1)
    {
      if (v6 == v16)
      {
        goto LABEL_46;
      }

      v18 = *(*a1 + 8 * v16);
      v19 = *v18;
      v20 = *(a3 + 8 * v16);
      v21 = *v20;
      if (v19 != v21)
      {
        if (v21)
        {
          if (v19)
          {
            goto LABEL_33;
          }

          *v20 = 0;
        }

        else if (v19)
        {
          *v20 = 1;
LABEL_33:
          *(v20 + 1) = *(v18 + 1);
        }
      }

      v22 = *(a1 + 1);
      if (v22 <= v16)
      {
        goto LABEL_47;
      }

      *(*(a3 + 8 * v16) + 16) = vaddq_f32(v7, *(*(*a1 + 8 * v16) + 16));
      if (*(a1 + 1) <= ++v16)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::Quaternion<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v40 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v44 = 0;
    v41 = "Cannot make additive values, output values expected to match input values size.";
    v42 = &v44;
    goto LABEL_42;
  }

  if (!a2[1])
  {
    v40 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v41 = "Cannot make additive values, base values array size must not be zero.";
    v42 = buf;
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, v41, v42, 2u);
    return 0;
  }

  result = 1;
  if (!a4)
  {
    return result;
  }

  v6 = 0;
  v7 = xmmword_1E30474D0;
  do
  {
    if (a4 == v6)
    {
      re::internal::assertLog(6, a2, *v7.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash();
      __break(1u);
LABEL_44:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v12);
      _os_crash();
      __break(1u);
LABEL_45:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v14);
      _os_crash();
      __break(1u);
LABEL_46:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v30, a4);
      _os_crash();
      __break(1u);
LABEL_47:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v25, v35);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v8 = *(*a1 + 8 * v6);
    v9 = *v8;
    v10 = *(a3 + 8 * v6);
    v11 = *v10;
    if (v9 != v11)
    {
      if (v11)
      {
        if ((v9 & 1) == 0)
        {
          *v10 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_13;
        }

        *v10 = 1;
      }

      *(v10 + 1) = *(v8 + 1);
    }

LABEL_13:
    v12 = *(a1 + 1);
    if (v12 <= v6)
    {
      goto LABEL_44;
    }

    v13 = *(*a1 + 8 * v6);
    v14 = a2[1];
    if (v13->i8[0] == 1)
    {
      if (v14 <= v6)
      {
        goto LABEL_45;
      }

      _Q1 = **(*a2 + 8 * v6);
      v7 = vnegq_f32(_Q1);
      _Q2 = v13[1];
      v17 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
      v7.i32[3] = _Q1.i32[3];
      _Q5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), _Q1), _Q2, v17);
      v19 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), _Q2, _Q1, 3);
      _Q5.i32[0] = _Q2.i32[3];
      v20 = vmlsq_laneq_f32(v19, _Q1, _Q2, 3);
      __asm { FMLA            S2, S5, V1.S[3] }

      v20.i32[3] = _Q2.i32[0];
      *(*(a3 + 8 * v6) + 16) = v20;
      v12 = *(a1 + 1);
      v14 = a2[1];
    }

    ++v6;
  }

  while (v12 > v6 && v14 > v6);
  result = 1;
  if (v12 > v6)
  {
    v25 = v6;
    v26 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
    v27 = vnegq_f32(v7);
    v28 = vdupq_laneq_s32(v7, 3);
    _S4 = v7.i32[3];
    if (a4 <= v6)
    {
      v30 = v6;
    }

    else
    {
      v30 = a4;
    }

    if (a4 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = a4;
    }

    while (1)
    {
      if (v6 == v25)
      {
        goto LABEL_46;
      }

      v31 = *(*a1 + 8 * v25);
      v32 = *v31;
      v33 = *(a3 + 8 * v25);
      v34 = *v33;
      if (v32 != v34)
      {
        if (v34)
        {
          if (v32)
          {
            goto LABEL_33;
          }

          *v33 = 0;
        }

        else if (v32)
        {
          *v33 = 1;
LABEL_33:
          *(v33 + 1) = *(v31 + 1);
        }
      }

      v35 = *(a1 + 1);
      if (v35 <= v25)
      {
        goto LABEL_47;
      }

      _Q5 = *(*(*a1 + 8 * v25) + 16);
      v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), v27), _Q5, v26);
      v38 = vmlaq_laneq_f32(vmlaq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), _Q5, v28), v7, _Q5, 3);
      __asm { FMLA            S7, S4, V5.S[3] }

      v38.i32[3] = _S7;
      *(*(a3 + 8 * v25++) + 16) = v38;
      if (*(a1 + 1) <= v25)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::GenericSRT<float>>(re *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v42 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v43 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_42;
  }

  v4 = a2;
  if (!*(a2 + 8))
  {
    v42 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v43 = "Cannot make additive values, base values array size must not be zero.";
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
    return 0;
  }

  *buf = 0x3F8000003F800000;
  *&buf[8] = 1065353216;
  v46.i64[0] = 0;
  v46.i64[1] = 0x3F80000000000000;
  v47 = 0uLL;
  if (!a4)
  {
    return 1;
  }

  v8 = 0;
  v9 = 1;
  __asm { FMOV            V0.4S, #1.0 }

  v44 = _Q0;
  do
  {
    if (a4 == v8)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash();
      __break(1u);
LABEL_44:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v21);
      _os_crash();
      __break(1u);
LABEL_45:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v23);
      _os_crash();
      __break(1u);
LABEL_46:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, a4);
      _os_crash();
      __break(1u);
LABEL_47:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v40);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v15 = *(*a1 + 8 * v8);
    v16 = *v15;
    v17 = *(a3 + 8 * v8);
    v18 = *v17;
    if (v16 != v18)
    {
      if (v18)
      {
        if ((v16 & 1) == 0)
        {
          *v17 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_13;
        }

        *v17 = 1;
      }

      v19 = v15[1];
      v20 = v15[3];
      *(v17 + 2) = v15[2];
      *(v17 + 3) = v20;
      *(v17 + 1) = v19;
    }

LABEL_13:
    v21 = *(a1 + 1);
    if (v21 <= v8)
    {
      goto LABEL_44;
    }

    v22 = *a1;
    v23 = *(v4 + 8);
    if (**(*a1 + 8 * v8) == 1)
    {
      if (v23 <= v8)
      {
        goto LABEL_45;
      }

      v24 = *(*v4 + 8 * v8);
      v25 = v24[1];
      v26 = v24[2];
      v27 = vnegq_f32(v25);
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v27.i32[3] = v25.i32[3];
      v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v25), v26, v28);
      v30 = vaddq_f32(v29, v29);
      v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
      v32 = vaddq_f32(v26, vmulq_laneq_f32(v31, v25, 3));
      v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), v25), v31, v28);
      *buf = vdivq_f32(v44, *v24);
      v46 = v27;
      v47 = vmulq_f32(vaddq_f32(v32, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL)), vnegq_f32(*buf));
      re::AnimationValueTraits<re::GenericSRT<float>>::combine((*(v22 + 8 * v8) + 16), buf, (*(a3 + 8 * v8) + 16));
      v21 = *(a1 + 1);
      v23 = *(v4 + 8);
    }

    ++v8;
  }

  while (v21 > v8 && v23 > v8);
  if (v21 > v8)
  {
    v4 = v8;
    if (a4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = a4;
    }

    if (a4 <= v8)
    {
      v8 = v8;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      if (v8 == v4)
      {
        goto LABEL_46;
      }

      v34 = *(*a1 + 8 * v4);
      v35 = *v34;
      v36 = *(a3 + 8 * v4);
      v37 = *v36;
      if (v35 != v37)
      {
        if (v37)
        {
          if (v35)
          {
            goto LABEL_33;
          }

          *v36 = 0;
        }

        else if (v35)
        {
          *v36 = 1;
LABEL_33:
          v38 = v34[1];
          v39 = v34[3];
          *(v36 + 2) = v34[2];
          *(v36 + 3) = v39;
          *(v36 + 1) = v38;
        }
      }

      v40 = *(a1 + 1);
      if (v40 <= v4)
      {
        goto LABEL_47;
      }

      re::AnimationValueTraits<re::GenericSRT<float>>::combine((*(*a1 + 8 * v4) + 16), buf, (*(a3 + 8 * v4) + 16));
      ++v4;
    }

    while (*(a1 + 1) > v4);
  }

  return 1;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::SkeletalPose>(re *a1, void *a2, uint64_t a3, void *a4)
{
  if (*(a1 + 1) != a4)
  {
    v18 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v19 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_32;
  }

  v4 = a2;
  if (!a2[1])
  {
    v18 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v19 = "Cannot make additive values, base values array size must not be zero.";
LABEL_32:
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    return 0;
  }

  *buf = 0;
  v21 = &str_67;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  re::AnimationValueTraits<re::SkeletalPose>::init(buf, **a2);
  v9 = 0;
  v10 = *(a1 + 1);
  if (v10 && v4[1])
  {
    v9 = 0;
    while (a4 != v9)
    {
      v8 = *(*a1 + 8 * v9);
      v11 = *(a3 + 8 * v9);
      if (*v8 != *v11)
      {
        re::Optional<re::SkeletalPose>::operator=(v11, v8);
        v10 = *(a1 + 1);
      }

      if (v10 <= v9)
      {
        goto LABEL_34;
      }

      v12 = v4[1];
      if (**(*a1 + 8 * v9) == 1)
      {
        if (v12 <= v9)
        {
          goto LABEL_37;
        }

        re::AnimationValueTraits<re::SkeletalPose>::invert(*(*v4 + 8 * v9), buf);
        v14 = *(a1 + 1);
        if (v14 <= v9)
        {
          goto LABEL_38;
        }

        re::AnimationValueTraits<re::SkeletalPose>::combine((*(*a1 + 8 * v9) + 8), buf, (*(a3 + 8 * v9) + 8));
        v10 = *(a1 + 1);
        v12 = v4[1];
      }

      if (v10 <= ++v9 || v12 <= v9)
      {
        v9 = v9;
        goto LABEL_17;
      }
    }

    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
    _os_crash();
    __break(1u);
LABEL_34:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v10);
    _os_crash();
    __break(1u);
  }

  else
  {
LABEL_17:
    if (v10 <= v9)
    {
LABEL_26:
      re::SkeletalPose::deinit(buf);
      re::SkeletalPose::~SkeletalPose(buf);
      return 1;
    }

    if (a4 <= v9)
    {
      v4 = v9;
    }

    else
    {
      v4 = a4;
    }

    while (v4 != v9)
    {
      v15 = *(*a1 + 8 * v9);
      v16 = *(a3 + 8 * v9);
      if (*v15 != *v16)
      {
        re::Optional<re::SkeletalPose>::operator=(v16, v15);
        v10 = *(a1 + 1);
      }

      if (v10 <= v9)
      {
        goto LABEL_36;
      }

      re::AnimationValueTraits<re::SkeletalPose>::combine((*(*a1 + 8 * v9) + 8), buf, (*(a3 + 8 * v9) + 8));
      ++v9;
      v10 = *(a1 + 1);
      if (v10 <= v9)
      {
        goto LABEL_26;
      }
    }
  }

  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, a4);
  _os_crash();
  __break(1u);
LABEL_36:
  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v10);
  _os_crash();
  __break(1u);
LABEL_37:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v12);
  _os_crash();
  __break(1u);
LABEL_38:
  re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

double re::OrbitAnimation::OrbitAnimation(re::OrbitAnimation *this)
{
  v1 = re::Timeline::Timeline(this, 37);
  *(v1 + 72) = 0;
  *v1 = &unk_1F5CB1A48;
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 76) = _D0;
  *(v1 + 84) = 1;
  *(v1 + 96) = xmmword_1E3047680;
  *(v1 + 112) = 0;
  *(v1 + 128) = 0x3F8000003F800000;
  *(v1 + 136) = 1065353216;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0x3F80000000000000;
  result = 0.0;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0x3F8000003F800000;
  *(v1 + 184) = 1065353216;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0x3F80000000000000;
  *(v1 + 208) = 0u;
  return result;
}

void re::OrbitAnimation::computeOrbitTransform(float32x4_t *a1, uint64_t a2, float a3)
{
  v5 = a1[7].f32[0] + ((a3 * 6.2832) * a1[5].f32[0]);
  v6 = -v5;
  if (!a1[5].i8[4])
  {
    v6 = v5;
  }

  v7 = a1[6];
  v8 = vmulq_f32(v7, v7);
  v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  if (fabsf(v9) >= 1.0e-10)
  {
    v10 = v9;
    v11 = vrsqrte_f32(LODWORD(v9));
    v12 = vmul_f32(v11, vrsqrts_f32(LODWORD(v10), vmul_f32(v11, v11)));
    v7 = vmulq_n_f32(v7, vmul_f32(v12, vrsqrts_f32(LODWORD(v10), vmul_f32(v12, v12))).f32[0]);
  }

  v64 = v7;
  _KR00_8 = __sincosf_stret(v6 * 0.5);
  v14 = vmulq_n_f32(v64, _KR00_8.__sinval);
  v14.i32[2] = vmuls_lane_f32(_KR00_8.__sinval, v64, 2);
  v15 = v14;
  v15.i32[3] = LODWORD(_KR00_8.__cosval);
  if (a1[4].i8[8] == 1)
  {
    _Q3 = a1[12];
    v17 = a1[13];
    __asm { FMOV            V5.4S, #1.0 }

    v23 = a1[10];
    v24 = vdivq_f32(_Q5, a1[11]);
    v25 = vnegq_f32(_Q3);
    v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
    v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), _Q3), v17, v26);
    v28 = vaddq_f32(v27, v27);
    v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
    v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), _Q3), v29, v26);
    v31 = vaddq_f32(vaddq_f32(v17, vmulq_laneq_f32(v29, _Q3, 3)), vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
    v32 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), _Q3), v14, v26);
    v33 = vmlsq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v14, _Q3, 3), _Q3, v15, 3);
    __asm { FMLA            S0, S1, V3.S[3] }

    v35 = vmlaq_f32(vmulq_f32(_Q3, 0), 0, v26);
    v36 = vaddq_f32(v35, v35);
    _Q2 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
    v38 = vaddq_f32(vmulq_laneq_f32(_Q2, _Q3, 3), 0);
    v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), _Q3), _Q2, v26);
    v40 = vsubq_f32(vmulq_f32(v24, vaddq_f32(v38, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL))), vmulq_f32(v24, v31));
    _Q6 = a1[9];
    v42 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
    v43 = vnegq_f32(v33);
    v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL), v43), _Q6, v42);
    v46 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), _Q6, _S0), v33, _Q6, 3);
    v45 = vmulq_f32(a1[8], v24);
    __asm { FMLA            S2, S0, V6.S[3] }

    v46.i32[3] = _Q2.i32[0];
    v47 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v43), v23, v42);
    v48 = vaddq_f32(v47, v47);
    v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
    v50 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), v43), v49, v42);
    v51 = vaddq_f32(v40, vmulq_f32(v24, vaddq_f32(vaddq_f32(v23, vmulq_n_f32(v49, _S0)), vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL))));
    _Q5 = xmmword_1E30474D0;
  }

  else
  {
    v45 = a1[8];
    _Q5 = a1[9];
    v53 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
    v54 = vnegq_f32(v14);
    v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), v54), _Q5, v53);
    v46 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), _Q5, v15, 3), v14, _Q5, 3);
    __asm { FMLA            S2, S1, V5.S[3] }

    v46.i32[3] = _S2;
    v57 = a1[10];
    v58 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), v54), v57, v53);
    v59 = vaddq_f32(v58, v58);
    v60 = vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL);
    v61 = vaddq_f32(v57, vmulq_laneq_f32(v60, v15, 3));
    v62 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL), v54), v60, v53);
    v51 = vaddq_f32(vaddq_f32(v61, vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL)), 0);
  }

  if (a1[5].i8[5])
  {
    v63 = -1;
  }

  else
  {
    v63 = 0;
  }

  *a2 = v45;
  *(a2 + 16) = vbslq_s8(vdupq_n_s32(v63), v46, _Q5);
  *(a2 + 32) = v51;
}

void re::OrbitAnimation::evaluateCore(float32x4_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(a2 + 24) / a1[4].f32[3];

    re::OrbitAnimation::computeOrbitTransform(a1, a6, v8);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    _os_crash();
    __break(1u);
  }
}

void re::OrbitAnimation::~OrbitAnimation(re::OrbitAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::EvaluationOutputHandle<re::Matrix4x4<float>>::bindEvaluationOutput<re::Matrix4x4<float>>(void *a1, const re::IntrospectionBase *a2, char a3)
{
  {
    *v9 = a2;
    a2 = *v9;
    if (v8)
    {
      re::introspect<re::Matrix4x4<float>>(BOOL)::info = re::introspect_Matrix4x4F(0);
      a2 = *v9;
    }
  }

  re::makeBindPoint(re::introspect<re::Matrix4x4<float>>(BOOL)::info, a2, &v10);
  v5 = *a1;
  v12 = v10;
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v13, v11);
  v6 = re::EvaluationContextManager::bindOutputHandle<re::Matrix4x4<float>>(v5, a1, &v12, a3);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v11);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v11);
  return v6;
}

void re::FixedArray<re::EvaluationOutputHandle<re::GenericSRT<float>>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0;
  v8[1] = 0;
}

void *re::RigEvaluation::init@<X0>(re::RigEvaluation *this@<X0>, re::Allocator *a2@<X1>, const re::RigDefinition *a3@<X2>, uint64_t a4@<X8>)
{
  re::RigEvaluation::initRigDefinitionData(this, a2, a3, v9);
  if (v9[0])
  {
    *this = a2;
    re::RigDefinition::operator=(this + 8, a3);
    re::HashTable<re::StringID,BOOL (*)(re::MutableSlice<re::Matrix4x4<float>>,re::Slice<unsigned int>,re::Slice<unsigned long>,re::Slice<unsigned long>,re::Slice<re::Vector3<float>>,void *),re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 1224, a2, 3);
    *(this + 186) = a2;
    result = re::DynamicArray<re::internal::RigIKCall>::setCapacity(this + 186, 0);
    ++*(this + 378);
    *a4 = 1;
  }

  else
  {
    *a4 = v9[0];
    *(a4 + 8) = v10;
    result = re::DynamicString::DynamicString((a4 + 24), &v11);
  }

  if ((v9[0] & 1) == 0)
  {
    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::RigEvaluation::initRigDefinitionData@<X0>(re::RigEvaluation *this@<X0>, re::Allocator *a2@<X1>, const re::RigDefinition *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a3;
  v7 = a2;
  v98 = *MEMORY[0x1E69E9840];
  re::validateRigDefinitionData(a2, a3, v79);
  if (v79[0])
  {
    v69 = a4;
    re::FixedArray<re::FixedArray<float>>::init<>(this + 168, v7, v6[95]);
    re::FixedArray<re::FixedArray<float>>::init<>(this + 171, v7, v6[95]);
    re::FixedArray<re::TwoBoneIKOptions>::init<>(this + 174, v7, v6[95]);
    re::FixedArray<re::FABRIKOptions>::init<>(this + 177, v7, v6[100]);
    re::FixedArray<re::SplineIKOptions>::init<>(this + 1440, v7, v6[105]);
    re::FixedArray<re::internal::RigIKCall>::init<>(this + 165, v7, v6[125]);
    v11 = v6[125];
    *(this + 183) = v7;
    *(this + 184) = v11;
    v71 = v7;
    if (v11)
    {
      if (v11 >> 60)
      {
        goto LABEL_159;
      }

      v12 = (*(*v7 + 32))(v7, 16 * v11, 8);
      *(this + 185) = v12;
      if (!v12)
      {
LABEL_160:
        re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
LABEL_161:
        re::internal::assertLog(5, v13, "assertion failure: '%s' (%s:line %i) Unexpected Rig IK Handle Type: %u.", "!Unreachable code", "initRigDefinitionData", 1748, v18);
        _os_crash();
        __break(1u);
      }

      v14 = v11 - 1;
      if (v11 != 1)
      {
        do
        {
          *v12 = 0;
          *(v12 + 8) = -1;
          v12 += 16;
          --v14;
        }

        while (v14);
      }

      *v12 = 0;
      *(v12 + 8) = -1;
      if (v6[125])
      {
        v15 = 0;
        v16 = 136;
        v72 = v6;
        while (1)
        {
          v17 = (v6[127] + 16 * v15);
          v18 = *v17;
          if (v18 == 3)
          {
            break;
          }

          if (v18 == 2)
          {
            v5 = *(v17 + 1);
            v19 = v72[100];
            if (v19 <= v5)
            {
              goto LABEL_138;
            }

            v19 = *(this + 178);
            if (v19 <= v5)
            {
              goto LABEL_140;
            }

            v38 = v72[102] + (v5 << 7);
            v4 = *(v38 + 96);
            *(*(this + 179) + 8 * v5) = *(v38 + 120);
            *&v84 = re::solverFABRIK;
            v77 = 0uLL;
            v39 = *(v38 + 16);
            *&v77 = *(v38 + 32);
            *(&v77 + 1) = v39;
            v85 = 0uLL;
            *(&v84 + 1) = 0;
            re::FixedArray<unsigned long>::init<>(&v84 + 1, v7, v39);
            re::FixedArray<unsigned long>::copy(&v84 + 1, &v77);
            v75 = 0;
            v76 = 0;
            v40 = *(v38 + 56);
            v75 = *(v38 + 72);
            v76 = v40;
            v87[0] = 0;
            v86 = 0uLL;
            re::FixedArray<unsigned long>::init<>(&v86, v7, v40);
            re::FixedArray<unsigned long>::copy(&v86, &v75);
            v73 = 0;
            v74 = 0;
            v41 = *(v38 + 96);
            v73 = *(v38 + 112);
            v74 = v41;
            memset(&v87[1], 0, 24);
            re::FixedArray<unsigned long>::init<>(&v87[1], v7, v41);
            re::FixedArray<unsigned long>::copy(&v87[1], &v73);
            memset(v88, 0, sizeof(v88));
            re::FixedArray<re::Vector3<float>>::init<>(&v88[16], v7, v4);
            v89 = 0uLL;
            v19 = *(this + 166);
            if (v19 <= v15)
            {
              goto LABEL_141;
            }

            v42 = *(this + 167) + 136 * v15;
            *v42 = v84;
            re::FixedArray<unsigned long>::operator=((v42 + 8), &v84 + 1);
            re::FixedArray<unsigned long>::operator=((v42 + 32), &v86);
            re::FixedArray<unsigned long>::operator=((v42 + 56), &v87[1]);
            *(v42 + 80) = *v88;
            re::FixedArray<float>::operator=((v42 + 96), &v88[16]);
            *(v42 + 120) = v89;
            if (*&v88[16])
            {
              if (*&v88[24])
              {
                (*(**&v88[16] + 40))();
                *&v88[24] = 0;
                *&v88[32] = 0;
              }

              *&v88[16] = 0;
            }

            if (v87[1])
            {
              if (v87[2])
              {
                (*(*v87[1] + 40))();
                v87[2] = 0;
                v87[3] = 0;
              }

              v87[1] = 0;
            }

            if (v86)
            {
              if (*(&v86 + 1))
              {
                (*(*v86 + 40))();
                *(&v86 + 1) = 0;
                v87[0] = 0;
              }

              *&v86 = 0;
            }

            if (*(&v84 + 1) && v85)
            {
              (*(**(&v84 + 1) + 40))();
            }

            v19 = *(this + 184);
            if (v19 <= v15)
            {
              goto LABEL_143;
            }

            v43 = *(v17 + 1);
            v44 = *(this + 185) + 16 * v15;
            v45 = 2;
LABEL_102:
            *v44 = v45;
            *(v44 + 8) = v43;
            goto LABEL_103;
          }

          if (v18 != 1)
          {
            goto LABEL_161;
          }

          v4 = *(v17 + 1);
          v19 = v72[95];
          if (v19 <= v4)
          {
            goto LABEL_137;
          }

          v20 = (v72[97] + 240 * v4);
          v16 = v20[12];
          v77 = 0uLL;
          v78 = 0;
          v70 = 2 * v16;
          re::FixedArray<unsigned long>::init<>(&v77, v7, 2 * v16);
          if (v16)
          {
            v5 = 0;
            v21 = (v78 + 8);
            v4 = 1;
            while (1)
            {
              v22 = v20[12];
              if (v22 <= v5)
              {
                break;
              }

              v7 = (v4 - 1);
              v22 = *(&v77 + 1);
              if (*(&v77 + 1) <= v4 - 1)
              {
                goto LABEL_130;
              }

              *(v21 - 1) = *(v20[14] + 8 * v5);
              v22 = v20[17];
              if (v22 <= v5)
              {
                goto LABEL_131;
              }

              v22 = *(&v77 + 1);
              if (*(&v77 + 1) <= v4)
              {
                goto LABEL_132;
              }

              *v21 = *(v20[19] + 8 * v5);
              v21 += 2;
              ++v5;
              v4 += 2;
              if (v16 == v5)
              {
                goto LABEL_20;
              }
            }

            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 797;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v5;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v22;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_130:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v7;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v22;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_131:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 797;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v5;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v22;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_132:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v4;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v22;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_133;
          }

LABEL_20:
          v4 = *(v17 + 1);
          v23 = *(this + 169);
          if (v23 <= v4)
          {
            goto LABEL_150;
          }

          v5 = v20[22];
          re::FixedArray<int>::init<>((*(this + 170) + 24 * v4), v71, v5);
          if (v5)
          {
            v16 = 0;
            v4 = v20[22];
            while (v4 != v16)
            {
              v19 = *(v17 + 1);
              v7 = *(this + 169);
              if (v7 <= v19)
              {
                goto LABEL_134;
              }

              v24 = *(this + 170) + 24 * v19;
              v19 = *(v24 + 8);
              if (v19 <= v16)
              {
                goto LABEL_135;
              }

              *(*(v24 + 16) + 4 * v16) = *(v20[24] + 4 * v16) * 0.017453;
              if (v5 == ++v16)
              {
                goto LABEL_27;
              }
            }

LABEL_133:
            *v90 = 0;
            v19 = &v84;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 797;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v4;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_134:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v19;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_135:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v16;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_136:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 797;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v4;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_137:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 797;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v4;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_138:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 797;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v5;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_139:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v4;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_140:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v5;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_141:
            v83 = 0;
            v96 = 0u;
            v97 = 0u;
            memset(v95, 0, sizeof(v95));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v90 = 136315906;
            *&v90[4] = "operator[]";
            *&v90[12] = 1024;
            *&v90[14] = 468;
            v91 = 2048;
            v92 = v15;
            v93 = 2048;
            v94 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_142:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v4;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_143:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v15;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_144:
            *&v77 = 0;
            v96 = 0u;
            v97 = 0u;
            memset(v95, 0, sizeof(v95));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v90 = 136315906;
            *&v90[4] = "operator[]";
            *&v90[12] = 1024;
            *&v90[14] = 468;
            v91 = 2048;
            v92 = v15;
            v93 = 2048;
            v94 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_145:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v15;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_146:
            *v90 = 0;
            v52 = &v84;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = 0;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_147:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v15;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v52;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_148:
            *v90 = 0;
            v23 = &v84;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = 0;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_149:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v15;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v23;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_150:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v4;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v23;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_151:
            v75 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v23;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_152:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v5;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v23;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_153:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v5;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v23;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_154:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v5;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v23;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_155:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v5;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v23;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_156:
            v83 = 0;
            v96 = 0u;
            v97 = 0u;
            memset(v95, 0, sizeof(v95));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v90 = 136315906;
            *&v90[4] = "operator[]";
            *&v90[12] = 1024;
            *&v90[14] = 468;
            v91 = 2048;
            v92 = v15;
            v93 = 2048;
            v94 = v23;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_157:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v15;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v23;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_158:
            *v90 = 0;
            memset(v87, 0, sizeof(v87));
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v95[0]) = 136315906;
            *(v95 + 4) = "operator[]";
            WORD2(v95[1]) = 1024;
            *(&v95[1] + 6) = 468;
            WORD1(v95[2]) = 2048;
            *(&v95[2] + 4) = v16;
            WORD2(v95[3]) = 2048;
            *(&v95[3] + 6) = v23;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_159:
            re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v11);
            _os_crash();
            __break(1u);
            goto LABEL_160;
          }

LABEL_27:
          *v90 = 0;
          *&v90[8] = 0;
          v25 = v20[27];
          *v90 = v20[29];
          *&v90[8] = v25;
          v23 = *(v17 + 1);
          v4 = *(this + 172);
          if (v4 <= v23)
          {
            goto LABEL_151;
          }

          re::FixedArray<int>::operator=((*(this + 173) + 24 * v23), v90);
          v5 = *(v17 + 1);
          v23 = *(this + 169);
          if (v23 <= v5)
          {
            goto LABEL_152;
          }

          v23 = *(this + 175);
          if (v23 <= v5)
          {
            goto LABEL_153;
          }

          v26 = *(this + 170) + 24 * v5;
          v27 = *(v26 + 8);
          v28 = *(this + 176) + 32 * v5;
          *(v28 + 16) = *(v26 + 16);
          *(v28 + 24) = v27;
          v5 = *(v17 + 1);
          v23 = *(this + 172);
          if (v23 <= v5)
          {
            goto LABEL_154;
          }

          v23 = *(this + 175);
          if (v23 <= v5)
          {
            goto LABEL_155;
          }

          v29 = *(this + 173) + 24 * v5;
          v30 = *(v29 + 8);
          v31 = (*(this + 176) + 32 * v5);
          *v31 = *(v29 + 16);
          v31[1] = v30;
          *&v84 = re::solverTwoBoneIK;
          v75 = 0;
          v76 = 0;
          v32 = v20[2];
          v75 = v20[4];
          v76 = v32;
          v85 = 0uLL;
          *(&v84 + 1) = 0;
          v7 = v71;
          re::FixedArray<unsigned long>::init<>(&v84 + 1, v71, v32);
          re::FixedArray<unsigned long>::copy(&v84 + 1, &v75);
          v73 = 0;
          v74 = 0;
          v33 = v20[7];
          v73 = v20[9];
          v74 = v33;
          v87[0] = 0;
          v86 = 0uLL;
          re::FixedArray<unsigned long>::init<>(&v86, v71, v33);
          re::FixedArray<unsigned long>::copy(&v86, &v73);
          *&v87[1] = v77;
          v34 = v78;
          v78 = 0;
          v77 = 0uLL;
          v87[3] = v34;
          memset(v88, 0, sizeof(v88));
          re::FixedArray<re::Vector3<float>>::init<>(&v88[16], v71, v70);
          v89 = 0uLL;
          v23 = *(this + 166);
          if (v23 <= v15)
          {
            goto LABEL_156;
          }

          v16 = 136;
          v35 = *(this + 167) + 136 * v15;
          *v35 = v84;
          re::FixedArray<unsigned long>::operator=((v35 + 8), &v84 + 1);
          re::FixedArray<unsigned long>::operator=((v35 + 32), &v86);
          re::FixedArray<unsigned long>::operator=((v35 + 56), &v87[1]);
          *(v35 + 80) = *v88;
          re::FixedArray<float>::operator=((v35 + 96), &v88[16]);
          *(v35 + 120) = v89;
          if (*&v88[16])
          {
            if (*&v88[24])
            {
              (*(**&v88[16] + 40))();
              *&v88[24] = 0;
              *&v88[32] = 0;
            }

            *&v88[16] = 0;
          }

          if (v87[1])
          {
            if (v87[2])
            {
              (*(*v87[1] + 40))();
              v87[2] = 0;
              v87[3] = 0;
            }

            v87[1] = 0;
          }

          if (v86)
          {
            if (*(&v86 + 1))
            {
              (*(*v86 + 40))();
              *(&v86 + 1) = 0;
              v87[0] = 0;
            }

            *&v86 = 0;
          }

          if (*(&v84 + 1) && v85)
          {
            (*(**(&v84 + 1) + 40))();
          }

          v23 = *(this + 184);
          if (v23 <= v15)
          {
            goto LABEL_157;
          }

          v36 = *(v17 + 1);
          v37 = *(this + 185) + 16 * v15;
          *v37 = 1;
          *(v37 + 8) = v36;
          if (v77 && *(&v77 + 1))
          {
            (*(*v77 + 40))();
          }

LABEL_103:
          v6 = v72;
          if (++v15 >= v72[125])
          {
            goto LABEL_104;
          }
        }

        v4 = *(v17 + 1);
        v19 = v72[105];
        if (v19 <= v4)
        {
          goto LABEL_136;
        }

        v19 = *(this + 181);
        if (v19 <= v4)
        {
          goto LABEL_139;
        }

        v5 = v72[107] + 240 * v4;
        v46 = *(this + 182) + 80 * v4;
        *v46 = *v5 * *v5;
        v47 = *(v5 + 104);
        *(v46 + 8) = *(v5 + 120);
        *(v46 + 16) = v47;
        v4 = *(v17 + 1);
        v19 = *(this + 181);
        if (v19 <= v4)
        {
          goto LABEL_142;
        }

        v48 = *(this + 182) + 80 * v4;
        *(v48 + 64) = *(v5 + 224);
        v4 = *(v5 + 64);
        if (*(v5 + 160) != -1)
        {
          ++v4;
          *(v48 + 24) = 1;
          *(v48 + 32) = *(v5 + 176);
        }

        if (*(v5 + 168) != -1)
        {
          v16 = *(v17 + 1);
          v23 = *(this + 181);
          if (v23 <= v16)
          {
            goto LABEL_158;
          }

          ++v4;
          v49 = *(this + 182) + 80 * v16;
          *(v49 + 25) = 1;
          *(v49 + 48) = *(v5 + 192);
          v16 = 136;
        }

        *&v84 = re::solverSplineIK;
        v85 = 0uLL;
        *(&v84 + 1) = 0;
        v7 = v71;
        re::FixedArray<unsigned long>::init<>(&v84 + 1, v71, 1uLL);
        v86 = 0uLL;
        v87[0] = 0;
        re::FixedArray<unsigned long>::init<>(&v86, v71, 1uLL);
        memset(&v87[1], 0, 24);
        *v88 = v4;
        memset(&v88[8], 0, 32);
        re::FixedArray<re::Vector3<float>>::init<>(&v88[16], v71, v4);
        *&v89 = 0;
        *(&v89 + 1) = v15;
        v19 = *(this + 166);
        if (v19 <= v15)
        {
          goto LABEL_144;
        }

        v50 = *(this + 167) + 136 * v15;
        *v50 = v84;
        re::FixedArray<unsigned long>::operator=((v50 + 8), &v84 + 1);
        re::FixedArray<unsigned long>::operator=((v50 + 32), &v86);
        re::FixedArray<unsigned long>::operator=((v50 + 56), &v87[1]);
        *(v50 + 80) = *v88;
        re::FixedArray<float>::operator=((v50 + 96), &v88[16]);
        *(v50 + 120) = v89;
        if (*&v88[16])
        {
          if (*&v88[24])
          {
            (*(**&v88[16] + 40))();
            *&v88[24] = 0;
            *&v88[32] = 0;
          }

          *&v88[16] = 0;
        }

        if (v87[1])
        {
          if (v87[2])
          {
            (*(*v87[1] + 40))();
            v87[2] = 0;
            v87[3] = 0;
          }

          v87[1] = 0;
        }

        if (v86)
        {
          if (*(&v86 + 1))
          {
            (*(*v86 + 40))();
            *(&v86 + 1) = 0;
            v87[0] = 0;
          }

          *&v86 = 0;
        }

        if (*(&v84 + 1) && v85)
        {
          (*(**(&v84 + 1) + 40))();
        }

        v19 = *(this + 166);
        if (v19 <= v15)
        {
          goto LABEL_145;
        }

        v51 = *(this + 167) + 136 * v15;
        if (!*(v51 + 16))
        {
          goto LABEL_146;
        }

        **(v51 + 24) = *(v5 + 128);
        v52 = *(this + 166);
        if (v52 <= v15)
        {
          goto LABEL_147;
        }

        if (!*(v51 + 40))
        {
          goto LABEL_148;
        }

        **(v51 + 48) = *(v5 + 136);
        v23 = *(this + 184);
        if (v23 <= v15)
        {
          goto LABEL_149;
        }

        v43 = *(v17 + 1);
        v44 = *(this + 185) + 16 * v15;
        v45 = 3;
        goto LABEL_102;
      }
    }

LABEL_104:
    v53 = v6[130];
    if (v53)
    {
      re::HashTable<re::StringID,BOOL (*)(re::MutableSlice<re::Matrix4x4<float>>,re::Slice<unsigned int>,re::Slice<unsigned long>,re::Slice<unsigned long>,re::Slice<re::Vector3<float>>,void *),re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 1176, v7, 4 * v53);
      v53 = v6[130];
    }

    if (v53)
    {
      v54 = 0;
      v55 = 8;
      do
      {
        v56 = v6[132];
        v95[0] = *(v56 + v55);
        v57 = re::Hash<re::DynamicString>::operator()(&v84, v95[0]);
        re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>(this + 1176, v95, v57, &v84);
        if (HIDWORD(v84) != 0x7FFFFFFF)
        {
          result = re::DynamicString::format(v71, "Rig contains multiple nodes named '%s'", &v84, *(v56 + v55));
          v67 = v84;
          v68 = v85;
          *v69 = 0;
          *(v69 + 8) = 3000;
          *(v69 + 16) = &re::AnimationErrorCategory(void)::instance;
          *(v69 + 24) = v67;
          *(v69 + 40) = v68;
          goto LABEL_124;
        }

        v95[0] = *(v56 + v55);
        v84 = 0uLL;
        *&v85 = 0;
        v58 = re::Hash<re::DynamicString>::operator()(v90, v95[0]);
        re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>(this + 1176, v95, v58, &v84);
        if (HIDWORD(v84) == 0x7FFFFFFF)
        {
          v59 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::allocEntry(this + 1176, DWORD2(v84), v84);
          *(v59 + 8) = v95[0];
          *(v59 + 16) = v54;
          ++*(this + 304);
        }

        ++v54;
        v60 = v6[130];
        v55 += 56;
      }

      while (v54 < v60);
      if (v60)
      {
        v61 = 0;
        v62 = 8;
        do
        {
          v63 = strrchr(*(v6[132] + v62), 47);
          if (v63)
          {
            v95[0] = v63 + 1;
            v84 = 0uLL;
            *&v85 = 0;
            v64 = re::Hash<re::DynamicString>::operator()(v90, v63 + 1);
            re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>(this + 1176, v95, v64, &v84);
            if (HIDWORD(v84) == 0x7FFFFFFF)
            {
              v65 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::allocEntry(this + 1176, DWORD2(v84), v84);
              *(v65 + 8) = v95[0];
              *(v65 + 16) = v61;
              ++*(this + 304);
            }

            v60 = v6[130];
          }

          ++v61;
          v62 += 56;
        }

        while (v61 < v60);
      }
    }

    else
    {
      v60 = 0;
    }

    re::FixedArray<re::EvaluationSRT>::init<>(this + 159, v71, v60);
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(this + 162, v71, v6[130]);
    result = re::FixedArray<unsigned long>::init<unsigned long const&>(this + 144, v71, v6[130], &re::RigPose::kInvalidIndex);
    *v69 = 1;
  }

  else
  {
    *a4 = v79[0];
    *(a4 + 8) = v80;
    result = re::DynamicString::DynamicString((a4 + 24), &v81);
  }

LABEL_124:
  if ((v79[0] & 1) == 0)
  {
    result = v81;
    if (v81)
    {
      if (v82)
      {
        return (*(*v81 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::RigDefinition::operator=(uint64_t a1, uint64_t a2)
{
  v4 = re::DynamicArray<re::RigComponentConstraint>::operator=(a1, a2);
  re::DynamicArray<re::RigComponentConstraint>::operator=(v4 + 40, (a2 + 40));
  if (a1 != a2)
  {
    v5 = *(a2 + 80);
    if (*(a1 + 80))
    {
      v6 = (a1 + 80);
      if (v5)
      {
        re::DynamicArray<re::RigBasicConstraint>::copy(v6, a2 + 80);
        ++*(a1 + 104);
      }

      else
      {
        re::DynamicArray<re::RigBasicConstraint>::clear(v6);
      }
    }

    else if (v5)
    {
      v7 = *(a2 + 96);
      *(a1 + 80) = v5;
      re::DynamicArray<re::RigBasicConstraint>::setCapacity((a1 + 80), v7);
      ++*(a1 + 104);
      re::DynamicArray<re::RigBasicConstraint>::copy((a1 + 80), a2 + 80);
    }

    v8 = *(a2 + 120);
    if (*(a1 + 120))
    {
      v9 = (a1 + 120);
      if (v8)
      {
        re::DynamicArray<re::RigAimConstraint>::copy(v9, a2 + 120);
        ++*(a1 + 144);
      }

      else
      {
        re::DynamicArray<re::RigAimConstraint>::clear(v9);
      }
    }

    else if (v8)
    {
      v10 = *(a2 + 136);
      *(a1 + 120) = v8;
      re::DynamicArray<re::RigAimConstraint>::setCapacity((a1 + 120), v10);
      ++*(a1 + 144);
      re::DynamicArray<re::RigAimConstraint>::copy((a1 + 120), a2 + 120);
    }

    v11 = *(a2 + 160);
    if (*(a1 + 160))
    {
      if (v11)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 160), a2 + 160);
      }

      else
      {
        *(a1 + 176) = 0;
      }

      ++*(a1 + 184);
    }

    else if (v11)
    {
      v12 = *(a2 + 176);
      *(a1 + 160) = v11;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 160), v12);
      ++*(a1 + 184);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 160), a2 + 160);
    }
  }

  re::DynamicArray<float>::operator=(a1 + 200, (a2 + 200));
  re::DynamicArray<float>::operator=(a1 + 240, (a2 + 240));
  re::DynamicArray<float>::operator=(a1 + 280, (a2 + 280));
  if (a1 == a2)
  {
    re::DynamicArray<re::Vector3<float>>::operator=(a1 + 480, (a2 + 480));
    v14 = *(a2 + 608);
    v16 = *(a2 + 560);
    v15 = *(a2 + 576);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = v14;
    *(a1 + 560) = v16;
    *(a1 + 576) = v15;
  }

  else
  {
    v13 = *(a2 + 320);
    if (*(a1 + 320))
    {
      if (v13)
      {
        re::DynamicArray<re::Matrix3x3<float>>::copy((a1 + 320), a2 + 320);
      }

      else
      {
        *(a1 + 336) = 0;
      }

      ++*(a1 + 344);
    }

    else if (v13)
    {
      v17 = *(a2 + 336);
      *(a1 + 320) = v13;
      re::DynamicArray<re::Matrix3x3<float>>::setCapacity((a1 + 320), v17);
      ++*(a1 + 344);
      re::DynamicArray<re::Matrix3x3<float>>::copy((a1 + 320), a2 + 320);
    }

    v18 = *(a2 + 360);
    if (*(a1 + 360))
    {
      if (v18)
      {
        re::DynamicArray<re::Matrix4x4<float>>::copy((a1 + 360), a2 + 360);
      }

      else
      {
        *(a1 + 376) = 0;
      }

      ++*(a1 + 384);
    }

    else if (v18)
    {
      v19 = *(a2 + 376);
      *(a1 + 360) = v18;
      re::DynamicArray<re::Matrix4x4<float>>::setCapacity((a1 + 360), v19);
      ++*(a1 + 384);
      re::DynamicArray<re::Matrix4x4<float>>::copy((a1 + 360), a2 + 360);
    }

    v20 = *(a2 + 400);
    if (*(a1 + 400))
    {
      if (v20)
      {
        re::DynamicArray<re::Quaternion<float>>::copy((a1 + 400), a2 + 400);
      }

      else
      {
        *(a1 + 416) = 0;
      }

      ++*(a1 + 424);
    }

    else if (v20)
    {
      v21 = *(a2 + 416);
      *(a1 + 400) = v20;
      re::DynamicArray<re::Quaternion<float>>::setCapacity((a1 + 400), v21);
      ++*(a1 + 424);
      re::DynamicArray<re::Quaternion<float>>::copy((a1 + 400), a2 + 400);
    }

    v22 = *(a2 + 440);
    if (*(a1 + 440))
    {
      if (v22)
      {
        re::DynamicArray<unsigned long>::copy((a1 + 440), a2 + 440);
      }

      else
      {
        *(a1 + 456) = 0;
      }

      ++*(a1 + 464);
    }

    else if (v22)
    {
      v23 = *(a2 + 456);
      *(a1 + 440) = v22;
      re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((a1 + 440), v23);
      ++*(a1 + 464);
      re::DynamicArray<unsigned long>::copy((a1 + 440), a2 + 440);
    }

    re::DynamicArray<re::Vector3<float>>::operator=(a1 + 480, (a2 + 480));
    v24 = *(a2 + 520);
    if (*(a1 + 520))
    {
      if (v24)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 520), a2 + 520);
      }

      else
      {
        *(a1 + 536) = 0;
      }

      ++*(a1 + 544);
    }

    else if (v24)
    {
      v25 = *(a2 + 536);
      *(a1 + 520) = v24;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 520), v25);
      ++*(a1 + 544);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 520), a2 + 520);
    }

    v26 = *(a2 + 560);
    v27 = *(a2 + 576);
    v28 = *(a2 + 608);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = v28;
    *(a1 + 560) = v26;
    *(a1 + 576) = v27;
    v29 = *(a2 + 624);
    if (*(a1 + 624))
    {
      if (v29)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 624), a2 + 624);
      }

      else
      {
        *(a1 + 640) = 0;
      }

      ++*(a1 + 648);
    }

    else if (v29)
    {
      v30 = *(a2 + 640);
      *(a1 + 624) = v29;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 624), v30);
      ++*(a1 + 648);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 624), a2 + 624);
    }

    v31 = *(a2 + 664);
    if (*(a1 + 664))
    {
      if (v31)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 664), a2 + 664);
      }

      else
      {
        *(a1 + 680) = 0;
      }

      ++*(a1 + 688);
    }

    else if (v31)
    {
      v32 = *(a2 + 680);
      *(a1 + 664) = v31;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 664), v32);
      ++*(a1 + 688);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 664), a2 + 664);
    }

    v33 = *(a2 + 704);
    if (*(a1 + 704))
    {
      if (v33)
      {
        re::DynamicArray<re::RigExpression>::copy((a1 + 704), a2 + 704);
      }

      else
      {
        *(a1 + 720) = 0;
      }

      ++*(a1 + 728);
    }

    else if (v33)
    {
      v34 = *(a2 + 720);
      *(a1 + 704) = v33;
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 704), v34);
      ++*(a1 + 728);
      re::DynamicArray<re::RigExpression>::copy((a1 + 704), a2 + 704);
    }

    v35 = *(a2 + 744);
    if (*(a1 + 744))
    {
      if (v35)
      {
        re::DynamicArray<re::RigTwoBoneIKHandles>::copy((a1 + 744), a2 + 744);
      }

      else
      {
        v37 = *(a1 + 760);
        *(a1 + 760) = 0;
        if (v37)
        {
          v38 = 0;
          v39 = *(a1 + 776);
          v40 = 240 * v37;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v39 + v38 + 200);
            re::DynamicArray<unsigned long>::deinit(v39 + v38 + 160);
            re::DynamicArray<unsigned long>::deinit(v39 + v38 + 120);
            re::DynamicArray<unsigned long>::deinit(v39 + v38 + 80);
            re::DynamicArray<unsigned long>::deinit(v39 + v38 + 40);
            re::DynamicArray<unsigned long>::deinit(v39 + v38);
            v38 += 240;
          }

          while (v40 != v38);
        }
      }

      ++*(a1 + 768);
    }

    else if (v35)
    {
      v36 = *(a2 + 760);
      *(a1 + 744) = v35;
      re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity((a1 + 744), v36);
      ++*(a1 + 768);
      re::DynamicArray<re::RigTwoBoneIKHandles>::copy((a1 + 744), a2 + 744);
    }

    v41 = *(a2 + 784);
    if (*(a1 + 784))
    {
      if (v41)
      {
        re::DynamicArray<re::RigSingleChainIKHandles>::copy((a1 + 784), a2 + 784);
      }

      else
      {
        v43 = *(a1 + 800);
        *(a1 + 800) = 0;
        if (v43)
        {
          v44 = *(a1 + 816);
          v45 = v43 << 7;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v44 + 80);
            re::DynamicArray<unsigned long>::deinit(v44 + 40);
            re::DynamicArray<unsigned long>::deinit(v44);
            v44 += 128;
            v45 -= 128;
          }

          while (v45);
        }
      }

      ++*(a1 + 808);
    }

    else if (v41)
    {
      v42 = *(a2 + 800);
      *(a1 + 784) = v41;
      re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity((a1 + 784), v42);
      ++*(a1 + 808);
      re::DynamicArray<re::RigSingleChainIKHandles>::copy((a1 + 784), a2 + 784);
    }

    v46 = *(a2 + 824);
    if (*(a1 + 824))
    {
      if (v46)
      {
        re::DynamicArray<re::RigSplineIKHandle>::copy((a1 + 824), a2 + 824);
      }

      else
      {
        v48 = *(a1 + 840);
        *(a1 + 840) = 0;
        if (v48)
        {
          v49 = 240 * v48;
          v50 = *(a1 + 856) + 88;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v50);
            re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v50 - 40);
            re::DynamicArray<unsigned long>::deinit(v50 - 80);
            v50 += 240;
            v49 -= 240;
          }

          while (v49);
        }
      }

      ++*(a1 + 848);
    }

    else if (v46)
    {
      v47 = *(a2 + 840);
      *(a1 + 824) = v46;
      re::DynamicArray<re::RigSplineIKHandle>::setCapacity((a1 + 824), v47);
      ++*(a1 + 848);
      re::DynamicArray<re::RigSplineIKHandle>::copy((a1 + 824), a2 + 824);
    }

    v51 = *(a2 + 864);
    if (*(a1 + 864))
    {
      if (v51)
      {
        re::DynamicArray<re::RigTransform>::copy((a1 + 864), a2 + 864);
      }

      else
      {
        *(a1 + 880) = 0;
      }

      ++*(a1 + 888);
    }

    else if (v51)
    {
      v52 = *(a2 + 880);
      *(a1 + 864) = v51;
      re::DynamicArray<re::RigTransform>::setCapacity((a1 + 864), v52);
      ++*(a1 + 888);
      re::DynamicArray<re::RigTransform>::copy((a1 + 864), a2 + 864);
    }

    v53 = *(a2 + 904);
    if (*(a1 + 904))
    {
      if (v53)
      {
        re::DynamicArray<re::RigJoint>::copy((a1 + 904), a2 + 904);
      }

      else
      {
        *(a1 + 920) = 0;
      }

      ++*(a1 + 928);
    }

    else if (v53)
    {
      v54 = *(a2 + 920);
      *(a1 + 904) = v53;
      re::DynamicArray<re::RigJoint>::setCapacity((a1 + 904), v54);
      ++*(a1 + 928);
      re::DynamicArray<re::RigJoint>::copy((a1 + 904), a2 + 904);
    }

    v55 = *(a2 + 944);
    if (*(a1 + 944))
    {
      if (v55)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 944), a2 + 944);
      }

      else
      {
        *(a1 + 960) = 0;
      }

      ++*(a1 + 968);
    }

    else if (v55)
    {
      v56 = *(a2 + 960);
      *(a1 + 944) = v55;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 944), v56);
      ++*(a1 + 968);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 944), a2 + 944);
    }

    v57 = *(a2 + 984);
    if (*(a1 + 984))
    {
      if (v57)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 984), a2 + 984);
      }

      else
      {
        *(a1 + 1000) = 0;
      }

      ++*(a1 + 1008);
    }

    else if (v57)
    {
      v58 = *(a2 + 1000);
      *(a1 + 984) = v57;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 984), v58);
      ++*(a1 + 1008);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 984), a2 + 984);
    }

    v59 = *(a2 + 1024);
    if (*(a1 + 1024))
    {
      v60 = (a1 + 1024);
      if (v59)
      {
        re::DynamicArray<re::RigNode>::copy(v60, a2 + 1024);
        ++*(a1 + 1048);
      }

      else
      {
        re::DynamicArray<re::RigNode>::clear(v60);
      }
    }

    else if (v59)
    {
      v61 = *(a2 + 1040);
      *(a1 + 1024) = v59;
      re::DynamicArray<re::RigNode>::setCapacity((a1 + 1024), v61);
      ++*(a1 + 1048);
      re::DynamicArray<re::RigNode>::copy((a1 + 1024), a2 + 1024);
    }

    v62 = *(a2 + 1064);
    if (*(a1 + 1064))
    {
      if (v62)
      {
        re::DynamicArray<re::RigExpression>::copy((a1 + 1064), a2 + 1064);
      }

      else
      {
        *(a1 + 1080) = 0;
      }

      ++*(a1 + 1088);
    }

    else if (v62)
    {
      v63 = *(a2 + 1080);
      *(a1 + 1064) = v62;
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 1064), v63);
      ++*(a1 + 1088);
      re::DynamicArray<re::RigExpression>::copy((a1 + 1064), a2 + 1064);
    }

    v64 = *(a2 + 1104);
    if (*(a1 + 1104))
    {
      v65 = (a1 + 1104);
      if (v64)
      {
        re::DynamicArray<re::RigPose>::copy(v65, a2 + 1104);
        ++*(a1 + 1128);
      }

      else
      {
        re::DynamicArray<re::RigPose>::clear(v65);
      }
    }

    else if (v64)
    {
      v66 = *(a2 + 1120);
      *(a1 + 1104) = v64;
      re::DynamicArray<re::RigPose>::setCapacity((a1 + 1104), v66);
      ++*(a1 + 1128);
      re::DynamicArray<re::RigPose>::copy((a1 + 1104), a2 + 1104);
    }
  }

  return a1;
}

void re::HashTable<re::StringID,BOOL (*)(re::MutableSlice<re::Matrix4x4<float>>,re::Slice<unsigned int>,re::Slice<unsigned long>,re::Slice<unsigned long>,re::Slice<re::Vector3<float>>,void *),re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_261, 4 * v10);
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

void *re::RigEvaluation::init@<X0>(uint64_t a1@<X0>, re::Allocator *a2@<X1>, const re::RigDefinition *a3@<X2>, uint64_t a4@<X8>)
{
  re::RigEvaluation::initRigDefinitionData(a1, a2, a3, v9);
  if (v9[0])
  {
    *a1 = a2;
    result = re::RigDefinition::operator=((a1 + 8), a3);
    *a4 = 1;
  }

  else
  {
    *a4 = v9[0];
    *(a4 + 8) = v10;
    result = re::DynamicString::DynamicString((a4 + 24), &v11);
  }

  if ((v9[0] & 1) == 0)
  {
    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))();
      }
    }
  }

  return result;
}

_OWORD *re::RigDefinition::operator=(_OWORD *a1, _OWORD *a2)
{
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1, a2);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 40, a2 + 40);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 5), (a2 + 5));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 120, a2 + 120);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 10), (a2 + 10));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 200, a2 + 200);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 15), (a2 + 15));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 280, a2 + 280);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 20), (a2 + 20));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 360, a2 + 360);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 25), (a2 + 25));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 440, a2 + 440);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 30), (a2 + 30));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 520, a2 + 520);
  v4 = a2[38];
  v6 = a2[35];
  v5 = a2[36];
  a1[37] = a2[37];
  a1[38] = v4;
  a1[35] = v6;
  a1[36] = v5;
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 39), (a2 + 39));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 664, a2 + 664);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 44), (a2 + 44));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 744, a2 + 744);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 49), (a2 + 49));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 824, a2 + 824);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 54), (a2 + 54));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 904, a2 + 904);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 59), (a2 + 59));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 984, a2 + 984);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 64), (a2 + 64));
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 1064, a2 + 1064);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 69), (a2 + 69));
  return a1;
}

uint64_t re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::tryGet(uint64_t a1, char **a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, *a2);
  re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v7 + 16;
  }
}

uint64_t re::RigDefinition::deinit(re::RigDefinition *this)
{
  re::DynamicArray<re::RigComponentConstraint>::deinit(this);
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 40);
  re::DynamicArray<re::RigBasicConstraint>::deinit(this + 80);
  re::DynamicArray<re::RigAimConstraint>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 160);
  re::DynamicRegisterIdTable::deinit((this + 200));
  re::DynamicArray<unsigned long>::deinit(this + 520);
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  re::DynamicArray<unsigned long>::deinit(this + 624);
  re::DynamicArray<unsigned long>::deinit(this + 664);
  re::DynamicArray<unsigned long>::deinit(this + 704);
  re::DynamicArray<re::RigTwoBoneIKHandles>::deinit(this + 744);
  re::DynamicArray<re::RigSingleChainIKHandles>::deinit(this + 784);
  re::DynamicArray<unsigned long>::deinit(this + 864);
  re::DynamicArray<unsigned long>::deinit(this + 904);
  re::DynamicArray<unsigned long>::deinit(this + 944);
  re::DynamicArray<unsigned long>::deinit(this + 984);
  re::DynamicArray<re::RigNode>::deinit(this + 1024);
  re::DynamicArray<unsigned long>::deinit(this + 1064);

  return re::DynamicArray<re::RigPose>::deinit(this + 1104);
}

void *re::FixedArray<re::internal::RigIKCall>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 136 * v2;
      v5 = (result[2] + 96);
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v5);
        re::FixedArray<CoreIKTransform>::deinit(v5 - 5);
        re::FixedArray<CoreIKTransform>::deinit(v5 - 8);
        re::FixedArray<CoreIKTransform>::deinit(v5 - 11);
        v5 += 17;
        v4 -= 136;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::internal::RigIKCall>::deinit(uint64_t a1)
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
        v5 = 136 * v4;
        v6 = (v3 + 96);
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v6);
          re::FixedArray<CoreIKTransform>::deinit(v6 - 5);
          re::FixedArray<CoreIKTransform>::deinit(v6 - 8);
          re::FixedArray<CoreIKTransform>::deinit(v6 - 11);
          v6 += 17;
          v5 -= 136;
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

uint64_t re::RigEvaluation::reset(uint64_t this)
{
  v1 = this;
  v2 = *(this + 1280);
  if (v2 >= 1)
  {
    this = memset(*(this + 1288), 255, 24 * v2);
  }

  v3 = *(v1 + 1304);
  if (v3 >= 1)
  {
    this = memset(*(v1 + 1312), 255, 8 * v3);
  }

  v4 = *(v1 + 1160);
  if (v4 >= 1)
  {
    this = memset(*(v1 + 1168), 255, 8 * v4);
  }

  v5 = *(v1 + 1504);
  *(v1 + 1504) = 0;
  if (v5)
  {
    v6 = 136 * v5;
    v7 = (*(v1 + 1520) + 96);
    do
    {
      re::FixedArray<CoreIKTransform>::deinit(v7);
      re::FixedArray<CoreIKTransform>::deinit(v7 - 5);
      re::FixedArray<CoreIKTransform>::deinit(v7 - 8);
      this = re::FixedArray<CoreIKTransform>::deinit(v7 - 11);
      v7 += 17;
      v6 -= 136;
    }

    while (v6);
  }

  ++*(v1 + 1512);
  return this;
}

BOOL re::RigEvaluation::bindLocalSpaceJointInput(uint64_t a1, char *a2, __int128 *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v11[0] = a2;
  v5 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::tryGet(a1 + 1176, v11);
  if (v5)
  {
    v6 = *v5;
    v7 = *(a1 + 1280);
    if (v7 <= *v5)
    {
      v11[1] = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 468;
      v16 = 2048;
      v17 = v6;
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(a1 + 1288) + 24 * v6;
    v9 = *a3;
    *(v8 + 16) = *(a3 + 2);
    *v8 = v9;
  }

  return v5 != 0;
}

BOOL re::RigEvaluation::bindModelSpaceJointInput(uint64_t a1, char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v5 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::tryGet(a1 + 1176, v9);
  if (v5)
  {
    v6 = *v5;
    v7 = *(a1 + 1304);
    if (v7 <= *v5)
    {
      v9[1] = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v10 = 136315906;
      v11 = "operator[]";
      v12 = 1024;
      v13 = 468;
      v14 = 2048;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(a1 + 1312) + 8 * v6) = a3;
  }

  return v5 != 0;
}

BOOL re::RigEvaluation::setDefaultPose(re::RigEvaluation *this, unint64_t a2)
{
  v4 = *(this + 146);
  v5 = *(this + 145);
  if (v5 >= 1)
  {
    memset(*(this + 146), 255, 8 * v5);
  }

  v6 = *(this + 141);
  if (v6 > a2)
  {
    v7 = *(this + 143) + 32 * a2;
    if (*(v7 + 16))
    {
      v8 = 0;
      do
      {
        v9 = v8 + *(v7 + 24);
        if (*(this + 136) <= v9)
        {
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

        v10 = *(*(this + 138) + 24 * v9 + 16);
        if (*(this + 145) <= v10)
        {
          goto LABEL_11;
        }

        *(v4 + 8 * v10) = v9;
        ++v8;
      }

      while (v8 < *(v7 + 16));
    }
  }

  return v6 > a2;
}

void re::RigEvaluation::constructEvaluationCommands(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17[0] = &unk_1F5CCF7F8;
  v17[1] = "Scratch Pad";
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::FixedArray<char const*>::init<>(&v14, v17, a3);
  if (a3)
  {
    v10 = 0;
    v11 = v15;
    v12 = (a2 + 8);
    do
    {
      if (v11 == v10)
      {
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        v28 = 0u;
        v29 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        v23 = 468;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v13 = *v12;
      v12 += 2;
      *(v16 + 8 * v10++) = v13;
    }

    while (a3 != v10);
  }

  else
  {
    v11 = v15;
  }

  re::RigEvaluation::constructEvaluationCommands(a1, v16, v11, a4, a5);
  if (v14 && v15)
  {
    (*(*v14 + 40))();
  }

  re::Allocator::~Allocator(v17);
}

{
  v567 = *MEMORY[0x1E69E9840];
  v505[1] = "Scratch Pad";
  v506 = 0;
  v505[0] = &unk_1F5CCF7F8;
  v544 = 0;
  v9 = v488;
  v546 = 0u;
  v547 = 0u;
  v548 = 0u;
  v549 = 0u;
  v550 = 0;
  v551 = 1;
  v554 = 0;
  v552 = 0;
  v553 = 0;
  v555 = 0;
  v558 = 0;
  v556 = 0;
  v557 = 0;
  v559 = 0;
  v563 = 0;
  v560 = 0u;
  v561 = 0u;
  v562 = 0;
  i = a1[131];
  v503 = 0;
  v502 = 0;
  v504 = 0;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v502, v505, i);
  v500 = 0;
  v499 = 0;
  v501 = 0;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v499, v505, i);
  v497 = 0;
  v496 = 0;
  v498 = 0;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v496, v505, i);
  v494 = 0;
  v493 = 0;
  v495 = 0;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v493, v505, i);
  v491 = 0;
  v490 = 0;
  v492 = 0;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v490, v505, i);
  v466 = i;
  if (!i)
  {
    v6 = 0;
    *v489 = v505;
    *&v489[8] = 0u;
    v488[0].n128_u64[0] = v505;
    *(v488 + 8) = 0u;
    goto LABEL_52;
  }

  v11 = 0;
  Rotation = 0x7FFFFFFFFFFFFFFELL;
  v9 = 0x8000000000000001;
  do
  {
    v518.n128_u64[0] = -1;
    re::DynamicArray<unsigned long>::add(a4 + 101, &v518);
    v12 = v500;
    if (v500 <= v11)
    {
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_639:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_640:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_641:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_642:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_643:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_644:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 789;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v12;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_645:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_646:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_647:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 789;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v12;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_648:
      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v9 + 212) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(v9 + 222) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v9 + 228) = v11;
      v508[1].n128_u16[6] = 2048;
      *(v9 + 238) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_649:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 797;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v9;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_650:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 476;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v9;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_651:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 476;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v9;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_652:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v9;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_653;
    }

    *(v501 + 8 * v11) = *(a4 + 103) + 0x7FFFFFFFFFFFFFFELL;
    v518.n128_u64[0] = -1;
    re::DynamicArray<unsigned long>::add(a4 + 101, &v518);
    v12 = v497;
    if (v497 <= v11)
    {
      goto LABEL_639;
    }

    *(v498 + 8 * v11) = *(a4 + 103) + 0x7FFFFFFFFFFFFFFELL;
    v518.n128_u64[0] = -1;
    re::DynamicArray<unsigned long>::add(a4 + 101, &v518);
    v12 = v494;
    if (v494 <= v11)
    {
      goto LABEL_640;
    }

    *(v495 + 8 * v11) = *(a4 + 103) + 0x7FFFFFFFFFFFFFFELL;
    v518.n128_u64[0] = -1;
    re::DynamicArray<unsigned long>::add(a4 + 101, &v518);
    v12 = v491;
    if (v491 <= v11)
    {
      goto LABEL_641;
    }

    v14 = v492;
    *(v492 + 8 * v11) = *(a4 + 103) + 0x7FFFFFFFFFFFFFFELL;
    v12 = v494;
    if (v494 <= v11)
    {
      goto LABEL_642;
    }

    v12 = v500;
    if (v500 <= v11)
    {
      goto LABEL_643;
    }

    v15 = v495;
    v12 = *(v495 + 8 * v11) - 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(a4 + 103);
    if (v6 <= v12)
    {
      goto LABEL_644;
    }

    v16 = *(a4 + 105);
    *(v16 + 8 * v12) = *(v501 + 8 * v11);
    v12 = v491;
    if (v491 <= v11)
    {
      goto LABEL_645;
    }

    v12 = v494;
    if (v494 <= v11)
    {
      goto LABEL_646;
    }

    v12 = *(v14 + 8 * v11) - 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(a4 + 103);
    if (v6 <= v12)
    {
      goto LABEL_647;
    }

    *(v16 + 8 * v12) = *(v15 + 8 * v11++);
  }

  while (i != v11);
  v6 = 0;
  v9 = 0;
  v7 = 32;
  v12 = a1;
  do
  {
    v11 = *(v12 + 1048);
    if (v11 <= v9)
    {
      goto LABEL_649;
    }

    v11 = *(v12 + 1160);
    if (v11 <= v9)
    {
      goto LABEL_650;
    }

    v17 = *(v12 + 1064);
    v18 = *(*(v12 + 1168) + 8 * v9);
    if (v18 == -1)
    {
      v20 = (v17 + v7 - 8);
      v19 = (v17 + v7 - 16);
    }

    else
    {
      Rotation = *(v12 + 1088);
      if (Rotation <= v18)
      {
        goto LABEL_693;
      }

      v19 = (*(v12 + 1104) + 24 * v18);
      v20 = (v19 + 8);
    }

    v21 = *v19;
    v11 = *v20;
    if (v21 == 2)
    {
      Rotation = *(v12 + 928);
      if (Rotation <= v11)
      {
        goto LABEL_703;
      }

      v29 = *(v12 + 944) + 96 * v11;
      v30 = *(v29 + 80);
      v518 = xmmword_1E30474D0;
      re::convertIntrinsicEulersToQuaternions<float>(v29 + 32, 1, v30, &v518, 1);
      _Q1 = *(v29 + 16);
      _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v518, v518), v518, 0xCuLL), vnegq_f32(_Q1)), v518, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
      v33 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v518, _Q1, 3);
      _Q3.i32[0] = v518.n128_i32[3];
      _Q2 = vmlaq_laneq_f32(v33, _Q1, v518, 3);
      __asm { FMLA            S0, S3, V1.S[3] }

      _Q1 = *(v29 + 48);
      v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), vnegq_f32(_Q2)), _Q1, vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
      v42 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), _Q1, _S0), _Q2, _Q1, 3);
      __asm { FMLA            S2, S0, V1.S[3] }

      v42.i32[3] = _Q2.i32[0];
      v43 = *(v29 + 72);
      v28 = *v29;
      v27 = *(v29 + 8);
      v518.n128_u64[0] = *(v29 + 64);
      v518.n128_u64[1] = v43;
      v519 = v42;
    }

    else
    {
      if (v21 != 1)
      {
        goto LABEL_886;
      }

      Rotation = *(v12 + 888);
      if (Rotation <= v11)
      {
        goto LABEL_702;
      }

      v22 = *(v12 + 904) + (v11 << 6);
      Rotation = *(v22 + 32);
      v23 = *(v22 + 40);
      v24 = *(v22 + 48);
      v518 = xmmword_1E30474D0;
      re::convertIntrinsicEulersToQuaternions<float>(v22 + 16, 1, v24, &v518, 1);
      v25 = v518.n128_u64[1];
      v26 = v518.n128_u64[0];
      v28 = *v22;
      v27 = *(v22 + 8);
      v518.n128_u64[0] = Rotation;
      v518.n128_u64[1] = v23;
      v519.i64[0] = v26;
      v519.i64[1] = v25;
    }

    *&v520 = v28;
    *(&v520 + 1) = v27;
    re::EvaluationTree::createInputRegister(a4, &v518, v508);
    v44 = re::EvaluationTree::constructMatrix4x4(a4, v508[0].n128_i64[0], v508[0].n128_i64[1], v508[1].n128_i64[0]);
    v11 = *(v12 + 1280);
    if (v11 <= v9)
    {
      goto LABEL_651;
    }

    v45 = v44;
    v46 = (*(v12 + 1288) + v6);
    v13 = *v46;
    v11 = v44;
    if (*v46 != -1)
    {
      v47 = v46[1];
      v11 = v44;
      if (v47 != -1)
      {
        v48 = v46[2];
        v11 = v44;
        if (v48 != -1)
        {
          v11 = re::EvaluationTree::constructMatrix4x4(a4, v13, v47, v48);
        }
      }
    }

    Rotation = v503;
    if (v503 <= v9)
    {
      goto LABEL_652;
    }

    *(v504 + 8 * v9) = v45;
    v12 = *(v17 + v7);
    Rotation = v497;
    if (v12 == -1)
    {
      if (v497 <= v9)
      {
        goto LABEL_710;
      }

      Rotation = *(v498 + 8 * v9) - 0x7FFFFFFFFFFFFFFFLL;
      v12 = *(a4 + 103);
      if (v12 <= Rotation)
      {
        goto LABEL_711;
      }

      v55 = *(a4 + 105);
      *(v55 + 8 * Rotation) = v45;
      Rotation = v500;
      if (v500 <= v9)
      {
        goto LABEL_712;
      }

      Rotation = *(v501 + 8 * v9) - 0x7FFFFFFFFFFFFFFFLL;
      v12 = *(a4 + 103);
      if (v12 <= Rotation)
      {
        goto LABEL_713;
      }

      *(v55 + 8 * Rotation) = v11;
    }

    else
    {
      if (v497 <= v9)
      {
        goto LABEL_694;
      }

      if (v497 <= v12)
      {
        goto LABEL_695;
      }

      i = *(v498 + 8 * v9);
      v49 = *(v498 + 8 * v12);
      v518.n128_u32[0] = 28;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
      Rotation = *(a4 + 230) - 1;
      v50 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), Rotation);
      *(v50 + 8) = v49;
      *(v50 + 16) = v45;
      v12 = i - 0x7FFFFFFFFFFFFFFFLL;
      v51 = *(a4 + 103);
      if (v51 <= i - 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_696;
      }

      *(*(a4 + 105) + 8 * v12) = Rotation;
      Rotation = v500;
      if (v500 <= v9)
      {
        goto LABEL_697;
      }

      Rotation = *(v17 + v7);
      v12 = v491;
      if (v491 <= Rotation)
      {
        goto LABEL_698;
      }

      v12 = *(v501 + 8 * v9);
      v52 = *(v492 + 8 * Rotation);
      v518.n128_u32[0] = 28;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
      v53 = *(a4 + 230) - 1;
      v54 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v53);
      *(v54 + 8) = v52;
      *(v54 + 16) = v11;
      v11 = v12 - 0x7FFFFFFFFFFFFFFFLL;
      Rotation = *(a4 + 103);
      if (Rotation <= v12 - 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_699;
      }

      *(*(a4 + 105) + 8 * v11) = v53;
      i = v466;
    }

    ++v9;
    v6 += 24;
    v7 += 56;
    v12 = a1;
  }

  while (i != v9);
  memset(v489, 0, sizeof(v489));
  v11 = v505;
  re::FixedArray<unsigned long>::init<unsigned long const&>(v489, v505, i, &re::RigNode::kInvalidIndex);
  memset(v488, 0, 24);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v488, v505, i, &re::RigNode::kInvalidIndex);
  v56 = (*(v505[0] + 32))(v505, i, 1);
  if (!v56)
  {
    goto LABEL_815;
  }

  v6 = v56;
  v58 = v56;
  if (i != 1)
  {
    bzero(v56, i - 1);
    v58 = (v6 + i - 1);
  }

  *v58 = 0;
  v9 = v488;
LABEL_52:
  *&v469 = 0;
  *&v468 = 0;
  DWORD2(v468) = 0;
  v467 = v505;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v467, i);
  ++DWORD2(v468);
  v485 = 0;
  v486 = 0;
  v487 = 0;
  v59 = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v485, v505, i);
  if (i)
  {
    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v518.n128_u64[0] = -1;
      v59 = re::DynamicArray<unsigned long>::add(a4 + 101, &v518);
      Rotation = v486;
      if (v486 <= v11)
      {
        goto LABEL_648;
      }

      *(v487 + 8 * v11++) = *(a4 + 103) + 0x7FFFFFFFFFFFFFFELL;
    }

    while (i != v11);
  }

  v60 = 0;
  v12 = a1;
  v61 = a1[166];
  v540 = a1[167];
  v541 = v61;
  v62 = a1[188];
  v542 = a1[190];
  v543 = v62;
  while (1)
  {
    v459 = v60;
    v9 = *(&v540 + v60 + 8);
    if (v9)
    {
      break;
    }

LABEL_112:
    v60 = v459 + 16;
    if (v459 == 16)
    {
      if (!v468)
      {
        goto LABEL_744;
      }

      v79 = *v12;
      v80 = (*(**v12 + 32))(*v12, 168, 8);
      *v80 = 0u;
      *(v80 + 16) = 0u;
      *(v80 + 32) = 0u;
      *(v80 + 48) = 0u;
      *(v80 + 64) = 0u;
      *(v80 + 80) = 0u;
      *(v80 + 96) = 0u;
      *(v80 + 112) = 0u;
      *(v80 + 128) = 0u;
      *(v80 + 144) = 0u;
      *(v80 + 160) = 0;
      v508[0].n128_u64[0] = &unk_1F5CB1AF8;
      v508[0].n128_u64[1] = v79;
      v508[1].n128_u64[1] = v508;
      v9 = &v518.n128_u64[1];
      v518.n128_u64[0] = v80;
      *&v520 = &v518.n128_u64[1];
      v518.n128_u64[1] = &unk_1F5CB1AF8;
      v519.i64[0] = v79;
      std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::operator=[abi:nn200100](&v544, &v518);
      std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](&v518);
      std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::~__value_func[abi:nn200100](v508);
      re::FixedArray<re::internal::RigIKCall>::init<>(v544, *v12, *(v12 + 1504) + *(v12 + 1328));
      v81 = v544;
      re::FixedArray<re::FixedArray<float>>::operator=(v544 + 6, (v12 + 1344));
      re::FixedArray<re::FixedArray<float>>::operator=(v81 + 9, (v12 + 1368));
      re::FixedArray<re::TwoBoneIKOptions>::operator=((v81 + 12), v12 + 1392);
      re::FixedArray<re::FABRIKOptions>::operator=((v81 + 15), v12 + 1416);
      re::FixedArray<re::SplineIKOptions>::operator=((v81 + 18), v12 + 1440);
      *&v539[2] = 0;
      memset(v537, 0, sizeof(v537));
      if (!*(v12 + 1328))
      {
        goto LABEL_659;
      }

      Rotation = 0;
      while (1)
      {
        v11 = v544[1];
        if (v11 <= Rotation)
        {
          goto LABEL_871;
        }

        v82 = *(v12 + 1336) + 136 * Rotation;
        v83 = v544[2] + 136 * Rotation;
        *v83 = *v82;
        re::FixedArray<unsigned long>::operator=((v83 + 8), v82 + 8);
        re::FixedArray<unsigned long>::operator=((v83 + 32), v82 + 32);
        re::FixedArray<unsigned long>::operator=((v83 + 56), v82 + 56);
        *(v83 + 80) = *(v82 + 80);
        re::FixedArray<re::Vector3<float>>::operator=((v83 + 96), v82 + 96);
        *(v83 + 120) = *(v82 + 120);
        v11 = *(v12 + 1472);
        if (v11 <= Rotation)
        {
          break;
        }

        v85 = (*(v12 + 1480) + 16 * Rotation);
        v86 = *(v85 + 1);
        v87 = *v85;
        if (v87 == 3)
        {
          v11 = *(v12 + 1328);
          if (v11 <= Rotation)
          {
            goto LABEL_881;
          }

          v446 = v86;
          v449 = Rotation;
          v11 = *(*(v12 + 1336) + 136 * Rotation + 128);
          Rotation = *(v12 + 848);
          if (Rotation <= v11)
          {
            goto LABEL_885;
          }

          v90 = (*(v12 + 864) + 240 * v11);
          v91 = v90[1].n128_u64[1];
          memset(v564, 0, 24);
          re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v564, v505, v91);
          Rotation = v90[1].n128_u64[1];
          v460 = v90;
          if (Rotation)
          {
            v12 = 0;
            v11 = 0;
            while (1)
            {
              i = v90[1].n128_u64[1];
              if (i <= v11)
              {
                goto LABEL_840;
              }

              v92 = (v90[2].n128_u64[1] + v12);
              v518.n128_u32[0] = 4;
              v519 = 0uLL;
              v518.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
              v518.n128_u64[0] = *(a4 + 230) - 1;
              re::DynamicArray<unsigned long>::add(a4 + 21, &v518);
              re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 488), (v92 + 2));
              i = *v92;
              v7 = v494;
              if (v494 <= *v92)
              {
                break;
              }

              v7 = *(*(a4 + 25) + 8 * *(a4 + 23) - 8);
              v93 = *(v495 + 8 * i);
              v518.n128_u32[0] = 28;
              v519 = 0uLL;
              v518.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
              v94 = *(a4 + 230) - 1;
              v95 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v94);
              *(v95 + 8) = v93;
              *(v95 + 16) = v7;
              i = *&v564[8];
              if (*&v564[8] <= v11)
              {
                goto LABEL_842;
              }

              *(*&v564[16] + 8 * v11++) = v94;
              v12 += 80;
              v90 = v460;
              if (Rotation == v11)
              {
                goto LABEL_138;
              }
            }

LABEL_841:
            v482 = 0;
            v521 = 0u;
            v522 = 0u;
            v519 = 0u;
            v520 = 0u;
            v518 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v508[0].n128_u32[0] = 136315906;
            *(v508[0].n128_u64 + 4) = "operator[]";
            v508[0].n128_u16[6] = 1024;
            *(&v508[0].n128_u32[3] + 2) = 468;
            v508[1].n128_u16[1] = 2048;
            *(v508[1].n128_u64 + 4) = i;
            v508[1].n128_u16[6] = 2048;
            *(&v508[1].n128_u64[1] + 6) = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_842:
            v482 = 0;
            v521 = 0u;
            v522 = 0u;
            v519 = 0u;
            v520 = 0u;
            v518 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v508[0].n128_u32[0] = 136315906;
            *(v508[0].n128_u64 + 4) = "operator[]";
            v508[0].n128_u16[6] = 1024;
            *(&v508[0].n128_u32[3] + 2) = 468;
            v508[1].n128_u16[1] = 2048;
            *(v508[1].n128_u64 + 4) = v11;
            v508[1].n128_u16[6] = 2048;
            *(&v508[1].n128_u64[1] + 6) = i;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_843:
            *v537 = 0;
            v521 = 0u;
            v522 = 0u;
            v519 = 0u;
            v520 = 0u;
            v518 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v508[0].n128_u32[0] = 136315906;
            *(v508[0].n128_u64 + 4) = "operator[]";
            v508[0].n128_u16[6] = 1024;
            *(&v508[0].n128_u32[3] + 2) = 468;
            v508[1].n128_u16[1] = 2048;
            *(v508[1].n128_u64 + 4) = Rotation;
            v508[1].n128_u16[6] = 2048;
            *(&v508[1].n128_u64[1] + 6) = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_844;
          }

LABEL_138:
          v96 = v544;
          v11 = v544[1];
          Rotation = v449;
          if (v11 <= v449)
          {
            goto LABEL_887;
          }

          *(v544[2] + 136 * v449 + 88) = *&v537[16];
          v453 = v90[4].n128_u64[0];
          if (v453)
          {
            v12 = 0;
            do
            {
              v11 = v90[4].n128_u64[0];
              if (v11 <= v12)
              {
                goto LABEL_851;
              }

              v97 = v90[5].n128_u64[0];
              v518.n128_u32[0] = 7;
              v7 = v97 + 96 * v12;
              v519 = 0uLL;
              v518.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
              v518.n128_u64[0] = *(a4 + 245) - 1;
              re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
              re::DynamicArray<re::Vector3<float>>::add((a4 + 608), (v7 + 80));
              v11 = v90[9].n128_u64[0];
              Rotation = v494;
              if (v494 <= v11)
              {
                goto LABEL_852;
              }

              v456 = v12;
              Rotation = v497;
              if (v497 <= v11)
              {
                goto LABEL_853;
              }

              v12 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
              i = *(v495 + 8 * v11);
              v98 = *(v498 + 8 * v11);
              v518.n128_u32[0] = 20;
              v519 = 0uLL;
              v518.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
              v99 = *(a4 + 230) - 1;
              *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v99) + 8) = v98;
              v518.n128_u32[0] = 28;
              v519 = 0uLL;
              v518.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
              Rotation = *(a4 + 230) - 1;
              v100 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), Rotation);
              *(v100 + 8) = i;
              *(v100 + 16) = v99;
              v518.n128_u32[0] = 43;
              v519 = 0uLL;
              v518.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
              v463 = *(a4 + 245) - 1;
              v101 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v463);
              *(v101 + 8) = Rotation;
              *(v101 + 16) = v12;
              v508[0] = 0uLL;
              v518.n128_u32[0] = 7;
              v519 = 0uLL;
              v518.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
              v518.n128_u64[0] = *(a4 + 245) - 1;
              re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
              re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v508);
              v479 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
              v102 = *(v7 + 16);
              if (v102)
              {
                for (i = 0; i != v102; ++i)
                {
                  Rotation = *(v7 + 56);
                  if (Rotation <= i)
                  {
                    goto LABEL_716;
                  }

                  v103 = (*(v7 + 72) + 4 * i);
                  v104 = vld1q_dup_f32(v103);
                  v508[0] = v104;
                  v518.n128_u32[0] = 7;
                  v519 = 0uLL;
                  v518.n128_u64[1] = 0;
                  re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
                  v518.n128_u64[0] = *(a4 + 245) - 1;
                  re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
                  re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v508);
                  Rotation = *(v7 + 16);
                  if (Rotation <= i)
                  {
                    goto LABEL_717;
                  }

                  Rotation = *(*(v7 + 32) + 8 * i);
                  v12 = *&v564[8];
                  if (*&v564[8] <= Rotation)
                  {
                    goto LABEL_718;
                  }

                  v105 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
                  v12 = v479;
                  v106 = *(*&v564[16] + 8 * Rotation);
                  v518.n128_u32[0] = 43;
                  v519 = 0uLL;
                  v518.n128_u64[1] = 0;
                  re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
                  v107 = *(a4 + 245) - 1;
                  v108 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v107);
                  *(v108 + 8) = v106;
                  *(v108 + 16) = v463;
                  v518.n128_u32[0] = 25;
                  v519 = 0uLL;
                  v518.n128_u64[1] = 0;
                  re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
                  Rotation = *(a4 + 245) - 1;
                  v109 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
                  *(v109 + 8) = v107;
                  *(v109 + 16) = v105;
                  v518.n128_u32[0] = 8;
                  v519 = 0uLL;
                  v518.n128_u64[1] = 0;
                  re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
                  v110 = *(a4 + 245) - 1;
                  v111 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v110);
                  *(v111 + 8) = v12;
                  *(v111 + 16) = Rotation;
                  v479 = v110;
                }
              }

              re::DynamicArray<unsigned long>::add(v537, &v479);
              v12 = v456 + 1;
              v90 = v460;
            }

            while (v456 + 1 != v453);
            v96 = v544;
            Rotation = v449;
          }

          v11 = v96[19];
          v112 = v446;
          if (v11 <= v446)
          {
            goto LABEL_888;
          }

          v11 = v96[1];
          v12 = a1;
          if (v11 <= Rotation)
          {
            goto LABEL_889;
          }

          *(v96[2] + 136 * Rotation + 120) = v96[20] + 80 * v446;
          if (v90[10].n128_u64[0] != -1)
          {
            v518.n128_u32[0] = 7;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
            v518.n128_u64[0] = *(a4 + 245) - 1;
            re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
            re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v90 + 11);
            v11 = v90[10].n128_u64[0];
            Rotation = v494;
            if (v494 <= v11)
            {
              goto LABEL_890;
            }

            v518.n128_u64[0] = re::EvaluationTree::transformDirection(a4, *(v495 + 8 * v11), *(*(a4 + 40) + 8 * *(a4 + 38) - 8));
            re::DynamicArray<unsigned long>::add(v537, &v518);
            Rotation = v449;
          }

          if (v90[10].n128_u64[1] != -1)
          {
            v518.n128_u32[0] = 7;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
            v518.n128_u64[0] = *(a4 + 245) - 1;
            re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
            re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v90 + 12);
            v11 = v90[10].n128_u64[1];
            Rotation = v494;
            if (v494 <= v11)
            {
              goto LABEL_891;
            }

            v518.n128_u64[0] = re::EvaluationTree::transformDirection(a4, *(v495 + 8 * v11), *(*(a4 + 40) + 8 * *(a4 + 38) - 8));
            re::DynamicArray<unsigned long>::add(v537, &v518);
            Rotation = v449;
          }

          if (*v564 && *&v564[8])
          {
            (*(**v564 + 40))();
          }
        }

        else
        {
          if (v87 == 2)
          {
            v88 = v544;
            v11 = v544[16];
            if (v11 <= v86)
            {
              goto LABEL_882;
            }

            v11 = v544[1];
            if (v11 <= Rotation)
            {
              goto LABEL_884;
            }

            v89 = v544[17] + 8 * v86;
          }

          else
          {
            if (v87 != 1)
            {
              goto LABEL_902;
            }

            v88 = v544;
            v11 = v544[13];
            if (v11 <= v86)
            {
              goto LABEL_880;
            }

            v11 = v544[1];
            if (v11 <= Rotation)
            {
              goto LABEL_883;
            }

            v89 = v544[14] + 32 * v86;
          }

          *(v88[2] + 136 * Rotation + 120) = v89;
        }

        if (++Rotation >= *(v12 + 1328))
        {
          goto LABEL_659;
        }
      }

LABEL_872:
      *v564 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 476;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = Rotation;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_873:
      v507 = 0;
      v509 = 0u;
      v510 = 0u;
      memset(v508, 0, sizeof(v508));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v564 = 136315906;
      *&v564[4] = "operator[]";
      *&v564[12] = 1024;
      *&v564[14] = 468;
      *&v564[18] = 2048;
      *&v564[20] = v11;
      v565 = 2048;
      v566 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_874:
      v507 = 0;
      v509 = 0u;
      v510 = 0u;
      memset(v508, 0, sizeof(v508));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v564 = 136315906;
      *&v564[4] = "operator[]";
      *&v564[12] = 1024;
      *&v564[14] = 468;
      *&v564[18] = 2048;
      *&v564[20] = v11;
      v565 = 2048;
      v566 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_875:
      v507 = 0;
      v509 = 0u;
      v510 = 0u;
      memset(v508, 0, sizeof(v508));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v564 = 136315906;
      *&v564[4] = "operator[]";
      *&v564[12] = 1024;
      *&v564[14] = 468;
      *&v564[18] = 2048;
      *&v564[20] = Rotation;
      v565 = 2048;
      v566 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_876:
      v507 = 0;
      v509 = 0u;
      v510 = 0u;
      memset(v508, 0, sizeof(v508));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v564 = 136315906;
      *&v564[4] = "operator[]";
      *&v564[12] = 1024;
      *&v564[14] = 468;
      *&v564[18] = 2048;
      *&v564[20] = Rotation;
      v565 = 2048;
      v566 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_877:
      v507 = 0;
      v509 = 0u;
      v510 = 0u;
      memset(v508, 0, sizeof(v508));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v564 = 136315906;
      *&v564[4] = "operator[]";
      *&v564[12] = 1024;
      *&v564[14] = 789;
      *&v564[18] = 2048;
      *&v564[20] = v11;
      v565 = 2048;
      v566 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_878:
      v507 = 0;
      v509 = 0u;
      v510 = 0u;
      memset(v508, 0, sizeof(v508));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v564 = 136315906;
      *&v564[4] = "operator[]";
      *&v564[12] = 1024;
      *&v564[14] = 789;
      *&v564[18] = 2048;
      *&v564[20] = v11;
      v565 = 2048;
      v566 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_879:
      re::internal::assertLog(4, v123, "assertion failure: '%s' (%s:line %i) Unexpected rig parameter type.", "!Unreachable code", "constructEvaluationCommands", 1456);
      _os_crash();
      __break(1u);
LABEL_880:
      *v564 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v438 = v86;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v438;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_881:
      *v564 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 476;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = Rotation;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_882:
      *v564 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v439 = v86;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v439;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_883:
      *v564 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = Rotation;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_884:
      *v564 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = Rotation;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_885:
      *v564 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 797;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_886:
      re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Unexpected rig node type.", "!Unreachable code", "constructEvaluationCommands", 728);
      _os_crash();
      __break(1u);
LABEL_887:
      v482 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = Rotation;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_888:
      v482 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v440 = v112;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v440;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_889:
      v482 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = Rotation;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_890:
      v482 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_891:
      v482 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_892:
      re::internal::assertLog(4, v123, "assertion failure: '%s' (%s:line %i) Unexpected node channel type.", "!Unreachable code", "constructEvaluationCommands", 1433);
      _os_crash();
      __break(1u);
LABEL_893:
      re::internal::assertLog(4, v123, "assertion failure: '%s' (%s:line %i) Invalid parameter rig node type.", "!Unreachable code", "constructEvaluationCommands", 1417);
      _os_crash();
      __break(1u);
LABEL_894:
      re::internal::assertLog(4, v117, "assertion failure: '%s' (%s:line %i) Unexpected constraint type.", "!Unreachable code", "constructEvaluationCommands", 1574);
      _os_crash();
      __break(1u);
LABEL_895:
      re::internal::assertLog(5, v123, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "constructEvaluationCommands", 1443, v134);
      _os_crash();
      __break(1u);
LABEL_896:
      re::internal::assertLog(5, v123, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "constructEvaluationCommands", 1451, v139);
      _os_crash();
      __break(1u);
LABEL_897:
      re::internal::assertLog(4, v117, "assertion failure: '%s' (%s:line %i) Unexpected rig destination type.", "!Unreachable code", "constructEvaluationCommands", 1568);
      _os_crash();
      __break(1u);
LABEL_898:
      re::internal::assertLog(4, v192, "assertion failure: '%s' (%s:line %i) Unexpected aim constraint forward axis type.", "!Unreachable code", "constructEvaluationCommands", 1260);
      _os_crash();
      __break(1u);
    }
  }

  v63 = 0;
  v462 = *(&v540 + v60);
  do
  {
    v64 = v462 + 136 * v63;
    v12 = *(v64 + 64);
    if (v12)
    {
      v65 = 0;
      while (v12 > v65)
      {
        v12 = *(*(v64 + 72) + 8 * v65);
        *v564 = v12;
        v7 = *&v489[8];
        if (*&v489[8] <= v12)
        {
          goto LABEL_529;
        }

        if (*(*&v489[16] + 8 * v12) == -1)
        {
          *(*&v489[16] + 8 * v12) = v468;
          v12 = *v564;
          v7 = v486;
          if (v486 <= *v564)
          {
            goto LABEL_530;
          }

          v7 = v494;
          if (v494 <= *v564)
          {
            goto LABEL_531;
          }

          v7 = *(v487 + 8 * *v564) - 0x7FFFFFFFFFFFFFFFLL;
          Rotation = *(a4 + 103);
          if (Rotation <= v7)
          {
            goto LABEL_532;
          }

          *(*(a4 + 105) + 8 * v7) = *(v495 + 8 * *v564);
          v12 = *v564;
          if (v466 <= *v564)
          {
            goto LABEL_533;
          }

          *(v6 + *v564) = 0;
          v59 = re::DynamicArray<unsigned long>::add(&v467, v564);
        }

        ++v65;
        v12 = *(v64 + 64);
        if (v65 >= v12)
        {
          goto LABEL_70;
        }
      }

      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 476;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v65;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_529:
      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v12;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_530:
      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v12;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_531:
      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v12;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_532:
      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 789;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v7;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_533:
      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v12;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v466;
      v441 = 38;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_534;
    }

LABEL_70:
    ++v63;
  }

  while (v63 != v9);
  v66 = 0;
  v12 = a1;
  i = v466;
  while (1)
  {
    v445 = v66;
    v67 = (v462 + 136 * v66);
    v452 = v67[5];
    if (v452)
    {
      break;
    }

LABEL_111:
    v66 = v445 + 1;
    if (v445 + 1 == v9)
    {
      goto LABEL_112;
    }
  }

  v68 = 0;
  v448 = (v462 + 136 * v66);
  while (1)
  {
    v11 = v67[5];
    if (v11 <= v68)
    {
      goto LABEL_785;
    }

    v11 = v67[2];
    if (v11 <= v68)
    {
LABEL_786:
      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v437 = v68;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 476;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v437;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_787;
    }

    v11 = *(v67[6] + 8 * v68);
    v455 = v68;
    *v564 = *(v67[3] + 8 * v68);
    v482 = v11;
    v69 = v11;
    if (v11 != *v564)
    {
      break;
    }

LABEL_93:
    Rotation = *&v489[8];
    if (*&v489[8] <= v69)
    {
      goto LABEL_797;
    }

    if (*(*&v489[16] + 8 * v69) == -1)
    {
      *(*&v489[16] + 8 * v69) = v468;
      Rotation = *v564;
      v12 = v466;
      if (v466 <= *v564)
      {
        goto LABEL_843;
      }

      *(v6 + *v564) = 2;
      v12 = *v564;
      Rotation = v486;
      if (v486 <= *v564)
      {
LABEL_844:
        *v537 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 468;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v12;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_845:
        *v537 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 468;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v12;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_846:
        *v537 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 789;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = i;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_847:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_848:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 789;
        *&v537[18] = 2048;
        *&v537[20] = Rotation;
        v538 = 2048;
        *v539 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_849:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = 1;
        v538 = 2048;
        *v539 = 1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_850:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = 1;
        v538 = 2048;
        *v539 = 1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_851:
        v482 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 797;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v12;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_852:
        v482 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 468;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v11;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_853:
        v482 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 468;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v11;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_854:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_855:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_856:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 468;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v12;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_857:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_858:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_859;
      }

      Rotation = v494;
      if (v494 <= *v564)
      {
        goto LABEL_845;
      }

      i = *(v487 + 8 * *v564) - 0x7FFFFFFFFFFFFFFFLL;
      Rotation = *(a4 + 103);
      if (Rotation <= i)
      {
        goto LABEL_846;
      }

      *(*(a4 + 105) + 8 * i) = *(v495 + 8 * *v564);
      v59 = re::DynamicArray<unsigned long>::add(&v467, v564);
      v69 = *v564;
      i = v466;
    }

    else
    {
      i = v466;
      if (v466 <= v69)
      {
        goto LABEL_817;
      }

      if (*(v6 + v69) != 2)
      {
        v392 = v518;
        v393 = v519;
        *a5 = 0;
        *(a5 + 8) = 3000;
        *(a5 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a5 + 24) = v392;
        *(a5 + 40) = v393;
        v12 = a1;
        goto LABEL_165;
      }
    }

    v67 = v448;
    if (v11 != v69)
    {
      v74 = *&v489[16];
      v75 = v488[1].n128_u64[0];
      v12 = a1[131];
      do
      {
        if (v12 <= v11)
        {
          goto LABEL_654;
        }

        v76 = a1[133] + 56 * v11;
        v78 = *(v76 + 32);
        v77 = (v76 + 32);
        v12 = v78;
        Rotation = *&v489[8];
        if (*&v489[8] <= v78)
        {
          goto LABEL_655;
        }

        Rotation = v488[0].n128_u64[1];
        if (v488[0].n128_u64[1] <= v11)
        {
          goto LABEL_656;
        }

        *(v75 + 8 * v11) = *(v74 + 8 * v12);
        v12 = a1[131];
        if (v12 <= v11)
        {
          goto LABEL_657;
        }

        v11 = *v77;
      }

      while (*v77 != *v564);
    }

    v68 = v455 + 1;
    v12 = a1;
    if (v455 + 1 == v452)
    {
      goto LABEL_111;
    }
  }

  i = *(v12 + 1048);
  v69 = v11;
  while (1)
  {
    if (i <= v69)
    {
      goto LABEL_704;
    }

    v7 = *(*(v12 + 1064) + 56 * v69 + 32);
    if (v7 == -1)
    {
      break;
    }

    Rotation = *&v489[8];
    if (*&v489[8] <= v69)
    {
      goto LABEL_705;
    }

    if (*(*&v489[16] + 8 * v69) == -1)
    {
      *(*&v489[16] + 8 * v69) = v468;
      Rotation = v482;
      v12 = v466;
      if (v466 <= v482)
      {
        *v537 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 468;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = Rotation;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = v466;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_746:
        *v537 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 468;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v12;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = i;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_747:
        *v537 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 468;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v7;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = i;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_748:
        *v537 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 468;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v12;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_749:
        *v537 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 789;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v12;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_750:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_751:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_752:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_753:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_754:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_755:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_756:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_757:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v7;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_758:
        *v489 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = i;
        v538 = 2048;
        *v539 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_759:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v12;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_760:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_761:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 476;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_762:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 476;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_763:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 476;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_764:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_765:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 476;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_766:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 476;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_767:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_768:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_769:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_770:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_771:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 476;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_772:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_773:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 476;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_774:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 476;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_775:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_776:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_777:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_778:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_779:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_780:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_781:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_782:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_783:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_784:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_785:
        *v537 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        v436 = v68;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 476;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v436;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_786;
      }

      *(v6 + v482) = 1;
      v12 = v482;
      i = v486;
      if (v486 <= v482)
      {
        goto LABEL_746;
      }

      if (v486 <= v7)
      {
        goto LABEL_747;
      }

      Rotation = v503;
      if (v503 <= v482)
      {
        goto LABEL_748;
      }

      v70 = *(v487 + 8 * v482);
      i = *(v487 + 8 * v7);
      v71 = *(v504 + 8 * v482);
      v518.n128_u32[0] = 28;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
      v72 = *(a4 + 230) - 1;
      v73 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v72);
      *(v73 + 8) = i;
      *(v73 + 16) = v71;
      v12 = v70 - 0x7FFFFFFFFFFFFFFFLL;
      Rotation = *(a4 + 103);
      if (Rotation <= v12)
      {
        goto LABEL_749;
      }

      *(*(a4 + 105) + 8 * v12) = v72;
      v59 = re::DynamicArray<unsigned long>::add(&v467, &v482);
      v69 = v482;
      v12 = a1;
      i = a1[131];
    }

    else
    {
      if (v466 <= v69)
      {
        goto LABEL_714;
      }

      if (*(v6 + v69) != 1)
      {
        v113 = "Effected IK node cannot be a target or root - circular dependency detected.";
        goto LABEL_164;
      }
    }

    if (i <= v69)
    {
      goto LABEL_706;
    }

    v69 = *(*(v12 + 1064) + 56 * v69 + 32);
    v482 = v69;
    if (v69 == *v564)
    {
      goto LABEL_93;
    }
  }

  v113 = "IK effector is not a valid chain to the root.";
LABEL_164:
  v114 = v518;
  v115 = v519;
  *a5 = 0;
  *(a5 + 8) = 3000;
  *(a5 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a5 + 24) = v114;
  *(a5 + 40) = v115;
  i = v466;
LABEL_165:
  v116 = 0;
  while (2)
  {
    if (v485 && v486)
    {
      (*(*v485 + 40))(v485, v487);
    }

    if (v467 && v469)
    {
      (*(*v467 + 40))(v467, v469);
    }

    if (i)
    {
      (*(v505[0] + 40))(v505, v6);
    }

    if (v488[0].n128_u64[0] && v488[0].n128_u64[1])
    {
      (*(*v488[0].n128_u64[0] + 40))(v488[0].n128_u64[0], v488[1].n128_u64[0]);
    }

    if (*v489 && *&v489[8])
    {
      (*(**v489 + 40))(*v489, *&v489[16]);
    }

    if (!v116)
    {
      goto LABEL_614;
    }

    v516 = 0u;
    v517 = 0u;
    v514 = 0u;
    v515 = 0u;
    v512 = 0u;
    v513 = 0u;
    v510 = 0u;
    v511 = 0u;
    v509 = 0u;
    memset(v508, 0, sizeof(v508));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v508, v505, *(v12 + 224));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v508[1].n128_u64[1], v505, *(v12 + 264));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v509, v505, *(v12 + 304));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v510 + 1, v505, *(v12 + 344));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v512, v505, *(v12 + 384));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v513 + 1, v505, *(v12 + 424));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v515, v505, *(v12 + 464));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v516 + 1, v505, *(v12 + 504));
    v477 = 0u;
    v478 = 0u;
    v475 = 0u;
    v476 = 0u;
    v473 = 0u;
    v474 = 0u;
    v471 = 0u;
    v472 = 0u;
    v469 = 0u;
    v470 = 0u;
    v467 = 0u;
    v468 = 0u;
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v467, v505, *(v12 + 568));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v468 + 1, v505, *(v12 + 576));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v470, v505, *(v12 + 584));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v471 + 1, v505, *(v12 + 592));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v473, v505, *(v12 + 600));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v474 + 1, v505, *(v12 + 608));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v476, v505, *(v12 + 616));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v477 + 1, v505, *(v12 + 624));
    if (!i)
    {
LABEL_514:
      re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v546 + 1, *v12, a3);
      re::FixedArray<re::EvaluationSRT>::init<>(&v548, *v12, a3);
      if (a3)
      {
        i = 0;
        v7 = 0;
        v6 = 0;
        while (1)
        {
          v378 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::tryGet(v12 + 1176, (a2 + i));
          if (!v378)
          {
            break;
          }

          v11 = *v378;
          Rotation = v491;
          if (v491 <= *v378)
          {
            goto LABEL_793;
          }

          Rotation = v547;
          if (v547 <= v6)
          {
            goto LABEL_794;
          }

          v379 = v492;
          v380 = *(v492 + 8 * v11);
          *(*(&v547 + 1) + 8 * v6) = v380;
          Rotation = *(v12 + 1048);
          if (Rotation <= v11)
          {
            goto LABEL_795;
          }

          v11 = *(*(v12 + 1064) + 56 * v11 + 32);
          if (v11 != -1)
          {
            Rotation = v491;
            if (v491 <= v11)
            {
              goto LABEL_814;
            }

            v381 = *(v379 + 8 * v11);
            v518.n128_u32[0] = 20;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
            v382 = *(a4 + 230) - 1;
            *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v382) + 8) = v381;
            v518.n128_u32[0] = 28;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
            v383 = *(a4 + 230) - 1;
            v384 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v383);
            *(v384 + 8) = v382;
            *(v384 + 16) = v380;
            v380 = v383;
          }

          Scale = re::EvaluationTree::extractScale(a4, v380);
          Rotation = re::EvaluationTree::extractRotation(a4, v380);
          v518.n128_u32[0] = 37;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
          v9 = *(a4 + 245) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v9) + 8) = v380;
          v12 = *(&v548 + 1);
          if (*(&v548 + 1) <= v6)
          {
            goto LABEL_796;
          }

          v386 = (v549 + v7);
          *v386 = Scale;
          v386[1] = Rotation;
          v386[2] = v9;
          ++v6;
          v7 += 24;
          i += 8;
          v12 = a1;
          if (a3 == v6)
          {
            goto LABEL_525;
          }
        }

LABEL_534:
        re::DynamicString::format(*v12, "Output Joint '%s' does not exist.", &v518, *(a2 + 8 * v6), v441);
        v390 = v518;
        v391 = v519;
        *a5 = 0;
        *(a5 + 8) = 3002;
        *(a5 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a5 + 24) = v390;
        *(a5 + 40) = v391;
LABEL_552:
        if (*(&v477 + 1))
        {
          if (v478)
          {
            (*(**(&v477 + 1) + 40))(*(&v477 + 1));
            v478 = 0uLL;
          }

          *(&v477 + 1) = 0;
        }

        if (v476)
        {
          if (*(&v476 + 1))
          {
            (*(*v476 + 40))(v476);
            *(&v476 + 1) = 0;
            *&v477 = 0;
          }

          *&v476 = 0;
        }

        if (*(&v474 + 1))
        {
          if (v475)
          {
            (*(**(&v474 + 1) + 40))(*(&v474 + 1));
            v475 = 0uLL;
          }

          *(&v474 + 1) = 0;
        }

        if (v473)
        {
          if (*(&v473 + 1))
          {
            (*(*v473 + 40))(v473);
            *(&v473 + 1) = 0;
            *&v474 = 0;
          }

          *&v473 = 0;
        }

        if (*(&v471 + 1))
        {
          if (v472)
          {
            (*(**(&v471 + 1) + 40))(*(&v471 + 1));
            v472 = 0uLL;
          }

          *(&v471 + 1) = 0;
        }

        if (v470)
        {
          if (*(&v470 + 1))
          {
            (*(*v470 + 40))(v470);
            *(&v470 + 1) = 0;
            *&v471 = 0;
          }

          *&v470 = 0;
        }

        if (*(&v468 + 1))
        {
          if (v469)
          {
            (*(**(&v468 + 1) + 40))(*(&v468 + 1));
            v469 = 0uLL;
          }

          *(&v468 + 1) = 0;
        }

        if (v467 && *(&v467 + 1))
        {
          (*(*v467 + 40))(v467);
        }

        if (*(&v516 + 1))
        {
          if (v517)
          {
            (*(**(&v516 + 1) + 40))(*(&v516 + 1));
            v517 = 0uLL;
          }

          *(&v516 + 1) = 0;
        }

        if (v515)
        {
          if (*(&v515 + 1))
          {
            (*(*v515 + 40))(v515);
            *(&v515 + 1) = 0;
            *&v516 = 0;
          }

          *&v515 = 0;
        }

        if (*(&v513 + 1))
        {
          if (v514)
          {
            (*(**(&v513 + 1) + 40))(*(&v513 + 1));
            v514 = 0uLL;
          }

          *(&v513 + 1) = 0;
        }

        if (v512)
        {
          if (*(&v512 + 1))
          {
            (*(*v512 + 40))(v512);
            *(&v512 + 1) = 0;
            *&v513 = 0;
          }

          *&v512 = 0;
        }

        if (*(&v510 + 1))
        {
          if (v511)
          {
            (*(**(&v510 + 1) + 40))(*(&v510 + 1));
            v511 = 0uLL;
          }

          *(&v510 + 1) = 0;
        }

        if (v509)
        {
          if (*(&v509 + 1))
          {
            (*(*v509 + 40))(v509);
            *(&v509 + 1) = 0;
            *&v510 = 0;
          }

          *&v509 = 0;
        }

        if (v508[1].n128_u64[1])
        {
          if (v508[2].n128_u64[0])
          {
            (*(*v508[1].n128_u64[1] + 40))(v508[1].n128_u64[1]);
            v508[2] = 0uLL;
          }

          v508[1].n128_u64[1] = 0;
        }

        if (v508[0].n128_u64[0] && v508[0].n128_u64[1])
        {
          (*(*v508[0].n128_u64[0] + 40))(v508[0].n128_u64[0]);
        }

LABEL_614:
        if (v490 && v491)
        {
          (*(*v490 + 40))(v490);
        }

        if (v493 && v494)
        {
          (*(*v493 + 40))(v493);
        }

        if (v496 && v497)
        {
          (*(*v496 + 40))(v496);
        }

        if (v499 && v500)
        {
          (*(*v499 + 40))(v499);
        }

        if (v502 && v503)
        {
          (*(*v502 + 40))(v502);
        }

        re::RigGraphCompilation::~RigGraphCompilation((&v549 + 8));
        if (v548)
        {
          if (*(&v548 + 1))
          {
            (*(*v548 + 40))(v548);
            *(&v548 + 1) = 0;
            *&v549 = 0;
          }

          *&v548 = 0;
        }

        if (*(&v546 + 1))
        {
          if (v547)
          {
            (*(**(&v546 + 1) + 40))(*(&v546 + 1));
            v547 = 0uLL;
          }

          *(&v546 + 1) = 0;
        }

        std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](&v544);
        re::Allocator::~Allocator(v505);
        return;
      }

LABEL_525:
      v387 = v544;
      v388 = v546;
      v544 = 0;
      v518.n128_u64[0] = v387;
      v389 = &v518.n128_u64[1];
      if (v546)
      {
        a4 = v537;
        Rotation = &v518;
        if (v546 == &v545)
        {
LABEL_537:
          *&v520 = v389;
          (*(*v388 + 24))(v388, v389);
          goto LABEL_538;
        }

        *&v520 = v546;
        *&v546 = 0;
      }

      else
      {
        *&v520 = 0;
        a4 = v537;
        Rotation = &v518;
      }

LABEL_538:
      v394 = *(&v546 + 1);
      v395 = v547;
      *(a4 + 120) = 0u;
      *(&v520 + 1) = v394;
      *&v521 = v395;
      *(Rotation + 56) = *(a4 + 136);
      *(&v547 + 1) = 0;
      *&v548 = 0;
      v396 = *(&v548 + 1);
      v397 = v549;
      *(a4 + 152) = 0u;
      *(&v522 + 1) = v396;
      *&v523[0] = v397;
      re::RigGraphCompilation::RigGraphCompilation(v523 + 8, &v549 + 8);
      *a5 = 1;
      v398 = v518.n128_u64[0];
      v399 = v520;
      v518.n128_u64[0] = 0;
      *(a5 + 8) = v398;
      if (v399)
      {
        if (v399 == v389)
        {
          *(a5 + 40) = a5 + 16;
          (*(*v399 + 24))(v399);
        }

        else
        {
          *(a5 + 40) = v399;
          *&v520 = 0;
        }
      }

      else
      {
        *(a5 + 40) = 0;
      }

      v400 = v521;
      *(a5 + 48) = *(&v520 + 1);
      *(a5 + 56) = v400;
      *(&v520 + 1) = 0;
      *&v521 = 0;
      *(a5 + 64) = *(Rotation + 56);
      *(&v521 + 1) = 0;
      *&v522 = 0;
      v401 = *&v523[0];
      *(a5 + 80) = *(&v522 + 1);
      *(a5 + 88) = v401;
      *(&v522 + 1) = 0;
      *&v523[0] = 0;
      re::RigGraphCompilation::RigGraphCompilation(a5 + 96, v523 + 8);
      re::RigGraphCompilation::~RigGraphCompilation((v523 + 8));
      if (v522)
      {
        if (*(&v522 + 1))
        {
          (*(*v522 + 40))(v522, *&v523[0]);
          *(&v522 + 1) = 0;
          *&v523[0] = 0;
        }

        *&v522 = 0;
      }

      if (*(&v520 + 1))
      {
        if (v521)
        {
          (*(**(&v520 + 1) + 40))(*(&v520 + 1), *(&v521 + 1));
          v521 = 0uLL;
        }

        *(&v520 + 1) = 0;
      }

      std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](&v518);
      goto LABEL_552;
    }

    Rotation = 0;
    v9 = &v518;
    while (1)
    {
      v11 = *(v12 + 1048);
      if (v11 <= Rotation)
      {
        goto LABEL_804;
      }

      v11 = v500;
      if (v500 <= Rotation)
      {
LABEL_805:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = Rotation;
        v538 = 2048;
        *v539 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_806:
        *v489 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_807:
        *v489 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = Rotation;
        v538 = 2048;
        *v539 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_808:
        *v489 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v12;
        v538 = 2048;
        *v539 = i;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_809:
        *v489 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v12;
        v538 = 2048;
        *v539 = i;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_810:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = Rotation;
        v538 = 2048;
        *v539 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_811:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_812:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_813:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_814:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_815:
        re::internal::assertLog(4, v57, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
LABEL_816:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        v69 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = 1;
        v538 = 2048;
        *v539 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_817:
        *v537 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        v11 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 468;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v69;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = i;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_818:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_819:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_820:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_821:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_822:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_823:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_824:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_825:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_826:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_827:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_828:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_829:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_830:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_831:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_832:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_833:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_834:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_835:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_836:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 468;
        *&v537[18] = 2048;
        *&v537[20] = v6;
        v538 = 2048;
        *v539 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_837:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 789;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_838:
        *v564 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 476;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = Rotation;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_839:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = 1;
        v538 = 2048;
        *v539 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_840:
        v482 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v508[0].n128_u32[0] = 136315906;
        *(v508[0].n128_u64 + 4) = "operator[]";
        v508[0].n128_u16[6] = 1024;
        *(&v508[0].n128_u32[3] + 2) = 797;
        v508[1].n128_u16[1] = 2048;
        *(v508[1].n128_u64 + 4) = v11;
        v508[1].n128_u16[6] = 2048;
        *(&v508[1].n128_u64[1] + 6) = i;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_841;
      }

      v118 = (*(v12 + 1064) + 56 * Rotation);
      v119 = *(v501 + 8 * Rotation);
      v461 = Rotation;
      if (v118[5])
      {
        break;
      }

      v7 = *(v501 + 8 * Rotation);
LABEL_504:
      v11 = v494;
      v6 = v461;
      if (v494 <= v461)
      {
        goto LABEL_836;
      }

      v11 = *(v495 + 8 * v461) - 0x7FFFFFFFFFFFFFFFLL;
      Rotation = *(a4 + 103);
      if (Rotation <= v11)
      {
        goto LABEL_837;
      }

      v375 = *(a4 + 105);
      *(v375 + 8 * v11) = v7;
      v6 = v461 + 1;
      Rotation = v461 + 1;
      if (v461 + 1 == i)
      {
        v11 = 0;
        v376 = v492;
        while (1)
        {
          Rotation = *(v12 + 1304);
          if (Rotation <= v11)
          {
            goto LABEL_838;
          }

          v377 = *(*(v12 + 1312) + 8 * v11);
          if (v377 != -1)
          {
            Rotation = v491;
            if (v491 <= v11)
            {
              goto LABEL_847;
            }

            Rotation = *(v376 + 8 * v11) - 0x7FFFFFFFFFFFFFFFLL;
            v12 = *(a4 + 103);
            if (v12 <= Rotation)
            {
              goto LABEL_848;
            }

            *(v375 + 8 * Rotation) = v377;
            v12 = a1;
          }

          if (i == ++v11)
          {
            goto LABEL_514;
          }
        }
      }
    }

    v6 = 0;
    v454 = *(v12 + 1064) + 56 * Rotation;
    while (2)
    {
      v11 = v118[6] + v6;
      Rotation = *(v12 + 968);
      if (Rotation <= v11)
      {
        goto LABEL_700;
      }

      v120 = (*(v12 + 984) + 16 * v11);
      v11 = *(v120 + 1);
      v121 = *v120;
      if (v121 <= 2)
      {
        v7 = v461;
        v464 = v6;
        if (v121 == 1)
        {
          Rotation = *(v12 + 24);
          if (Rotation <= v11)
          {
            goto LABEL_756;
          }

          v6 = *(v12 + 40) + 88 * v11;
          if ((*(v6 + 1) & *v6 & *(v6 + 2)) == (*(v6 + 1) | *v6 | *(v6 + 2)))
          {
            Rotation = v497;
            if (v497 <= v461)
            {
              goto LABEL_791;
            }

            v203 = *(v498 + 8 * v461);
            v518.n128_u32[0] = 37;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
            v204 = v118;
            v205 = *(a4 + 245) - 1;
            *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v205) + 8) = v203;
            v518.n128_u32[0] = 8;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
            Rotation = *(a4 + 245) - 1;
            v206 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
            *(v206 + 8) = v205;
            *(v206 + 16) = v11;
            v518.n128_u32[0] = 34;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
            v207 = *(a4 + 225) - 1;
            *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v207) + 8) = v119;
            v518.n128_u32[0] = 40;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
            v7 = *(a4 + 230) - 1;
            v208 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v7);
            *(v208 + 8) = v207;
            *(v208 + 16) = Rotation;
            v118 = v204;
            goto LABEL_460;
          }

          Rotation = v118[4];
          if (Rotation != -1)
          {
            v12 = v494;
            if (v494 <= Rotation)
            {
              goto LABEL_810;
            }

            v212 = *(v495 + 8 * Rotation);
            v518.n128_u32[0] = 20;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
            v213 = *(a4 + 230) - 1;
            *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v213) + 8) = v212;
            v518.n128_u32[0] = 28;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
            v214 = *(a4 + 230) - 1;
            v215 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v214);
            *(v215 + 8) = v213;
            *(v215 + 16) = v119;
            v119 = v214;
          }

          Rotation = v503;
          v12 = 37;
          if (v503 <= v461)
          {
            goto LABEL_792;
          }

          v216 = *(v504 + 8 * v461);
          v518.n128_u32[0] = 37;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
          v217 = *(a4 + 245) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v217) + 8) = v216;
          v518.n128_u32[0] = 8;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
          v218 = *(a4 + 245) - 1;
          v219 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v218);
          *(v219 + 8) = v217;
          *(v219 + 16) = v11;
          v518.n128_u32[0] = 37;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
          v220 = *(a4 + 245) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v220) + 8) = v119;
          if (*v6)
          {
            *&v221 = 1.0;
          }

          else
          {
            *&v221 = 0.0;
          }

          if (*(v6 + 1))
          {
            v222 = 1.0;
          }

          else
          {
            v222 = 0.0;
          }

          if (*(v6 + 2))
          {
            v223 = 1.0;
          }

          else
          {
            v223 = 0.0;
          }

          *(&v221 + 1) = v222;
          *(&v221 + 2) = v223;
          *v537 = v221;
          v518.n128_u32[0] = 7;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
          v518.n128_u64[0] = *(a4 + 245) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
          re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v537);
          v224 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
          v518.n128_u32[0] = 10;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
          Rotation = *(a4 + 245) - 1;
          v225 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
          v225[1] = v220;
          v225[2] = v218;
          v225[3] = v224;
          v518.n128_u32[0] = 34;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
          v226 = *(a4 + 225) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v226) + 8) = v119;
          v518.n128_u32[0] = 40;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
          v7 = *(a4 + 230) - 1;
          v227 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v7);
          *(v227 + 8) = v226;
          *(v227 + 16) = Rotation;
          v118 = v454;
          v11 = *(v454 + 32);
          if (v11 == -1)
          {
            v12 = a1;
LABEL_460:
            v6 = v464;
            goto LABEL_501;
          }

          Rotation = v494;
          v12 = a1;
          v6 = v464;
          if (v494 <= v11)
          {
            goto LABEL_811;
          }

          v228 = *(v495 + 8 * v11);
          v518.n128_u32[0] = 28;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
          v229 = *(a4 + 230) - 1;
          v230 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v229);
          *(v230 + 8) = v228;
          *(v230 + 16) = v7;
          v7 = v229;
LABEL_482:
          v118 = v454;
          goto LABEL_501;
        }

        if (v121 != 2)
        {
          goto LABEL_894;
        }

        Rotation = *(v12 + 64);
        if (Rotation <= v11)
        {
          goto LABEL_752;
        }

        v6 = *(v12 + 80) + 88 * v11;
        v176 = *(v6 + 24);
        v458 = v119;
        if (v176 == 2)
        {
          v237 = *(v6 + 64);
          if (!v237)
          {
            goto LABEL_391;
          }

          if (v237 == 1)
          {
            goto LABEL_849;
          }

          v238 = **(v6 + 80) + *(*(v6 + 80) + 4);
          if (v238 == 1.0 || vabds_f32(1.0, v238) < (((fabsf(v238) + 1.0) + 1.0) * 0.00001))
          {
LABEL_391:
            v11 = *(v6 + 24);
            if (v11 <= 1)
            {
              goto LABEL_816;
            }

            v240 = v239;
            if (*(v6 + 64))
            {
              v242 = **(v6 + 80);
            }

            else
            {
              v242 = 0.5;
            }

            *v537 = v242;
            v518.n128_u32[0] = 2;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1744), &v518);
            v518.n128_u64[0] = *(a4 + 220) - 1;
            re::DynamicArray<unsigned long>::add(a4 + 11, &v518);
            re::DynamicArray<float>::add((a4 + 408), v537);
            v326 = *(*(a4 + 15) + 8 * *(a4 + 13) - 8);
            v518.n128_u32[0] = 12;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
            v11 = *(a4 + 235) - 1;
            v327 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v11);
            v327[1] = v240;
            v327[2] = v241;
            v327[3] = v326;
            goto LABEL_456;
          }
        }

        else if (v176 == 1)
        {
          if (!*(v6 + 64) || (v177 = **(v6 + 80), v177 == 1.0) || vabds_f32(1.0, v177) < (((fabsf(v177) + 1.0) + 1.0) * 0.00001))
          {
            goto LABEL_456;
          }
        }

        *&v537[8] = 0x3F80000000000000;
        *v537 = 0;
        v518.n128_u32[0] = 5;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
        v518.n128_u64[0] = *(a4 + 235) - 1;
        re::DynamicArray<unsigned long>::add(a4 + 26, &v518);
        re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v537);
        v243 = *(a4 + 30) + 8 * *(a4 + 28);
        v12 = *(v243 - 8);
        v244 = *(v6 + 24);
        if (v244)
        {
          i = 0;
          v7 = *(v243 - 8);
          while (1)
          {
            v11 = *(v6 + 24);
            if (v11 <= i)
            {
              break;
            }

            v11 = *(v6 + 64);
            v246 = 1.0 / v244;
            if (v11)
            {
              if (v11 <= i)
              {
                goto LABEL_701;
              }

              v246 = *(*(v6 + 80) + 4 * i);
            }

            *v537 = v246;
            v518.n128_u32[0] = 2;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1744), &v518);
            v518.n128_u64[0] = *(a4 + 220) - 1;
            re::DynamicArray<unsigned long>::add(a4 + 11, &v518);
            re::DynamicArray<float>::add((a4 + 408), v537);
            v247 = *(*(a4 + 15) + 8 * *(a4 + 13) - 8);
            v518.n128_u32[0] = 12;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
            Rotation = *(a4 + 235) - 1;
            v248 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), Rotation);
            v248[1] = v12;
            v248[2] = v245;
            v248[3] = v247;
            v518.n128_u32[0] = 24;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
            v11 = *(a4 + 235) - 1;
            v249 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v11);
            *(v249 + 8) = v7;
            *(v249 + 16) = Rotation;
            ++i;
            v7 = v11;
            if (v244 == i)
            {
              goto LABEL_456;
            }
          }

LABEL_653:
          *v564 = 0;
          v521 = 0u;
          v522 = 0u;
          v519 = 0u;
          v520 = 0u;
          v518 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v537 = 136315906;
          *&v537[4] = "operator[]";
          *&v537[12] = 1024;
          *&v537[14] = 797;
          *&v537[18] = 2048;
          *&v537[20] = i;
          v538 = 2048;
          *v539 = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_654:
          *v537 = 0;
          v521 = 0u;
          v522 = 0u;
          v519 = 0u;
          v520 = 0u;
          v518 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v508[0].n128_u32[0] = 136315906;
          *(v508[0].n128_u64 + 4) = "operator[]";
          v508[0].n128_u16[6] = 1024;
          *(&v508[0].n128_u32[3] + 2) = 797;
          v508[1].n128_u16[1] = 2048;
          *(v508[1].n128_u64 + 4) = v11;
          v508[1].n128_u16[6] = 2048;
          *(&v508[1].n128_u64[1] + 6) = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_655:
          *v537 = 0;
          v521 = 0u;
          v522 = 0u;
          v519 = 0u;
          v520 = 0u;
          v518 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v508[0].n128_u32[0] = 136315906;
          *(v508[0].n128_u64 + 4) = "operator[]";
          v508[0].n128_u16[6] = 1024;
          *(&v508[0].n128_u32[3] + 2) = 468;
          v508[1].n128_u16[1] = 2048;
          *(v508[1].n128_u64 + 4) = v12;
          v508[1].n128_u16[6] = 2048;
          *(&v508[1].n128_u64[1] + 6) = Rotation;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_656:
          *v537 = 0;
          v521 = 0u;
          v522 = 0u;
          v519 = 0u;
          v520 = 0u;
          v518 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v508[0].n128_u32[0] = 136315906;
          *(v508[0].n128_u64 + 4) = "operator[]";
          v508[0].n128_u16[6] = 1024;
          *(&v508[0].n128_u32[3] + 2) = 468;
          v508[1].n128_u16[1] = 2048;
          *(v508[1].n128_u64 + 4) = v11;
          v508[1].n128_u16[6] = 2048;
          *(&v508[1].n128_u64[1] + 6) = Rotation;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_657:
          *v537 = 0;
          v521 = 0u;
          v522 = 0u;
          v519 = 0u;
          v520 = 0u;
          v518 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v508[0].n128_u32[0] = 136315906;
          *(v508[0].n128_u64 + 4) = "operator[]";
          v508[0].n128_u16[6] = 1024;
          *(&v508[0].n128_u32[3] + 2) = 797;
          v508[1].n128_u16[1] = 2048;
          *(v508[1].n128_u64 + 4) = v11;
          v508[1].n128_u16[6] = 2048;
          *(&v508[1].n128_u64[1] + 6) = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_658;
        }

        v11 = *(v243 - 8);
LABEL_456:
        Rotation = v497;
        v12 = v461;
        if (v497 <= v461)
        {
          goto LABEL_759;
        }

        v328 = re::EvaluationTree::extractRotation(a4, *(v498 + 8 * v461));
        v329 = v458;
        Rotation = re::EvaluationTree::extractScale(a4, v458);
        v518.n128_u32[0] = 24;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
        v330 = *(a4 + 235) - 1;
        v331 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v330);
        *(v331 + 8) = v11;
        *(v331 + 16) = v328;
        v518.n128_u32[0] = 37;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
        v332 = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v332) + 8) = v458;
        v7 = re::EvaluationTree::constructMatrix4x4(a4, Rotation, v330, v332);
        if ((*(v6 + 1) & *v6 & *(v6 + 2)) != (*(v6 + 1) | *v6 | *(v6 + 2)))
        {
          v518.n128_u32[0] = 1;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v518);
          v518.n128_u64[0] = *(a4 + 215) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 6, &v518);
          re::DynamicArray<int>::add(a4 + 46, &v540);
          i = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
          v11 = *(v454 + 32);
          if (v11 != -1)
          {
            Rotation = v494;
            v12 = 7;
            if (v494 <= v11)
            {
              goto LABEL_812;
            }

            v333 = *(v495 + 8 * v11);
            v518.n128_u32[0] = 20;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
            v334 = *(a4 + 230) - 1;
            *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v334) + 8) = v333;
            v518.n128_u32[0] = 28;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
            v335 = *(a4 + 230) - 1;
            v336 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v335);
            *(v336 + 8) = v334;
            *(v336 + 16) = v458;
            v518.n128_u32[0] = 28;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
            v337 = *(a4 + 230) - 1;
            v338 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v337);
            *(v338 + 8) = v334;
            *(v338 + 16) = v7;
            v329 = v335;
            v7 = v337;
          }

          v339 = re::EvaluationTree::extractRotation(a4, v329);
          v518.n128_u32[0] = 14;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
          v340 = *(a4 + 245) - 1;
          v341 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v340);
          *(v341 + 8) = v339;
          *(v341 + 16) = i;
          v342 = re::EvaluationTree::extractRotation(a4, v7);
          v518.n128_u32[0] = 14;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
          v343 = *(a4 + 245) - 1;
          v344 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v343);
          *(v344 + 8) = v342;
          *(v344 + 16) = i;
          if (*v6)
          {
            *&v345 = 1.0;
          }

          else
          {
            *&v345 = 0.0;
          }

          if (*(v6 + 1))
          {
            v346 = 1.0;
          }

          else
          {
            v346 = 0.0;
          }

          if (*(v6 + 2))
          {
            v347 = 1.0;
          }

          else
          {
            v347 = 0.0;
          }

          *(&v345 + 1) = v346;
          *(&v345 + 2) = v347;
          *v537 = v345;
          v518.n128_u32[0] = 7;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
          v518.n128_u64[0] = *(a4 + 245) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
          re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v537);
          v348 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
          v518.n128_u32[0] = 10;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
          v349 = *(a4 + 245) - 1;
          v350 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v349);
          v350[1] = v340;
          v350[2] = v343;
          v350[3] = v348;
          v518.n128_u32[0] = 13;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v351 = *(a4 + 235) - 1;
          v352 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v351);
          *(v352 + 8) = v349;
          *(v352 + 16) = i;
          v12 = v329;
          v353 = re::EvaluationTree::extractScale(a4, v329);
          v518.n128_u32[0] = 37;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
          Rotation = *(a4 + 245) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation) + 8) = v329;
          v7 = re::EvaluationTree::constructMatrix4x4(a4, v353, v351, Rotation);
          v118 = v454;
          v11 = *(v454 + 32);
          if (v11 == -1)
          {
            i = v466;
            v6 = v464;
          }

          else
          {
            Rotation = v494;
            i = v466;
            v6 = v464;
            if (v494 <= v11)
            {
              goto LABEL_813;
            }

            v354 = *(v495 + 8 * v11);
            v518.n128_u32[0] = 28;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
            Rotation = v454;
            v355 = *(a4 + 230) - 1;
            v356 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v355);
            *(v356 + 8) = v354;
            *(v356 + 16) = v7;
            v7 = v355;
            v118 = v454;
          }

          v12 = a1;
LABEL_501:
          ++v6;
          v119 = v7;
          if (v6 >= v118[5])
          {
            goto LABEL_504;
          }

          continue;
        }

        v12 = a1;
        i = v466;
        goto LABEL_459;
      }

      break;
    }

    v7 = v461;
    if (v121 == 3)
    {
      Rotation = *(v12 + 104);
      if (Rotation <= v11)
      {
        goto LABEL_755;
      }

      v178 = *(v12 + 120) + 80 * v11;
      v179 = *(v178 + 16);
      if (v179 == 1)
      {
        if (!*(v178 + 56) || (v180 = **(v178 + 72), v180 == 1.0) || vabds_f32(1.0, v180) < (((fabsf(v180) + 1.0) + 1.0) * 0.00001))
        {
          v181 = *(v178 + 32);
          v11 = *v181;
          Rotation = v497;
          if (v497 <= *v181)
          {
            goto LABEL_801;
          }

          Rotation = v494;
          if (v494 <= v11)
          {
            goto LABEL_802;
          }

          v182 = v6;
          v183 = *(v498 + 8 * v11);
          Rotation = *(v495 + 8 * v11);
          v518.n128_u32[0] = 20;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
          v184 = *(a4 + 230) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v184) + 8) = v183;
          v6 = 28;
          v518.n128_u32[0] = 28;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
          v185 = *(a4 + 230) - 1;
          v186 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v185);
          *(v186 + 8) = Rotation;
          *(v186 + 16) = v184;
          v11 = v497;
          if (v497 <= v461)
          {
            goto LABEL_803;
          }

          v187 = *(v498 + 8 * v461);
          v518.n128_u32[0] = 28;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
          v7 = *(a4 + 230) - 1;
          v188 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v7);
          *(v188 + 8) = v185;
          *(v188 + 16) = v187;
          v6 = v182;
          goto LABEL_482;
        }
      }

      else if (v179 == 2)
      {
        v209 = *(v178 + 56);
        if (!v209)
        {
          goto LABEL_363;
        }

        if (v209 == 1)
        {
          goto LABEL_850;
        }

        v210 = **(v178 + 72) + *(*(v178 + 72) + 4);
        if (v210 == 1.0 || vabds_f32(1.0, v210) < (((fabsf(v210) + 1.0) + 1.0) * 0.00001))
        {
LABEL_363:
          v11 = *(v178 + 16);
          if (v11 <= 1)
          {
            goto LABEL_839;
          }

          if (*(v178 + 56))
          {
            v211 = **(v178 + 72);
          }

          else
          {
            v211 = 0.5;
          }

          *&v540 = v211;
          v518.n128_u32[0] = 2;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1744), &v518);
          v518.n128_u64[0] = *(a4 + 220) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 11, &v518);
          re::DynamicArray<float>::add((a4 + 408), &v540);
          v357 = *(*(a4 + 15) + 8 * *(a4 + 13) - 8);
          memset(v489, 255, sizeof(v489));
          re::EvaluationTree::lerp(a4, v564, v537, v357, v489);
LABEL_480:
          v358 = re::EvaluationTree::constructMatrix4x4(a4, *v489, *&v489[8], *&v489[16]);
          v11 = v497;
          if (v497 <= v461)
          {
            goto LABEL_790;
          }

          v359 = v358;
          v360 = *(v498 + 8 * v461);
          v518.n128_u32[0] = 28;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
          v7 = *(a4 + 230) - 1;
          v361 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v7);
          *(v361 + 8) = v359;
          *(v361 + 16) = v360;
          goto LABEL_482;
        }
      }

      memset(v564, 255, 24);
      v518.n128_u64[1] = 1065353216;
      v518.n128_u64[0] = 0x3F8000003F800000;
      v519.i64[1] = 0x3F80000000000000;
      v519.i64[0] = 0;
      v520 = 0uLL;
      re::EvaluationTree::createInputRegister(a4, &v518, v564);
      *v489 = *v564;
      *&v489[16] = *&v564[16];
      Rotation = *(v178 + 16);
      if (Rotation)
      {
        v11 = 0;
        while (1)
        {
          v12 = *(v178 + 16);
          if (v12 <= v11)
          {
            break;
          }

          v12 = *(v178 + 56);
          v312 = 1.0 / Rotation;
          if (v12)
          {
            if (v12 <= v11)
            {
              goto LABEL_707;
            }

            v312 = *(*(v178 + 72) + 4 * v11);
          }

          v488[0].n128_f32[0] = v312;
          v518.n128_u32[0] = 2;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1744), &v518);
          v518.n128_u64[0] = *(a4 + 220) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 11, &v518);
          re::DynamicArray<float>::add((a4 + 408), v488);
          re::EvaluationTree::lerp(a4, v564, &v540, *(*(a4 + 15) + 8 * *(a4 + 13) - 8), v537);
          re::EvaluationTree::additiveBlend(a4, v489, v537, v518.n128_u64);
          *v489 = v518;
          *&v489[16] = v519.i64[0];
          if (Rotation == ++v11)
          {
            goto LABEL_428;
          }
        }

LABEL_658:
        v540 = 0;
        v521 = 0u;
        v522 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v537 = 136315906;
        *&v537[4] = "operator[]";
        *&v537[12] = 1024;
        *&v537[14] = 797;
        *&v537[18] = 2048;
        *&v537[20] = v11;
        v538 = 2048;
        *v539 = v12;
        v441 = 38;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_659:
        if (*(v12 + 1504))
        {
          v402 = 0;
          v11 = 0;
          Rotation = 136;
          do
          {
            i = v12;
            v12 = v11 + *(v12 + 1328);
            v9 = v544[1];
            if (v9 <= v12)
            {
              goto LABEL_856;
            }

            v403 = *(i + 1520) + v402;
            v404 = v544[2] + 136 * v12;
            *v404 = *v403;
            re::FixedArray<unsigned long>::operator=((v404 + 8), v403 + 8);
            re::FixedArray<unsigned long>::operator=((v404 + 32), v403 + 32);
            re::FixedArray<unsigned long>::operator=((v404 + 56), v403 + 56);
            *(v404 + 80) = *(v403 + 80);
            re::FixedArray<re::Vector3<float>>::operator=((v404 + 96), v403 + 96);
            *(v404 + 120) = *(v403 + 120);
            ++v11;
            v402 += 136;
            v12 = i;
          }

          while (v11 < *(i + 1504));
        }

        v405 = v544;
        v406 = v544[1];
        v9 = v488;
        if (v406)
        {
          v407 = v544[2];
          v408 = &v407[17 * v406];
          while (1)
          {
            v409 = v407[2];
            if (v409)
            {
              break;
            }

LABEL_669:
            v413 = v407[5];
            if (v413)
            {
              v414 = v407[6];
              v415 = *&v489[16];
              v416 = 8 * v413;
              do
              {
                v11 = *v414;
                Rotation = *&v489[8];
                if (*&v489[8] <= *v414)
                {
                  goto LABEL_788;
                }

                *v414++ = *(v415 + 8 * v11);
                v416 -= 8;
              }

              while (v416);
            }

            v417 = v407[8];
            if (v417)
            {
              v418 = v407[9];
              v419 = *&v489[16];
              v420 = 8 * v417;
              while (1)
              {
                v11 = *v418;
                Rotation = *&v489[8];
                if (*&v489[8] <= *v418)
                {
                  break;
                }

                *v418++ = *(v419 + 8 * v11);
                v420 -= 8;
                if (!v420)
                {
                  goto LABEL_677;
                }
              }

LABEL_789:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v508[0].n128_u32[0] = 136315906;
              *(v9 + 212) = "operator[]";
              v508[0].n128_u16[6] = 1024;
              *(v9 + 222) = 468;
              v508[1].n128_u16[1] = 2048;
              *(v9 + 228) = v11;
              v508[1].n128_u16[6] = 2048;
              *(v9 + 238) = Rotation;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_790:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 468;
              *&v537[18] = 2048;
              *&v537[20] = v7;
              v538 = 2048;
              *v539 = v11;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_791:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 468;
              *&v537[18] = 2048;
              *&v537[20] = v7;
              v538 = 2048;
              *v539 = Rotation;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_792:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 468;
              *&v537[18] = 2048;
              *&v537[20] = v7;
              v538 = 2048;
              *v539 = Rotation;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_793:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 468;
              *&v537[18] = 2048;
              *&v537[20] = v11;
              v538 = 2048;
              *v539 = Rotation;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_794:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 468;
              *&v537[18] = 2048;
              *&v537[20] = v6;
              v538 = 2048;
              *v539 = Rotation;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_795:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 797;
              *&v537[18] = 2048;
              *&v537[20] = v11;
              v538 = 2048;
              *v539 = Rotation;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_796:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              v69 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 468;
              *&v537[18] = 2048;
              *&v537[20] = v6;
              v538 = 2048;
              *v539 = v12;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_797:
              *v537 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              v11 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v508[0].n128_u32[0] = 136315906;
              *(v508[0].n128_u64 + 4) = "operator[]";
              v508[0].n128_u16[6] = 1024;
              *(&v508[0].n128_u32[3] + 2) = 468;
              v508[1].n128_u16[1] = 2048;
              *(v508[1].n128_u64 + 4) = v69;
              v508[1].n128_u16[6] = 2048;
              *(&v508[1].n128_u64[1] + 6) = Rotation;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_798:
              v540 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 797;
              *&v537[18] = 2048;
              *&v537[20] = v11;
              v538 = 2048;
              *v539 = Rotation;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_799:
              v540 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 797;
              *&v537[18] = 2048;
              *&v537[20] = v11;
              v538 = 2048;
              *v539 = Rotation;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_800:
              v540 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 797;
              *&v537[18] = 2048;
              *&v537[20] = v11;
              v538 = 2048;
              *v539 = v12;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_801:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 476;
              *&v537[18] = 2048;
              *&v537[20] = v11;
              v538 = 2048;
              *v539 = Rotation;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_802:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 476;
              *&v537[18] = 2048;
              *&v537[20] = v11;
              v538 = 2048;
              *v539 = Rotation;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_803:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 468;
              *&v537[18] = 2048;
              *&v537[20] = v7;
              v538 = 2048;
              *v539 = v11;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_804:
              *v564 = 0;
              v521 = 0u;
              v522 = 0u;
              v519 = 0u;
              v520 = 0u;
              v518 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v537 = 136315906;
              *&v537[4] = "operator[]";
              *&v537[12] = 1024;
              *&v537[14] = 797;
              *&v537[18] = 2048;
              *&v537[20] = Rotation;
              v538 = 2048;
              *v539 = v11;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_805;
            }

LABEL_677:
            v407 += 17;
            if (v407 == v408)
            {
              goto LABEL_678;
            }
          }

          v410 = v407[3];
          v411 = *&v489[16];
          v412 = 8 * v409;
          while (1)
          {
            v11 = *v410;
            Rotation = *&v489[8];
            if (*&v489[8] <= *v410)
            {
              break;
            }

            *v410++ = *(v411 + 8 * v11);
            v412 -= 8;
            if (!v412)
            {
              goto LABEL_669;
            }
          }

LABEL_787:
          *v564 = 0;
          v521 = 0u;
          v522 = 0u;
          v519 = 0u;
          v520 = 0u;
          v518 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v508[0].n128_u32[0] = 136315906;
          *(v9 + 212) = "operator[]";
          v508[0].n128_u16[6] = 1024;
          *(v9 + 222) = 468;
          v508[1].n128_u16[1] = 2048;
          *(v9 + 228) = v11;
          v508[1].n128_u16[6] = 2048;
          *(v9 + 238) = Rotation;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_788:
          *v564 = 0;
          v521 = 0u;
          v522 = 0u;
          v519 = 0u;
          v520 = 0u;
          v518 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v508[0].n128_u32[0] = 136315906;
          *(v9 + 212) = "operator[]";
          v508[0].n128_u16[6] = 1024;
          *(v9 + 222) = 468;
          v508[1].n128_u16[1] = 2048;
          *(v9 + 228) = v11;
          v508[1].n128_u16[6] = 2048;
          *(v9 + 238) = Rotation;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_789;
        }

LABEL_678:
        re::FixedArray<int>::init<>(v405 + 3, *v12, v468);
        v421 = v468;
        i = v466;
        if (v468)
        {
          v11 = 0;
          v422 = v469;
          v423 = v544;
          Rotation = v488[0].n128_u64[1];
          v424 = v488[1].n128_u64[0];
          while (1)
          {
            v12 = *(v422 + 8 * v11);
            if (Rotation <= v12)
            {
              goto LABEL_865;
            }

            v9 = v423[4];
            if (v9 <= v11)
            {
              break;
            }

            *(v423[5] + 4 * v11++) = *(v424 + 8 * v12);
            if (v421 == v11)
            {
              goto LABEL_683;
            }
          }

LABEL_866:
          *v564 = 0;
          v521 = 0u;
          v522 = 0u;
          v519 = 0u;
          v520 = 0u;
          v518 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v508[0].n128_u32[0] = 136315906;
          *(v508[0].n128_u64 + 4) = "operator[]";
          v508[0].n128_u16[6] = 1024;
          *(&v508[0].n128_u32[3] + 2) = 468;
          v508[1].n128_u16[1] = 2048;
          *(v508[1].n128_u64 + 4) = v11;
          v508[1].n128_u16[6] = 2048;
          *(&v508[1].n128_u64[1] + 6) = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_867:
          *v564 = 0;
          v521 = 0u;
          v522 = 0u;
          v519 = 0u;
          v520 = 0u;
          v518 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v508[0].n128_u32[0] = 136315906;
          *(v508[0].n128_u64 + 4) = "operator[]";
          v508[0].n128_u16[6] = 1024;
          *(&v508[0].n128_u32[3] + 2) = 468;
          v508[1].n128_u16[1] = 2048;
          *(v508[1].n128_u64 + 4) = Rotation;
          v508[1].n128_u16[6] = 2048;
          *(&v508[1].n128_u64[1] + 6) = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_868:
          *v564 = 0;
          v521 = 0u;
          v522 = 0u;
          v519 = 0u;
          v520 = 0u;
          v518 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v508[0].n128_u32[0] = 136315906;
          *(v508[0].n128_u64 + 4) = "operator[]";
          v508[0].n128_u16[6] = 1024;
          *(&v508[0].n128_u32[3] + 2) = 468;
          v508[1].n128_u16[1] = 2048;
          *(v508[1].n128_u64 + 4) = v11;
          v508[1].n128_u16[6] = 2048;
          *(&v508[1].n128_u64[1] + 6) = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_869:
          v507 = 0;
          v509 = 0u;
          v510 = 0u;
          memset(v508, 0, sizeof(v508));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v564 = 136315906;
          *&v564[4] = "operator[]";
          *&v564[12] = 1024;
          *&v564[14] = 468;
          *&v564[18] = 2048;
          *&v564[20] = v11;
          v565 = 2048;
          v566 = Rotation;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_870:
          v507 = 0;
          v509 = 0u;
          v510 = 0u;
          memset(v508, 0, sizeof(v508));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v564 = 136315906;
          *&v564[4] = "operator[]";
          *&v564[12] = 1024;
          *&v564[14] = 468;
          *&v564[18] = 2048;
          *&v564[20] = v11;
          v565 = 2048;
          v566 = i;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_871:
          *v564 = 0;
          v521 = 0u;
          v522 = 0u;
          v519 = 0u;
          v520 = 0u;
          v518 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v508[0].n128_u32[0] = 136315906;
          *(v508[0].n128_u64 + 4) = "operator[]";
          v508[0].n128_u16[6] = 1024;
          *(&v508[0].n128_u32[3] + 2) = 468;
          v508[1].n128_u16[1] = 2048;
          *(v508[1].n128_u64 + 4) = Rotation;
          v508[1].n128_u16[6] = 2048;
          *(&v508[1].n128_u64[1] + 6) = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_872;
        }

LABEL_683:
        v482 = 0;
        v483 = 0;
        v484 = 0;
        re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v482, v505, v421);
        if (v468)
        {
          v11 = 0;
          v425 = v469;
          v426 = v487;
          v427 = v484;
          while (1)
          {
            Rotation = *(v425 + 8 * v11);
            v12 = v486;
            if (v486 <= Rotation)
            {
              goto LABEL_867;
            }

            v12 = v483;
            if (v483 <= v11)
            {
              goto LABEL_868;
            }

            *(v427 + 8 * v11++) = *(v426 + 8 * Rotation);
            v428 = v468;
            if (v11 >= v468)
            {
              goto LABEL_720;
            }
          }
        }

LABEL_719:
        v428 = 0;
LABEL_720:
        v479 = 0;
        v480 = 0;
        v481 = 0;
        re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v479, v505, v428);
        v536 = 0u;
        v535 = 0u;
        v534 = 0u;
        v533 = 0u;
        v530 = 0u;
        v529 = 0u;
        v527 = 0u;
        v528 = 0u;
        v526 = 0u;
        memset(v523, 0, sizeof(v523));
        v521 = 0u;
        v519 = 0u;
        v520 = 0u;
        v518 = 0u;
        v524 = *&v539[2];
        v525 = *&v537[16];
        *&v522 = v484;
        *(&v522 + 1) = v483;
        v531 = v481;
        v532 = v480;
        v12 = a1;
        if (!v468)
        {
LABEL_735:
          if (v479 && v480)
          {
            (*(*v479 + 40))(v479, v481);
          }

          if (v482 && v483)
          {
            (*(*v482 + 40))(v482, v484);
          }

          if (*v537 && *&v539[2])
          {
            (*(**v537 + 40))(*v537, *&v539[2]);
          }

LABEL_744:
          v116 = 1;
          continue;
        }

        v429 = v469;
        v430 = *&v489[16];
        v431 = v501;
        v432 = v481;
        v433 = 8 * v468;
        v434 = v492;
        while (1)
        {
          v11 = *v429;
          Rotation = *&v489[8];
          if (*&v489[8] <= *v429)
          {
            goto LABEL_869;
          }

          if (i <= v11)
          {
            goto LABEL_870;
          }

          Rotation = *(v430 + 8 * v11);
          v435 = *(v6 + v11);
          if (v435 == 2)
          {
            break;
          }

          if (v435 == 1)
          {
            v12 = v500;
            if (v500 <= v11)
            {
              goto LABEL_873;
            }

            v12 = v480;
            if (v480 <= Rotation)
            {
              goto LABEL_875;
            }

            v11 = *(v431 + 8 * v11) - 0x7FFFFFFFFFFFFFFFLL;
            v12 = *(a4 + 103);
            if (v12 <= v11)
            {
              goto LABEL_878;
            }

LABEL_733:
            *(*(a4 + 105) + 8 * v11) = *(v432 + 8 * Rotation);
            v12 = a1;
          }

          ++v429;
          v433 -= 8;
          if (!v433)
          {
            goto LABEL_735;
          }
        }

        v12 = v491;
        if (v491 <= v11)
        {
          goto LABEL_874;
        }

        v12 = v480;
        if (v480 <= Rotation)
        {
          goto LABEL_876;
        }

        v11 = *(v434 + 8 * v11) - 0x7FFFFFFFFFFFFFFFLL;
        v12 = *(a4 + 103);
        if (v12 <= v11)
        {
          goto LABEL_877;
        }

        goto LABEL_733;
      }

LABEL_428:
      v12 = a1;
      goto LABEL_480;
    }

    break;
  }

  v464 = v6;
  v457 = v119;
  if (v121 == 4)
  {
    Rotation = *(v12 + 144);
    if (Rotation <= v11)
    {
      goto LABEL_753;
    }

    v189 = *(v12 + 160);
    v12 = 37;
    v518.n128_u32[0] = 37;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
    i = *(a4 + 245) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), i) + 8) = v119;
    Rotation = v497;
    if (v497 <= v461)
    {
      goto LABEL_757;
    }

    v190 = *(v498 + 8 * v461);
    v6 = v189 + 144 * v11;
    v518.n128_u32[0] = 37;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
    v11 = *(a4 + 245) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v11) + 8) = v190;
    *v564 = i;
    *&v564[8] = v6;
    v540 = v11;
    v541 = v6;
    if (*(v6 + 64) >= 2uLL)
    {
      v518.n128_u32[0] = 29;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v193 = *(a4 + 245) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v193) + 8) = v191;
      v518.n128_u32[0] = 29;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v194 = *(a4 + 245) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v194) + 8) = v7;
      v7 = v194;
      v191 = v193;
    }

    v12 = 7;
    v195 = *(v6 + 4);
    v447 = i;
    v451 = v7;
    if (v195 == 2)
    {
      *v537 = 0x3F80000000000000uLL;
      v518.n128_u32[0] = 7;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v518.n128_u64[0] = *(a4 + 245) - 1;
      re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
      re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v537);
      Rotation = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
      v201 = Rotation;
    }

    else
    {
      if (v195 == 1)
      {
        v11 = *(v6 + 128);
        Rotation = v494;
        v7 = 42;
        if (v494 <= v11)
        {
          goto LABEL_806;
        }

        v250 = *(v495 + 8 * v11);
        *v537 = 0x3F80000000000000uLL;
        v518.n128_u32[0] = 7;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
        v518.n128_u64[0] = *(a4 + 245) - 1;
        re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
        re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v537);
        v11 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
        v518.n128_u32[0] = 42;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
        Rotation = *(a4 + 245) - 1;
        v251 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
        *(v251 + 8) = v250;
        *(v251 + 16) = v11;
        v12 = *(v6 + 128);
        i = v497;
        if (v497 <= v12)
        {
          goto LABEL_809;
        }

        v252 = *(v498 + 8 * v12);
        v518.n128_u32[0] = 42;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
        v201 = *(a4 + 245) - 1;
        v202 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v201);
        *(v202 + 8) = v252;
      }

      else
      {
        if (*(v6 + 4))
        {
          goto LABEL_898;
        }

        Rotation = *(v6 + 128);
        v12 = v494;
        if (v494 <= Rotation)
        {
          goto LABEL_807;
        }

        v196 = *(v495 + 8 * Rotation);
        v7 = 37;
        v518.n128_u32[0] = 37;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
        v197 = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v197) + 8) = v196;
        v518.n128_u32[0] = 31;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
        Rotation = *(a4 + 245) - 1;
        v198 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
        *(v198 + 8) = v197;
        *(v198 + 16) = i;
        v12 = *(v6 + 128);
        i = v497;
        if (v497 <= v12)
        {
          goto LABEL_808;
        }

        v199 = *(v498 + 8 * v12);
        v518.n128_u32[0] = 37;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
        v200 = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v200) + 8) = v199;
        v518.n128_u32[0] = 31;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
        v201 = *(a4 + 245) - 1;
        v202 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v201);
        *(v202 + 8) = v200;
      }

      *(v202 + 16) = v11;
    }

    v518.n128_u32[0] = 15;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
    v253 = *(a4 + 245) - 1;
    v254 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v253);
    *(v254 + 8) = v191;
    *(v254 + 16) = Rotation;
    v518.n128_u32[0] = 29;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
    v255 = *(a4 + 245) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v255) + 8) = v253;
    v518.n128_u32[0] = 15;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
    v256 = *(a4 + 245) - 1;
    v257 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v256);
    *(v257 + 8) = v255;
    *(v257 + 16) = v191;
    v518.n128_u32[0] = 38;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
    v11 = *(a4 + 225) - 1;
    v258 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v11);
    v258[1] = v191;
    v258[2] = v256;
    v258[3] = v255;
    v518.n128_u32[0] = 15;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
    v259 = *(a4 + 245) - 1;
    v260 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v259);
    *(v260 + 8) = v451;
    *(v260 + 16) = v201;
    v518.n128_u32[0] = 29;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
    v261 = *(a4 + 245) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v261) + 8) = v259;
    v518.n128_u32[0] = 15;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
    v262 = *(a4 + 245) - 1;
    v263 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v262);
    *(v263 + 8) = v261;
    *(v263 + 16) = v451;
    v518.n128_u32[0] = 38;
    v7 = 38;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
    v264 = *(a4 + 225) - 1;
    v265 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v264);
    v265[1] = v451;
    v265[2] = v262;
    v265[3] = v261;
    v518.n128_u32[0] = 7;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
    v518.n128_u64[0] = *(a4 + 245) - 1;
    re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
    re::DynamicArray<re::Vector3<float>>::add((a4 + 608), (v6 + 16));
    v266 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
    v518.n128_u32[0] = 7;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
    v518.n128_u64[0] = *(a4 + 245) - 1;
    re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
    re::DynamicArray<re::Vector3<float>>::add((a4 + 608), (v6 + 32));
    v267 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
    v518.n128_u32[0] = 15;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
    v268 = *(a4 + 245) - 1;
    v269 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v268);
    *(v269 + 8) = v266;
    *(v269 + 16) = v267;
    v518.n128_u32[0] = 38;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
    v270 = *(a4 + 225) - 1;
    v271 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v270);
    v271[1] = v266;
    v271[2] = v267;
    v271[3] = v268;
    v518.n128_u32[0] = 33;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
    Rotation = *(a4 + 225) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), Rotation) + 8) = v270;
    v12 = v497;
    i = v461;
    if (v497 <= v461)
    {
      goto LABEL_758;
    }

    v272 = *(v498 + 8 * v461);
    v518.n128_u32[0] = 34;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
    v273 = *(a4 + 225) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v273) + 8) = v272;
    v518.n128_u32[0] = 27;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
    v274 = *(a4 + 225) - 1;
    v275 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v274);
    *(v275 + 8) = v264;
    *(v275 + 16) = Rotation;
    v518.n128_u32[0] = 27;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
    v276 = *(a4 + 225) - 1;
    v277 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v276);
    *(v277 + 8) = v11;
    *(v277 + 16) = Rotation;
    v518.n128_u32[0] = 19;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
    v278 = *(a4 + 225) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v278) + 8) = v274;
    v518.n128_u32[0] = 27;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
    v279 = *(a4 + 225) - 1;
    v280 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v279);
    *(v280 + 8) = v276;
    *(v280 + 16) = v278;
    v518.n128_u32[0] = 27;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
    v281 = *(a4 + 225) - 1;
    v282 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v281);
    *(v282 + 8) = v279;
    *(v282 + 16) = v273;
    v283 = re::EvaluationTree::extractScale(a4, v457);
    if ((*(v6 + 1) & *v6 & *(v6 + 2)) == (*(v6 + 1) | *v6 | *(v6 + 2)))
    {
      *v537 = xmmword_1E3047670;
      v518.n128_u32[0] = 7;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v518.n128_u64[0] = *(a4 + 245) - 1;
      re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
      re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v537);
      v284 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
      v518.n128_u32[0] = 25;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v285 = *(a4 + 245) - 1;
      v286 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v285);
      *(v286 + 8) = v284;
      *(v286 + 16) = v283;
      *v489 = xmmword_1E3047680;
      v518.n128_u32[0] = 7;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v518.n128_u64[0] = *(a4 + 245) - 1;
      re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
      re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v489);
      v287 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
      v518.n128_u32[0] = 25;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v288 = *(a4 + 245) - 1;
      v289 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v288);
      *(v289 + 8) = v287;
      *(v289 + 16) = v283;
      v488[0] = xmmword_1E30476A0;
      v518.n128_u32[0] = 7;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v518.n128_u64[0] = *(a4 + 245) - 1;
      re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
      re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v488);
      v290 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
      v518.n128_u32[0] = 25;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      Rotation = *(a4 + 245) - 1;
      v291 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
      *(v291 + 8) = v290;
      *(v291 + 16) = v283;
      v518.n128_u32[0] = 38;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
      v292 = *(a4 + 225) - 1;
      v293 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v292);
      v293[1] = v285;
      v293[2] = v288;
      v293[3] = Rotation;
      v518.n128_u32[0] = 27;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
      v294 = *(a4 + 225) - 1;
      v295 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v294);
      *(v295 + 8) = v281;
      *(v295 + 16) = v292;
    }

    else
    {
      v518.n128_u32[0] = 1;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v518);
      v518.n128_u64[0] = *(a4 + 215) - 1;
      re::DynamicArray<unsigned long>::add(a4 + 6, &v518);
      re::DynamicArray<int>::add(a4 + 46, v489);
      v296 = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
      v297 = re::EvaluationTree::extractRotation(a4, v457);
      v518.n128_u32[0] = 35;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
      v298 = *(a4 + 235) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v298) + 8) = v281;
      v518.n128_u32[0] = 14;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v299 = *(a4 + 245) - 1;
      v300 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v299);
      *(v300 + 8) = v297;
      *(v300 + 16) = v296;
      v518.n128_u32[0] = 14;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v301 = *(a4 + 245) - 1;
      v302 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v301);
      *(v302 + 8) = v298;
      *(v302 + 16) = v296;
      if (*v6)
      {
        *&v303 = 1.0;
      }

      else
      {
        *&v303 = 0.0;
      }

      if (*(v6 + 1))
      {
        v304 = 1.0;
      }

      else
      {
        v304 = 0.0;
      }

      if (*(v6 + 2))
      {
        v305 = 1.0;
      }

      else
      {
        v305 = 0.0;
      }

      *(&v303 + 1) = v304;
      *(&v303 + 2) = v305;
      *v537 = v303;
      v518.n128_u32[0] = 7;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v518.n128_u64[0] = *(a4 + 245) - 1;
      re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
      re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v537);
      v306 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
      v518.n128_u32[0] = 10;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      Rotation = *(a4 + 245) - 1;
      v307 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
      v307[1] = v299;
      v307[2] = v301;
      v307[3] = v306;
      v518.n128_u32[0] = 13;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
      v308 = *(a4 + 235) - 1;
      v309 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v308);
      *(v309 + 8) = Rotation;
      *(v309 + 16) = v296;
      v518.n128_u32[0] = 39;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
      v294 = *(a4 + 225) - 1;
      v310 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v294);
      *(v310 + 8) = v283;
      *(v310 + 16) = v308;
    }

    i = v466;
    v518.n128_u32[0] = 40;
    v519 = 0uLL;
    v518.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
    v7 = *(a4 + 230) - 1;
    v311 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v7);
    *(v311 + 8) = v294;
    *(v311 + 16) = v447;
    v12 = a1;
LABEL_459:
    v118 = v454;
    goto LABEL_460;
  }

  if (v121 != 5)
  {
    goto LABEL_894;
  }

  Rotation = *(v12 + 728);
  if (Rotation <= v11)
  {
    goto LABEL_754;
  }

  v122 = (*(v12 + 744) + 24 * v11);
  memset(v564, 0, 24);
  v123 = *v122;
  v124 = &(&re::kEvaluationCommandDescriptions)[2 * v123];
  i = *(v124 + 9);
  if (!*(v124 + 9))
  {
    goto LABEL_317;
  }

  v6 = 0;
  while (2)
  {
    v11 = v6 + *(v122 + 1);
    Rotation = *(v12 + 688);
    if (Rotation <= v11)
    {
      v540 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v389 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 797;
      *&v537[18] = 2048;
      *&v537[20] = v11;
      v538 = 2048;
      *v539 = Rotation;
      _os_log_send_and_compose_impl();
      v388 = _os_crash_msg();
      __break(1u);
      goto LABEL_537;
    }

    v125 = (*(v12 + 704) + 16 * v11);
    v126 = *v125;
    if (v126 == 3)
    {
      v18 = *(v125 + 1);
      Rotation = *(v12 + 648);
      if (Rotation > v18)
      {
        v138 = (*(v12 + 664) + 16 * v18);
        v139 = *v138;
        if (*v138 > 3u)
        {
          if (*v138 > 5u)
          {
            if (v139 == 6)
            {
              v11 = *(v138 + 1);
              Rotation = *(&v476 + 1);
              if (*(&v476 + 1) <= v11)
              {
                goto LABEL_762;
              }

              v140 = v477;
            }

            else
            {
              if (v139 != 7)
              {
                goto LABEL_896;
              }

              v11 = *(v138 + 1);
              Rotation = v478;
              if (v478 <= v11)
              {
                goto LABEL_761;
              }

              v140 = *(&v478 + 1);
            }
          }

          else if (v139 == 4)
          {
            v11 = *(v138 + 1);
            Rotation = *(&v473 + 1);
            if (*(&v473 + 1) <= v11)
            {
              goto LABEL_766;
            }

            v140 = v474;
          }

          else
          {
            if (v139 != 5)
            {
              goto LABEL_896;
            }

            v11 = *(v138 + 1);
            Rotation = v475;
            if (v475 <= v11)
            {
              goto LABEL_771;
            }

            v140 = *(&v475 + 1);
          }
        }

        else if (*v138 > 1u)
        {
          if (v139 == 2)
          {
            v11 = *(v138 + 1);
            Rotation = *(&v470 + 1);
            if (*(&v470 + 1) <= v11)
            {
              goto LABEL_773;
            }

            v140 = v471;
          }

          else
          {
            if (v139 != 3)
            {
              goto LABEL_896;
            }

            v11 = *(v138 + 1);
            Rotation = v472;
            if (v472 <= v11)
            {
              goto LABEL_763;
            }

            v140 = *(&v472 + 1);
          }
        }

        else if (*v138)
        {
          v11 = *(v138 + 1);
          Rotation = v469;
          if (v469 <= v11)
          {
            goto LABEL_774;
          }

          v140 = *(&v469 + 1);
        }

        else
        {
          v11 = *(v138 + 1);
          Rotation = *(&v467 + 1);
          if (*(&v467 + 1) <= v11)
          {
            goto LABEL_765;
          }

          v140 = v468;
        }

        v135 = *(v140 + 8 * v11);
LABEL_314:
        *&v564[8 * v6] = v135;
        goto LABEL_315;
      }

      v540 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 797;
      *&v537[18] = 2048;
      *&v537[20] = v18;
      v538 = 2048;
      *v539 = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_690:
      v540 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 797;
      *&v537[18] = 2048;
      *&v537[20] = v18;
      v538 = 2048;
      *v539 = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_691:
      v540 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 797;
      *&v537[18] = 2048;
      *&v537[20] = v18;
      v538 = 2048;
      *v539 = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_692:
      v540 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 797;
      *&v537[18] = 2048;
      *&v537[20] = v18;
      v538 = 2048;
      *v539 = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_693:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 797;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v18;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_694:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v9;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_695:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v51 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v12;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_696:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v11 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 789;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v12;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v51;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_697:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v9;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_698:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = Rotation;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_699:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 789;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_700:
      *v564 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 797;
      *&v537[18] = 2048;
      *&v537[20] = v11;
      v538 = 2048;
      *v539 = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_701:
      *v564 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 797;
      *&v537[18] = 2048;
      *&v537[20] = i;
      v538 = 2048;
      *v539 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_702:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 797;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_703:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v69 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 797;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v11;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_704:
      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 797;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v69;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = i;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_705:
      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v69;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_706:
      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v11 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 797;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v69;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = i;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_707:
      v488[0].n128_u64[0] = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v128 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 797;
      *&v537[18] = 2048;
      *&v537[20] = v11;
      v538 = 2048;
      *v539 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_708:
      v540 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 468;
      *&v537[18] = 2048;
      *&v537[20] = v128;
      v538 = 2048;
      *v539 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_709:
      v540 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 468;
      *&v537[18] = 2048;
      *&v537[20] = v7;
      v538 = 2048;
      *v539 = v128;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_710:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v9;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_711:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 789;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = Rotation;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_712:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v9;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_713:
      *&v467 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v69 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 789;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = Rotation;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_714:
      *v537 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v69;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v466;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_715:
      v540 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 468;
      *&v537[18] = 2048;
      *&v537[20] = v18;
      v538 = 2048;
      *v539 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_716:
      v482 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 797;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = i;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_717:
      v482 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 797;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = i;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_718:
      v482 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = Rotation;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = v12;
      v441 = 38;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_719;
    }

    if (v126 == 2)
    {
      v18 = *(v125 + 1);
      Rotation = *(v12 + 544);
      if (Rotation <= v18)
      {
        goto LABEL_690;
      }

      v133 = (*(v12 + 560) + 16 * v18);
      v134 = *v133;
      if (*v133 > 3u)
      {
        if (*v133 > 5u)
        {
          if (v134 == 6)
          {
            v11 = *(v133 + 1);
            Rotation = *(&v515 + 1);
            if (*(&v515 + 1) <= v11)
            {
              goto LABEL_775;
            }

            v135 = *(v516 + 8 * v11);
            if (v135 == -1)
            {
              Rotation = *(v12 + 464);
              if (Rotation <= v11)
              {
                goto LABEL_823;
              }

              v167 = *(v12 + 480);
              v518.n128_u32[0] = 6;
              v168 = (v167 + 8 * v11);
              v519 = 0uLL;
              v518.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1904), &v518);
              v518.n128_u64[0] = *(a4 + 240) - 1;
              re::DynamicArray<unsigned long>::add(a4 + 31, &v518);
              re::DynamicArray<unsigned long>::add(a4 + 71, v168);
              Rotation = *(&v515 + 1);
              if (*(&v515 + 1) <= v11)
              {
                goto LABEL_832;
              }

              v135 = *(*(a4 + 35) + 8 * *(a4 + 33) - 8);
              *(v516 + 8 * v11) = v135;
              Rotation = *(&v515 + 1);
            }

            if (Rotation <= v11)
            {
              goto LABEL_778;
            }
          }

          else
          {
            if (v134 != 7)
            {
              goto LABEL_895;
            }

            v11 = *(v133 + 1);
            Rotation = v517;
            if (v517 <= v11)
            {
              goto LABEL_776;
            }

            v135 = *(*(&v517 + 1) + 8 * v11);
            if (v135 == -1)
            {
              Rotation = *(v12 + 504);
              if (Rotation <= v11)
              {
                goto LABEL_822;
              }

              v149 = *(v12 + 520);
              v518.n128_u32[0] = 7;
              v150 = (v149 + 16 * v11);
              v519 = 0uLL;
              v518.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
              v518.n128_u64[0] = *(a4 + 245) - 1;
              re::DynamicArray<unsigned long>::add(a4 + 36, &v518);
              re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v150);
              Rotation = v517;
              if (v517 <= v11)
              {
                goto LABEL_831;
              }

              v135 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
              *(*(&v517 + 1) + 8 * v11) = v135;
              Rotation = v517;
            }

            if (Rotation <= v11)
            {
              goto LABEL_781;
            }
          }
        }

        else if (v134 == 4)
        {
          v11 = *(v133 + 1);
          Rotation = *(&v512 + 1);
          if (*(&v512 + 1) <= v11)
          {
            goto LABEL_769;
          }

          v135 = *(v513 + 8 * v11);
          if (v135 == -1)
          {
            Rotation = *(v12 + 384);
            if (Rotation <= v11)
            {
              goto LABEL_820;
            }

            v163 = *(v12 + 400);
            v518.n128_u32[0] = 4;
            v164 = v163 + (v11 << 6);
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
            v518.n128_u64[0] = *(a4 + 230) - 1;
            re::DynamicArray<unsigned long>::add(a4 + 21, &v518);
            re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 488), v164);
            Rotation = *(&v512 + 1);
            if (*(&v512 + 1) <= v11)
            {
              goto LABEL_828;
            }

            v135 = *(*(a4 + 25) + 8 * *(a4 + 23) - 8);
            *(v513 + 8 * v11) = v135;
            Rotation = *(&v512 + 1);
          }

          if (Rotation <= v11)
          {
            goto LABEL_783;
          }
        }

        else
        {
          if (v134 != 5)
          {
            goto LABEL_895;
          }

          v11 = *(v133 + 1);
          Rotation = v514;
          if (v514 <= v11)
          {
            goto LABEL_770;
          }

          v135 = *(*(&v514 + 1) + 8 * v11);
          if (v135 == -1)
          {
            Rotation = *(v12 + 424);
            if (Rotation <= v11)
            {
              goto LABEL_821;
            }

            v141 = *(v12 + 440);
            v518.n128_u32[0] = 5;
            v142 = (v141 + 16 * v11);
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
            v518.n128_u64[0] = *(a4 + 235) - 1;
            re::DynamicArray<unsigned long>::add(a4 + 26, &v518);
            re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v142);
            Rotation = v514;
            if (v514 <= v11)
            {
              goto LABEL_829;
            }

            v135 = *(*(a4 + 30) + 8 * *(a4 + 28) - 8);
            *(*(&v514 + 1) + 8 * v11) = v135;
            Rotation = v514;
          }

          if (Rotation <= v11)
          {
            goto LABEL_777;
          }
        }
      }

      else if (*v133 > 1u)
      {
        if (v134 == 2)
        {
          v11 = *(v133 + 1);
          Rotation = *(&v509 + 1);
          if (*(&v509 + 1) <= v11)
          {
            goto LABEL_764;
          }

          v135 = *(v510 + 8 * v11);
          if (v135 == -1)
          {
            Rotation = *(v12 + 304);
            if (Rotation <= v11)
            {
              goto LABEL_826;
            }

            v165 = *(v12 + 320);
            v518.n128_u32[0] = 2;
            v166 = (v165 + 4 * v11);
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1744), &v518);
            v518.n128_u64[0] = *(a4 + 220) - 1;
            re::DynamicArray<unsigned long>::add(a4 + 11, &v518);
            re::DynamicArray<float>::add((a4 + 408), v166);
            Rotation = *(&v509 + 1);
            if (*(&v509 + 1) <= v11)
            {
              goto LABEL_834;
            }

            v135 = *(*(a4 + 15) + 8 * *(a4 + 13) - 8);
            *(v510 + 8 * v11) = v135;
            Rotation = *(&v509 + 1);
          }

          if (Rotation <= v11)
          {
            goto LABEL_784;
          }
        }

        else
        {
          if (v134 != 3)
          {
            goto LABEL_895;
          }

          v11 = *(v133 + 1);
          Rotation = v511;
          if (v511 <= v11)
          {
            goto LABEL_767;
          }

          v135 = *(*(&v511 + 1) + 8 * v11);
          if (v135 == -1)
          {
            Rotation = *(v12 + 344);
            if (Rotation <= v11)
            {
              goto LABEL_824;
            }

            v147 = *(v12 + 360);
            v518.n128_u32[0] = 3;
            v148 = v147 + 48 * v11;
            v519 = 0uLL;
            v518.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
            v518.n128_u64[0] = *(a4 + 225) - 1;
            re::DynamicArray<unsigned long>::add(a4 + 16, &v518);
            re::DynamicArray<re::Matrix3x3<float>>::add((a4 + 448), v148);
            Rotation = v511;
            if (v511 <= v11)
            {
              goto LABEL_835;
            }

            v135 = *(*(a4 + 20) + 8 * *(a4 + 18) - 8);
            *(*(&v511 + 1) + 8 * v11) = v135;
            Rotation = v511;
          }

          if (Rotation <= v11)
          {
            goto LABEL_779;
          }
        }
      }

      else if (*v133)
      {
        v11 = *(v133 + 1);
        Rotation = v508[2].n128_u64[0];
        if (v508[2].n128_u64[0] <= v11)
        {
          goto LABEL_768;
        }

        v135 = *(v508[2].n128_u64[1] + 8 * v11);
        if (v135 == -1)
        {
          Rotation = *(v12 + 264);
          if (Rotation <= v11)
          {
            goto LABEL_827;
          }

          v136 = *(v12 + 280);
          v518.n128_u32[0] = 1;
          v137 = (v136 + 4 * v11);
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v518);
          v518.n128_u64[0] = *(a4 + 215) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 6, &v518);
          re::DynamicArray<int>::add(a4 + 46, v137);
          Rotation = v508[2].n128_u64[0];
          if (v508[2].n128_u64[0] <= v11)
          {
            goto LABEL_833;
          }

          v135 = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
          *(v508[2].n128_u64[1] + 8 * v11) = v135;
          Rotation = v508[2].n128_u64[0];
        }

        if (Rotation <= v11)
        {
          goto LABEL_782;
        }
      }

      else
      {
        v11 = *(v133 + 1);
        Rotation = v508[0].n128_u64[1];
        if (v508[0].n128_u64[1] <= v11)
        {
          goto LABEL_772;
        }

        v135 = *(v508[1].n128_u64[0] + 8 * v11);
        if (v135 == -1)
        {
          Rotation = *(v12 + 224);
          if (Rotation <= v11)
          {
            goto LABEL_825;
          }

          v161 = *(v12 + 240);
          v518.n128_u32[0] = 0;
          v162 = (v161 + 4 * v11);
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1664), &v518);
          v518.n128_u64[0] = *(a4 + 210) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 1, &v518);
          re::DynamicArray<int>::add(a4 + 41, v162);
          Rotation = v508[0].n128_u64[1];
          if (v508[0].n128_u64[1] <= v11)
          {
            goto LABEL_830;
          }

          v135 = *(*(a4 + 5) + 8 * *(a4 + 3) - 8);
          *(v508[1].n128_u64[0] + 8 * v11) = v135;
          Rotation = v508[0].n128_u64[1];
        }

        if (Rotation <= v11)
        {
          goto LABEL_780;
        }
      }

      goto LABEL_314;
    }

    if (v126 != 1)
    {
      goto LABEL_879;
    }

    v18 = *(v125 + 1);
    Rotation = *(v12 + 184);
    if (Rotation <= v18)
    {
      goto LABEL_691;
    }

    v127 = v12;
    v12 = *(v12 + 200) + 16 * v18;
    v18 = *(v12 + 8);
    Rotation = *(v127 + 1048);
    if (Rotation <= v18)
    {
      goto LABEL_692;
    }

    Rotation = *(v127 + 1064) + 56 * v18;
    v128 = *(Rotation + 32);
    v7 = v494;
    if (v128 == -1)
    {
      if (v494 <= v18)
      {
        goto LABEL_715;
      }

      v131 = *(v495 + 8 * v18);
    }

    else
    {
      if (v494 <= v128)
      {
        goto LABEL_708;
      }

      v129 = *(v495 + 8 * v128);
      v518.n128_u32[0] = 20;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
      v130 = *(a4 + 230) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v130) + 8) = v129;
      v7 = *(v12 + 8);
      v128 = v494;
      if (v494 <= v7)
      {
        goto LABEL_709;
      }

      v7 = *(v495 + 8 * v7);
      v518.n128_u32[0] = 28;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
      v131 = *(a4 + 230) - 1;
      v132 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v131);
      *(v132 + 8) = v130;
      *(v132 + 16) = v7;
    }

    v143 = *v12;
    if (v143 == 3)
    {
      v518.n128_u32[0] = 37;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
      v146 = *(a4 + 245) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v146) + 8) = v131;
      *&v564[8 * v6] = v146;
      v12 = a1;
    }

    else
    {
      v12 = a1;
      if (v143 == 2)
      {
        *&v564[8 * v6] = re::EvaluationTree::extractScale(a4, v131);
      }

      else
      {
        if (v143 != 1)
        {
          goto LABEL_892;
        }

        v144 = *(Rotation + 16);
        if (v144 == 2)
        {
          v11 = *(Rotation + 24);
          Rotation = a1[116];
          if (Rotation <= v11)
          {
            goto LABEL_750;
          }

          v151 = (a1[118] + 96 * v11);
          *v537 = v151[5].n128_u8[0];
          v450 = re::EvaluationTree::extractRotation(a4, v131);
          v518.n128_u32[0] = 5;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v518.n128_u64[0] = *(a4 + 235) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 26, &v518);
          re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v151 + 1);
          v152 = *(*(a4 + 30) + 8 * *(a4 + 28) - 8);
          v518.n128_u32[0] = 18;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v153 = *(a4 + 235) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v153) + 8) = v152;
          v518.n128_u32[0] = 5;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v518.n128_u64[0] = *(a4 + 235) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 26, &v518);
          re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v151 + 3);
          v154 = *(*(a4 + 30) + 8 * *(a4 + 28) - 8);
          v518.n128_u32[0] = 18;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v155 = *(a4 + 235) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v155) + 8) = v154;
          v12 = a1;
          v518.n128_u32[0] = 24;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v7 = *(a4 + 235) - 1;
          v156 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v7);
          *(v156 + 8) = v153;
          *(v156 + 16) = v450;
          v518.n128_u32[0] = 24;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v145 = *(a4 + 235) - 1;
          v157 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v145);
          *(v157 + 8) = v7;
          *(v157 + 16) = v155;
        }

        else
        {
          if (v144 != 1)
          {
            goto LABEL_893;
          }

          v11 = *(Rotation + 24);
          Rotation = a1[111];
          if (Rotation <= v11)
          {
            goto LABEL_751;
          }

          *v537 = *(a1[113] + (v11 << 6) + 48);
          v145 = re::EvaluationTree::extractRotation(a4, v131);
        }

        v518.n128_u32[0] = 1;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v518);
        v518.n128_u64[0] = *(a4 + 215) - 1;
        re::DynamicArray<unsigned long>::add(a4 + 6, &v518);
        re::DynamicArray<int>::add(a4 + 46, v537);
        v158 = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
        v518.n128_u32[0] = 14;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
        v159 = *(a4 + 245) - 1;
        v160 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v159);
        *(v160 + 8) = v145;
        *(v160 + 16) = v158;
        *&v564[8 * v6] = v159;
      }
    }

LABEL_315:
    if (i != ++v6)
    {
      continue;
    }

    break;
  }

  v123 = *v122;
  v6 = v464;
LABEL_317:
  appended = re::EvaluationTree::appendEvaluationCommand(a4, v123, v564, i);
  v11 = *(v122 + 2);
  Rotation = *(v12 + 688);
  if (Rotation <= v11)
  {
    goto LABEL_760;
  }

  i = appended;
  v170 = (*(v12 + 704) + 16 * v11);
  v171 = *v170;
  if (v171 == 1)
  {
    v11 = *(v170 + 1);
    Rotation = *(v12 + 184);
    v7 = v454;
    v231 = v457;
    if (Rotation <= v11)
    {
      goto LABEL_799;
    }

    Rotation = *(v12 + 200) + 16 * v11;
    v11 = *(Rotation + 8);
    v232 = v12;
    v12 = *(v12 + 1048);
    if (v12 <= v11)
    {
      goto LABEL_800;
    }

    v6 = *(v232 + 1064) + 56 * v11;
    v11 = *(v6 + 32);
    if (v11 == -1)
    {
      v12 = v232;
    }

    else
    {
      v12 = v494;
      if (v494 <= v11)
      {
        goto LABEL_818;
      }

      v233 = *(v495 + 8 * v11);
      v518.n128_u32[0] = 20;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
      v234 = *(a4 + 230) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v234) + 8) = v233;
      v518.n128_u32[0] = 28;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
      v235 = *(a4 + 230) - 1;
      v236 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v235);
      *(v236 + 8) = v234;
      *(v236 + 16) = v457;
      v231 = v235;
      v12 = a1;
    }

    v313 = *Rotation;
    if (v313 == 3)
    {
      v518.n128_u32[0] = 34;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v518);
      v324 = *(a4 + 225) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v324) + 8) = v231;
      v518.n128_u32[0] = 40;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
      v172 = *(a4 + 230) - 1;
      v325 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v172);
      *(v325 + 8) = v324;
      *(v325 + 16) = i;
    }

    else
    {
      if (v313 == 2)
      {
        v318 = re::EvaluationTree::extractRotation(a4, v231);
        v518.n128_u32[0] = 37;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
        v319 = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v319) + 8) = v231;
        v320 = a4;
        v321 = i;
        v322 = v318;
        v323 = v319;
      }

      else
      {
        if (v313 != 1)
        {
          re::internal::assertLog(4, v117, "assertion failure: '%s' (%s:line %i) Unexpected node channel type.", "!Unreachable code", "constructEvaluationCommands", 1545);
          _os_crash();
          __break(1u);
LABEL_900:
          re::internal::assertLog(4, v117, "assertion failure: '%s' (%s:line %i) Invalid parameter rig node type.", "!Unreachable code", "constructEvaluationCommands", 1522);
          _os_crash();
          __break(1u);
          goto LABEL_901;
        }

        v314 = *(v6 + 16);
        if (v314 == 2)
        {
          v11 = *(v6 + 24);
          Rotation = *(v12 + 928);
          if (Rotation <= v11)
          {
            goto LABEL_854;
          }

          v362 = (*(v12 + 944) + 96 * v11);
          *v537 = v362[5].n128_u8[0];
          v518.n128_u32[0] = 5;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v518.n128_u64[0] = *(a4 + 235) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 26, &v518);
          re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v362 + 1);
          v363 = *(*(a4 + 30) + 8 * *(a4 + 28) - 8);
          v518.n128_u32[0] = 5;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v518.n128_u64[0] = *(a4 + 235) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 26, &v518);
          re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v362 + 3);
          v364 = *(*(a4 + 30) + 8 * *(a4 + 28) - 8);
          v518.n128_u32[0] = 1;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v518);
          v518.n128_u64[0] = *(a4 + 215) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 6, &v518);
          re::DynamicArray<int>::add(a4 + 46, v537);
          v365 = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
          v518.n128_u32[0] = 13;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v366 = *(a4 + 235) - 1;
          v367 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v366);
          *(v367 + 8) = i;
          *(v367 + 16) = v365;
          v518.n128_u32[0] = 24;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v368 = *(a4 + 235) - 1;
          v369 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v368);
          *(v369 + 8) = v363;
          *(v369 + 16) = v366;
          v518.n128_u32[0] = 24;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v316 = *(a4 + 235) - 1;
          v370 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v316);
          *(v370 + 8) = v368;
          *(v370 + 16) = v364;
          v12 = a1;
        }

        else
        {
          if (v314 != 1)
          {
            goto LABEL_900;
          }

          v11 = *(v6 + 24);
          Rotation = *(v12 + 888);
          if (Rotation <= v11)
          {
            goto LABEL_855;
          }

          *v537 = *(*(v12 + 904) + (v11 << 6) + 48);
          v518.n128_u32[0] = 1;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v518);
          v518.n128_u64[0] = *(a4 + 215) - 1;
          re::DynamicArray<unsigned long>::add(a4 + 6, &v518);
          re::DynamicArray<int>::add(a4 + 46, v537);
          v315 = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
          v518.n128_u32[0] = 13;
          v519 = 0uLL;
          v518.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v518);
          v316 = *(a4 + 235) - 1;
          v317 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v316);
          *(v317 + 8) = i;
          *(v317 + 16) = v315;
        }

        v371 = re::EvaluationTree::extractScale(a4, v231);
        v518.n128_u32[0] = 37;
        v519 = 0uLL;
        v518.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v518);
        Rotation = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation) + 8) = v231;
        v320 = a4;
        v321 = v371;
        v322 = v316;
        v323 = Rotation;
      }

      v172 = re::EvaluationTree::constructMatrix4x4(v320, v321, v322, v323);
    }

    i = v466;
    v11 = *(v6 + 32);
    if (v11 == -1)
    {
      v118 = v454;
      v6 = v464;
    }

    else
    {
      Rotation = v494;
      v6 = v464;
      if (v494 <= v11)
      {
        goto LABEL_819;
      }

      v372 = *(v495 + 8 * v11);
      v518.n128_u32[0] = 28;
      v519 = 0uLL;
      v518.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v518);
      v373 = *(a4 + 230) - 1;
      v374 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v373);
      *(v374 + 8) = v372;
      *(v374 + 16) = v172;
      v172 = v373;
      v118 = v454;
    }

    goto LABEL_500;
  }

  v118 = v454;
  v172 = v457;
  if (v171 != 3)
  {
    goto LABEL_897;
  }

  v11 = *(v170 + 1);
  Rotation = *(v12 + 648);
  if (Rotation <= v11)
  {
    goto LABEL_798;
  }

  v173 = (*(v12 + 664) + 16 * v11);
  v174 = *v173;
  if (*v173 > 3u)
  {
    if (*v173 > 5u)
    {
      if (v174 != 6)
      {
        if (v174 != 7)
        {
          goto LABEL_901;
        }

        v11 = *(v173 + 1);
        Rotation = v478;
        if (v478 > v11)
        {
          v175 = *(&v478 + 1);
          goto LABEL_499;
        }

        goto LABEL_857;
      }

      v11 = *(v173 + 1);
      Rotation = *(&v476 + 1);
      if (*(&v476 + 1) <= v11)
      {
        goto LABEL_858;
      }

      v175 = v477;
    }

    else if (v174 == 4)
    {
      v11 = *(v173 + 1);
      Rotation = *(&v473 + 1);
      if (*(&v473 + 1) <= v11)
      {
        goto LABEL_863;
      }

      v175 = v474;
    }

    else
    {
      if (v174 != 5)
      {
        goto LABEL_901;
      }

      v11 = *(v173 + 1);
      Rotation = v475;
      if (v475 <= v11)
      {
        goto LABEL_864;
      }

      v175 = *(&v475 + 1);
    }

    goto LABEL_499;
  }

  if (*v173 <= 1u)
  {
    if (*v173)
    {
      v11 = *(v173 + 1);
      Rotation = v469;
      if (v469 > v11)
      {
        v175 = *(&v469 + 1);
        goto LABEL_499;
      }

LABEL_862:
      v540 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 468;
      *&v537[18] = 2048;
      *&v537[20] = v11;
      v538 = 2048;
      *v539 = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_863:
      v540 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 468;
      *&v537[18] = 2048;
      *&v537[20] = v11;
      v538 = 2048;
      *v539 = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_864:
      v540 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v537 = 136315906;
      *&v537[4] = "operator[]";
      *&v537[12] = 1024;
      *&v537[14] = 468;
      *&v537[18] = 2048;
      *&v537[20] = v11;
      v538 = 2048;
      *v539 = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_865:
      *v564 = 0;
      v521 = 0u;
      v522 = 0u;
      v519 = 0u;
      v520 = 0u;
      v518 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v508[0].n128_u32[0] = 136315906;
      *(v508[0].n128_u64 + 4) = "operator[]";
      v508[0].n128_u16[6] = 1024;
      *(&v508[0].n128_u32[3] + 2) = 468;
      v508[1].n128_u16[1] = 2048;
      *(v508[1].n128_u64 + 4) = v12;
      v508[1].n128_u16[6] = 2048;
      *(&v508[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_866;
    }

    v11 = *(v173 + 1);
    Rotation = *(&v467 + 1);
    if (*(&v467 + 1) > v11)
    {
      v175 = v468;
      goto LABEL_499;
    }

LABEL_859:
    v540 = 0;
    v521 = 0u;
    v522 = 0u;
    v519 = 0u;
    v520 = 0u;
    v518 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v537 = 136315906;
    *&v537[4] = "operator[]";
    *&v537[12] = 1024;
    *&v537[14] = 468;
    *&v537[18] = 2048;
    *&v537[20] = v11;
    v538 = 2048;
    *v539 = Rotation;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_860:
    v540 = 0;
    v521 = 0u;
    v522 = 0u;
    v519 = 0u;
    v520 = 0u;
    v518 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v537 = 136315906;
    *&v537[4] = "operator[]";
    *&v537[12] = 1024;
    *&v537[14] = 468;
    *&v537[18] = 2048;
    *&v537[20] = v11;
    v538 = 2048;
    *v539 = Rotation;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_861:
    v540 = 0;
    v521 = 0u;
    v522 = 0u;
    v519 = 0u;
    v520 = 0u;
    v518 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v537 = 136315906;
    *&v537[4] = "operator[]";
    *&v537[12] = 1024;
    *&v537[14] = 468;
    *&v537[18] = 2048;
    *&v537[20] = v11;
    v538 = 2048;
    *v539 = Rotation;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_862;
  }

  if (v174 == 2)
  {
    v11 = *(v173 + 1);
    Rotation = *(&v470 + 1);
    if (*(&v470 + 1) <= v11)
    {
      goto LABEL_861;
    }

    v175 = v471;
LABEL_499:
    *(v175 + 8 * v11) = appended;
    i = v466;
LABEL_500:
    v7 = v172;
    goto LABEL_501;
  }

  if (v174 == 3)
  {
    v11 = *(v173 + 1);
    Rotation = v472;
    if (v472 > v11)
    {
      v175 = *(&v472 + 1);
      goto LABEL_499;
    }

    goto LABEL_860;
  }

LABEL_901:
  re::internal::assertLog(5, v117, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "constructEvaluationCommands", 1562, v174);
  _os_crash();
  __break(1u);
LABEL_902:
  re::internal::assertLog(5, v84, "assertion failure: '%s' (%s:line %i) Unknown Rig IK handle type: %u.", "!Unreachable code", "constructEvaluationCommands", 936, v87);
  _os_crash();
  __break(1u);
}
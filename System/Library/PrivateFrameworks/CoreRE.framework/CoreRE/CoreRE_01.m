uint64_t re::internal::AnimationCompositionChain<re::Vector2<float>>::apply(float32x2_t *a1)
{
  result = re::BindPoint::isAlive(&a1[1]);
  if (result)
  {
    if (a1[9])
    {

      return re::BindPoint::setValue<re::Vector2<float>>(&a1[1], a1 + 16);
    }

    else
    {
      if (a1[13].i8[0] == 1)
      {
        if (re::BindPoint::isOverridden(&a1[1]))
        {
          v3 = re::BindPoint::overrideValueUntyped(&a1[1]);
          v4 = re::BindPoint::baseValueUntyped(&a1[1]);
          if (v4)
          {
            *v4 = *v3;
            re::BindPoint::markAsWritten(&a1[1]);
          }
        }
      }

      return re::BindPoint::setIsOverridden(&a1[1], 0);
    }
  }

  return result;
}

uint64_t re::BindPoint::setValue<re::Vector2<float>>(uint64_t result, float32x2_t *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(result + 24);
  if (!v2)
  {
    return result;
  }

  v4 = result;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  v29 = 0;
  v30 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v26, v2);
  v5 = 0;
  v6 = 0;
  v7 = *(v4 + 3);
  v8 = v27;
  do
  {
    if (v7 == v6)
    {
      v31 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      v35 = 797;
      v36 = 2048;
      v37 = v7;
      v38 = 2048;
      v39 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v31 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      v35 = 858;
      v36 = 2048;
      v37 = v8;
      v38 = 2048;
      v39 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_33;
    }

    v9 = (*(v4 + 5) + v5);
    if (!*v9)
    {
      v9 = v9[2];
    }

    if (v8 == v6)
    {
      goto LABEL_32;
    }

    if (v28)
    {
      v10 = &v29;
    }

    else
    {
      v10 = v30;
    }

    v10[v6++] = v9;
    v5 += 32;
  }

  while (v2 != v6);
  if (!v8)
  {
LABEL_33:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    v35 = 858;
    v36 = 2048;
    v37 = 0;
    v38 = 2048;
    v39 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  if (v28)
  {
    v11 = &v29;
  }

  else
  {
    v11 = v30;
  }

  v12 = *v11;
  v13 = v2 - 1;
  v14 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v26, 1uLL, v13);
  v16 = (*(*v12 + 120))(v12, 0, v14, v15);
  if (v16)
  {
    v17 = v16;
    if (!re::BindPoint::isOverridden(v4) || (v18 = vmvn_s8(vceq_f32(*v17, *a2)), (vpmax_u32(v18, v18).u32[0] & 0x80000000) != 0))
    {
      re::BindPoint::willSet(v4);
      *v17 = *a2;
      re::BindPoint::setIsOverridden(v4, 1);
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  if (!v27)
  {
LABEL_34:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    v35 = 858;
    v36 = 2048;
    v37 = 0;
    v38 = 2048;
    v39 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v28)
  {
    v19 = &v29;
  }

  else
  {
    v19 = v30;
  }

  v20 = *v19;
  v21 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v26, 1uLL, v13);
  v23 = (*(*v20 + 88))(v20, 0, v21, v22);
  if (v23)
  {
    v24 = v23;
    v25 = vmvn_s8(vceq_f32(*v23, *a2));
    if ((vpmax_u32(v25, v25).u32[0] & 0x80000000) != 0)
    {
      re::BindPoint::willSet(v4);
      *v24 = *a2;
LABEL_19:
      re::BindPoint::markAsWritten(v4);
    }
  }

LABEL_26:
  result = v26;
  if (v26)
  {
    if ((v28 & 1) == 0)
    {
      return (*(*v26 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Vector2<float>>::takeSnapshot(uint64_t result)
{
  v1 = result;
  if (*(result + 72))
  {
    if ((*(result + 112) & 1) == 0)
    {
      *(result + 112) = 1;
    }

    v2 = *(result + 128);
    goto LABEL_14;
  }

  if (re::BindPoint::supportsOverrideValue((result + 8)))
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 120) = 0;
    }

    result = re::BindPoint::baseValueUntyped((v1 + 8));
LABEL_13:
    v2 = *result;
LABEL_14:
    *(v1 + 120) = v2;
    return result;
  }

  result = re::BindPoint::isAlive((v1 + 8));
  if (result)
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 120) = 0;
    }

    result = re::BindPoint::valueUntyped((v1 + 8));
    goto LABEL_13;
  }

  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Vector3<float>>::~AnimationCompositionChain(uint64_t a1)
{
  *a1 = &unk_1F5CACD38;
  v2 = a1 + 56;
  if (*(a1 + 56))
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    re::DynamicArray<unsigned long>::deinit(a1 + 56);
  }

  *a1 = &unk_1F5CAD030;
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  return a1;
}

void re::internal::AnimationCompositionChain<re::Vector3<float>>::~AnimationCompositionChain(uint64_t a1)
{
  re::internal::AnimationCompositionChain<re::Vector3<float>>::~AnimationCompositionChain(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::AnimationCompositionChain<re::Vector3<float>>::init(uint64_t a1, void *a2)
{
  v2 = a1;
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<re::BindPoint::BindPointData>::operator=(a1 + 16, a2 + 1);
  v2 += 56;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v2, 0);
  ++*(v2 + 24);

  return re::BindPoint::baseValueUntyped(v3);
}

uint64_t re::internal::AnimationCompositionChain<re::Vector3<float>>::deinit(uint64_t a1)
{
  v3 = *(a1 + 56);
  result = a1 + 56;
  if (v3)
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    return re::DynamicArray<unsigned long>::deinit(result);
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Vector3<float>>::update(uint64_t result)
{
  v93 = *MEMORY[0x1E69E9840];
  v77 = *(result + 72);
  if (v77)
  {
    v5 = result;
    result = re::BindPoint::isAlive((result + 8));
    if (result)
    {
      v6 = re::BindPoint::supportsOverrideValue((v5 + 1));
      v84[0] = 0;
      v84[1] = 0;
      v85 = 0;
      v70 = v6;
      if (v6)
      {
        v6 = re::BindPoint::baseValueUntyped((v5 + 1));
        v69 = v6;
      }

      else
      {
        v85 = 1;
        v69 = v84;
      }

      if (*(v5 + 112) == 1)
      {
        v7 = *(v5 + 8);
      }

      else
      {
        v7 = *v69;
      }

      *(v5 + 9) = v7;
      v8 = re::animationLogObjects(v6);
      result = re::AnimationLogObjects::loggingEnabled(v8);
      if (result)
      {
LABEL_111:
        v2 = *re::animationLogObjects(result);
        result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v61 = re::BindPoint::overrideValueUntyped((v5 + 1));
          *buf = 134217984;
          *&buf[4] = v61;
          _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "ANIM: -------------- Target: %p -----------------\n", buf, 0xCu);
        }
      }

      v82 = 0u;
      v83 = 0u;
      v74 = 0u;
      if (v5[9])
      {
        v1 = 0;
        v4 = 0;
        v9 = 0;
        v10 = *(v5[11] + 16);
        v2 = (v5 + 18);
        v79 = v69;
        v80 = 0;
        v81 = 0;
        v68 = 136315138;
        v71 = v70;
        v75 = (v5 + 18);
        v76 = v5;
        while (1)
        {
          v11 = v5[9];
          if (v11 <= v4)
          {
            v78[0] = 0;
            v92 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v86 = 136315906;
            *&v86[4] = "operator[]";
            *&v86[12] = 1024;
            *&v86[14] = 789;
            v87 = 2048;
            v88 = v4;
            v89 = 2048;
            v90 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_106:
            re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_107:
            v78[0] = 0;
            v92 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v86 = 136315906;
            *&v86[4] = "operator[]";
            *&v86[12] = 1024;
            *&v86[14] = 476;
            v87 = 2048;
            v88 = v9;
            v89 = 2048;
            v90 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_108:
            v78[0] = 0;
            v92 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v86 = 136315906;
            *&v86[4] = "operator[]";
            *&v86[12] = 1024;
            *&v86[14] = 789;
            v87 = 2048;
            v88 = v4;
            v89 = 2048;
            v90 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_109:
            v78[0] = 0;
            v92 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v86 = 136315906;
            *&v86[4] = "operator[]";
            *&v86[12] = 1024;
            *&v86[14] = 789;
            v87 = 2048;
            v88 = v4;
            v89 = 2048;
            v90 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_110:
            v78[0] = 0;
            v92 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v86 = 136315906;
            *&v86[4] = "operator[]";
            *&v86[12] = 1024;
            *&v86[14] = 789;
            v87 = 2048;
            v88 = v4;
            v89 = 2048;
            v90 = v2;
            _os_log_send_and_compose_impl();
            result = _os_crash_msg();
            __break(1u);
            goto LABEL_111;
          }

          v12 = v5[11] + v1;
          v13 = v10 != *(v12 + 16);
          v10 = *(v12 + 16);
          if ((v13 & v9) == 1)
          {
            v9 = 0;
            *&v2->isa = vaddq_f32(v74, *&v2->isa);
            v10 = *(v12 + 16);
          }

          v3 = *v12;
          v14 = *(v12 + 8);
          v15 = re::animationLogObjects(result);
          v16 = re::AnimationLogObjects::loggingEnabled(v15);
          if (v16)
          {
            v37 = *re::animationLogObjects(v16);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v3 + 48))
              {
                v38 = *(v3 + 56);
              }

              else
              {
                v38 = v3 + 49;
              }

              *buf = 134218754;
              *&buf[4] = v4;
              *&buf[12] = 2048;
              *&buf[14] = v3;
              *&buf[22] = 1024;
              *&buf[24] = v14;
              *&buf[28] = 2080;
              *&buf[30] = v38;
              _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "ANIM: #%zu: %p(%d) %s\n", buf, 0x26u);
            }
          }

          ClocksOfSubtree = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, v14);
          if (!v18)
          {
            goto LABEL_106;
          }

          v19 = ClocksOfSubtree;
          v20 = v18;
          v5 = v9;
          v9 = v14;
          result = re::internal::TimelineTree::source(v3, v14);
          v21 = result;
          if ((v19[16] & 1) == 0)
          {
            v30 = re::animationLogObjects(result);
            v31 = re::AnimationLogObjects::loggingEnabled(v30);
            if (v31)
            {
              loga = *re::animationLogObjects(v31);
              if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
              {
                v39 = *(re::internal::TimelineTree::source(v3, v9) + 32);
                if (*v19 == 2)
                {
                  v40 = "Delayed";
                }

                else
                {
                  v40 = "Completed";
                }

                *v86 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
                *&v86[8] = v41;
                v42 = re::Slice<re::AnimationClock>::operator[](v86, 0);
                if (*(v42 + 16))
                {
                  v43 = *(v42 + 24);
                }

                else
                {
                  v43 = 0;
                }

                *buf = 136315650;
                *&buf[4] = v39;
                v2 = v75;
                *&buf[12] = 2080;
                *&buf[14] = v40;
                *&buf[22] = 2048;
                *&buf[24] = v43;
                _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s skipped, %s. Root Time: %f\n", buf, 0x20u);
              }
            }

            result = (*(*v21 + 112))(v21, v19, v20, v2, &v79, v2);
LABEL_48:
            v9 = v5;
            v5 = v76;
            goto LABEL_49;
          }

          v2 = *(v3 + 208);
          if (v2 <= v9)
          {
            goto LABEL_107;
          }

          v22 = fabsf(*(*(v3 + 216) + 4 * v9));
          v2 = v75;
          if (v22 < 0.00001)
          {
            goto LABEL_48;
          }

          log = *(*(v3 + 216) + 4 * v9);
          v23 = re::animationLogObjects(result);
          v24 = re::AnimationLogObjects::loggingEnabled(v23);
          if (v24)
          {
            v44 = *re::animationLogObjects(v24);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v66 = *(v21 + 32);
              v65 = re::BindPoint::valueUntyped((v76 + 1));
              v67 = v44;
              if (v19[16] == 1)
              {
                v64 = *(v19 + 3);
              }

              else
              {
                v64 = 0;
              }

              v45 = re::internal::TimelineTree::source(v3, v9);
              v46 = (*(*v45 + 40))(v45);
              *v86 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
              *&v86[8] = v47;
              v48 = re::Slice<re::AnimationClock>::operator[](v86, 0);
              if (*(v48 + 16))
              {
                v49 = *(v48 + 24);
              }

              else
              {
                v49 = 0;
              }

              v78[0] = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
              v78[1] = v50;
              v51 = re::Slice<re::AnimationClock>::operator[](v78, 0);
              v52 = re::AnimationClock::clockStateToName(v51);
              v53 = *(v21 + 72);
              *buf = 136316674;
              *&buf[4] = v66;
              *&buf[12] = 2048;
              *&buf[14] = v65;
              *&buf[22] = 2048;
              *&buf[24] = v64;
              *&buf[32] = 2048;
              *&buf[34] = v46;
              *&buf[42] = 2048;
              *&buf[44] = v49;
              *&buf[52] = 2080;
              *&buf[54] = v52;
              *&buf[62] = 1024;
              LODWORD(v92) = v53;
              _os_log_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s, Target: %p, Clock %f / %f, Root Time: %f, ClockState: '%s', additive: %d\n", buf, 0x44u);
            }
          }

          v9 = v5;
          if (log != 1.0 && fabsf(log + -1.0) >= (((v22 + 1.0) + 1.0) * 0.00001))
          {
            v5 = v76;
            if ((v83 & 1) == 0)
            {
              LOBYTE(v83) = 1;
            }

            v32 = v75;
            if (v9)
            {
              v82 = vaddq_f32(v74, *v75);
              v32 = &v82;
            }

            v33 = v80;
            result = (*(*v21 + 112))(v21, v19, v20, v32, &v79, &v82);
            if (v80 != v33)
            {
              return (*(*v76 + 32))(v76);
            }

            if (*(v21 + 72))
            {
              v2 = v76[9];
              if (v2 <= v4)
              {
                goto LABEL_115;
              }

              if ((*(v76[11] + v1 + 20) & 4) == 0)
              {
                v2 = v75;
                v34 = vaddq_f32(v74, *v75);
                if (v9)
                {
                  v35 = -1;
                }

                else
                {
                  v35 = 0;
                }

                v36 = vbslq_s8(vdupq_n_s32(v35), v34, *v75);
                v82 = vaddq_f32(v82, v36);
                goto LABEL_67;
              }

              v2 = v75;
              v36 = *v75;
              v82 = vaddq_f32(v82, *v75);
              if ((v9 & 1) == 0)
              {
LABEL_67:
                v9 = 0;
                *&v2->isa = vmlaq_n_f32(vmulq_n_f32(v82, log), v36, 1.0 - log);
                goto LABEL_49;
              }
            }

            else
            {
              v2 = v75;
              v36 = *v75;
              if ((v9 & 1) == 0)
              {
                goto LABEL_67;
              }
            }

            v36 = vaddq_f32(v74, v36);
            goto LABEL_67;
          }

          v5 = v76;
          v2 = v76[9];
          if (v2 <= v4)
          {
            goto LABEL_108;
          }

          *(v76[11] + v1 + 20) &= ~4u;
          if ((*(v21 + 72) & 1) == 0)
          {
            v81 = 1;
            v2 = v75;
            result = (*(*v21 + 112))(v21, v19, v20, v75, &v79, v75);
            goto LABEL_49;
          }

          v2 = v75;
          if ((v83 & 1) == 0)
          {
            LOBYTE(v83) = 1;
          }

          v25 = v75;
          if (v9)
          {
            v82 = vaddq_f32(v74, *v75);
            v25 = &v82;
          }

          result = (*(*v21 + 112))(v21, v19, v20, v25, &v79, &v82);
          if (v70)
          {
            v2 = v76[9];
            if (v2 <= v4)
            {
              goto LABEL_109;
            }

            v2 = v75;
            if ((*(v76[11] + v1 + 20) & 1) != 0 && v19[32] == 1)
            {
              v56 = v82;
              *v75 = vnegq_f32(v82);
              *v75 = vsubq_f32(*v69, v56);
              v57 = re::animationLogObjects(result);
              v58 = re::AnimationLogObjects::loggingEnabled(v57);
              if (v58)
              {
                goto LABEL_116;
              }

              goto LABEL_101;
            }
          }

          v26 = vaddq_f32(v74, v82);
          if (v9)
          {
            v27 = -1;
          }

          else
          {
            v27 = 0;
          }

          v74 = vbslq_s8(vdupq_n_s32(v27), v26, v82);
          if ((v71 & 1) == 0)
          {
            v71 = 0;
            v9 = 1;
            goto LABEL_49;
          }

          v2 = v76[9];
          if (v2 <= v4)
          {
            goto LABEL_110;
          }

          v71 = 0;
          v9 = 1;
          if ((*(v76[11] + v1 + 20) & 2) == 0)
          {
            goto LABEL_45;
          }

          v2 = v75;
          if (*v19 == 5)
          {
            break;
          }

LABEL_49:
          ++v4;
          v1 += 24;
          if (v77 == v4)
          {
            if (v9)
            {
              *&v2->isa = vaddq_f32(v74, *&v2->isa);
            }

            return result;
          }
        }

        v28 = re::animationLogObjects(result);
        v29 = re::AnimationLogObjects::loggingEnabled(v28);
        if (v29)
        {
          v54 = *re::animationLogObjects(v29);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v3 + 48))
            {
              v55 = *(v3 + 56);
            }

            else
            {
              v55 = v3 + 49;
            }

            *buf = 136315138;
            *&buf[4] = v55;
            _os_log_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (last frame) value on last frame, from composition chain.\n", buf, 0xCu);
            v2 = v75;
            v5 = v76;
          }
        }

        *&v2->isa = vaddq_f32(v74, *&v2->isa);
        result = re::BindPoint::baseValueUntyped((v5 + 1));
        if (result)
        {
          *result = *&v2->isa;
          result = re::BindPoint::markAsWritten((v5 + 1));
        }

        v2 = v5[9];
        if (v2 <= v4)
        {
          goto LABEL_114;
        }

        v9 = 0;
        *(v5[11] + v1 + 20) &= ~2u;
        v71 = 1;
        *v19 = 1;
LABEL_45:
        v2 = v75;
        goto LABEL_49;
      }

      v79 = 0;
      v92 = 0uLL;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v86 = 136315906;
      *&v86[4] = "operator[]";
      *&v86[12] = 1024;
      *&v86[14] = 789;
      v87 = 2048;
      v88 = 0;
      v89 = 2048;
      v90 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_114:
      v78[0] = 0;
      v92 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v86 = 136315906;
      *&v86[4] = "operator[]";
      *&v86[12] = 1024;
      *&v86[14] = 789;
      v87 = 2048;
      v88 = v4;
      v89 = 2048;
      v90 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_115:
      v78[0] = 0;
      v92 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v86 = 136315906;
      *&v86[4] = "operator[]";
      *&v86[12] = 1024;
      *&v86[14] = 789;
      v87 = 2048;
      v88 = v4;
      v89 = 2048;
      v90 = v2;
      _os_log_send_and_compose_impl();
      v58 = _os_crash_msg();
      __break(1u);
LABEL_116:
      v62 = *re::animationLogObjects(v58);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 48))
        {
          v63 = *(v3 + 56);
        }

        else
        {
          v63 = v3 + 49;
        }

        *buf = v68;
        *&buf[4] = v63;
        _os_log_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (first frame) value from composition chain.\n", buf, 0xCu);
        v2 = v75;
      }

LABEL_101:
      v59 = re::BindPoint::baseValueUntyped((v76 + 1));
      if (v59)
      {
        *v59 = *&v2->isa;
        re::BindPoint::markAsWritten((v76 + 1));
      }

      v60 = v76[9];
      if (v60 <= v4)
      {
        v78[0] = 0;
        v92 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v86 = 136315906;
        *&v86[4] = "operator[]";
        *&v86[12] = 1024;
        *&v86[14] = 789;
        v87 = 2048;
        v88 = v4;
        v89 = 2048;
        v90 = v60;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v76[11] + v1 + 20) &= ~1u;
      return (*(*v76 + 32))(v76);
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Vector3<float>>::apply(float32x4_t *a1)
{
  result = re::BindPoint::isAlive(&a1->u32[2]);
  if (result)
  {
    if (a1[4].i64[1])
    {

      return re::BindPoint::setValue<re::Vector3<float>>(&a1->i64[1], a1 + 9);
    }

    else
    {
      if (a1[6].i8[8] == 1)
      {
        if (re::BindPoint::isOverridden(&a1->u32[2]))
        {
          v3 = re::BindPoint::overrideValueUntyped(&a1->u32[2]);
          v4 = re::BindPoint::baseValueUntyped(&a1->u32[2]);
          if (v4)
          {
            *v4 = *v3;
            re::BindPoint::markAsWritten(&a1->i64[1]);
          }
        }
      }

      return re::BindPoint::setIsOverridden(&a1->i64[1], 0);
    }
  }

  return result;
}

uint64_t re::BindPoint::setValue<re::Vector3<float>>(uint64_t result, float32x4_t *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(result + 24);
  if (!v2)
  {
    return result;
  }

  v4 = result;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  v29 = 0;
  v30 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v26, v2);
  v5 = 0;
  v6 = 0;
  v7 = *(v4 + 3);
  v8 = v27;
  do
  {
    if (v7 == v6)
    {
      v31 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      v35 = 797;
      v36 = 2048;
      v37 = v7;
      v38 = 2048;
      v39 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v31 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      v35 = 858;
      v36 = 2048;
      v37 = v8;
      v38 = 2048;
      v39 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_33;
    }

    v9 = (*(v4 + 5) + v5);
    if (!*v9)
    {
      v9 = v9[2];
    }

    if (v8 == v6)
    {
      goto LABEL_32;
    }

    if (v28)
    {
      v10 = &v29;
    }

    else
    {
      v10 = v30;
    }

    v10[v6++] = v9;
    v5 += 32;
  }

  while (v2 != v6);
  if (!v8)
  {
LABEL_33:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    v35 = 858;
    v36 = 2048;
    v37 = 0;
    v38 = 2048;
    v39 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  if (v28)
  {
    v11 = &v29;
  }

  else
  {
    v11 = v30;
  }

  v12 = *v11;
  v13 = v2 - 1;
  v14 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v26, 1uLL, v13);
  v16 = (*(*v12 + 120))(v12, 0, v14, v15);
  if (v16)
  {
    v17 = v16;
    if (!re::BindPoint::isOverridden(v4) || (v18 = vmvnq_s8(vceqq_f32(*v17, *a2)), v18.i32[3] = v18.i32[2], (vmaxvq_u32(v18) & 0x80000000) != 0))
    {
      re::BindPoint::willSet(v4);
      *v17 = *a2;
      re::BindPoint::setIsOverridden(v4, 1);
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  if (!v27)
  {
LABEL_34:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    v35 = 858;
    v36 = 2048;
    v37 = 0;
    v38 = 2048;
    v39 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v28)
  {
    v19 = &v29;
  }

  else
  {
    v19 = v30;
  }

  v20 = *v19;
  v21 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v26, 1uLL, v13);
  v23 = (*(*v20 + 88))(v20, 0, v21, v22);
  if (v23)
  {
    v24 = v23;
    v25 = vmvnq_s8(vceqq_f32(*v23, *a2));
    v25.i32[3] = v25.i32[2];
    if ((vmaxvq_u32(v25) & 0x80000000) != 0)
    {
      re::BindPoint::willSet(v4);
      *v24 = *a2;
LABEL_19:
      re::BindPoint::markAsWritten(v4);
    }
  }

LABEL_26:
  result = v26;
  if (v26)
  {
    if ((v28 & 1) == 0)
    {
      return (*(*v26 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Vector3<float>>::takeSnapshot(uint64_t result)
{
  v1 = result;
  if (*(result + 72))
  {
    if ((*(result + 112) & 1) == 0)
    {
      *(result + 112) = 1;
    }

    v2 = *(result + 144);
    goto LABEL_14;
  }

  if (re::BindPoint::supportsOverrideValue((result + 8)))
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 128) = 0u;
    }

    result = re::BindPoint::baseValueUntyped((v1 + 8));
LABEL_13:
    v2 = *result;
LABEL_14:
    *(v1 + 128) = v2;
    return result;
  }

  result = re::BindPoint::isAlive((v1 + 8));
  if (result)
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 128) = 0u;
    }

    result = re::BindPoint::valueUntyped((v1 + 8));
    goto LABEL_13;
  }

  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Vector4<float>>::~AnimationCompositionChain(uint64_t a1)
{
  *a1 = &unk_1F5CACD90;
  v2 = a1 + 56;
  if (*(a1 + 56))
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    re::DynamicArray<unsigned long>::deinit(a1 + 56);
  }

  *a1 = &unk_1F5CAD030;
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  return a1;
}

void re::internal::AnimationCompositionChain<re::Vector4<float>>::~AnimationCompositionChain(uint64_t a1)
{
  re::internal::AnimationCompositionChain<re::Vector4<float>>::~AnimationCompositionChain(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::AnimationCompositionChain<re::Vector4<float>>::init(uint64_t a1, void *a2)
{
  v2 = a1;
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<re::BindPoint::BindPointData>::operator=(a1 + 16, a2 + 1);
  v2 += 56;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v2, 0);
  ++*(v2 + 24);

  return re::BindPoint::baseValueUntyped(v3);
}

uint64_t re::internal::AnimationCompositionChain<re::Vector4<float>>::deinit(uint64_t a1)
{
  v3 = *(a1 + 56);
  result = a1 + 56;
  if (v3)
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    return re::DynamicArray<unsigned long>::deinit(result);
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Vector4<float>>::update(uint64_t result)
{
  v100 = *MEMORY[0x1E69E9840];
  v84 = *(result + 72);
  if (v84)
  {
    v5 = result;
    result = re::BindPoint::isAlive((result + 8));
    if (result)
    {
      v6 = re::BindPoint::supportsOverrideValue((v5 + 1));
      v91[0] = 0;
      v91[1] = 0;
      v92 = 0;
      v77 = v6;
      if (v6)
      {
        v6 = re::BindPoint::baseValueUntyped((v5 + 1));
        v76 = v6;
      }

      else
      {
        v92 = 1;
        v76 = v91;
      }

      if (*(v5 + 112) == 1)
      {
        v7 = *(v5 + 8);
      }

      else
      {
        v7 = *v76;
      }

      *(v5 + 9) = v7;
      v8 = re::animationLogObjects(v6);
      result = re::AnimationLogObjects::loggingEnabled(v8);
      if (result)
      {
LABEL_115:
        v2 = *re::animationLogObjects(result);
        result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v68 = re::BindPoint::overrideValueUntyped((v5 + 1));
          *buf = 134217984;
          *&buf[4] = v68;
          _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "ANIM: -------------- Target: %p -----------------\n", buf, 0xCu);
        }
      }

      v89 = 0u;
      v90 = 0u;
      v81 = 0u;
      if (v5[9])
      {
        v1 = 0;
        v4 = 0;
        v9 = 0;
        v10 = *(v5[11] + 16);
        v2 = (v5 + 18);
        v86 = v76;
        v87 = 0;
        v88 = 0;
        v75 = 136315138;
        v78 = v77;
        v82 = (v5 + 18);
        v83 = v5;
        while (1)
        {
          v11 = v5[9];
          if (v11 <= v4)
          {
            v85[0] = 0;
            v99 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v93 = 136315906;
            *&v93[4] = "operator[]";
            *&v93[12] = 1024;
            *&v93[14] = 789;
            v94 = 2048;
            v95 = v4;
            v96 = 2048;
            v97 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_110:
            re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_111:
            v85[0] = 0;
            v99 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v93 = 136315906;
            *&v93[4] = "operator[]";
            *&v93[12] = 1024;
            *&v93[14] = 476;
            v94 = 2048;
            v95 = v9;
            v96 = 2048;
            v97 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_112:
            v85[0] = 0;
            v99 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v93 = 136315906;
            *&v93[4] = "operator[]";
            *&v93[12] = 1024;
            *&v93[14] = 789;
            v94 = 2048;
            v95 = v4;
            v96 = 2048;
            v97 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_113:
            v85[0] = 0;
            v99 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v93 = 136315906;
            *&v93[4] = "operator[]";
            *&v93[12] = 1024;
            *&v93[14] = 789;
            v94 = 2048;
            v95 = v4;
            v96 = 2048;
            v97 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_114:
            v85[0] = 0;
            v99 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v93 = 136315906;
            *&v93[4] = "operator[]";
            *&v93[12] = 1024;
            *&v93[14] = 789;
            v94 = 2048;
            v95 = v4;
            v96 = 2048;
            v97 = v2;
            _os_log_send_and_compose_impl();
            result = _os_crash_msg();
            __break(1u);
            goto LABEL_115;
          }

          v12 = v5[11] + v1;
          v13 = v10 != *(v12 + 16);
          v10 = *(v12 + 16);
          if ((v13 & v9) == 1)
          {
            v9 = 0;
            *&v2->isa = vaddq_f32(v81, *&v2->isa);
            v10 = *(v12 + 16);
          }

          v3 = *v12;
          v14 = *(v12 + 8);
          v15 = re::animationLogObjects(result);
          v16 = re::AnimationLogObjects::loggingEnabled(v15);
          if (v16)
          {
            v44 = *re::animationLogObjects(v16);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v3 + 48))
              {
                v45 = *(v3 + 56);
              }

              else
              {
                v45 = v3 + 49;
              }

              *buf = 134218754;
              *&buf[4] = v4;
              *&buf[12] = 2048;
              *&buf[14] = v3;
              *&buf[22] = 1024;
              *&buf[24] = v14;
              *&buf[28] = 2080;
              *&buf[30] = v45;
              _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "ANIM: #%zu: %p(%d) %s\n", buf, 0x26u);
            }
          }

          ClocksOfSubtree = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, v14);
          if (!v18)
          {
            goto LABEL_110;
          }

          v19 = ClocksOfSubtree;
          v20 = v18;
          v5 = v9;
          v9 = v14;
          result = re::internal::TimelineTree::source(v3, v14);
          v21 = result;
          if ((v19[16] & 1) == 0)
          {
            v30 = re::animationLogObjects(result);
            v31 = re::AnimationLogObjects::loggingEnabled(v30);
            if (v31)
            {
              loga = *re::animationLogObjects(v31);
              if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
              {
                v46 = *(re::internal::TimelineTree::source(v3, v9) + 32);
                if (*v19 == 2)
                {
                  v47 = "Delayed";
                }

                else
                {
                  v47 = "Completed";
                }

                *v93 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
                *&v93[8] = v48;
                v49 = re::Slice<re::AnimationClock>::operator[](v93, 0);
                if (*(v49 + 16))
                {
                  v50 = *(v49 + 24);
                }

                else
                {
                  v50 = 0;
                }

                *buf = 136315650;
                *&buf[4] = v46;
                v2 = v82;
                *&buf[12] = 2080;
                *&buf[14] = v47;
                *&buf[22] = 2048;
                *&buf[24] = v50;
                _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s skipped, %s. Root Time: %f\n", buf, 0x20u);
              }
            }

            result = (*(*v21 + 112))(v21, v19, v20, v2, &v86, v2);
LABEL_48:
            v9 = v5;
            v5 = v83;
            goto LABEL_49;
          }

          v2 = *(v3 + 208);
          if (v2 <= v9)
          {
            goto LABEL_111;
          }

          v22 = fabsf(*(*(v3 + 216) + 4 * v9));
          v2 = v82;
          if (v22 < 0.00001)
          {
            goto LABEL_48;
          }

          log = *(*(v3 + 216) + 4 * v9);
          v23 = re::animationLogObjects(result);
          v24 = re::AnimationLogObjects::loggingEnabled(v23);
          if (v24)
          {
            v51 = *re::animationLogObjects(v24);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v73 = *(v21 + 32);
              v72 = re::BindPoint::valueUntyped((v83 + 1));
              v74 = v51;
              if (v19[16] == 1)
              {
                v71 = *(v19 + 3);
              }

              else
              {
                v71 = 0;
              }

              v52 = re::internal::TimelineTree::source(v3, v9);
              v53 = (*(*v52 + 40))(v52);
              *v93 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
              *&v93[8] = v54;
              v55 = re::Slice<re::AnimationClock>::operator[](v93, 0);
              if (*(v55 + 16))
              {
                v56 = *(v55 + 24);
              }

              else
              {
                v56 = 0;
              }

              v85[0] = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
              v85[1] = v57;
              v58 = re::Slice<re::AnimationClock>::operator[](v85, 0);
              v59 = re::AnimationClock::clockStateToName(v58);
              v60 = *(v21 + 72);
              *buf = 136316674;
              *&buf[4] = v73;
              *&buf[12] = 2048;
              *&buf[14] = v72;
              *&buf[22] = 2048;
              *&buf[24] = v71;
              *&buf[32] = 2048;
              *&buf[34] = v53;
              *&buf[42] = 2048;
              *&buf[44] = v56;
              *&buf[52] = 2080;
              *&buf[54] = v59;
              *&buf[62] = 1024;
              LODWORD(v99) = v60;
              _os_log_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s, Target: %p, Clock %f / %f, Root Time: %f, ClockState: '%s', additive: %d\n", buf, 0x44u);
            }
          }

          v9 = v5;
          if (log != 1.0 && fabsf(log + -1.0) >= (((v22 + 1.0) + 1.0) * 0.00001))
          {
            v5 = v83;
            if ((v90 & 1) == 0)
            {
              LOBYTE(v90) = 1;
            }

            v32 = v82;
            if (v9)
            {
              v89 = vaddq_f32(v81, *v82);
              v32 = &v89;
            }

            v33 = v87;
            result = (*(*v21 + 112))(v21, v19, v20, v32, &v86, &v89);
            if (v87 != v33)
            {
              return (*(*v83 + 32))(v83);
            }

            if (*(v21 + 72))
            {
              v2 = v83[9];
              v34 = log;
              if (v2 <= v4)
              {
                goto LABEL_119;
              }

              if ((*(v83[11] + v1 + 20) & 4) != 0)
              {
                v2 = v82;
                v41 = *v82;
                v38 = vaddq_f32(v89, *v82);
                v89 = v38;
                v42 = vaddq_f32(v81, v41);
                if (v9)
                {
                  v43 = -1;
                }

                else
                {
                  v43 = 0;
                }

                v37 = vbslq_s8(vdupq_n_s32(v43), v42, v41);
              }

              else
              {
                v2 = v82;
                v35 = vaddq_f32(v81, *v82);
                if (v9)
                {
                  v36 = -1;
                }

                else
                {
                  v36 = 0;
                }

                v37 = vbslq_s8(vdupq_n_s32(v36), v35, *v82);
                v38 = vaddq_f32(v89, v37);
                v89 = v38;
              }
            }

            else
            {
              v2 = v82;
              v34 = log;
              v39 = vaddq_f32(v81, *v82);
              if (v9)
              {
                v40 = -1;
              }

              else
              {
                v40 = 0;
              }

              v37 = vbslq_s8(vdupq_n_s32(v40), v39, *v82);
              v38 = v89;
            }

            v9 = 0;
            *&v2->isa = vaddq_f32(vmulq_n_f32(v37, 1.0 - v34), vmulq_n_f32(v38, v34));
            goto LABEL_49;
          }

          v5 = v83;
          v2 = v83[9];
          if (v2 <= v4)
          {
            goto LABEL_112;
          }

          *(v83[11] + v1 + 20) &= ~4u;
          if ((*(v21 + 72) & 1) == 0)
          {
            v88 = 1;
            v2 = v82;
            result = (*(*v21 + 112))(v21, v19, v20, v82, &v86, v82);
            goto LABEL_49;
          }

          v2 = v82;
          if ((v90 & 1) == 0)
          {
            LOBYTE(v90) = 1;
          }

          v25 = v82;
          if (v9)
          {
            v89 = vaddq_f32(v81, *v82);
            v25 = &v89;
          }

          result = (*(*v21 + 112))(v21, v19, v20, v25, &v86, &v89);
          if (v77)
          {
            v2 = v83[9];
            if (v2 <= v4)
            {
              goto LABEL_113;
            }

            v2 = v82;
            if ((*(v83[11] + v1 + 20) & 1) != 0 && v19[32] == 1)
            {
              v63 = v89;
              *v82 = vnegq_f32(v89);
              *v82 = vsubq_f32(*v76, v63);
              v64 = re::animationLogObjects(result);
              v65 = re::AnimationLogObjects::loggingEnabled(v64);
              if (v65)
              {
                goto LABEL_120;
              }

              goto LABEL_105;
            }
          }

          v26 = vaddq_f32(v81, v89);
          if (v9)
          {
            v27 = -1;
          }

          else
          {
            v27 = 0;
          }

          v81 = vbslq_s8(vdupq_n_s32(v27), v26, v89);
          if ((v78 & 1) == 0)
          {
            v78 = 0;
            v9 = 1;
            goto LABEL_49;
          }

          v2 = v83[9];
          if (v2 <= v4)
          {
            goto LABEL_114;
          }

          v78 = 0;
          v9 = 1;
          if ((*(v83[11] + v1 + 20) & 2) == 0)
          {
            goto LABEL_45;
          }

          v2 = v82;
          if (*v19 == 5)
          {
            break;
          }

LABEL_49:
          ++v4;
          v1 += 24;
          if (v84 == v4)
          {
            if (v9)
            {
              *&v2->isa = vaddq_f32(v81, *&v2->isa);
            }

            return result;
          }
        }

        v28 = re::animationLogObjects(result);
        v29 = re::AnimationLogObjects::loggingEnabled(v28);
        if (v29)
        {
          v61 = *re::animationLogObjects(v29);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v3 + 48))
            {
              v62 = *(v3 + 56);
            }

            else
            {
              v62 = v3 + 49;
            }

            *buf = 136315138;
            *&buf[4] = v62;
            _os_log_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (last frame) value on last frame, from composition chain.\n", buf, 0xCu);
            v2 = v82;
            v5 = v83;
          }
        }

        *&v2->isa = vaddq_f32(v81, *&v2->isa);
        result = re::BindPoint::baseValueUntyped((v5 + 1));
        if (result)
        {
          *result = *&v2->isa;
          result = re::BindPoint::markAsWritten((v5 + 1));
        }

        v2 = v5[9];
        if (v2 <= v4)
        {
          goto LABEL_118;
        }

        v9 = 0;
        *(v5[11] + v1 + 20) &= ~2u;
        v78 = 1;
        *v19 = 1;
LABEL_45:
        v2 = v82;
        goto LABEL_49;
      }

      v86 = 0;
      v99 = 0uLL;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v93 = 136315906;
      *&v93[4] = "operator[]";
      *&v93[12] = 1024;
      *&v93[14] = 789;
      v94 = 2048;
      v95 = 0;
      v96 = 2048;
      v97 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_118:
      v85[0] = 0;
      v99 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v93 = 136315906;
      *&v93[4] = "operator[]";
      *&v93[12] = 1024;
      *&v93[14] = 789;
      v94 = 2048;
      v95 = v4;
      v96 = 2048;
      v97 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_119:
      v85[0] = 0;
      v99 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v93 = 136315906;
      *&v93[4] = "operator[]";
      *&v93[12] = 1024;
      *&v93[14] = 789;
      v94 = 2048;
      v95 = v4;
      v96 = 2048;
      v97 = v2;
      _os_log_send_and_compose_impl();
      v65 = _os_crash_msg();
      __break(1u);
LABEL_120:
      v69 = *re::animationLogObjects(v65);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 48))
        {
          v70 = *(v3 + 56);
        }

        else
        {
          v70 = v3 + 49;
        }

        *buf = v75;
        *&buf[4] = v70;
        _os_log_impl(&dword_1E1C61000, v69, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (first frame) value from composition chain.\n", buf, 0xCu);
        v2 = v82;
      }

LABEL_105:
      v66 = re::BindPoint::baseValueUntyped((v83 + 1));
      if (v66)
      {
        *v66 = *&v2->isa;
        re::BindPoint::markAsWritten((v83 + 1));
      }

      v67 = v83[9];
      if (v67 <= v4)
      {
        v85[0] = 0;
        v99 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v93 = 136315906;
        *&v93[4] = "operator[]";
        *&v93[12] = 1024;
        *&v93[14] = 789;
        v94 = 2048;
        v95 = v4;
        v96 = 2048;
        v97 = v67;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v83[11] + v1 + 20) &= ~1u;
      return (*(*v83 + 32))(v83);
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Vector4<float>>::apply(float32x4_t *a1)
{
  result = re::BindPoint::isAlive(&a1->u32[2]);
  if (result)
  {
    if (a1[4].i64[1])
    {

      return re::BindPoint::setValue<re::Vector4<float>>(&a1->i64[1], a1 + 9);
    }

    else
    {
      if (a1[6].i8[8] == 1)
      {
        if (re::BindPoint::isOverridden(&a1->u32[2]))
        {
          v3 = re::BindPoint::overrideValueUntyped(&a1->u32[2]);
          v4 = re::BindPoint::baseValueUntyped(&a1->u32[2]);
          if (v4)
          {
            *v4 = *v3;
            re::BindPoint::markAsWritten(&a1->i64[1]);
          }
        }
      }

      return re::BindPoint::setIsOverridden(&a1->i64[1], 0);
    }
  }

  return result;
}

uint64_t re::BindPoint::setValue<re::Vector4<float>>(uint64_t result, float32x4_t *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(result + 24);
  if (!v2)
  {
    return result;
  }

  v4 = result;
  v24 = 0;
  v25 = 0;
  v26 = 1;
  v27 = 0;
  v28 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v24, v2);
  v5 = 0;
  v6 = 0;
  v7 = *(v4 + 3);
  v8 = v25;
  do
  {
    if (v7 == v6)
    {
      v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 797;
      v34 = 2048;
      v35 = v7;
      v36 = 2048;
      v37 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 858;
      v34 = 2048;
      v35 = v8;
      v36 = 2048;
      v37 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_33;
    }

    v9 = (*(v4 + 5) + v5);
    if (!*v9)
    {
      v9 = v9[2];
    }

    if (v8 == v6)
    {
      goto LABEL_32;
    }

    if (v26)
    {
      v10 = &v27;
    }

    else
    {
      v10 = v28;
    }

    v10[v6++] = v9;
    v5 += 32;
  }

  while (v2 != v6);
  if (!v8)
  {
LABEL_33:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    v33 = 858;
    v34 = 2048;
    v35 = 0;
    v36 = 2048;
    v37 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  if (v26)
  {
    v11 = &v27;
  }

  else
  {
    v11 = v28;
  }

  v12 = *v11;
  v13 = v2 - 1;
  v14 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v24, 1uLL, v13);
  v16 = (*(*v12 + 120))(v12, 0, v14, v15);
  if (v16)
  {
    v17 = v16;
    if (!re::BindPoint::isOverridden(v4) || (vmaxvq_u32(vmvnq_s8(vceqq_f32(*v17, *a2))) & 0x80000000) != 0)
    {
      re::BindPoint::willSet(v4);
      *v17 = *a2;
      re::BindPoint::setIsOverridden(v4, 1);
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  if (!v25)
  {
LABEL_34:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    v33 = 858;
    v34 = 2048;
    v35 = 0;
    v36 = 2048;
    v37 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v26)
  {
    v18 = &v27;
  }

  else
  {
    v18 = v28;
  }

  v19 = *v18;
  v20 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v24, 1uLL, v13);
  v22 = (*(*v19 + 88))(v19, 0, v20, v21);
  if (v22)
  {
    v23 = v22;
    if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*v22, *a2))) & 0x80000000) != 0)
    {
      re::BindPoint::willSet(v4);
      *v23 = *a2;
LABEL_19:
      re::BindPoint::markAsWritten(v4);
    }
  }

LABEL_26:
  result = v24;
  if (v24)
  {
    if ((v26 & 1) == 0)
    {
      return (*(*v24 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Vector4<float>>::takeSnapshot(uint64_t result)
{
  v1 = result;
  if (*(result + 72))
  {
    if ((*(result + 112) & 1) == 0)
    {
      *(result + 112) = 1;
    }

    v2 = *(result + 144);
    goto LABEL_14;
  }

  if (re::BindPoint::supportsOverrideValue((result + 8)))
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 128) = 0;
      *(v1 + 136) = 0;
    }

    result = re::BindPoint::baseValueUntyped((v1 + 8));
LABEL_13:
    v2 = *result;
LABEL_14:
    *(v1 + 128) = v2;
    return result;
  }

  result = re::BindPoint::isAlive((v1 + 8));
  if (result)
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 128) = 0;
      *(v1 + 136) = 0;
    }

    result = re::BindPoint::valueUntyped((v1 + 8));
    goto LABEL_13;
  }

  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Quaternion<float>>::~AnimationCompositionChain(uint64_t a1)
{
  *a1 = &unk_1F5CACDE8;
  v2 = a1 + 56;
  if (*(a1 + 56))
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    re::DynamicArray<unsigned long>::deinit(a1 + 56);
  }

  *a1 = &unk_1F5CAD030;
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  return a1;
}

void re::internal::AnimationCompositionChain<re::Quaternion<float>>::~AnimationCompositionChain(uint64_t a1)
{
  re::internal::AnimationCompositionChain<re::Quaternion<float>>::~AnimationCompositionChain(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::AnimationCompositionChain<re::Quaternion<float>>::init(uint64_t a1, void *a2)
{
  v2 = a1;
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<re::BindPoint::BindPointData>::operator=(a1 + 16, a2 + 1);
  v2 += 56;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v2, 0);
  ++*(v2 + 24);

  return re::BindPoint::baseValueUntyped(v3);
}

uint64_t re::internal::AnimationCompositionChain<re::Quaternion<float>>::deinit(uint64_t a1)
{
  v3 = *(a1 + 56);
  result = a1 + 56;
  if (v3)
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    return re::DynamicArray<unsigned long>::deinit(result);
  }

  return result;
}

void re::internal::AnimationCompositionChain<re::Quaternion<float>>::update(unint64_t a1)
{
  v190 = *MEMORY[0x1E69E9840];
  v173 = *(a1 + 72);
  if (v173)
  {
    v6 = a1;
    if (re::BindPoint::isAlive((a1 + 8)))
    {
      v7 = re::BindPoint::supportsOverrideValue((v6 + 8));
      v170 = xmmword_1E30474D0;
      v181 = xmmword_1E30474D0;
      v182 = 0;
      v168 = v7;
      if (v7)
      {
        v7 = re::BindPoint::baseValueUntyped((v6 + 8));
        v162 = v7;
      }

      else
      {
        v182 = 1;
        *&v181 = 0;
        *(&v181 + 1) = 0x3F80000000000000;
        v162 = &v181;
      }

      if (*(v6 + 112) == 1)
      {
        v8 = *(v6 + 128);
      }

      else
      {
        v8 = *v162;
      }

      *(v6 + 144) = v8;
      v9 = re::animationLogObjects(v7);
      v10 = re::AnimationLogObjects::loggingEnabled(v9);
      if (v10)
      {
LABEL_120:
        v1 = *re::animationLogObjects(v10);
        v10 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          v154 = re::BindPoint::overrideValueUntyped((v6 + 8));
          *buf = 134217984;
          *&buf[4] = v154;
          _os_log_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_DEFAULT, "ANIM: -------------- Target: %p -----------------\n", buf, 0xCu);
        }
      }

      v179 = 0;
      v180 = 0;
      v178 = v170;
      if (*(v6 + 72))
      {
        v3 = 0;
        v5 = 0;
        v1 = 0;
        v11 = *(*(v6 + 88) + 16);
        v2 = (v6 + 144);
        v175 = v162;
        v176 = 0;
        v177 = 0;
        v158 = 136315138;
        v169 = v168;
        v171 = (v6 + 144);
        v172 = v6;
        while (1)
        {
          v12 = *(v6 + 72);
          if (v12 <= v5)
          {
            v174[0] = 0;
            v189 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v183 = 136315906;
            *&v183[4] = "operator[]";
            *&v183[12] = 1024;
            *&v183[14] = 789;
            v184 = 2048;
            v185 = v5;
            v186 = 2048;
            v187 = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_115:
            re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_116:
            v174[0] = 0;
            v189 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v183 = 136315906;
            *&v183[4] = "operator[]";
            *&v183[12] = 1024;
            *&v183[14] = 476;
            v184 = 2048;
            v185 = v6;
            v186 = 2048;
            v187 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_117:
            v174[0] = 0;
            v189 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v183 = 136315906;
            *&v183[4] = "operator[]";
            *&v183[12] = 1024;
            *&v183[14] = 789;
            v184 = 2048;
            v185 = v5;
            v186 = 2048;
            v187 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_118:
            v174[0] = 0;
            v189 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v183 = 136315906;
            *&v183[4] = "operator[]";
            *&v183[12] = 1024;
            *&v183[14] = 789;
            v184 = 2048;
            v185 = v5;
            v186 = 2048;
            v187 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_119:
            v174[0] = 0;
            v189 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v183 = 136315906;
            *&v183[4] = "operator[]";
            *&v183[12] = 1024;
            *&v183[14] = 789;
            v184 = 2048;
            v185 = v5;
            v186 = 2048;
            v187 = v1;
            _os_log_send_and_compose_impl();
            v10 = _os_crash_msg();
            __break(1u);
            goto LABEL_120;
          }

          v13 = *(v6 + 88) + v3;
          v14 = v11 != *(v13 + 16);
          v11 = *(v13 + 16);
          if ((v14 & v1) == 1)
          {
            v1 = 0;
            _Q0 = *v2;
            _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v170, v170), v170, 0xCuLL), vnegq_f32(*v2)), v170, vextq_s8(vuzp1q_s32(_Q0, _Q0), *v2, 0xCuLL));
            v17 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v170, *v2, 3);
            _Q2.i32[0] = v170.i32[3];
            v18 = vmlaq_laneq_f32(v17, *v2, v170, 3);
            __asm { FMLA            S3, S2, V0.S[3] }

            v18.i32[3] = _S3;
            *v2 = v18;
            v11 = *(v13 + 16);
          }

          v4 = *v13;
          v24 = *(v13 + 8);
          v25 = re::animationLogObjects(v10);
          v26 = re::AnimationLogObjects::loggingEnabled(v25);
          if (v26)
          {
            v115 = *re::animationLogObjects(v26);
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v4 + 48))
              {
                v116 = *(v4 + 56);
              }

              else
              {
                v116 = v4 + 49;
              }

              *buf = 134218754;
              *&buf[4] = v5;
              *&buf[12] = 2048;
              *&buf[14] = v4;
              *&buf[22] = 1024;
              *&buf[24] = v24;
              *&buf[28] = 2080;
              *&buf[30] = v116;
              _os_log_impl(&dword_1E1C61000, v115, OS_LOG_TYPE_DEFAULT, "ANIM: #%zu: %p(%d) %s\n", buf, 0x26u);
            }
          }

          ClocksOfSubtree = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v4, v24);
          if (!v28)
          {
            goto LABEL_115;
          }

          v29 = ClocksOfSubtree;
          v30 = v28;
          v6 = v24;
          v10 = re::internal::TimelineTree::source(v4, v24);
          v31 = v10;
          if ((v29[16] & 1) == 0)
          {
            break;
          }

          v2 = *(v4 + 208);
          if (v2 <= v6)
          {
            goto LABEL_116;
          }

          v32 = *(*(v4 + 216) + 4 * v6);
          v33 = fabsf(v32);
          v2 = v171;
          if (v33 < 0.00001)
          {
            goto LABEL_37;
          }

          v34 = re::animationLogObjects(v10);
          v35 = re::AnimationLogObjects::loggingEnabled(v34);
          if (v35)
          {
            v122 = *re::animationLogObjects(v35);
            if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
            {
              v164 = *(v31 + 32);
              v161 = re::BindPoint::valueUntyped((v172 + 8));
              logb = v122;
              if (v29[16] == 1)
              {
                v157 = *(v29 + 3);
              }

              else
              {
                v157 = 0;
              }

              v123 = re::internal::TimelineTree::source(v4, v6);
              v124 = (*(*v123 + 40))(v123);
              *v183 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v4, 0);
              *&v183[8] = v125;
              v126 = re::Slice<re::AnimationClock>::operator[](v183, 0);
              if (*(v126 + 16))
              {
                v127 = *(v126 + 24);
              }

              else
              {
                v127 = 0;
              }

              v174[0] = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v4, 0);
              v174[1] = v128;
              v129 = re::Slice<re::AnimationClock>::operator[](v174, 0);
              v130 = re::AnimationClock::clockStateToName(v129);
              v131 = *(v31 + 72);
              *buf = 136316674;
              *&buf[4] = v164;
              *&buf[12] = 2048;
              *&buf[14] = v161;
              *&buf[22] = 2048;
              *&buf[24] = v157;
              *&buf[32] = 2048;
              *&buf[34] = v124;
              *&buf[42] = 2048;
              *&buf[44] = v127;
              *&buf[52] = 2080;
              *&buf[54] = v130;
              *&buf[62] = 1024;
              LODWORD(v189) = v131;
              _os_log_impl(&dword_1E1C61000, logb, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s, Target: %p, Clock %f / %f, Root Time: %f, ClockState: '%s', additive: %d\n", buf, 0x44u);
            }
          }

          if (v32 != 1.0 && fabsf(v32 + -1.0) >= (((v33 + 1.0) + 1.0) * 0.00001))
          {
            v6 = v172;
            if ((v179 & 1) == 0)
            {
              LOBYTE(v179) = 1;
            }

            v57 = v171;
            if (v1)
            {
              _Q0 = *v171;
              _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v170, v170), v170, 0xCuLL), vnegq_f32(*v171)), v170, vextq_s8(vuzp1q_s32(_Q0, _Q0), *v171, 0xCuLL));
              v60 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v170, *v171, 3);
              _Q2.i32[0] = v170.i32[3];
              v61 = vmlaq_laneq_f32(v60, *v171, v170, 3);
              __asm { FMLA            S3, S2, V0.S[3] }

              v61.i32[3] = _S3;
              v178 = v61;
              v57 = &v178;
            }

            v63 = v176;
            (*(*v31 + 112))(v31, v29, v30, v57, &v175, &v178);
            if (v176 != v63)
            {
              goto LABEL_113;
            }

            if (*(v31 + 72))
            {
              v2 = *(v172 + 72);
              if (v2 <= v5)
              {
                goto LABEL_124;
              }

              _Q6 = *(v172 + 144);
              if ((*(*(v172 + 88) + v3 + 20) & 4) == 0)
              {
                v2 = v171;
                if (v1)
                {
                  _Q1 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v170, v170), v170, 0xCuLL), vnegq_f32(_Q6)), v170, vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL));
                  v66 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), v170, _Q6, 3);
                  _Q1.i32[0] = v170.i32[3];
                  v67 = vmlaq_laneq_f32(v66, _Q6, v170, 3);
                  __asm { FMLA            S2, S1, V6.S[3] }

                  v67.i32[3] = _S2;
                  _Q6 = v67;
                }

                _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v178, v178), v178, 0xCuLL), vnegq_f32(_Q6)), v178, vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL));
                v70 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v178, _Q6, 3);
                _Q2.i32[0] = v178.i32[3];
                v71 = vmlaq_laneq_f32(v70, _Q6, v178, 3);
                __asm { FMLA            S0, S2, V6.S[3] }

                v71.i32[3] = _S0;
                v178 = v71;
                goto LABEL_68;
              }

              v77 = vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL);
              v78 = vnegq_f32(_Q6);
              v79 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v178, v178), v178, 0xCuLL), v78), v178, v77);
              _S4 = v178.i32[3];
              v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), v178, _Q6, 3), _Q6, v178, 3);
              __asm { FMLA            S2, S4, V6.S[3] }

              v81.i32[3] = _S2;
              v178 = v81;
              v2 = v171;
              if (v1)
              {
                _S3 = _Q6.i32[3];
                _Q5 = v170;
                _Q1 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), v170, 0xCuLL), v78), v170, v77);
                v76 = vmlaq_laneq_f32(vmlaq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), v170, vdupq_laneq_s32(_Q6, 3)), _Q6, v170, 3);
                __asm { FMLA            S1, S3, V5.S[3] }

                v76.i32[3] = _Q1.i32[0];
LABEL_67:
                _Q6 = v76;
              }
            }

            else
            {
              v2 = v171;
              _Q6 = *v171;
              if (v1)
              {
                _Q1 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v170, v170), v170, 0xCuLL), vnegq_f32(_Q6)), v170, vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL));
                v74 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), v170, _Q6, 3);
                _Q1.i32[0] = v170.i32[3];
                v76 = vmlaq_laneq_f32(v74, _Q6, v170, 3);
                __asm { FMLA            S2, S1, V6.S[3] }

                v76.i32[3] = _S2;
                goto LABEL_67;
              }
            }

LABEL_68:
            v86 = vmulq_f32(_Q6, v178);
            v87 = vextq_s8(v86, v86, 8uLL);
            *v86.f32 = vadd_f32(*v86.f32, *v87.f32);
            v86.f32[0] = vaddv_f32(*v86.f32);
            v87.i64[0] = 0;
            v88 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v86, v87)), 0), vnegq_f32(v178), v178);
            v89 = 1.0;
            v90 = vsubq_f32(_Q6, v88);
            v91 = vmulq_f32(v90, v90);
            v163 = v88;
            *log = _Q6;
            v92 = vaddq_f32(_Q6, v88);
            v93 = vmulq_f32(v92, v92);
            v94 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v91.i8, *&vextq_s8(v91, v91, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v93.i8, *&vextq_s8(v93, v93, 8uLL)))));
            v95 = v94 + v94;
            v96 = 1.0;
            if ((v94 + v94) != 0.0)
            {
              v96 = sinf(v94 + v94) / v95;
            }

            v97 = (1.0 - v32) * v95;
            if (v97 != 0.0)
            {
              v159 = v96;
              v98 = sinf((1.0 - v32) * v95);
              v96 = v159;
              v89 = v98 / v97;
            }

            v99 = v32 * v95;
            v100 = 1.0;
            if (v99 != 0.0)
            {
              v160 = v96;
              v101 = sinf(v99);
              v96 = v160;
              v100 = v101 / v99;
            }

            v102 = v96;
            v103 = vrecpe_f32(LODWORD(v96));
            v104 = vmul_f32(v103, vrecps_f32(LODWORD(v102), v103));
            v105 = vmul_f32(v104, vrecps_f32(LODWORD(v102), v104)).f32[0];
            v104.f32[0] = (1.0 - v32) * (v105 * v89);
            v106 = vmlaq_f32(vmulq_n_f32(v163, v32 * (v105 * v100)), *log, vdupq_lane_s32(v104, 0));
            v107 = vmulq_f32(v106, v106);
            v108 = vadd_f32(*v107.i8, *&vextq_s8(v107, v107, 8uLL));
            if (vaddv_f32(v108) == 0.0)
            {
              v109 = 0;
              v110 = 0x3F80000000000000;
            }

            else
            {
              v111 = vadd_f32(v108, vdup_lane_s32(v108, 1)).u32[0];
              v112 = vrsqrte_f32(v111);
              v113 = vmul_f32(v112, vrsqrts_f32(v111, vmul_f32(v112, v112)));
              v114 = vmulq_n_f32(v106, vmul_f32(v113, vrsqrts_f32(v111, vmul_f32(v113, v113))).f32[0]);
              v110 = v114.i64[1];
              v109 = v114.i64[0];
            }

            v1 = 0;
            v2->i64[0] = v109;
            v2->i64[1] = v110;
            goto LABEL_38;
          }

          v6 = v172;
          v2 = *(v172 + 72);
          if (v2 <= v5)
          {
            goto LABEL_117;
          }

          *(*(v172 + 88) + v3 + 20) &= ~4u;
          if (*(v31 + 72))
          {
            v2 = v171;
            if ((v179 & 1) == 0)
            {
              LOBYTE(v179) = 1;
            }

            v36 = v171;
            if (v1)
            {
              _Q0 = *v171;
              _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v170, v170), v170, 0xCuLL), vnegq_f32(*v171)), v170, vextq_s8(vuzp1q_s32(_Q0, _Q0), *v171, 0xCuLL));
              v39 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v170, *v171, 3);
              _Q2.i32[0] = v170.i32[3];
              v40 = vmlaq_laneq_f32(v39, *v171, v170, 3);
              __asm { FMLA            S3, S2, V0.S[3] }

              v40.i32[3] = _S3;
              v178 = v40;
              v36 = &v178;
            }

            v10 = (*(*v31 + 112))(v31, v29, v30, v36, &v175, &v178);
            if (v168)
            {
              v2 = *(v172 + 72);
              if (v2 <= v5)
              {
                goto LABEL_118;
              }

              v2 = v171;
              if ((*(*(v172 + 88) + v3 + 20) & 1) != 0 && v29[32] == 1)
              {
                *v171 = v178;
                _Q0 = *v171;
                v142 = vnegq_f32(*v171);
                v143 = v142;
                v143.i32[3] = HIDWORD(*v171);
                *v171 = v143;
                _Q2 = *v162;
                _Q4 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v142, v142), v142, 0xCuLL), vnegq_f32(*v162)), vextq_s8(vuzp1q_s32(_Q2, _Q2), *v162, 0xCuLL), _Q0);
                v146 = vmlsq_laneq_f32(vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL), _Q0, *v162, 3);
                _Q4.i32[0] = _Q0.i32[3];
                v147 = vmlaq_laneq_f32(v146, *v162, _Q0, 3);
                __asm { FMLA            S0, S4, V2.S[3] }

                v147.i32[3] = _Q0.i32[0];
                *v171 = v147;
                v148 = re::animationLogObjects(v10);
                v149 = re::AnimationLogObjects::loggingEnabled(v148);
                v1 = v171;
                if (v149)
                {
                  goto LABEL_125;
                }

                goto LABEL_109;
              }
            }

            if (v1)
            {
              _Q4 = v170;
              _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v178, v178), v178, 0xCuLL), vnegq_f32(v170)), v178, vextq_s8(vuzp1q_s32(_Q4, _Q4), v170, 0xCuLL));
              v44 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v178, v170, 3);
              _Q2.i32[0] = v178.i32[3];
              v45 = vmlaq_laneq_f32(v44, v170, v178, 3);
              __asm { FMLA            S0, S2, V4.S[3] }

              v45.i32[3] = _S0;
              v170 = v45;
            }

            else
            {
              v170 = v178;
            }

            if (v169)
            {
              v1 = *(v172 + 72);
              if (v1 <= v5)
              {
                goto LABEL_119;
              }

              v169 = 0;
              v1 = 1;
              if ((*(*(v172 + 88) + v3 + 20) & 2) != 0 && *v29 == 5)
              {
                v49 = re::animationLogObjects(v10);
                v50 = re::AnimationLogObjects::loggingEnabled(v49);
                if (v50)
                {
                  v132 = *re::animationLogObjects(v50);
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                  {
                    if (*(v4 + 48))
                    {
                      v133 = *(v4 + 56);
                    }

                    else
                    {
                      v133 = v4 + 49;
                    }

                    *buf = 136315138;
                    *&buf[4] = v133;
                    _os_log_impl(&dword_1E1C61000, v132, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (last frame) value on last frame, from composition chain.\n", buf, 0xCu);
                    v2 = v171;
                    v6 = v172;
                  }
                }

                _Q0 = *v2;
                _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v170, v170), v170, 0xCuLL), vnegq_f32(*v2)), v170, vextq_s8(vuzp1q_s32(_Q0, _Q0), *v2, 0xCuLL));
                v53 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v170, *v2, 3);
                _Q2.i32[0] = v170.i32[3];
                v54 = vmlaq_laneq_f32(v53, *v2, v170, 3);
                __asm { FMLA            S3, S2, V0.S[3] }

                v54.i32[3] = _S3;
                v56 = vmulq_f32(v54, v54);
                *v56.i8 = vadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
                v56.i32[0] = vadd_f32(*v56.i8, vdup_lane_s32(*v56.i8, 1)).u32[0];
                *_Q2.i8 = vrsqrte_f32(v56.u32[0]);
                *v2 = vmulq_n_f32(v54, vmul_f32(*_Q2.i8, vrsqrts_f32(v56.u32[0], vmul_f32(*_Q2.i8, *_Q2.i8))).f32[0]);
                v10 = re::BindPoint::baseValueUntyped((v6 + 8));
                if (v10)
                {
                  *v10 = *v2;
                  v10 = re::BindPoint::markAsWritten(v6 + 8);
                }

                v1 = *(v6 + 72);
                if (v1 <= v5)
                {
                  goto LABEL_123;
                }

                v1 = 0;
                *(*(v6 + 88) + v3 + 20) &= ~2u;
                v169 = 1;
                *v29 = 1;
              }
            }

            else
            {
              v169 = 0;
              v1 = 1;
            }
          }

          else
          {
            v177 = 1;
            v2 = v171;
            v10 = (*(*v31 + 112))(v31, v29, v30, v171, &v175, v171);
          }

LABEL_38:
          ++v5;
          v3 += 24;
          if (v173 == v5)
          {
            _Q0 = *v2;
            if (v1)
            {
              _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v170, v170), v170, 0xCuLL), vnegq_f32(_Q0)), v170, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
              v136 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v170, _Q0, 3);
              _Q2.i32[0] = v170.i32[3];
              v137 = vmlaq_laneq_f32(v136, _Q0, v170, 3);
              __asm { FMLA            S3, S2, V0.S[3] }

              v137.i32[3] = _S3;
              _Q0 = v137;
            }

            v139 = vmulq_f32(_Q0, _Q0);
            *v139.i8 = vadd_f32(*v139.i8, *&vextq_s8(v139, v139, 8uLL));
            v139.i32[0] = vadd_f32(*v139.i8, vdup_lane_s32(*v139.i8, 1)).u32[0];
            v140 = vrsqrte_f32(v139.u32[0]);
            *v2 = vmulq_n_f32(_Q0, vmul_f32(v140, vrsqrts_f32(v139.u32[0], vmul_f32(v140, v140))).f32[0]);
            return;
          }
        }

        v47 = re::animationLogObjects(v10);
        v48 = re::AnimationLogObjects::loggingEnabled(v47);
        if (v48)
        {
          loga = *re::animationLogObjects(v48);
          if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
          {
            v117 = *(re::internal::TimelineTree::source(v4, v6) + 32);
            if (*v29 == 2)
            {
              v118 = "Delayed";
            }

            else
            {
              v118 = "Completed";
            }

            *v183 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v4, 0);
            *&v183[8] = v119;
            v120 = re::Slice<re::AnimationClock>::operator[](v183, 0);
            if (*(v120 + 16))
            {
              v121 = *(v120 + 24);
            }

            else
            {
              v121 = 0;
            }

            *buf = 136315650;
            *&buf[4] = v117;
            v2 = v171;
            *&buf[12] = 2080;
            *&buf[14] = v118;
            *&buf[22] = 2048;
            *&buf[24] = v121;
            _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s skipped, %s. Root Time: %f\n", buf, 0x20u);
          }
        }

        v10 = (*(*v31 + 112))(v31, v29, v30, v2, &v175, v2);
LABEL_37:
        v6 = v172;
        goto LABEL_38;
      }

      v175 = 0;
      v189 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v183 = 136315906;
      *&v183[4] = "operator[]";
      *&v183[12] = 1024;
      *&v183[14] = 789;
      v184 = 2048;
      v185 = 0;
      v186 = 2048;
      v187 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_123:
      v174[0] = 0;
      v189 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v183 = 136315906;
      *&v183[4] = "operator[]";
      *&v183[12] = 1024;
      *&v183[14] = 789;
      v184 = 2048;
      v185 = v5;
      v186 = 2048;
      v187 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_124:
      v174[0] = 0;
      v189 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v183 = 136315906;
      *&v183[4] = "operator[]";
      *&v183[12] = 1024;
      *&v183[14] = 789;
      v184 = 2048;
      v185 = v5;
      v186 = 2048;
      v187 = v2;
      _os_log_send_and_compose_impl();
      v149 = _os_crash_msg();
      __break(1u);
LABEL_125:
      v155 = *re::animationLogObjects(v149);
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v4 + 48))
        {
          v156 = *(v4 + 56);
        }

        else
        {
          v156 = v4 + 49;
        }

        *buf = v158;
        *&buf[4] = v156;
        _os_log_impl(&dword_1E1C61000, v155, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (first frame) value from composition chain.\n", buf, 0xCu);
        v1 = v171;
        v6 = v172;
      }

LABEL_109:
      v150 = vmulq_f32(*v1, *v1);
      *v150.i8 = vadd_f32(*v150.i8, *&vextq_s8(v150, v150, 8uLL));
      v150.i32[0] = vadd_f32(*v150.i8, vdup_lane_s32(*v150.i8, 1)).u32[0];
      v151 = vrsqrte_f32(v150.u32[0]);
      *v1 = vmulq_n_f32(*v1, vmul_f32(v151, vrsqrts_f32(v150.u32[0], vmul_f32(v151, v151))).f32[0]);
      v152 = re::BindPoint::baseValueUntyped((v6 + 8));
      if (v152)
      {
        *v152 = *v1;
        re::BindPoint::markAsWritten(v6 + 8);
      }

      v153 = *(v6 + 72);
      if (v153 <= v5)
      {
        v174[0] = 0;
        v189 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v183 = 136315906;
        *&v183[4] = "operator[]";
        *&v183[12] = 1024;
        *&v183[14] = 789;
        v184 = 2048;
        v185 = v5;
        v186 = 2048;
        v187 = v153;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(*(v6 + 88) + v3 + 20) &= ~1u;
LABEL_113:
      (*(*v6 + 32))(v6);
    }
  }
}

uint64_t re::internal::AnimationCompositionChain<re::Quaternion<float>>::apply(float32x4_t *a1)
{
  result = re::BindPoint::isAlive(&a1->u32[2]);
  if (result)
  {
    if (a1[4].i64[1])
    {

      return re::BindPoint::setValue<re::Vector4<float>>(&a1->i64[1], a1 + 9);
    }

    else
    {
      if (a1[6].i8[8] == 1)
      {
        if (re::BindPoint::isOverridden(&a1->u32[2]))
        {
          v3 = re::BindPoint::overrideValueUntyped(&a1->u32[2]);
          v4 = re::BindPoint::baseValueUntyped(&a1->u32[2]);
          if (v4)
          {
            *v4 = *v3;
            re::BindPoint::markAsWritten(&a1->i64[1]);
          }
        }
      }

      return re::BindPoint::setIsOverridden(&a1->i64[1], 0);
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Quaternion<float>>::takeSnapshot(uint64_t result)
{
  v1 = result;
  if (*(result + 72))
  {
    if ((*(result + 112) & 1) == 0)
    {
      *(result + 112) = 1;
    }

    v2 = *(result + 144);
    goto LABEL_14;
  }

  if (re::BindPoint::supportsOverrideValue((result + 8)))
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 128) = xmmword_1E30474D0;
    }

    result = re::BindPoint::baseValueUntyped((v1 + 8));
LABEL_13:
    v2 = *result;
LABEL_14:
    *(v1 + 128) = v2;
    return result;
  }

  result = re::BindPoint::isAlive((v1 + 8));
  if (result)
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 128) = xmmword_1E30474D0;
    }

    result = re::BindPoint::valueUntyped((v1 + 8));
    goto LABEL_13;
  }

  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::GenericSRT<float>>::~AnimationCompositionChain(uint64_t a1)
{
  *a1 = &unk_1F5CACE40;
  v2 = a1 + 56;
  if (*(a1 + 56))
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    re::DynamicArray<unsigned long>::deinit(a1 + 56);
  }

  *a1 = &unk_1F5CAD030;
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  return a1;
}

void re::internal::AnimationCompositionChain<re::GenericSRT<float>>::~AnimationCompositionChain(uint64_t a1)
{
  re::internal::AnimationCompositionChain<re::GenericSRT<float>>::~AnimationCompositionChain(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::AnimationCompositionChain<re::GenericSRT<float>>::init(uint64_t a1, void *a2)
{
  v2 = a1;
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<re::BindPoint::BindPointData>::operator=(a1 + 16, a2 + 1);
  v2 += 56;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v2, 0);
  ++*(v2 + 24);

  return re::BindPoint::baseValueUntyped(v3);
}

uint64_t re::internal::AnimationCompositionChain<re::GenericSRT<float>>::deinit(uint64_t a1)
{
  v3 = *(a1 + 56);
  result = a1 + 56;
  if (v3)
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    return re::DynamicArray<unsigned long>::deinit(result);
  }

  return result;
}

void re::internal::AnimationCompositionChain<re::GenericSRT<float>>::update(uint64_t a1)
{
  v195 = *MEMORY[0x1E69E9840];
  v170 = *(a1 + 72);
  if (v170)
  {
    v6 = a1;
    if (re::BindPoint::isAlive((a1 + 8)))
    {
      v7 = re::BindPoint::supportsOverrideValue((v6 + 8));
      v186[0] = 0x3F8000003F800000;
      v186[1] = 1065353216;
      v186[2] = 0;
      v186[3] = 0x3F80000000000000;
      v186[4] = 0;
      v186[5] = 0;
      v187 = 0;
      v167 = v7;
      if (v7)
      {
        v7 = re::BindPoint::baseValueUntyped((v6 + 8));
        v8 = v7;
      }

      else
      {
        v187 = 1;
        v8 = v186;
      }

      if (*(v6 + 112) == 1)
      {
        v9 = *(v6 + 144);
        *(v6 + 176) = *(v6 + 128);
        *(v6 + 192) = v9;
        *(v6 + 208) = *(v6 + 160);
      }

      else
      {
        v10 = *v8;
        v11 = *(v8 + 32);
        *(v6 + 192) = *(v8 + 16);
        *(v6 + 208) = v11;
        *(v6 + 176) = v10;
      }

      v12 = re::animationLogObjects(v7);
      v13 = re::AnimationLogObjects::loggingEnabled(v12);
      if (v13)
      {
LABEL_113:
        v2 = *re::animationLogObjects(v13);
        v13 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          v157 = re::BindPoint::overrideValueUntyped((v6 + 8));
          buf[0].i32[0] = 134217984;
          *(buf[0].i64 + 4) = v157;
          _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "ANIM: -------------- Target: %p -----------------\n", buf, 0xCu);
        }
      }

      v181.i64[0] = 0x3F8000003F800000;
      v181.i64[1] = 1065353216;
      v182.i64[0] = 0;
      v182.i64[1] = 0x3F80000000000000;
      v185 = 0;
      v183 = 0uLL;
      v184 = 0;
      v176.i64[0] = 0x3F8000003F800000;
      v176.i64[1] = 1065353216;
      v177.i64[0] = 0;
      v177.i64[1] = 0x3F80000000000000;
      v180 = 0;
      v178 = 0uLL;
      v179 = 0;
      if (*(v6 + 72))
      {
        v5 = 0;
        v1 = 0;
        v2 = v6 + 176;
        v14 = *(*(v6 + 88) + 16);
        v166 = v8;
        v173 = v8;
        v8 = 20;
        v174 = 0;
        v175 = 0;
        v165 = 136315138;
        v168 = v167;
        v169 = (v6 + 176);
        while (1)
        {
          v15 = *(v6 + 72);
          if (v15 <= v5)
          {
            v172[0] = 0;
            v194 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v188 = 136315906;
            *&v188[4] = "operator[]";
            *&v188[12] = 1024;
            *&v188[14] = 789;
            v189 = 2048;
            v190 = v5;
            v191 = 2048;
            v192 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_107:
            v172[0] = 0;
            v194 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v188 = 136315906;
            *&v188[4] = "operator[]";
            *&v188[12] = 1024;
            *&v188[14] = 789;
            v189 = 2048;
            v190 = v5;
            v191 = 2048;
            v192 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_108:
            re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_109:
            v172[0] = 0;
            v194 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v188 = 136315906;
            *&v188[4] = "operator[]";
            *&v188[12] = 1024;
            *&v188[14] = 476;
            v189 = 2048;
            v190 = v4;
            v191 = 2048;
            v192 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_110:
            v172[0] = 0;
            v194 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v188 = 136315906;
            *&v188[4] = "operator[]";
            *&v188[12] = 1024;
            *&v188[14] = 789;
            v189 = 2048;
            v190 = v5;
            v191 = 2048;
            v192 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_111:
            v172[0] = 0;
            v194 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v188 = 136315906;
            *&v188[4] = "operator[]";
            *&v188[12] = 1024;
            *&v188[14] = 789;
            v189 = 2048;
            v190 = v5;
            v191 = 2048;
            v192 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_112:
            v172[0] = 0;
            v194 = 0u;
            memset(buf, 0, sizeof(buf));
            v6 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v188 = 136315906;
            *&v188[4] = "operator[]";
            *&v188[12] = 1024;
            *&v188[14] = 789;
            v189 = 2048;
            v190 = v5;
            v191 = 2048;
            v192 = v1;
            _os_log_send_and_compose_impl();
            v13 = _os_crash_msg();
            __break(1u);
            goto LABEL_113;
          }

          if (((v14 != *(*(v6 + 88) + v8 - 4)) & v1) == 1)
          {
            re::AnimationValueTraits<re::GenericSRT<float>>::combine(&v181, v2, v2);
            v1 = 0;
            v15 = *(v6 + 72);
          }

          if (v15 <= v5)
          {
            goto LABEL_107;
          }

          v16 = *(v6 + 88) + v8;
          v171 = *(v16 - 4);
          v3 = *(v16 - 20);
          v17 = *(v16 - 12);
          v18 = re::animationLogObjects(v13);
          v19 = re::AnimationLogObjects::loggingEnabled(v18);
          if (v19)
          {
            v115 = *re::animationLogObjects(v19);
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v3 + 48))
              {
                v116 = *(v3 + 56);
              }

              else
              {
                v116 = v3 + 49;
              }

              buf[0].i32[0] = 134218754;
              *(buf[0].i64 + 4) = v5;
              buf[0].i16[6] = 2048;
              *(&buf[0].i64[1] + 6) = v3;
              buf[1].i16[3] = 1024;
              buf[1].i32[2] = v17;
              buf[1].i16[6] = 2080;
              *(&buf[1].i64[1] + 6) = v116;
              _os_log_impl(&dword_1E1C61000, v115, OS_LOG_TYPE_DEFAULT, "ANIM: #%zu: %p(%d) %s\n", buf, 0x26u);
            }
          }

          ClocksOfSubtree = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, v17);
          if (!v21)
          {
            goto LABEL_108;
          }

          v22 = ClocksOfSubtree;
          v23 = v21;
          v4 = v17;
          v13 = re::internal::TimelineTree::source(v3, v17);
          v24 = v13;
          if ((v22[16] & 1) == 0)
          {
            v60 = re::animationLogObjects(v13);
            v61 = re::AnimationLogObjects::loggingEnabled(v60);
            if (v61)
            {
              log = *re::animationLogObjects(v61);
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                v117 = *(re::internal::TimelineTree::source(v3, v4) + 32);
                if (*v22 == 2)
                {
                  v4 = "Delayed";
                }

                else
                {
                  v4 = "Completed";
                }

                *v188 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
                *&v188[8] = v118;
                v119 = re::Slice<re::AnimationClock>::operator[](v188, 0);
                if (*(v119 + 16))
                {
                  v120 = *(v119 + 24);
                }

                else
                {
                  v120 = 0;
                }

                buf[0].i32[0] = 136315650;
                *(buf[0].i64 + 4) = v117;
                v2 = v6 + 176;
                buf[0].i16[6] = 2080;
                *(&buf[0].i64[1] + 6) = v4;
                buf[1].i16[3] = 2048;
                buf[1].i64[1] = v120;
                _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s skipped, %s. Root Time: %f\n", buf, 0x20u);
              }
            }

            v13 = (*(*v24 + 112))(v24, v22, v23, v2, &v173, v2);
            goto LABEL_40;
          }

          v2 = *(v3 + 208);
          if (v2 <= v4)
          {
            goto LABEL_109;
          }

          v25 = *(*(v3 + 216) + 4 * v4);
          v26 = fabsf(v25);
          v2 = v6 + 176;
          if (v26 < 0.00001)
          {
            goto LABEL_40;
          }

          v27 = re::animationLogObjects(v13);
          v28 = re::AnimationLogObjects::loggingEnabled(v27);
          if (v28)
          {
            v121 = *re::animationLogObjects(v28);
            if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
            {
              v162 = v24[4];
              v161 = re::BindPoint::valueUntyped((v6 + 8));
              loga = v121;
              if (v22[16] == 1)
              {
                v160 = *(v22 + 3);
              }

              else
              {
                v160 = 0;
              }

              v122 = re::internal::TimelineTree::source(v3, v4);
              v123 = (*(*v122 + 40))(v122);
              *v188 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
              *&v188[8] = v124;
              v125 = re::Slice<re::AnimationClock>::operator[](v188, 0);
              if (*(v125 + 16))
              {
                v126 = *(v125 + 24);
              }

              else
              {
                v126 = 0;
              }

              v172[0] = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
              v172[1] = v127;
              v128 = re::Slice<re::AnimationClock>::operator[](v172, 0);
              v129 = re::AnimationClock::clockStateToName(v128);
              v130 = *(v24 + 72);
              buf[0].i32[0] = 136316674;
              *(buf[0].i64 + 4) = v162;
              buf[0].i16[6] = 2048;
              *(&buf[0].i64[1] + 6) = v161;
              buf[1].i16[3] = 2048;
              buf[1].i64[1] = v160;
              buf[2].i16[0] = 2048;
              *(buf[2].i64 + 2) = v123;
              buf[2].i16[5] = 2048;
              *(&buf[2].i64[1] + 4) = v126;
              buf[3].i16[2] = 2080;
              *(buf[3].i64 + 6) = v129;
              buf[3].i16[7] = 1024;
              LODWORD(v194) = v130;
              _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s, Target: %p, Clock %f / %f, Root Time: %f, ClockState: '%s', additive: %d\n", buf, 0x44u);
            }
          }

          if (v25 != 1.0 && fabsf(v25 + -1.0) >= (((v26 + 1.0) + 1.0) * 0.00001))
          {
            break;
          }

          v2 = *(v6 + 72);
          if (v2 <= v5)
          {
            goto LABEL_110;
          }

          *(*(v6 + 88) + v8) &= ~4u;
          if (v24[9])
          {
            v2 = v6 + 176;
            if ((v179 & 1) == 0)
            {
              LOBYTE(v179) = 1;
            }

            v29 = (v6 + 176);
            if (v1)
            {
              v30 = *(v6 + 176);
              _Q1 = *(v6 + 192);
              v32 = vmulq_f32(v30, v181);
              v33 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
              v34 = vnegq_f32(_Q1);
              v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v182, v182), v182, 0xCuLL), v34), v182, v33);
              _S7 = v182.i32[3];
              v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v182, _Q1, 3), _Q1, v182, 3);
              __asm { FMLA            S3, S7, V1.S[3] }

              v37.i32[3] = _S3;
              v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v183, v183), v183, 0xCuLL), v34), v183, v33);
              v44 = vaddq_f32(v43, v43);
              v45 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
              v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), v34), v45, v33);
              v47 = vaddq_f32(*(v6 + 208), vmulq_f32(v30, vaddq_f32(vaddq_f32(v183, vmulq_laneq_f32(v45, _Q1, 3)), vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL))));
              v176 = v32;
              v177 = v37;
              v178 = v47;
              v29 = &v176;
            }

            v13 = (*(*v24 + 112))(v24, v22, v23, v29, &v173, &v176);
            if (v167)
            {
              v2 = *(v6 + 72);
              if (v2 <= v5)
              {
                goto LABEL_111;
              }

              v2 = v6 + 176;
              if ((*(*(v6 + 88) + v8) & 1) != 0 && v22[32] == 1)
              {
                __asm { FMOV            V3.4S, #1.0 }

                v138 = vdivq_f32(_Q3, v176);
                v139 = vnegq_f32(v177);
                v140 = vextq_s8(vuzp1q_s32(v139, v139), v139, 0xCuLL);
                v139.i32[3] = v177.i32[3];
                v141 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v178, v178), v178, 0xCuLL), v177), v178, v140);
                v142 = vaddq_f32(v141, v141);
                v143 = vextq_s8(vuzp1q_s32(v142, v142), v142, 0xCuLL);
                v144 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v143, v143), v143, 0xCuLL), v177), v143, v140);
                v145 = vmulq_f32(vaddq_f32(vaddq_f32(v178, vmulq_laneq_f32(v143, v177, 3)), vextq_s8(vuzp1q_s32(v144, v144), v144, 0xCuLL)), vnegq_f32(v138));
                *(v6 + 176) = v138;
                *(v6 + 192) = v139;
                *(v6 + 208) = v145;
                re::AnimationValueTraits<re::GenericSRT<float>>::combine(v169, v166, v169);
                v147 = re::animationLogObjects(v146);
                v148 = re::AnimationLogObjects::loggingEnabled(v147);
                if (v148)
                {
                  goto LABEL_118;
                }

                goto LABEL_101;
              }
            }

            if ((v184 & 1) == 0)
            {
              LOBYTE(v184) = 1;
            }

            if (v1)
            {
              _Q1 = v182;
              v49 = vextq_s8(vuzp1q_s32(_Q1, _Q1), v182, 0xCuLL);
              v50 = vnegq_f32(v182);
              v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v177, v177), v177, 0xCuLL), v50), v177, v49);
              _S7 = v177.i32[3];
              v53 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL), v177, v182, 3), v182, v177, 3);
              __asm { FMLA            S3, S7, V1.S[3] }

              v53.i32[3] = _S3;
              v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v178, v178), v178, 0xCuLL), v50), v178, v49);
              v56 = vaddq_f32(v55, v55);
              v57 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
              v58 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), v50), v57, v49);
              v59 = vaddq_f32(v183, vmulq_f32(v181, vaddq_f32(vaddq_f32(v178, vmulq_laneq_f32(v57, v182, 3)), vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL))));
              v181 = vmulq_f32(v181, v176);
              v182 = v53;
            }

            else
            {
              v181 = v176;
              v182 = v177;
              v59 = v178;
            }

            v183 = v59;
            if (v168)
            {
              v1 = *(v6 + 72);
              if (v1 <= v5)
              {
                goto LABEL_112;
              }

              v168 = 0;
              v1 = 1;
              if ((*(*(v6 + 88) + v8) & 2) != 0 && *v22 == 5)
              {
                v62 = re::animationLogObjects(v13);
                v63 = re::AnimationLogObjects::loggingEnabled(v62);
                if (v63)
                {
                  v131 = *re::animationLogObjects(v63);
                  if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                  {
                    if (*(v3 + 48))
                    {
                      v132 = *(v3 + 56);
                    }

                    else
                    {
                      v132 = v3 + 49;
                    }

                    buf[0].i32[0] = 136315138;
                    *(buf[0].i64 + 4) = v132;
                    _os_log_impl(&dword_1E1C61000, v131, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (last frame) value on last frame, from composition chain.\n", buf, 0xCu);
                    v2 = v6 + 176;
                  }
                }

                re::AnimationValueTraits<re::GenericSRT<float>>::combine(&v181, v2, v2);
                v64 = *(v6 + 192);
                v65 = vmulq_f32(v64, v64);
                *v65.i8 = vadd_f32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
                v65.i32[0] = vadd_f32(*v65.i8, vdup_lane_s32(*v65.i8, 1)).u32[0];
                v66 = vrsqrte_f32(v65.u32[0]);
                v67 = vmul_f32(v66, vrsqrts_f32(v65.u32[0], vmul_f32(v66, v66)));
                *(v6 + 192) = vmulq_n_f32(v64, vmul_f32(v67, vrsqrts_f32(v65.u32[0], vmul_f32(v67, v67))).f32[0]);
                v13 = re::BindPoint::baseValueUntyped((v6 + 8));
                if (v13)
                {
                  v68 = *v2;
                  v69 = *(v2 + 32);
                  *(v13 + 16) = *(v2 + 16);
                  *(v13 + 32) = v69;
                  *v13 = v68;
                  v13 = re::BindPoint::markAsWritten(v6 + 8);
                }

                v1 = *(v6 + 72);
                if (v1 <= v5)
                {
                  goto LABEL_116;
                }

                v1 = 0;
                *(*(v6 + 88) + v8) &= ~2u;
                v168 = 1;
                *v22 = 1;
              }
            }

            else
            {
              v168 = 0;
              v1 = 1;
            }
          }

          else
          {
            v175 = 1;
            v2 = v6 + 176;
            v13 = (*(*v24 + 112))(v24, v22, v23, v2, &v173, v2);
          }

LABEL_40:
          ++v5;
          v8 += 24;
          v14 = v171;
          if (v170 == v5)
          {
            if (v1)
            {
              re::AnimationValueTraits<re::GenericSRT<float>>::combine(&v181, v2, v2);
            }

            v133 = *(v6 + 192);
            v134 = vmulq_f32(v133, v133);
            *v134.i8 = vadd_f32(*v134.i8, *&vextq_s8(v134, v134, 8uLL));
            v134.i32[0] = vadd_f32(*v134.i8, vdup_lane_s32(*v134.i8, 1)).u32[0];
            v135 = vrsqrte_f32(v134.u32[0]);
            v136 = vmul_f32(v135, vrsqrts_f32(v134.u32[0], vmul_f32(v135, v135)));
            *(v6 + 192) = vmulq_n_f32(v133, vmul_f32(v136, vrsqrts_f32(v134.u32[0], vmul_f32(v136, v136))).f32[0]);
            return;
          }
        }

        if ((v179 & 1) == 0)
        {
          LOBYTE(v179) = 1;
        }

        v70 = (v6 + 176);
        if (v1)
        {
          v71 = *(v6 + 176);
          _Q1 = *(v6 + 192);
          v73 = vmulq_f32(v71, v181);
          v74 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
          v75 = vnegq_f32(_Q1);
          v76 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v182, v182), v182, 0xCuLL), v75), v182, v74);
          _S7 = v182.i32[3];
          v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL), v182, _Q1, 3), _Q1, v182, 3);
          __asm { FMLA            S3, S7, V1.S[3] }

          v78.i32[3] = _S3;
          v80 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v183, v183), v183, 0xCuLL), v75), v183, v74);
          v81 = vaddq_f32(v80, v80);
          v82 = vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL);
          v83 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL), v75), v82, v74);
          v84 = vaddq_f32(*(v6 + 208), vmulq_f32(v71, vaddq_f32(vaddq_f32(v183, vmulq_laneq_f32(v82, _Q1, 3)), vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL))));
          v176 = v73;
          v177 = v78;
          v178 = v84;
          v70 = &v176;
        }

        v85 = v174;
        (*(*v24 + 112))(v24, v22, v23, v70, &v173, &v176);
        if (v174 != v85)
        {
          goto LABEL_105;
        }

        if (v24[9])
        {
          v2 = *(v6 + 72);
          if (v2 <= v5)
          {
            goto LABEL_117;
          }

          v2 = v6 + 176;
          if ((*(*(v6 + 88) + v8) & 4) == 0)
          {
            if (v1)
            {
              re::AnimationValueTraits<re::GenericSRT<float>>::combine(&v181, v169, v169);
            }

            v86 = *(v6 + 176);
            _Q1 = *(v6 + 192);
            v88 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
            v89 = vnegq_f32(_Q1);
            v90 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v177, v177), v177, 0xCuLL), v89), v177, v88);
            _S7 = v177.i32[3];
            v92 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v90, v90), v90, 0xCuLL), v177, _Q1, 3), _Q1, v177, 3);
            __asm { FMLA            S3, S7, V1.S[3] }

            v92.i32[3] = _S3;
            v94 = vmulq_f32(v86, v176);
            v95 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v178, v178), v178, 0xCuLL), v89), v178, v88);
            v96 = vaddq_f32(v95, v95);
            v97 = vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL);
            v98 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL), v89), v97, v88);
            v99 = vaddq_f32(*(v6 + 208), vmulq_f32(v86, vaddq_f32(vaddq_f32(v178, vmulq_laneq_f32(v97, _Q1, 3)), vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL))));
            v176 = v94;
            v177 = v92;
            v178 = v99;
            goto LABEL_67;
          }

          v101 = *(v6 + 176);
          _Q1 = *(v6 + 192);
          v103 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
          v104 = vnegq_f32(_Q1);
          v105 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v177, v177), v177, 0xCuLL), v104), v177, v103);
          _S7 = v177.i32[3];
          v107 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL), v177, _Q1, 3), _Q1, v177, 3);
          __asm { FMLA            S3, S7, V1.S[3] }

          v107.i32[3] = _S3;
          v109 = vmulq_f32(v101, v176);
          v110 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v178, v178), v178, 0xCuLL), v104), v178, v103);
          v111 = vaddq_f32(v110, v110);
          v112 = vextq_s8(vuzp1q_s32(v111, v111), v111, 0xCuLL);
          v113 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL), v104), v112, v103);
          v114 = vaddq_f32(*(v6 + 208), vmulq_f32(v101, vaddq_f32(vaddq_f32(v178, vmulq_laneq_f32(v112, _Q1, 3)), vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL))));
          v176 = v109;
          v177 = v107;
          v178 = v114;
          if ((v1 & 1) == 0)
          {
LABEL_67:
            re::lerp<float>(v2, &v176, buf, v25);
            v1 = 0;
            v100 = buf[1];
            *v2 = buf[0];
            *(v2 + 16) = v100;
            *(v2 + 32) = buf[2];
            goto LABEL_40;
          }
        }

        else
        {
          v2 = v6 + 176;
          if ((v1 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        re::AnimationValueTraits<re::GenericSRT<float>>::combine(&v181, v2, v2);
        goto LABEL_67;
      }

      v173 = 0;
      v194 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v188 = 136315906;
      *&v188[4] = "operator[]";
      *&v188[12] = 1024;
      *&v188[14] = 789;
      v189 = 2048;
      v190 = 0;
      v191 = 2048;
      v192 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_116:
      v172[0] = 0;
      v194 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v188 = 136315906;
      *&v188[4] = "operator[]";
      *&v188[12] = 1024;
      *&v188[14] = 789;
      v189 = 2048;
      v190 = v5;
      v191 = 2048;
      v192 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_117:
      v172[0] = 0;
      v194 = 0u;
      memset(buf, 0, sizeof(buf));
      v6 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v188 = 136315906;
      *&v188[4] = "operator[]";
      *&v188[12] = 1024;
      *&v188[14] = 789;
      v189 = 2048;
      v190 = v5;
      v191 = 2048;
      v192 = v2;
      _os_log_send_and_compose_impl();
      v148 = _os_crash_msg();
      __break(1u);
LABEL_118:
      v158 = *re::animationLogObjects(v148);
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 48))
        {
          v159 = *(v3 + 56);
        }

        else
        {
          v159 = v3 + 49;
        }

        buf[0].i32[0] = v165;
        *(buf[0].i64 + 4) = v159;
        _os_log_impl(&dword_1E1C61000, v158, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (first frame) value from composition chain.\n", buf, 0xCu);
        v2 = v169;
      }

LABEL_101:
      v149 = *(v6 + 192);
      v150 = vmulq_f32(v149, v149);
      *v150.i8 = vadd_f32(*v150.i8, *&vextq_s8(v150, v150, 8uLL));
      v150.i32[0] = vadd_f32(*v150.i8, vdup_lane_s32(*v150.i8, 1)).u32[0];
      v151 = vrsqrte_f32(v150.u32[0]);
      v152 = vmul_f32(v151, vrsqrts_f32(v150.u32[0], vmul_f32(v151, v151)));
      *(v6 + 192) = vmulq_n_f32(v149, vmul_f32(v152, vrsqrts_f32(v150.u32[0], vmul_f32(v152, v152))).f32[0]);
      v153 = re::BindPoint::baseValueUntyped((v6 + 8));
      if (v153)
      {
        v154 = *v2;
        v155 = *(v2 + 32);
        v153[1] = *(v2 + 16);
        v153[2] = v155;
        *v153 = v154;
        re::BindPoint::markAsWritten(v6 + 8);
      }

      v156 = *(v6 + 72);
      if (v156 <= v5)
      {
        v172[0] = 0;
        v194 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v188 = 136315906;
        *&v188[4] = "operator[]";
        *&v188[12] = 1024;
        *&v188[14] = 789;
        v189 = 2048;
        v190 = v5;
        v191 = 2048;
        v192 = v156;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(*(v6 + 88) + v8) &= ~1u;
LABEL_105:
      (*(*v6 + 32))(v6);
    }
  }
}

float32x4_t re::AnimationValueTraits<re::GenericSRT<float>>::combine(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  _Q1 = a2[1];
  _Q3 = a1[1];
  v5 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
  v6 = vnegq_f32(_Q1);
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v6), _Q3, v5);
  _S7 = _Q3.i32[3];
  v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), _Q3, _Q1, 3), _Q1, _Q3, 3);
  __asm { FMLA            S3, S7, V1.S[3] }

  v9.i32[3] = _Q3.i32[0];
  v14 = a1[2];
  v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), v6), v14, v5);
  v16 = vaddq_f32(v15, v15);
  v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  v18 = vaddq_f32(v14, vmulq_laneq_f32(v17, _Q1, 3));
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v6), v17, v5);
  result = vaddq_f32(a2[2], vmulq_f32(*a2, vaddq_f32(v18, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL))));
  *a3 = vmulq_f32(*a2, *a1);
  a3[1] = v9;
  a3[2] = result;
  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::GenericSRT<float>>::apply(float32x4_t *a1)
{
  result = re::BindPoint::isAlive(&a1->u32[2]);
  if (result)
  {
    if (a1[4].i64[1])
    {

      return re::BindPoint::setValue<re::GenericSRT<float>>(&a1->i64[1], a1 + 11);
    }

    else
    {
      if (a1[6].i8[8] == 1)
      {
        if (re::BindPoint::isOverridden(&a1->u32[2]))
        {
          v3 = re::BindPoint::overrideValueUntyped(&a1->u32[2]);
          v4 = re::BindPoint::baseValueUntyped(&a1->u32[2]);
          if (v4)
          {
            v5 = *v3;
            v6 = v3[2];
            v4[1] = v3[1];
            v4[2] = v6;
            *v4 = v5;
            re::BindPoint::markAsWritten(&a1->i64[1]);
          }
        }
      }

      return re::BindPoint::setIsOverridden(&a1->i64[1], 0);
    }
  }

  return result;
}

uint64_t re::BindPoint::setValue<re::GenericSRT<float>>(uint64_t result, float32x4_t *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(result + 24);
  if (!v2)
  {
    return result;
  }

  v4 = result;
  v32 = 0;
  v33 = 0;
  v34 = 1;
  v35 = 0;
  v36 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v32, v2);
  v5 = 0;
  v6 = 0;
  v7 = *(v4 + 3);
  v8 = v33;
  do
  {
    if (v7 == v6)
    {
      v37 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v38 = 136315906;
      v39 = "operator[]";
      v40 = 1024;
      v41 = 797;
      v42 = 2048;
      v43 = v7;
      v44 = 2048;
      v45 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_36:
      v37 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v38 = 136315906;
      v39 = "operator[]";
      v40 = 1024;
      v41 = 858;
      v42 = 2048;
      v43 = v8;
      v44 = 2048;
      v45 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_37;
    }

    v9 = (*(v4 + 5) + v5);
    if (!*v9)
    {
      v9 = v9[2];
    }

    if (v8 == v6)
    {
      goto LABEL_36;
    }

    if (v34)
    {
      v10 = &v35;
    }

    else
    {
      v10 = v36;
    }

    v10[v6++] = v9;
    v5 += 32;
  }

  while (v2 != v6);
  if (!v8)
  {
LABEL_37:
    v37 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v38 = 136315906;
    v39 = "operator[]";
    v40 = 1024;
    v41 = 858;
    v42 = 2048;
    v43 = 0;
    v44 = 2048;
    v45 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  if (v34)
  {
    v11 = &v35;
  }

  else
  {
    v11 = v36;
  }

  v12 = *v11;
  v13 = v2 - 1;
  v14 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v32, 1uLL, v2 - 1);
  v16 = (*(*v12 + 120))(v12, 0, v14, v15);
  if (v16)
  {
    v17 = v16;
    if (!re::BindPoint::isOverridden(v4) || (v18 = vmvnq_s8(vceqq_f32(*v17, *a2)), v18.i32[3] = v18.i32[2], (vmaxvq_u32(v18) & 0x80000000) != 0) || (vmaxvq_u32(vmvnq_s8(vceqq_f32(v17[1], a2[1]))) & 0x80000000) != 0 || (v19 = vmvnq_s8(vceqq_f32(v17[2], a2[2])), v19.i32[3] = v19.i32[2], (vmaxvq_u32(v19) & 0x80000000) != 0))
    {
      re::BindPoint::willSet(v4);
      v20 = *a2;
      v21 = a2[2];
      v17[1] = a2[1];
      v17[2] = v21;
      *v17 = v20;
      re::BindPoint::setIsOverridden(v4, 1);
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (!v33)
  {
LABEL_38:
    v37 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v38 = 136315906;
    v39 = "operator[]";
    v40 = 1024;
    v41 = 858;
    v42 = 2048;
    v43 = 0;
    v44 = 2048;
    v45 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v34)
  {
    v22 = &v35;
  }

  else
  {
    v22 = v36;
  }

  v23 = *v22;
  v24 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v32, 1uLL, v13);
  v26 = (*(*v23 + 88))(v23, 0, v24, v25);
  if (v26)
  {
    v27 = v26;
    v28 = vmvnq_s8(vceqq_f32(*v26, *a2));
    v28.i32[3] = v28.i32[2];
    if ((vmaxvq_u32(v28) & 0x80000000) != 0 || (vmaxvq_u32(vmvnq_s8(vceqq_f32(v26[1], a2[1]))) & 0x80000000) != 0 || (v29 = vmvnq_s8(vceqq_f32(v26[2], a2[2])), v29.i32[3] = v29.i32[2], (vmaxvq_u32(v29) & 0x80000000) != 0))
    {
      re::BindPoint::willSet(v4);
      v30 = *a2;
      v31 = a2[2];
      v27[1] = a2[1];
      v27[2] = v31;
      *v27 = v30;
LABEL_30:
      re::BindPoint::markAsWritten(v4);
    }
  }

LABEL_31:
  result = v32;
  if (v32)
  {
    if ((v34 & 1) == 0)
    {
      return (*(*v32 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::GenericSRT<float>>::takeSnapshot(uint64_t result)
{
  v1 = result;
  if (*(result + 72))
  {
    if ((*(result + 112) & 1) == 0)
    {
      *(result + 112) = 1;
    }

    v2 = *(result + 192);
    *(result + 128) = *(result + 176);
    *(result + 144) = v2;
    v3 = *(result + 208);
    goto LABEL_14;
  }

  if (re::BindPoint::supportsOverrideValue((result + 8)))
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 128) = 0x3F8000003F800000;
      *(v1 + 136) = 1065353216;
      *(v1 + 144) = 0;
      *(v1 + 152) = 0x3F80000000000000;
      *(v1 + 160) = 0;
      *(v1 + 168) = 0;
    }

    result = re::BindPoint::baseValueUntyped((v1 + 8));
LABEL_13:
    v4 = *(result + 16);
    v3 = *(result + 32);
    *(v1 + 128) = *result;
    *(v1 + 144) = v4;
LABEL_14:
    *(v1 + 160) = v3;
    return result;
  }

  result = re::BindPoint::isAlive((v1 + 8));
  if (result)
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 128) = 0x3F8000003F800000;
      *(v1 + 136) = 1065353216;
      *(v1 + 144) = 0;
      *(v1 + 152) = 0x3F80000000000000;
      *(v1 + 160) = 0;
      *(v1 + 168) = 0;
    }

    result = re::BindPoint::valueUntyped((v1 + 8));
    goto LABEL_13;
  }

  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::SkeletalPose>::~AnimationCompositionChain(uint64_t a1)
{
  *a1 = &unk_1F5CACE98;
  re::internal::AnimationCompositionChain<re::SkeletalPose>::deinit(a1);
  re::SkeletalPose::~SkeletalPose((a1 + 208));
  if (*(a1 + 112) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 120));
  }

  *a1 = &unk_1F5CAD030;
  re::DynamicArray<unsigned long>::deinit(a1 + 56);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  return a1;
}

void re::internal::AnimationCompositionChain<re::SkeletalPose>::~AnimationCompositionChain(uint64_t a1)
{
  re::internal::AnimationCompositionChain<re::SkeletalPose>::~AnimationCompositionChain(a1);

  JUMPOUT(0x1E6906520);
}

void re::internal::AnimationCompositionChain<re::SkeletalPose>::init(uint64_t a1, void *a2)
{
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<re::BindPoint::BindPointData>::operator=(a1 + 16, a2 + 1);
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 56), 0);
  ++*(a1 + 80);
  v5 = re::BindPoint::baseValueUntyped(v3);
  if (!v5[10] && *(re::BindPoint::overrideValueUntyped(v3) + 80))
  {
    v6 = re::BindPoint::overrideValueUntyped(v3);
    re::AnimationValueTraits<re::SkeletalPose>::init(v5, v6);
  }

  re::AnimationValueTraits<re::SkeletalPose>::init((a1 + 208), v5);
}

void re::AnimationValueTraits<re::SkeletalPose>::init(uint64_t *a1, uint64_t a2)
{
  if (a1[3])
  {
    re::SkeletalPose::reset(a1, (a2 + 80));
  }

  else
  {
    re::SkeletalPose::init(a1, (a2 + 80));
  }
}

uint64_t re::internal::AnimationCompositionChain<re::SkeletalPose>::deinit(uint64_t result)
{
  v1 = result + 56;
  if (*(result + 56))
  {
    v2 = result;
    re::internal::AnimationCompositionChain<re::SkeletalPose>::clearSnapshot(result);
    re::SkeletalPose::deinit((v2 + 208));

    return re::DynamicArray<unsigned long>::deinit(v1);
  }

  return result;
}

void re::internal::AnimationCompositionChain<re::SkeletalPose>::clearSnapshot(uint64_t a1)
{
  v1 = a1 + 112;
  if (*(a1 + 112) == 1)
  {
    re::SkeletalPose::deinit((a1 + 120));
    v2[0] = 0;
    re::Optional<re::SkeletalPose>::operator=(v1, v2);
    if (v2[0] == 1)
    {
      re::SkeletalPose::~SkeletalPose(&v3);
    }
  }
}

void re::internal::AnimationCompositionChain<re::SkeletalPose>::update(uint64_t a1)
{
  v111 = *MEMORY[0x1E69E9840];
  v77 = *(a1 + 72);
  if (!v77)
  {
    return;
  }

  v4 = a1;
  if (!re::BindPoint::isAlive((a1 + 8)))
  {
    return;
  }

  v94 = 0;
  v95 = 0;
  v92 = 0u;
  v93 = 0u;
  v90[0] = 0;
  v91 = 0u;
  v5 = &str_67;
  v90[1] = &str_67;
  v96 = 0;
  v97 = 0;
  v75 = re::BindPoint::supportsOverrideValue((v4 + 8));
  if (v75)
  {
    v6 = re::BindPoint::baseValueUntyped((v4 + 8));
  }

  else
  {
    v6 = v90;
    re::AnimationValueTraits<re::SkeletalPose>::init(v90, v4 + 208);
    v97 = 1;
    if (*(&v91 + 1))
    {
      v7 = v92;
      v8 = (v92 + 48 * *(&v91 + 1));
      do
      {
        *v7 = 0x3F8000003F800000;
        v7[1] = 1065353216;
        v7[2] = 0;
        v7[3] = 0x3F80000000000000;
        v7[4] = 0;
        v7[5] = 0;
        v7 += 6;
      }

      while (v7 != v8);
      v6 = v90;
    }
  }

  if (*(v4 + 112))
  {
    v9 = (v4 + 120);
  }

  else
  {
    v9 = v6;
  }

  v10 = (v4 + 208);
  v11 = re::AnimationValueTraits<re::SkeletalPose>::copy(v9, (v4 + 208));
  v12 = re::animationLogObjects(v11);
  v13 = re::AnimationLogObjects::loggingEnabled(v12);
  if (v13)
  {
LABEL_123:
    v64 = *re::animationLogObjects(v13);
    v13 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      v65 = re::BindPoint::overrideValueUntyped((v4 + 8));
      *v98 = 134217984;
      *&v98[4] = v65;
      _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "ANIM: -------------- Target: %p -----------------\n", v98, 0xCu);
    }
  }

  v100 = 0u;
  v101 = 0u;
  *v98 = 0;
  v99 = 0u;
  *&v98[8] = v5;
  v102 = 0uLL;
  v103 = 0uLL;
  v86 = 0u;
  v87 = 0u;
  v84[0] = 0;
  v85 = 0u;
  v84[1] = v5;
  v88 = 0uLL;
  v89 = 0uLL;
  if (!*(v4 + 72))
  {
    v81 = 0;
    v110 = 0uLL;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v104 = 136315906;
    *&v104[4] = "operator[]";
    *&v104[12] = 1024;
    *&v104[14] = 789;
    v105 = 2048;
    v106 = 0;
    v107 = 2048;
    v108 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v80[0] = 0;
    v110 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v104 = 136315906;
    *&v104[4] = "operator[]";
    *&v104[12] = 1024;
    *&v104[14] = 789;
    v105 = 2048;
    v106 = v3;
    v107 = 2048;
    v108 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v80[0] = 0;
    v110 = 0u;
    memset(buf, 0, sizeof(buf));
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v104 = 136315906;
    *&v104[4] = "operator[]";
    *&v104[12] = 1024;
    *&v104[14] = 789;
    v105 = 2048;
    v106 = v3;
    v107 = 2048;
    v108 = v6;
    _os_log_send_and_compose_impl();
    v59 = _os_crash_msg();
    __break(1u);
LABEL_128:
    v66 = *re::animationLogObjects(v59);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[6])
      {
        v67 = v1[7];
      }

      else
      {
        v67 = v1 + 49;
      }

      *buf = v73;
      *&buf[4] = v67;
      _os_log_impl(&dword_1E1C61000, v66, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (first frame) value from composition chain.\n", buf, 0xCu);
    }

    goto LABEL_111;
  }

  v3 = 0;
  v79 = 0;
  v14 = *(*(v4 + 88) + 16);
  v74 = v6;
  v81 = v6;
  v5 = 20;
  v82 = 0;
  v83 = 0;
  v73 = 136315138;
  v76 = v75;
  while (1)
  {
    v15 = *(v4 + 72);
    if (v15 <= v3)
    {
      v80[0] = 0;
      v110 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v104 = 136315906;
      *&v104[4] = "operator[]";
      *&v104[12] = 1024;
      *&v104[14] = 789;
      v105 = 2048;
      v106 = v3;
      v107 = 2048;
      v108 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_117:
      v80[0] = 0;
      v110 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v104 = 136315906;
      *&v104[4] = "operator[]";
      *&v104[12] = 1024;
      *&v104[14] = 789;
      v105 = 2048;
      v106 = v3;
      v107 = 2048;
      v108 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_118:
      re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash();
      __break(1u);
LABEL_119:
      v80[0] = 0;
      v110 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v104 = 136315906;
      *&v104[4] = "operator[]";
      *&v104[12] = 1024;
      *&v104[14] = 476;
      v105 = 2048;
      v106 = v2;
      v107 = 2048;
      v108 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_120:
      v80[0] = 0;
      v110 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v104 = 136315906;
      *&v104[4] = "operator[]";
      *&v104[12] = 1024;
      *&v104[14] = 789;
      v105 = 2048;
      v106 = v3;
      v107 = 2048;
      v108 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_121:
      v80[0] = 0;
      v110 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v104 = 136315906;
      *&v104[4] = "operator[]";
      *&v104[12] = 1024;
      *&v104[14] = 789;
      v105 = 2048;
      v106 = v3;
      v107 = 2048;
      v108 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_122:
      v80[0] = 0;
      v110 = 0u;
      memset(buf, 0, sizeof(buf));
      v4 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v104 = 136315906;
      *&v104[4] = "operator[]";
      *&v104[12] = 1024;
      *&v104[14] = 789;
      v105 = 2048;
      v106 = v3;
      v107 = 2048;
      v108 = v6;
      _os_log_send_and_compose_impl();
      v13 = _os_crash_msg();
      __break(1u);
      goto LABEL_123;
    }

    if (((v14 != *(*(v4 + 88) + v5 - 4)) & v79) == 1)
    {
      re::AnimationValueTraits<re::SkeletalPose>::combine(v98, v10, v10);
      v79 = 0;
      v15 = *(v4 + 72);
    }

    if (v15 <= v3)
    {
      goto LABEL_117;
    }

    v16 = *(v4 + 88) + v5;
    v78 = *(v16 - 4);
    v1 = *(v16 - 20);
    v17 = *(v16 - 12);
    v18 = re::animationLogObjects(v13);
    v19 = re::AnimationLogObjects::loggingEnabled(v18);
    if (v19)
    {
      v40 = *re::animationLogObjects(v19);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        if (v1[6])
        {
          v41 = v1[7];
        }

        else
        {
          v41 = v1 + 49;
        }

        *buf = 134218754;
        *&buf[4] = v3;
        *&buf[12] = 2048;
        *&buf[14] = v1;
        *&buf[22] = 1024;
        *&buf[24] = v17;
        *&buf[28] = 2080;
        *&buf[30] = v41;
        _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "ANIM: #%zu: %p(%d) %s\n", buf, 0x26u);
      }
    }

    ClocksOfSubtree = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v1, v17);
    if (!v21)
    {
      goto LABEL_118;
    }

    v22 = ClocksOfSubtree;
    v23 = v21;
    v2 = v17;
    v24 = re::internal::TimelineTree::source(v1, v17);
    v25 = v24;
    if ((v22[16] & 1) == 0)
    {
      v28 = re::animationLogObjects(v24);
      v29 = re::AnimationLogObjects::loggingEnabled(v28);
      if (v29)
      {
        v6 = *re::animationLogObjects(v29);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          log = v6;
          v6 = *(re::internal::TimelineTree::source(v1, v2) + 32);
          if (*v22 == 2)
          {
            v2 = "Delayed";
          }

          else
          {
            v2 = "Completed";
          }

          *v104 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v1, 0);
          *&v104[8] = v42;
          v43 = re::Slice<re::AnimationClock>::operator[](v104, 0);
          if (*(v43 + 16))
          {
            v44 = *(v43 + 24);
          }

          else
          {
            v44 = 0;
          }

          *buf = 136315650;
          *&buf[4] = v6;
          *&buf[12] = 2080;
          *&buf[14] = v2;
          *&buf[22] = 2048;
          *&buf[24] = v44;
          _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s skipped, %s. Root Time: %f\n", buf, 0x20u);
        }
      }

      goto LABEL_26;
    }

    v6 = v1[26];
    if (v6 <= v2)
    {
      goto LABEL_119;
    }

    v26 = *(v1[27] + 4 * v2);
    v27 = fabsf(v26);
    if (v27 >= 0.00001)
    {
      break;
    }

    v13 = re::AnimationValueTraits<re::SkeletalPose>::copy(v10, v10);
LABEL_27:
    ++v3;
    v5 += 24;
    v14 = v78;
    if (v77 == v3)
    {
      if (v79)
      {
        re::AnimationValueTraits<re::SkeletalPose>::combine(v98, v10, v10);
      }

      goto LABEL_102;
    }
  }

  v30 = re::animationLogObjects(v24);
  v31 = re::AnimationLogObjects::loggingEnabled(v30);
  if (v31)
  {
    v45 = *re::animationLogObjects(v31);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v70 = *(v25 + 4);
      v69 = re::BindPoint::valueUntyped((v4 + 8));
      loga = v45;
      if (v22[16] == 1)
      {
        v68 = *(v22 + 3);
      }

      else
      {
        v68 = 0;
      }

      v46 = re::internal::TimelineTree::source(v1, v2);
      v47 = (*(*v46 + 40))(v46);
      *v104 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v1, 0);
      *&v104[8] = v48;
      v49 = re::Slice<re::AnimationClock>::operator[](v104, 0);
      if (*(v49 + 16))
      {
        v50 = *(v49 + 24);
      }

      else
      {
        v50 = 0;
      }

      v80[0] = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v1, 0);
      v80[1] = v51;
      v52 = re::Slice<re::AnimationClock>::operator[](v80, 0);
      v53 = re::AnimationClock::clockStateToName(v52);
      v54 = *(v25 + 72);
      *buf = 136316674;
      *&buf[4] = v70;
      *&buf[12] = 2048;
      *&buf[14] = v69;
      *&buf[22] = 2048;
      *&buf[24] = v68;
      *&buf[32] = 2048;
      *&buf[34] = v47;
      *&buf[42] = 2048;
      *&buf[44] = v50;
      *&buf[52] = 2080;
      *&buf[54] = v53;
      *&buf[62] = 1024;
      LODWORD(v110) = v54;
      _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s, Target: %p, Clock %f / %f, Root Time: %f, ClockState: '%s', additive: %d\n", buf, 0x44u);
    }
  }

  if (v26 != 1.0)
  {
    v32.f32[0] = ((v27 + 1.0) + 1.0) * 0.00001;
    if (fabsf(v26 + -1.0) >= v32.f32[0])
    {
      if ((BYTE8(v89) & 1) == 0)
      {
        re::AnimationValueTraits<re::SkeletalPose>::init(v84, v10);
        BYTE8(v89) = 1;
      }

      v6 = v82;
      v1 = v10;
      if (v79)
      {
        v1 = v84;
        v32 = re::AnimationValueTraits<re::SkeletalPose>::combine(v98, v10, v84);
      }

      (*(*v25 + 112))(v25, v22, v23, v1, &v81, v84, v32);
      if (v82 != v6)
      {
        goto LABEL_115;
      }

      if (*(v25 + 72))
      {
        v6 = *(v4 + 72);
        if (v6 <= v3)
        {
          goto LABEL_127;
        }

        if ((*(*(v4 + 88) + v5) & 4) == 0)
        {
          if (v79)
          {
            re::AnimationValueTraits<re::SkeletalPose>::combine(v98, v10, v10);
          }

          v37 = v84;
          v38 = v84;
          v39 = v10;
          goto LABEL_72;
        }

        re::AnimationValueTraits<re::SkeletalPose>::combine(v84, v10, v84);
      }

      if ((v79 & 1) == 0)
      {
LABEL_73:
        re::AnimationValueTraits<re::SkeletalPose>::interpolate(v10, v84, v10, v26);
        v79 = 0;
        goto LABEL_27;
      }

      v37 = v98;
      v39 = v10;
      v38 = v10;
LABEL_72:
      re::AnimationValueTraits<re::SkeletalPose>::combine(v37, v39, v38);
      goto LABEL_73;
    }
  }

  v6 = *(v4 + 72);
  if (v6 <= v3)
  {
    goto LABEL_120;
  }

  *(*(v4 + 88) + v5) &= ~4u;
  if ((*(v25 + 72) & 1) == 0)
  {
    v83 = 1;
LABEL_26:
    v13 = (*(*v25 + 112))(v25, v22, v23, v10, &v81, v10);
    goto LABEL_27;
  }

  if ((BYTE8(v89) & 1) == 0)
  {
    re::AnimationValueTraits<re::SkeletalPose>::init(v84, v10);
    BYTE8(v89) = 1;
  }

  v2 = v10;
  if (v79)
  {
    v2 = v84;
    v32 = re::AnimationValueTraits<re::SkeletalPose>::combine(v98, v10, v84);
  }

  (*(*v25 + 112))(v25, v22, v23, v2, &v81, v84, v32);
  if (!v75)
  {
    goto LABEL_42;
  }

  v6 = *(v4 + 72);
  if (v6 <= v3)
  {
    goto LABEL_121;
  }

  if ((*(*(v4 + 88) + v5) & 1) == 0 || v22[32] != 1)
  {
LABEL_42:
    if ((BYTE8(v103) & 1) == 0)
    {
      re::AnimationValueTraits<re::SkeletalPose>::init(v98, v10);
      BYTE8(v103) = 1;
    }

    if (v79)
    {
      re::AnimationValueTraits<re::SkeletalPose>::combine(v84, v98, v98);
    }

    else
    {
      v13 = re::AnimationValueTraits<re::SkeletalPose>::copy(v84, v98);
    }

    if (v76)
    {
      v6 = *(v4 + 72);
      if (v6 <= v3)
      {
        goto LABEL_122;
      }

      v76 = 0;
      v79 = 1;
      if ((*(*(v4 + 88) + v5) & 2) != 0 && *v22 == 5)
      {
        v33 = re::animationLogObjects(v13);
        v34 = re::AnimationLogObjects::loggingEnabled(v33);
        if (v34)
        {
          v55 = *re::animationLogObjects(v34);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            if (v1[6])
            {
              v56 = v1[7];
            }

            else
            {
              v56 = v1 + 49;
            }

            *buf = 136315138;
            *&buf[4] = v56;
            _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (last frame) value on last frame, from composition chain.\n", buf, 0xCu);
          }
        }

        re::AnimationValueTraits<re::SkeletalPose>::combine(v98, v10, v10);
        v13 = re::BindPoint::baseValueUntyped((v4 + 8));
        if (v13)
        {
          v35 = v13;
          v36 = re::StringID::operator=(v13, v10);
          re::FixedArray<re::GenericSRT<float>>::operator=(v36 + 2, v4 + 224);
          re::DynamicArray<BOOL>::operator=(v35 + 40, (v4 + 248));
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v35 + 80), *(v4 + 288));
          v13 = re::BindPoint::markAsWritten(v4 + 8);
        }

        v6 = *(v4 + 72);
        if (v6 <= v3)
        {
          goto LABEL_126;
        }

        v79 = 0;
        *(*(v4 + 88) + v5) &= ~2u;
        v76 = 1;
        *v22 = 1;
      }
    }

    else
    {
      v76 = 0;
      v79 = 1;
    }

    goto LABEL_27;
  }

  re::AnimationValueTraits<re::SkeletalPose>::invert(v84, v10);
  re::AnimationValueTraits<re::SkeletalPose>::combine(v10, v74, v10);
  v58 = re::animationLogObjects(v57);
  v59 = re::AnimationLogObjects::loggingEnabled(v58);
  if (v59)
  {
    goto LABEL_128;
  }

LABEL_111:
  v60 = re::BindPoint::baseValueUntyped((v4 + 8));
  if (v60)
  {
    v61 = v60;
    v62 = re::StringID::operator=(v60, v10);
    re::FixedArray<re::GenericSRT<float>>::operator=(v62 + 2, v4 + 224);
    re::DynamicArray<BOOL>::operator=((v61 + 5), (v4 + 248));
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v61 + 10, *(v4 + 288));
    re::BindPoint::markAsWritten(v4 + 8);
  }

  v63 = *(v4 + 72);
  if (v63 <= v3)
  {
    v80[0] = 0;
    v110 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v104 = 136315906;
    *&v104[4] = "operator[]";
    *&v104[12] = 1024;
    *&v104[14] = 789;
    v105 = 2048;
    v106 = v3;
    v107 = 2048;
    v108 = v63;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(v4 + 88) + v5) &= ~1u;
LABEL_115:
  (*(*v4 + 32))(v4);
LABEL_102:
  if (BYTE8(v89) == 1)
  {
    re::SkeletalPose::deinit(v84);
  }

  re::SkeletalPose::~SkeletalPose(v84);
  if (BYTE8(v103) == 1)
  {
    re::SkeletalPose::deinit(v98);
  }

  re::SkeletalPose::~SkeletalPose(v98);
  if (v97 == 1)
  {
    re::SkeletalPose::deinit(v90);
  }

  re::SkeletalPose::~SkeletalPose(v90);
}

uint64_t re::internal::AnimationCompositionChain<re::SkeletalPose>::apply(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  result = re::BindPoint::isAlive((a1 + 8));
  if (!result)
  {
    return result;
  }

  if (!*(a1 + 72))
  {
    if (*(a1 + 104) == 1)
    {
      if (re::BindPoint::isOverridden((a1 + 8)))
      {
        v17 = re::BindPoint::overrideValueUntyped((a1 + 8));
        v18 = re::BindPoint::baseValueUntyped((a1 + 8));
        if (v18)
        {
          v19 = v18;
          v20 = re::StringID::operator=(v18, v17);
          re::FixedArray<re::GenericSRT<float>>::operator=(v20 + 2, (v17 + 2));
          re::DynamicArray<BOOL>::operator=((v19 + 5), v17 + 5);
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v19 + 10, v17[10]);
          re::BindPoint::markAsWritten(a1 + 8);
        }
      }
    }

    return re::BindPoint::setIsOverridden(a1 + 8, 0);
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return result;
  }

  v28 = 0;
  v29 = 0;
  v30 = 1;
  v31 = 0;
  v32 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v28, v3);
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 32);
  v7 = v29;
  do
  {
    if (v6 == v5)
    {
      v33 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v34 = 136315906;
      v35 = "operator[]";
      v36 = 1024;
      v37 = 797;
      v38 = 2048;
      v39 = v6;
      v40 = 2048;
      v41 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_43:
      v33 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v34 = 136315906;
      v35 = "operator[]";
      v36 = 1024;
      v37 = 858;
      v38 = 2048;
      v39 = v7;
      v40 = 2048;
      v41 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_44;
    }

    v8 = (*(a1 + 48) + v4);
    if (!*v8)
    {
      v8 = v8[2];
    }

    if (v7 == v5)
    {
      goto LABEL_43;
    }

    if (v30)
    {
      v9 = &v31;
    }

    else
    {
      v9 = v32;
    }

    v9[v5++] = v8;
    v4 += 32;
  }

  while (v3 != v5);
  if (!v7)
  {
LABEL_44:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    v37 = 858;
    v38 = 2048;
    v39 = 0;
    v40 = 2048;
    v41 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

  if (v30)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v32;
  }

  v11 = *v10;
  v12 = v3 - 1;
  v13 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v28, 1uLL, v3 - 1);
  v15 = (*(*v11 + 120))(v11, 0, v13, v14);
  if (v15)
  {
    v16 = v15;
    if (!re::BindPoint::isOverridden((a1 + 8)) || v16[10] != *(a1 + 288) || (re::FixedArray<re::GenericSRT<float>>::operator==((v16 + 2), *(a1 + 232), *(a1 + 240)) & 1) == 0)
    {
      re::BindPoint::willSet(a1 + 8);
      re::StringID::operator=(v16, (a1 + 208));
      re::FixedArray<re::GenericSRT<float>>::operator=(v16 + 2, a1 + 224);
      re::DynamicArray<BOOL>::operator=((v16 + 5), (a1 + 248));
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v16 + 10, *(a1 + 288));
      re::BindPoint::setIsOverridden(a1 + 8, 1);
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (!v29)
  {
LABEL_45:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    v37 = 858;
    v38 = 2048;
    v39 = 0;
    v40 = 2048;
    v41 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v30)
  {
    v21 = &v31;
  }

  else
  {
    v21 = v32;
  }

  v22 = *v21;
  v23 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v28, 1uLL, v12);
  v25 = (*(*v22 + 88))(v22, 0, v23, v24);
  if (v25)
  {
    v26 = v25;
    v27 = (v25 + 80);
    if (*(v25 + 80) != *(a1 + 288) || (re::FixedArray<re::GenericSRT<float>>::operator==(v25 + 16, *(a1 + 232), *(a1 + 240)) & 1) == 0)
    {
      re::BindPoint::willSet(a1 + 8);
      re::StringID::operator=(v26, (a1 + 208));
      re::FixedArray<re::GenericSRT<float>>::operator=(v26 + 2, a1 + 224);
      re::DynamicArray<BOOL>::operator=((v26 + 5), (a1 + 248));
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v27, *(a1 + 288));
LABEL_37:
      re::BindPoint::markAsWritten(a1 + 8);
    }
  }

LABEL_38:
  result = v28;
  if (v28)
  {
    if ((v30 & 1) == 0)
    {
      return (*(*v28 + 40))();
    }
  }

  return result;
}

void re::internal::AnimationCompositionChain<re::SkeletalPose>::takeSnapshot(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if ((*(a1 + 112) & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v6 = 0u;
      v7 = 0u;
      v3 = 0;
      v5 = 0u;
      v4 = &str_67;
      v10 = 0;
      re::Optional<re::SkeletalPose>::Optional(v11, &v3);
      re::Optional<re::SkeletalPose>::operator=(a1 + 112, v11);
      if (v11[0] == 1)
      {
        re::SkeletalPose::~SkeletalPose(v12);
      }

      re::SkeletalPose::~SkeletalPose(&v3);
      re::AnimationValueTraits<re::SkeletalPose>::init((a1 + 120), a1 + 208);
    }

    v2 = (a1 + 208);
LABEL_19:
    re::AnimationValueTraits<re::SkeletalPose>::copy(v2, (a1 + 120));
    return;
  }

  if (re::BindPoint::supportsOverrideValue((a1 + 8)))
  {
    if ((*(a1 + 112) & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v6 = 0u;
      v7 = 0u;
      v3 = 0;
      v5 = 0u;
      v4 = &str_67;
      v10 = 0;
      re::Optional<re::SkeletalPose>::Optional(v11, &v3);
      re::Optional<re::SkeletalPose>::operator=(a1 + 112, v11);
      if (v11[0] == 1)
      {
        re::SkeletalPose::~SkeletalPose(v12);
      }

      re::SkeletalPose::~SkeletalPose(&v3);
      re::AnimationValueTraits<re::SkeletalPose>::init((a1 + 120), a1 + 208);
    }

    v2 = re::BindPoint::baseValueUntyped((a1 + 8));
    goto LABEL_19;
  }

  if (re::BindPoint::isAlive((a1 + 8)))
  {
    if ((*(a1 + 112) & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v6 = 0u;
      v7 = 0u;
      v3 = 0;
      v5 = 0u;
      v4 = &str_67;
      v10 = 0;
      re::Optional<re::SkeletalPose>::Optional(v11, &v3);
      re::Optional<re::SkeletalPose>::operator=(a1 + 112, v11);
      if (v11[0] == 1)
      {
        re::SkeletalPose::~SkeletalPose(v12);
      }

      re::SkeletalPose::~SkeletalPose(&v3);
      re::AnimationValueTraits<re::SkeletalPose>::init((a1 + 120), a1 + 208);
    }

    v2 = re::BindPoint::valueUntyped((a1 + 8));
    goto LABEL_19;
  }

  re::internal::AnimationCompositionChain<re::SkeletalPose>::clearSnapshot(a1);
}

uint64_t re::Optional<re::SkeletalPose>::Optional(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  re::StringID::StringID((a1 + 8), a2);
  re::FixedArray<re::GenericSRT<float>>::FixedArray((a1 + 24), a2 + 16);
  re::DynamicArray<BOOL>::DynamicArray(a1 + 48, (a2 + 40));
  v4 = *(a2 + 80);
  *(a1 + 88) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  return a1;
}

uint64_t re::Optional<re::SkeletalPose>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = (a1 + 8);
    if (*a2)
    {
      re::StringID::operator=(v4, (a2 + 8));
      re::FixedArray<re::GenericSRT<float>>::operator=((a1 + 24), a2 + 24);
      re::DynamicArray<BOOL>::operator=(a1 + 48, (a2 + 48));
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 88), *(a2 + 88));
    }

    else
    {
      re::SkeletalPose::~SkeletalPose(v4);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::StringID::StringID((a1 + 8), (a2 + 8));
    re::FixedArray<re::GenericSRT<float>>::FixedArray((a1 + 24), a2 + 24);
    re::DynamicArray<BOOL>::DynamicArray(a1 + 48, (a2 + 48));
    v5 = *(a2 + 88);
    *(a1 + 88) = v5;
    if (v5)
    {
      v6 = (v5 + 8);
    }
  }

  return a1;
}

uint64_t re::internal::AnimationCompositionChain<re::BlendShapeWeights>::~AnimationCompositionChain(uint64_t a1)
{
  *a1 = &unk_1F5CACEF0;
  re::internal::AnimationCompositionChain<re::BlendShapeWeights>::deinit(a1);
  re::BlendShapeWeights::~BlendShapeWeights((a1 + 152));
  if (*(a1 + 112) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 120));
  }

  *a1 = &unk_1F5CAD030;
  re::DynamicArray<unsigned long>::deinit(a1 + 56);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  return a1;
}

void re::internal::AnimationCompositionChain<re::BlendShapeWeights>::~AnimationCompositionChain(uint64_t a1)
{
  re::internal::AnimationCompositionChain<re::BlendShapeWeights>::~AnimationCompositionChain(a1);

  JUMPOUT(0x1E6906520);
}

void re::internal::AnimationCompositionChain<re::BlendShapeWeights>::init(uint64_t a1, void *a2)
{
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<re::BindPoint::BindPointData>::operator=(a1 + 16, a2 + 1);
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 56), 0);
  ++*(a1 + 80);
  v5 = re::BindPoint::baseValueUntyped(v3);
  v6 = (v5 + 24);
  if (!*(v5 + 24))
  {
    v7 = v5;
    if (*(re::BindPoint::overrideValueUntyped(v3) + 24))
    {
      v8 = re::BindPoint::overrideValueUntyped(v3);
      re::BlendShapeWeights::init(v7, (v8 + 24));
    }
  }

  re::BlendShapeWeights::init((a1 + 152), v6);
}

uint64_t re::internal::AnimationCompositionChain<re::BlendShapeWeights>::deinit(uint64_t result)
{
  v1 = result + 56;
  if (*(result + 56))
  {
    v2 = result;
    re::internal::AnimationCompositionChain<re::BlendShapeWeights>::clearSnapshot(result);
    re::BlendShapeWeights::deinit((v2 + 152));

    return re::DynamicArray<unsigned long>::deinit(v1);
  }

  return result;
}

void re::internal::AnimationCompositionChain<re::BlendShapeWeights>::clearSnapshot(uint64_t a1)
{
  v1 = a1 + 112;
  if (*(a1 + 112) == 1)
  {
    re::BlendShapeWeights::deinit((a1 + 120));
    v2[0] = 0;
    re::Optional<re::BlendShapeWeights>::operator=(v1, v2);
    if (v2[0] == 1)
    {
      re::BlendShapeWeights::~BlendShapeWeights(&v3);
    }
  }
}

void re::internal::AnimationCompositionChain<re::BlendShapeWeights>::update(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v77 = *(a1 + 72);
  if (!v77)
  {
    return;
  }

  v4 = a1;
  if (!re::BindPoint::isAlive((a1 + 8)))
  {
    return;
  }

  v90 = 0;
  v88 = 0u;
  *v89 = 0u;
  v75 = re::BindPoint::supportsOverrideValue((v4 + 8));
  if (v75)
  {
    v5 = re::BindPoint::baseValueUntyped((v4 + 8));
  }

  else
  {
    v5 = &v88;
    re::BlendShapeWeights::init(&v88, (v4 + 176));
    v90 = 1;
    if (*(&v88 + 1))
    {
      bzero(v89[0], 4 * *(&v88 + 1));
      v5 = &v88;
    }
  }

  if (*(v4 + 112))
  {
    v6 = (v4 + 120);
  }

  else
  {
    v6 = v5;
  }

  v7 = v4 + 152;
  v8 = re::AnimationValueTraits<re::BlendShapeWeights>::copy(v6, (v4 + 152));
  v9 = re::animationLogObjects(v8);
  v10 = re::AnimationLogObjects::loggingEnabled(v9);
  if (v10)
  {
LABEL_123:
    v64 = *re::animationLogObjects(v10);
    v10 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v65 = re::BindPoint::overrideValueUntyped((v4 + 8));
      *buf = 134217984;
      *&buf[4] = v65;
      _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "ANIM: -------------- Target: %p -----------------\n", buf, 0xCu);
    }
  }

  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  if (!*(v4 + 72))
  {
    v81 = 0;
    v97 = 0uLL;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v91 = 136315906;
    *&v91[4] = "operator[]";
    *&v91[12] = 1024;
    *&v91[14] = 789;
    v92 = 2048;
    v93 = 0;
    v94 = 2048;
    v95 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v80[0] = 0;
    v97 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v91 = 136315906;
    *&v91[4] = "operator[]";
    *&v91[12] = 1024;
    *&v91[14] = 789;
    v92 = 2048;
    v93 = v3;
    v94 = 2048;
    v95 = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v80[0] = 0;
    v97 = 0u;
    memset(buf, 0, sizeof(buf));
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v91 = 136315906;
    *&v91[4] = "operator[]";
    *&v91[12] = 1024;
    *&v91[14] = 789;
    v92 = 2048;
    v93 = v3;
    v94 = 2048;
    v95 = v1;
    _os_log_send_and_compose_impl();
    v60 = _os_crash_msg();
    __break(1u);
LABEL_128:
    v66 = *re::animationLogObjects(v60);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      if (v2[6])
      {
        v67 = v2[7];
      }

      else
      {
        v67 = v2 + 49;
      }

      *buf = v73;
      *&buf[4] = v67;
      _os_log_impl(&dword_1E1C61000, v66, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (first frame) value from composition chain.\n", buf, 0xCu);
      v7 = v78;
    }

    goto LABEL_111;
  }

  v3 = 0;
  v79 = 0;
  v1 = *(*(v4 + 88) + 16);
  v74 = v5;
  v81 = v5;
  v5 = 20;
  v82 = 0;
  v83 = 0;
  v73 = 136315138;
  v76 = v75;
  v78 = v7;
  while (1)
  {
    v11 = *(v4 + 72);
    if (v11 <= v3)
    {
      v80[0] = 0;
      v97 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v91 = 136315906;
      *&v91[4] = "operator[]";
      *&v91[12] = 1024;
      *&v91[14] = 789;
      v92 = 2048;
      v93 = v3;
      v94 = 2048;
      v95 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_117:
      v80[0] = 0;
      v97 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v91 = 136315906;
      *&v91[4] = "operator[]";
      *&v91[12] = 1024;
      *&v91[14] = 789;
      v92 = 2048;
      v93 = v3;
      v94 = 2048;
      v95 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_118:
      re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash();
      __break(1u);
LABEL_119:
      v80[0] = 0;
      v97 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v91 = 136315906;
      *&v91[4] = "operator[]";
      *&v91[12] = 1024;
      *&v91[14] = 476;
      v92 = 2048;
      v93 = v7;
      v94 = 2048;
      v95 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_120:
      v80[0] = 0;
      v97 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v91 = 136315906;
      *&v91[4] = "operator[]";
      *&v91[12] = 1024;
      *&v91[14] = 789;
      v92 = 2048;
      v93 = v3;
      v94 = 2048;
      v95 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_121:
      v80[0] = 0;
      v97 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v91 = 136315906;
      *&v91[4] = "operator[]";
      *&v91[12] = 1024;
      *&v91[14] = 789;
      v92 = 2048;
      v93 = v3;
      v94 = 2048;
      v95 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_122:
      v80[0] = 0;
      v97 = 0u;
      memset(buf, 0, sizeof(buf));
      v4 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v91 = 136315906;
      *&v91[4] = "operator[]";
      *&v91[12] = 1024;
      *&v91[14] = 789;
      v92 = 2048;
      v93 = v3;
      v94 = 2048;
      v95 = v1;
      _os_log_send_and_compose_impl();
      v10 = _os_crash_msg();
      __break(1u);
      goto LABEL_123;
    }

    if (((v1 != *(*(v4 + 88) + v5 - 4)) & v79) == 1)
    {
      re::AnimationValueTraits<re::BlendShapeWeights>::combine(v86, v7, v7);
      v79 = 0;
      v11 = *(v4 + 72);
    }

    if (v11 <= v3)
    {
      goto LABEL_117;
    }

    v12 = *(v4 + 88) + v5;
    v1 = *(v12 - 4);
    v2 = *(v12 - 20);
    v13 = *(v12 - 12);
    v14 = re::animationLogObjects(v10);
    v15 = re::AnimationLogObjects::loggingEnabled(v14);
    if (v15)
    {
      v37 = *re::animationLogObjects(v15);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        if (v2[6])
        {
          v38 = v2[7];
        }

        else
        {
          v38 = v2 + 49;
        }

        *buf = 134218754;
        *&buf[4] = v3;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        *&buf[22] = 1024;
        *&buf[24] = v13;
        *&buf[28] = 2080;
        *&buf[30] = v38;
        _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "ANIM: #%zu: %p(%d) %s\n", buf, 0x26u);
      }
    }

    ClocksOfSubtree = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, v13);
    if (!v17)
    {
      goto LABEL_118;
    }

    v18 = ClocksOfSubtree;
    v19 = v17;
    v7 = v13;
    v20 = re::internal::TimelineTree::source(v2, v13);
    v21 = v20;
    if ((v18[16] & 1) == 0)
    {
      v25 = re::animationLogObjects(v20);
      v26 = re::AnimationLogObjects::loggingEnabled(v25);
      if (v26)
      {
        v39 = *re::animationLogObjects(v26);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          log = v39;
          v40 = v1;
          v41 = *(re::internal::TimelineTree::source(v2, v7) + 32);
          if (*v18 == 2)
          {
            v42 = "Delayed";
          }

          else
          {
            v42 = "Completed";
          }

          *v91 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, 0);
          *&v91[8] = v43;
          v44 = re::Slice<re::AnimationClock>::operator[](v91, 0);
          if (*(v44 + 16))
          {
            v45 = *(v44 + 24);
          }

          else
          {
            v45 = 0;
          }

          *buf = 136315650;
          *&buf[4] = v41;
          v1 = v40;
          *&buf[12] = 2080;
          *&buf[14] = v42;
          *&buf[22] = 2048;
          *&buf[24] = v45;
          _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s skipped, %s. Root Time: %f\n", buf, 0x20u);
        }
      }

      v7 = v78;
      v10 = (*(*v21 + 112))(v21, v18, v19, v78, &v81, v78);
      goto LABEL_72;
    }

    v22 = v1;
    v1 = v2[26];
    if (v1 <= v7)
    {
      goto LABEL_119;
    }

    v23 = *(v2[27] + 4 * v7);
    v24 = fabsf(v23);
    if (v24 >= 0.00001)
    {
      break;
    }

    v1 = v22;
    v7 = v78;
    v10 = re::AnimationValueTraits<re::BlendShapeWeights>::copy(v78, v78);
LABEL_72:
    ++v3;
    v5 += 24;
    if (v77 == v3)
    {
      if (v79)
      {
        re::AnimationValueTraits<re::BlendShapeWeights>::combine(v86, v7, v7);
      }

      goto LABEL_102;
    }
  }

  v27 = re::animationLogObjects(v20);
  v28 = re::AnimationLogObjects::loggingEnabled(v27);
  if (v28)
  {
    v46 = *re::animationLogObjects(v28);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v70 = *(v21 + 4);
      v69 = re::BindPoint::valueUntyped((v4 + 8));
      loga = v46;
      if (v18[16] == 1)
      {
        v68 = *(v18 + 3);
      }

      else
      {
        v68 = 0;
      }

      v47 = re::internal::TimelineTree::source(v2, v7);
      v48 = (*(*v47 + 40))(v47);
      *v91 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, 0);
      *&v91[8] = v49;
      v50 = re::Slice<re::AnimationClock>::operator[](v91, 0);
      if (*(v50 + 16))
      {
        v51 = *(v50 + 24);
      }

      else
      {
        v51 = 0;
      }

      v80[0] = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, 0);
      v80[1] = v52;
      v53 = re::Slice<re::AnimationClock>::operator[](v80, 0);
      v54 = re::AnimationClock::clockStateToName(v53);
      v55 = *(v21 + 72);
      *buf = 136316674;
      *&buf[4] = v70;
      *&buf[12] = 2048;
      *&buf[14] = v69;
      *&buf[22] = 2048;
      *&buf[24] = v68;
      *&buf[32] = 2048;
      *&buf[34] = v48;
      *&buf[42] = 2048;
      *&buf[44] = v51;
      *&buf[52] = 2080;
      *&buf[54] = v54;
      *&buf[62] = 1024;
      LODWORD(v97) = v55;
      _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s, Target: %p, Clock %f / %f, Root Time: %f, ClockState: '%s', additive: %d\n", buf, 0x44u);
    }
  }

  if (v23 != 1.0)
  {
    v29.n128_f32[0] = ((v24 + 1.0) + 1.0) * 0.00001;
    if (fabsf(v23 + -1.0) >= v29.n128_f32[0])
    {
      v7 = v78;
      if ((v85 & 1) == 0)
      {
        re::BlendShapeWeights::init(v84, (v4 + 176));
        LOBYTE(v85) = 1;
      }

      v33 = v82;
      v2 = v78;
      if (v79)
      {
        v2 = v84;
        v29.n128_f32[0] = re::AnimationValueTraits<re::BlendShapeWeights>::combine(v86, v78, v84);
      }

      (*(*v21 + 112))(v21, v18, v19, v2, &v81, v84, v29);
      if (v82 != v33)
      {
        goto LABEL_115;
      }

      if (*(v21 + 72))
      {
        v1 = *(v4 + 72);
        if (v1 <= v3)
        {
          goto LABEL_127;
        }

        v1 = v22;
        if ((*(*(v4 + 88) + v5) & 4) == 0)
        {
          if (v79)
          {
            re::AnimationValueTraits<re::BlendShapeWeights>::combine(v86, v78, v78);
          }

          v34 = v84;
          v35 = v84;
          v36 = v78;
          goto LABEL_70;
        }

        re::AnimationValueTraits<re::BlendShapeWeights>::combine(v84, v78, v84);
      }

      else
      {
        v1 = v22;
      }

      if ((v79 & 1) == 0)
      {
LABEL_71:
        v10 = re::AnimationValueTraits<re::BlendShapeWeights>::interpolate(v78, v84, v78, v23);
        v79 = 0;
        goto LABEL_72;
      }

      v34 = v86;
      v36 = v78;
      v35 = v78;
LABEL_70:
      re::AnimationValueTraits<re::BlendShapeWeights>::combine(v34, v36, v35);
      goto LABEL_71;
    }
  }

  v1 = *(v4 + 72);
  v7 = v78;
  if (v1 <= v3)
  {
    goto LABEL_120;
  }

  *(*(v4 + 88) + v5) &= ~4u;
  if ((*(v21 + 72) & 1) == 0)
  {
    v83 = 1;
    v10 = (*(*v21 + 112))(v21, v18, v19, v78, &v81, v78);
LABEL_43:
    v1 = v22;
    goto LABEL_72;
  }

  v1 = v22;
  if ((v85 & 1) == 0)
  {
    re::BlendShapeWeights::init(v84, (v4 + 176));
    LOBYTE(v85) = 1;
  }

  if (v79)
  {
    v7 = v84;
    v29.n128_f32[0] = re::AnimationValueTraits<re::BlendShapeWeights>::combine(v86, v78, v84);
  }

  (*(*v21 + 112))(v21, v18, v19, v7, &v81, v84, v29);
  v7 = v78;
  if (!v75)
  {
    goto LABEL_38;
  }

  v1 = *(v4 + 72);
  if (v1 <= v3)
  {
    goto LABEL_121;
  }

  v1 = v22;
  if ((*(*(v4 + 88) + v5) & 1) == 0 || v18[32] != 1)
  {
LABEL_38:
    if ((v87 & 1) == 0)
    {
      re::BlendShapeWeights::init(v86, (v4 + 176));
      LOBYTE(v87) = 1;
    }

    if (v79)
    {
      re::AnimationValueTraits<re::BlendShapeWeights>::combine(v84, v86, v86);
    }

    else
    {
      v10 = re::AnimationValueTraits<re::BlendShapeWeights>::copy(v84, v86);
    }

    if ((v76 & 1) == 0)
    {
      v76 = 0;
      v79 = 1;
      goto LABEL_72;
    }

    v1 = *(v4 + 72);
    if (v1 <= v3)
    {
      goto LABEL_122;
    }

    v76 = 0;
    v79 = 1;
    v1 = v22;
    if ((*(*(v4 + 88) + v5) & 2) == 0 || *v18 != 5)
    {
      goto LABEL_72;
    }

    v30 = re::animationLogObjects(v10);
    v31 = re::AnimationLogObjects::loggingEnabled(v30);
    if (v31)
    {
      v56 = *re::animationLogObjects(v31);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        if (v2[6])
        {
          v57 = v2[7];
        }

        else
        {
          v57 = v2 + 49;
        }

        *buf = 136315138;
        *&buf[4] = v57;
        _os_log_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (last frame) value on last frame, from composition chain.\n", buf, 0xCu);
        v7 = v78;
      }
    }

    re::AnimationValueTraits<re::BlendShapeWeights>::combine(v86, v7, v7);
    v10 = re::BindPoint::baseValueUntyped((v4 + 8));
    if (v10)
    {
      v32 = v10;
      re::FixedArray<float>::operator=(v10, v7);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v32 + 24), *(v4 + 176));
      v10 = re::BindPoint::markAsWritten(v4 + 8);
    }

    v1 = *(v4 + 72);
    if (v1 <= v3)
    {
      goto LABEL_126;
    }

    v79 = 0;
    *(*(v4 + 88) + v5) &= ~2u;
    v76 = 1;
    *v18 = 1;
    goto LABEL_43;
  }

  re::AnimationValueTraits<re::BlendShapeWeights>::invert(v84, v78);
  re::AnimationValueTraits<re::BlendShapeWeights>::combine(v78, v74, v78);
  v59 = re::animationLogObjects(v58);
  v60 = re::AnimationLogObjects::loggingEnabled(v59);
  if (v60)
  {
    goto LABEL_128;
  }

LABEL_111:
  v61 = re::BindPoint::baseValueUntyped((v4 + 8));
  if (v61)
  {
    v62 = v61;
    re::FixedArray<float>::operator=(v61, v7);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v62 + 3, *(v4 + 176));
    re::BindPoint::markAsWritten(v4 + 8);
  }

  v63 = *(v4 + 72);
  if (v63 <= v3)
  {
    v80[0] = 0;
    v97 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v91 = 136315906;
    *&v91[4] = "operator[]";
    *&v91[12] = 1024;
    *&v91[14] = 789;
    v92 = 2048;
    v93 = v3;
    v94 = 2048;
    v95 = v63;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(v4 + 88) + v5) &= ~1u;
LABEL_115:
  (*(*v4 + 32))(v4);
LABEL_102:
  if (v85 == 1)
  {
    re::BlendShapeWeights::deinit(v84);
  }

  re::BlendShapeWeights::~BlendShapeWeights(v84);
  if (v87 == 1)
  {
    re::BlendShapeWeights::deinit(v86);
  }

  re::BlendShapeWeights::~BlendShapeWeights(v86);
  if (v90 == 1)
  {
    re::BlendShapeWeights::deinit(&v88);
  }

  re::BlendShapeWeights::~BlendShapeWeights(&v88);
}

uint64_t re::internal::AnimationCompositionChain<re::BlendShapeWeights>::apply(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  result = re::BindPoint::isAlive((a1 + 8));
  if (!result)
  {
    return result;
  }

  if (!*(a1 + 72))
  {
    if (*(a1 + 104) == 1)
    {
      if (re::BindPoint::isOverridden((a1 + 8)))
      {
        v21 = re::BindPoint::overrideValueUntyped((a1 + 8));
        v22 = re::BindPoint::baseValueUntyped((a1 + 8));
        if (v22)
        {
          v23 = v22;
          re::FixedArray<float>::operator=(v22, v21);
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v23 + 3, *(v21 + 24));
          re::BindPoint::markAsWritten(a1 + 8);
        }
      }
    }

    return re::BindPoint::setIsOverridden(a1 + 8, 0);
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return result;
  }

  v35 = 0;
  v36 = 0;
  v37 = 1;
  v38 = 0;
  v39 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v35, v3);
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 32);
  v7 = v36;
  do
  {
    if (v6 == v5)
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
      v44 = 797;
      v45 = 2048;
      v46 = v6;
      v47 = 2048;
      v48 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_53:
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
      v44 = 858;
      v45 = 2048;
      v46 = v7;
      v47 = 2048;
      v48 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_54;
    }

    v8 = (*(a1 + 48) + v4);
    if (!*v8)
    {
      v8 = v8[2];
    }

    if (v7 == v5)
    {
      goto LABEL_53;
    }

    if (v37)
    {
      v9 = &v38;
    }

    else
    {
      v9 = v39;
    }

    v9[v5++] = v8;
    v4 += 32;
  }

  while (v3 != v5);
  if (!v7)
  {
LABEL_54:
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
    v44 = 858;
    v45 = 2048;
    v46 = 0;
    v47 = 2048;
    v48 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  if (v37)
  {
    v10 = &v38;
  }

  else
  {
    v10 = v39;
  }

  v11 = *v10;
  v12 = v3 - 1;
  v13 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v35, 1uLL, v3 - 1);
  v15 = (*(*v11 + 120))(v11, 0, v13, v14);
  if (v15)
  {
    v16 = v15;
    if (!re::BindPoint::isOverridden((a1 + 8)))
    {
      goto LABEL_33;
    }

    if (v16[3] != *(a1 + 176))
    {
      goto LABEL_33;
    }

    v17 = v16[1];
    if (v17 != *(a1 + 160))
    {
      goto LABEL_33;
    }

    if (v17)
    {
      v18 = v16[2];
      v19 = *(a1 + 168);
      v20 = 4 * v17;
      while (*v18 == *v19)
      {
        ++v18;
        ++v19;
        v20 -= 4;
        if (!v20)
        {
          goto LABEL_48;
        }
      }

LABEL_33:
      re::BindPoint::willSet(a1 + 8);
      re::FixedArray<float>::operator=(v16, a1 + 152);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v16 + 3, *(a1 + 176));
      re::BindPoint::setIsOverridden(a1 + 8, 1);
LABEL_47:
      re::BindPoint::markAsWritten(a1 + 8);
    }

    goto LABEL_48;
  }

  if (!v36)
  {
LABEL_55:
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
    v44 = 858;
    v45 = 2048;
    v46 = 0;
    v47 = 2048;
    v48 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v37)
  {
    v24 = &v38;
  }

  else
  {
    v24 = v39;
  }

  v25 = *v24;
  v26 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v35, 1uLL, v12);
  v28 = (*(*v25 + 88))(v25, 0, v26, v27);
  if (v28)
  {
    v29 = v28;
    v30 = v28 + 3;
    if (v28[3] == *(a1 + 176))
    {
      v31 = v28[1];
      if (v31 == *(a1 + 160))
      {
        if (!v31)
        {
          goto LABEL_48;
        }

        v32 = v28[2];
        v33 = *(a1 + 168);
        v34 = 4 * v31;
        while (*v32 == *v33)
        {
          ++v32;
          ++v33;
          v34 -= 4;
          if (!v34)
          {
            goto LABEL_48;
          }
        }
      }
    }

    re::BindPoint::willSet(a1 + 8);
    re::FixedArray<float>::operator=(v29, a1 + 152);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v30, *(a1 + 176));
    goto LABEL_47;
  }

LABEL_48:
  result = v35;
  if (v35)
  {
    if ((v37 & 1) == 0)
    {
      return (*(*v35 + 40))();
    }
  }

  return result;
}

void re::internal::AnimationCompositionChain<re::BlendShapeWeights>::takeSnapshot(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if ((*(a1 + 112) & 1) == 0)
    {
      v3 = 0u;
      v4 = 0u;
      re::Optional<re::BlendShapeWeights>::Optional(v5, &v3);
      re::Optional<re::BlendShapeWeights>::operator=(a1 + 112, v5);
      if (v5[0] == 1)
      {
        re::BlendShapeWeights::~BlendShapeWeights(v6);
      }

      re::BlendShapeWeights::~BlendShapeWeights(&v3);
      re::BlendShapeWeights::init((a1 + 120), (a1 + 176));
    }

    v2 = (a1 + 152);
LABEL_19:
    re::AnimationValueTraits<re::BlendShapeWeights>::copy(v2, (a1 + 120));
    return;
  }

  if (re::BindPoint::supportsOverrideValue((a1 + 8)))
  {
    if ((*(a1 + 112) & 1) == 0)
    {
      v3 = 0u;
      v4 = 0u;
      re::Optional<re::BlendShapeWeights>::Optional(v5, &v3);
      re::Optional<re::BlendShapeWeights>::operator=(a1 + 112, v5);
      if (v5[0] == 1)
      {
        re::BlendShapeWeights::~BlendShapeWeights(v6);
      }

      re::BlendShapeWeights::~BlendShapeWeights(&v3);
      re::BlendShapeWeights::init((a1 + 120), (a1 + 176));
    }

    v2 = re::BindPoint::baseValueUntyped((a1 + 8));
    goto LABEL_19;
  }

  if (re::BindPoint::isAlive((a1 + 8)))
  {
    if ((*(a1 + 112) & 1) == 0)
    {
      v3 = 0u;
      v4 = 0u;
      re::Optional<re::BlendShapeWeights>::Optional(v5, &v3);
      re::Optional<re::BlendShapeWeights>::operator=(a1 + 112, v5);
      if (v5[0] == 1)
      {
        re::BlendShapeWeights::~BlendShapeWeights(v6);
      }

      re::BlendShapeWeights::~BlendShapeWeights(&v3);
      re::BlendShapeWeights::init((a1 + 120), (a1 + 176));
    }

    v2 = re::BindPoint::valueUntyped((a1 + 8));
    goto LABEL_19;
  }

  re::internal::AnimationCompositionChain<re::BlendShapeWeights>::clearSnapshot(a1);
}

uint64_t re::Optional<re::BlendShapeWeights>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = (a1 + 8);
    if (*a2)
    {
      re::FixedArray<float>::operator=(v4, a2 + 8);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 32), *(a2 + 32));
    }

    else
    {
      re::BlendShapeWeights::~BlendShapeWeights(v4);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::FixedArray<float>::FixedArray((a1 + 8), a2 + 8);
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    if (v5)
    {
      v6 = (v5 + 8);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::BindPoint::BindPointData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::BindPoint::BindPointData>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::BindPoint::BindPointData>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::BindPoint::BindPointData>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::BindPoint::BindPointData>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(a1, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = a1[2];
    v13 = a1[4];
    if (v12)
    {
      v14 = 32 * v12;
      do
      {
        re::BindPoint::BindPointData::copy(v13, v11);
        v11 = (v11 + 32);
        v13 = (v13 + 32);
        v14 -= 32;
      }

      while (v14);
      v13 = a1[4];
      v12 = a1[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = (v11 + 32 * v12);
      v16 = (v13 + 32 * v12);
      v17 = 32 * v4 - 32 * v12;
      do
      {
        *v16 = 0u;
        *(v16 + 1) = 0u;
        re::BindPoint::BindPointData::copy(v16, v15);
        v15 = (v15 + 32);
        v16 = (v16 + 32);
        v17 -= 32;
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
      v8 = 32 * v4;
      do
      {
        re::BindPoint::BindPointData::copy(v6, v7);
        v7 = (v7 + 32);
        v6 = (v6 + 32);
        v8 -= 32;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v9 = (v6 + 32 * v4);
      v10 = 32 * v5 - 32 * v4;
      do
      {
        re::BindPoint::BindPointData::deinit(v9);
        v9 = (v9 + 32);
        v10 -= 32;
      }

      while (v10);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::BindPoint::BindPointData>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 32 * v2;
    do
    {
      re::BindPoint::BindPointData::deinit(v3);
      v3 = (v3 + 32);
      v4 -= 32;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void *re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(v5, a2);
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
        v10 = 32 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          re::BindPoint::BindPointData::move(v11, v8);
          re::BindPoint::BindPointData::deinit(v8);
          v8 = (v8 + 32);
          v11 = (v11 + 32);
          v10 -= 32;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

double re::BindPoint::BindPointData::deinit(re::BindPoint::BindPointData *this)
{
  if (*this)
  {
    (**this)(this);
  }

  else
  {
    v3 = *(this + 1);
    if (v3)
    {
      v4 = *(this + 2);
      if (v4)
      {
        (**v4)(*(this + 2));
        (*(*v3 + 40))(v3, v4);
      }
    }
  }

  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t re::PackedDataPtr<re::internal::TimelineTreeState>::get(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == -1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Packed data handle must be valid.", "m_handle.isValid()", "get", 54);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v3 = **(a1 + 1);
  if (!v3)
  {
LABEL_8:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Packed data ptr must not be null.", "packedData", "get", 56);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (v2 >= *v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 8) + v2;
  }
}

{
  v2 = *a1;
  if (v2 == -1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Packed data handle must be valid.", "m_handle.isValid()", "get", 61);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v3 = **(a1 + 1);
  if (!v3)
  {
LABEL_8:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Packed data ptr must not be null.", "packedData", "get", 63);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (v2 >= *v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 8) + v2;
  }
}

char *re::RelativeArray<re::AnimationClock>::operator[](unsigned int *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *a1;
  if (v2)
  {
    v3 = a1 + v2;
  }

  else
  {
    v3 = 0;
  }

  return &v3[72 * a2];
}

{
  if (a1[1] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *a1;
  if (v2)
  {
    v3 = a1 + v2;
  }

  else
  {
    v3 = 0;
  }

  return &v3[72 * a2];
}

void re::SkeletalPose::~SkeletalPose(re::SkeletalPose *this)
{
  v2 = *(this + 10);
  if (v2)
  {

    *(this + 10) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 2);
  re::StringID::destroyString(this);
}

void *re::FixedArray<re::GenericSRT<float>>::FixedArray(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::GenericSRT<float>>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::GenericSRT<float>>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<re::GenericSRT<float>>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 48 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::DynamicArray<BOOL>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<BOOL>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<BOOL>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<BOOL>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<BOOL>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), v5);
      v6 = v3[2];
    }

    else
    {
      v6 = 0;
    }

    result = memcpy(&v6[v3[4]], &v6[*(a2 + 32)], v4 - v6);
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), v4);
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<BOOL>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, a2, 1);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, a2, *(*v4 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<BOOL>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

void re::BlendShapeWeights::~BlendShapeWeights(re::BlendShapeWeights *this)
{
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  re::FixedArray<CoreIKTransform>::deinit(this);
}

uint64_t re::Optional<re::BlendShapeWeights>::Optional(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  re::FixedArray<float>::FixedArray((a1 + 8), a2);
  v4 = *(a2 + 24);
  *(a1 + 32) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  return a1;
}

uint64_t *re::FixedArray<float>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<int>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<float>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<float>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 4 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 24 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
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
      }

      else
      {
        result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::reserve(result, a2);
    v5 = *(v3 + 1);
    if (v5 < a2)
    {
      do
      {
        v6 = v3 + 24;
        if ((*(v3 + 16) & 1) == 0)
        {
          v6 = *(v3 + 4);
        }

        *&v6[8 * v5++] = 0;
      }

      while (a2 != v5);
    }
  }

  *(v3 + 1) = a2;
  *(v3 + 4) += 2;
  return result;
}

uint64_t re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 + 1 <= a2)
  {
    v7 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v8) = 136315906;
    *(&v8 + 4) = "slice";
    WORD6(v8) = 1024;
    HIWORD(v8) = 1186;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  if (__CFADD__(a2, a3))
  {
LABEL_9:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 1192, a2, a3, v4, v7, v8);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 1196, a2, a3, v4);
    _os_crash();
    __break(1u);
  }

  if (a2 + a3 > v4)
  {
    goto LABEL_10;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return v5 + 8 * a2;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::reserve(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if ((*(result + 4) & 1) == 0)
    {
LABEL_3:
      v4 = *(v3 + 3);
      goto LABEL_6;
    }
  }

  else
  {
    result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(v3, a2);
    v5 = *(v3 + 4) + 2;
    *(v3 + 4) = v5;
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 8;
LABEL_6:
  if (v4 < a2)
  {

    return re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(v3, a2);
  }

  return result;
}

void *re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 8 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void *re::FixedArray<re::GenericSRT<float>>::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::GenericSRT<float>>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::GenericSRT<float>>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<BOOL>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<BOOL>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<BOOL>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<BOOL>::copy(a1, a2);
    }
  }

  return a1;
}

void re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (a2)
    {
      v5 = (a2 + 8);
      v2 = *a1;
    }

    if (v2)
    {
    }

    *a1 = a2;
  }
}

uint64_t re::FixedArray<re::GenericSRT<float>>::operator==(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  if (*(a1 + 8) == a2)
  {
    if (!a2)
    {
      return 1;
    }

    v3 = *(a1 + 16);
    v4 = &v3[3 * a2];
    while (1)
    {
      v5 = vceqq_f32(*v3, *a3);
      v5.i32[3] = v5.i32[2];
      if ((vminvq_u32(v5) & 0x80000000) == 0)
      {
        break;
      }

      if ((vminvq_u32(vceqq_f32(v3[1], a3[1])) & 0x80000000) == 0)
      {
        break;
      }

      v6 = vceqq_f32(v3[2], a3[2]);
      v6.i32[3] = v6.i32[2];
      if ((vminvq_u32(v6) & 0x80000000) == 0)
      {
        break;
      }

      v3 += 3;
      a3 += 3;
      if (v3 == v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t *re::FixedArray<float>::operator=(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<int>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<float>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::internal::performRayCastCallback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v13 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a3, a2);
  if (a4 == 1)
  {
LABEL_15:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v15 = v13;
  v16 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a3 + 288, v14);
  if (a4 <= 2)
  {
LABEL_16:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  v18 = v16;
  v19 = *re::RigDataValue::getRuntimeValue<float>(a3 + 576, v17);
  v28[0] = *v15;
  v28[1] = *v18;
  v29 = v19;
  re::internal::RayCaster::cast(a9, v28, v30);
  if (v30[0] == 1)
  {
    if (a8)
    {
      *re::RigDataValue::getRuntimeValue<int>(a7, v20) = 1;
      if (a8 != 1)
      {
        v22 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a7 + 288, v21);
        *v22 = v31;
        if (a8 > 2)
        {
          result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a7 + 576, v23);
          *result = v32;
          return result;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!a8)
  {
LABEL_18:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  *re::RigDataValue::getRuntimeValue<int>(a7, v20) = 0;
  if (a8 == 1)
  {
LABEL_20:
    re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, 1);
    _os_crash();
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 2, 2);
    _os_crash();
    __break(1u);
LABEL_22:
    re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 2, 2);
    _os_crash();
    __break(1u);
  }

  v26 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a7 + 288, v25);
  *v26 = 0;
  v26[1] = 0;
  if (a8 <= 2)
  {
    goto LABEL_22;
  }

  result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a7 + 576, v27);
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t re::RigDataValue::getRuntimeValue<re::Vector3<float>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v7 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v7 + 392) > v5)
    {
      v6 = *(v7 + 400);
      return v6 + 16 * v5;
    }

LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v4 + 176) > v5)
    {
      v6 = *(v4 + 184);
      return v6 + 16 * v5;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::performRayCastCompile(uint64_t a1, const re::RigDataValue **a2, unint64_t a3, re::RigDataValue **a4, unint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = *(*(a1 + 16) + 56);
  v30 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v11 = *a1;
  re::RigGraphCallbackBuilder::init(v26, *a1);
  *&v32.var0 = 0x278AE88E3643096;
  v32.var1 = "inRayOrigin";
  if (!a3)
  {
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_27:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_28:
    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
LABEL_29:
    re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_30:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_31;
  }

  re::RigGraphCallbackBuilder::addInputParam(v26, &v32, *a2);
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  *&v32.var0 = 0x99DEBA556D37A074;
  v32.var1 = "inRayDirection";
  if (a3 == 1)
  {
    goto LABEL_27;
  }

  re::RigGraphCallbackBuilder::addInputParam(v26, &v32, a2[1]);
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  *&v32.var0 = 0x278AE88D7BD4816;
  v32.var1 = "inRayLength";
  if (a3 <= 2)
  {
    goto LABEL_28;
  }

  re::RigGraphCallbackBuilder::addInputParam(v26, &v32, a2[2]);
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  *&v32.var0 = 0xCFE442BDE2A1D5BCLL;
  v32.var1 = "outHitSuccess";
  if (!a5)
  {
    goto LABEL_29;
  }

  re::RigGraphCallbackBuilder::addOutputParam(v26, &v32, *a4);
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  *&v32.var0 = 0x2CA414A24852A074;
  v32.var1 = "outHitLocation";
  if (a5 == 1)
  {
    goto LABEL_30;
  }

  re::RigGraphCallbackBuilder::addOutputParam(v26, &v32, a4[1]);
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  *&v32.var0 = 0x51075CFDCC599558;
  v32.var1 = "outHitNormal";
  if (a5 <= 2)
  {
LABEL_31:
    re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
  }

  re::RigGraphCallbackBuilder::addOutputParam(v26, &v32, a4[2]);
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  v24 = (*(*v11 + 32))(v11, 112, 16);
  *v24 = v10;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 20) = 0xFFFFFFFF00000001;
  *(v24 + 60) = 0u;
  *(v24 + 76) = 0u;
  *(v24 + 88) = 0u;
  *(v24 + 44) = 0u;
  *(v24 + 28) = 0u;
  *(v24 + 64) = 1;
  *(v24 + 72) = 0;
  *(v24 + 80) = 0;
  *(v24 + 88) = 0;
  *(v24 + 96) = 0;
  v31[0] = &unk_1F5CAD088;
  v31[1] = v11;
  v31[3] = v31;
  p_var1 = &v32.var1;
  *&v32.var0 = v24;
  v32.var1 = &unk_1F5CAD088;
  v33 = v11;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v31);
  re::RigGraphCallbackBuilder::buildCallbackData(v26, a1, re::internal::performRayCastCallback, &v32);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v32);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v28 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v26 + 8);
  return 1;
}

void re::internal::generatePenetrationCorrectionIKTargetCallback(int a1, uint64_t a2, re::internal *this, unint64_t a4, int a5, int a6, const re::RigDataValue *a7, uint64_t a8, void *a9)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    re::internal::assertLog(6, a2, this, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  re::internal::getSRTFromRDV(this, &v47);
  if (a4 == 1)
  {
LABEL_13:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v14 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(this + 288, v13);
  if (a4 <= 2)
  {
LABEL_14:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v39 = *v14;
  Runtime = re::RigDataValue::getRuntimeValue<float>(this + 576, v15);
  if (a4 == 3)
  {
LABEL_15:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3, *&v39);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
  }

  v18 = *Runtime;
  re::internal::getSRTFromRDV((this + 864), &v44);
  if (!a8)
  {
    goto LABEL_16;
  }

  v20 = vmulq_f32(v39, v39);
  *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
  *v20.f32 = vrsqrte_f32(v21);
  *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
  v40 = vmulq_n_f32(v39, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
  re::RigDataValue::RigDataValue(v55, a7);
  _Q1 = v45;
  v23 = vextq_s8(vuzp1q_s32(_Q1, _Q1), v45, 0xCuLL);
  v24 = vnegq_f32(v45);
  v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL), v24), v48, v23);
  _S7 = v48.i32[3];
  v27 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v48, v45, 3), v45, v48, 3);
  __asm { FMLA            S3, S7, V1.S[3] }

  v27.i32[3] = _S3;
  v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), v24), v49, v23);
  v34 = vaddq_f32(v33, v33);
  v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
  v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v24), v35, v23);
  v42[0] = vmulq_f32(v44, v47);
  v42[1] = v27;
  v43 = vaddq_f32(v46, vmulq_f32(v44, vaddq_f32(vaddq_f32(v49, vmulq_laneq_f32(v35, v45, 3)), vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL))));
  v50 = vsubq_f32(v43, vmulq_n_f32(v40, v18 * 0.5));
  v51 = v40;
  v52 = v18;
  re::internal::RayCaster::cast(a9, &v50, v53);
  re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(a7, v42);
  if (v53[0] == 1)
  {
    v41[0] = "translation";
    v41[1] = 11;
    re::RigDataValue::attributeValue(a7, v41, &v50);
    v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v50.i64[1], v37);
    *v38 = v54;
    if (v50.i8[0] & 1) == 0 && v51.i64[1] && (LOBYTE(v52))
    {
      (*(*v51.i64[1] + 40))();
    }
  }

  re::RigDataValue::~RigDataValue(v55);
}

_OWORD *re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(uint64_t a1, _OWORD *a2)
{
  v8 = "scale";
  v9 = 5;
  re::RigDataValue::attributeValue(a1, &v8, v10);
  *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v11, v4) = *a2;
  if (v10[0] & 1) == 0 && v12 && (v13)
  {
    (*(*v12 + 40))();
  }

  v8 = "rotation";
  v9 = 8;
  re::RigDataValue::attributeValue(a1, &v8, v10);
  *re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v11, v5) = a2[1];
  if (v10[0] & 1) == 0 && v12 && (v13)
  {
    (*(*v12 + 40))();
  }

  v8 = "translation";
  v9 = 11;
  re::RigDataValue::attributeValue(a1, &v8, v10);
  result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v11, v6);
  *result = a2[2];
  if ((v10[0] & 1) == 0)
  {
    result = v12;
    if (v12)
    {
      if (v13)
      {
        return (*(*v12 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::internal::generatePenetrationCorrectionIKTargetCompile(uint64_t a1, void *a2, unint64_t a3, re::RigDataValue **a4, uint64_t a5)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_39;
  }

  if (a3 == 1)
  {
LABEL_39:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_40;
  }

  if (a3 <= 2)
  {
LABEL_40:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_41;
  }

  if (a3 == 3)
  {
LABEL_41:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_42;
  }

  if (a3 <= 4)
  {
LABEL_42:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash();
    __break(1u);
LABEL_43:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_43;
  }

  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = *a4;
  v11 = *(*a2 + 184);
  v12 = *(v11 + 2);
  v30 = *v11;
  v31 = v12;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v32, v11 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v33, v11 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v34, v11 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v35, v11 + 20);
  re::DynamicArray<re::StringID>::DynamicArray(v36, v11 + 25);
  re::DynamicArray<unsigned long>::DynamicArray(v37, v11 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v40, v11 + 35);
  re::DynamicArray<unsigned long>::DynamicArray(v43, v11 + 40);
  re::StringID::StringID(&v28, v6 + 14);
  re::internal::makeModelSpaceJointPoseRDV(a1, &v30, v29, v50);
  v27 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v13 = *a1;
  re::RigGraphCallbackBuilder::init(v23, *a1);
  *&v47.var0 = 0xBE9DBE8BDF4D9A08;
  v47.var1 = "inModelSpaceJointTransform";
  re::RigGraphCallbackBuilder::addInputParam(v23, &v47, v50);
  if (*&v47.var0)
  {
    if (*&v47.var0)
    {
    }
  }

  *&v47.var0 = 0xA12D024F0067AC76;
  v47.var1 = "inRayCastDirection";
  re::RigGraphCallbackBuilder::addInputParam(v23, &v47, v8);
  if (*&v47.var0)
  {
    if (*&v47.var0)
    {
    }
  }

  *&v47.var0 = 0xA1F853E9BF7E8B54;
  v47.var1 = "inRayCastLength";
  re::RigGraphCallbackBuilder::addInputParam(v23, &v47, v7);
  if (*&v47.var0)
  {
    if (*&v47.var0)
    {
    }
  }

  *&v47.var0 = 0x7C0955B5D8590FELL;
  v47.var1 = "inWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v23, &v47, v9);
  if (*&v47.var0)
  {
    if (*&v47.var0)
    {
    }
  }

  *&v47.var0 = 0xB240A197B4FELL;
  v47.var1 = "outTarget";
  re::RigGraphCallbackBuilder::addOutputParam(v23, &v47, v10);
  if (*&v47.var0)
  {
    if (*&v47.var0)
    {
    }
  }

  v19 = *(*(a1 + 16) + 56);
  v20 = (*(*v13 + 32))(v13, 112, 16);
  *v20 = v19;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 20) = 0xFFFFFFFF00000001;
  *(v20 + 60) = 0u;
  *(v20 + 76) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 44) = 0u;
  *(v20 + 28) = 0u;
  *(v20 + 64) = 1;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0;
  *(v20 + 96) = 0;
  v46[0] = &unk_1F5CAD108;
  v46[1] = v13;
  v46[3] = v46;
  *&v47.var0 = v20;
  p_var1 = &v47.var1;
  v47.var1 = &unk_1F5CAD108;
  v48 = v13;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v46);
  re::RigGraphCallbackBuilder::buildCallbackData(v23, a1, re::internal::generatePenetrationCorrectionIKTargetCallback, &v47);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v47);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v25 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v23 + 8);
  re::RigDataValue::~RigDataValue(v50);
  if (v28)
  {
    if (v28)
    {
    }
  }

  if (v43[0])
  {
    if (v45)
    {
      (*(*v43[0] + 40))();
    }

    v45 = 0;
    memset(v43, 0, sizeof(v43));
    ++v44;
  }

  if (v40[0])
  {
    if (v42)
    {
      (*(*v40[0] + 40))();
    }

    v42 = 0;
    memset(v40, 0, sizeof(v40));
    ++v41;
  }

  if (v37[0])
  {
    if (v39)
    {
      (*(*v37[0] + 40))();
    }

    v39 = 0;
    memset(v37, 0, sizeof(v37));
    ++v38;
  }

  re::DynamicArray<re::StringID>::deinit(v36);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v35);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v34);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v33);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v32);
  return 1;
}

void re::internal::registerPerformRayCastNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8717AC8;
  v11[3] = *&off_1E8717AD8;
  v11[4] = xmmword_1E8717AE8;
  v11[5] = *&off_1E8717AF8;
  v11[0] = xmmword_1E8717AA8;
  v11[1] = *&off_1E8717AB8;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 3uLL, re::internal::performRayCastCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerGeneratePenetrationCorrectionIKTarget(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8717B28;
  v11[3] = *&off_1E8717B38;
  v11[4] = xmmword_1E8717B48;
  v11[5] = *off_1E8717B58;
  v11[0] = xmmword_1E8717B08;
  v11[1] = *&off_1E8717B18;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 5uLL, 1uLL, re::internal::generatePenetrationCorrectionIKTargetCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v7 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v7 + 344) > v5)
    {
      v6 = *(v7 + 352);
      return v6 + 16 * v5;
    }

LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v4 + 128) > v5)
    {
      v6 = *(v4 + 136);
      return v6 + 16 * v5;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v4, v5);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

re::DynamicString *re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        result = re::DynamicString::DynamicString((v8 + 8), (*(a2 + 16) + v5 + 8));
        v7 = *(a2 + 16);
        *(v8 + 40) = *(v7 + v5 + 40);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 56;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        v7 = *(a2 + 16);
        *(result + 40) = *(v7 + v5 + 40);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 56;
    }

    while (v6 < v2);
  }

  return result;
}

double re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 56;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *>(&v14, *(a2 + 32), *(a2 + 32) + 96 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 96 * v8;
      v12 = 96 * v4;
      do
      {
        re::DynamicString::DynamicString((v10 + v11), (v9 + v11));
        *(v10 + v11 + 32) = *(v9 + v11 + 32);
        re::StringID::StringID((v10 + v11 + 40), (v9 + v11 + 40));
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v10 + v11 + 56, (v9 + v11 + 56));
        v9 += 96;
        v12 -= 96;
        v10 += 96;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *>(&v13, *(a2 + 32), *(a2 + 32) + 96 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 96 * v4;
      v7 = 96 * v5 - 96 * v4;
      do
      {
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v6 + 56);
        re::StringID::destroyString((v6 + 40));
        re::DynamicString::deinit(v6);
        v6 += 96;
        v7 -= 96;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
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
        v10 = (v8 + 96 * v9);
        v11 = (v7 + 7);
        v12 = (v8 + 56);
        do
        {
          *(v11 - 40) = 0u;
          *(v11 - 56) = 0u;
          *(v11 - 56) = *(v12 - 7);
          *(v12 - 7) = 0;
          *(v11 - 32) = *(v12 - 4);
          *(v12 - 4) = 0;
          v14 = *(v11 - 48);
          v13 = *(v11 - 40);
          v15 = *(v12 - 5);
          *(v11 - 48) = *(v12 - 6);
          *(v11 - 40) = v15;
          *(v12 - 6) = v14;
          *(v12 - 5) = v13;
          *(v11 - 24) = *(v12 - 24);
          re::StringID::StringID((v11 - 16), v12 - 1);
          re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v11, v12);
          re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v12);
          re::StringID::destroyString((v12 - 2));
          re::DynamicString::deinit((v12 - 7));
          v11 += 96;
          v16 = v12 + 5;
          v12 += 12;
        }

        while (v16 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *>(&v13, *(a2 + 32), (*(a2 + 32) + 32 * *(a1 + 16)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = (*(a2 + 32) + 32 * v8);
      v10 = *(a1 + 32) + 32 * v8;
      v11 = 32 * v4 - 32 * v8;
      do
      {
        re::StringID::StringID(v10, v9);
        re::StringID::StringID((v10 + 16), v9 + 1);
        v9 += 2;
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *>(&v12, *(a2 + 32), (*(a2 + 32) + 32 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 32) + 32 * v4;
      v7 = 32 * v5 - 32 * v4;
      do
      {
        re::StringID::destroyString((v6 + 16));
        re::StringID::destroyString(v6);
        v6 += 32;
        v7 -= 32;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

void *re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(v5, a2);
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
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 4;
          v8 += 4;
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

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *>(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::StringID::operator=(a4, v5);
      re::StringID::operator=(a4 + 2, v5 + 2);
      v5 += 4;
      a4 += 4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::DynamicString::operator=((a4 + v7), (a2 + v7));
    *(a4 + v7 + 32) = *(a2 + v7 + 32);
    re::StringID::operator=((a4 + v7 + 40), (a2 + v7 + 40));
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::operator=(a4 + v7 + 56, (a2 + v7 + 56));
    v7 += 96;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 32 * v2;
    do
    {
      re::StringID::destroyString((v3 + 16));
      re::StringID::destroyString(v3);
      v3 += 32;
      v4 -= 32;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::DynamicArray<re::RigDataValue>>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 40 * v12;
      do
      {
        result = re::DynamicArray<re::RigDataValue>::operator=(v13, v11);
        v11 = (v11 + 40);
        v13 = (v13 + 40);
        v14 -= 40;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 5 * v12;
      v16 = (v11 + 8 * v15);
      result = (v13 + 8 * v15);
      v17 = 40 * v4 - 8 * v15;
      do
      {
        v18 = re::DynamicArray<re::RigDataValue>::DynamicArray(result, v16);
        v16 += 5;
        result = (v18 + 40);
        v17 -= 40;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        result = re::DynamicArray<re::RigDataValue>::operator=(v6, v7);
        v7 = (v7 + 40);
        v6 = (v6 + 40);
        v8 -= 40;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 40 * v4;
      v10 = 40 * v5 - 40 * v4;
      do
      {
        result = re::DynamicArray<re::RigDataValue>::deinit(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = v8 + 40 * v9;
        v11 = v7 + 4;
        do
        {
          *v11 = 0;
          *(v11 - 3) = 0;
          *(v11 - 2) = 0;
          *(v11 - 4) = 0;
          *(v11 - 2) = 0;
          v12 = *(v8 + 8);
          *(v11 - 4) = *v8;
          *(v11 - 3) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 2);
          *(v11 - 2) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *v11;
          *v11 = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 2);
          re::DynamicArray<re::RigDataValue>::deinit(v8);
          v8 += 40;
          v11 += 5;
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

re::RigDataValue *re::DynamicArray<re::RigDataValue>::operator=(re::RigDataValue *a1, re::RigDataValue *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RigDataValue>::copy(a1, a2);
        ++*(a1 + 6);
      }

      else
      {
        re::DynamicArray<re::RigDataValue>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = *(a2 + 2);
      *a1 = v4;
      re::DynamicArray<re::RigDataValue>::setCapacity(a1, v5);
      ++*(a1 + 6);
      re::DynamicArray<re::RigDataValue>::copy(a1, a2);
    }
  }

  return a1;
}

re::RigDataValue *re::DynamicArray<re::RigDataValue>::copy(re::RigDataValue *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::RigDataValue>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = *(v3 + 2);
    v13 = *(v3 + 4);
    if (v12)
    {
      v14 = 288 * v12;
      do
      {
        result = re::RigDataValue::operator=(v13, v11);
        v11 += 288;
        v13 += 36;
        v14 -= 288;
      }

      while (v14);
      v13 = *(v3 + 4);
      v12 = *(v3 + 2);
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 9 * v12;
      v16 = (v11 + 32 * v15);
      result = &v13[4 * v15];
      v17 = 288 * v4 - 32 * v15;
      do
      {
        v18 = re::RigDataValue::RigDataValue(result, v16);
        v16 = (v16 + 288);
        result = (v18 + 288);
        v17 -= 288;
      }

      while (v17);
    }
  }

  else
  {
    v6 = *(result + 4);
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 288 * v4;
      do
      {
        result = re::RigDataValue::operator=(v6, v7);
        v7 += 288;
        v6 += 36;
        v8 -= 288;
      }

      while (v8);
      v6 = *(v3 + 4);
      v5 = *(v3 + 2);
    }

    if (v4 != v5)
    {
      result = &v6[36 * v4];
      v9 = 288 * v5 - 288 * v4;
      do
      {
        re::RigDataValue::~RigDataValue(result);
        result = (v10 + 288);
        v9 -= 288;
      }

      while (v9);
    }
  }

  *(v3 + 2) = v4;
  return result;
}

re::RigDataValue *re::DynamicArray<re::RigDataValue>::clear(re::RigDataValue *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 288 * v2;
    do
    {
      re::RigDataValue::~RigDataValue(result);
      result = (v4 + 288);
      v3 -= 288;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

void *re::DynamicArray<re::RigDataValue>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigDataValue>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x120uLL))
        {
          v2 = 288 * a2;
          result = (*(*result + 32))(result, 288 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 288, a2);
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
        v10 = 288 * v9;
        v11 = v7;
        do
        {
          re::RigDataValue::RigDataValue(v11, v8);
          re::RigDataValue::~RigDataValue(v8);
          v8 = (v8 + 288);
          v11 = (v11 + 288);
          v10 -= 288;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}
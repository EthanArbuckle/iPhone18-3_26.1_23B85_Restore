uint64_t re::EvaluationContextManager::updateBoundOutputs(re::EvaluationContextManager *this)
{
  re::EvaluationContextManager::updateBoundOutputDataForType<int>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<unsigned int>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<float>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<re::Matrix3x3<float>>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<re::Matrix4x4<float>>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<re::Quaternion<float>>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<re::Vector2<float>>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<re::Vector3<float>>(this);

  return re::EvaluationContextManager::updateBoundOutputDataForType<re::GenericSRT<float>>(this);
}

uint64_t re::EvaluationContextManager::updateBoundOutputDataForType<int>(uint64_t result)
{
  if (*(result + 2184))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(v1[275] + 8 * v2);
      if (v1[228] <= v3)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_13:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_14:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v4 = v1[230] + 56 * v3;
      v5 = v1[345];
      if (*(v4 + 48) == 1)
      {
        if (v5 <= v3)
        {
          goto LABEL_13;
        }

        v6 = v1[346];
        result = re::BindPoint::baseValueUntyped((v1[230] + 56 * v3));
        if (result)
        {
          *result = *(v6 + 4 * v3);
          result = re::BindPoint::markAsWritten(v4);
        }
      }

      else
      {
        if (v5 <= v3)
        {
          goto LABEL_14;
        }

        result = re::BindPoint::setValue<int>(v1[230] + 56 * v3, (v1[346] + 4 * v3));
      }

      ++v2;
    }

    while (v2 < v1[273]);
  }

  return result;
}

uint64_t re::EvaluationContextManager::updateBoundOutputDataForType<unsigned int>(uint64_t result)
{
  if (*(result + 2224))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(v1[280] + 8 * v2);
      if (v1[233] <= v3)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_13:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_14:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v4 = v1[235] + 56 * v3;
      v5 = v1[348];
      if (*(v4 + 48) == 1)
      {
        if (v5 <= v3)
        {
          goto LABEL_13;
        }

        v6 = v1[349];
        result = re::BindPoint::baseValueUntyped((v1[235] + 56 * v3));
        if (result)
        {
          *result = *(v6 + 4 * v3);
          result = re::BindPoint::markAsWritten(v4);
        }
      }

      else
      {
        if (v5 <= v3)
        {
          goto LABEL_14;
        }

        result = re::BindPoint::setValue<int>(v1[235] + 56 * v3, (v1[349] + 4 * v3));
      }

      ++v2;
    }

    while (v2 < v1[278]);
  }

  return result;
}

uint64_t re::EvaluationContextManager::updateBoundOutputDataForType<float>(uint64_t result)
{
  if (*(result + 2264))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(v1[285] + 8 * v2);
      if (v1[238] <= v3)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_13:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_14:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v4 = v1[240] + 56 * v3;
      v5 = v1[351];
      if (*(v4 + 48) == 1)
      {
        if (v5 <= v3)
        {
          goto LABEL_13;
        }

        v6 = v1[352];
        result = re::BindPoint::baseValueUntyped((v1[240] + 56 * v3));
        if (result)
        {
          *result = *(v6 + 4 * v3);
          result = re::BindPoint::markAsWritten(v4);
        }
      }

      else
      {
        if (v5 <= v3)
        {
          goto LABEL_14;
        }

        result = re::BindPoint::setValue<float>(v1[240] + 56 * v3, (v1[352] + 4 * v3));
      }

      ++v2;
    }

    while (v2 < v1[283]);
  }

  return result;
}

uint64_t re::EvaluationContextManager::updateBoundOutputDataForType<re::Matrix3x3<float>>(uint64_t result)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!*(result + 2304))
  {
    return result;
  }

  v2 = result;
  v3 = 0;
  do
  {
    v4 = *(v2[290] + 8 * v3);
    v5 = v2[243];
    if (v5 <= v4)
    {
      goto LABEL_42;
    }

    v6 = v2[245] + 56 * v4;
    v1 = v2[354];
    if (*(v6 + 48) == 1)
    {
      if (v1 > v4)
      {
        v1 = v2[355];
        result = re::BindPoint::baseValueUntyped((v2[245] + 56 * v4));
        if (result)
        {
          v7 = &v1[3 * v4];
          v8 = *v7;
          v9 = v7[2];
          *(result + 16) = v7[1];
          *(result + 32) = v9;
          *result = v8;
          result = re::BindPoint::markAsWritten(v6);
        }

        goto LABEL_38;
      }

      goto LABEL_44;
    }

    if (v1 <= v4)
    {
      goto LABEL_43;
    }

    v1 = *(v6 + 24);
    if (!v1)
    {
      goto LABEL_38;
    }

    v10 = (v2[355] + 48 * v4);
    v33 = 0uLL;
    LODWORD(v34) = 1;
    *(&v34 + 1) = 0;
    *&v35 = 0;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v33, v1);
    v11 = 0;
    v12 = 0;
    v4 = *(v6 + 24);
    v13 = *(&v33 + 1);
    do
    {
      if (v4 == v12)
      {
        v46 = 0u;
        v47 = 0u;
        memset(v45, 0, sizeof(v45));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        v39 = 1024;
        v40 = 797;
        v41 = 2048;
        v42 = v4;
        v43 = 2048;
        v44 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_41:
        v5 = v38;
        v46 = 0u;
        v47 = 0u;
        memset(v45, 0, sizeof(v45));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        v39 = 1024;
        v40 = 858;
        v41 = 2048;
        v42 = v13;
        v43 = 2048;
        v44 = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_42:
        *v38 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v45[0] = 136315906;
        *&v45[1] = "operator[]";
        LOWORD(v45[3]) = 1024;
        *(&v45[3] + 2) = 797;
        HIWORD(v45[4]) = 2048;
        *&v45[5] = v4;
        LOWORD(v45[7]) = 2048;
        *(&v45[7] + 2) = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_43:
        *v38 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v45[0] = 136315906;
        *&v45[1] = "operator[]";
        LOWORD(v45[3]) = 1024;
        *(&v45[3] + 2) = 476;
        HIWORD(v45[4]) = 2048;
        *&v45[5] = v4;
        LOWORD(v45[7]) = 2048;
        *(&v45[7] + 2) = v1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_44:
        *v38 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v45[0] = 136315906;
        *&v45[1] = "operator[]";
        LOWORD(v45[3]) = 1024;
        *(&v45[3] + 2) = 476;
        HIWORD(v45[4]) = 2048;
        *&v45[5] = v4;
        LOWORD(v45[7]) = 2048;
        *(&v45[7] + 2) = v1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_45:
        v46 = 0u;
        v47 = 0u;
        memset(v45, 0, sizeof(v45));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        v39 = 1024;
        v40 = 858;
        v41 = 2048;
        v42 = 0;
        v43 = 2048;
        v44 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_46:
        v46 = 0u;
        v47 = 0u;
        memset(v45, 0, sizeof(v45));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        v39 = 1024;
        v40 = 858;
        v41 = 2048;
        v42 = 0;
        v43 = 2048;
        v44 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v14 = (*(v6 + 40) + v11);
      if (!*v14)
      {
        v14 = v14[2];
      }

      if (v13 == v12)
      {
        goto LABEL_41;
      }

      if (v34)
      {
        v15 = &v34 + 8;
      }

      else
      {
        v15 = v35;
      }

      *&v15[8 * v12] = v14;
      v12 = (v12 + 1);
      v11 += 32;
    }

    while (v1 != v12);
    if (!v13)
    {
      goto LABEL_45;
    }

    if (v34)
    {
      v16 = &v34 + 1;
    }

    else
    {
      v16 = v35;
    }

    v17 = *v16;
    v1 = (v1 - 1);
    v18 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v33, 1uLL, v1);
    v20 = (*(*v17 + 120))(v17, 0, v18, v19);
    if (v20)
    {
      v21 = v20;
      if (!re::BindPoint::isOverridden(v6) || (v22 = vandq_s8(vandq_s8(vceqq_f32(v21[1], v10[1]), vceqq_f32(*v21, *v10)), vceqq_f32(v21[2], v10[2])), v22.i32[3] = v22.i32[2], (vminvq_u32(v22) & 0x80000000) == 0))
      {
        re::BindPoint::willSet(v6);
        v23 = *v10;
        v24 = v10[2];
        v21[1] = v10[1];
        v21[2] = v24;
        *v21 = v23;
        re::BindPoint::setIsOverridden(v6, 1);
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (!*(&v33 + 1))
    {
      goto LABEL_46;
    }

    if (v34)
    {
      v25 = &v34 + 1;
    }

    else
    {
      v25 = v35;
    }

    v26 = *v25;
    v27 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v33, 1uLL, v1);
    v29 = (*(*v26 + 88))(v26, 0, v27, v28);
    if (v29)
    {
      v1 = v29;
      v30 = vandq_s8(vandq_s8(vceqq_f32(v29[1], v10[1]), vceqq_f32(*v29, *v10)), vceqq_f32(v29[2], v10[2]));
      v30.i32[3] = v30.i32[2];
      if ((vminvq_u32(v30) & 0x80000000) == 0)
      {
        re::BindPoint::willSet(v6);
        v31 = *v10;
        v32 = v10[2];
        v1[1] = v10[1];
        v1[2] = v32;
        *v1 = v31;
LABEL_34:
        re::BindPoint::markAsWritten(v6);
      }
    }

LABEL_35:
    result = v33;
    if (v33 && (v34 & 1) == 0)
    {
      result = (*(*v33 + 40))();
    }

LABEL_38:
    ++v3;
  }

  while (v3 < v2[288]);
  return result;
}

uint64_t re::EvaluationContextManager::updateBoundOutputDataForType<re::Matrix4x4<float>>(uint64_t result)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!*(result + 2344))
  {
    return result;
  }

  v2 = result;
  v3 = 0;
  do
  {
    v4 = *(v2[295] + 8 * v3);
    v5 = v2[248];
    if (v5 <= v4)
    {
      goto LABEL_42;
    }

    v6 = v2[250] + 56 * v4;
    v1 = v2[357];
    if (*(v6 + 48) == 1)
    {
      if (v1 > v4)
      {
        v1 = v2[358];
        result = re::BindPoint::baseValueUntyped((v2[250] + 56 * v4));
        if (result)
        {
          v7 = &v1[4 * v4];
          v8 = *v7;
          v9 = v7[1];
          v10 = v7[3];
          *(result + 32) = v7[2];
          *(result + 48) = v10;
          *result = v8;
          *(result + 16) = v9;
          result = re::BindPoint::markAsWritten(v6);
        }

        goto LABEL_38;
      }

      goto LABEL_44;
    }

    if (v1 <= v4)
    {
      goto LABEL_43;
    }

    v1 = *(v6 + 24);
    if (!v1)
    {
      goto LABEL_38;
    }

    v11 = (v2[358] + (v4 << 6));
    v33 = 0uLL;
    LODWORD(v34) = 1;
    *(&v34 + 1) = 0;
    *&v35 = 0;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v33, v1);
    v12 = 0;
    v13 = 0;
    v4 = *(v6 + 24);
    v14 = *(&v33 + 1);
    do
    {
      if (v4 == v13)
      {
        v46 = 0u;
        v47 = 0u;
        memset(v45, 0, sizeof(v45));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        v39 = 1024;
        v40 = 797;
        v41 = 2048;
        v42 = v4;
        v43 = 2048;
        v44 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_41:
        v5 = v38;
        v46 = 0u;
        v47 = 0u;
        memset(v45, 0, sizeof(v45));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        v39 = 1024;
        v40 = 858;
        v41 = 2048;
        v42 = v14;
        v43 = 2048;
        v44 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_42:
        *v38 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v45[0] = 136315906;
        *&v45[1] = "operator[]";
        LOWORD(v45[3]) = 1024;
        *(&v45[3] + 2) = 797;
        HIWORD(v45[4]) = 2048;
        *&v45[5] = v4;
        LOWORD(v45[7]) = 2048;
        *(&v45[7] + 2) = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_43:
        *v38 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v45[0] = 136315906;
        *&v45[1] = "operator[]";
        LOWORD(v45[3]) = 1024;
        *(&v45[3] + 2) = 476;
        HIWORD(v45[4]) = 2048;
        *&v45[5] = v4;
        LOWORD(v45[7]) = 2048;
        *(&v45[7] + 2) = v1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_44:
        *v38 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v45[0] = 136315906;
        *&v45[1] = "operator[]";
        LOWORD(v45[3]) = 1024;
        *(&v45[3] + 2) = 476;
        HIWORD(v45[4]) = 2048;
        *&v45[5] = v4;
        LOWORD(v45[7]) = 2048;
        *(&v45[7] + 2) = v1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_45:
        v46 = 0u;
        v47 = 0u;
        memset(v45, 0, sizeof(v45));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        v39 = 1024;
        v40 = 858;
        v41 = 2048;
        v42 = 0;
        v43 = 2048;
        v44 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_46:
        v46 = 0u;
        v47 = 0u;
        memset(v45, 0, sizeof(v45));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        v39 = 1024;
        v40 = 858;
        v41 = 2048;
        v42 = 0;
        v43 = 2048;
        v44 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v15 = (*(v6 + 40) + v12);
      if (!*v15)
      {
        v15 = v15[2];
      }

      if (v14 == v13)
      {
        goto LABEL_41;
      }

      if (v34)
      {
        v16 = &v34 + 8;
      }

      else
      {
        v16 = v35;
      }

      *&v16[8 * v13] = v15;
      v13 = (v13 + 1);
      v12 += 32;
    }

    while (v1 != v13);
    if (!v14)
    {
      goto LABEL_45;
    }

    if (v34)
    {
      v17 = &v34 + 1;
    }

    else
    {
      v17 = v35;
    }

    v18 = *v17;
    v19 = &v1[-1].i64[1] + 7;
    v20 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v33, 1uLL, &v1[-1].i64[1] + 7);
    v22 = (*(*v18 + 120))(v18, 0, v20, v21);
    if (v22)
    {
      v1 = v22;
      if (!re::BindPoint::isOverridden(v6) || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v1[1], v11[1]), vceqq_f32(*v1, *v11)), vandq_s8(vceqq_f32(v1[2], v11[2]), vceqq_f32(v1[3], v11[3])))) & 0x80000000) == 0)
      {
        re::BindPoint::willSet(v6);
        v23 = *v11;
        v24 = v11[1];
        v25 = v11[3];
        v1[2] = v11[2];
        v1[3] = v25;
        *v1 = v23;
        v1[1] = v24;
        re::BindPoint::setIsOverridden(v6, 1);
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (!*(&v33 + 1))
    {
      goto LABEL_46;
    }

    if (v34)
    {
      v26 = &v34 + 1;
    }

    else
    {
      v26 = v35;
    }

    v1 = *v26;
    v27 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v33, 1uLL, v19);
    v29 = (*(v1->i64[0] + 88))(v1, 0, v27, v28);
    if (v29)
    {
      v1 = v29;
      if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v29[1], v11[1]), vceqq_f32(*v29, *v11)), vandq_s8(vceqq_f32(v29[2], v11[2]), vceqq_f32(v29[3], v11[3])))) & 0x80000000) == 0)
      {
        re::BindPoint::willSet(v6);
        v30 = *v11;
        v31 = v11[1];
        v32 = v11[3];
        v1[2] = v11[2];
        v1[3] = v32;
        *v1 = v30;
        v1[1] = v31;
LABEL_34:
        re::BindPoint::markAsWritten(v6);
      }
    }

LABEL_35:
    result = v33;
    if (v33 && (v34 & 1) == 0)
    {
      result = (*(*v33 + 40))();
    }

LABEL_38:
    ++v3;
  }

  while (v3 < v2[293]);
  return result;
}

uint64_t re::EvaluationContextManager::updateBoundOutputDataForType<re::Quaternion<float>>(uint64_t result)
{
  if (*(result + 2384))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(v1[300] + 8 * v2);
      if (v1[253] <= v3)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_13:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_14:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v4 = v1[255] + 56 * v3;
      v5 = v1[360];
      if (*(v4 + 48) == 1)
      {
        if (v5 <= v3)
        {
          goto LABEL_13;
        }

        v6 = v1[361];
        result = re::BindPoint::baseValueUntyped((v1[255] + 56 * v3));
        if (result)
        {
          *result = *(v6 + 16 * v3);
          result = re::BindPoint::markAsWritten(v4);
        }
      }

      else
      {
        if (v5 <= v3)
        {
          goto LABEL_14;
        }

        result = re::BindPoint::setValue<re::Vector4<float>>(v1[255] + 56 * v3, (v1[361] + 16 * v3));
      }

      ++v2;
    }

    while (v2 < v1[298]);
  }

  return result;
}

void *re::EvaluationContextManager::updateBoundOutputDataForType<re::Vector2<float>>(void *result)
{
  if (result[303])
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(v1[305] + 8 * v2);
      if (v1[258] <= v3)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_13:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_14:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v4 = v1[260] + 56 * v3;
      v5 = v1[363];
      if (*(v4 + 48) == 1)
      {
        if (v5 <= v3)
        {
          goto LABEL_13;
        }

        v6 = v1[364];
        result = re::BindPoint::baseValueUntyped((v1[260] + 56 * v3));
        if (result)
        {
          *result = *(v6 + 8 * v3);
          result = re::BindPoint::markAsWritten(v4);
        }
      }

      else
      {
        if (v5 <= v3)
        {
          goto LABEL_14;
        }

        result = re::BindPoint::setValue<re::Vector2<float>>(v1[260] + 56 * v3, (v1[364] + 8 * v3));
      }

      ++v2;
    }

    while (v2 < v1[303]);
  }

  return result;
}

uint64_t re::EvaluationContextManager::updateBoundOutputDataForType<re::Vector3<float>>(uint64_t result)
{
  if (*(result + 2464))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(v1[310] + 8 * v2);
      if (v1[263] <= v3)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_13:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_14:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v4 = v1[265] + 56 * v3;
      v5 = v1[366];
      if (*(v4 + 48) == 1)
      {
        if (v5 <= v3)
        {
          goto LABEL_13;
        }

        v6 = v1[367];
        result = re::BindPoint::baseValueUntyped((v1[265] + 56 * v3));
        if (result)
        {
          *result = *(v6 + 16 * v3);
          result = re::BindPoint::markAsWritten(v4);
        }
      }

      else
      {
        if (v5 <= v3)
        {
          goto LABEL_14;
        }

        result = re::BindPoint::setValue<re::Vector3<float>>(v1[265] + 56 * v3, (v1[367] + 16 * v3));
      }

      ++v2;
    }

    while (v2 < v1[308]);
  }

  return result;
}

uint64_t re::EvaluationContextManager::updateBoundOutputDataForType<re::GenericSRT<float>>(uint64_t result)
{
  if (*(result + 2504))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(v1[315] + 8 * v2);
      if (v1[268] <= v3)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_13:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_14:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v4 = v1[270] + 56 * v3;
      v5 = v1[369];
      if (*(v4 + 48) == 1)
      {
        if (v5 <= v3)
        {
          goto LABEL_13;
        }

        v6 = v1[370];
        result = re::BindPoint::baseValueUntyped((v1[270] + 56 * v3));
        if (result)
        {
          v7 = (v6 + 48 * v3);
          v8 = *v7;
          v9 = v7[2];
          *(result + 16) = v7[1];
          *(result + 32) = v9;
          *result = v8;
          result = re::BindPoint::markAsWritten(v4);
        }
      }

      else
      {
        if (v5 <= v3)
        {
          goto LABEL_14;
        }

        result = re::BindPoint::setValue<re::GenericSRT<float>>(v1[270] + 56 * v3, (v1[370] + 48 * v3));
      }

      ++v2;
    }

    while (v2 < v1[313]);
  }

  return result;
}

uint64_t re::BindPoint::setValue<int>(uint64_t result, _DWORD *a2)
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
    if (!re::BindPoint::isOverridden(v4) || *v17 != *a2)
    {
      re::BindPoint::willSet(v4);
      *v17 = *a2;
      re::BindPoint::setIsOverridden(v4, 1);
      goto LABEL_19;
    }

    goto LABEL_20;
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
    if (*v22 != *a2)
    {
      re::BindPoint::willSet(v4);
      *v23 = *a2;
LABEL_19:
      re::BindPoint::markAsWritten(v4);
    }
  }

LABEL_20:
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

uint64_t std::function<void ()(re::EvaluationModelBase *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1E2032AB4);
  }

  return (*(*v2 + 48))(v2, &v4);
}

re *std::__function::__func<void re::SkeletalPoseRuntimeData::rebuildRuntimeData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,re::SkeletalPoseRigMappingData const&,re::Slice<re::BindPoint> const&,re::MutableSlice<re::Matrix4x4<float>>,re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>> &,re::BindNode &)::{lambda(re::EvaluationModelBase *)#1},std::allocator<void re::SkeletalPoseRuntimeData::rebuildRuntimeData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,re::SkeletalPoseRigMappingData const&,re::Slice<re::BindPoint> const&,re::MutableSlice<re::Matrix4x4<float>>,re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>> &,re::BindNode &)::{lambda(re::EvaluationModelBase *)#1}>,void ()(re::EvaluationModelBase *)>::operator()(re *result, void (****a2)(void))
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    (**v2)(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<void re::SkeletalPoseRuntimeData::rebuildRuntimeData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,re::SkeletalPoseRigMappingData const&,re::Slice<re::BindPoint> const&,re::MutableSlice<re::Matrix4x4<float>>,re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>> &,re::BindNode &)::{lambda(re::EvaluationModelBase *)#1},std::allocator<void re::SkeletalPoseRuntimeData::rebuildRuntimeData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,re::SkeletalPoseRigMappingData const&,re::Slice<re::BindPoint> const&,re::MutableSlice<re::Matrix4x4<float>>,re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>> &,re::BindNode &)::{lambda(re::EvaluationModelBase *)#1}>,void ()(re::EvaluationModelBase *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<re::EvaluationModelBase,std::function<void ()(re::EvaluationModelBase*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::EvaluationModelBase *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::EvaluationModelBase *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<void ()(re::EvaluationModelBase *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void re::IOSurfaceWrapper::SharedEvent::createSharedEvent(void *a1@<X8>)
{
  v3 = objc_alloc_init(MEMORY[0x1E696CE00]);
  *a1 = v3;
}

void re::IOSurfaceWrapper::SharedEventListener::createSharedEventListenerWithQueue(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_alloc(MEMORY[0x1E696CE08]) initWithDispatchQueue:*a1];
  *a2 = v3;
}

__CFString *re::figAlternateGetPackingLoggingStringForFigTagCollection(re *this, const OpaqueCMTagCollection *a2)
{
  if (!this)
  {
    return @"UNKNOWN";
  }

  v2 = @"UNKNOWN";
  if (!FigTagCollectionGetTagsWithCategory())
  {
    if (FigTagEqualToTag())
    {
      return @"SIDE";
    }

    else if (FigTagEqualToTag())
    {
      return @"OVER";
    }

    else if (FigTagEqualToTag())
    {
      return @"NONE";
    }
  }

  return v2;
}

__CFString *re::figAlternateGetChannelsLoggingStringForFigTagCollection(re *this, const OpaqueCMTagCollection *a2)
{
  if (!this)
  {
    return @"UNKNOWN";
  }

  v2 = @"UNKNOWN";
  if (!FigTagCollectionGetTagsWithCategory())
  {
    if (FigTagEqualToTag())
    {
      return @"LEFT";
    }

    else if (FigTagEqualToTag())
    {
      return @"RIGHT";
    }

    else if (FigTagEqualToTag())
    {
      return @"STEREO";
    }

    else if (FigTagEqualToTag())
    {
      return @"MONO";
    }
  }

  return v2;
}

__CFString *re::figAlternateProjectionLoggingStringForFigTagCollection(re *this, const OpaqueCMTagCollection *a2)
{
  if (!this)
  {
    return @"UNKNOWN";
  }

  v2 = @"UNKNOWN";
  if (!FigTagCollectionGetTagsWithCategory())
  {
    if (FigTagEqualToTag())
    {
      return @"RECT";
    }

    else if (FigTagEqualToTag())
    {
      return @"FISH";
    }
  }

  return v2;
}

void re::getDataPreferenceArray(_anonymous_namespace_ *a1, int a2)
{
  if (a2 == 1)
  {
  }

  else
  {
  }
}

void anonymous namespace::addImmersiveDataChannelGroups(_anonymous_namespace_ *a1, int a2)
{
  v2 = a2;
  if (a2)
  {
  }

  if ((v2 & 1) == 0)
  {
  }
}

void anonymous namespace::addStereoscopicDataChannelGroups(_anonymous_namespace_ *a1)
{
}

uint64_t re::setVideoDataPreferences(re *a1, int a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = *re::videoLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a1;
    v6 = "Unknown";
    if (a2 == 1)
    {
      v6 = "Mono";
    }

    if (a2 == 2)
    {
      v6 = "Stereo";
    }

    *buf = 134218242;
    *&buf[4] = v5;
    *&buf[12] = 2082;
    *&buf[14] = v6;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Setting Fig Receiver preferences with FVR pointer %p: %{public}s", buf, 0x16u);
  }

  v61 = a1;
  __src = 0;
  memset(buf, 0, sizeof(buf));
  v75 = 0;
  re::DynamicArray<float *>::setCapacity(buf, 0x10uLL);
  re::getDataPreferenceArray(buf, a2);
  v7 = 1;
  v70 = 0;
  v71 = 1;
  allocator = *MEMORY[0x1E695E480];
  v8 = MEMORY[0x1E6963148];
  v9 = MEMORY[0x1E6963138];
  do
  {
    v10 = v7;
    v69 = 0;
    v11 = FigDataChannelGroupCreateForUseCase();
    v12 = v11;
    if (v11)
    {
      v22 = *re::videoLogObjects(v11);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v77 = 67109120;
        *&v77[4] = v12;
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to create video data channel group (error: %d)", v77, 8u);
      }

      v23 = __src;
      if (*&buf[16])
      {
        v24 = 0;
        v25 = 8 * *&buf[16];
        do
        {
          v26 = v23[v24 / 8];
          if (v26)
          {
            CFRelease(v26);
          }

          v24 += 8;
        }

        while (v25 != v24);
      }

      goto LABEL_70;
    }

    *v77 = *v8;
    *&v77[16] = *v9;
    v13 = FigDataChannelGroupAddDataChannelWithFigTags();
    v14 = v13;
    if (v13)
    {
      v27 = *re::videoLogObjects(v13);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v77 = 67109120;
        *&v77[4] = v14;
        _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Failed to add a FigTag collection to channel group (error: %d).", v77, 8u);
      }

      v23 = __src;
      if (*&buf[16])
      {
        v28 = 0;
        v29 = 8 * *&buf[16];
        do
        {
          v30 = v23[v28 / 8];
          if (v30)
          {
            CFRelease(v30);
          }

          v28 += 8;
        }

        while (v29 != v28);
      }

      goto LABEL_70;
    }

    re::DynamicArray<re::RigDataValue *>::add(buf, &v69);
    *v77 = 0;
    v15 = FigDataChannelGroupCreateForUseCase();
    v16 = v15;
    if (v15)
    {
      v31 = *re::videoLogObjects(v15);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *v72 = 67109120;
        v73 = v16;
        _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "Failed to create video data channel group (error: %d)", v72, 8u);
      }

      v23 = __src;
      if (*&buf[16])
      {
        v32 = 0;
        v33 = 8 * *&buf[16];
        do
        {
          v34 = v23[v32 / 8];
          if (v34)
          {
            CFRelease(v34);
          }

          v32 += 8;
        }

        while (v33 != v32);
      }

      goto LABEL_70;
    }

    v17 = re::DynamicArray<re::RigDataValue *>::add(buf, v77);
    v7 = 0;
  }

  while ((v10 & 1) != 0);
  v18 = *re::videoLogObjects(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    v20 = *v61;
    *v77 = 134217984;
    *&v77[4] = v20;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Setting Fig Receiver Preferences Groups Final List with FVR pointer %p:", v77, 0xCu);
  }

  __dst = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v67 = 0;
  if (*buf)
  {
    v21 = *&buf[16];
    v64 = *buf;
    v19 = re::DynamicArray<float *>::setCapacity(&v64, *&buf[16]);
    ++v67;
    if (v21 >= v66)
    {
      re::DynamicArray<float *>::setCapacity(&v64, v21);
      v35 = v66;
      v36 = __dst;
      v37 = __src;
      if (v66)
      {
        v38 = 8 * v66;
        memmove(__dst, __src, 8 * v66);
      }

      else
      {
        v38 = 0;
      }

      v19 = memcpy(&v36[8 * v35], &v37[v38], 8 * (v21 - v35));
    }

    else if (v21)
    {
      v19 = memmove(__dst, __src, 8 * v21);
    }

    v66 = v21;
  }

  else
  {
    v21 = 0;
  }

  v39 = *re::videoLogObjects(v19);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *v77 = 0;
    _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "Setting the FigVideoPreferences Tag Collection Currently:", v77, 2u);
  }

  v40 = __dst;
  if (v21)
  {
    v62 = __dst + 8 * v21;
    v41 = __dst;
    do
    {
      for (i = 0; FigDataChannelGroupGetCountOfDataChannels() > i; ++i)
      {
        DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex();
        PackingLoggingStringForFigTagCollection = re::figAlternateGetPackingLoggingStringForFigTagCollection(DataChannelByIndex, v44);
        ChannelsLoggingStringForFigTagCollection = re::figAlternateGetChannelsLoggingStringForFigTagCollection(DataChannelByIndex, v46);
        v49 = re::figAlternateProjectionLoggingStringForFigTagCollection(DataChannelByIndex, v48);
        v50 = v40;
        v51 = *re::videoLogObjects(v49);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v77 = 138412802;
          *&v77[4] = PackingLoggingStringForFigTagCollection;
          *&v77[12] = 2112;
          *&v77[14] = ChannelsLoggingStringForFigTagCollection;
          *&v77[22] = 2112;
          *&v77[24] = v49;
          _os_log_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEFAULT, "                                         Tag Collection :%@/%@/%@", v77, 0x20u);
        }

        v40 = v50;
      }

      v41 += 8;
    }

    while (v41 != v62);
  }

  if (v64)
  {
    if (v40)
    {
      (*(*v64 + 40))();
    }

    __dst = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    ++v67;
  }

  v23 = __src;
  v52 = *&buf[16];
  v53 = CFArrayCreate(allocator, __src, *&buf[16], MEMORY[0x1E695E9C0]);
  v54 = FigVideoReceiverForBufferDeliverySpecifyPreferredDataChannelGroupsWithID();
  if (v52)
  {
    v55 = 8 * v52;
    v56 = v23;
    do
    {
      if (*v56)
      {
        CFRelease(*v56);
      }

      ++v56;
      v55 -= 8;
    }

    while (v55);
  }

  CFRelease(v53);
  if (v54)
  {
    v58 = *re::videoLogObjects(v57);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *v77 = 67109120;
      *&v77[4] = v54;
      _os_log_error_impl(&dword_1E1C61000, v58, OS_LOG_TYPE_ERROR, "Failed to set preferred video data channels (error: %d)", v77, 8u);
    }

LABEL_70:
    v59 = 0;
    goto LABEL_71;
  }

  v59 = 1;
LABEL_71:
  if (*buf && v23)
  {
    (*(**buf + 40))();
  }

  return v59;
}

void sub_1E2033D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a25)
  {
    if (a29)
    {
      (*(*a25 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL re::createVideoReceiver(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v8 = MEMORY[0x1E6904290](*MEMORY[0x1E695E480], 0, &v30);
  v9 = v8;
  if (v8)
  {
    v10 = *re::videoLogObjects(v8);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 67109120;
    LODWORD(v32) = v9;
    v12 = "Failed to create video receiver (error: %d)";
    v13 = v10;
    v14 = 8;
LABEL_4:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    return 0;
  }

  v15 = v30;
  if (!v30)
  {
    v23 = *re::videoLogObjects(v8);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v12 = "Failed to create video receiver";
    v13 = v23;
    v14 = 2;
    goto LABEL_4;
  }

  if (*a1)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a1);
  }

  *a1 = v15;
  CFRetain(v15);
  CFRelease(v30);
  v17 = *re::videoLogObjects(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *a1;
    *buf = 134217984;
    v32 = v18;
    _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Creating Fig Receiver %p", buf, 0xCu);
  }

  if (a2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN2re19createVideoReceiverERNS_11VideoObjectINS_17VideoReceiverBaseEEEPFvP22OpaqueFigVideoReceiver6CMTimejPK9__CFArrayPK14__CFDictionaryS9_PvEPFvS5_P28OpaqueFigDataChannelResourceSD_38FigVideoReceiverResourceLifeCycleEventESD__block_invoke;
    aBlock[3] = &__block_descriptor_56_e96_v68__0__OpaqueFigVideoReceiver__8___qiIq_16I40____CFArray__44____CFDictionary__52____CFArray__60l;
    aBlock[4] = a4;
    aBlock[5] = a1;
    aBlock[6] = a2;
    v19 = _Block_copy(aBlock);
    v20 = FigVideoReceiverForBufferDeliverySetPrepareDataChannelsWithDependentResourcesHandler();
    if (v20)
    {
      v21 = v20;
      v22 = *re::videoLogObjects(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v32) = v21;
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to register change callback handler for video data channels and dependent resources (error: %d)", buf, 8u);
      }

      if (*a1)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a1);
      }

      *a1 = 0;

      return 0;
    }
  }

  if (a3)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = ___ZN2re19createVideoReceiverERNS_11VideoObjectINS_17VideoReceiverBaseEEEPFvP22OpaqueFigVideoReceiver6CMTimejPK9__CFArrayPK14__CFDictionaryS9_PvEPFvS5_P28OpaqueFigDataChannelResourceSD_38FigVideoReceiverResourceLifeCycleEventESD__block_invoke_59;
    v28[3] = &__block_descriptor_56_e70_v28__0__OpaqueFigVideoReceiver__8__OpaqueFigDataChannelResource__16i24l;
    v28[4] = a4;
    v28[5] = a1;
    v28[6] = a3;
    v24 = _Block_copy(v28);
    v25 = FigVideoReceiverForBufferDeliverySetResourceLifeCycleHandler();
    if (v25)
    {
      v26 = v25;
      v27 = *re::videoLogObjects(v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v32) = v26;
        _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Failed to register change callback handler for resources (error: %d)", buf, 8u);
      }

      if (*a1)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a1);
      }

      *a1 = 0;

      return 0;
    }
  }

  return 1;
}

uint64_t ___ZN2re19createVideoReceiverERNS_11VideoObjectINS_17VideoReceiverBaseEEEPFvP22OpaqueFigVideoReceiver6CMTimejPK9__CFArrayPK14__CFDictionaryS9_PvEPFvS5_P28OpaqueFigDataChannelResourceSD_38FigVideoReceiverResourceLifeCycleEventESD__block_invoke(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(result + 32);
  if (v9)
  {
    if (**(result + 40) == a2)
    {
      v13 = v7;
      v14 = v8;
      v10 = *(result + 48);
      v11 = *a3;
      v12 = *(a3 + 2);
      return v10(a2, &v11, a4, a5, a6, a7, v9);
    }
  }

  return result;
}

uint64_t ___ZN2re19createVideoReceiverERNS_11VideoObjectINS_17VideoReceiverBaseEEEPFvP22OpaqueFigVideoReceiver6CMTimejPK9__CFArrayPK14__CFDictionaryS9_PvEPFvS5_P28OpaqueFigDataChannelResourceSD_38FigVideoReceiverResourceLifeCycleEventESD__block_invoke_59(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    if (**(result + 40) == a2)
    {
      return (*(result + 48))(a2, a3, v3);
    }
  }

  return result;
}

void re::destroyVideoReceiver(const void **a1)
{
  if (*a1)
  {
    FigVideoReceiverForBufferDeliverySetResourceLifeCycleHandler();
    FigVideoReceiverForBufferDeliverySetPrepareDataChannelsWithDependentResourcesHandler();
    if (*a1)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a1);
    }

    *a1 = 0;
  }
}

__n128 re::retrievePixelBuffersWithVideoReceiver(uint64_t *a1, void *a2, CMTime *a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6960C70];
  if (!*a2 || (v8 = *MEMORY[0x1E6960C70], *(a4 + 16) = *(MEMORY[0x1E6960C70] + 16), *a4 = v8, v28 = 0, buf = *a3, v9 = re::VideoReceiverCopyImageForTime(a2, &buf, 0, &v28), v11 = v9, v9 == -15575))
  {
LABEL_19:
    *a1 = 0;
    *(a1 + 2) = 0;
    a1[4] = 0;
    *(a1 + 10) = -1;
    result = *v5;
    *(a1 + 44) = *v5;
    *(a1 + 60) = v5[1].n128_i64[0];
    return result;
  }

  if (v9)
  {
    v27 = *re::videoLogObjects(v9);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.value) = 67109120;
      HIDWORD(buf.value) = v11;
      _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Failed to sample image from video receiver (error: %d)", &buf, 8u);
    }

    goto LABEL_19;
  }

  *a1 = 0;
  *(a1 + 2) = 0;
  a1[4] = 0;
  *(a1 + 10) = -1;
  *(a1 + 44) = *v5;
  *(a1 + 60) = v5[1].n128_i64[0];
  v12 = re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(a1, v10);
  if (v12)
  {
    v13 = *a1;
    a1[*a1 + 2] = v28;
    *a1 = v13 + 1;
    ++*(a1 + 2);
  }

  *(a1 + 44) = *a4;
  *(a1 + 60) = *(a4 + 16);
  v14 = re::VideoDefaults::logEnabled(v12);
  if (v14)
  {
    v16 = *re::videoLogObjects(v14);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "------------------------------------------", &buf, 2u);
    }

    v18 = *re::videoLogObjects(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      buf = *a3;
      Seconds = CMTimeGetSeconds(&buf);
      *v29 = 134217984;
      v30 = Seconds;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Sample Host Time: %f", v29, 0xCu);
    }

    v21 = *re::videoLogObjects(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      buf = *a4;
      v22 = CMTimeGetSeconds(&buf);
      *v29 = 134217984;
      v30 = v22;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Sample Presentation Time: %f", v29, 0xCu);
    }

    v24 = *re::videoLogObjects(v23);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Sample Format: Single-channel legacy", &buf, 2u);
    }

    v26 = *re::videoLogObjects(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "------------------------------------------", &buf, 2u);
    }
  }

  return result;
}

void sub_1E203459C(_Unwind_Exception *a1)
{
  *v1 = 0;
  ++*(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t populatePresentationGroup(__int128 *a1, unint64_t *a2, CFTypeRef *a3, NSObject *a4, unint64_t **a5, id *a6, uint64_t a7, unint64_t value, uint64_t a9, uint64_t a10, void *a11, unsigned __int8 a12)
{
  v478 = *MEMORY[0x1E69E9840];
  v17 = a11;
  v388 = v17;
  if (!*a2)
  {
    v38 = *re::videoLogObjects(v17);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      v39 = 1;
      goto LABEL_508;
    }

    LOWORD(v438) = 0;
    v196 = "Could no populate presentation group. Legacy buffer group has no pixel buffers.";
LABEL_255:
    _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, v196, &v438, 2u);
    goto LABEL_18;
  }

  v18 = a9;
  re::deinitVideoPresentationGroup(a9);
  v19 = *a1;
  *(a9 + 16) = *(a1 + 2);
  *a9 = v19;
  *(a9 + 1780) = *(a2 + 10);
  *(a9 + 1712) = 0u;
  *(a9 + 1584) = *(a3 + 9704);
  *(a9 + 2088) = 0;
  if (!*a2)
  {
    p_time = 0;
    v453.isa = 0;
    v454 = 0;
    goto LABEL_21;
  }

  v20 = 0;
  v21 = (a9 + 1712);
  do
  {
    IOSurface = CVPixelBufferGetIOSurface(a2[v20 + 2]);
    if (!IOSurface)
    {
      v38 = *re::videoLogObjects(0);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      LOWORD(v438) = 0;
      v196 = "Sampled pixel buffer does not contain a surface.";
      goto LABEL_255;
    }

    ID = IOSurfaceGetID(IOSurface);
    v25 = *(a9 + 24);
    if (v25 >= 2)
    {
      re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      _os_crash();
      __break(1u);
      goto LABEL_602;
    }

    *(a9 + 36 + 4 * v25) = ID;
    *(a9 + 24) = v25 + 1;
    ++*(a9 + 32);
    ++v20;
    v26 = *a2;
  }

  while (v20 < *a2);
  v453.isa = 0;
  v454 = 0;
  if (!v26)
  {
    p_time = 0;
    goto LABEL_21;
  }

  v27 = 0;
  do
  {
    i = &a2[v27];
    p_time = *(i + 16);
    *&v438 = p_time;
    CVPixelBufferRetain(p_time);
    re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(v453.isa, v29);
    isa = v453.isa;
    texture[v453.isa] = p_time;
    v453.isa = (isa + 1);
    ++v454;
    if (*a2 <= v27)
    {
      re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v27, *a2);
      _os_crash();
      __break(1u);
LABEL_514:
      re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v27, v35);
      _os_crash();
      __break(1u);
LABEL_515:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v57);
      _os_crash();
      __break(1u);
      goto LABEL_516;
    }

    Width = CVPixelBufferGetWidth(*(i + 16));
    v34 = *v21;
    if (*v21 <= Width)
    {
      v34 = Width;
    }

    *v21 = v34;
    v35 = *a2;
    if (*a2 <= v27)
    {
      goto LABEL_514;
    }

    Height = CVPixelBufferGetHeight(*(i + 16));
    v37 = *(a9 + 1720);
    if (v37 <= Height)
    {
      v37 = Height;
    }

    *(a9 + 1720) = v37;
    ++v27;
  }

  while (v27 < *a2);
  p_time = v453.isa;
LABEL_21:
  v452 = a6[26];
  v40 = (a9 + 1792);
  re::DynamicInlineArray<re::VideoObject<re::VideoColorTransformBase>,2ul>::resize(a9 + 1792, p_time);
  v41 = (a9 + 1952);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(a9 + 1952);
  v377 = isPhysicalHardware;
  *(a9 + 1778) = 1;
  v44 = v453.isa;
  if (v453.isa < 2)
  {
    goto LABEL_607;
  }

  v45 = 0;
  p_time = texture;
  i = 3;
  do
  {
    isPhysicalHardware = re::VideoPixelBufferBase::colorTags(p_time);
    if ((isPhysicalHardware & 0xFFFFFF) == 0x10D0C)
    {
      *(a9 + 1778) = 3;
    }

    ++v45;
    v44 = v453.isa;
    p_time += 8;
  }

  while (v45 < v453.isa);
  if (*(a9 + 1778) == 1)
  {
LABEL_607:
    if (v44 == 1)
    {
      *&v438 = 0;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(&v438, &v438, texture[0]);
      if (v438)
      {
        isPhysicalHardware = re::VideoPixelBufferBase::colorTags(&v438);
        if ((isPhysicalHardware & 0xFFFFFF) == 0x10D0C)
        {
          *(a9 + 2088) = 1;
        }

        if (v438)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v438);
        }
      }
    }
  }

  v397 = a12;
  if (re::VideoDefaults::pipelineEnabled(isPhysicalHardware))
  {
    v46 = re::VideoManager::pipelineProcessor(a5);
    v467[49] = 0;
    *&v467[56] = 0;
    v468 = 0;
    *&v472 = 0;
    v473 = 0;
    *&v471 = 0;
    cf = 0;
    *v467 = *&a4->isa;
    v48 = a4[2].isa;
    v49 = *(a9 + 1778);
    if (v49 >= 4)
    {
      LOBYTE(v49) = 0;
    }

    v467[48] = v49;
    *&v467[24] = *(a2 + 44);
    v50 = *(a2 + 60);
    *&v467[16] = v48;
    *&v467[40] = v50;
    v51 = *(a2 + 10);
    if (v51 >= 6)
    {
      v52 = 0;
    }

    else
    {
      v52 = 0x30205060401uLL >> (8 * v51);
    }

    v467[50] = v52;
    if (!*a2)
    {
      goto LABEL_589;
    }

    p_time = v46;
    if (re::CoreVideoUtils::pixelBufferIsHDR(a2[2], v47))
    {
      v53 = 2;
    }

    else
    {
      v53 = 1;
    }

    v467[49] = v53;
    v54 = a2[4];
    if (cf)
    {
      CFRelease(cf);
    }

    cf = v54;
    if (v54)
    {
      CFRetain(v54);
    }

    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(&v467[56], *a2);
    if (*a2)
    {
      v21 = 0;
      a4 = &v469;
      do
      {
        v57 = *&v467[56];
        if (*&v467[56] <= v21)
        {
          goto LABEL_515;
        }

        re::VideoObject<re::VideoPixelBufferBase>::setRef(a4, &a4->isa, a2[v21 + 2]);
        v21 = (v21 + 1);
        ++a4;
      }

      while (v21 < *a2);
    }

    v375 = value;
    v39 = 1;
    v58 = re::VideoDefaults::pipelineEnabled(v55);
    v373 = v58;
    if (v58)
    {
      v59 = *(a3 + 9704);
      *&time.timescale = 0;
      LOWORD(time.epoch) = 514;
      BYTE2(time.epoch) = 2;
      LOBYTE(time.value) = v59 & 1;
      BYTE1(time.value) = 1;
      BYTE2(time.value) = (v59 & 4) != 0;
      BYTE3(time.value) = re::VideoDefaults::useBT1886ForCoreVideoGamma(v58);
      if ((v59 & 0x10) != 0)
      {
        CanUpscale = re::VideoPipelinePolicy::CanUpscale(v467, v60);
      }

      else
      {
        CanUpscale = 0;
      }

      BYTE4(time.value) = CanUpscale;
      v62 = re::VideoPSEProcessor::NeedsProcessing(CanUpscale);
      v63 = re::VideoDefaults::overridePseEnabled(v62);
      if (v63)
      {
        LOBYTE(v63) = re::VideoPipelinePolicy::CanDimFlashingLights(v467, v64);
      }

      BYTE5(time.value) = v63;
      MipMap = re::VideoPipelinePolicy::CanGenerateMipMap(v467, v64);
      BYTE6(time.value) = MipMap;
      HIBYTE(time.timescale) = (v59 & 2) != 0;
      re::VideoDefaults::logEnabled(MipMap);
      BYTE2(time.timescale) = 0;
      if (v467[49] <= 3u)
      {
        LOBYTE(time.flags) = 0x101u >> (8 * v467[49]);
        BYTE1(time.flags) = 0x1010000u >> (8 * v467[49]);
      }

      if (v59 < 0)
      {
        BYTE2(time.flags) = 1;
      }

      HIBYTE(time.value) = 0;
      v438 = *MEMORY[0x1E6960C70];
      v66 = *(MEMORY[0x1E6960C70] + 16);
      *&v439[8] = v438;
      *v439 = v66;
      *&v439[24] = v66;
      v440 = 0u;
      LOWORD(v441) = 514;
      BYTE2(v441) = 2;
      DWORD1(v441) = 1;
      WORD4(v441) = 0;
      BYTE10(v441) = 0;
      v451 = 0u;
      memset(v442, 0, 20);
      re::VideoManager::globalContext(a5);
      v67 = re::VideoPipeline::process((a3 + 1219));
      v394 = (a9 + 1952);
      if (v67)
      {
        v68 = *re::videoLogObjects(v67);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v68, OS_LOG_TYPE_DEFAULT, "Pipeline failed.", buf, 2u);
        }
      }

      else
      {
        *(a9 + 2072) = BYTE8(v441);
        v69 = SDWORD1(v441);
        *(a9 + 2080) = SDWORD1(v441);
        *(a9 + 1776) = (BYTE10(v441) & 0xFE) == 2;
        v70 = *&v442[8];
        *(a9 + 1680) = *v442;
        *(a9 + 1777) = BYTE9(v441);
        if (!v70)
        {
          goto LABEL_596;
        }

        if (v450 == 9)
        {
          v71 = 3;
        }

        else
        {
          v71 = 0;
        }

        if (v450 == 12)
        {
          v72 = 1;
        }

        else
        {
          v72 = v71;
        }

        *(a9 + 1688) = v72;
        *(a9 + 2080) = v69;
        re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(a9 + 48, v70);
        i = a9 + 896;
        re::DynamicInlineArray<re::VideoMetalTextures,2ul>::resize(a9 + 896, *&v442[8]);
        v399 = (a9 + 1848);
        re::DynamicInlineArray<re::VideoColorTags,2ul>::resize((a9 + 1848), *&v442[8]);
        location = (a9 + 1872);
        re::DynamicInlineArray<std::optional<re::VideoRectangularMask>,2ul>::resize(a9 + 1872, *&v442[8]);
        v389 = (a9 + 1824);
        re::DynamicInlineArray<re::VideoColorTags,2ul>::resize((a9 + 1824), *&v442[8]);
        v382 = (a9 + 2000);
        re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize(a9 + 2000, *&v442[8]);
        re::DynamicInlineArray<float,2ul>::resize(a9 + 2048, *&v442[8]);
        v73 = (a9 + 624);
        re::DynamicInlineArray<re::VideoMetalTextures,2ul>::resize(a9 + 624, *&v442[8]);
        re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(a9 + 80);
        re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(a9 + 352);
        if (*&v442[8])
        {
          value = 0;
          v378 = a9 + 912;
          v75 = a9 + 1744;
          v374 = a9 + 640;
          while (1)
          {
            v76 = *i;
            if (*i <= value)
            {
              goto LABEL_549;
            }

            v77 = &v442[208 * value + 24];
            objc_storeStrong((v378 + (value << 7) + 104), *(v77 + 1));
            v79 = *i;
            if (*i <= value)
            {
              break;
            }

            v80 = *&v442[8];
            if (*&v442[8] <= value)
            {
              goto LABEL_551;
            }

            objc_storeStrong((v378 + (value << 7) + 112), *(v77 + 2));
            v82 = *i;
            if (*i <= value)
            {
              goto LABEL_552;
            }

            v83 = *&v442[8];
            if (*&v442[8] <= value)
            {
              goto LABEL_553;
            }

            objc_storeStrong((v378 + (value << 7) + 120), *(v77 + 3));
            v85 = *&v442[8];
            if (*&v442[8] <= value)
            {
              goto LABEL_554;
            }

            v86 = *v399;
            if (*v399 <= value)
            {
              goto LABEL_555;
            }

            v87 = a9 + 1860 + 3 * value;
            *v87 = *(v77 + 84);
            *(v87 + 2) = v77[170];
            v88 = *v389;
            if (*v389 <= value)
            {
              goto LABEL_556;
            }

            v89 = a9 + 1836 + 3 * value;
            *v89 = *(v77 + 84);
            *(v89 + 2) = v77[170];
            v90 = *(a9 + 48);
            if (v90 <= value)
            {
              goto LABEL_557;
            }

            re::VideoObject<re::VideoPixelBufferBase>::setRef(a9 + 64 + 8 * value, (a9 + 64 + 8 * value), *(v77 + 22));
            v91 = *&v442[8];
            if (*&v442[8] <= value)
            {
              goto LABEL_558;
            }

            v92 = *location;
            if (*location <= value)
            {
              goto LABEL_559;
            }

            v93 = (a9 + 1888 + 32 * value);
            *(v93 + 9) = *(v77 + 145);
            *v93 = *(v77 + 136);
            v94 = *v382;
            if (*v382 <= value)
            {
              goto LABEL_560;
            }

            v95 = v451;
            if (*(&v451 + 1))
            {
              atomic_fetch_add_explicit((*(&v451 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v96 = a9 + 2016 + 16 * value;
            v97 = *(v96 + 8);
            *v96 = v95;
            if (v97)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v97);
            }

            v98 = *&v442[8];
            if (*&v442[8] <= value)
            {
              goto LABEL_561;
            }

            if (*(v77 + 6))
            {
              re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize(v394, value + 1);
              v99 = *&v442[8];
              if (*&v442[8] <= value)
              {
                goto LABEL_577;
              }

              v100 = *v394;
              if (*v394 <= value)
              {
                goto LABEL_578;
              }

              v102 = *(v77 + 6);
              v101 = *(v77 + 7);
              if (v101)
              {
                atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
              }

              v103 = (a9 + 1968 + 16 * value);
              v104 = v103[1];
              *v103 = v102;
              v103[1] = v101;
              if (v104)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v104);
              }
            }

            v105 = *&v442[8];
            if (*&v442[8] <= value)
            {
              goto LABEL_562;
            }

            if (v77[40] == 1)
            {
              re::DynamicInlineArray<re::VideoObject<re::VideoColorTransformBase>,2ul>::resize(a9 + 1792, value + 1);
              v107 = *&v442[8];
              if (*&v442[8] <= value)
              {
                goto LABEL_582;
              }

              if ((v77[40] & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:nn200100]();
                goto LABEL_604;
              }

              v108 = *v40;
              if (*v40 <= value)
              {
                goto LABEL_583;
              }

              re::VideoObject<re::VideoColorTransformBase>::setRef(a9 + 1808 + 8 * value, (a9 + 1808 + 8 * value), *(v77 + 4));
              v105 = *&v442[8];
            }

            if (v105 <= value)
            {
              goto LABEL_563;
            }

            *(a9 + 1728) = vbslq_s8(vcgtq_f64(*(v77 + 5), *(a9 + 1728)), *(v77 + 5), *(a9 + 1728));
            v109 = *(&v447[1] + 8);
            *v75 = *(v447 + 8);
            *(a9 + 1760) = v109;
            v110 = *(a9 + 1872);
            if (v110 <= value)
            {
              goto LABEL_564;
            }

            *v93 = *(v77 + 136);
            *(v93 + 9) = *(v77 + 145);
            v111 = vcvtq_u64_f64(*(v77 + 4));
            *(a9 + 1696) = vbslq_s8(vcgtq_u64(*(a9 + 1696), v111), *(a9 + 1696), v111);
            v112 = *(a9 + 2048);
            if (v112 <= value)
            {
              goto LABEL_565;
            }

            *(a9 + 2060 + 4 * value) = *(v77 + 32);
            if (*(v77 + 23) || *(v77 + 24) || *(v77 + 25))
            {
              re::DynamicInlineArray<re::VideoMetalTextures,2ul>::resize(a9 + 624, value + 1);
              v114 = *v73;
              if (*v73 <= value)
              {
                goto LABEL_566;
              }

              v115 = *&v442[8];
              if (*&v442[8] <= value)
              {
                goto LABEL_567;
              }

              p_time = v374 + (value << 7) + 104;
              objc_storeStrong(p_time, *(v77 + 23));
              v117 = *v73;
              if (*v73 <= value)
              {
                goto LABEL_568;
              }

              v118 = *&v442[8];
              if (*&v442[8] <= value)
              {
                goto LABEL_569;
              }

              objc_storeStrong((v374 + (value << 7) + 112), *(v77 + 24));
              v120 = *v73;
              if (*v73 <= value)
              {
                goto LABEL_570;
              }

              v121 = *&v442[8];
              if (*&v442[8] <= value)
              {
                goto LABEL_571;
              }

              objc_storeStrong((v374 + (value << 7) + 120), *(v77 + 25));
              v105 = *&v442[8];
              ++value;
            }

            else
            {
              ++value;
            }

            if (value >= v105)
            {
              goto LABEL_121;
            }
          }

LABEL_550:
          re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v79);
          _os_crash();
          __break(1u);
LABEL_551:
          re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v80);
          _os_crash();
          __break(1u);
LABEL_552:
          re::internal::assertLog(6, v81, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v82);
          _os_crash();
          __break(1u);
LABEL_553:
          re::internal::assertLog(6, v81, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v83);
          _os_crash();
          __break(1u);
LABEL_554:
          re::internal::assertLog(6, v84, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v85);
          _os_crash();
          __break(1u);
LABEL_555:
          re::internal::assertLog(6, v84, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v86);
          _os_crash();
          __break(1u);
LABEL_556:
          re::internal::assertLog(6, v84, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v88);
          _os_crash();
          __break(1u);
LABEL_557:
          re::internal::assertLog(6, v84, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v90);
          _os_crash();
          __break(1u);
LABEL_558:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v91);
          _os_crash();
          __break(1u);
LABEL_559:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v92);
          _os_crash();
          __break(1u);
LABEL_560:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v94);
          _os_crash();
          __break(1u);
LABEL_561:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v98);
          _os_crash();
          __break(1u);
LABEL_562:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v105);
          _os_crash();
          __break(1u);
LABEL_563:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v105);
          _os_crash();
          __break(1u);
LABEL_564:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v110);
          _os_crash();
          __break(1u);
LABEL_565:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v112);
          _os_crash();
          __break(1u);
LABEL_566:
          re::internal::assertLog(6, v113, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v114);
          _os_crash();
          __break(1u);
LABEL_567:
          re::internal::assertLog(6, v113, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v115);
          _os_crash();
          __break(1u);
LABEL_568:
          re::internal::assertLog(6, v116, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v117);
          _os_crash();
          __break(1u);
LABEL_569:
          re::internal::assertLog(6, v116, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v118);
          _os_crash();
          __break(1u);
LABEL_570:
          re::internal::assertLog(6, v119, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v120);
          _os_crash();
          __break(1u);
LABEL_571:
          re::internal::assertLog(6, v119, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v121);
          _os_crash();
          __break(1u);
          goto LABEL_572;
        }

LABEL_121:
        v39 = 0;
        *(a9 + 1784) = 0;
      }

      if (*(&v451 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v451 + 1));
      }

      re::DynamicInlineArray<re::VideoPipelineRenderableChannel,2ul>::clear(&v442[8]);
      v41 = (a9 + 1952);
    }

    if (cf)
    {
      re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(cf);
    }

    cf = 0;
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&v467[56]);
    value = v375;
    if (v373)
    {
      goto LABEL_507;
    }
  }

  else
  {
    v39 = 1;
  }

  i = 0;
  v434 = 0;
  v435 = 0;
  *buf = 0;
  v428 = 0;
  v422 = 0;
  v423 = 0;
  v414 = 0;
  v415 = 0;
  v411 = 0;
  v412 = 0;
  *&v438 = 0;
  DWORD2(v438) = 0;
  *(a9 + 2080) = 1;
  if (*(a9 + 1778) == 1)
  {
    p_time = v453.isa;
    if (v453.isa)
    {
      v122 = 0;
      LODWORD(i) = 1;
      do
      {
        PixelFormatType = texture[v122];
        if (PixelFormatType)
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(PixelFormatType);
          p_time = v453.isa;
        }

        i = (re::CoreVideoUtils::pixelFormatIsTriPlanar(PixelFormatType) ^ 1) & i;
        ++v122;
      }

      while (v122 < p_time);
    }

    else
    {
      i = 1;
    }
  }

  v383 = (*(*a5[39] + 136))(a5[39]) == 0;
  memset(&v410, 0, sizeof(v410));
  CMTimeMakeWithSeconds(&v410, *(a10 + 8), 1000);
  memset(&v409, 0, sizeof(v409));
  CMTimeMakeWithSeconds(&v409, *(a10 + 24), 1000);
  if (!v453.isa)
  {
    goto LABEL_581;
  }

  IsHDR = re::CoreVideoUtils::pixelBufferIsHDR(texture[0], v124);
  LODWORD(v399) = v39;
  if (IsHDR)
  {
    *(a9 + 1776) = 1;
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(a9 + 48);
    *(a9 + 1600) = 0;
    ++*(a9 + 1608);
    if (a3[1213])
    {
      re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize(v41, *a2);
      re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::resize(&v411, *v41);
      if (*a2)
      {
        re::VideoHistogram::create(v129);
      }
    }

    if (*a10 == 1)
    {
      *v467 = v409;
      time = v410;
      if (re::CMTimeCompareWithThreshold(v467, &time, v128, *&v410.value))
      {
        v130 = *(a10 + 16);
        v407[0] = *a10;
        v407[1] = v130;
        re::DynamicString::DynamicString(v408, (a10 + 32));
        re::dumpHDRFrameToFile(&v453, (a9 + 1600), value, v407, 0, v388, *(a10 + 24));
        if (v408[0])
        {
          if (v408[1])
          {
            (*(*v408[0] + 40))();
          }

          memset(v408, 0, sizeof(v408));
        }
      }
    }

    IsHDR = re::videoPlaybackCreateHDRConfigs(&v453, *(a9 + 1780), a6, a7, value, a3 + 10, (a3 + 11), (a9 + 1600), *(a9 + 2080), (a9 + 48), buf);
    v39 = IsHDR;
    if (!IsHDR)
    {
      goto LABEL_238;
    }

    v131 = *re::videoLogObjects(IsHDR);
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      *v467 = 0;
      _os_log_error_impl(&dword_1E1C61000, v131, OS_LOG_TYPE_ERROR, "Unable to process HDR content.", v467, 2u);
    }

LABEL_150:

    goto LABEL_506;
  }

  if (!v377)
  {
    IsHDR = a9 + 48;
    if ((a9 + 48) != &v453)
    {
      re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy(IsHDR, &v453);
      ++*(a9 + 56);
    }

    goto LABEL_238;
  }

  v380 = i;
  i = texture;
  v132 = v453.isa;
  v376 = value;
  v395 = v41;
  if (!v453.isa)
  {
    if (*(a9 + 2080) > 1uLL)
    {
      goto LABEL_168;
    }

LABEL_218:
    a2 = (a9 + 48);
    if ((a9 + 48) != &v453)
    {
      re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy((a9 + 48), &v453);
      ++*(a9 + 56);
    }

    i = v380;
    if (a3[1213])
    {
      re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::resize(&v422, *a2);
      v182 = *(value + 112) ? *value : 0;
      v183 = v422;
      if (v422)
      {
        p_time = 0;
        v39 = a9 + 64;
        value = v426;
        do
        {
          v184 = *a2;
          if (*a2 <= p_time)
          {
            goto LABEL_573;
          }

          v185 = *(v39 + 8 * p_time);
          if (v185)
          {
            v186 = CVPixelBufferGetIOSurface(v185);
            CFRetain(v186);
            v183 = v422;
          }

          else
          {
            v186 = 0;
          }

          *v467 = v186;
          if (v183 <= p_time)
          {
            goto LABEL_574;
          }

          *(value - 16) = v186;
          v187 = re::VideoHistogramManager::selectDummySurface((a3 + 910), v186, v182);
          v189 = v422;
          if (v422 <= p_time)
          {
            goto LABEL_575;
          }

          re::VideoObject<re::VideoColorTransformBase>::setRef(value - 8, (value - 8), v187);
          v183 = v422;
          if (v422 <= p_time)
          {
            goto LABEL_576;
          }

          *value = 1;
          value += 24;
          ++p_time;
        }

        while (p_time < v183);
      }
    }

    goto LABEL_234;
  }

  p_time = 0;
  v133 = (a9 + 1808);
  v131 = texture;
  do
  {
    v134 = *v40;
    if (*v40 <= p_time)
    {
      goto LABEL_528;
    }

    if (*v133)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v133);
      v132 = v453.isa;
    }

    *v133 = 0;
    if (v132 <= p_time)
    {
LABEL_529:
      re::internal::assertLog(6, v126, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v132);
      _os_crash();
      __break(1u);
      re::internal::assertLog(6, v360, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v361);
      _os_crash();
      __break(1u);
LABEL_530:
      re::internal::assertLog(6, v126, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v135);
      _os_crash();
      __break(1u);
LABEL_531:
      re::internal::assertLog(6, v227, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v235.isa);
      _os_crash();
      __break(1u);
      goto LABEL_532;
    }

    v135 = *v40;
    if (*v40 <= p_time)
    {
      goto LABEL_530;
    }

    IsHDR = re::VideoColorManager::computeTransform((a3 + 588), &v131->isa, *value, v133);
    ++p_time;
    v132 = v453.isa;
    ++v131;
    ++v133;
  }

  while (p_time < v453.isa);
  if (*(a9 + 2080) <= 1uLL)
  {
    goto LABEL_218;
  }

  if (!v453.isa)
  {
LABEL_168:
    p_time = 0;
    v138 = 0;
    goto LABEL_169;
  }

  p_time = 0;
  v136 = 0;
  v137 = texture;
  do
  {
    p_time |= re::VideoPixelBufferBase::protectionOptions(v137);
    ++v136;
    v138 = v453.isa;
    ++v137;
  }

  while (v136 < v453.isa);
LABEL_169:
  locationa = p_time;
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(a9 + 48, v138);
  re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::resize(&v422, v453.isa);
  v140 = v453.isa;
  if (v453.isa)
  {
    v141 = 0;
    v75 = 8;
    while (1)
    {
      v142 = *(i + v141);
      if (v142)
      {
        v143 = CVPixelBufferGetWidth(v142);
        v140 = v453.isa;
      }

      else
      {
        v143 = 0;
      }

      a2 = (v75 - 8);
      if (v140 <= v75 - 8)
      {
        break;
      }

      value = *(a9 + 2080);
      v144 = *(i + v141);
      if (v144)
      {
        p_time = CVPixelBufferGetHeight(v144);
        v145 = *(a9 + 2080);
        v140 = v453.isa;
      }

      else
      {
        p_time = 0;
        v145 = *(a9 + 2080);
      }

      if (v140 <= a2)
      {
        goto LABEL_539;
      }

      v39 = i;
      v146 = *(i + v141);
      if (v146)
      {
        i = CVPixelBufferGetPixelFormatType(v146);
        v140 = v453.isa;
      }

      else
      {
        i = 0;
      }

      if (v140 <= a2)
      {
        goto LABEL_540;
      }

      p_time *= v145;
      v147 = re::VideoPixelBufferBase::colorTags((v39 + v141));
      v148 = v147;
      v149 = re::VideoDefaults::compressionAllowed(v147);
      re::VideoSimplePixelBufferAllocator::createPixelBuffer((a3 + 11), value * v143, p_time, i, v148, BYTE1(v148), BYTE2(v148), 0, v467, 0x400u, 0x10u, v149, locationa);
      v151 = *(a9 + 48);
      if (v151 <= a2)
      {
        goto LABEL_541;
      }

      *(a9 + 8 * v75) = *v467;
      v152 = v453.isa;
      if (v453.isa <= a2)
      {
        goto LABEL_542;
      }

      i = v39;
      v154 = re::VideoPixelBufferBase::cleanRect((v39 + v141));
      v158 = v453.isa;
      if (v453.isa <= a2)
      {
        goto LABEL_543;
      }

      v159 = v154;
      v160 = v155;
      v161 = v156;
      v162 = v157;
      v163 = *(v39 + v141);
      if (v163)
      {
        CVImageBufferGetDisplaySize(v163);
        v158 = v453.isa;
      }

      if (v158 <= a2)
      {
        goto LABEL_544;
      }

      v164 = *(v39 + v141);
      if (v164)
      {
        CVImageBufferGetDisplaySize(v164);
      }

      v165 = *(a9 + 48);
      if (v165 <= a2)
      {
        goto LABEL_545;
      }

      v166 = a9 + v141;
      re::VideoPixelBufferBase::setCleanRect((a9 + v141 + 64), v159 * *(a9 + 2080), v160 * *(a9 + 2080), v161 * *(a9 + 2080), v162 * *(a9 + 2080));
      v168 = *(a9 + 48);
      if (v168 <= a2)
      {
        goto LABEL_546;
      }

      if (*(a9 + 8 * v75))
      {
        CVImageBufferSetDisplayDimensions();
        v168 = *(a9 + 48);
      }

      if (v168 <= a2)
      {
        goto LABEL_547;
      }

      v170 = re::VideoPixelBufferBase::horizontalDisparityAdjustment((v166 + 64));
      if (v170 > 0.0)
      {
        v171 = *(a9 + 48);
        if (v171 <= a2)
        {
          goto LABEL_579;
        }

        re::VideoPixelBufferBase::setHorizontalDisparityAdjustment((v166 + 64), v170);
      }

      v172 = v453.isa;
      if (v453.isa <= a2)
      {
        goto LABEL_548;
      }

      re::VideoPixelBufferBase::rectangularMask((v39 + v141), v75 - 8, v467);
      if (v467[24] == 1)
      {
        v173 = *(a9 + 48);
        if (v173 <= a2)
        {
          goto LABEL_580;
        }

        re::VideoPixelBufferBase::setRectangularMask((v166 + 64), COERCE_DOUBLE(vmul_n_f32(*&v467[8], *(a9 + 2080))), COERCE_DOUBLE(vmul_n_f32(*&v467[16], *(a9 + 2080))), COERCE_DOUBLE(vmul_n_f32(*v467, *(a9 + 2080))));
      }

      v140 = v453.isa;
      v174 = v75 - 7;
      ++v75;
      v141 += 8;
      if (v174 >= v453.isa)
      {
        goto LABEL_204;
      }
    }

LABEL_538:
    re::internal::assertLog(6, v139, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v140);
    _os_crash();
    __break(1u);
LABEL_539:
    re::internal::assertLog(6, v139, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v140);
    _os_crash();
    __break(1u);
LABEL_540:
    re::internal::assertLog(6, v139, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v140);
    _os_crash();
    __break(1u);
LABEL_541:
    re::internal::assertLog(6, v150, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v151);
    _os_crash();
    __break(1u);
LABEL_542:
    re::internal::assertLog(6, v150, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v152);
    _os_crash();
    __break(1u);
LABEL_543:
    re::internal::assertLog(6, v153, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v158);
    _os_crash();
    __break(1u);
LABEL_544:
    re::internal::assertLog(6, v153, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v158);
    _os_crash();
    __break(1u);
LABEL_545:
    re::internal::assertLog(6, v153, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v165);
    _os_crash();
    __break(1u);
LABEL_546:
    re::internal::assertLog(6, v167, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v168);
    _os_crash();
    __break(1u);
LABEL_547:
    re::internal::assertLog(6, v167, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v168);
    _os_crash();
    __break(1u);
LABEL_548:
    re::internal::assertLog(6, v169, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v172);
    _os_crash();
    __break(1u);
LABEL_549:
    re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v76);
    _os_crash();
    __break(1u);
    goto LABEL_550;
  }

LABEL_204:
  v175 = v422;
  i = v380;
  if (v422)
  {
    a2 = 0;
    p_time = a9 + 64;
    v75 = v426;
    v39 = &v453;
    while (1)
    {
      v176 = v453.isa;
      if (v453.isa <= a2)
      {
        goto LABEL_534;
      }

      v177 = texture[a2];
      if (v177)
      {
        v178 = CVPixelBufferGetIOSurface(v177);
        CFRetain(v178);
        v175 = v422;
      }

      else
      {
        v178 = 0;
      }

      *v467 = v178;
      if (v175 <= a2)
      {
        break;
      }

      *(v75 - 16) = v178;
      v179 = *(a9 + 48);
      if (v179 <= a2)
      {
        goto LABEL_536;
      }

      IsHDR = *(p_time + 8 * a2);
      if (IsHDR)
      {
        v180 = CVPixelBufferGetIOSurface(IsHDR);
        IsHDR = CFRetain(v180);
        v175 = v422;
      }

      else
      {
        v180 = 0;
      }

      *v467 = v180;
      if (v175 <= a2)
      {
        goto LABEL_537;
      }

      *(v75 - 8) = v180;
      *v75 = 0;
      v75 += 24;
      a2 = (a2 + 1);
      if (a2 >= v175)
      {
        goto LABEL_234;
      }
    }

LABEL_535:
    re::internal::assertLog(6, v139, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v175);
    _os_crash();
    __break(1u);
LABEL_536:
    re::internal::assertLog(6, v139, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v179);
    _os_crash();
    __break(1u);
LABEL_537:
    re::internal::assertLog(6, v139, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v175);
    _os_crash();
    __break(1u);
    goto LABEL_538;
  }

LABEL_234:
  value = v376;
  if (a3[1213])
  {
    if (v422)
    {
      re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize(v395, v422);
      re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::resize(&v411, v422);
      if (v422)
      {
        v190 = re::VideoSurfaceBase::colorTags(&v425);
        re::VideoHistogram::create(v190);
      }
    }
  }

LABEL_238:
  if (*a10 == 1)
  {
    *v467 = v409;
    time = v410;
    IsHDR = re::CMTimeCompareWithThreshold(v467, &time, v127, *&v410.value);
    if (IsHDR)
    {
      v191 = *(a10 + 16);
      v405[0] = *a10;
      v405[1] = v191;
      re::DynamicString::DynamicString(v406, (a10 + 32));
      re::dumpHDRFrameToFile((a9 + 48), (a9 + 1600), value, v405, 1, v388, *(a10 + 24));
      IsHDR = v406[0];
      if (v406[0])
      {
        if (v406[1])
        {
          IsHDR = (*(*v406[0] + 40))();
        }

        memset(v406, 0, sizeof(v406));
      }

      *(a10 + 8) = *(a10 + 16) + *(a10 + 8);
    }
  }

  if ((v383 & i) != 0)
  {
    v192 = re::VideoDefaults::aseAllowed(IsHDR);
    if (v192)
    {
      if (v193)
      {
        if (*(a9 + 2080) >= 2uLL)
        {
          a2 = (a3 + 6);
          i = a3[6];
          v195 = (a9 + 48);
          v194 = *(a9 + 48);
          if (i != v194)
          {
            re::DynamicInlineArray<re::SharedPtr<re::VideoASEFrameMeasurement>,2ul>::resize((a3 + 6), v194);
            i = *v195;
          }

          if (i > v434)
          {
            if (i < 3)
            {
              bzero(v436 + 40 * v434, 40 * (i - v434));
              goto LABEL_257;
            }

LABEL_604:
            re::internal::assertLog(4, v194, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
            result = _os_crash();
            __break(1u);
            return result;
          }

          if (i < v434)
          {
LABEL_257:
            v434 = i;
            ++v435;
          }

          if (i)
          {
            p_time = v436;
            v197 = 8;
            while (1)
            {
              value = v197 - 8;
              v198 = *a2;
              if (*a2 <= v197 - 8)
              {
                goto LABEL_584;
              }

              if (!a3[v197])
              {
                re::VideoASEFrameMeasurement::create(v193, v467);
                v199 = *a2;
                if (*a2 <= value)
                {
                  goto LABEL_591;
                }

                v200 = a3[v197];
                a3[v197] = *v467;
                if (v200)
                {
                }

                i = *v195;
              }

              if (i <= value)
              {
                goto LABEL_585;
              }

              v201 = *(a9 + 1712);
              v202 = *(a9 + 1720);
              v203 = *(a9 + 8 * v197);
              if (v203)
              {
                v204 = CVPixelBufferGetWidth(v203);
                i = *v195;
              }

              else
              {
                v204 = 0;
              }

              if (i <= value)
              {
                goto LABEL_586;
              }

              v205 = *(a9 + 8 * v197);
              if (v205)
              {
                i = CVPixelBufferGetHeight(v205);
              }

              else
              {
                i = 0;
              }

              v206 = *a2;
              if (*a2 <= value)
              {
                goto LABEL_587;
              }

              v207 = a3[v197];
              v404 = v207;
              if (v207)
              {
                v208 = v207 + 8;
              }

              v209 = v434;
              if (v434 <= value)
              {
                goto LABEL_588;
              }

              v210 = re::VideoASEProcessor::createConfig(a3, v201, v202, v204, i, &v404, p_time);
              v39 = v210;
              if (v404)
              {

                v404 = 0;
              }

              if (v39)
              {
                break;
              }

              v193 = re::VideoDefaults::logEnabled(v210);
              if (v193)
              {
                v212 = *re::videoLogObjects(v193);
                if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                {
                  v39 = *(a9 + 48);
                  v213 = *(a9 + 1712);
                  v214 = *(a9 + 1720);
                  v215 = *re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[]((a9 + 48), v197 - 8);
                  if (v215)
                  {
                    v390 = CVPixelBufferGetWidth(v215);
                  }

                  else
                  {
                    v390 = 0;
                  }

                  v216 = *re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[]((a9 + 48), v197 - 8);
                  if (v216)
                  {
                    v216 = CVPixelBufferGetHeight(v216);
                  }

                  *v467 = 134219264;
                  *&v467[4] = v197 - 7;
                  *&v467[12] = 2048;
                  *&v467[14] = v39;
                  *&v467[22] = 2048;
                  *&v467[24] = v213;
                  *&v467[32] = 2048;
                  *&v467[34] = v214;
                  *&v467[42] = 2048;
                  *&v467[44] = v390;
                  *&v467[52] = 2048;
                  *&v467[54] = v216;
                  _os_log_impl(&dword_1E1C61000, v212, OS_LOG_TYPE_DEFAULT, "Upscaling %zu of %zu from %zux%zu to %zux%zu", v467, 0x3Eu);
                }
              }

              i = *v195;
              v211 = v197 - 7;
              ++v197;
              p_time += 40;
              if (v211 >= *v195)
              {
                goto LABEL_292;
              }
            }

            v131 = *re::videoLogObjects(v210);
            if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
            {
LABEL_510:
              v39 = 1;
              goto LABEL_150;
            }

LABEL_532:
            *v467 = 0;
            _os_log_error_impl(&dword_1E1C61000, v131, OS_LOG_TYPE_ERROR, "Unable to create ASE configuration.", v467, 2u);
            goto LABEL_510;
          }
        }
      }
    }
  }

LABEL_292:
  a2 = (a9 + 48);
  v217 = *(a9 + 48);
  *(a9 + 1696) = 0u;
  if (v217)
  {
    v218 = 0;
    v131 = 0;
    p_time = a9 + 1696;
    v219 = (a9 + 64);
    do
    {
      v220 = *&v219[v131];
      if (v220)
      {
        v221 = CVPixelBufferGetWidth(v220);
        v222 = *p_time;
        if (*p_time <= v221)
        {
          v222 = v221;
        }

        *p_time = v222;
        v217 = *a2;
        if (*a2 <= v131)
        {
          re::internal::assertLog(6, v217, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v131, v217);
          _os_crash();
          __break(1u);
LABEL_519:
          re::internal::assertLog(6, v230, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v232);
          _os_crash();
          __break(1u);
LABEL_520:
          re::internal::assertLog(6, v230, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v232);
          _os_crash();
          __break(1u);
LABEL_521:
          re::internal::assertLog(6, v237, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v242);
          _os_crash();
          __break(1u);
LABEL_522:
          re::internal::assertLog(6, v243, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v245.isa);
          _os_crash();
          __break(1u);
LABEL_523:
          re::internal::assertLog(6, v243, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v246);
          _os_crash();
          __break(1u);
LABEL_524:
          re::internal::assertLog(6, v227, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v247);
          _os_crash();
          __break(1u);
          re::internal::assertLog(6, v354, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v219, v355);
          _os_crash();
          __break(1u);
LABEL_525:
          re::internal::assertLog(6, v325, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v326);
          _os_crash();
          __break(1u);
LABEL_526:
          re::internal::assertLog(6, v325, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v327);
          _os_crash();
          __break(1u);
LABEL_527:
          re::internal::assertLog(6, v328, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v329);
          _os_crash();
          __break(1u);
          re::internal::assertLog(6, v356, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v357);
          _os_crash();
          __break(1u);
LABEL_528:
          re::internal::assertLog(6, v126, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v134);
          _os_crash();
          __break(1u);
          re::internal::assertLog(6, v358, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v359);
          _os_crash();
          __break(1u);
          goto LABEL_529;
        }

        v223 = *&v219[v131];
        if (v223)
        {
          v223 = CVPixelBufferGetHeight(v223);
          v217 = *a2;
        }

        v218 = *(a9 + 1704);
        if (v218 <= v223)
        {
          v218 = v223;
        }

        *(a9 + 1704) = v218;
      }

      v131 = (v131 + 1);
    }

    while (v131 < v217);
    v224 = *p_time;
    v225 = v218;
  }

  else
  {
    v225 = 0.0;
    v224 = 0.0;
  }

  *(a9 + 1744) = 0u;
  *(a9 + 1728) = 0u;
  *(a9 + 1760) = v224;
  v131 = (a9 + 2048);
  *(a9 + 1768) = v225;
  re::DynamicInlineArray<float,2ul>::resize(a9 + 2048, v217);
  p_time = a9 + 1872;
  v226 = re::DynamicInlineArray<std::optional<re::VideoRectangularMask>,2ul>::resize(a9 + 1872, *(a9 + 48));
  v228 = *a2;
  if (*a2)
  {
    v219 = (a9 + 1728);
    value = 515;
    v229 = 1888;
    i = 64;
    do
    {
      v39 = value - 515;
      v226 = *(a9 + i);
      if (v226)
      {
        v231 = CVImageBufferGetDisplaySize(v226).width;
        if (*v219 >= v231)
        {
          v231 = *v219;
        }

        *v219 = v231;
        v232 = *a2;
        if (*a2 <= v39)
        {
          goto LABEL_519;
        }

        v233 = *(a9 + i);
        if (v233)
        {
          v234 = CVImageBufferGetDisplaySize(v233).height;
          v232 = *a2;
        }

        else
        {
          v234 = 0.0;
        }

        v236 = *(a9 + 1736);
        if (v236 < v234)
        {
          v236 = v234;
        }

        *(a9 + 1736) = v236;
        if (v232 <= v39)
        {
          goto LABEL_520;
        }

        v238.f64[0] = re::VideoPixelBufferBase::cleanRect((a9 + i));
        v238.f64[1] = v239;
        *(a9 + 1744) = vbslq_s8(vcgtq_f64(v238, *(a9 + 1744)), v238, *(a9 + 1744));
        v241.f64[1] = v240;
        *(a9 + 1760) = vbslq_s8(vcgtq_f64(*(a9 + 1760), v241), v241, *(a9 + 1760));
        v242 = *(a9 + 48);
        if (v242 <= v39)
        {
          goto LABEL_521;
        }

        v244 = re::VideoPixelBufferBase::horizontalDisparityAdjustment((a9 + i));
        v245.isa = v131->isa;
        if (v131->isa <= v39)
        {
          goto LABEL_522;
        }

        *(a9 + 4 * value) = v244;
        v246 = *(a9 + 48);
        if (v246 <= v39)
        {
          goto LABEL_523;
        }

        re::VideoPixelBufferBase::normalizedRectangularMask((a9 + i), value - 515, v467);
        v247 = *p_time;
        if (*p_time <= v39)
        {
          goto LABEL_524;
        }

        v248 = (a9 + v229);
        *v248 = *v467;
        *(v248 + 9) = *&v467[9];
        v228 = *(a9 + 48);
      }

      else
      {
        v235.isa = v131->isa;
        if (v131->isa <= v39)
        {
          goto LABEL_531;
        }

        *(a9 + 4 * value) = 0;
      }

      v249 = value - 514;
      ++value;
      v229 += 32;
      i += 8;
    }

    while (v249 < v228);
  }

  *(a9 + 2072) = 0;
  v250 = re::VideoDefaults::pseAllowed(v226);
  if ((v250 & 1) == 0)
  {
    goto LABEL_338;
  }

  v252 = re::VideoPSEProcessor::NeedsProcessing(v250);
  if (!re::VideoDefaults::overridePseEnabled(v252))
  {
    goto LABEL_338;
  }

  if (!a3[945])
  {
    operator new();
  }

  *v467 = 0;
  *&v467[8] = 0;
  *&time.value = *a9;
  time.epoch = *(a9 + 16);
  Seconds = CMTimeGetSeconds(&time);
  PSEConfigs = re::videoPlaybackCreatePSEConfigs(a9 + 48, a7, (a3 + 945), (a3 + 929), v467, &v414, Seconds);
  if (PSEConfigs)
  {
    if (PSEConfigs == 2)
    {
      goto LABEL_597;
    }

    a4 = *re::videoLogObjects(PSEConfigs);
    if (os_log_type_enabled(a4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_517;
    }

    goto LABEL_336;
  }

  if (a2 != v467)
  {
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy((a9 + 48), v467);
    ++*(a9 + 56);
  }

  *(a9 + 2072) = 1;
  while (2)
  {
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v467);
LABEL_338:
    if (!*a2)
    {
      goto LABEL_590;
    }

    v255 = (v18 + 64);
    v256 = re::CoreVideoUtils::pixelBufferColorGamut(*(v18 + 8), v18 + 1688);
    if ((v256 & 1) == 0)
    {
      v257 = *re::videoLogObjects(v256);
      if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
      {
        *v467 = 0;
        _os_log_impl(&dword_1E1C61000, v257, OS_LOG_TYPE_DEFAULT, "Could not determine color gamut of presentation group pixel buffer. Fallback to Rec709", v467, 2u);
      }
    }

    *(v18 + 210) = 0;
    if (!*(v18 + 6))
    {
      goto LABEL_377;
    }

    v258 = 0;
    v259 = (v18 + 64);
    do
    {
      *(v18 + 210) |= re::VideoPixelBufferBase::protectionOptions(v259);
      ++v258;
      v260 = *(v18 + 6);
      ++v259;
    }

    while (v258 < v260);
    if (!v260)
    {
      goto LABEL_377;
    }

    v261 = 0;
    v262 = MEMORY[0x1E695F060];
    value = MEMORY[0x1E695F058];
    do
    {
      v467[2] = 2;
      *v467 = 514;
      *&v467[8] = *v262;
      v263 = *(value + 16);
      *&v467[24] = *value;
      *&v467[40] = v263;
      *&v467[56] = 0;
      LOBYTE(v468) = 0;
      LOBYTE(cf) = 0;
      v471 = 0u;
      v472 = 0u;
      TexturesFromPixelBuffer = re::VideoTextureCache::createTexturesFromPixelBuffer((a3 + 35), v255[v261], v467, 0, 0);
      v265 = TexturesFromPixelBuffer;
      if (TexturesFromPixelBuffer)
      {
        v266 = *re::videoLogObjects(TexturesFromPixelBuffer);
        if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
        {
          LOWORD(time.value) = 0;
          _os_log_error_impl(&dword_1E1C61000, v266, OS_LOG_TYPE_ERROR, "Unable to create texture for presentation group pixel buffer.", &time, 2u);
        }

        LODWORD(v399) = 1;
      }

      else
      {
        re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::add((v18 + 80), v467);
      }

      for (i = 120; i != 96; i -= 8)
      {
        if (*&v467[i])
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v467[i]);
        }

        *&v467[i] = 0;
      }

      if (v471)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v471);
      }

      if (v265)
      {
        goto LABEL_505;
      }

      ++v261;
    }

    while (v261 < *a2);
    if (!*a2 || (a3[1213] & 2) == 0)
    {
LABEL_377:
      *(v18 + 223) = 0;
      v18[1777] = 0;
      re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear((v18 + 1648));
      if (*a2)
      {
        v272 = 0;
        v273 = *MEMORY[0x1E6966290];
        while (1)
        {
          v274 = v255[v272];
          v275 = v274 ? CVPixelBufferGetPixelFormatType(v274) : 0;
          *v467 = 0;
          re::VideoPixelFormatDescriptionManager::descriptionForPixelFormat((a3 + 582), v275, v467);
          v277 = (v18[1777] & 1) != 0 || re::VideoPixelFormatDescriptionBase::BOOLeanValue(v467, v273, 0);
          v18[1777] = v277;
          v278 = *(v18 + 206);
          if (v278 >= 2)
          {
            break;
          }

          *&v18[8 * v278 + 1664] = *v467;
          *(v18 + 206) = v278 + 1;
          ++*(v18 + 414);
          ++v272;
          v279 = *(v18 + 6);
          if (v272 >= v279)
          {
            goto LABEL_389;
          }
        }

LABEL_602:
        re::internal::assertLog(4, v276, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        _os_crash();
        __break(1u);
      }

      v279 = 0;
LABEL_389:
      v280 = (v18 + 1824);
      re::DynamicInlineArray<re::VideoColorTags,2ul>::resize(v18 + 228, v279);
      if (*a2)
      {
        a4 = 0;
        p_time = (v18 + 1836);
        while (1)
        {
          v281 = re::VideoPixelBufferBase::colorTags(v255);
          v283 = *v280;
          if (*v280 <= a4)
          {
            break;
          }

          *p_time = v281;
          *(p_time + 2) = BYTE2(v281);
          a4 = (a4 + 1);
          p_time += 3;
          ++v255;
          if (a4 >= *a2)
          {
            goto LABEL_393;
          }
        }

LABEL_516:
        re::internal::assertLog(6, v282, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a4, v283);
        _os_crash();
        __break(1u);
LABEL_517:
        LOWORD(time.value) = 0;
        _os_log_error_impl(&dword_1E1C61000, a4, OS_LOG_TYPE_ERROR, "Unable to PSE process content.", &time, 2u);
LABEL_336:

        continue;
      }

LABEL_393:
      v384 = (v18 + 896);
      re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear((v18 + 896));
      *(v18 + 231) = 0;
      ++*(v18 + 464);
      v284 = v18[1778] - 1;
      v285 = (v284 & 0xFD) == 0;
      v381 = (v18 + 1824);
      if ((re::VideoDefaults::stereoMipmapEnabled(v286) & 1) == 0)
      {
        v285 = (v284 & 0xFD) == 0 && *(v18 + 10) < 2uLL;
      }

      v288 = v18[2072];
      v289 = (*(*a5[39] + 136))(a5[39]);
      v290 = v289;
      v291 = re::VideoDefaults::mipmapEnabled(v289);
      if (v290)
      {
        v292 = 0;
      }

      else
      {
        v292 = v291;
      }

      if ((v292 & (v288 ^ 1) & v285) == 1 && re::mtl::Device::isPhysicalHardware(&v452))
      {
        if (!*(v18 + 10))
        {
          goto LABEL_421;
        }

        v293 = 0;
        v294 = v18 + 216;
        do
        {
          v295 = *(v294 - 2);
          if (v295)
          {
            v296 = 2;
          }

          else
          {
            v296 = 1;
          }

          if (*(v294 - 1))
          {
            v297 = v296;
          }

          else
          {
            v297 = v295 != 0;
          }

          if (*v294)
          {
            ++v297;
          }

          if (v297 != 1)
          {
            goto LABEL_466;
          }

          *v467 = 0;
          re::VideoObject<re::VideoPixelBufferBase>::setRef(v467, v467, v295);
          v298 = re::VideoPixelBufferTextureBase::asMetalTexture(v467);
          v299 = v298;

          if (*v467)
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v467);
          }

          if (!v298)
          {
            goto LABEL_466;
          }

          v300 = [v298 pixelFormat];

          ++v293;
          v294 += 16;
        }

        while (v293 < *(v18 + 10));
        if (re::CoreVideoUtils::isConvertibleToLinearRGBColorModel(v300))
        {
LABEL_421:
          v301 = a3;
          if (!a3[33])
          {
            v302 = a6[26];
            v403 = v302;
            if (!a3[33])
            {
              re::ObjCObject::operator=(a3 + 33, &v403);
              v302 = v403;
            }

            v301 = a3;
          }

          a2 = v301[1212];
          v303 = re::VideoDefaults::mipmapPixelsPerSecondMax(497664000);
          v304 = vcvtpd_u64_f64(v303 * 0.1);
          v305 = re::VideoDefaults::logEnabled(v303);
          if (v305)
          {
            v306 = a3[1204];
            v307 = a3[1203];
            v308 = *re::videoLogObjects(v305);
            if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
            {
              *v467 = 134218752;
              *&v467[4] = a2;
              *&v467[12] = 2048;
              *&v467[14] = v303;
              *&v467[22] = 2048;
              *&v467[24] = v304;
              *&v467[32] = 2048;
              *&v467[34] = v306 - v307;
              _os_log_impl(&dword_1E1C61000, v308, OS_LOG_TYPE_DEFAULT, "[mipgen] pixelsPerSecond: %lld / %lld (+ %lld) (%zu samples)", v467, 0x2Au);
            }
          }

          if (a2 <= (v303 + v304))
          {
            re::DynamicInlineArray<re::VideoMipGenConfig,2ul>::resize(&v438, *(v18 + 10));
            re::DynamicInlineArray<re::VideoMetalTextures,2ul>::resize(v384, *(v18 + 10));
            v393 = (v18 + 1848);
            re::DynamicInlineArray<re::VideoColorTags,2ul>::resize(v18 + 231, *(v18 + 10));
            if (*(v18 + 10))
            {
              p_time = 0;
              v379 = v18 + 96;
              v396 = v18 + 200;
              v399 = v449;
              locationb = (v18 + 1016);
              v75 = &selRef_isLimitedRenderAsset;
              while (1)
              {
                v310 = *v381;
                if (*v381 <= p_time)
                {
                  break;
                }

                v311 = *v393;
                if (*v393 <= p_time)
                {
                  goto LABEL_593;
                }

                v312 = &v379[128 * p_time];
                v313 = &v18[3 * p_time + 1836];
                v314 = &v18[3 * p_time + 1860];
                *v314 = *v313;
                a6 = v314;
                *(v314 + 2) = *(v313 + 2);
                v315 = v312[13];
                v316 = v315 == 0;
                v317 = v315 != 0;
                v318 = 1;
                if (!v316)
                {
                  v318 = 2;
                }

                if (v312[14])
                {
                  v317 = v318;
                }

                v391 = &v379[128 * p_time];
                if (v317 || v312[15] != 0)
                {
                  v131 = 0;
                  v319 = v399;
                  do
                  {
                    *v467 = 0;
                    re::VideoObject<re::VideoPixelBufferBase>::setRef(v467, v467, *&v396[8 * v131]);
                    v39 = re::VideoPixelBufferTextureBase::asMetalTexture(v467);
                    v320 = v39;

                    i = [v39 width];
                    value = [v39 height];
                    a2 = &selRef_isLimitedRenderAsset;
                    v321 = re::CoreVideoUtils::convertToLinearRGBColorModel([v39 pixelFormat]);
                    *(a3 + 276) = 0;
                    time.value = 0;
                    v322 = [v39 protectionOptions];
                    re::VideoTextureAllocator::createTextureInternal((a3 + 27), i, value, v321, 2u, 3, 1, 1, &v402, v323, v322);
                    NS::SharedPtr<MTL::Texture>::operator=(&time, &v402);
                    if (v402)
                    {
                    }

                    HasHardwareTransferFunction = re::CoreVideoUtils::metalPixelFormatHasHardwareTransferFunction([v39 &selRef_resourceWithResourcePath_]);
                    v326 = *v393;
                    if (HasHardwareTransferFunction)
                    {
                      if (v326 <= p_time)
                      {
                        re::internal::assertLog(6, v325, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v326);
                        _os_crash();
                        __break(1u);
LABEL_534:
                        re::internal::assertLog(6, v139, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v176);
                        _os_crash();
                        __break(1u);
                        goto LABEL_535;
                      }

                      *(a6 + 1) = 8;
                    }

                    if (v326 <= p_time)
                    {
                      goto LABEL_525;
                    }

                    *(a6 + 2) = 0;
                    v327 = v438;
                    if (v438 <= p_time)
                    {
                      goto LABEL_526;
                    }

                    i = v39;
                    objc_storeStrong(v319 - 16, v39);

                    v329 = v438;
                    if (v438 <= p_time)
                    {
                      goto LABEL_527;
                    }

                    value = time.value;
                    v330 = time.value;
                    objc_storeStrong(v319, value);

                    if (time.value)
                    {
                    }

                    if (i)
                    {
                    }

                    if (*v467)
                    {
                      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v467);
                    }

                    v131 = (v131 + 1);
                    v331 = v391[13];
                    v316 = v331 == 0;
                    v332 = v331 != 0;
                    v333 = 1;
                    if (!v316)
                    {
                      v333 = 2;
                    }

                    if (v391[14])
                    {
                      v332 = v333;
                    }

                    if (v391[15])
                    {
                      ++v332;
                    }

                    ++v319;
                  }

                  while (v131 < v332);
                }

                v334 = v438;
                if (v438 <= p_time)
                {
                  goto LABEL_594;
                }

                v335 = *v384;
                if (*v384 <= p_time)
                {
                  goto LABEL_595;
                }

                v336 = &v439[256 * p_time];
                v337 = *(v336 + 11);
                v338 = &v18[128 * p_time + 912];
                *(v338 + 32) = *(v336 + 10);
                *(v338 + 48) = v337;
                *(v338 + 64) = *(v336 + 12);
                *(v338 + 73) = *(v336 + 201);
                v339 = *(v336 + 9);
                *v338 = *(v336 + 8);
                *(v338 + 16) = v339;
                re::VideoObject<re::VideoPixelBufferBase>::setRef(v338 + 96, (v338 + 96), *(v336 + 28));
                v340 = 0;
                v341 = locationb;
                do
                {
                  objc_storeStrong(v341++, v399[v340++]);
                }

                while (v340 != 3);
                ++p_time;
                v396 += 128;
                v399 += 32;
                locationb += 16;
                if (p_time >= *(v18 + 10))
                {
                  goto LABEL_466;
                }
              }

LABEL_592:
              re::internal::assertLog(6, v309, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v310);
              _os_crash();
              __break(1u);
LABEL_593:
              re::internal::assertLog(6, v309, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v311);
              _os_crash();
              __break(1u);
LABEL_594:
              re::internal::assertLog(6, v309, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v334);
              _os_crash();
              __break(1u);
LABEL_595:
              re::internal::assertLog(6, v309, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v335);
              _os_crash();
              __break(1u);
LABEL_596:
              re::internal::assertLog(6, v70, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
              PSEConfigs = _os_crash();
              __break(1u);
LABEL_597:
              v372 = re::VideoDefaults::logEnabled(PSEConfigs);
              if (!v372)
              {
                continue;
              }

              a4 = *re::videoLogObjects(v372);
              if (os_log_type_enabled(a4, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(time.value) = 0;
                _os_log_impl(&dword_1E1C61000, a4, OS_LOG_TYPE_DEFAULT, "Unable to PSE process content because surface is not supported.", &time, 2u);
              }

              goto LABEL_336;
            }
          }
        }
      }

LABEL_466:
      v342 = v422;
      if (v422 <= *buf)
      {
        v342 = *buf;
      }

      if (v342 <= v414)
      {
        v342 = v414;
      }

      if (v342 <= v438)
      {
        v342 = v438;
      }

      if (v342 <= v434)
      {
        v343 = v434;
      }

      else
      {
        v343 = v342;
      }

      if (!v343 || (a2 = (v18 + 2000), re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize((v18 + 2000), v343), !*(v18 + 250)))
      {
        v39 = 0;
        goto LABEL_506;
      }

      v75 = 0;
      a3 = &v424;
      p_time = &time;
      a6 = &v467[8];
      v399 = v436;
      v18 = v444;
      value = 1;
      v467[0] = 0;
      v467[48] = 0;
      v474[0] = 0;
      v475[0] = 0;
      v476[0] = 0;
      v477[0] = 0;
      if (v422)
      {
        LOBYTE(time.value) = 1;
        *&time.timescale = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&time.timescale, &time.timescale, v424);
        time.epoch = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&time.epoch, &time.epoch, v425);
        LOBYTE(v457) = v426[0];
        re::Optional<re::VideoTransformSurfaceConfig>::operator=(v474, &time);
        v344 = re::Optional<re::VideoTransformSurfaceConfig>::~Optional(&time);
      }

      if (v434)
      {
        if ((v467[0] & 1) == 0)
        {
          v467[0] = 1;
        }

        *&v467[8] = v436[0];
        *&v467[24] = v436[1];
        *&v467[40] = v437;
      }

      if (!*buf)
      {
        goto LABEL_487;
      }

      {
        goto LABEL_487;
      }

      v346 = *buf;
      if (*buf)
      {
        LOBYTE(time.value) = 1;
        time.epoch = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&time.epoch, &time.epoch, v429);
        *&v457 = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&v457, &v457, v430);
        *(&v457 + 1) = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&v457 + 8, &v457 + 1, v431);
        v458 = v432;
        v459[0] = v433[0];
        *(v459 + 9) = *(v433 + 9);
        re::Optional<re::VideoHDRConfig>::operator=(&v467[48], &time);
        re::Optional<re::VideoHDRConfig>::~Optional(&time);
LABEL_487:
        if (v411)
        {
          LOBYTE(time.value) = 1;
          *&time.timescale = v413;
          if (*(&v413 + 1))
          {
            atomic_fetch_add_explicit((*(&v413 + 1) + 16), 1uLL, memory_order_relaxed);
          }

          re::Optional<re::VideoHistogramConfig>::operator=(v477, &time);
          if (LOBYTE(time.value) == 1 && time.epoch)
          {
            std::__shared_weak_count::__release_weak(time.epoch);
          }
        }

        if (v414)
        {
          LOBYTE(time.value) = 1;
          *&time.timescale = v416;
          time.epoch = v417;
          if (v417)
          {
            atomic_fetch_add_explicit((v417 + 16), 1uLL, memory_order_relaxed);
          }

          v457 = v418;
          re::VideoObject<re::VideoColorTransformBase>::setRef(&v457 + 8, &v457 + 1, v419);
          *&v458 = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(&v458, &v458, v420);
          *(&v458 + 1) = v421;
          re::Optional<re::VideoPSEConfig>::operator=(v476, &time);
          re::Optional<re::VideoPSEConfig>::~Optional(&time);
        }

        if (v438)
        {
          v458 = v440;
          v459[0] = v441;
          v459[1] = *v442;
          *(&v459[1] + 9) = *&v442[9];
          *&time.timescale = *v439;
          LOBYTE(time.value) = 1;
          v457 = *&v439[16];
          v460[0] = 0;
          re::VideoObject<re::VideoPixelBufferBase>::setRef(v460, v460, v443);
          v347 = v444;
          for (j = 14; j != 17; ++j)
          {
            v349 = *v347++;
            *(&time.value + j) = v349;
          }

          v463 = v446;
          v464 = v447[0];
          v465[0] = v447[1];
          *(v465 + 9) = *(&v447[1] + 9);
          v461 = *&v444[24];
          v462 = v445;
          v466[0] = 0;
          re::VideoObject<re::VideoPixelBufferBase>::setRef(v466, v466, v448);
          v350 = v449;
          for (k = 30; k != 33; ++k)
          {
            v352 = *v350++;
            *(&time.value + k) = v352;
          }

          re::Optional<re::VideoMipGenConfig>::operator=(v475, &time);
          re::Optional<re::VideoMipGenConfig>::~Optional(&time);
        }

        re::VideoProcessor::dispatch(a5 + 34, v467, v397);
      }

LABEL_572:
      re::internal::assertLog(6, v345, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v75, v346);
      _os_crash();
      __break(1u);
      re::internal::assertLog(6, v362, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v363);
      _os_crash();
      __break(1u);
      re::internal::assertLog(6, v364, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v365);
      _os_crash();
      __break(1u);
      re::internal::assertLog(6, v366, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v367);
      _os_crash();
      __break(1u);
      re::internal::assertLog(6, v368, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v369);
      _os_crash();
      __break(1u);
      re::internal::assertLog(6, v370, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v371);
      _os_crash();
      __break(1u);
LABEL_573:
      re::internal::assertLog(6, v181, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v184);
      _os_crash();
      __break(1u);
LABEL_574:
      re::internal::assertLog(6, v181, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v183);
      _os_crash();
      __break(1u);
LABEL_575:
      re::internal::assertLog(6, v188, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v189);
      _os_crash();
      __break(1u);
LABEL_576:
      re::internal::assertLog(6, v181, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v183);
      _os_crash();
      __break(1u);
LABEL_577:
      re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v99);
      _os_crash();
      __break(1u);
LABEL_578:
      re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v100);
      _os_crash();
      __break(1u);
LABEL_579:
      re::internal::assertLog(6, v169, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v171);
      _os_crash();
      __break(1u);
LABEL_580:
      re::internal::assertLog(6, v139, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v173);
      _os_crash();
      __break(1u);
LABEL_581:
      re::internal::assertLog(6, v124, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
      _os_crash();
      __break(1u);
LABEL_582:
      re::internal::assertLog(6, v106, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v107);
      _os_crash();
      __break(1u);
LABEL_583:
      re::internal::assertLog(6, v106, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v108);
      _os_crash();
      __break(1u);
LABEL_584:
      re::internal::assertLog(6, v194, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v198);
      _os_crash();
      __break(1u);
LABEL_585:
      re::internal::assertLog(6, v194, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, i);
      _os_crash();
      __break(1u);
LABEL_586:
      re::internal::assertLog(6, v194, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, i);
      _os_crash();
      __break(1u);
LABEL_587:
      re::internal::assertLog(6, v194, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v206);
      _os_crash();
      __break(1u);
LABEL_588:
      re::internal::assertLog(6, v194, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v209);
      _os_crash();
      __break(1u);
LABEL_589:
      re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
      _os_crash();
      __break(1u);
LABEL_590:
      re::internal::assertLog(6, v251, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
      _os_crash();
      __break(1u);
LABEL_591:
      re::internal::assertLog(6, v194, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v199);
      _os_crash();
      __break(1u);
      goto LABEL_592;
    }

    break;
  }

  v267 = 0;
  while (1)
  {
    v467[2] = 2;
    *v467 = 514;
    *&v467[8] = *v262;
    v268 = *(value + 16);
    *&v467[24] = *value;
    *&v467[40] = v268;
    *&v467[56] = 0;
    LOBYTE(v468) = 0;
    LOBYTE(cf) = 0;
    v471 = 0u;
    v472 = 0u;
    v269 = re::VideoTextureCache::createTexturesFromPixelBuffer((a3 + 35), v255[v267], v467, 1, 0);
    v270 = v269;
    if (v269)
    {
      v271 = *re::videoLogObjects(v269);
      if (os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
      {
        LOWORD(time.value) = 0;
        _os_log_error_impl(&dword_1E1C61000, v271, OS_LOG_TYPE_ERROR, "Unable to create legacy texture for presentation group pixel buffer.", &time, 2u);
      }

      LODWORD(v399) = 1;
    }

    else
    {
      re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::add((v18 + 352), v467);
    }

    for (i = 120; i != 96; i -= 8)
    {
      if (*&v467[i])
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v467[i]);
      }

      *&v467[i] = 0;
    }

    if (v471)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v471);
    }

    if (v270)
    {
      break;
    }

    if (++v267 >= *a2)
    {
      goto LABEL_377;
    }
  }

LABEL_505:
  v39 = v399;
LABEL_506:
  re::DynamicInlineArray<re::VideoMipGenConfig,2ul>::~DynamicInlineArray(&v438);
  re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::clear(&v411);
  re::DynamicInlineArray<re::VideoPSEConfig,2ul>::~DynamicInlineArray(&v414);
  re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::~DynamicInlineArray(&v422);
  re::DynamicInlineArray<re::VideoHDRConfig,2ul>::~DynamicInlineArray(buf);
LABEL_507:

  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&v453);
LABEL_508:

  return v39;
}

void sub_1E20388C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  re::DynamicInlineArray<re::VideoMipGenConfig,2ul>::~DynamicInlineArray(&STACK[0x3C0]);
  re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::clear(&a67);
  re::DynamicInlineArray<re::VideoPSEConfig,2ul>::~DynamicInlineArray(&STACK[0x200]);
  re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::~DynamicInlineArray(&STACK[0x270]);
  re::DynamicInlineArray<re::VideoHDRConfig,2ul>::~DynamicInlineArray(&STACK[0x2B0]);

  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&STACK[0x5E0]);
  _Unwind_Resume(a1);
}

void re::deinitVideoPresentationGroup(uint64_t a1)
{
  v2 = *(MEMORY[0x1E6960C70] + 16);
  *a1 = *MEMORY[0x1E6960C70];
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  ++*(a1 + 32);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(a1 + 48);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(a1 + 80);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(a1 + 352);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(a1 + 624);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(a1 + 896);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(a1 + 1168);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(a1 + 1200);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(a1 + 1232);
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(a1 + 1504);
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(a1 + 1536);
  if (*(a1 + 1568))
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 1568));
  }

  *(a1 + 1568) = 0;

  *(a1 + 1576) = 0;
  *(a1 + 1600) = 0;
  ++*(a1 + 1608);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(a1 + 1648);
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  v3 = MEMORY[0x1E695F058];
  *(a1 + 1728) = 0u;
  v4 = v3[1];
  *(a1 + 1744) = *v3;
  *(a1 + 1680) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1760) = v4;
  *(a1 + 1776) = 0;
  *(a1 + 1780) = -1;
  *(a1 + 1778) = 1;
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(a1 + 1792);
  *(a1 + 1824) = 0;
  ++*(a1 + 1832);
  *(a1 + 1848) = 0;
  ++*(a1 + 1856);
  *(a1 + 1872) = 0;
  ++*(a1 + 1880);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(a1 + 1952);
  *(a1 + 1584) = 0;
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(a1 + 2000);
  *(a1 + 2048) = 0;
  ++*(a1 + 2056);
  *(a1 + 2072) = 0;
  *(a1 + 2080) = 1;
  *(a1 + 2088) = 0;
}

void re::DynamicInlineArray<re::VideoObject<re::VideoColorTransformBase>,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v5 = 8 * a2 + 16;
    v6 = a2;
    do
    {
      v7 = a1 + 8 * v6;
      if (*(v7 + 16))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + v5));
        v4 = *a1;
      }

      *(v7 + 16) = 0;
      ++v6;
      v5 += 8;
    }

    while (v6 < v4);
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash();
      __break(1u);
      return;
    }

    bzero((a1 + 8 * v4 + 16), 8 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 16 * *a1;
    v3 = (a1 + 24);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*v3);
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

uint64_t re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[](unint64_t *a1, unint64_t a2)
{
  if (*a1 > a2)
  {
    return &a1[a2 + 2];
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, *a1, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

{
  if (*a1 > a2)
  {
    return &a1[a2 + 2];
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, a2, *a1, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 8 * *a1;
    v3 = (a1 + 16);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v3);
      }

      *v3++ = 0;
      v2 -= 8;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v5 = 16 * a2 + 24;
    v6 = a2;
    do
    {
      v7 = *(a1 + v5);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        v4 = *a1;
      }

      ++v6;
      v5 += 16;
    }

    while (v6 < v4);
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash();
      __break(1u);
      return;
    }

    bzero((a1 + 16 * v4 + 16), 16 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v5 = 16 * a2 + 24;
    v6 = a2;
    do
    {
      v7 = *(a1 + v5);
      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
        v4 = *a1;
      }

      ++v6;
      v5 += 16;
    }

    while (v6 < v4);
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash();
      __break(1u);
      return;
    }

    bzero((a1 + 16 * v4 + 16), 16 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

BOOL re::CMTimeCompareWithThreshold(CMTime *this, CMTime *a2, CMTime *a3, double a4)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(&v15, 0, sizeof(v15));
  lhs = *this;
  rhs = *a2;
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeAbsoluteValue(&v15, &time);
  time = v15;
  Seconds = CMTimeGetSeconds(&time);
  value = this->value;
  flags = this->flags;
  timescale = this->timescale;
  epoch = this->epoch;
  v20 = a2->value;
  v9 = a2->flags;
  v21 = a2->timescale;
  v10 = a2->epoch;
  if ((flags & 0x1F) == 3 || (v9 & 0x1F) == 3)
  {
    memset(&time, 0, sizeof(time));
    v11 = this->value;
    v16.epoch = v10;
    rhs.value = v11;
    rhs.timescale = this->timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    v16.value = a2->value;
    v16.timescale = a2->timescale;
    v16.flags = v9;
    CMTimeSubtract(&lhs, &rhs, &v16);
    CMTimeAbsoluteValue(&time, &lhs);
    lhs = time;
    CMTimeMake(&rhs, 1, 1000000000);
    if (CMTimeCompare(&lhs, &rhs) <= 0)
    {
      return 1;
    }
  }

  time.value = value;
  time.timescale = timescale;
  time.flags = flags;
  time.epoch = epoch;
  lhs.value = v20;
  lhs.timescale = v21;
  lhs.flags = v9;
  lhs.epoch = v10;
  v12 = CMTimeCompare(&time, &lhs);
  return Seconds < 0.001 || v12 >= 0;
}

void re::dumpHDRFrameToFile(uint64_t *a1, void *a2, unsigned __int8 *a3, __int128 *a4, char a5, void *a6, double a7)
{
  v73[2] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v56 = 0;
  v57 = &v56;
  v58 = 0x5012000000;
  v59 = __Block_byref_object_copy__2;
  v60 = __Block_byref_object_dispose__2;
  v61 = "";
  v62 = 0;
  v63 = 0;
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy(&v62, a1);
  v13 = v57;
  v15 = (v57 + 6);
  v14 = v57[6];
  if (v14)
  {
    i = 0;
    v17 = 0;
    v18 = 0;
    v19 = v57 + 8;
    while (1)
    {
      v20 = *v15;
      if (*v15 <= i)
      {
        break;
      }

      Width = v19[i];
      if (Width)
      {
        Width = CVPixelBufferGetWidth(Width);
        v20 = *v15;
      }

      if (v20 <= i)
      {
        goto LABEL_63;
      }

      if (v17 <= Width)
      {
        v17 = Width;
      }

      Height = v19[i];
      if (Height)
      {
        Height = CVPixelBufferGetHeight(Height);
      }

      if (v18 <= Height)
      {
        v18 = Height;
      }

      if (v14 == ++i)
      {
        goto LABEL_16;
      }
    }

    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, i, v20);
    _os_crash();
    __break(1u);
LABEL_63:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, i, v20);
    _os_crash();
    __break(1u);
LABEL_64:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, i, v28);
    _os_crash();
    __break(1u);
LABEL_65:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, i, v39);
    _os_crash();
    __break(1u);
  }

  v18 = 0;
  v17 = 0;
LABEL_16:
  v23 = *a2;
  if (*a2)
  {
    v24 = a2 + 7;
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      if (v17 >= v25)
      {
        v17 = v25;
      }

      if (v18 >= v26)
      {
        v18 = v26;
      }

      v24 += 4;
      --v23;
    }

    while (v23);
  }

  if (!v14)
  {
LABEL_28:
    v47 = v11;
    if (a3[112])
    {
      v30 = *a3;
      v50 = re::VideoHDRDefaults::overridePixelFormat(1882468912);
      if (v30 > 1)
      {
        if (v30 == 2 || v30 == 3)
        {
          v31 = 9;
        }

        else
        {
          v31 = 2;
        }

        goto LABEL_41;
      }

      if (v30)
      {
        v31 = 12;
LABEL_41:
        v34 = re::VideoHDRDefaults::overrideColorPrimaries(v31);
        v35 = re::VideoHDRDefaults::overrideTransferFunction(0xD);
        v36 = re::VideoHDRDefaults::overrideYCbCrMatrix(1);
        v73[0] = 0;
        v73[1] = 0;
        v67 = 0;
        memset(v66, 0, sizeof(v66));
        v68 = 0x7FFFFFFFLL;
        v69 = 0;
        v70 = 514;
        v71 = 2;
        v72 = 0;
        if (v14)
        {
          v37 = v36;
          for (i = 0; i != v14; ++i)
          {
            re::VideoSimplePixelBufferAllocator::createPixelBuffer(buf, v17, v18, v50, v34, v35, v37, 1, &pixelTransferSessionOut, 0x400u, 0x10u, 0, 0);
            v73[i] = pixelTransferSessionOut;
            pixelTransferSessionOut = 0;
            VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
            if (pixelTransferSessionOut)
            {
              v39 = *v15;
              if (*v15 <= i)
              {
                goto LABEL_65;
              }

              VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v13[i + 8], v73[i]);
              CFRelease(pixelTransferSessionOut);
            }
          }
        }

        re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v15);
        v11 = v47;
        if (v14)
        {
          v41 = v13[6];
          v42 = v73;
          do
          {
            re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(v41, v40);
            v43 = v13[6];
            v13[v43 + 8] = *v42;
            *v42++ = 0;
            v41 = v43 + 1;
            v13[6] = v43 + 1;
            ++*(v13 + 14);
            --v14;
          }

          while (v14);
        }

        re::VideoPixelBufferPool::~VideoPixelBufferPool(v66);
        for (j = 1; j != -1; --j)
        {
          if (v73[j])
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v73[j]);
          }

          v73[j] = 0;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v50 = re::VideoHDRDefaults::overridePixelFormat(1882468912);
    }

    v31 = 1;
    goto LABEL_41;
  }

  i = 0;
  v27 = (v13 + 8);
  while (1)
  {
    v28 = *v15;
    if (*v15 <= i)
    {
      goto LABEL_64;
    }

    v29 = re::VideoPixelBufferBase::protectionOptions(v27);
    if (v29)
    {
      break;
    }

    ++i;
    ++v27;
    if (v14 == i)
    {
      goto LABEL_28;
    }
  }

  v32 = *re::videoLogObjects(v29);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Unable to dump protected content", buf, 2u);
  }

  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v15);
LABEL_54:
  if (v11)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    v45 = a4[1];
    v52 = *a4;
    block[2] = ___ZN2re18dumpHDRFrameToFileERNS_18DynamicInlineArrayINS_11VideoObjectINS_20VideoPixelBufferBaseEEELm2EEERKNS0_INS_7Vector4IfEELm2EEERKNS_12ColorManagerENS_4ecs211HDRDumpInfoEdbPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
    block[3] = &unk_1F5CC4B68;
    block[4] = &v56;
    v55 = a5;
    v53 = v45;
    re::DynamicString::DynamicString(v54, (a4 + 2));
    *&v54[4] = a7;
    dispatch_async(v11, block);
    if (v54[0])
    {
      if (v54[1])
      {
        (*(*v54[0] + 40))();
      }

      memset(v54, 0, 32);
    }
  }

  else
  {
    v46 = *re::videoLogObjects(v33);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, "VideoAsset.backgroundWorkQueue is invalid", buf, 2u);
    }
  }

  _Block_object_dispose(&v56, 8);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&v62);
}

void sub_1E2039A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  re::VideoPixelBufferPool::~VideoPixelBufferPool(&a52);
  v54 = 8;
  v55 = v52 - 136;
  while (1)
  {
    if (*(v55 + v54))
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v55 + v54));
    }

    *(v55 + v54) = 0;
    v54 -= 8;
    if (v54 == -8)
    {
      _Block_object_dispose(&a36, 8);
      re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&a42);

      _Unwind_Resume(a1);
    }
  }
}

void re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v5 = 8 * a2 + 16;
    v6 = a2;
    do
    {
      v7 = a1 + 8 * v6;
      if (*(v7 + 16))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + v5));
        v4 = *a1;
      }

      *(v7 + 16) = 0;
      ++v6;
      v5 += 8;
    }

    while (v6 < v4);
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash();
      __break(1u);
      return;
    }

    bzero((a1 + 8 * v4 + 16), 8 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = a2 - *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v6 = (a1 + 24 * a2 + 24);
    v7 = a2;
    do
    {
      if (*v6)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v6);
      }

      *v6 = 0;
      if (*(v6 - 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v6 - 1);
      }

      *(v6 - 1) = 0;
      ++v7;
      v6 += 3;
    }

    while (v7 < *a1);
  }

  else
  {
    if (a2 > 2)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash();
      __break(1u);
      return;
    }

    v5 = a1 + 24 * *a1 + 16;
    do
    {
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      --v4;
    }

    while (v4);
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::SharedPtr<re::VideoASEFrameMeasurement>,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v5 = a2;
    do
    {
      v6 = a1 + 8 * v5;
      v7 = *(v6 + 16);
      if (v7)
      {

        *(v6 + 16) = 0;
        v4 = *a1;
      }

      ++v5;
    }

    while (v5 < v4);
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash();
      __break(1u);
      return;
    }

    bzero((a1 + 8 * v4 + 16), 8 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<float,2ul>::resize(uint64_t a1, unint64_t a2)
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
    if (a2 >= 3)
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

uint64_t re::DynamicInlineArray<std::optional<re::VideoRectangularMask>,2ul>::resize(uint64_t result, unint64_t a2)
{
  v2 = a2 - *result;
  if (a2 <= *result)
  {
    if (a2 >= *result)
    {
      return result;
    }
  }

  else
  {
    if (a2 > 2)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v3 = (result + 32 * *result + 40);
    do
    {
      *(v3 - 24) = 0;
      *v3 = 0;
      v3 += 32;
      --v2;
    }

    while (v2);
  }

  *result = a2;
  ++*(result + 8);
  return result;
}

void re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::add(uint64_t a1, uint64_t a2)
{
  if (*a1 >= 2uLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    _os_crash();
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    v5 = a1 + (*a1 << 7);
    *(v5 + 16) = *a2;
    *(v5 + 32) = v4;
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(a2 + 64);
    *(v5 + 89) = *(a2 + 73);
    *(v5 + 64) = v7;
    *(v5 + 80) = v8;
    *(v5 + 48) = v6;
    *(v5 + 112) = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(v5 + 112, (v5 + 112), *(a2 + 96));
    v9 = 0;
    v10 = a2 + 104;
    do
    {
      *(v5 + v9 + 120) = 0;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(v5 + v9 + 120, (v5 + v9 + 120), *(v10 + v9));
      v9 += 8;
    }

    while (v9 != 24);
    ++*a1;
    ++*(a1 + 8);
  }
}

void sub_1E2039FA8(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = (v2 + v3 + v4 + 112);
    v7 = -v4;
    do
    {
      if (*v6)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v6);
      }

      *v6-- = 0;
      v7 += 8;
    }

    while (v7);
  }

  if (*v1)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v1);
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

void re::VideoPixelBufferTextures::~VideoPixelBufferTextures(__CVBuffer **this)
{
  for (i = 15; i != 12; --i)
  {
    if (this[i])
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&this[i]);
    }

    this[i] = 0;
  }

  if (this[12])
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 12);
  }

  this[12] = 0;
}

void re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 8 * *a1;
    v3 = (a1 + 16);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3);
      }

      *v3++ = 0;
      v2 -= 8;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

unint64_t *re::DynamicInlineArray<re::VideoColorTags,2ul>::resize(unint64_t *result, unint64_t a2)
{
  v3 = result;
  if (a2 <= *result)
  {
    if (a2 >= *result)
    {
      return result;
    }
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      result = _os_crash();
      __break(1u);
      return result;
    }

    result = memset(result + 3 * *result + 12, 2, 3 * (a2 - *result));
  }

  *v3 = a2;
  ++*(v3 + 2);
  return result;
}

void re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = a1 + (*a1 << 7) + 16;
    v3 = a1 + 16;
    v4 = a1 + 136;
    do
    {
      for (i = 0; i != -24; i -= 8)
      {
      }

      if (*(v3 + 96))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v3 + 96));
      }

      *(v3 + 96) = 0;
      v3 += 128;
      v4 += 128;
    }

    while (v3 != v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::VideoMipGenConfig,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = a2 - *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v10 = a1 + (a2 << 8);
    v11 = v10 + 264;
    v12 = v10 + 136;
    v13 = a2;
    do
    {
      v14 = 0;
      v15 = a1 + 16 + (v13 << 8);
      do
      {

        v14 -= 8;
      }

      while (v14 != -24);
      if (*(v15 + 224))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v15 + 224));
      }

      v16 = 0;
      *(v15 + 224) = 0;
      do
      {

        v16 -= 8;
      }

      while (v16 != -24);
      v18 = *(v15 + 96);
      v17 = (v15 + 96);
      if (v18)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v17);
      }

      *v17 = 0;
      ++v13;
      v11 += 256;
      v12 += 256;
    }

    while (v13 < *a1);
  }

  else
  {
    if (a2 > 2)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash();
      __break(1u);
      return;
    }

    v5 = a1 + (*a1 << 8) + 144;
    v6 = MEMORY[0x1E695F060];
    v7 = MEMORY[0x1E695F058];
    do
    {
      *(v5 - 32) = 0uLL;
      *(v5 - 16) = 0uLL;
      *(v5 - 64) = 0uLL;
      *(v5 - 48) = 0uLL;
      *(v5 - 96) = 0uLL;
      *(v5 - 80) = 0uLL;
      *(v5 - 128) = 0uLL;
      *(v5 - 112) = 0uLL;
      *(v5 - 128) = 514;
      *(v5 - 126) = 2;
      *(v5 - 120) = *v6;
      v8 = *v7;
      *(v5 - 88) = v7[1];
      *(v5 - 104) = v8;
      *(v5 - 64) = 0;
      *(v5 - 32) = 0uLL;
      *(v5 - 16) = 0uLL;
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
      *(v5 + 32) = 0uLL;
      *(v5 + 48) = 0uLL;
      *(v5 + 64) = 0uLL;
      *(v5 + 80) = 0uLL;
      *(v5 + 2) = 2;
      *v5 = 514;
      *(v5 + 8) = *v6;
      v9 = *v7;
      *(v5 + 40) = v7[1];
      *(v5 + 24) = v9;
      *(v5 + 64) = 0;
      *(v5 + 96) = 0uLL;
      *(v5 + 112) = 0uLL;
      v5 += 256;
      --v4;
    }

    while (v4);
  }

  *a1 = a2;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::VideoMetalTextures,2ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = a2 - *a1;
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v9 = a1 + (a2 << 7) + 136;
    v10 = a2;
    do
    {
      v11 = 0;
      v12 = a1 + 16 + (v10 << 7);
      do
      {

        v11 -= 8;
      }

      while (v11 != -24);
      v14 = *(v12 + 96);
      v13 = (v12 + 96);
      if (v14)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v13);
      }

      *v13 = 0;
      ++v10;
      v9 += 128;
    }

    while (v10 < *a1);
  }

  else
  {
    if (a2 > 2)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash();
      __break(1u);
      return;
    }

    v5 = (a1 + (*a1 << 7) + 80);
    v6 = MEMORY[0x1E695F060];
    v7 = MEMORY[0x1E695F058];
    do
    {
      v5[2] = 0uLL;
      v5[3] = 0uLL;
      *v5 = 0uLL;
      v5[1] = 0uLL;
      *(v5 - 2) = 0uLL;
      *(v5 - 1) = 0uLL;
      *(v5 - 4) = 0uLL;
      *(v5 - 3) = 0uLL;
      *(v5 - 32) = 514;
      *(v5 - 62) = 2;
      *(v5 - 56) = *v6;
      v8 = *v7;
      *(v5 - 24) = v7[1];
      *(v5 - 40) = v8;
      *v5 = 0;
      v5[2] = 0uLL;
      v5[3] = 0uLL;
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  *a1 = a2;
  ++*(a1 + 8);
}

uint64_t re::Optional<re::VideoTransformSurfaceConfig>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
LABEL_6:
      *(a1 + 16) = *(a2 + 16);
      *(a2 + 16) = 0;
      *(a1 + 24) = *(a2 + 24);
      return a1;
    }

    v3 = (a1 + 16);
    v4 = (a1 + 8);
    if (*(a1 + 16))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
    }

    *v3 = 0;
    if (*v4)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 8));
    }

    *(a1 + 8) = 0;
    *a1 = 0;
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 16) = 0;
    goto LABEL_6;
  }

  return a1;
}

{
  if (*a1)
  {
    if (*a2)
    {
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 8, (a1 + 8), *(a2 + 8));
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 16, (a1 + 16), *(a2 + 16));
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      v4 = (a1 + 16);
      v5 = (a1 + 8);
      if (*(a1 + 16))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
      }

      *v4 = 0;
      if (*v5)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 8));
      }

      *(a1 + 8) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 8, (a1 + 8), *(a2 + 8));
    *(a1 + 16) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 16, (a1 + 16), *(a2 + 16));
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

uint64_t re::Optional<re::VideoTransformSurfaceConfig>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 16);
    v3 = (a1 + 8);
    if (*(a1 + 16))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
    }

    *v2 = 0;
    if (*v3)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 8));
    }

    *v3 = 0;
  }

  return a1;
}

uint64_t re::Optional<re::VideoHDRConfig>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a2 + 16) = 0;
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
LABEL_6:
      v3 = *(a2 + 40);
      v4 = *(a2 + 56);
      *(a1 + 65) = *(a2 + 65);
      *(a1 + 56) = v4;
      *(a1 + 40) = v3;
      return a1;
    }

    v5 = (a1 + 32);
    if (*(a1 + 32))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v5);
    }

    v6 = *(a1 + 24);
    *(a1 + 32) = 0;
    if (v6)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 24));
    }

    *(a1 + 24) = 0;
    if (*(a1 + 16))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
    }

    *(a1 + 16) = 0;
    *a1 = 0;
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0u;
    goto LABEL_6;
  }

  return a1;
}

{
  if (*a1)
  {
    if (*a2)
    {
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 16, (a1 + 16), *(a2 + 16));
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 24, (a1 + 24), *(a2 + 24));
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 32, (a1 + 32), *(a2 + 32));
      v4 = *(a2 + 40);
      v5 = *(a2 + 56);
      *(a1 + 65) = *(a2 + 65);
      *(a1 + 56) = v5;
      *(a1 + 40) = v4;
    }

    else
    {
      v8 = (a1 + 32);
      if (*(a1 + 32))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v8);
      }

      v9 = *(a1 + 24);
      *(a1 + 32) = 0;
      if (v9)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 24));
      }

      *(a1 + 24) = 0;
      if (*(a1 + 16))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
      }

      *(a1 + 16) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 16, (a1 + 16), *(a2 + 16));
    *(a1 + 24) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 24, (a1 + 24), *(a2 + 24));
    *(a1 + 32) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 32, (a1 + 32), *(a2 + 32));
    v6 = *(a2 + 40);
    v7 = *(a2 + 56);
    *(a1 + 65) = *(a2 + 65);
    *(a1 + 56) = v7;
    *(a1 + 40) = v6;
  }

  return a1;
}

uint64_t re::Optional<re::VideoHDRConfig>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 32);
    v3 = (a1 + 16);
    if (*(a1 + 32))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v2);
    }

    v4 = *(a1 + 24);
    *(a1 + 32) = 0;
    if (v4)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 24));
    }

    *(a1 + 24) = 0;
    if (*v3)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 16));
    }

    *v3 = 0;
  }

  return a1;
}

uint64_t re::Optional<re::VideoHistogramConfig>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v4 = *(a1 + 16);
      *(a1 + 8) = v3;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    else
    {
      v5 = *(a1 + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return a1;
}

{
  if (*a1)
  {
    if (*a2)
    {
      v4 = *(a2 + 8);
      v3 = *(a2 + 16);
      if (v3)
      {
        atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
      }

      v5 = *(a1 + 16);
      *(a1 + 8) = v4;
      *(a1 + 16) = v3;
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v7 = *(a1 + 16);
      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v6 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }
  }

  return a1;
}

uint64_t re::Optional<re::VideoPSEConfig>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v4 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v5 = *(a1 + 16);
      *(a1 + 8) = v4;
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a2 + 32) = 0;
      goto LABEL_8;
    }

    v6 = (a1 + 40);
    if (*(a1 + 40))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v6);
    }

    v7 = *(a1 + 32);
    *(a1 + 40) = 0;
    if (v7)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 32));
    }

    *(a1 + 32) = 0;
    v8 = *(a1 + 16);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    *a1 = 0;
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a1 + 40) = 0;
LABEL_8:
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

{
  if (*a1)
  {
    if (*a2)
    {
      v5 = *(a2 + 8);
      v4 = *(a2 + 16);
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
      }

      v6 = *(a1 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v4;
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      *(a1 + 24) = *(a2 + 24);
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 32, (a1 + 32), *(a2 + 32));
      re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 40, (a1 + 40), *(a2 + 40));
      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      v8 = (a1 + 40);
      if (*(a1 + 40))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v8);
      }

      v9 = *(a1 + 32);
      *(a1 + 40) = 0;
      if (v9)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 32));
      }

      *(a1 + 32) = 0;
      v10 = *(a1 + 16);
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v7 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
    }

    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 32, (a1 + 32), *(a2 + 32));
    *(a1 + 40) = 0;
    re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 40, (a1 + 40), *(a2 + 40));
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

uint64_t re::Optional<re::VideoPSEConfig>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 40);
    if (*(a1 + 40))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v2);
    }

    v3 = *(a1 + 32);
    *(a1 + 40) = 0;
    if (v3)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 32));
    }

    *(a1 + 32) = 0;
    v4 = *(a1 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return a1;
}

uint64_t re::Optional<re::VideoMipGenConfig>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v4 = 0;
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
      v6 = *(a2 + 40);
      v7 = *(a2 + 56);
      v8 = *(a2 + 72);
      *(a1 + 81) = *(a2 + 81);
      *(a1 + 72) = v8;
      *(a1 + 56) = v7;
      *(a1 + 40) = v6;
      *(a1 + 104) = *(a2 + 104);
      *(a2 + 104) = 0;
      v9 = a1 + 112;
      v10 = a2 + 112;
      do
      {
        v11 = *(v10 + v4);
        *(v10 + v4) = 0;
        v12 = *(v9 + v4);
        *(v9 + v4) = v11;

        v4 += 8;
      }

      while (v4 != 24);
      v13 = 0;
      v14 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 136) = v14;
      v15 = *(a2 + 168);
      v16 = *(a2 + 184);
      v17 = *(a2 + 200);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 200) = v17;
      *(a1 + 184) = v16;
      *(a1 + 168) = v15;
      *(a1 + 232) = *(a2 + 232);
      *(a2 + 232) = 0;
      v18 = a1 + 240;
      v19 = a2 + 240;
      do
      {
        v20 = *(v19 + v13);
        *(v19 + v13) = 0;
        v21 = *(v18 + v13);
        *(v18 + v13) = v20;

        v13 += 8;
      }

      while (v13 != 24);
    }

    else
    {
      for (i = 256; i != 232; i -= 8)
      {
      }

      if (*(a1 + 232))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 232));
      }

      *(a1 + 232) = 0;
      v37 = 128;
      do
      {
        v38 = v37 - 8;

        v37 = v38;
      }

      while (v38 != 104);
      if (*(a1 + 104))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 104));
      }

      *(a1 + 104) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    v22 = 0;
    *a1 = 1;
    v23 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v23;
    v24 = *(a2 + 40);
    v25 = *(a2 + 56);
    v26 = *(a2 + 72);
    *(a1 + 81) = *(a2 + 81);
    *(a1 + 72) = v26;
    *(a1 + 56) = v25;
    *(a1 + 40) = v24;
    *(a1 + 104) = 0;
    *(a1 + 104) = *(a2 + 104);
    *(a2 + 104) = 0;
    v27 = a2 + 112;
    do
    {
      v28 = *(v27 + v22);
      *(v27 + v22) = 0;
      *(a1 + 112 + v22) = v28;
      v22 += 8;
    }

    while (v22 != 24);
    v29 = 0;
    v30 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v30;
    v31 = *(a2 + 168);
    v32 = *(a2 + 184);
    v33 = *(a2 + 200);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 200) = v33;
    *(a1 + 184) = v32;
    *(a1 + 168) = v31;
    *(a1 + 232) = 0;
    *(a1 + 232) = *(a2 + 232);
    *(a2 + 232) = 0;
    v34 = a2 + 240;
    do
    {
      v35 = *(v34 + v29);
      *(v34 + v29) = 0;
      *(a1 + 240 + v29) = v35;
      v29 += 8;
    }

    while (v29 != 24);
  }

  return a1;
}

{
  if (*a1)
  {
    if (*a2)
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
      v5 = *(a2 + 40);
      v6 = *(a2 + 56);
      v7 = *(a2 + 72);
      *(a1 + 81) = *(a2 + 81);
      *(a1 + 72) = v7;
      *(a1 + 56) = v6;
      *(a1 + 40) = v5;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 104, (a1 + 104), *(a2 + 104));
      v8 = 0;
      v9 = (a1 + 112);
      do
      {
        objc_storeStrong(v9++, *(a2 + 112 + 8 * v8++));
      }

      while (v8 != 3);
      v10 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 136) = v10;
      v11 = *(a2 + 168);
      v12 = *(a2 + 184);
      v13 = *(a2 + 200);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 200) = v13;
      *(a1 + 184) = v12;
      *(a1 + 168) = v11;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 232, (a1 + 232), *(a2 + 232));
      v14 = 0;
      v15 = (a1 + 240);
      v16 = a2 + 240;
      do
      {
        objc_storeStrong(v15++, *(v16 + 8 * v14++));
      }

      while (v14 != 3);
    }

    else
    {
      for (i = 256; i != 232; i -= 8)
      {
      }

      if (*(a1 + 232))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 232));
      }

      *(a1 + 232) = 0;
      v33 = 128;
      do
      {
        v34 = v33 - 8;

        v33 = v34;
      }

      while (v34 != 104);
      if (*(a1 + 104))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 104));
      }

      *(a1 + 104) = 0;
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v17 = *(a2 + 40);
    v18 = *(a2 + 56);
    v19 = *(a2 + 72);
    v20 = *(a2 + 81);
    v21 = *(a2 + 8);
    v22 = *(a2 + 24);
    *(a1 + 104) = 0;
    *(a1 + 8) = v21;
    *(a1 + 24) = v22;
    *(a1 + 81) = v20;
    *(a1 + 56) = v18;
    *(a1 + 72) = v19;
    *(a1 + 40) = v17;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 104, (a1 + 104), *(a2 + 104));
    for (j = 0; j != 24; j += 8)
    {
      *(a1 + 112 + j) = *(a2 + 112 + j);
    }

    v24 = *(a2 + 168);
    v25 = *(a2 + 184);
    v26 = *(a2 + 200);
    v27 = *(a2 + 209);
    v28 = *(a2 + 136);
    v29 = *(a2 + 152);
    *(a1 + 232) = 0;
    *(a1 + 136) = v28;
    *(a1 + 152) = v29;
    *(a1 + 209) = v27;
    *(a1 + 184) = v25;
    *(a1 + 200) = v26;
    *(a1 + 168) = v24;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 232, (a1 + 232), *(a2 + 232));
    v30 = 0;
    v31 = a2 + 240;
    do
    {
      *(a1 + 240 + v30) = *(v31 + v30);
      v30 += 8;
    }

    while (v30 != 24);
  }

  return a1;
}

uint64_t re::Optional<re::VideoMipGenConfig>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != -24; i -= 8)
    {
    }

    if (*(a1 + 232))
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 232));
    }

    v3 = 0;
    *(a1 + 232) = 0;
    do
    {

      v3 -= 8;
    }

    while (v3 != -24);
    if (*(a1 + 104))
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((a1 + 104));
    }

    *(a1 + 104) = 0;
  }

  return a1;
}

uint64_t re::DynamicInlineArray<re::VideoMipGenConfig,2ul>::~DynamicInlineArray(uint64_t a1)
{
  if (*a1)
  {
    v2 = a1 + (*a1 << 8) + 16;
    v3 = a1 + 16;
    v4 = a1 + 264;
    v5 = a1 + 136;
    do
    {
      for (i = 0; i != -24; i -= 8)
      {
      }

      if (*(v3 + 224))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v3 + 224));
      }

      v7 = 0;
      *(v3 + 224) = 0;
      do
      {

        v7 -= 8;
      }

      while (v7 != -24);
      if (*(v3 + 96))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v3 + 96));
      }

      *(v3 + 96) = 0;
      v3 += 256;
      v4 += 256;
      v5 += 256;
    }

    while (v3 != v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
  return a1;
}

uint64_t re::DynamicInlineArray<re::VideoPSEConfig,2ul>::~DynamicInlineArray(uint64_t a1)
{
  if (*a1)
  {
    v2 = 48 * *a1;
    v3 = (a1 + 48);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3);
      }

      *v3 = 0;
      if (*(v3 - 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3 - 1);
      }

      *(v3 - 1) = 0;
      v4 = *(v3 - 3);
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      v3 += 6;
      v2 -= 48;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
  return a1;
}

uint64_t re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::~DynamicInlineArray(uint64_t a1)
{
  if (*a1)
  {
    v2 = 24 * *a1;
    v3 = (a1 + 24);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3);
      }

      *v3 = 0;
      if (*(v3 - 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3 - 1);
      }

      *(v3 - 1) = 0;
      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
  return a1;
}

uint64_t re::DynamicInlineArray<re::VideoHDRConfig,2ul>::~DynamicInlineArray(uint64_t a1)
{
  if (*a1)
  {
    v2 = 80 * *a1;
    v3 = (a1 + 32);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3);
      }

      *v3 = 0;
      if (*(v3 - 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3 - 1);
      }

      *(v3 - 1) = 0;
      if (*(v3 - 2))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v3 - 2);
      }

      *(v3 - 2) = 0;
      v3 += 10;
      v2 -= 80;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
  return a1;
}

id re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::add(uint64_t a1, id a2)
{
  if (*a1 >= 2uLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = a1 + 8 * *a1;
    result = a2;
    *(v3 + 16) = result;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

uint64_t re::retrievePresentationGroupForTime(uint64_t a1, uint64_t a2, int a3, CMTime *a4, unint64_t **a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  v293 = *MEMORY[0x1E69E9840];
  v18 = a13;
  if (a14)
  {
    v19 = *(a14 + 56) & (*a14 != 0);
    if ((*(a14 + 128) & 1) != 0 && *(a14 + 72) != 0)
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if (*(a1 + 9704) < 0)
  {
    v19 = 1;
  }

  v205 = v19;
  v232 = **&MEMORY[0x1E6960C70];
  v228 = 0;
  v229 = 0;
  *v231 = 0;
  *&v231[8] = -1;
  *&v231[12] = v232;
  if (a14 && (*(a14 + 56) & 1) != 0 && *a14)
  {
    v21 = a7;
    v22 = re::DynamicInlineArray<__CVBuffer *,2ul>::operator=(&v228, a14);
    v23 = *(a14 + 48);
    *v231 = *(a14 + 32);
    *&v231[16] = v23;
    *&v231[32] = *(a14 + 64);
    if (v228)
    {
      v24 = 8 * v228;
      v25 = v230;
      do
      {
        v22 = CVPixelBufferRetain(*v25++);
        v24 -= 8;
      }

      while (v24);
    }

    v232 = *&v231[12];
    a7 = v21;
  }

  else
  {
    time2 = *a4;
    re::retrievePixelBuffersWithVideoReceiver(&time.value, a2, &time2, &v232);
    v22 = re::DynamicInlineArray<__CVBuffer *,2ul>::move(&v228, &time);
    ++v229;
    *v231 = *&v240[8];
    *&v231[16] = *&v240[24];
    *&v231[32] = v241;
  }

  v26 = re::VideoDefaults::logEnabled(v22);
  v27 = v228;
  if (v26)
  {
    if (!v228)
    {
      goto LABEL_243;
    }

    v146 = 0;
    do
    {
      v147 = a5;
      v148 = a7;
      v149 = v146 + 1;
      v150 = [MEMORY[0x1E696AD60] stringWithFormat:@"Pixel Buffer %zu of %zu", v146 + 1, v27];
      v151 = re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[](&v228, v146);
      re::CoreVideoUtils::printPixelBufferInfo(*v151, v150, v152);
      v154 = *re::videoLogObjects(v153);
      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        v155 = v150;
        v156 = [(__CVBuffer *)v150 cStringUsingEncoding:1];
        LODWORD(time.value) = 136315138;
        *(&time.value + 4) = v156;
        _os_log_impl(&dword_1E1C61000, v154, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
      }

      v27 = v228;
      v146 = v149;
      v157 = v149 >= v228;
      a7 = v148;
      a5 = v147;
    }

    while (!v157);
  }

  if (v27)
  {
    *(a2 + 8) = 0;
    if ((v232.flags & 1) == 0)
    {
      v28 = *re::videoLogObjects(v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LOWORD(time.value) = 0;
        _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Video receiver sample has an invalid presentation timestamp.", &time, 2u);
      }

      goto LABEL_244;
    }

    v204 = a7;
    time = v232;
    *(a12 + 24) = CMTimeGetSeconds(&time);
    if (*(a1 + 4640) == *(a1 + 4648))
    {
      goto LABEL_44;
    }

    while (1)
    {
      time = v232;
      time2 = *re::VideoPresentationQueue::front((a1 + 432), v30);
      v29 = CMTimeCompare(&time, &time2);
      if (!v29)
      {
        break;
      }

      if (v29 == -1)
      {
        v43 = re::VideoDefaults::logEnabled(v29);
        if (v43)
        {
          v183 = *re::videoLogObjects(v43);
          if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(time.value) = 0;
            _os_log_impl(&dword_1E1C61000, v183, OS_LOG_TYPE_DEFAULT, "Presentation queue is stale. Clearing.", &time, 2u);
          }
        }

        re::VideoPresentationQueue::clear((a1 + 432));
        goto LABEL_44;
      }

      if (*(a1 + 4640) != *(a1 + 4648))
      {
        re::deinitVideoPresentationGroup(a1 + 448 + 2096 * (*(a1 + 4640) & 1));
        v31 = *(a1 + 4640) + 1;
        *(a1 + 4640) = v31;
        if (v31 != *(a1 + 4648))
        {
          continue;
        }
      }

      goto LABEL_44;
    }

    v32 = re::VideoPresentationQueue::front((a1 + 432), v30);
    if (v32[1584] == *(a1 + 9704))
    {
      v34 = v228;
      v35 = re::VideoPresentationQueue::front((a1 + 432), v33);
      if (v34 == *(v35 + 3))
      {
        if (!v228)
        {
LABEL_38:
          v29 = re::VideoDefaults::logEnabled(v35);
          if (v29)
          {
            if (*(a1 + 4640) != *(a1 + 4648))
            {
              v42 = *re::videoLogObjects(v29);
              v29 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
              if (v29)
              {
                LOWORD(time.value) = 0;
                _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, "Presentation group found for presentation time.", &time, 2u);
              }
            }
          }

LABEL_44:
          if (*(a1 + 4640) == *(a1 + 4648))
          {
            v44 = re::VideoDefaults::logEnabled(v29);
            if (v44)
            {
              v177 = *re::videoLogObjects(v44);
              if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(time.value) = 0;
                _os_log_impl(&dword_1E1C61000, v177, OS_LOG_TYPE_DEFAULT, "Presentation group not found for presentation time. Creating a new presentation group.", &time, 2u);
              }
            }

            time = **&MEMORY[0x1E6960C70];
            *v240 = 0;
            *&v240[8] = 0;
            *&v240[24] = 0;
            *&v240[32] = 0;
            v242 = 0;
            v243 = 0;
            v246 = 0;
            v247 = 0;
            v248 = 0;
            v249 = 0;
            v250 = 0;
            v251 = 0;
            v252 = 0;
            v253 = 0;
            v254 = 0;
            v255 = 0;
            v256 = 0;
            v257 = 0;
            v258 = 0;
            v259 = 0;
            v260 = 0;
            v261 = 0;
            v264 = 0;
            v265 = 0;
            v266 = 0;
            v267 = 0;
            v268 = 0;
            v269 = 0;
            v273 = 0;
            v263 = 0;
            v262 = 0u;
            v270 = 0u;
            v271 = 0u;
            v272 = 0u;
            v274 = 1;
            v275 = -1;
            v278 = 0;
            v279 = 0;
            v280 = 0;
            v281 = 0;
            v282 = 0;
            v283 = 0;
            v284 = 0;
            v285 = 0;
            v286 = 0;
            v287 = 0;
            v288 = 0;
            v289 = 0;
            v290 = 0;
            v276 = 0u;
            v277 = 0;
            v291 = 1;
            v292 = 0;
            if (!*(a1 + 280))
            {
              re::VideoTextureCache::init((a1 + 280));
            }

            v45 = (*(a1 + 9704) >> 3) & 1;
            time2 = v232;
            v225 = 0;
            v46 = v228;
            memcpy(v226, v230, 8 * v228);
            v224 = v46;
            v226[1] = *v231;
            v226[2] = *&v231[16];
            v227 = *&v231[32];
            texture = *a4;
            v47 = populatePresentationGroup(&time2.value, &v224, a1, &texture, a5, a6, v204, a8, &time, a12, v18, v45);
            v48 = v47;
            v224 = 0;
            v225 = 1;
            if (v47)
            {
              v49 = *re::videoLogObjects(v47);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                LOWORD(time2.value) = 0;
                _os_log_error_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_ERROR, "Could not populate current presentation group using buffer group", &time2, 2u);
              }

LABEL_56:
              re::VideoPresentationGroup::~VideoPresentationGroup(&time);
              goto LABEL_248;
            }

            v50 = *(a1 + 4648);
            if (v50 - *(a1 + 4640) == 2)
            {
              v51 = *re::videoLogObjects(v47);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                LOWORD(time2.value) = 0;
                _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, "Unable to enqueue new presentation group.", &time2, 2u);
              }

              v48 = 1;
              goto LABEL_56;
            }

            v52 = a1 + 2096 * (*(a1 + 4648) & 1);
            *(a1 + 4648) = v50 + 1;
            re::VideoPresentationGroup::operator=(v52 + 448, &time.value);
            re::VideoPresentationGroup::~VideoPresentationGroup(&time);
          }

          v203 = a5;
          v53 = re::VideoPresentationQueue::front((a1 + 432), v30);
          v54 = v53;
          v55 = v53 + 252;
          if (v53[250])
          {
            v56 = 0;
            v57 = v53 + 252;
            do
            {
              v58 = atomic_load(*v57);
              if (v58 != 8)
              {
                goto LABEL_178;
              }

              ++v56;
              v57 += 2;
            }

            while (v56 < v53[250]);
          }

          if (!v53[6])
          {
            v62 = 1;
            goto LABEL_70;
          }

          v59 = 0;
          while (1)
          {
            time2.value = 0;
            re::VideoObject<re::VideoPixelBufferBase>::setRef(&time2, &time2, v54[v59 + 8]);
            v53 = re::VideoLightSpillGenerator::CanGenerateForPixelBuffer(&time2);
            v60 = v53;
            if (time2.value)
            {
              re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&time2);
            }

            time2.value = 0;
            if ((v60 & 1) == 0)
            {
              break;
            }

            ++v59;
            v61 = v54[6];
            if (v59 >= v61)
            {
              v62 = v61 == 0;
LABEL_70:
              v202 = v54 + 154;
              if (v54[154] || (*(a1 + 9704) & 0x40) == 0 || !*(a1 + 7384) || *(a1 + 7368) < 1 || *(a1 + 7372) < 1 || (*(a1 + 7376) & 0x80000000) != 0)
              {
                v89 = re::VideoDefaults::logLevel(v53);
                if (v89 >= 3)
                {
                  v178 = *re::videoLogObjects(v89);
                  if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
                  {
                    v179 = "Not Empty";
                    if (!*v202)
                    {
                      v179 = "Empty";
                    }

                    if (*(a1 + 7384) && *(a1 + 7368) >= 1)
                    {
                      v180 = "Not Valid";
                      if (*(a1 + 7372) >= 1 && *(a1 + 7376) >= 0)
                      {
                        v180 = "Valid";
                      }
                    }

                    else
                    {
                      v180 = "Not Valid";
                    }

                    LODWORD(time.value) = 136315394;
                    *(&time.value + 4) = v179;
                    LOWORD(time.flags) = 2080;
                    *(&time.flags + 2) = v180;
                    _os_log_impl(&dword_1E1C61000, v178, OS_LOG_TYPE_DEFAULT, "[VideoAssetUtility]->populateLightSpillForPresentationGroup :: Failing to generate light spill :: LightSpillTextures are %s :: Light Spill Generator is %s", &time, 0x16u);
                  }
                }
              }

              else if (!v62)
              {
                v63 = 0;
                while (1)
                {
                  v64 = v63;
                  v65 = v54[v63 + 8];
                  texture.value = 0;
                  v66 = re::VideoDefaults::logLevel(v53);
                  if (v66 >= 3)
                  {
                    loga = *re::videoLogObjects(v66);
                    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
                    {
                      v87 = "Not Empty";
                      if (!*v202)
                      {
                        v87 = "Empty";
                      }

                      if (*(a1 + 7384) && *(a1 + 7368) >= 1 && *(a1 + 7372) >= 1)
                      {
                        v88 = "Not Valid";
                        if (*(a1 + 7376) >= 0)
                        {
                          v88 = "Valid";
                        }
                      }

                      else
                      {
                        v88 = "Not Valid";
                      }

                      LODWORD(time.value) = 136315394;
                      *(&time.value + 4) = v87;
                      LOWORD(time.flags) = 2080;
                      *(&time.flags + 2) = v88;
                      _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "[VideoAssetUtility]->populateLightSpillForPresentationGroup :: Generating light spill :: LightSpillTextures are %s :: Light Spill Generator is %s", &time, 0x16u);
                    }
                  }

                  v67 = re::VideoLightSpillGenerator::generate(a1 + 7368, v65, &texture);
                  if (!v67)
                  {
                    break;
                  }

                  v68 = *re::videoLogObjects(v67);
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(time.value) = 0;
                    _os_log_error_impl(&dword_1E1C61000, v68, OS_LOG_TYPE_ERROR, "Unable to generate diffuse light spill pixel buffer.", &time, 2u);
                  }

LABEL_117:
                  CVPixelBufferRelease(texture.value);
                  v63 = v64 + 1;
                  if (v64 + 1 >= v54[6])
                  {
                    goto LABEL_131;
                  }
                }

                BYTE2(time.value) = 2;
                LOWORD(time.value) = 514;
                *&time.timescale = *MEMORY[0x1E695F060];
                v69 = *(MEMORY[0x1E695F058] + 16);
                *v240 = *MEMORY[0x1E695F058];
                *&v240[16] = v69;
                *&v240[32] = 0;
                LOBYTE(v241) = 0;
                LOBYTE(v243) = 0;
                *v244 = 0u;
                v245 = 0u;
                TexturesFromPixelBuffer = re::VideoTextureCache::createTexturesFromPixelBuffer((a1 + 280), texture.value, &time, 1, 0);
                if (TexturesFromPixelBuffer)
                {
                  v71 = *re::videoLogObjects(TexturesFromPixelBuffer);
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(buf.value) = 0;
                    _os_log_error_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_ERROR, "Unable to generate diffuse light spill texture.", &buf, 2u);
                  }

LABEL_111:
                  for (i = 120; i != 96; i -= 8)
                  {
                    if (*(&time.value + i))
                    {
                      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((&time + i));
                    }

                    *(&time.value + i) = 0;
                  }

                  if (v244[0])
                  {
                    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v244);
                  }

                  goto LABEL_117;
                }

                value = texture.value;
                buf.value = texture.value;
                CVPixelBufferRetain(texture.value);
                re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(v54[146], v73);
                v74 = v54[146];
                v54[v74 + 148] = value;
                v54[146] = (v74 + 1);
                ++*(v54 + 294);
                re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::add(v202, &time);
                v75 = *(a6 + 208);
                buf.value = 0;
                re::VideoObject<re::VideoPixelBufferBase>::setRef(&buf, &buf, v244[1]);
                v76 = re::VideoPixelBufferTextureBase::asMetalTexture(&buf);
                log = v75;
                v77 = v76;

                if (buf.value)
                {
                  re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&buf);
                }

                buf.value = 0;
                if (re::VideoDefaults::lightSpillTextureAllocatorEnabled(v78))
                {
                  if (!*(a1 + 264))
                  {
                    v79 = *(a6 + 208);
                    v222.value = v79;
                    if (!*(a1 + 264))
                    {
                      re::ObjCObject::operator=((a1 + 264), &v222);
                      v79 = v222.value;
                    }
                  }

                  Width = CVPixelBufferGetWidth(texture.value);
                  Height = CVPixelBufferGetHeight(texture.value);
                  re::VideoTextureAllocator::createTextureInternal(a1 + 216, Width, Height, 0x73u, 2u, 3, 0, 0, &v221, v82, v54[210]);
                  NS::SharedPtr<MTL::Texture>::operator=(&buf, &v221);
                  v83 = v221.value;
                  if (!v221.value)
                  {
                    goto LABEL_101;
                  }
                }

                else
                {
                  v84 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
                  [v84 setStorageMode_];
                  [v84 setPixelFormat_];
                  [v84 setWidth_];
                  [v84 setHeight_];
                  [v84 setUsage_];
                  [v84 setProtectionOptions_];
                  re::mtl::Device::makeTexture(v84, (a6 + 208), &v221);
                  NS::SharedPtr<MTL::Texture>::operator=(&buf, &v221);
                  if (v221.value)
                  {
                  }

                  if (buf.value)
                  {
                    re::memoryAttributionMTLResource(buf.value, *(a1 + 9744));
                  }

                  if (!v84)
                  {
                    goto LABEL_101;
                  }

                  v83 = v84;
                }

LABEL_101:
                if (buf.value)
                {
                  v85 = *(a6 + 56);
                  v220.value = v76;
                  v217.value = buf.value;
                  re::TextureManager::queueBlurGeneration(v85, &v220, &v217, 1);
                  if (v217.value)
                  {

                    v217.value = 0;
                  }

                  if (v220.value)
                  {

                    v220.value = 0;
                  }

                  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::add((v54 + 188), buf.value);
                  if (buf.value)
                  {
                  }
                }

                if (v76)
                {
                }

                goto LABEL_111;
              }

LABEL_131:
              if (!v54[192] && (*(a1 + 9704) & 4) != 0 && *(a1 + 7416) && *(a1 + 7400) >= 1 && *(a1 + 7404) >= 1 && (*(a1 + 7408) & 0x80000000) == 0 && v54[6])
              {
                v90 = 0;
                while (1)
                {
                  v91 = v54[v90 + 8];
                  texture.value = 0;
                  v92 = re::VideoLightSpillGenerator::generate(a1 + 7400, v91, &texture);
                  if (!v92)
                  {
                    break;
                  }

                  v93 = *re::videoLogObjects(v92);
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(time.value) = 0;
                    _os_log_error_impl(&dword_1E1C61000, v93, OS_LOG_TYPE_ERROR, "Unable to generate specular light spill pixel buffer.", &time, 2u);
                  }

LABEL_175:
                  CVPixelBufferRelease(texture.value);
                  if (++v90 >= v54[6])
                  {
                    goto LABEL_178;
                  }
                }

                BYTE2(time.value) = 2;
                LOWORD(time.value) = 514;
                *&time.timescale = *MEMORY[0x1E695F060];
                v94 = *(MEMORY[0x1E695F058] + 16);
                *v240 = *MEMORY[0x1E695F058];
                *&v240[16] = v94;
                *&v240[32] = 0;
                LOBYTE(v241) = 0;
                LOBYTE(v243) = 0;
                *v244 = 0u;
                v245 = 0u;
                v95 = re::VideoTextureCache::createTexturesFromPixelBuffer((a1 + 280), texture.value, &time, 1, 0);
                if (v95)
                {
                  v96 = *re::videoLogObjects(v95);
                  if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(buf.value) = 0;
                    _os_log_error_impl(&dword_1E1C61000, v96, OS_LOG_TYPE_ERROR, "Unable to generate specular light spill texture.", &buf, 2u);
                  }

LABEL_169:
                  for (j = 120; j != 96; j -= 8)
                  {
                    if (*(&time.value + j))
                    {
                      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((&time + j));
                    }

                    *(&time.value + j) = 0;
                  }

                  if (v244[0])
                  {
                    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v244);
                  }

                  goto LABEL_175;
                }

                v97 = texture.value;
                buf.value = texture.value;
                CVPixelBufferRetain(texture.value);
                re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(v54[150], v98);
                v99 = v54[150];
                v54[v99 + 152] = v97;
                v54[150] = (v99 + 1);
                ++*(v54 + 302);
                buf.value = 0;
                re::VideoObject<re::VideoPixelBufferBase>::setRef(&buf, &buf, v244[1]);
                v100 = re::VideoPixelBufferTextureBase::asMetalTexture(&buf);
                v101 = v100;

                if (buf.value)
                {
                  re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&buf);
                }

                v201 = *(a6 + 208);
                buf.value = v201;
                v102 = [v100 pixelFormat];
                v221.value = 0;
                if ((*(a1 + 9704) & 0x20) == 0)
                {
                  goto LABEL_164;
                }

                v103 = v102;
                if (re::VideoDefaults::lightSpillTextureAllocatorEnabled(v102))
                {
                  if (!*(a1 + 264))
                  {
                    v104 = *(a6 + 208);
                    v216.value = v104;
                    if (!*(a1 + 264))
                    {
                      re::ObjCObject::operator=((a1 + 264), &v216);
                      v104 = v216.value;
                    }
                  }

                  v197 = CVPixelBufferGetWidth(texture.value);
                  v105 = CVPixelBufferGetHeight(texture.value);
                  re::VideoTextureAllocator::createTextureInternal(a1 + 216, v197, v105, v103, 2u, 3, 1, 0, v210, v106, v54[210]);
                  NS::SharedPtr<MTL::Texture>::operator=(&v221, v210);
                  v107 = v210[0];
                  if (!v210[0])
                  {
                    goto LABEL_162;
                  }

LABEL_161:

                  goto LABEL_162;
                }

                v198 = CVPixelBufferGetWidth(texture.value);
                v108 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v103 width:v198 height:CVPixelBufferGetHeight(texture.value) mipmapped:1];
                [v108 setStorageMode_];
                [v108 setProtectionOptions_];
                re::mtl::Device::makeTexture(v108, (a6 + 208), v210);
                NS::SharedPtr<MTL::Texture>::operator=(&v221, v210);
                if (v210[0])
                {
                }

                if (v221.value)
                {
                  re::memoryAttributionMTLResource(v221.value, *(a1 + 9744));
                }

                if (v108)
                {
                  v107 = v108;
                  goto LABEL_161;
                }

LABEL_162:
                if (v221.value)
                {
                  re::mtl::Device::makeCommandQueue(&buf, v210);
                  re::mtl::CommandQueue::makeCommandBuffer(v210, &v234);
                  re::mtl::CommandBuffer::makeBlitCommandEncoder(&v234, &v233);
                  v109 = CVPixelBufferGetWidth(texture.value);
                  v110 = CVPixelBufferGetHeight(texture.value);
                  re::mtl::BlitCommandEncoder::textureCopy(&v233, v100, 0, 0, 0, 0, 0, v109, v110, 1, v221.value, 0, 0, 0, 0, 0);
                  re::mtl::BlitCommandEncoder::generateMipmaps(&v233, v221.value);
                  [v233 endEncoding];
                  [v234 commit];
                  [v234 waitUntilCompleted];
                  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::add((v54 + 192), v221.value);
                }

                else
                {
LABEL_164:
                  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::add((v54 + 192), v100);
                }

                if (v221.value)
                {
                }

                if (v100)
                {
                }

                goto LABEL_169;
              }

LABEL_178:
              if (a3)
              {
                if (v54[250])
                {
                  v113 = 0;
                  while (1)
                  {
                    v114 = atomic_load(*v55);
                    if (v114 != 8)
                    {
                      break;
                    }

                    ++v113;
                    v55 += 2;
                    if (v113 >= v54[250])
                    {
                      goto LABEL_183;
                    }
                  }
                }

                else
                {
LABEL_183:
                  if (v54[6])
                  {
                    v115 = 0;
                    v116 = (v54 + 8);
                    do
                    {
                      time2.value = 0;
                      re::VideoObject<re::VideoPixelBufferBase>::setRef(&time2, &time2, v116[v115]);
                      v117 = re::VideoLightSpillGenerator::CanGenerateForPixelBuffer(&time2);
                      v118 = v117;
                      if (time2.value)
                      {
                        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&time2);
                      }

                      time2.value = 0;
                      if ((v118 & 1) == 0)
                      {
                        v123 = re::VideoDefaults::logEnabled(v117);
                        if (v123)
                        {
                          v184 = *re::videoLogObjects(v123);
                          if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
                          {
                            LOWORD(time.value) = 0;
                            _os_log_impl(&dword_1E1C61000, v184, OS_LOG_TYPE_DEFAULT, "Cannot generate video blur for pixel buffer because its pixel format is not supported.", &time, 2u);
                          }
                        }

                        goto LABEL_198;
                      }

                      ++v115;
                      v119 = v54[6];
                    }

                    while (v115 < v119);
                    if (v119 && *(a1 + 9728) && *(a1 + 9712) >= 1 && *(a1 + 9716) >= 1 && (*(a1 + 9720) & 0x80000000) == 0)
                    {
                      v120 = *v116;
                      texture.value = 0;
                      v121 = re::VideoLightSpillGenerator::generate(a1 + 9712, v120, &texture);
                      if (v121)
                      {
                        v122 = *re::videoLogObjects(v121);
                        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(time.value) = 0;
                          _os_log_error_impl(&dword_1E1C61000, v122, OS_LOG_TYPE_ERROR, "Unable to generate video blur texture.", &time, 2u);
                        }

LABEL_288:
                        CVPixelBufferRelease(texture.value);
                        goto LABEL_198;
                      }

                      v142 = *MEMORY[0x1E695F058];
                      v143 = *(MEMORY[0x1E695F058] + 16);
                      *&time.timescale = *MEMORY[0x1E695F060];
                      *v240 = v142;
                      BYTE2(time.value) = 2;
                      LOWORD(time.value) = 514;
                      *&v240[16] = v143;
                      *&v240[32] = 0;
                      LOBYTE(v241) = 0;
                      LOBYTE(v243) = 0;
                      *v244 = 0u;
                      v245 = 0u;
                      v144 = re::VideoTextureCache::createTexturesFromPixelBuffer((a1 + 280), texture.value, &time, 1, 0);
                      if (v144)
                      {
                        v145 = *re::videoLogObjects(v144);
                        if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(buf.value) = 0;
                          _os_log_error_impl(&dword_1E1C61000, v145, OS_LOG_TYPE_ERROR, "Unable to generate video blur texture.", &buf, 2u);
                        }

LABEL_282:
                        for (k = 120; k != 96; k -= 8)
                        {
                          if (*(&time.value + k))
                          {
                            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((&time + k));
                          }

                          *(&time.value + k) = 0;
                        }

                        if (v244[0])
                        {
                          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v244);
                        }

                        goto LABEL_288;
                      }

                      v163 = texture.value;
                      CVPixelBufferRetain(texture.value);
                      v54[196] = v163;
                      v164 = (a6 + 208);
                      v165 = *(a6 + 208);
                      v222.value = 0;
                      re::VideoObject<re::VideoPixelBufferBase>::setRef(&v222, &v222, v244[1]);
                      v166 = re::VideoPixelBufferTextureBase::asMetalTexture(&v222);
                      buf.value = v166;
                      v167 = v166;

                      if (v222.value)
                      {
                        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v222);
                      }

                      v222.value = 0;
                      if (re::VideoDefaults::lightSpillTextureAllocatorEnabled(v168))
                      {
                        if (!*(a1 + 264))
                        {
                          v169 = *v164;
                          v221.value = v169;
                          if (!*(a1 + 264))
                          {
                            re::ObjCObject::operator=((a1 + 264), &v221);
                            v169 = v221.value;
                          }
                        }

                        v170 = CVPixelBufferGetWidth(texture.value);
                        v171 = CVPixelBufferGetHeight(texture.value);
                        re::VideoTextureAllocator::createTextureInternal(a1 + 216, v170, v171, 0x73u, 2u, 3, 0, 0, &v220, v172, v54[210]);
                        NS::SharedPtr<MTL::Texture>::operator=(&v222, &v220);
                        v173 = v220.value;
                        if (!v220.value)
                        {
                          goto LABEL_271;
                        }
                      }

                      else
                      {
                        v174 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
                        [v174 setStorageMode_];
                        [v174 setPixelFormat_];
                        [v174 setWidth_];
                        [v174 setHeight_];
                        [v174 setUsage_];
                        [v174 setProtectionOptions_];
                        re::mtl::Device::makeTexture(v174, v164, &v221);
                        NS::SharedPtr<MTL::Texture>::operator=(&v222, &v221);
                        if (v221.value)
                        {
                        }

                        if (v222.value)
                        {
                          re::memoryAttributionMTLResource(v222.value, *(a1 + 9744));
                        }

                        if (!v174)
                        {
                          goto LABEL_271;
                        }

                        v173 = v174;
                      }

LABEL_271:
                      if (v222.value)
                      {
                        v175 = *(a6 + 56);
                        v220.value = v166;
                        v217.value = v222.value;
                        re::TextureManager::queueBlurGeneration(v175, &v220, &v217, 1);
                        if (v217.value)
                        {

                          v217.value = 0;
                        }

                        if (v220.value)
                        {

                          v220.value = 0;
                        }

                        NS::SharedPtr<MTL::Buffer>::operator=(&buf, &v222);
                      }

                      NS::SharedPtr<MTL::Buffer>::operator=(v54 + 197, &v222);
                      if (v222.value)
                      {
                      }

                      if (buf.value)
                      {
                      }

                      goto LABEL_282;
                    }
                  }
                }
              }

LABEL_198:
              if ((v205 & 1) == 0 && *(a1 + 4648) - *(a1 + 4640) != *(a1 + 432))
              {
                v125 = re::VideoDefaults::logEnabled(v124);
                if (v125)
                {
                  v181 = *re::videoLogObjects(v125);
                  if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(time.value) = 0;
                    _os_log_impl(&dword_1E1C61000, v181, OS_LOG_TYPE_DEFAULT, "Attempting to fill presentation queue with 1 more group.", &time, 2u);
                  }
                }

                buf = **&MEMORY[0x1E6960C70];
                v126 = *(a1 + 4648);
                if (*(a1 + 4640) != v126)
                {
                  buf = *(a1 + 2096 * ((v126 & 1) == 0) + 448);
                }

                memset(&v222, 0, sizeof(v222));
                CMTimeMake(&v222, 0, 1000);
                v221 = buf;
                memset(&v220, 0, sizeof(v220));
                CMTimeMake(&v220, 10, 1000);
                if ((atomic_load_explicit(&qword_1EE1964D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1964D8))
                {
                  _MergedGlobals_76 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6973DD0], MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  __cxa_guard_release(&qword_1EE1964D8);
                }

                v127 = 0;
                time2.value = 0;
                time2.timescale = 0;
                *v219 = 0;
                *&v219[8] = -1;
                *&v219[12] = *MEMORY[0x1E6960C70];
                *&v219[28] = *(MEMORY[0x1E6960C70] + 16);
                while (1)
                {
                  texture = v222;
                  v217 = v220;
                  CMTimeAdd(&time, &texture, &v217);
                  v222 = time;
                  memset(&v217, 0, sizeof(v217));
                  time = *a4;
                  texture = v222;
                  CMTimeAdd(&v217, &time, &texture);
                  if (a14 && (*(a14 + 128) & 1) != 0 && *(a14 + 72))
                  {
                    v128 = a8;
                    v129 = v18;
                    v130 = re::DynamicInlineArray<__CVBuffer *,2ul>::operator=(&time2.value, a14);
                    v131 = *(a14 + 48);
                    *v219 = *(a14 + 32);
                    *&v219[16] = v131;
                    *&v219[32] = *(a14 + 64);
                    if (time2.value)
                    {
                      v132 = 8 * time2.value;
                      p_epoch = &time2.epoch;
                      do
                      {
                        v130 = CVPixelBufferRetain(*p_epoch++);
                        v132 -= 8;
                      }

                      while (v132);
                    }

                    v232 = *&v231[12];
                    v18 = v129;
                    a8 = v128;
                  }

                  else
                  {
                    texture = v217;
                    re::retrievePixelBuffersWithVideoReceiver(&time.value, a2, &texture, &v221);
                    v130 = re::DynamicInlineArray<__CVBuffer *,2ul>::move(&time2, &time);
                    ++time2.timescale;
                    *v219 = *&v240[8];
                    *&v219[16] = *&v240[24];
                    *&v219[32] = v241;
                  }

                  if ((v221.flags & 1) == 0)
                  {
                    v135 = *re::videoLogObjects(v130);
                    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                    {
                      LOWORD(time.value) = 0;
                      _os_log_error_impl(&dword_1E1C61000, v135, OS_LOG_TYPE_ERROR, "Invalid presentation time sampled for future host time.", &time, 2u);
                    }

                    goto LABEL_232;
                  }

                  time = buf;
                  texture = v221;
                  v134 = CMTimeCompare(&time, &texture);
                  if ((v134 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (++v127 == 5)
                  {
                    goto LABEL_232;
                  }
                }

                v136 = re::VideoDefaults::logEnabled(v134);
                if (v136)
                {
                  v185 = v228;
                  if (v228)
                  {
                    v186 = 0;
                    do
                    {
                      v187 = v186 + 1;
                      v188 = [MEMORY[0x1E696AD60] stringWithFormat:@"Pixel Buffer %zu of %zu", v186 + 1, v185];
                      v189 = re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[](&v228, v186);
                      re::CoreVideoUtils::printPixelBufferInfo(*v189, v188, v190);
                      v192 = *re::videoLogObjects(v191);
                      if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
                      {
                        v193 = v188;
                        v194 = [(__CVBuffer *)v188 cStringUsingEncoding:1];
                        LODWORD(time.value) = 136315138;
                        *(&time.value + 4) = v194;
                        _os_log_impl(&dword_1E1C61000, v192, OS_LOG_TYPE_DEFAULT, "%s", &time, 0xCu);
                      }

                      v185 = v228;
                      v186 = v187;
                    }

                    while (v187 < v228);
                  }
                }

                v137 = re::VideoDefaults::logEnabled(v136);
                if (v137)
                {
                  v195 = *re::videoLogObjects(v137);
                  if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
                  {
                    time = v221;
                    Seconds = CMTimeGetSeconds(&time);
                    LODWORD(texture.value) = 134217984;
                    *(&texture.value + 4) = Seconds;
                    _os_log_impl(&dword_1E1C61000, v195, OS_LOG_TYPE_DEFAULT, "Creating presentation queue group for future presentation Time: %.3f", &texture, 0xCu);
                  }
                }

                time = **&MEMORY[0x1E6960C70];
                *v240 = 0;
                *&v240[8] = 0;
                *&v240[24] = 0;
                *&v240[32] = 0;
                v242 = 0;
                v243 = 0;
                v246 = 0;
                v247 = 0;
                v248 = 0;
                v249 = 0;
                v250 = 0;
                v251 = 0;
                v252 = 0;
                v253 = 0;
                v254 = 0;
                v255 = 0;
                v256 = 0;
                v257 = 0;
                v258 = 0;
                v259 = 0;
                v260 = 0;
                v261 = 0;
                v264 = 0;
                v265 = 0;
                v266 = 0;
                v267 = 0;
                v268 = 0;
                v269 = 0;
                v273 = 0;
                v263 = 0;
                v262 = 0u;
                v270 = 0u;
                v271 = 0u;
                v272 = 0u;
                v274 = 1;
                v275 = -1;
                v278 = 0;
                v279 = 0;
                v280 = 0;
                v281 = 0;
                v282 = 0;
                v283 = 0;
                v284 = 0;
                v285 = 0;
                v286 = 0;
                v287 = 0;
                v288 = 0;
                v289 = 0;
                v290 = 0;
                v276 = 0u;
                v277 = 0;
                v291 = 1;
                v292 = 0;
                LOBYTE(texture.value) = 0;
                v236 = 0;
                *&texture.timescale = 0;
                texture.epoch = 0;
                re::DynamicString::DynamicString(&v237);
                v216 = v221;
                v213 = 0;
                v138 = time2.value;
                memcpy(v214, &time2.epoch, 8 * time2.value);
                v214[1] = *v219;
                v214[2] = *&v219[16];
                v215 = *&v219[32];
                *v210 = *&v217.value;
                p_texture = a12;
                if (*(a1 + 4640) == *(a1 + 4648))
                {
                  p_texture = &texture;
                }

                epoch = v217.epoch;
                v212 = v138;
                v140 = populatePresentationGroup(&v216.value, &v212, a1, v210, v203, a6, v204, a8, &time, p_texture, v18, 0);
                v48 = v140;
                if (v140)
                {
                  v141 = *re::videoLogObjects(v140);
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(v216.value) = 0;
                    _os_log_error_impl(&dword_1E1C61000, v141, OS_LOG_TYPE_ERROR, "Could not populate future presentation group using future buffer group", &v216, 2u);
                  }
                }

                else
                {
                  re::VideoPresentationQueue::push((a1 + 432), &time);
                }

                if (v237 && (v238 & 1) != 0)
                {
                  (*(*v237 + 40))();
                }

                re::VideoPresentationGroup::~VideoPresentationGroup(&time);
                if (v48)
                {
                  goto LABEL_248;
                }
              }

LABEL_232:
              re::VideoPresentationGroup::operator=(a11, v54);
              v48 = 0;
              goto LABEL_248;
            }
          }

          v112 = re::VideoDefaults::logEnabled(v53);
          if (v112)
          {
            v182 = *re::videoLogObjects(v112);
            if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(time.value) = 0;
              _os_log_impl(&dword_1E1C61000, v182, OS_LOG_TYPE_DEFAULT, "Cannot generate light spill for pixel buffer because its pixel format is not supported.", &time, 2u);
            }
          }

          goto LABEL_178;
        }

        v36 = 0;
        while (1)
        {
          IOSurface = CVPixelBufferGetIOSurface(v230[v36]);
          ID = IOSurfaceGetID(IOSurface);
          v35 = re::VideoPresentationQueue::front((a1 + 432), v39);
          v41 = *(v35 + 3);
          if (v41 <= v36)
          {
            break;
          }

          if (ID != *(v35 + v36 + 9))
          {
            goto LABEL_250;
          }

          if (++v36 >= v228)
          {
            goto LABEL_38;
          }
        }

        re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v36, v41);
        _os_crash();
        __break(1u);
LABEL_250:
        time = v232;
        if (CMTimeGetSeconds(&time) == 0.0 || (v161 = *re::videoLogObjects(v160), !os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT)))
        {
LABEL_254:
          re::VideoPresentationQueue::clear((a1 + 432));
          goto LABEL_38;
        }

        LOWORD(time.value) = 0;
        v162 = "Surface IDs changed. Clearing.";
      }

      else
      {
        v161 = *re::videoLogObjects(v35);
        if (!os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_254;
        }

        LOWORD(time.value) = 0;
        v162 = "Mismatched channel count. Clearing.";
      }
    }

    else
    {
      v161 = *re::videoLogObjects(v32);
      if (!os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_254;
      }

      LOWORD(time.value) = 0;
      v162 = "[VideoAssetUtillity]->retrievePresentationGroupForTime : : Options have changed and clearing the presentation queue";
    }

    _os_log_impl(&dword_1E1C61000, v161, OS_LOG_TYPE_DEFAULT, v162, &time, 2u);
    goto LABEL_254;
  }

LABEL_243:
  if (*(a2 + 8) == 1)
  {
LABEL_244:
    v48 = 1;
    goto LABEL_248;
  }

  v158 = *re::videoLogObjects(v26);
  if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
  {
    LOWORD(time.value) = 0;
    _os_log_error_impl(&dword_1E1C61000, v158, OS_LOG_TYPE_ERROR, "Video receiver sample has no pixel buffers.", &time, 2u);
  }

  v48 = 1;
  *(a2 + 8) = 1;
LABEL_248:

  return v48;
}

void sub_1E203D118(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE1964D8);

  _Unwind_Resume(a1);
}

void anonymous namespace::deinitLegacyBufferGroup(uint64_t a1)
{
  if (*a1)
  {
    v2 = 0;
    do
    {
      CVPixelBufferRelease(*(a1 + 8 * v2++ + 16));
    }

    while (v2 < *a1);
  }

  *a1 = 0;
  ++*(a1 + 8);
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = -1;
}

uint64_t re::VideoPresentationGroup::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  re::DynamicInlineArray<unsigned int,2ul>::operator=((a1 + 24), a2 + 3);
  if (a1 != a2)
  {
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy((a1 + 48), a2 + 6);
    ++*(a1 + 56);
    re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::copy((a1 + 80), a2 + 10);
    ++*(a1 + 88);
    re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::copy((a1 + 352), a2 + 44);
    ++*(a1 + 360);
    re::DynamicInlineArray<re::VideoMetalTextures,2ul>::copy((a1 + 624), a2 + 78);
    ++*(a1 + 632);
    re::DynamicInlineArray<re::VideoMetalTextures,2ul>::copy((a1 + 896), a2 + 112);
    ++*(a1 + 904);
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy((a1 + 1168), a2 + 146);
    ++*(a1 + 1176);
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy((a1 + 1200), a2 + 150);
    ++*(a1 + 1208);
    re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::copy((a1 + 1232), a2 + 154);
    ++*(a1 + 1240);
    re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::copy((a1 + 1504), a2 + 188);
    ++*(a1 + 1512);
    re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::copy((a1 + 1536), a2 + 192);
    ++*(a1 + 1544);
  }

  re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 1568, (a1 + 1568), *(a2 + 196));
  NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1576), a2 + 197);
  *(a1 + 1584) = *(a2 + 1584);
  re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=((a1 + 1600), a2 + 200);
  if (a1 == a2)
  {
    v10 = a2[105];
    v11 = a2[106];
    *(a1 + 1712) = a2[107];
    *(a1 + 1696) = v11;
    *(a1 + 1680) = v10;
    v12 = a2[108];
    v13 = a2[109];
    v14 = a2[110];
    *(a1 + 1776) = a2[111];
    *(a1 + 1760) = v14;
    *(a1 + 1744) = v13;
    *(a1 + 1728) = v12;
  }

  else
  {
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::copy((a1 + 1648), a2 + 206);
    ++*(a1 + 1656);
    v5 = a2[105];
    v6 = a2[106];
    *(a1 + 1712) = a2[107];
    *(a1 + 1696) = v6;
    *(a1 + 1680) = v5;
    v7 = a2[108];
    v8 = a2[109];
    v9 = a2[110];
    *(a1 + 1776) = a2[111];
    *(a1 + 1760) = v9;
    *(a1 + 1744) = v8;
    *(a1 + 1728) = v7;
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::copy((a1 + 1792), a2 + 224);
    ++*(a1 + 1800);
  }

  re::DynamicInlineArray<re::VideoColorTags,2ul>::operator=((a1 + 1824), a2 + 228);
  re::DynamicInlineArray<re::VideoColorTags,2ul>::operator=((a1 + 1848), a2 + 231);
  if (a1 != a2)
  {
    re::DynamicInlineArray<std::optional<re::VideoRectangularMask>,2ul>::copy((a1 + 1872), a2 + 234);
    ++*(a1 + 1880);
    re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::copy((a1 + 1952), a2 + 244);
    ++*(a1 + 1960);
    re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::copy((a1 + 2000), a2 + 250);
    ++*(a1 + 2008);
  }

  re::DynamicInlineArray<unsigned int,2ul>::operator=((a1 + 2048), a2 + 256);
  v15 = *(a2 + 2088);
  *(a1 + 2072) = *(a2 + 2072);
  *(a1 + 2088) = v15;
  return a1;
}

void re::logVideoInfo(re *this, const __CFArray *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(this);
  v4 = Count;
  if (Count < 1)
  {
    v28 = 0;
    v9 = 0;
    LOBYTE(v27) = 0;
    LOBYTE(v7) = 0;
    LOBYTE(v6) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v27 = 0;
    v9 = 0;
    v28 = 0;
    v10 = MEMORY[0x1E6963150];
    v11 = MEMORY[0x1E6963148];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(this, v8);
      *&v46.category = v10[1];
      {
      }

      *&v13.category = v10[1];
      {
      }

      *&v14.category = v10[1];
      {
        *&v15.category = *(MEMORY[0x1E69631A8] + 8);
      }

      *&v15.category = v10[1];
      {
        *&v16.category = *(MEMORY[0x1E69631B8] + 8);
      }

      *&v16.category = v10[1];
      {
      }

      *&v17.category = v10[1];
      {
      }

      *&v18.category = v11[1];
      v9 |= Count;
      ++v8;
    }

    while (v4 != v8);
  }

  v19 = *re::videoLogObjects(Count);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = "0";
    if (v5)
    {
      v21 = "1";
    }

    else
    {
      v21 = "0";
    }

    *buf = 134219778;
    v30 = v4;
    if (v6)
    {
      v22 = "1";
    }

    else
    {
      v22 = "0";
    }

    v31 = 2080;
    v32 = v21;
    if (v7)
    {
      v23 = "1";
    }

    else
    {
      v23 = "0";
    }

    v33 = 2080;
    v34 = v22;
    if (v27)
    {
      v24 = "1";
    }

    else
    {
      v24 = "0";
    }

    v35 = 2080;
    if (v28)
    {
      v25 = "1";
    }

    else
    {
      v25 = "0";
    }

    v36 = v23;
    if ((v28 & 0x100000000) != 0)
    {
      v26 = "1";
    }

    else
    {
      v26 = "0";
    }

    v37 = 2080;
    if (v9)
    {
      v20 = "1";
    }

    v38 = v24;
    v39 = 2080;
    v40 = v25;
    v41 = 2080;
    v42 = v26;
    v43 = 2080;
    v44 = v20;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Data channels changed. Number of video channels: %ld. Index 1 %s. Index 2 %s. Left eye channel %s. Right eye channel %s. SBS packed %s. O/U packed %s. Metadata %s", buf, 0x52u);
  }
}

void __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  v4 = *(a2 + 48);
  v2 = a2 + 48;
  v3 = v4;
  *(a1 + 56) = 0;
  if (v4)
  {
    v5 = (v2 + 16);
    v6 = 8 * v3;
    v7 = (a1 + 64);
    do
    {
      *v7 = 0;
      *v7++ = *v5;
      *v5++ = 0;
      v6 -= 8;
    }

    while (v6);
  }

  *(a1 + 48) = v3;
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v2);
}

void ___ZN2re18dumpHDRFrameToFileERNS_18DynamicInlineArrayINS_11VideoObjectINS_20VideoPixelBufferBaseEEELm2EEERKNS0_INS_7Vector4IfEELm2EEERKNS_12ColorManagerENS_4ecs211HDRDumpInfoEdbPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(void *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v1 = *(a1[4] + 8);
  if (!*(v1 + 48))
  {
LABEL_33:
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v1 + 48);
    return;
  }

  v2 = a1;
  v3 = 0;
  v51 = a1 + 81;
  while (1)
  {
    v4 = *(v1 + 8 * v3 + 64);
    v5 = @"input";
    if (*(v2 + 112))
    {
      v5 = @"output";
    }

    v56 = v5;
    v6 = v2[10];
    v7 = v6 >> 1;
    if ((v6 & 1) == 0)
    {
      v7 = v6 >> 1;
    }

    if (v7)
    {
      v8 = v51;
      if (v6)
      {
        v8 = a1[11];
      }

      v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    }

    else
    {
      v57 = NSTemporaryDirectory();
    }

    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v4, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v4, 0);
    if (!CVPixelBufferIsPlanar(v4))
    {
      CVPixelBufferLockBaseAddress(v4, 1uLL);
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-width-%u-height-%u-bpr-%lu-time-%f-channel-%lu.raw", v56, WidthOfPlane, HeightOfPlane, CVPixelBufferGetBytesPerRow(v4), a1[13], v3];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v57, v13];
      v15 = v14;
      v16 = [v14 UTF8String];

      v17 = fopen(v16, "w+");
      if (v17)
      {
        DataSize = CVPixelBufferGetDataSize(v4);
        BaseAddress = CVPixelBufferGetBaseAddress(v4);
        v20 = fwrite(BaseAddress, DataSize, 1uLL, v17);
        if (v20 != 1)
        {
          v46 = *re::videoLogObjects(v20);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }

          *buf = 136315138;
          v59 = v16;
          v45 = "[re::dumpHDRFrameToFile] Failed to write pixel buffer data to %s";
          goto LABEL_45;
        }

        v21 = fclose(v17);
        if (v21)
        {
          v46 = *re::videoLogObjects(v21);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }

          *buf = 136315138;
          v59 = v16;
          v45 = "[re::dumpHDRFrameToFile] Failed to close %s";
LABEL_45:
          _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, v45, buf, 0xCu);
          goto LABEL_50;
        }
      }

      else
      {
        v39 = re::VideoDefaults::logEnabled(0);
        if (v39)
        {
          v46 = *re::videoLogObjects(v39);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }

          *buf = 136315138;
          v59 = v16;
          v45 = "[re::dumpHDRFrameToFile] Failed to open file %s";
          goto LABEL_45;
        }
      }

      v40 = CVPixelBufferUnlockBaseAddress(v4, 1uLL);
      v41 = *re::videoLogObjects(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v59 = v16;
        _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "[re::dumpHDRFrameToFile] Dumped pixel buffer to %s", buf, 0xCu);
      }

      goto LABEL_32;
    }

    CVPixelBufferLockBaseAddress(v4, 1uLL);
    PlaneCount = CVPixelBufferGetPlaneCount(v4);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v4, 0);
    v54 = PlaneCount < 2 ? 0 : CVPixelBufferGetBytesPerRowOfPlane(v4, 1uLL);
    v53 = CVPixelBufferGetHeightOfPlane(v4, 1uLL);
    v52 = PlaneCount;
    v22 = CVPixelBufferGetWidthOfPlane(v4, 1uLL);
    v23 = MEMORY[0x1E696AEC0];
    PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
    v25 = CVPixelBufferGetPixelFormatType(v4) >> 16;
    v26 = CVPixelBufferGetPixelFormatType(v4) >> 8;
    v13 = [v23 stringWithFormat:@"%c%c%c%c", HIBYTE(PixelFormatType), v25, v26, CVPixelBufferGetPixelFormatType(v4)];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-fmt-%@-width-%u-height-%u-stride-%u-cwidth-%u-cheight-%u-cstride-%u-time-%f-channel-%lu.raw", v56, v13, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane, v22, v53, v54, a1[13], v3];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v57, v27];
    v29 = v28;
    v30 = [v28 UTF8String];

    v31 = fopen(v30, "w+");
    if (!v31)
    {
      break;
    }

    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v4, 0);
    v33 = fwrite(BaseAddressOfPlane, (BytesPerRowOfPlane * HeightOfPlane), 1uLL, v31);
    if (v33 != 1)
    {
      v43 = *re::videoLogObjects(v33);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 136315138;
      v59 = v30;
      v44 = "[re::dumpHDRFrameToFile] Failed to write luma data to %s";
LABEL_48:
      _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0xCu);
      goto LABEL_49;
    }

    if (v52 >= 2)
    {
      v34 = CVPixelBufferGetBaseAddressOfPlane(v4, 1uLL);
      if (v34)
      {
        v35 = fwrite(v34, (v54 * v53), 1uLL, v31);
        if (v35 != 1)
        {
          v43 = *re::videoLogObjects(v35);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          *buf = 136315138;
          v59 = v30;
          v44 = "[re::dumpHDRFrameToFile] Failed to write chroma data to %s";
          goto LABEL_48;
        }
      }
    }

    v36 = fclose(v31);
    if (v36)
    {
      v43 = *re::videoLogObjects(v36);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 136315138;
      v59 = v30;
      v44 = "[re::dumpHDRFrameToFile] Failed to close %s";
      goto LABEL_48;
    }

    v37 = CVPixelBufferUnlockBaseAddress(v4, 1uLL);
    v38 = *re::videoLogObjects(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v59 = v30;
      _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "[re::dumpHDRFrameToFile] Dumped pixel buffer to %s", buf, 0xCu);
    }

LABEL_32:
    ++v3;
    v2 = a1;
    v1 = *(a1[4] + 8);
    if (v3 >= *(v1 + 48))
    {
      goto LABEL_33;
    }
  }

  v42 = *re::videoLogObjects(0);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v48 = NSTemporaryDirectory();
    v49 = v48;
    v50 = [v48 UTF8String];
    *buf = 136315394;
    v59 = v30;
    v60 = 2080;
    v61 = v50;
    _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "[re::dumpHDRFrameToFile] Failed to open file %s, please try with this directory %s", buf, 0x16u);
  }

LABEL_49:
LABEL_50:
}

re::DynamicString *__copy_helper_block_ea8_40c27_ZTSN2re4ecs211HDRDumpInfoE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v2;
  return re::DynamicString::DynamicString((a1 + 72), (a2 + 72));
}

void anonymous namespace::addFigTagGroupAndMetadata(_anonymous_namespace_ *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  cf = 0;
  v2 = FigDataChannelGroupCreate();
  if (!v2)
  {
    v5 = FigDataChannelGroupAddDataChannelWithFigTags();
    if (v5)
    {
      v6 = v5;
      v7 = *re::videoLogObjects(v5);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        CFRelease(cf);
        return;
      }

      *buf = 67109120;
      *&buf[4] = v6;
      v8 = buf;
    }

    else
    {
      v9 = *MEMORY[0x1E6963138];
      *buf = *MEMORY[0x1E6963148];
      v16 = v9;
      v10 = FigDataChannelGroupAddDataChannelWithFigTags();
      if (!v10)
      {
        re::DynamicArray<re::RigDataValue *>::add(a1, &cf);
        return;
      }

      v11 = v10;
      v7 = *re::videoLogObjects(v10);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *v13 = 67109120;
      v14 = v11;
      v8 = v13;
    }

    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to add a FigTag collection to channel group (error: %d).", v8, 8u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = *re::videoLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Failed to create Fig data channel group (error: %d).", buf, 8u);
  }
}

void anonymous namespace::addFigTagGroup(_anonymous_namespace_ *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  cf = 0;
  v2 = FigDataChannelGroupCreate();
  if (v2)
  {
    v3 = v2;
    v4 = *re::videoLogObjects(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Failed to create Fig data channel group (error: %d).", buf, 8u);
    }
  }

  else
  {
    v5 = FigDataChannelGroupAddDataChannelWithFigTags();
    if (v5)
    {
      v6 = v5;
      v7 = *re::videoLogObjects(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v10 = v6;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to add a FigTag collection to channel group (error: %d).", buf, 8u);
      }

      CFRelease(cf);
    }

    else
    {
      re::DynamicArray<re::RigDataValue *>::add(a1, &cf);
    }
  }
}

void re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = a1 + (*a1 << 7) + 16;
    v3 = a1 + 16;
    v4 = (a1 + 136);
    do
    {
      v5 = -24;
      v6 = v4;
      do
      {
        if (*v6)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v6);
        }

        *v6-- = 0;
        v5 += 8;
      }

      while (v5);
      if (*(v3 + 96))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v3 + 96));
      }

      *(v3 + 96) = 0;
      v3 += 128;
      v4 += 16;
    }

    while (v3 != v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 8 * *a1;
    v3 = (a1 + 16);
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      ++v3;
      v2 -= 8;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

void re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(const void *a1)
{
  if (a1)
  {

    CFRelease(a1);
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Video m_object is NULL", v4, 2u);
    }
  }
}

void re::VideoObject<re::VideoPixelBufferBase>::setRef(int a1, __CVBuffer **a2, CVPixelBufferRef texture)
{
  if (*a2)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(a2);
  }

  *a2 = texture;
  if (texture)
  {

    CVPixelBufferRetain(texture);
  }
}

void re::VideoPipelineRenderable::~VideoPipelineRenderable(re::VideoPipelineRenderable *this)
{
  v2 = *(this + 66);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  re::DynamicInlineArray<re::VideoPipelineRenderableChannel,2ul>::clear((this + 88));
}

re::VideoPipelineRenderableChannel *re::DynamicInlineArray<re::VideoPipelineRenderableChannel,2ul>::clear(re::VideoPipelineRenderableChannel *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 208 * *result;
    result = (result + 16);
    do
    {
      re::VideoPipelineRenderableChannel::~VideoPipelineRenderableChannel(result);
      result = (v3 + 208);
      v2 -= 208;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

void re::VideoPipelineRenderableChannel::~VideoPipelineRenderableChannel(re::VideoPipelineRenderableChannel *this)
{
  if (*(this + 22))
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 22);
  }

  *(this + 22) = 0;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (*(this + 40) == 1)
  {
    if (*(this + 4))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 4);
    }

    *(this + 4) = 0;
  }
}

void re::VideoSample::~VideoSample(id *this)
{
  v2 = this[11];
  if (v2)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v2);
  }

  this[11] = 0;
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear((this + 7));
}

void re::VideoMetalTextures::~VideoMetalTextures(__CVBuffer **this)
{
  for (i = 15; i != 12; --i)
  {
  }

  if (this[12])
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 12);
  }

  this[12] = 0;
}

void re::VideoProcessorConfig::~VideoProcessorConfig(re::VideoProcessorConfig *this)
{
  if (*(this + 496) == 1)
  {
    v2 = *(this + 64);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }
  }

  re::Optional<re::VideoPSEConfig>::~Optional(this + 440);
  re::Optional<re::VideoMipGenConfig>::~Optional(this + 176);
  re::Optional<re::VideoTransformSurfaceConfig>::~Optional(this + 144);
  re::Optional<re::VideoHDRConfig>::~Optional(this + 48);
}

uint64_t *re::DynamicInlineArray<__CVBuffer *,2ul>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = (a2 + 2);
      v7 = &v6[8 * v4];
      v8 = a1 + 2;
      if (v4)
      {
        memmove(a1 + 2, v6, 8 * v4);
      }

      memcpy(&v8[v4], v7, 8 * v5);
    }

    else if (v3)
    {
      memmove(a1 + 2, a2 + 2, 8 * v3);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

unint64_t *re::DynamicInlineArray<__CVBuffer *,2ul>::move(unint64_t *result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *result;
  v6 = *a2 - *result;
  if (*a2 >= *result)
  {
    v7 = a2 + 2;
    v8 = result + 2;
    if (v5)
    {
      memmove(result + 2, v7, 8 * v5);
    }

    result = memcpy(&v8[v5], &a2[v5 + 2], 8 * v6);
  }

  else if (v4)
  {
    result = memmove(result + 2, a2 + 2, 8 * v4);
  }

  *v3 = v4;
  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

void re::VideoPresentationGroup::~VideoPresentationGroup(re::VideoPresentationGroup *this)
{
  re::deinitVideoPresentationGroup(this);
  *(this + 256) = 0;
  ++*(this + 514);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(this + 2000);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(this + 1952);
  *(this + 234) = 0;
  ++*(this + 470);
  *(this + 231) = 0;
  ++*(this + 464);
  *(this + 228) = 0;
  ++*(this + 458);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(this + 1792);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(this + 1648);
  *(this + 200) = 0;
  ++*(this + 402);
  v2 = *(this + 197);
  if (v2)
  {

    *(this + 197) = 0;
  }

  if (*(this + 196))
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 196);
  }

  *(this + 196) = 0;
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(this + 1536);
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(this + 1504);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(this + 1232);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(this + 1200);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(this + 1168);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(this + 896);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(this + 624);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(this + 352);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(this + 80);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(this + 48);
  *(this + 3) = 0;
  ++*(this + 8);
}

void sub_1E203EC20(_Unwind_Exception *a1)
{
  *(v1 + 2048) = 0;
  ++*(v1 + 2056);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(v1 + 2000);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(v1 + 1952);
  *(v1 + 1872) = 0;
  ++*(v1 + 1880);
  *(v1 + 1848) = 0;
  ++*(v1 + 1856);
  *(v1 + 1824) = 0;
  ++*(v1 + 1832);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(v1 + 1792);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear(v1 + 1648);
  *(v1 + 1600) = 0;
  ++*(v1 + 1608);
  v3 = *(v1 + 1576);
  if (v3)
  {

    *(v1 + 1576) = 0;
  }

  if (*(v1 + 1568))
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v1 + 1568));
  }

  *(v1 + 1568) = 0;
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(v1 + 1536);
  re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::clear(v1 + 1504);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(v1 + 1232);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v1 + 1200);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v1 + 1168);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(v1 + 896);
  re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear(v1 + 624);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(v1 + 352);
  re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(v1 + 80);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v1 + 48);
  *(v1 + 24) = 0;
  ++*(v1 + 32);
  _Unwind_Resume(a1);
}

unint64_t *re::DynamicInlineArray<unsigned int,2ul>::operator=(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = a2 + 12;
      v7 = &v6[4 * v4];
      v8 = a1 + 12;
      if (v4)
      {
        memmove(a1 + 12, v6, 4 * v4);
      }

      memcpy((v8 + 4 * v4), v7, 4 * v5);
    }

    else if (v3)
    {
      memmove(a1 + 12, a2 + 12, 4 * v3);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

uint64_t *re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = (a2 + 2);
      v7 = &v6[16 * v4];
      v8 = a1 + 2;
      if (v4)
      {
        memmove(a1 + 2, v6, 16 * v4);
      }

      memcpy(&v8[2 * v4], v7, 16 * v5);
    }

    else if (v3)
    {
      memmove(a1 + 2, a2 + 2, 16 * v3);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

unint64_t *re::DynamicInlineArray<re::VideoColorTags,2ul>::operator=(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = a2 + 12;
      v7 = 3 * v4;
      v8 = a1 + 12;
      if (v4)
      {
        memmove(a1 + 12, a2 + 12, 3 * v4);
      }

      memcpy((v8 + v7), &v6[v7], 3 * v5);
    }

    else if (v3)
    {
      memmove(a1 + 12, a2 + 12, 3 * v3);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

void re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = a2 + 2;
  v4 = *a2;
  v5 = (a1 + 2);
  if (*a2 >= *a1)
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures*>(&v24, (a2 + 2), &v3[16 * *a1], v5);
    v12 = *a1;
    if (*a1 != v4)
    {
      v13 = &v3[16 * v4];
      v14 = &v3[16 * v12];
      v15 = v5 + (v12 << 7);
      v16 = &a2[16 * v12 + 15];
      v17 = &a1[16 * v12];
      do
      {
        v18 = *(v14 + 1);
        *v15 = *v14;
        *(v15 + 16) = v18;
        v19 = *(v14 + 2);
        v20 = *(v14 + 3);
        v21 = *(v14 + 4);
        *(v15 + 73) = *(v14 + 73);
        *(v15 + 48) = v20;
        *(v15 + 64) = v21;
        *(v15 + 32) = v19;
        *(v15 + 96) = 0;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v15 + 96, (v15 + 96), v14[12]);
        for (i = 0; i != 3; ++i)
        {
          v17[i + 15] = 0;
          re::VideoObject<re::VideoPixelBufferBase>::setRef(v17 + i * 8 + 120, &v17[i + 15], *(v16 + i * 8));
        }

        v14 += 16;
        v15 += 128;
        v17 += 16;
        v16 += 128;
      }

      while (v14 != v13);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures*>(&v23, (a2 + 2), &v3[16 * v4], v5);
    if (v4 != *a1)
    {
      v6 = v5 + (*a1 << 7);
      v7 = v5 + (v4 << 7);
      v8 = &a1[16 * v4 + 17];
      do
      {
        v9 = -24;
        v10 = v8;
        do
        {
          if (*v10)
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v10);
          }

          *v10-- = 0;
          v9 += 8;
        }

        while (v9);
        if (*(v7 + 96))
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v7 + 96));
        }

        *(v7 + 96) = 0;
        v7 += 128;
        v8 += 128;
      }

      while (v7 != v6);
    }
  }

  *a1 = v4;
}

void sub_1E203F098(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v5 = (v3 + 112);
    v6 = -v2;
    do
    {
      if (*v5)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v5);
      }

      *v5-- = 0;
      v6 += 8;
    }

    while (v6);
  }

  if (*v1)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v1);
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures const*,re::VideoPixelBufferTextures*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *(v5 + 16);
      *a4 = *v5;
      *(a4 + 16) = v7;
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);
      v10 = *(v5 + 64);
      *(a4 + 73) = *(v5 + 73);
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      *(a4 + 32) = v8;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(a4 + 96, (a4 + 96), *(v5 + 96));
      for (i = 104; i != 128; i += 8)
      {
        re::VideoObject<re::VideoPixelBufferBase>::setRef(a4 + i, (a4 + i), *(v5 + i));
      }

      v5 += 128;
      a4 += 128;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void re::DynamicInlineArray<re::VideoMetalTextures,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = a2 + 2;
  v4 = *a2;
  v5 = (a1 + 2);
  if (*a2 >= *a1)
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoMetalTextures const*,re::VideoMetalTextures const*,re::VideoMetalTextures*>(&v24, (a2 + 2), &v3[16 * *a1], v5);
    v11 = *a1;
    if (*a1 != v4)
    {
      v12 = &v3[16 * v4];
      v13 = &v3[16 * v11];
      v14 = v5 + (v11 << 7);
      v15 = (v11 << 7) | 0x78;
      v16 = a2 + v15;
      v17 = a1 + v15;
      do
      {
        v18 = *(v13 + 1);
        *v14 = *v13;
        *(v14 + 16) = v18;
        v19 = *(v13 + 2);
        v20 = *(v13 + 3);
        v21 = *(v13 + 4);
        *(v14 + 73) = *(v13 + 73);
        *(v14 + 48) = v20;
        *(v14 + 64) = v21;
        *(v14 + 32) = v19;
        *(v14 + 96) = 0;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v14 + 96, (v14 + 96), v13[12]);
        for (i = 0; i != 24; i += 8)
        {
          *&v17[i] = *&v16[i];
        }

        v13 += 16;
        v14 += 128;
        v16 += 128;
        v17 += 128;
      }

      while (v13 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoMetalTextures const*,re::VideoMetalTextures const*,re::VideoMetalTextures*>(&v23, (a2 + 2), &v3[16 * v4], v5);
    if (v4 != *a1)
    {
      v6 = v5 + (*a1 << 7);
      v7 = v5 + (v4 << 7);
      v8 = &a1[16 * v4 + 17];
      do
      {
        for (j = 0; j != -24; j -= 8)
        {
        }

        if (*(v7 + 96))
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v7 + 96));
        }

        *(v7 + 96) = 0;
        v7 += 128;
        v8 += 128;
      }

      while (v7 != v6);
    }
  }

  *a1 = v4;
}
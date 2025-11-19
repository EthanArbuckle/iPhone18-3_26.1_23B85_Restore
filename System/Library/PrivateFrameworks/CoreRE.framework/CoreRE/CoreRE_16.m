uint64_t *std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::internal::RigIKCallbackData *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

void re::FixedArray<re::internal::RigIKCall>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x1E1E1E1E1E1E1E2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 136, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 136 * a3;
  v6 = (*(*a2 + 32))(a2, 136 * a3, 8);
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
    bzero(v6, v5 - 136);
    v8 += v5 - 136;
  }

  *(v8 + 16) = 0;
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *v8 = 0u;
  *(v8 + 1) = 0u;
}

uint64_t *re::anonymous namespace::rigIKCallbackFunction(re::_anonymous_namespace_ *this, re::EvaluationContext *a2, void *a3)
{
  result = re::FixedArray<re::Matrix4x4<float>>::operator=(this + 39, this + 96);
  if (*(a2 + 1))
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a2 + 2) + 136 * v6;
      v8 = *(v7 + 80);
      if (v8)
      {
        break;
      }

      v12 = *(v7 + 64);
      if (v12)
      {
        v13 = 0;
        while (*(v7 + 64) > v13)
        {
          v14 = *(*(v7 + 72) + 8 * v13);
          if (*(this + 40) <= v14)
          {
            goto LABEL_20;
          }

          if (*(v7 + 104) <= v13)
          {
            goto LABEL_21;
          }

          *(*(v7 + 112) + 16 * v13++) = *(*(this + 41) + (v14 << 6) + 48);
          if (v12 == v13)
          {
            goto LABEL_15;
          }
        }

LABEL_19:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_20:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_21:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_15:
      result = (*v7)(*(this + 41), *(this + 40), *(a2 + 5), *(a2 + 4), *(v7 + 24), *(v7 + 16), *(v7 + 48), *(v7 + 40), *(v7 + 112), *(v7 + 104), *(v7 + 120));
      if (++v6 >= *(a2 + 1))
      {
        return result;
      }
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = v10 + *(v7 + 88);
      if (*(this + 22) <= v11)
      {
        break;
      }

      if (*(v7 + 104) <= v10)
      {
        goto LABEL_18;
      }

      *(*(v7 + 112) + v9) = *(*(this + 23) + 16 * v11);
      ++v10;
      v9 += 16;
      if (v8 == v10)
      {
        goto LABEL_15;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t re::anonymous namespace::calculateWeightedConstraint<re::EvaluationRegisterId<re::Vector3<float>>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v10 = a3;
  v11 = a2;
  v58 = *MEMORY[0x1E69E9840];
  v13 = *(a4 + 16);
  if (v13 == 2)
  {
    v17 = *(a5 + 16);
    if (!v17)
    {
      goto LABEL_13;
    }

    if (v17 == 1)
    {
      goto LABEL_30;
    }

    v18 = **(a5 + 32) + *(*(a5 + 32) + 4);
    if (v18 == 1.0 || vabds_f32(1.0, v18) < (((fabsf(v18) + 1.0) + 1.0) * 0.00001))
    {
LABEL_13:
      v19 = a6(a1, **(a4 + 32), a2, a3, a7);
      v20 = *(a4 + 16);
      if (v20 <= 1)
      {
LABEL_29:
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v53 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 797;
        v49 = 2048;
        v50 = 1;
        v51 = 2048;
        v52 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_30:
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v53 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        *&v48[14] = 797;
        v49 = 2048;
        v50 = 1;
        v51 = 2048;
        v52 = 1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v21 = v19;
      v22 = a6(a1, *(*(a4 + 32) + 8), v11, v10, v7);
      if (*(v8 + 16))
      {
        v23 = **(v8 + 32);
      }

      else
      {
        v23 = 0.5;
      }

      *v48 = v23;
      LODWORD(v53) = 2;
      v54 = 0uLL;
      *(&v53 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 218), &v53);
      *&v53 = a1[220] - 1;
      re::DynamicArray<unsigned long>::add(a1 + 11, &v53);
      re::DynamicArray<float>::add((a1 + 51), v48);
      v41 = *(a1[15] + 8 * a1[13] - 8);
      LODWORD(v53) = 11;
      v54 = 0uLL;
      *(&v53 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v53);
      v25 = a1[245] - 1;
      v42 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v25);
      v42[1] = v21;
      v42[2] = v22;
      v42[3] = v41;
      return v25;
    }

LABEL_16:
    *v48 = 0;
    *&v48[8] = 0;
    LODWORD(v53) = 7;
    v54 = 0uLL;
    *(&v53 + 1) = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v53);
    *&v53 = a1[245] - 1;
    re::DynamicArray<unsigned long>::add(a1 + 36, &v53);
    re::DynamicArray<re::Vector3<float>>::add((a1 + 76), v48);
    v24 = a1[40] + 8 * a1[38];
    v25 = *(v24 - 8);
    v26 = *(a4 + 16);
    if (v26)
    {
      v44 = *(v24 - 8);
      v27 = 0;
      v28 = 1.0 / v26;
      v20 = v44;
      v43 = *(a4 + 16);
      while (1)
      {
        v29 = *(a4 + 16);
        if (v29 <= v27)
        {
          break;
        }

        v30 = a6(a1, *(*(a4 + 32) + 8 * v27), v11, v10, v7);
        v25 = *(v8 + 16);
        v31 = v28;
        if (v25)
        {
          if (v25 <= v27)
          {
            goto LABEL_28;
          }

          v31 = *(*(v8 + 32) + 4 * v27);
        }

        *v48 = v31;
        LODWORD(v53) = 2;
        v54 = 0uLL;
        *(&v53 + 1) = 0;
        v47 = v20;
        v32 = v30;
        re::DynamicArray<re::EvaluationRegister>::add((a1 + 218), &v53);
        *&v53 = a1[220] - 1;
        re::DynamicArray<unsigned long>::add(a1 + 11, &v53);
        re::DynamicArray<float>::add((a1 + 51), v48);
        v33 = *(a1[15] + 8 * a1[13] - 8);
        LODWORD(v53) = 11;
        v54 = 0uLL;
        *(&v53 + 1) = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v53);
        v34 = v11;
        v35 = v8;
        v36 = v10;
        v37 = v7;
        v38 = a1[245] - 1;
        v39 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v38);
        v39[1] = v44;
        v39[2] = v32;
        v39[3] = v33;
        LODWORD(v53) = 8;
        v54 = 0uLL;
        *(&v53 + 1) = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v53);
        v25 = a1[245] - 1;
        v40 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v25);
        *(v40 + 8) = v47;
        *(v40 + 16) = v38;
        v7 = v37;
        v10 = v36;
        v8 = v35;
        v11 = v34;
        ++v27;
        v20 = v25;
        if (v43 == v27)
        {
          return v25;
        }
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v48 = 136315906;
      *&v48[4] = "operator[]";
      *&v48[12] = 1024;
      *&v48[14] = 797;
      v49 = 2048;
      v50 = v27;
      v51 = 2048;
      v52 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_28:
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v48 = 136315906;
      *&v48[4] = "operator[]";
      *&v48[12] = 1024;
      *&v48[14] = 797;
      v49 = 2048;
      v50 = v27;
      v51 = 2048;
      v52 = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_29;
    }

    return v25;
  }

  if (v13 != 1)
  {
    goto LABEL_16;
  }

  if (*(a5 + 16))
  {
    v14 = **(a5 + 32);
    if (v14 != 1.0 && vabds_f32(1.0, v14) >= (((fabsf(v14) + 1.0) + 1.0) * 0.00001))
    {
      goto LABEL_16;
    }
  }

  v15 = **(a4 + 32);

  return a6(a1, v15, v11, a3, a7);
}

unint64_t re::anonymous namespace::calculatePointConstraint(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(*(a3 + 16) + 8 * a2);
  LODWORD(v14) = 37;
  v15 = 0uLL;
  *(&v14 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v14);
  v8 = *(a1 + 1960) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v8) + 8) = v7;
  if (*(a4 + 8) <= a2)
  {
    goto LABEL_5;
  }

  v9 = *(*(a4 + 16) + 8 * a2);
  LODWORD(v14) = 37;
  v15 = 0uLL;
  *(&v14 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v14);
  v10 = *(a1 + 1960) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v10) + 8) = v9;
  LODWORD(v14) = 31;
  v15 = 0uLL;
  *(&v14 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v14);
  v11 = *(a1 + 1960) - 1;
  v12 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v11);
  *(v12 + 8) = v10;
  *(v12 + 16) = v8;
  return v11;
}

unint64_t re::anonymous namespace::calculateOrientConstraint(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 <= a2)
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
LABEL_5:
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

  Rotation = re::EvaluationTree::extractRotation(a1, *(a4 + 8 * a2));
  if (*(a5 + 8) <= a2)
  {
    goto LABEL_5;
  }

  v9 = Rotation;
  v10 = re::EvaluationTree::extractRotation(a1, *(*(a5 + 16) + 8 * a2));
  LODWORD(v15) = 21;
  v16 = 0uLL;
  *(&v15 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v15);
  v11 = a1[235] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a1 + 208), v11) + 8) = v9;
  LODWORD(v15) = 24;
  v16 = 0uLL;
  *(&v15 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v15);
  v12 = a1[235] - 1;
  v13 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a1 + 208), v12);
  *(v13 + 8) = v10;
  *(v13 + 16) = v11;
  return v12;
}

uint64_t re::anonymous namespace::rigNodeRotationOrder(void *a1, char a2, unint64_t a3)
{
  if (a2 != 1)
  {
    if (a1[115] > a3)
    {
      v3 = (a1[117] + 96 * a3 + 80);
      return *v3;
    }

LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (a1[110] <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  v3 = (a1[112] + (a3 << 6) + 48);
  return *v3;
}

uint64_t re::anonymous namespace::calculateParentConstraintSRT(unint64_t *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a4 <= a3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (a6 <= a3)
  {
    goto LABEL_5;
  }

  v9 = *(a5 + 8 * a3);
  v10 = *(a7 + 8 * a3);
  LODWORD(v16) = 20;
  v17 = 0uLL;
  *(&v16 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a2 + 228), &v16);
  v11 = a2[230] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a2 + 208), v11) + 8) = v9;
  LODWORD(v16) = 28;
  v17 = 0uLL;
  *(&v16 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a2 + 228), &v16);
  v12 = a2[230] - 1;
  v13 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a2 + 208), v12);
  *(v13 + 8) = v10;
  *(v13 + 16) = v11;
  *a1 = re::EvaluationTree::extractScale(a2, v12);
  a1[1] = re::EvaluationTree::extractRotation(a2, v12);
  LODWORD(v16) = 37;
  v17 = 0uLL;
  *(&v16 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a2 + 243), &v16);
  v14 = a2[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a2 + 208), v14);
  *(result + 8) = v12;
  a1[2] = v14;
  return result;
}

uint64_t re::anonymous namespace::calculateAimForwardDirection(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = *(a5[1] + 3);
  if (v7 == 2)
  {
    *v19 = 0;
    *&v19[8] = 1065353216;
    LODWORD(v24) = 7;
    v25 = 0uLL;
    *(&v24 + 1) = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v24);
    *&v24 = a1[245] - 1;
    re::DynamicArray<unsigned long>::add(a1 + 36, &v24);
    re::DynamicArray<re::Vector3<float>>::add((a1 + 76), v19);
    return *(a1[40] + 8 * a1[38] - 8);
  }

  if (v7 == 1)
  {
    v14 = *(a4 + 8);
    if (v14 > a2)
    {
      v11 = *(*(a4 + 16) + 8 * a2);
      *v19 = 0;
      *&v19[8] = 1065353216;
      LODWORD(v24) = 7;
      v25 = 0uLL;
      *(&v24 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v24);
      *&v24 = a1[245] - 1;
      re::DynamicArray<unsigned long>::add(a1 + 36, &v24);
      re::DynamicArray<re::Vector3<float>>::add((a1 + 76), v19);
      v12 = *(a1[40] + 8 * a1[38] - 8);
      v13 = 42;
      goto LABEL_8;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v19 = 136315906;
    *&v19[4] = "operator[]";
    *&v19[12] = 1024;
    *&v19[14] = 476;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v19 = 136315906;
    *&v19[4] = "operator[]";
    *&v19[12] = 1024;
    *&v19[14] = 476;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (!*(a5[1] + 3))
  {
    v5 = *(a4 + 8);
    if (v5 > a2)
    {
      v10 = *(*(a4 + 16) + 8 * a2);
      LODWORD(v24) = 37;
      v25 = 0uLL;
      *(&v24 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v24);
      v11 = a1[245] - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v11) + 8) = v10;
      v12 = *a5;
      v13 = 31;
LABEL_8:
      LODWORD(v24) = v13;
      v25 = 0uLL;
      *(&v24 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v24);
      v15 = a1[245] - 1;
      v16 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v15);
      *(v16 + 8) = v11;
      *(v16 + 16) = v12;
      LODWORD(v24) = 29;
      v25 = 0uLL;
      *(&v24 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v24);
      v17 = a1[245] - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v17) + 8) = v15;
      return v17;
    }

    goto LABEL_12;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected aim constraint forward axis type.", "!Unreachable code", "calculateAimForwardDirection", 233);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::FixedArray<re::FixedArray<float>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 24 * a3;
  v6 = (*(*a2 + 32))(a2, 24 * a3, 8);
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
    bzero(v6, v5 - 24);
    v8 = (v8 + v5 - 24);
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
}

void re::FixedArray<re::TwoBoneIKOptions>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 32 * a3;
  v6 = (*(*a2 + 32))(a2, 32 * a3, 8);
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
    bzero(v6, v5 - 32);
    v8 = (v8 + v5 - 32);
  }

  *v8 = 0u;
  v8[1] = 0u;
}

void *re::FixedArray<re::FABRIKOptions>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 8 * a3, 4);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result++ = 0x203DCCCCCDLL;
      --v6;
    }

    while (v6);
  }

  *result = 0x203DCCCCCDLL;
  return result;
}

uint64_t re::FixedArray<re::SplineIKOptions>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x333333333333334)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 80, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 80 * a3, 16);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 1008981770;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *(result + 64) = 0;
      result += 80;
      --v6;
    }

    while (v6);
  }

  *result = 1008981770;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

uint64_t re::DynamicArray<re::RigComponentConstraint>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RigComponentConstraint>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::RigComponentConstraint>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::RigComponentConstraint>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RigComponentConstraint>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::RigComponentConstraint>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigComponentConstraint>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigComponentConstraint *,re::RigComponentConstraint *,re::RigComponentConstraint *>(*(a2 + 32), *(a2 + 32) + 88 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 88 * v9;
      v13 = 88 * v4;
      do
      {
        v14 = v11 + v12;
        v15 = *(v10 + v12);
        *(v14 + 2) = *(v10 + v12 + 2);
        *v14 = v15;
        re::DynamicArray<unsigned long>::DynamicArray(v11 + v12 + 8, (v10 + v12 + 8));
        result = re::DynamicArray<float>::DynamicArray(v11 + v12 + 48, (v10 + v12 + 48));
        v13 -= 88;
        v10 += 88;
        v11 += 88;
      }

      while (v12 != v13);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigComponentConstraint *,re::RigComponentConstraint *,re::RigComponentConstraint *>(*(a2 + 32), *(a2 + 32) + 88 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = -88 * v4 + 88 * v6;
      v8 = 88 * v4 + a1[4] + 48;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v8);
        result = re::DynamicArray<unsigned long>::deinit(v8 - 40);
        v8 += 88;
        v7 -= 88;
      }

      while (v7);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::RigComponentConstraint *,re::RigComponentConstraint *,re::RigComponentConstraint *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *(a3 + 2) = *(v5 + 2);
      *a3 = v6;
      re::DynamicArray<unsigned long>::operator=(a3 + 8, (v5 + 8));
      result = re::DynamicArray<float>::operator=(a3 + 48, (v5 + 48));
      v5 += 88;
      a3 += 88;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigBasicConstraint>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigBasicConstraint *,re::RigBasicConstraint *,re::RigBasicConstraint *>(*(a2 + 32), (*(a2 + 32) + 80 * a1[2]), a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = 5 * v9;
      v11 = (*(a2 + 32) + 16 * v10);
      v12 = a1[4] + 16 * v10;
      v13 = 80 * v4 - 16 * v10;
      do
      {
        re::DynamicArray<unsigned long>::DynamicArray(v12, v11);
        result = re::DynamicArray<float>::DynamicArray(v12 + 40, v11 + 5);
        v11 += 10;
        v12 += 80;
        v13 -= 80;
      }

      while (v13);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigBasicConstraint *,re::RigBasicConstraint *,re::RigBasicConstraint *>(*(a2 + 32), (*(a2 + 32) + 80 * v4), a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4] + 80 * v4;
      v8 = 80 * v6 - 80 * v4;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v7 + 40);
        result = re::DynamicArray<unsigned long>::deinit(v7);
        v7 += 80;
        v8 -= 80;
      }

      while (v8);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::RigBasicConstraint *,re::RigBasicConstraint *,re::RigBasicConstraint *>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      re::DynamicArray<unsigned long>::operator=(a3, v5);
      result = re::DynamicArray<float>::operator=(a3 + 40, v5 + 5);
      v5 += 10;
      a3 += 80;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigAimConstraint>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigAimConstraint>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigAimConstraint *,re::RigAimConstraint *,re::RigAimConstraint *>(*(a2 + 32), *(a2 + 32) + 144 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = v10 + 144 * v4;
      v12 = a1[4];
      v13 = 144 * v9;
      do
      {
        v14 = v10 + v13;
        v15 = v12 + v13;
        v16 = *(v10 + v13);
        v17 = *(v10 + v13 + 32);
        *(v15 + 16) = *(v10 + v13 + 16);
        *(v15 + 32) = v17;
        *v15 = v16;
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13 + 48, (v10 + v13 + 48));
        result = re::DynamicArray<float>::DynamicArray(v12 + v13 + 88, (v10 + v13 + 88));
        *(v15 + 128) = *(v10 + v13 + 128);
        v10 += 144;
        v12 += 144;
      }

      while (v14 + 144 != v11);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigAimConstraint *,re::RigAimConstraint *,re::RigAimConstraint *>(*(a2 + 32), *(a2 + 32) + 144 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = 144 * v6 - 144 * v4;
      v8 = a1[4] + 144 * v4 + 48;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v8 + 40);
        result = re::DynamicArray<unsigned long>::deinit(v8);
        v8 += 144;
        v7 -= 144;
      }

      while (v7);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::RigAimConstraint *,re::RigAimConstraint *,re::RigAimConstraint *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      v7 = *(v5 + 32);
      *(a3 + 16) = *(v5 + 16);
      *(a3 + 32) = v7;
      *a3 = v6;
      re::DynamicArray<unsigned long>::operator=(a3 + 48, (v5 + 48));
      result = re::DynamicArray<float>::operator=(a3 + 88, (v5 + 88));
      *(a3 + 128) = *(v5 + 128);
      v5 += 144;
      a3 += 144;
    }

    while (v5 != a2);
  }

  return result;
}

void **re::DynamicArray<re::RigNodeChannel>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(result, *(a2 + 16));
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

uint64_t re::DynamicArray<re::Vector3<float>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::Quaternion<float>>::copy(a1, a2);
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
      re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::Quaternion<float>>::copy(a1, a2);
    }
  }

  return a1;
}

void **re::DynamicArray<re::Matrix3x3<float>>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 48 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 48 * v5, (*(a2 + 32) + 48 * v5), 48 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 48 * v4);
  }

  v3[2] = v4;
  return result;
}

void **re::DynamicArray<re::Matrix4x4<float>>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::Matrix4x4<float>>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), v5 << 6);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 64 * v5, (*(a2 + 32) + (v5 << 6)), (v4 - v5) << 6);
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), v4 << 6);
  }

  v3[2] = v4;
  return result;
}

void **re::DynamicArray<re::Quaternion<float>>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::Quaternion<float>>::setCapacity(result, *(a2 + 16));
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

void **re::DynamicArray<re::RigExpression>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 24 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 24 * v5, (*(a2 + 32) + 24 * v5), 24 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 24 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::RigTwoBoneIKHandles>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *>(*(a2 + 32), (*(a2 + 32) + 240 * a1[2]), a1[4]);
    v10 = a1[2];
    if (v10 != v4)
    {
      v11 = *(a2 + 32);
      v12 = a1[4];
      v13 = 240 * v10;
      v14 = 240 * v4;
      do
      {
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13, (v11 + v13));
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13 + 40, (v11 + v13 + 40));
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13 + 80, (v11 + v13 + 80));
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13 + 120, (v11 + v13 + 120));
        re::DynamicArray<float>::DynamicArray(v12 + v13 + 160, (v11 + v13 + 160));
        result = re::DynamicArray<float>::DynamicArray(v12 + v13 + 200, (v11 + v13 + 200));
        v14 -= 240;
        v11 += 240;
        v12 += 240;
      }

      while (v13 != v14);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *>(*(a2 + 32), (*(a2 + 32) + 240 * v4), a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4];
      v8 = 240 * v4;
      v9 = 240 * v6;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v7 + v8 + 200);
        re::DynamicArray<unsigned long>::deinit(v7 + v8 + 160);
        re::DynamicArray<unsigned long>::deinit(v7 + v8 + 120);
        re::DynamicArray<unsigned long>::deinit(v7 + v8 + 80);
        re::DynamicArray<unsigned long>::deinit(v7 + v8 + 40);
        result = re::DynamicArray<unsigned long>::deinit(v7 + v8);
        v9 -= 240;
        v7 += 240;
      }

      while (v8 != v9);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      re::DynamicArray<unsigned long>::operator=(a3, v5);
      re::DynamicArray<unsigned long>::operator=(a3 + 40, v5 + 5);
      re::DynamicArray<unsigned long>::operator=(a3 + 80, v5 + 10);
      re::DynamicArray<unsigned long>::operator=(a3 + 120, v5 + 15);
      re::DynamicArray<float>::operator=(a3 + 160, v5 + 20);
      result = re::DynamicArray<float>::operator=(a3 + 200, v5 + 25);
      v5 += 30;
      a3 += 240;
    }

    while (v5 != a2);
  }

  return result;
}

void re::DynamicArray<re::RigSingleChainIKHandles>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *>(*(a2 + 32), *(a2 + 32) + (a1[2] << 7), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = v8 << 7;
      v12 = v4 << 7;
      do
      {
        re::DynamicArray<unsigned long>::DynamicArray(v10 + v11, (v9 + v11));
        re::DynamicArray<unsigned long>::DynamicArray(v10 + v11 + 40, (v9 + v11 + 40));
        re::DynamicArray<unsigned long>::DynamicArray(v10 + v11 + 80, (v9 + v11 + 80));
        *(v10 + v11 + 120) = *(v9 + v11 + 120);
        v12 -= 128;
        v9 += 128;
        v10 += 128;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *>(*(a2 + 32), *(a2 + 32) + (v4 << 7), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + (v4 << 7);
      v7 = (v5 << 7) - (v4 << 7);
      do
      {
        re::DynamicArray<unsigned long>::deinit(v6 + 80);
        re::DynamicArray<unsigned long>::deinit(v6 + 40);
        re::DynamicArray<unsigned long>::deinit(v6);
        v6 += 128;
        v7 -= 128;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

float std::__copy_impl::operator()[abi:nn200100]<re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      re::DynamicArray<unsigned long>::operator=(a3, v5);
      re::DynamicArray<unsigned long>::operator=(a3 + 40, (v5 + 40));
      re::DynamicArray<unsigned long>::operator=(a3 + 80, (v5 + 80));
      result = *(v5 + 120);
      *(a3 + 120) = result;
      v5 += 128;
      a3 += 128;
    }

    while (v5 != a2);
  }

  return result;
}

void re::DynamicArray<re::RigSplineIKHandle>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKHandle *,re::RigSplineIKHandle *,re::RigSplineIKHandle *>(*(a2 + 32), *(a2 + 32) + 240 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 240 * v8;
      v12 = 240 * v4;
      do
      {
        v13 = v10 + v11;
        v14 = v9 + v11;
        *v13 = *(v9 + v11);
        *(v10 + v11 + 8) = 0;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 32) = 0;
        v15 = *(v9 + v11 + 8);
        *(v13 + 40) = 0;
        if (v15)
        {
          v16 = *(v14 + 24);
          *(v10 + v11 + 8) = v15;
          re::DynamicArray<re::RigSplineIKJoint>::setCapacity((v10 + v11 + 8), v16);
          ++*(v13 + 32);
          re::DynamicArray<re::RigSplineIKJoint>::copy((v10 + v11 + 8), v9 + v11 + 8);
        }

        *(v13 + 48) = 0;
        v17 = v13 + 48;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        v20 = *(v14 + 48);
        v19 = v14 + 48;
        v18 = v20;
        *(v17 + 32) = 0;
        if (v20)
        {
          v21 = *(v9 + v11 + 64);
          *v17 = v18;
          re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(v17, v21);
          ++*(v10 + v11 + 72);
          re::DynamicArray<re::RigSplineIKControlPoint>::copy(v17, v19);
        }

        v22 = v10 + v11;
        re::DynamicArray<float>::DynamicArray(v10 + v11 + 88, (v9 + v11 + 88));
        v23 = *(v9 + v11 + 128);
        v24 = *(v9 + v11 + 160);
        *(v22 + 144) = *(v9 + v11 + 144);
        *(v22 + 160) = v24;
        *(v22 + 128) = v23;
        v25 = *(v9 + v11 + 176);
        v26 = *(v9 + v11 + 192);
        v27 = *(v9 + v11 + 208);
        *(v22 + 224) = *(v9 + v11 + 224);
        *(v22 + 192) = v26;
        *(v22 + 208) = v27;
        *(v22 + 176) = v25;
        v9 += 240;
        v10 += 240;
        v12 -= 240;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKHandle *,re::RigSplineIKHandle *,re::RigSplineIKHandle *>(*(a2 + 32), *(a2 + 32) + 240 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = -240 * v4 + 240 * v5;
      v7 = 240 * v4 + a1[4] + 88;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v7);
        re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v7 - 40);
        re::DynamicArray<unsigned long>::deinit(v7 - 80);
        v7 += 240;
        v6 -= 240;
      }

      while (v6);
    }
  }

  a1[2] = v4;
}

__n128 std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKHandle *,re::RigSplineIKHandle *,re::RigSplineIKHandle *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      v8 = a3 + v6;
      *(a3 + v6) = *(a1 + v6);
      v9 = (a3 + v6 + 8);
      if (a3 != a1)
      {
        v10 = *(a1 + v6 + 8);
        if (*v9)
        {
          if (v10)
          {
            re::DynamicArray<re::RigSplineIKJoint>::copy((a3 + v6 + 8), a1 + v6 + 8);
            v11 = a3 + v6;
          }

          else
          {
            v11 = a3 + v6;
            *(a3 + v6 + 24) = 0;
          }

          ++*(v11 + 32);
        }

        else if (v10)
        {
          v12 = *(a1 + v6 + 24);
          *v9 = v10;
          re::DynamicArray<re::RigSplineIKJoint>::setCapacity((a3 + v6 + 8), v12);
          ++*(a3 + v6 + 32);
          re::DynamicArray<re::RigSplineIKJoint>::copy((a3 + v6 + 8), a1 + v6 + 8);
        }

        v13 = *(a1 + v6 + 48);
        if (*(a3 + v6 + 48))
        {
          v14 = a3 + v6 + 48;
          if (v13)
          {
            re::DynamicArray<re::RigSplineIKControlPoint>::copy(v14, a1 + v6 + 48);
            ++*(a3 + v6 + 72);
          }

          else
          {
            re::DynamicArray<re::RigSplineIKControlPoint>::clear(v14);
          }
        }

        else if (v13)
        {
          v15 = *(a1 + v6 + 64);
          *(a3 + v6 + 48) = v13;
          re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity((a3 + v6 + 48), v15);
          ++*(a3 + v6 + 72);
          re::DynamicArray<re::RigSplineIKControlPoint>::copy(a3 + v6 + 48, a1 + v6 + 48);
        }
      }

      re::DynamicArray<float>::operator=(v8 + 88, (v7 + 88));
      v17 = *(v7 + 144);
      v16 = *(v7 + 160);
      *(v8 + 128) = *(v7 + 128);
      *(v8 + 144) = v17;
      *(v8 + 160) = v16;
      v19 = *(v7 + 192);
      result = *(v7 + 208);
      v20 = *(v7 + 176);
      *(v8 + 224) = *(v7 + 224);
      *(v8 + 192) = v19;
      *(v8 + 208) = result;
      *(v8 + 176) = v20;
      v6 += 240;
    }

    while (v7 + 240 != a2);
  }

  return result;
}

void **re::DynamicArray<re::RigSplineIKJoint>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigSplineIKJoint>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 80 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 80 * v5, (*(a2 + 32) + 80 * v5), 80 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 80 * v4);
  }

  v3[2] = v4;
  return result;
}

void re::DynamicArray<re::RigSplineIKControlPoint>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *>(*(a2 + 32), (*(a2 + 32) + 96 * *(a1 + 16)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = *(a1 + 32);
      v11 = 96 * v8;
      v12 = 96 * v4;
      do
      {
        re::DynamicArray<unsigned long>::DynamicArray(v10 + v11, (v9 + v11));
        re::DynamicArray<float>::DynamicArray(v10 + v11 + 40, (v9 + v11 + 40));
        *(v10 + v11 + 80) = *(v9 + v11 + 80);
        v12 -= 96;
        v9 += 96;
        v10 += 96;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *>(*(a2 + 32), (*(a2 + 32) + 96 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 32) + 96 * v4;
      v7 = 96 * v5 - 96 * v4;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v6 + 40);
        re::DynamicArray<unsigned long>::deinit(v6);
        v6 += 96;
        v7 -= 96;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

__n128 std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *>(__n128 *a1, __n128 *a2, __n128 *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      re::DynamicArray<unsigned long>::operator=(a3, v5);
      re::DynamicArray<float>::operator=(&a3[2].n128_i64[1], &v5[2].n128_i64[1]);
      result = v5[5];
      a3[5] = result;
      v5 += 6;
      a3 += 6;
    }

    while (v5 != a2);
  }

  return result;
}

void **re::DynamicArray<re::RigTransform>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigTransform>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), (v5 << 6) - 15);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 64 * v5, (*(a2 + 32) + (v5 << 6)), (v4 - v5) << 6);
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), (v4 << 6) - 15);
  }

  v3[2] = v4;
  return result;
}

void **re::DynamicArray<re::RigJoint>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigJoint>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 96 * v5 - 15);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 96 * v5, (*(a2 + 32) + 96 * v5), 96 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 96 * v4 - 15);
  }

  v3[2] = v4;
  return result;
}

void re::DynamicArray<re::RigNode>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::RigNode>::setCapacity(a1, *(a2 + 16));
    v14 = *(a2 + 32);
    v15 = a1[2];
    v16 = a1[4];
    if (v15)
    {
      v17 = 56 * v15;
      do
      {
        v18 = re::StringID::operator=(v16, v14);
        v19 = *(v14 + 16);
        v20 = *(v14 + 32);
        v18[6] = *(v14 + 48);
        *(v18 + 1) = v19;
        *(v18 + 2) = v20;
        v14 += 56;
        v16 = v18 + 7;
        v17 -= 56;
      }

      while (v17);
      v16 = a1[4];
      v15 = a1[2];
      v14 = *(a2 + 32);
    }

    if (v15 != v4)
    {
      v21 = 56 * v15;
      v22 = v14 + v21;
      v23 = &v16[v21 / 8];
      v24 = 56 * v4 - v21;
      do
      {
        v25 = re::StringID::StringID(v23, v22);
        v26 = *(v22 + 16);
        v27 = *(v22 + 32);
        *(v25 + 6) = *(v22 + 48);
        *(v25 + 1) = v26;
        *(v25 + 2) = v27;
        v22 += 56;
        v23 = (v25 + 56);
        v24 -= 56;
      }

      while (v24);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 56 * v4;
      do
      {
        v9 = re::StringID::operator=(v6, v7);
        v10 = *(v7 + 16);
        v11 = *(v7 + 32);
        v9[6] = *(v7 + 48);
        *(v9 + 1) = v10;
        *(v9 + 2) = v11;
        v7 += 56;
        v6 = v9 + 7;
        v8 -= 56;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v12 = &v6[7 * v4];
      v13 = -56 * v4 + 56 * v5;
      do
      {
        re::StringID::destroyString(v12);
        v12 = (v12 + 56);
        v13 -= 56;
      }

      while (v13);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::RigPose>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::RigPose>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 32 * v13;
      do
      {
        v16 = re::StringID::operator=(v14, v12);
        *(v16 + 1) = *(v12 + 16);
        v12 += 32;
        v14 = v16 + 4;
        v15 -= 32;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = v12 + 32 * v13;
      v18 = &v14[4 * v13];
      v19 = 32 * v4 - 32 * v13;
      do
      {
        v20 = re::StringID::StringID(v18, v17);
        *(v20 + 1) = *(v17 + 16);
        v17 += 32;
        v18 = (v20 + 32);
        v19 -= 32;
      }

      while (v19);
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
        v9 = re::StringID::operator=(v6, v7);
        *(v9 + 1) = *(v7 + 16);
        v7 += 32;
        v6 = v9 + 4;
        v8 -= 32;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = &v6[4 * v4];
      v11 = 32 * v5 - 32 * v4;
      do
      {
        re::StringID::destroyString(v10);
        v10 = (v10 + 32);
        v11 -= 32;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

uint64_t re::DynamicArray<re::RigComponentConstraint>::operator=(uint64_t result, uint64_t a2)
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

uint64_t re::FixedArray<re::FixedArray<float>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::FixedArray<float>>::init<>(a1, v4, a2[1]);
  }

  v5 = a2[1];
  if (a1[1] == v5)
  {
    if (v5)
    {
      v6 = a2[2];
      v7 = a1[2];
      v8 = 24 * v5;
      do
      {
        re::FixedArray<float>::operator=(v7, v6);
        v6 += 24;
        v7 += 3;
        v8 -= 24;
      }

      while (v8);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::FixedArray<re::TwoBoneIKOptions>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::TwoBoneIKOptions>::init<>(a1, v4, *(a2 + 8));
  }

  v5 = *(a2 + 8);
  if (*(a1 + 8) == v5)
  {
    if (v5)
    {
      memmove(*(a1 + 16), *(a2 + 16), 32 * v5);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::FixedArray<re::FABRIKOptions>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::FABRIKOptions>::init<>(a1, v4, *(a2 + 8));
  }

  v5 = *(a2 + 8);
  if (*(a1 + 8) == v5)
  {
    if (v5)
    {
      memmove(*(a1 + 16), *(a2 + 16), 8 * v5);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::FixedArray<re::SplineIKOptions>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::SplineIKOptions>::init<>(a1, v4, *(a2 + 8));
  }

  v5 = *(a2 + 8);
  if (*(a1 + 8) == v5)
  {
    if (v5)
    {
      memmove(*(a1 + 16), *(a2 + 16), 80 * v5 - 12);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t *re::FixedArray<unsigned long>::operator=(uint64_t *a1, uint64_t a2)
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
      re::FixedArray<unsigned long>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<unsigned long>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *re::FixedArray<re::Vector3<float>>::operator=(uint64_t *a1, uint64_t a2)
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
      re::FixedArray<re::Vector3<float>>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::Vector3<float>>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::FixedArray<re::Vector3<float>>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 16 * v4);
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

uint64_t *re::FixedArray<re::Matrix4x4<float>>::operator=(uint64_t *a1, uint64_t a2)
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
      re::FixedArray<re::Matrix4x4<float>>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::Matrix4x4<float>>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::FixedArray<re::Matrix4x4<float>>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, v4 << 6);
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

uint64_t *re::FixedArray<unsigned long>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::EvaluationContextManager::bindOutputHandle<re::Matrix4x4<float>>(void *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3[3])
  {
    return 0;
  }

  v7 = *a3;
  v8 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    *v15 = a2;
    v8 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    a2 = *v15;
    if (v14)
    {
      re::introspect<re::Matrix4x4<float>>(BOOL)::info = re::introspect_Matrix4x4F(0);
      v8 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      a2 = *v15;
    }
  }

  if (v7 != *(v8 + 131))
  {
    return 0;
  }

  v10 = *(a2 + 8);
  v19[0] = v10;
  if (v10 >= a1[248])
  {
    re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a1 + 246, v10 + 1);
  }

  else if (*(a1[250] + 56 * v10 + 24))
  {
    return 0;
  }

  re::DynamicArray<unsigned long>::add(a1 + 291, v19);
  v16 = *a3;
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v17, a3 + 1);
  v18 = a4;
  v11 = v19[0];
  v12 = a1[248];
  if (v12 <= v19[0])
  {
    v19[1] = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    v23 = 789;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = a1[250] + 56 * v19[0];
  *v13 = v16;
  re::DynamicArray<re::RigDataValue>::operator=(v13 + 8, v17);
  *(v13 + 48) = v18;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v17);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v17);
  return 1;
}

void *re::DynamicArray<re::internal::RigIKCall>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::RigIKCall>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
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
        v10 = v8 + 136 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          v12 = (v8 + 8);
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v13 = v11[3];
          v14 = *(v8 + 24);
          v11[2] = *(v8 + 16);
          v11[3] = v14;
          *(v8 + 16) = 0;
          *(v8 + 24) = v13;
          v11[4] = 0;
          v11[5] = 0;
          v11[6] = 0;
          v15 = (v8 + 32);
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v16 = v11[6];
          v17 = *(v8 + 48);
          v11[5] = *(v8 + 40);
          v11[6] = v17;
          *(v8 + 40) = 0;
          *(v8 + 48) = v16;
          v11[7] = 0;
          v11[8] = 0;
          v11[9] = 0;
          v18 = (v8 + 56);
          v11[7] = *(v8 + 56);
          *(v8 + 56) = 0;
          v19 = v11[9];
          v20 = *(v8 + 72);
          v11[8] = *(v8 + 64);
          v11[9] = v20;
          *(v8 + 64) = 0;
          *(v8 + 72) = v19;
          *(v11 + 5) = *(v8 + 80);
          v11[13] = 0;
          v11[14] = 0;
          v11[12] = 0;
          v22 = *(v8 + 96);
          v21 = v8 + 96;
          v11[12] = v22;
          *v21 = 0;
          v23 = v11[14];
          v24 = *(v21 + 16);
          v11[13] = *(v21 + 8);
          v11[14] = v24;
          *(v21 + 8) = 0;
          *(v21 + 16) = v23;
          *(v11 + 15) = *(v21 + 24);
          re::FixedArray<CoreIKTransform>::deinit(v21);
          re::FixedArray<CoreIKTransform>::deinit(v18);
          re::FixedArray<CoreIKTransform>::deinit(v15);
          re::FixedArray<CoreIKTransform>::deinit(v12);
          v11 += 17;
          v8 = v21 + 40;
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

uint64_t re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_11;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_11:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_12;
  }

  v9 = *(result + 16);
  v10 = *a2;
  result = strcmp(*(v9 + 32 * v8 + 8), *a2);
  if (!result)
  {
    v6 = v8;
    goto LABEL_11;
  }

  v11 = *(v9 + 32 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = strcmp(*(v9 + 32 * v11 + 8), v10);
      if (!result)
      {
        break;
      }

      v11 = *(v9 + 32 * v12) & 0x7FFFFFFF;
      LODWORD(v8) = v12;
      if (v11 == 0x7FFFFFFF)
      {
        LODWORD(v8) = v12;
        goto LABEL_12;
      }
    }

    v6 = v12;
  }

LABEL_12:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

void re::FixedArray<char const*>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
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
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

uint64_t std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::internal::RigIKCallbackData *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::function<void ()(re::internal::RigIKCallbackData *)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(v2, &v8);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    re::convertIntrinsicEulersToQuaternions<float>(v3, v4, v5, v6, v7);
  }
}

void re::convertIntrinsicEulersToQuaternions<float>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (a2)
      {
        v43 = 0;
        v44 = (a1 + 8);
        v45 = (a4 + 8);
        while (a5 != v43)
        {
          v46 = __sincosf_stret(*(v44 - 2) * 0.5);
          v47 = __sincosf_stret(*(v44 - 1) * 0.5);
          v48 = *v44;
          v44 += 4;
          v49 = __sincosf_stret(v48 * 0.5);
          *(v45 - 2) = ((v46.__sinval * v47.__cosval) * v49.__cosval) - ((v46.__cosval * v47.__sinval) * v49.__sinval);
          *(v45 - 1) = ((v46.__cosval * v47.__sinval) * v49.__cosval) - ((v46.__sinval * v47.__cosval) * v49.__sinval);
          *v45 = ((v46.__sinval * v47.__sinval) * v49.__cosval) + ((v46.__cosval * v47.__cosval) * v49.__sinval);
          v45[1] = ((v46.__sinval * v47.__sinval) * v49.__sinval) + ((v46.__cosval * v47.__cosval) * v49.__cosval);
          v45 += 4;
          if (a2 == ++v43)
          {
            return;
          }
        }

        goto LABEL_43;
      }

      return;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        if (a2)
        {
          v14 = 0;
          v15 = (a1 + 8);
          v16 = (a4 + 8);
          while (a5 != v14)
          {
            v17 = __sincosf_stret(*(v15 - 2) * 0.5);
            v18 = __sincosf_stret(*(v15 - 1) * 0.5);
            v19 = *v15;
            v15 += 4;
            v20 = __sincosf_stret(v19 * 0.5);
            *(v16 - 2) = ((v17.__sinval * v18.__cosval) * v20.__cosval) - ((v17.__cosval * v18.__sinval) * v20.__sinval);
            *(v16 - 1) = ((v17.__sinval * v18.__cosval) * v20.__sinval) + ((v17.__cosval * v18.__sinval) * v20.__cosval);
            *v16 = ((v17.__cosval * v18.__cosval) * v20.__sinval) - ((v17.__sinval * v18.__sinval) * v20.__cosval);
            v16[1] = ((v17.__sinval * v18.__sinval) * v20.__sinval) + ((v17.__cosval * v18.__cosval) * v20.__cosval);
            v16 += 4;
            if (a2 == ++v14)
            {
              return;
            }
          }

          goto LABEL_41;
        }

        return;
      }

LABEL_44:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown rotation order", "!Unreachable code", "convertIntrinsicEulersToQuaternions", 554);
      _os_crash();
      __break(1u);
      return;
    }

    if (!a2)
    {
      return;
    }

    v29 = 0;
    v30 = (a1 + 8);
    v31 = (a4 + 8);
    while (a5 != v29)
    {
      v32 = __sincosf_stret(*(v30 - 2) * 0.5);
      v33 = __sincosf_stret(*(v30 - 1) * 0.5);
      v34 = *v30;
      v30 += 4;
      v35 = __sincosf_stret(v34 * 0.5);
      *(v31 - 2) = ((v32.__cosval * v33.__sinval) * v35.__sinval) + ((v32.__sinval * v33.__cosval) * v35.__cosval);
      *(v31 - 1) = ((v32.__cosval * v33.__sinval) * v35.__cosval) - ((v32.__sinval * v33.__cosval) * v35.__sinval);
      *v31 = ((v32.__cosval * v33.__cosval) * v35.__sinval) - ((v32.__sinval * v33.__sinval) * v35.__cosval);
      v31[1] = ((v32.__sinval * v33.__sinval) * v35.__sinval) + ((v32.__cosval * v33.__cosval) * v35.__cosval);
      v31 += 4;
      if (a2 == ++v29)
      {
        return;
      }
    }

LABEL_39:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
LABEL_40:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
LABEL_41:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
LABEL_42:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
LABEL_43:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
    goto LABEL_44;
  }

  if (!a3)
  {
    if (a2)
    {
      v36 = 0;
      v37 = (a1 + 8);
      v38 = (a4 + 8);
      while (a5 != v36)
      {
        v39 = __sincosf_stret(*(v37 - 2) * 0.5);
        v40 = __sincosf_stret(*(v37 - 1) * 0.5);
        v41 = *v37;
        v37 += 4;
        v42 = __sincosf_stret(v41 * 0.5);
        *(v38 - 2) = ((v39.__cosval * v40.__sinval) * v42.__sinval) + ((v39.__sinval * v40.__cosval) * v42.__cosval);
        *(v38 - 1) = ((v39.__cosval * v40.__sinval) * v42.__cosval) - ((v39.__sinval * v40.__cosval) * v42.__sinval);
        *v38 = ((v39.__sinval * v40.__sinval) * v42.__cosval) + ((v39.__cosval * v40.__cosval) * v42.__sinval);
        v38[1] = ((v39.__cosval * v40.__cosval) * v42.__cosval) - ((v39.__sinval * v40.__sinval) * v42.__sinval);
        v38 += 4;
        if (a2 == ++v36)
        {
          return;
        }
      }

      goto LABEL_42;
    }

    return;
  }

  if (a3 == 1)
  {
    if (!a2)
    {
      return;
    }

    v21 = 0;
    v22 = (a1 + 8);
    v23 = (a4 + 8);
    while (a5 != v21)
    {
      v24 = __sincosf_stret(*(v22 - 2) * 0.5);
      v25 = __sincosf_stret(*(v22 - 1) * 0.5);
      v26 = *v22;
      v22 += 4;
      v27 = __sincosf_stret(v26 * 0.5);
      *(v23 - 2) = ((v24.__cosval * v25.__sinval) * v27.__sinval) + ((v24.__sinval * v25.__cosval) * v27.__cosval);
      *(v23 - 1) = ((v24.__sinval * v25.__cosval) * v27.__sinval) + ((v24.__cosval * v25.__sinval) * v27.__cosval);
      v28 = -(v24.__sinval * v25.__sinval);
      *v23 = (v27.__cosval * v28) + ((v24.__cosval * v25.__cosval) * v27.__sinval);
      v23[1] = (v27.__sinval * v28) + ((v24.__cosval * v25.__cosval) * v27.__cosval);
      v23 += 4;
      if (a2 == ++v21)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
    goto LABEL_39;
  }

  if (a3 != 2)
  {
    goto LABEL_44;
  }

  if (a2)
  {
    v7 = 0;
    v8 = (a1 + 8);
    v9 = (a4 + 8);
    while (a5 != v7)
    {
      v10 = __sincosf_stret(*(v8 - 2) * 0.5);
      v11 = __sincosf_stret(*(v8 - 1) * 0.5);
      v12 = *v8;
      v8 += 4;
      v13 = __sincosf_stret(v12 * 0.5);
      *(v9 - 2) = ((v10.__sinval * v11.__cosval) * v13.__cosval) - ((v10.__cosval * v11.__sinval) * v13.__sinval);
      *(v9 - 1) = ((v10.__sinval * v11.__cosval) * v13.__sinval) + ((v10.__cosval * v11.__sinval) * v13.__cosval);
      *v9 = ((v10.__sinval * v11.__sinval) * v13.__cosval) + ((v10.__cosval * v11.__cosval) * v13.__sinval);
      v9[1] = ((v10.__cosval * v11.__cosval) * v13.__cosval) - ((v10.__sinval * v11.__sinval) * v13.__sinval);
      v9 += 4;
      if (a2 == ++v7)
      {
        return;
      }
    }

    goto LABEL_40;
  }
}

uint64_t std::__function::__func<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0,std::allocator<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0>,void ()(re::internal::RigIKCallbackData *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB1AF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0,std::allocator<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0>,void ()(re::internal::RigIKCallbackData *)>::operator()(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 18);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 15);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 12);
    re::FixedArray<re::FixedArray<unsigned int>>::deinit(v2 + 9);
    re::FixedArray<re::FixedArray<unsigned int>>::deinit(v2 + 6);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 3);
    re::FixedArray<re::internal::RigIKCall>::deinit(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0,std::allocator<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0>,void ()(re::internal::RigIKCallbackData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *re::FixedArray<unsigned long>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 8 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,BOOL (*)(re::MutableSlice<re::Matrix4x4<float>>,re::Slice<unsigned int>,re::Slice<unsigned long>,re::Slice<unsigned long>,re::Slice<re::Vector3<float>>,void *),re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v27, v9, v8);
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
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                v20 = *v18;
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v27);
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
    v22 = *(v21 + 32 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 32 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v24 + 24) = a3;
  *(v25 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v21 + 32 * v5;
}

double re::makeSkeletalPoseJointBindNode@<D0>(re *this@<X0>, const re::BindPoint *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    goto LABEL_7;
  }

  v6 = *this;
  v7 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v7 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v14)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::internal::getOrCreateInfo("SkeletalPose", re::allocInfo_SkeletalPose, re::initInfo_SkeletalPose, &re::internal::introspectionInfoStorage<re::SkeletalPose>, 0);
      v7 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  if (v6 == *(v7 + 95) && (v8 = re::BindPoint::valueUntyped(this), *(v8 + 24) > a2))
  {
    {
      if (v8)
      {
        re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      }
    }

    *a3 = re::introspect<re::GenericSRT<float>>(BOOL)::info;
    *(a3 + 40) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 8) = 0;
    memset(v15, 0, sizeof(v15));
    re::DynamicArray<re::BindPoint::BindPointData>::add((a3 + 8), v15);
    v9 = re::BindPoint::BindPointData::deinit(v15);
    v10 = *(a3 + 40) + 32 * *(a3 + 24);
    *(v10 - 32) = 0;
    v12 = *this;
    *v11 = &unk_1F5CB1BD0;
    v11[1] = v12;
    re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((v11 + 2), this + 1);
    v11[7] = a2;
    *(v10 - 16) = v11;
  }

  else
  {
LABEL_7:
    *(a3 + 40) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
  }

  return result;
}

__n128 re::EvaluationSkeletalPoseInputHandle::set(re::EvaluationSkeletalPoseInputHandle *this, const re::SkeletalPose *a2)
{
  if (*(this + 1))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      if (*(a2 + 3) <= v4)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v5 = (*(this + 2) + v3);
      v6 = *v5;
      v7 = v5[1];
      if (*(*v5 + 2736) <= v7)
      {
        goto LABEL_8;
      }

      v8 = *(a2 + 4) + v2;
      v9 = *(v6 + 2744) + 48 * v7;
      result = *v8;
      v11 = *(v8 + 32);
      *(v9 + 16) = *(v8 + 16);
      *(v9 + 32) = v11;
      *v9 = result;
      ++v4;
      v3 += 16;
      v2 += 48;
    }

    while (v4 < *(this + 1));
  }

  return result;
}

__n128 re::EvaluationSkeletalPoseOutputHandle::get(re::EvaluationSkeletalPoseOutputHandle *this, re::SkeletalPose *a2)
{
  if (*(this + 1))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      if (*(a2 + 3) <= v4)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v5 = (*(this + 2) + v3);
      v6 = *v5;
      v7 = v5[1];
      if (*(*v5 + 2952) <= v7)
      {
        goto LABEL_8;
      }

      v8 = *(a2 + 4) + v2;
      v9 = *(v6 + 2960) + 48 * v7;
      result = *v9;
      v11 = *(v9 + 32);
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 32) = v11;
      *v8 = result;
      ++v4;
      v3 += 16;
      v2 += 48;
    }

    while (v4 < *(this + 1));
  }

  return result;
}

uint64_t *re::SkeletalPoseJointDefinition::SkeletalPoseJointDefinition(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v8 + 16) = a2;
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *v8 = &unk_1F5CB1B88;
  *(v8 + 32) = &str_67;
  *(v8 + 40) = 0u;
  v10 = (v8 + 40);
  *(v8 + 180) = 0u;
  *(v8 + 168) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 196) = 0x7FFFFFFFLL;
  *(v8 + 224) = 0u;
  *(v8 + 240) = 0u;
  *(v8 + 252) = 0u;
  *(v8 + 208) = 0u;
  v11 = (v8 + 208);
  *(v8 + 268) = 0x7FFFFFFFLL;
  re::FixedArray<re::StringID>::init<>((v8 + 208), a2, *(a3 + 8));
  re::FixedArray<re::StringID>::operator=(v11, a3);
  re::SkeletalPoseJointDefinition::buildJointNameMap(a1);
  if (a4 && a4[2])
  {
    re::StringID::operator=(v9, a4);
    re::FixedArray<re::StringID>::operator=(v10, (a4 + 2));
    re::FixedArray<unsigned int>::operator=(a1 + 8, (a4 + 5));
    re::FixedArray<re::FixedArray<unsigned int>>::operator=(a1 + 11, (a4 + 8));
    re::FixedArray<re::GenericSRT<float>>::operator=(a1 + 14, (a4 + 11));
    re::FixedArray<re::Matrix4x4<float>>::operator=(a1 + 17, (a4 + 14));
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((a1 + 20), (a4 + 17));
  }

  return a1;
}

uint64_t re::SkeletalPoseJointDefinition::SkeletalPoseJointDefinition(uint64_t a1, void *a2, const StringID *a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CB1B88;
  re::StringID::StringID((a1 + 24), a3);
  re::FixedArray<re::StringID>::FixedArray((a1 + 40), &a3[1]);
  re::FixedArray<unsigned int>::FixedArray((a1 + 64), &a3[2].var1);
  re::FixedArray<re::FixedArray<unsigned int>>::FixedArray((a1 + 88), &a3[4]);
  re::FixedArray<re::GenericSRT<float>>::FixedArray((a1 + 112), &a3[5].var1);
  re::FixedArray<re::Matrix4x4<float>>::FixedArray((a1 + 136), &a3[7]);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(a1 + 160, &a3[8].var1);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  v6 = a2[1];
  *(a1 + 208) = *a2;
  *(a1 + 216) = v6;
  *a2 = 0;
  a2[1] = 0;
  v7 = *(a1 + 224);
  *(a1 + 224) = a2[2];
  a2[2] = v7;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 268) = 0x7FFFFFFFLL;
  re::SkeletalPoseJointDefinition::buildJointNameMap(a1);
  return a1;
}

void re::SkeletalPoseJointDefinition::buildJointNameMap(re::SkeletalPoseJointDefinition *this)
{
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 232, *(this + 26), 2 * *(this + 54));
  v8 = 0;
  if (*(this + 27))
  {
    v2 = 0;
    do
    {
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 232, (*(this + 28) + 16 * v2), &v8);
      v2 = v8 + 1;
      v8 = v2;
      v3 = *(this + 27);
    }

    while (v2 < v3);
    v10 = 0;
    if (v3)
    {
      for (i = 0; i < v3; v10 = i)
      {
        v5 = strrchr(*(*(this + 28) + 16 * i + 8), 47);
        if (v5)
        {
          v6 = v5;
          v8 = 0;
          v9 = &str_67;
          v7 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 232, &v8, &v10);
          if (v8)
          {
            if (v8)
            {
            }
          }

          i = v10;
          v3 = *(this + 27);
        }

        ++i;
      }
    }
  }
}

void re::EvaluationSkeletalPose::createInputHandle(re::EvaluationSkeletalPose *this@<X0>, re::EvaluationContextManager *a2@<X1>, void *a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  a3[2] = 0;
  v6 = *(this + 1);
  a3[1] = v6;
  if (v6)
  {
    if (v6 >> 60)
    {
LABEL_14:
      re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v6);
      _os_crash();
      __break(1u);
LABEL_15:
      re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v8 = 2 * v6;
    a3[2] = v9;
    if (!v9)
    {
      goto LABEL_15;
    }

    v11 = v9;
    v12 = v9;
    if (v6 != 1)
    {
      bzero(v9, v8 * 8 - 16);
      v12 = &v11[v8 - 2];
    }

    *v12 = 0;
    v12[1] = 0;
  }

  else
  {
    v11 = 0;
  }

  if (*(this + 1))
  {
    v13 = 0;
    v14 = 0;
    for (i = v11 + 1; ; i += 2)
    {
      v16 = *(this + 2);
      v18[0] = 0x3F8000003F800000;
      v18[1] = 1065353216;
      v18[2] = 0;
      v18[3] = 0x3F80000000000000;
      v18[4] = 0;
      v18[5] = 0;
      re::DynamicArray<re::EvaluationSRT>::add((a2 + 328), (v16 + v13));
      re::DynamicArray<re::Matrix3x3<float>>::add((a2 + 688), v18);
      if (v6 == v14)
      {
        break;
      }

      v17 = *(a2 + 43) - 1;
      *(i - 1) = a2;
      *i = v17;
      ++v14;
      v13 += 24;
      if (v14 >= *(this + 1))
      {
        return;
      }
    }

    v18[7] = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    v22 = 468;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }
}

void re::EvaluationSkeletalPose::createOutputHandle(re::EvaluationSkeletalPose *this@<X0>, re::EvaluationContextManager *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *(this + 1);
  if (*(this + 1))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      re::DynamicArray<re::EvaluationSRT>::add((a2 + 1768), (*(this + 2) + v7));
      if (a3[1] <= v9)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(a2 + 223) - 1;
      v11 = (a3[2] + v8);
      *v11 = a2;
      v11[1] = v10;
      ++v9;
      v8 += 16;
      v7 += 24;
    }

    while (v9 < *(this + 1));
  }
}

uint64_t re::SkeletalPose::SkeletalPose(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  re::FixedArray<re::GenericSRT<float>>::init<>((a1 + 16), a2, *(*a3 + 216));
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 80), *a3);
  return a1;
}

void re::SkeletalPose::init(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1 + 10, v4);
}

void re::SkeletalPose::deinit(re::SkeletalPose *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 2);
  v2 = *(this + 10);
  if (v2)
  {

    *(this + 10) = 0;
  }
}

void re::SkeletalPose::reset(uint64_t *a1, uint64_t *a2)
{
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1 + 10, *a2);
  if (a1[3] != *(a1[10] + 216))
  {
    v4 = a1[2];
    if (!v4)
    {
    }

    re::FixedArray<CoreIKTransform>::deinit(a1 + 2);
    v5 = *(a1[10] + 216);

    re::FixedArray<re::GenericSRT<float>>::init<>(a1 + 2, v4, v5);
  }
}

void *re::allocInfo_SkeletalPose(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190958, "SkeletalPose");
    __cxa_guard_release(&_MergedGlobals_20);
  }

  return &unk_1EE190958;
}

void re::initInfo_SkeletalPose(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x3D0B75488F9EC5D4;
  v18[1] = "SkeletalPose";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE190938, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE190938);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "jointTransforms";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0x1000000001;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE190940 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "poseMask";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE190948 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::StringID>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "name";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 3;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE190950 = v16;
      __cxa_guard_release(&qword_1EE190938);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE190940;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalPose>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalPose>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalPose>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalPose>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionDynamicArray<BOOL>::IntrospectionDynamicArray();
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_BOOL(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info, 0);
    qword_1EE186908 = 0x2800000003;
    dword_1EE186910 = v8;
    word_1EE186914 = 0;
    *&xmmword_1EE186918 = 0;
    *(&xmmword_1EE186918 + 1) = 0xFFFFFFFFLL;
    qword_1EE186928 = v7;
    qword_1EE186930 = 0;
    re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info = &unk_1F5CB1CA8;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186918 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::SkeletalPose>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::SkeletalPose>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

void *re::AnimationValueTraits<re::SkeletalPose>::copy(void *result, void *a2)
{
  v3 = result;
  v23 = *MEMORY[0x1E69E9840];
  v4 = result[10];
  if (v4 == a2[10])
  {

    return re::FixedArray<re::GenericSRT<float>>::operator=(a2 + 2, (result + 2));
  }

  else
  {
    v5 = *(v4 + 216);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = v3[10];
        if (*(v9 + 216) <= v8)
        {
          break;
        }

        v10 = *(v9 + 224);
        v11 = a2[10];
        v12 = 0xBF58476D1CE4E5B9 * ((*(v10 + v6) >> 31) ^ (*(v10 + v6) >> 1));
        result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v11 + 232, (v10 + v6), (0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31), &v18);
        if (HIDWORD(v18) != 0x7FFFFFFF)
        {
          if (v3[3] <= v8)
          {
            goto LABEL_15;
          }

          v13 = *(*(v11 + 248) + 32 * HIDWORD(v18) + 24);
          if (a2[3] <= v13)
          {
            goto LABEL_16;
          }

          v14 = (v3[4] + v7);
          v15 = (a2[4] + 48 * v13);
          v16 = *v14;
          v17 = v14[2];
          v15[1] = v14[1];
          v15[2] = v17;
          *v15 = v16;
        }

        ++v8;
        v7 += 48;
        v6 += 16;
        if (v5 == v8)
        {
          return result;
        }
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_15:
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_16:
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

float32x4_t re::AnimationValueTraits<re::SkeletalPose>::combine(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v106 = *MEMORY[0x1E69E9840];
  v9 = a1[10];
  if (v9 == a2[10])
  {
    v16 = *(v9 + 216);
    if (v9 == a3[10])
    {
      if (v16)
      {
        v71 = 0;
        v3 = 0;
        while (1)
        {
          v14 = a1[3];
          if (v14 <= v3)
          {
            break;
          }

          v14 = a2[3];
          if (v14 <= v3)
          {
            goto LABEL_61;
          }

          v14 = a3[3];
          if (v14 <= v3)
          {
            goto LABEL_62;
          }

          v72 = (a2[4] + v71);
          v73 = (a3[4] + v71);
          v74 = (a1[4] + v71);
          _Q1 = v72[1];
          _Q3 = v74[1];
          v77 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
          v78 = vnegq_f32(_Q1);
          v79 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v78), _Q3, v77);
          _S7 = _Q3.i32[3];
          v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), _Q3, _Q1, 3), _Q1, _Q3, 3);
          __asm { FMLA            S3, S7, V1.S[3] }

          v81.i32[3] = _Q3.i32[0];
          v82 = v74[2];
          v83 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL), v78), v82, v77);
          v84 = vaddq_f32(v83, v83);
          v85 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
          v86 = vaddq_f32(v82, vmulq_laneq_f32(v85, _Q1, 3));
          v87 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL), v78), v85, v77);
          result = vaddq_f32(v72[2], vmulq_f32(*v72, vaddq_f32(v86, vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL))));
          *v73 = vmulq_f32(*v72, *v74);
          v73[1] = v81;
          v73[2] = result;
          ++v3;
          v71 += 48;
          if (v16 == v3)
          {
            return result;
          }
        }

LABEL_60:
        v89 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v93 = 136315906;
        v94 = "operator[]";
        v95 = 1024;
        v96 = 476;
        v97 = 2048;
        v98 = v3;
        v99 = 2048;
        v100 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_61:
        v89 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v93 = 136315906;
        v94 = "operator[]";
        v95 = 1024;
        v96 = 476;
        v97 = 2048;
        v98 = v3;
        v99 = 2048;
        v100 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_62:
        v89 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v93 = 136315906;
        v94 = "operator[]";
        v95 = 1024;
        v96 = 468;
        v97 = 2048;
        v98 = v3;
        v99 = 2048;
        v100 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_63:
        v89 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v93 = 136315906;
        v94 = "operator[]";
        v95 = 1024;
        v96 = 476;
        v97 = 2048;
        v98 = v3;
        v99 = 2048;
        v100 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_64:
        v89 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v93 = 136315906;
        v94 = "operator[]";
        v95 = 1024;
        v96 = 476;
        v97 = 2048;
        v98 = v3;
        v99 = 2048;
        v100 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_65:
        v89 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v93 = 136315906;
        v94 = "operator[]";
        v95 = 1024;
        v96 = 468;
        v97 = 2048;
        v98 = v4;
        v99 = 2048;
        v100 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else if (v16)
    {
      v14 = 0;
      v51 = 0;
      v3 = 0;
      v10 = 0x7FFFFFFFLL;
      while (1)
      {
        v52 = v8[10];
        v4 = *(v52 + 216);
        if (v4 <= v3)
        {
          goto LABEL_51;
        }

        v53 = *(v52 + 224);
        v5 = a3[10];
        v54 = 0xBF58476D1CE4E5B9 * ((*(v53 + v14) >> 31) ^ (*(v53 + v14) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 232, (v53 + v14), (0x94D049BB133111EBLL * (v54 ^ (v54 >> 27))) ^ ((0x94D049BB133111EBLL * (v54 ^ (v54 >> 27))) >> 31), &v101);
        if (HIDWORD(v101) != 0x7FFFFFFF)
        {
          v4 = v8[3];
          if (v4 <= v3)
          {
            goto LABEL_63;
          }

          v4 = a2[3];
          if (v4 <= v3)
          {
            goto LABEL_64;
          }

          v4 = *(*(v5 + 248) + 32 * HIDWORD(v101) + 24);
          v5 = a3[3];
          if (v5 <= v4)
          {
            goto LABEL_65;
          }

          v55 = (a2[4] + v51);
          v56 = a3[4] + 48 * v4;
          v57 = (v8[4] + v51);
          _Q1 = v55[1];
          _Q3 = v57[1];
          v60 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
          v61 = vnegq_f32(_Q1);
          v62 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v61), _Q3, v60);
          _S7 = _Q3.i32[3];
          v64 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL), _Q3, _Q1, 3), _Q1, _Q3, 3);
          __asm { FMLA            S3, S7, V1.S[3] }

          v64.i32[3] = _Q3.i32[0];
          v65 = v57[2];
          v66 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), v61), v65, v60);
          v67 = vaddq_f32(v66, v66);
          v68 = vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL);
          v69 = vaddq_f32(v65, vmulq_laneq_f32(v68, _Q1, 3));
          v70 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), v61), v68, v60);
          result = vaddq_f32(v55[2], vmulq_f32(*v55, vaddq_f32(v69, vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL))));
          *v56 = vmulq_f32(*v55, *v57);
          *(v56 + 16) = v64;
          *(v56 + 32) = result;
        }

        ++v3;
        v51 += 48;
        v14 += 16;
        if (v16 == v3)
        {
          return result;
        }
      }
    }
  }

  else
  {
    v10 = 0xBF58476D1CE4E5B9;
    v88 = a2;
    v89 = 0;
    v11 = *(a2[10] + 216);
    v90 = 0;
    v91 = 0;
    v13 = *(v8[10] + 216);
    if (v13)
    {
      v4 = 0;
      v5 = 0;
      v14 = 0;
      while (1)
      {
        v15 = v8[10];
        v16 = *(v15 + 216);
        if (v16 <= v14)
        {
          break;
        }

        v17 = *(v15 + 224);
        v3 = a3[10];
        v18 = ((*(v17 + v4) >> 31) ^ (*(v17 + v4) >> 1)) * v10;
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v3 + 232, (v17 + v4), (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31), &v101);
        if (HIDWORD(v101) != 0x7FFFFFFF)
        {
          v3 = *(*(v3 + 248) + 32 * HIDWORD(v101) + 24);
          v19 = v10;
          v10 = v88[10];
          v20 = v19;
          v21 = ((*(v17 + v4) >> 31) ^ (*(v17 + v4) >> 1)) * v19;
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v10 + 232, (v17 + v4), (0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) ^ ((0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) >> 31), &v101);
          if (HIDWORD(v101) == 0x7FFFFFFF)
          {
            v16 = v8[3];
            if (v16 <= v14)
            {
              goto LABEL_53;
            }

            v16 = a3[3];
            if (v16 <= v3)
            {
              goto LABEL_54;
            }

            v22 = v8[4] + v5;
            v23 = a3[4] + 48 * v3;
            result = *v22;
            v24 = *(v22 + 32);
            *(v23 + 16) = *(v22 + 16);
            *(v23 + 32) = v24;
            *v23 = result;
          }

          else
          {
            v16 = v8[3];
            if (v16 <= v14)
            {
              goto LABEL_52;
            }

            v16 = *(*(v10 + 248) + 32 * HIDWORD(v101) + 24);
            v10 = v88[3];
            if (v10 <= v16)
            {
              goto LABEL_55;
            }

            v10 = a3[3];
            if (v10 <= v3)
            {
              goto LABEL_56;
            }

            v25 = v88[4] + 48 * v16;
            v26 = a3[4] + 48 * v3;
            v27 = (v8[4] + v5);
            _Q1 = *(v25 + 16);
            _Q3 = v27[1];
            v30 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
            v31 = vnegq_f32(_Q1);
            v32 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v31), _Q3, v30);
            _S7 = _Q3.i32[3];
            v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), _Q3, _Q1, 3), _Q1, _Q3, 3);
            __asm { FMLA            S3, S7, V1.S[3] }

            v34.i32[3] = _Q3.i32[0];
            v39 = v27[2];
            v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), v31), v39, v30);
            v41 = vaddq_f32(v40, v40);
            v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
            v43 = vaddq_f32(v39, vmulq_laneq_f32(v42, _Q1, 3));
            v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), v31), v42, v30);
            result = vaddq_f32(*(v25 + 32), vmulq_f32(*v25, vaddq_f32(v43, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL))));
            *v26 = vmulq_f32(*v25, *v27);
            *(v26 + 16) = v34;
            *(v26 + 32) = result;
            v3 = v90;
            if (v90 <= v16)
            {
              goto LABEL_57;
            }

            *(v91 + v16) = 1;
          }

          v10 = v20;
        }

        ++v14;
        v5 += 48;
        v4 += 16;
        if (v13 == v14)
        {
          goto LABEL_17;
        }
      }

      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 476;
      v97 = 2048;
      v98 = v14;
      v99 = 2048;
      v100 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_49;
    }

LABEL_17:
    v16 = *(v88[10] + 216);
    if (v16)
    {
      v3 = 0;
      v8 = 0;
      v14 = 0x7FFFFFFFLL;
      while (1)
      {
        v4 = v90;
        if (v90 <= v8)
        {
          break;
        }

        if ((*(v8 + v91) & 1) == 0)
        {
          v45 = v88[10];
          v4 = *(v45 + 216);
          if (v4 <= v8)
          {
            goto LABEL_50;
          }

          v46 = *(v45 + 224);
          v5 = a3[10];
          v47 = ((*(v46 + v3) >> 31) ^ (*(v46 + v3) >> 1)) * v10;
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 232, (v46 + v3), (0x94D049BB133111EBLL * (v47 ^ (v47 >> 27))) ^ ((0x94D049BB133111EBLL * (v47 ^ (v47 >> 27))) >> 31), &v101);
          if (HIDWORD(v101) != 0x7FFFFFFF)
          {
            v4 = v88[3];
            if (v4 <= v16)
            {
              goto LABEL_58;
            }

            v4 = *(*(v5 + 248) + 32 * HIDWORD(v101) + 24);
            v5 = a3[3];
            if (v5 <= v4)
            {
              goto LABEL_59;
            }

            v48 = v88[4] + 48 * v16;
            v49 = a3[4] + 48 * v4;
            result = *v48;
            v50 = *(v48 + 32);
            *(v49 + 16) = *(v48 + 16);
            *(v49 + 32) = v50;
            *v49 = result;
          }
        }

        v8 = (v8 + 1);
        v3 += 16;
        if (v16 == v8)
        {
          goto LABEL_27;
        }
      }

LABEL_49:
      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 468;
      v97 = 2048;
      v98 = v8;
      v99 = 2048;
      v100 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_50:
      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 476;
      v97 = 2048;
      v98 = v8;
      v99 = 2048;
      v100 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_51:
      v89 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 476;
      v97 = 2048;
      v98 = v3;
      v99 = 2048;
      v100 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_52:
      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 476;
      v97 = 2048;
      v98 = v14;
      v99 = 2048;
      v100 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_53:
      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 476;
      v97 = 2048;
      v98 = v14;
      v99 = 2048;
      v100 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_54:
      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 468;
      v97 = 2048;
      v98 = v3;
      v99 = 2048;
      v100 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_55:
      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 476;
      v97 = 2048;
      v98 = v16;
      v99 = 2048;
      v100 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_56:
      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 468;
      v97 = 2048;
      v98 = v3;
      v99 = 2048;
      v100 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_57:
      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 468;
      v97 = 2048;
      v98 = v16;
      v99 = 2048;
      v100 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_58:
      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 476;
      v97 = 2048;
      v98 = v16;
      v99 = 2048;
      v100 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_59:
      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      v96 = 468;
      v97 = 2048;
      v98 = v4;
      v99 = 2048;
      v100 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_60;
    }

LABEL_27:
    if (v89)
    {
      if (v90)
      {
        (*(*v89 + 40))();
      }
    }
  }

  return result;
}

void *re::AnimationValueTraits<re::SkeletalPose>::invert(void *result, void *a2)
{
  v3 = result;
  v52 = *MEMORY[0x1E69E9840];
  v4 = result[10];
  v5 = *(v4 + 216);
  if (v4 == a2[10])
  {
    if (v5)
    {
      v31 = 0;
      v32 = 0;
      __asm { FMOV            V0.4S, #1.0 }

      while (result[3] > v32)
      {
        if (a2[3] <= v32)
        {
          goto LABEL_19;
        }

        v34 = (result[4] + v31);
        v35 = a2[4] + v31;
        v36 = v34[1];
        v37 = v34[2];
        v38 = vdivq_f32(_Q0, *v34);
        v39 = vnegq_f32(v36);
        v40 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
        v39.i32[3] = v36.i32[3];
        v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), v36), v37, v40);
        v42 = vaddq_f32(v41, v41);
        v43 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
        v44 = vaddq_f32(v37, vmulq_laneq_f32(v43, v36, 3));
        v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), v36), v43, v40);
        *v35 = v38;
        *(v35 + 16) = v39;
        *(v35 + 32) = vmulq_f32(vaddq_f32(v44, vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL)), vnegq_f32(v38));
        ++v32;
        v31 += 48;
        if (v5 == v32)
        {
          return result;
        }
      }

LABEL_18:
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_19:
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_20:
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_21:
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v46 = _Q0;
    while (1)
    {
      v14 = v3[10];
      if (*(v14 + 216) <= v8)
      {
        break;
      }

      v15 = *(v14 + 224);
      v16 = a2[10];
      v17 = 0xBF58476D1CE4E5B9 * ((*(v15 + v6) >> 31) ^ (*(v15 + v6) >> 1));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v16 + 232, (v15 + v6), (0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) ^ ((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) >> 31), &v47);
      if (HIDWORD(v47) != 0x7FFFFFFF)
      {
        if (v3[3] <= v8)
        {
          goto LABEL_20;
        }

        v18 = *(*(v16 + 248) + 32 * HIDWORD(v47) + 24);
        if (a2[3] <= v18)
        {
          goto LABEL_21;
        }

        v19 = (v3[4] + v7);
        v20 = a2[4] + 48 * v18;
        v21 = v19[1];
        v22 = v19[2];
        v23 = vdivq_f32(v46, *v19);
        v24 = vnegq_f32(v21);
        v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
        v24.i32[3] = v21.i32[3];
        v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v21), v22, v25);
        v27 = vaddq_f32(v26, v26);
        v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
        v29 = vaddq_f32(v22, vmulq_laneq_f32(v28, v21, 3));
        v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v21), v28, v25);
        *v20 = v23;
        *(v20 + 16) = v24;
        *(v20 + 32) = vmulq_f32(vaddq_f32(v29, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL)), vnegq_f32(v23));
      }

      ++v8;
      v7 += 48;
      v6 += 16;
      if (v5 == v8)
      {
        return result;
      }
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

void re::AnimationValueTraits<re::SkeletalPose>::interpolate(void *a1, void *a2, void *a3, float a4)
{
  v11 = a1;
  v65 = *MEMORY[0x1E69E9840];
  v12 = a1[10];
  if (v12 == a2[10])
  {
    v4 = *(v12 + 216);
    if (v12 == a3[10])
    {
      if (v4)
      {
        v42 = 0;
        v18 = 0;
        while (1)
        {
          v16 = v11[3];
          if (v16 <= v18)
          {
            break;
          }

          v16 = a2[3];
          if (v16 <= v18)
          {
            goto LABEL_60;
          }

          v16 = a3[3];
          if (v16 <= v18)
          {
            goto LABEL_61;
          }

          v43 = (a3[4] + v42);
          re::lerp<float>((v11[4] + v42), (a2[4] + v42), &v60, a4);
          v44 = v60;
          v45 = v62;
          v43[1] = v61;
          v43[2] = v45;
          *v43 = v44;
          ++v18;
          v42 += 48;
          if (v4 == v18)
          {
            return;
          }
        }

LABEL_59:
        *v53 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v51 = 136315906;
        *&v51[4] = "operator[]";
        *&v51[12] = 1024;
        *&v51[14] = 476;
        *&v51[18] = 2048;
        *&v51[20] = v18;
        *&v51[28] = 2048;
        *&v51[30] = v16;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_60:
        *v53 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v51 = 136315906;
        *&v51[4] = "operator[]";
        *&v51[12] = 1024;
        *&v51[14] = 476;
        *&v51[18] = 2048;
        *&v51[20] = v18;
        *&v51[28] = 2048;
        *&v51[30] = v16;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_61:
        *v53 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v51 = 136315906;
        *&v51[4] = "operator[]";
        *&v51[12] = 1024;
        *&v51[14] = 468;
        *&v51[18] = 2048;
        *&v51[20] = v18;
        *&v51[28] = 2048;
        *&v51[30] = v16;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_62:
        *v53 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v51 = 136315906;
        *&v51[4] = "operator[]";
        *&v51[12] = 1024;
        *&v51[14] = 476;
        *&v51[18] = 2048;
        *&v51[20] = v18;
        *&v51[28] = 2048;
        *&v51[30] = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_63:
        *v53 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v51 = 136315906;
        *&v51[4] = "operator[]";
        *&v51[12] = 1024;
        *&v51[14] = 476;
        *&v51[18] = 2048;
        *&v51[20] = v18;
        *&v51[28] = 2048;
        *&v51[30] = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_64:
        *v53 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v51 = 136315906;
        *&v51[4] = "operator[]";
        *&v51[12] = 1024;
        *&v51[14] = 468;
        *&v51[18] = 2048;
        *&v51[20] = v5;
        *&v51[28] = 2048;
        *&v51[30] = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else if (v4)
    {
      v15 = 0;
      v16 = 0;
      v18 = 0;
      v7 = 0x7FFFFFFFLL;
      while (1)
      {
        v36 = v11[10];
        v5 = *(v36 + 216);
        if (v5 <= v18)
        {
          goto LABEL_50;
        }

        v37 = *(v36 + 224);
        v6 = a3[10];
        v38 = 0xBF58476D1CE4E5B9 * ((*(v37 + v15) >> 31) ^ (*(v37 + v15) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v6 + 232, (v37 + v15), (0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) ^ ((0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) >> 31), &v60);
        if (v60.i32[3] != 0x7FFFFFFF)
        {
          v5 = v11[3];
          if (v5 <= v18)
          {
            goto LABEL_62;
          }

          v5 = a2[3];
          if (v5 <= v18)
          {
            goto LABEL_63;
          }

          v5 = *(*(v6 + 248) + 32 * v60.u32[3] + 24);
          v6 = a3[3];
          if (v6 <= v5)
          {
            goto LABEL_64;
          }

          v39 = (a3[4] + 48 * v5);
          re::lerp<float>((v11[4] + v16), (a2[4] + v16), &v60, a4);
          v40 = v60;
          v41 = v62;
          v39[1] = v61;
          v39[2] = v41;
          *v39 = v40;
        }

        ++v18;
        v16 += 48;
        v15 += 16;
        if (v4 == v18)
        {
          return;
        }
      }
    }
  }

  else
  {
    v46 = a2;
    v47 = 0;
    v13 = *(a2[10] + 216);
    v48 = 0;
    v49 = 0;
    v14 = *(v11[10] + 216);
    if (v14)
    {
      v5 = 0;
      v6 = 0;
      v15 = 0;
      v16 = 48;
      while (1)
      {
        v17 = v11[10];
        v18 = *(v17 + 216);
        if (v18 <= v15)
        {
          break;
        }

        v4 = *(v17 + 224);
        v19 = a3[10];
        v20 = 0xBF58476D1CE4E5B9 * ((*(v4 + v5) >> 31) ^ (*(v4 + v5) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v19 + 232, (v4 + v5), (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31), &v60);
        if (v60.i32[3] != 0x7FFFFFFF)
        {
          v18 = *(*(v19 + 248) + 32 * v60.u32[3] + 24);
          v7 = v46[10];
          v21 = 0xBF58476D1CE4E5B9 * ((*(v4 + v5) >> 31) ^ (*(v4 + v5) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 232, (v4 + v5), (0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) ^ ((0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) >> 31), &v60);
          if (v60.i32[3] == 0x7FFFFFFF)
          {
            v4 = v11[3];
            if (v4 <= v15)
            {
              goto LABEL_52;
            }

            v22 = v11[4];
            *&v51[8] = 1065353216;
            *&v51[16] = 0;
            *v51 = 0x3F8000003F800000;
            *&v51[24] = 0x3F80000000000000;
            *&v51[32] = 0;
            v52 = 0;
            v4 = a3[3];
            if (v4 <= v18)
            {
              goto LABEL_53;
            }

            v23 = (a3[4] + 48 * v18);
            re::lerp<float>((v22 + v6), v51, &v60, a4);
            v24 = v60;
            v25 = v62;
            v23[1] = v61;
            v23[2] = v25;
            *v23 = v24;
          }

          else
          {
            v4 = v11[3];
            if (v4 <= v15)
            {
              goto LABEL_51;
            }

            v4 = *(*(v7 + 248) + 32 * v60.u32[3] + 24);
            v7 = v46[3];
            if (v7 <= v4)
            {
              goto LABEL_54;
            }

            v7 = a3[3];
            if (v7 <= v18)
            {
              goto LABEL_55;
            }

            v16 = 48;
            v26 = (a3[4] + 48 * v18);
            re::lerp<float>((v11[4] + v6), (v46[4] + 48 * v4), &v60, a4);
            v27 = v60;
            v28 = v62;
            v26[1] = v61;
            v26[2] = v28;
            *v26 = v27;
            v18 = v48;
            if (v48 <= v4)
            {
              goto LABEL_56;
            }

            *(v49 + v4) = 1;
          }
        }

        ++v15;
        v6 += 48;
        v5 += 16;
        if (v14 == v15)
        {
          goto LABEL_16;
        }
      }

      *v53 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v51 = 136315906;
      *&v51[4] = "operator[]";
      *&v51[12] = 1024;
      *&v51[14] = 476;
      *&v51[18] = 2048;
      *&v51[20] = v15;
      *&v51[28] = 2048;
      *&v51[30] = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_48;
    }

LABEL_16:
    v18 = *(v46[10] + 216);
    if (v18)
    {
      v15 = 0;
      v16 = 0;
      v11 = 0;
      v4 = 0x7FFFFFFFLL;
      v5 = 48;
      while (1)
      {
        v6 = v48;
        if (v48 <= v11)
        {
          break;
        }

        if ((*(v11 + v49) & 1) == 0)
        {
          v29 = v46[10];
          v6 = *(v29 + 216);
          if (v6 <= v11)
          {
            goto LABEL_49;
          }

          v30 = *(v29 + 224);
          v31 = a3[10];
          v32 = 0xBF58476D1CE4E5B9 * ((*(v30 + v15) >> 31) ^ (*(v30 + v15) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v31 + 232, (v30 + v15), (0x94D049BB133111EBLL * (v32 ^ (v32 >> 27))) ^ ((0x94D049BB133111EBLL * (v32 ^ (v32 >> 27))) >> 31), &v60);
          if (v60.i32[3] != 0x7FFFFFFF)
          {
            v6 = *(*(v31 + 248) + 32 * v60.u32[3] + 24);
            *&v51[8] = 1065353216;
            *&v51[16] = 0;
            *v51 = 0x3F8000003F800000;
            *&v51[24] = 0x3F80000000000000;
            *&v51[32] = 0;
            v52 = 0;
            v7 = v46[3];
            if (v7 <= v11)
            {
              goto LABEL_57;
            }

            v7 = a3[3];
            if (v7 <= v6)
            {
              goto LABEL_58;
            }

            v33 = (a3[4] + 48 * v6);
            re::lerp<float>(v51, (v46[4] + v16), &v60, a4);
            v34 = v60;
            v35 = v62;
            v33[1] = v61;
            v33[2] = v35;
            *v33 = v34;
          }
        }

        v11 = (v11 + 1);
        v16 += 48;
        v15 += 16;
        if (v18 == v11)
        {
          goto LABEL_26;
        }
      }

LABEL_48:
      *v53 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v51 = 136315906;
      *&v51[4] = "operator[]";
      *&v51[12] = 1024;
      *&v51[14] = 468;
      *&v51[18] = 2048;
      *&v51[20] = v11;
      *&v51[28] = 2048;
      *&v51[30] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_49:
      *v53 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v51 = 136315906;
      *&v51[4] = "operator[]";
      *&v51[12] = 1024;
      *&v51[14] = 476;
      *&v51[18] = 2048;
      *&v51[20] = v11;
      *&v51[28] = 2048;
      *&v51[30] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_50:
      *v53 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v51 = 136315906;
      *&v51[4] = "operator[]";
      *&v51[12] = 1024;
      *&v51[14] = 476;
      *&v51[18] = 2048;
      *&v51[20] = v18;
      *&v51[28] = 2048;
      *&v51[30] = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_51:
      *v53 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v51 = 136315906;
      *&v51[4] = "operator[]";
      *&v51[12] = 1024;
      *&v51[14] = 476;
      *&v51[18] = 2048;
      *&v51[20] = v15;
      *&v51[28] = 2048;
      *&v51[30] = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_52:
      *v53 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v51 = 136315906;
      *&v51[4] = "operator[]";
      *&v51[12] = 1024;
      *&v51[14] = 476;
      *&v51[18] = 2048;
      *&v51[20] = v15;
      *&v51[28] = 2048;
      *&v51[30] = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_53:
      v50 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v53 = 136315906;
      *&v53[4] = "operator[]";
      v54 = 1024;
      v55 = 468;
      v56 = 2048;
      v57 = v18;
      v58 = 2048;
      v59 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_54:
      *v53 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v51 = 136315906;
      *&v51[4] = "operator[]";
      *&v51[12] = 1024;
      *&v51[14] = 476;
      *&v51[18] = 2048;
      *&v51[20] = v4;
      *&v51[28] = 2048;
      *&v51[30] = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_55:
      *v53 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v51 = 136315906;
      *&v51[4] = "operator[]";
      *&v51[12] = 1024;
      *&v51[14] = 468;
      *&v51[18] = 2048;
      *&v51[20] = v18;
      *&v51[28] = 2048;
      *&v51[30] = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_56:
      *v53 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v51 = 136315906;
      *&v51[4] = "operator[]";
      *&v51[12] = 1024;
      *&v51[14] = 468;
      *&v51[18] = 2048;
      *&v51[20] = v4;
      *&v51[28] = 2048;
      *&v51[30] = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_57:
      v50 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v53 = 136315906;
      *&v53[4] = "operator[]";
      v54 = 1024;
      v55 = 476;
      v56 = 2048;
      v57 = v11;
      v58 = 2048;
      v59 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_58:
      v50 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v53 = 136315906;
      *&v53[4] = "operator[]";
      v54 = 1024;
      v55 = 468;
      v56 = 2048;
      v57 = v6;
      v58 = 2048;
      v59 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_59;
    }

LABEL_26:
    if (v47)
    {
      if (v48)
      {
        (*(*v47 + 40))();
      }
    }
  }
}

uint64_t re::FixedArray<re::GenericSRT<float>>::slice(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 + 1 <= a2)
  {
    v6 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v7) = 136315906;
    *(&v7 + 4) = "slice";
    WORD6(v7) = 1024;
    HIWORD(v7) = 502;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_6;
  }

  if (__CFADD__(a2, a3))
  {
LABEL_6:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 508, a2, a3, v4, v6, v7);
    _os_crash();
    __break(1u);
LABEL_7:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 512, a2, a3, v4);
    _os_crash();
    __break(1u);
  }

  if (a2 + a3 > v4)
  {
    goto LABEL_7;
  }

  return *(a1 + 16) + 48 * a2;
}

void re::SkeletalPoseJointDefinition::~SkeletalPoseJointDefinition(re::SkeletalPoseJointDefinition *this)
{
  *this = &unk_1F5CB1B88;
  v2 = (this + 24);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 29);
  re::FixedArray<re::StringID>::deinit(this + 26);
  re::Skeleton::~Skeleton(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB1B88;
  v2 = (this + 24);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 29);
  re::FixedArray<re::StringID>::deinit(this + 26);
  re::Skeleton::~Skeleton(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

unint64_t *re::FixedArray<re::StringID>::FixedArray(unint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::StringID>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::StringID>::copy(a1, a2);
  }

  return a1;
}

unint64_t *re::FixedArray<re::StringID>::copy(unint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      result = result[2];
      v4 = 16 * v2;
      do
      {
        v5 = re::StringID::operator=(result, v3);
        v3 += 2;
        result = v5 + 2;
        v4 -= 16;
      }

      while (v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t *re::FixedArray<unsigned int>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<int>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<unsigned int>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<unsigned int>::copy(void *result, uint64_t a2)
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

uint64_t *re::FixedArray<re::FixedArray<unsigned int>>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::FixedArray<unsigned int>>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::FixedArray<unsigned int>>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::FixedArray<re::FixedArray<unsigned int>>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      v4 = *(result + 16);
      v5 = 24 * v2;
      do
      {
        result = re::FixedArray<unsigned int>::operator=(v4, v3);
        v3 += 24;
        v4 += 3;
        v5 -= 24;
      }

      while (v5);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t *re::FixedArray<unsigned int>::operator=(uint64_t *a1, uint64_t a2)
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
      re::FixedArray<unsigned int>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *re::FixedArray<re::Matrix4x4<float>>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::Matrix4x4<float>>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::Matrix4x4<float>>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v4, v5);
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
  }

  return a1;
}

re::StringID *re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::StringID *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        result = re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        v7 = *(a2 + 16);
        *(v10 + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

unint64_t *re::FixedArray<re::StringID>::operator=(unint64_t *a1, uint64_t a2)
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
      re::FixedArray<re::StringID>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::StringID>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *re::FixedArray<re::FixedArray<unsigned int>>::operator=(uint64_t *a1, uint64_t a2)
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
      re::FixedArray<re::FixedArray<unsigned int>>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::FixedArray<unsigned int>>::copy(a1, a2);
    }
  }

  return a1;
}

re::StringID *re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(re::StringID *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
        ++*(a1 + 10);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v5, v6);
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

void re::anonymous namespace::SkeletalPoseJointBindPointImpl::~SkeletalPoseJointBindPointImpl(re::_anonymous_namespace_::SkeletalPoseJointBindPointImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<re::anonymous namespace::SkeletalPoseJointBindPointImpl>::copyInto(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_1F5CB1BD0;
  a2[1] = v4;
  result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), a1 + 2);
  a2[7] = a1[7];
  return result;
}

uint64_t re::internal::BindPointImpl<re::anonymous namespace::SkeletalPoseJointBindPointImpl>::moveInto(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_1F5CB1BD0;
  a2[1] = v4;
  result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), a1 + 2);
  a2[7] = a1[7];
  return result;
}

BOOL re::internal::BindPointImpl<re::anonymous namespace::SkeletalPoseJointBindPointImpl>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != "@")
  {
    return 0;
  }

  result = re::BindPoint::operator==((a1 + 8), (a2 + 1));
  if (result)
  {
    return *(a1 + 56) == a2[7];
  }

  return result;
}

uint64_t re::anonymous namespace::SkeletalPoseJointBindPointImpl::hash(void *a1)
{
  if (a1[4])
  {
    v2 = re::BindPoint::baseValueUntyped((a1 + 1));
  }

  else
  {
    v2 = 0;
  }

  return (a1[7] + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
}

uint64_t re::anonymous namespace::SkeletalPoseJointBindPointImpl::targetIdentifier(uint64_t a1)
{
  result = re::BindPoint::baseValueUntyped((a1 + 8));
  if (result)
  {
    v3 = *(a1 + 56);
    if (*(result + 24) <= v3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return *(result + 32) + 48 * v3;
  }

  return result;
}

uint64_t re::anonymous namespace::SkeletalPoseJointBindPointImpl::baseValueUntyped(uint64_t a1)
{
  result = re::BindPoint::baseValueUntyped((a1 + 8));
  if (result)
  {
    v3 = *(a1 + 56);
    if (*(result + 24) <= v3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return *(result + 32) + 48 * v3;
  }

  return result;
}

uint64_t re::anonymous namespace::SkeletalPoseJointBindPointImpl::overrideValueUntyped(uint64_t a1)
{
  result = re::BindPoint::overrideValueUntyped((a1 + 8));
  if (result)
  {
    v3 = *(a1 + 56);
    if (*(result + 24) <= v3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return *(result + 32) + 48 * v3;
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

uint64_t re::IntrospectionDynamicArray<BOOL>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info, 0);
  *(&qword_1EE186908 + 6) = 0;
  qword_1EE186908 = 0;
  *&xmmword_1EE186918 = 0;
  *(&xmmword_1EE186918 + 1) = 0xFFFFFFFFLL;
  re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info = &unk_1F5CADA48;
  qword_1EE186930 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE186928);
  re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info = &unk_1F5CB1CA8;
  return result;
}

void *re::IntrospectionDynamicArray<BOOL>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<BOOL>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<BOOL>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<BOOL>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<BOOL>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<BOOL>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<BOOL>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<BOOL>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<BOOL>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<BOOL>::add(this, &v10);
  v8 = (*(this + 4) + *(this + 2) - 1);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<BOOL>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + a3;
}

void re::DynamicArray<BOOL>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<BOOL>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      bzero((*(a1 + 32) + v4), v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::DynamicArray<BOOL>::add(void *this, _BYTE *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<BOOL>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + v4) = *a2;
  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<BOOL>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<BOOL>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<BOOL>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<BOOL>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<BOOL>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<BOOL>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v12);
    re::TypeInfo::TypeInfo(v11, &v13);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      do
      {
        re::TypeInfo::destruct(v11, v10, a3, 0);
        re::TypeInfo::construct(v11, v10++, a3, 0);
        --v9;
      }

      while (v9);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::FixedArray<re::GenericSRT<float>>::copy(void *result, uint64_t a2, const void *a3, uint64_t a4)
{
  if (__CFADD__(a2, a4))
  {
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 362, result[1], a2, a4);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 + a4) > result[1])
  {
LABEL_9:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Too much data to copy.", "requiredSize <= m_size", "copy", 363);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (a4)
  {
    v4 = (result[2] + 48 * a2);

    return memmove(v4, a3, 48 * a4);
  }

  return result;
}

void re::registerIKinemaAnimNodes(re *this, re::RigEnvironment *a2)
{
  v3 = 0;
  v4 = *this;
  do
  {
    v5 = strlen((&re::registerIKinemaAnimNodes(re::RigEnvironment *)::kCustomStructs)[v3]);
    v30[0] = (&re::registerIKinemaAnimNodes(re::RigEnvironment *)::kCustomStructs)[v3];
    v30[1] = v5;
    re::RigDataTypeClass::rigDataTypeParser(v4, v30, v33);
    re::StringID::StringID(v29, &v35);
    re::RigEnvironment::insertRigDataType(this, v29, &v34, v30);
    if (v29[0])
    {
      if (v29[0])
      {
      }
    }

    if (v30[0] & 1) == 0 && v31 && (v32)
    {
      (*(*v31 + 40))();
    }

    re::Result<re::RigDataTypeClass,re::DetailedError>::~Result(v33);
    ++v3;
  }

  while (v3 != 7);
  re::internal::registerMakeIKTask(this, v7);
  re::internal::registerMakeIKLookAtTask(this, v8);
  re::internal::registerMakeIKPenetrationCorrectionTask(this, v9);
  re::internal::registerMakeIKRigJointSettings(this, v10);
  re::internal::registerMakeIKRigTaskSettings(this, v11);
  re::internal::registerMakeIKRigSolverSettings(this, v12);
  re::internal::registerMakeIKRetargetingOffset(this, v13);
  re::internal::registerGenericSolverNode(this, v14);
  re::internal::registerGenericSolverNoLookAtNode(this, v15);
  re::internal::registerGenericSolverWithRigSettingsDebug(this, v16);
  re::internal::registerIKParametersComponentNode(this, v17);
  re::internal::registerFootPlacementSolverNoLookAtNode(this, v18);
  re::internal::registerFootPlacementSolverNode(this, v19);
  re::internal::registerFootPlacementSolverDebugNode(this, v20);
  re::internal::registerRetargetingSolverNode(this, v21);
  re::internal::registerPenetrationCorrectionSolverNode(this, v22);
  re::internal::registerArvinoToArvinoRetargetNode(this, v23);
  re::internal::registerBipedToBipedRetargetNode(this, v24);
  re::internal::registerBipedToBipedRetargetWithOffsetNode(this, v25);
  re::internal::registerFeetSlidingSolverNode(this, v26);
  re::internal::registerFilterSolverNode(this, v27);
  re::internal::registerFloorLevelSolverNode(this, v28);
}

double re::AnimationClip<float>::totalDuration(uint64_t a1)
{
  if (dyld_program_sdk_at_least() && *(a1 + 164))
  {
    v2 = INFINITY;
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0.0;
      if (*(a1 + 88) == 1)
      {
        v4 = *(a1 + 96);
      }

      (*(*v3 + 40))(v3);
      if (*(a1 + 104) == 1)
      {
        v5 = *(a1 + 112);
      }

      v2 = v5 - v4;
    }

    else
    {
      v2 = 0.0;
    }
  }

  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
  }

  return *(a1 + 136) + v2 / fabsf(*(a1 + 160));
}

float re::AnimationClip<float>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0.0;
    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 96);
    }

    (*(*v4 + 40))(v4);
    if (*(a1 + 104) == 1)
    {
      v7 = *(a1 + 112);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(a1 + 144) != 1 || (v8 = *(a1 + 152), v8 == 0.0))
  {
    if (dyld_program_sdk_at_least() && *(a1 + 164))
    {
      v8 = INFINITY;
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = 0.0;
        if (*(a1 + 88) == 1)
        {
          v10 = *(a1 + 96);
        }

        (*(*v9 + 40))(v9);
        if (*(a1 + 104) == 1)
        {
          v11 = *(a1 + 112);
        }

        v8 = v11 - v10;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v12 = v8;
  v13 = *(a1 + 136);
  *a2 = v13;
  *(a2 + 4) = v12;
  v14 = *(a1 + 160);
  if (*(a1 + 128))
  {
    v14 = -v14;
  }

  v15 = v5;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  result = v7;
  v17 = *(a1 + 120);
  *(a2 + 16) = result;
  *(a2 + 20) = v17;
  *(a2 + 24) = *(a1 + 164);
  *(a2 + 25) = *(a1 + 16);
  return result;
}

uint64_t re::AnimationClip<float>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
{
  if ((*(*a1 + 24))(a1) != 1)
  {
    return a1;
  }

  v9 = re::internal::TimelineTree::source(a4, a5 + 1);
  if (!(*(*v9 + 88))(v9))
  {
    return a1;
  }

  v10 = (*(*a2 + 32))(a2, 168, 8);
  *v10 = &unk_1F5CAD3A8;
  v11 = *(a1 + 16);
  *(v10 + 8) = *(a1 + 8);
  *(v10 + 16) = v11;
  re::StringID::StringID((v10 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v10 + 40), (a1 + 40));
  *(v10 + 72) = *(a1 + 72);
  *v10 = &unk_1F5CB1D40;
  *(v10 + 80) = *(a1 + 80);
  v12 = *(a1 + 88);
  *(v10 + 88) = v12;
  if (v12 == 1)
  {
    *(v10 + 96) = *(a1 + 96);
  }

  v13 = *(a1 + 104);
  *(v10 + 104) = v13;
  if (v13 == 1)
  {
    *(v10 + 112) = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  *(v10 + 136) = *(a1 + 136);
  *(v10 + 120) = v14;
  v15 = *(a1 + 144);
  *(v10 + 144) = v15;
  if (v15 == 1)
  {
    *(v10 + 152) = *(a1 + 152);
  }

  v16 = *(a1 + 160);
  *(v10 + 164) = *(a1 + 164);
  *(v10 + 160) = v16;
  *(v10 + 80) = re::internal::TimelineTree::source(a4, a5 + 1);
  *(v10 + 165) = 1;
  return v10;
}

uint64_t re::AnimationClip<float>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, float *a4, uint64_t a5, float *a6)
{
  v47 = a2;
  v48 = a3;
  if (a3)
  {
    v8 = result;
    v9 = *(result + 80);
    if (!v9)
    {
      v18 = *a4;
LABEL_22:
      *a6 = v18;
      return result;
    }

    if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v16 = re::Slice<re::AnimationClock>::range(&v47, 1uLL, a3);
      return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
    }

    v46 = 0;
    if (v34[0] == 1 && v35 == 1)
    {
      v13 = *(v8 + 80);
      if (v13)
      {
        v14 = 0;
        if (*(v8 + 88) == 1)
        {
          v14 = *(v8 + 96);
        }

        (*(*v13 + 40))(v13);
        if (*(v8 + 104) == 1)
        {
          v15 = *(v8 + 112);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v36 = 0;
      v39 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v45 = 2;
      v34[0] = 3;
      v37 = 1;
      v38 = v14;
      v44 = 0;
      v40 = 1065353216;
      v24 = 0;
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v33 = 2;
      v23[0] = 3;
      v25 = 1;
      v26 = v15;
      v32 = 0;
      v28 = 1065353216;
      if (*(v8 + 128))
      {
        v19 = &v46;
      }

      else
      {
        v19 = &v46 + 4;
      }

      if (*(v8 + 128))
      {
        v20 = &v46 + 4;
      }

      else
      {
        v20 = &v46;
      }

      (*(*v9 + 112))(v9, v34, 1, a4, a5, v19);
      (*(*v9 + 112))(v9, v23, 1, a4, a5, v20);
      *(&v46 + 1) = (*&v46 - *(&v46 + 1)) * floorf(*(a2 + 64));
      v21 = re::Slice<re::AnimationClock>::range(&v47, 1uLL, v48);
      result = (*(*v9 + 112))(v9, v21, v22, a4, a5, a6);
      v18 = *a6 + *(&v46 + 1);
      goto LABEL_22;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
  result = _os_crash();
  __break(1u);
  return result;
}

double re::AnimationClip<double>::totalDuration(uint64_t a1)
{
  if (dyld_program_sdk_at_least() && *(a1 + 164))
  {
    v2 = INFINITY;
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0.0;
      if (*(a1 + 88) == 1)
      {
        v4 = *(a1 + 96);
      }

      (*(*v3 + 40))(v3);
      if (*(a1 + 104) == 1)
      {
        v5 = *(a1 + 112);
      }

      v2 = v5 - v4;
    }

    else
    {
      v2 = 0.0;
    }
  }

  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
  }

  return *(a1 + 136) + v2 / fabsf(*(a1 + 160));
}

float re::AnimationClip<double>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0.0;
    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 96);
    }

    (*(*v4 + 40))(v4);
    if (*(a1 + 104) == 1)
    {
      v7 = *(a1 + 112);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(a1 + 144) != 1 || (v8 = *(a1 + 152), v8 == 0.0))
  {
    if (dyld_program_sdk_at_least() && *(a1 + 164))
    {
      v8 = INFINITY;
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = 0.0;
        if (*(a1 + 88) == 1)
        {
          v10 = *(a1 + 96);
        }

        (*(*v9 + 40))(v9);
        if (*(a1 + 104) == 1)
        {
          v11 = *(a1 + 112);
        }

        v8 = v11 - v10;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v12 = v8;
  v13 = *(a1 + 136);
  *a2 = v13;
  *(a2 + 4) = v12;
  v14 = *(a1 + 160);
  if (*(a1 + 128))
  {
    v14 = -v14;
  }

  v15 = v5;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  result = v7;
  v17 = *(a1 + 120);
  *(a2 + 16) = result;
  *(a2 + 20) = v17;
  *(a2 + 24) = *(a1 + 164);
  *(a2 + 25) = *(a1 + 16);
  return result;
}

uint64_t re::AnimationClip<double>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
{
  if ((*(*a1 + 24))(a1) != 1)
  {
    return a1;
  }

  v9 = re::internal::TimelineTree::source(a4, a5 + 1);
  if (!(*(*v9 + 88))(v9))
  {
    return a1;
  }

  v10 = (*(*a2 + 32))(a2, 168, 8);
  *v10 = &unk_1F5CAD3A8;
  v11 = *(a1 + 16);
  *(v10 + 8) = *(a1 + 8);
  *(v10 + 16) = v11;
  re::StringID::StringID((v10 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v10 + 40), (a1 + 40));
  *(v10 + 72) = *(a1 + 72);
  *v10 = &unk_1F5CB1DD8;
  *(v10 + 80) = *(a1 + 80);
  v12 = *(a1 + 88);
  *(v10 + 88) = v12;
  if (v12 == 1)
  {
    *(v10 + 96) = *(a1 + 96);
  }

  v13 = *(a1 + 104);
  *(v10 + 104) = v13;
  if (v13 == 1)
  {
    *(v10 + 112) = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  *(v10 + 136) = *(a1 + 136);
  *(v10 + 120) = v14;
  v15 = *(a1 + 144);
  *(v10 + 144) = v15;
  if (v15 == 1)
  {
    *(v10 + 152) = *(a1 + 152);
  }

  v16 = *(a1 + 160);
  *(v10 + 164) = *(a1 + 164);
  *(v10 + 160) = v16;
  *(v10 + 80) = re::internal::TimelineTree::source(a4, a5 + 1);
  *(v10 + 165) = 1;
  return v10;
}

uint64_t re::AnimationClip<double>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, double *a4, uint64_t a5, double *a6)
{
  v48 = a2;
  v49 = a3;
  if (a3)
  {
    v8 = result;
    v9 = *(result + 80);
    if (!v9)
    {
      v18 = *a4;
LABEL_22:
      *a6 = v18;
      return result;
    }

    if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v16 = re::Slice<re::AnimationClock>::range(&v48, 1uLL, a3);
      return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
    }

    v46 = 0.0;
    v47 = 0.0;
    if (v34[0] == 1 && v35 == 1)
    {
      v13 = *(v8 + 80);
      if (v13)
      {
        v14 = 0;
        if (*(v8 + 88) == 1)
        {
          v14 = *(v8 + 96);
        }

        (*(*v13 + 40))(v13);
        if (*(v8 + 104) == 1)
        {
          v15 = *(v8 + 112);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v36 = 0;
      v39 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v45 = 2;
      v34[0] = 3;
      v37 = 1;
      v38 = v14;
      v44 = 0;
      v40 = 1065353216;
      v24 = 0;
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v33 = 2;
      v23[0] = 3;
      v25 = 1;
      v26 = v15;
      v32 = 0;
      v28 = 1065353216;
      if (*(v8 + 128))
      {
        v19 = &v46;
      }

      else
      {
        v19 = &v47;
      }

      if (*(v8 + 128))
      {
        v20 = &v47;
      }

      else
      {
        v20 = &v46;
      }

      (*(*v9 + 112))(v9, v34, 1, a4, a5, v19);
      (*(*v9 + 112))(v9, v23, 1, a4, a5, v20);
      v47 = (v46 - v47) * vcvtms_s32_f32(*(a2 + 64));
      v21 = re::Slice<re::AnimationClock>::range(&v48, 1uLL, v49);
      result = (*(*v9 + 112))(v9, v21, v22, a4, a5, a6);
      v18 = *a6 + v47;
      goto LABEL_22;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
  result = _os_crash();
  __break(1u);
  return result;
}

double re::AnimationClip<re::Vector2<float>>::totalDuration(uint64_t a1)
{
  if (dyld_program_sdk_at_least() && *(a1 + 164))
  {
    v2 = INFINITY;
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0.0;
      if (*(a1 + 88) == 1)
      {
        v4 = *(a1 + 96);
      }

      (*(*v3 + 40))(v3);
      if (*(a1 + 104) == 1)
      {
        v5 = *(a1 + 112);
      }

      v2 = v5 - v4;
    }

    else
    {
      v2 = 0.0;
    }
  }

  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
  }

  return *(a1 + 136) + v2 / fabsf(*(a1 + 160));
}

float re::AnimationClip<re::Vector2<float>>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0.0;
    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 96);
    }

    (*(*v4 + 40))(v4);
    if (*(a1 + 104) == 1)
    {
      v7 = *(a1 + 112);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(a1 + 144) != 1 || (v8 = *(a1 + 152), v8 == 0.0))
  {
    if (dyld_program_sdk_at_least() && *(a1 + 164))
    {
      v8 = INFINITY;
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = 0.0;
        if (*(a1 + 88) == 1)
        {
          v10 = *(a1 + 96);
        }

        (*(*v9 + 40))(v9);
        if (*(a1 + 104) == 1)
        {
          v11 = *(a1 + 112);
        }

        v8 = v11 - v10;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v12 = v8;
  v13 = *(a1 + 136);
  *a2 = v13;
  *(a2 + 4) = v12;
  v14 = *(a1 + 160);
  if (*(a1 + 128))
  {
    v14 = -v14;
  }

  v15 = v5;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  result = v7;
  v17 = *(a1 + 120);
  *(a2 + 16) = result;
  *(a2 + 20) = v17;
  *(a2 + 24) = *(a1 + 164);
  *(a2 + 25) = *(a1 + 16);
  return result;
}

uint64_t re::AnimationClip<re::Vector2<float>>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
{
  if ((*(*a1 + 24))(a1) != 1)
  {
    return a1;
  }

  v9 = re::internal::TimelineTree::source(a4, a5 + 1);
  if (!(*(*v9 + 88))(v9))
  {
    return a1;
  }

  v10 = (*(*a2 + 32))(a2, 168, 8);
  *v10 = &unk_1F5CAD3A8;
  v11 = *(a1 + 16);
  *(v10 + 8) = *(a1 + 8);
  *(v10 + 16) = v11;
  re::StringID::StringID((v10 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v10 + 40), (a1 + 40));
  *(v10 + 72) = *(a1 + 72);
  *v10 = &unk_1F5CB1E70;
  *(v10 + 80) = *(a1 + 80);
  v12 = *(a1 + 88);
  *(v10 + 88) = v12;
  if (v12 == 1)
  {
    *(v10 + 96) = *(a1 + 96);
  }

  v13 = *(a1 + 104);
  *(v10 + 104) = v13;
  if (v13 == 1)
  {
    *(v10 + 112) = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  *(v10 + 136) = *(a1 + 136);
  *(v10 + 120) = v14;
  v15 = *(a1 + 144);
  *(v10 + 144) = v15;
  if (v15 == 1)
  {
    *(v10 + 152) = *(a1 + 152);
  }

  v16 = *(a1 + 160);
  *(v10 + 164) = *(a1 + 164);
  *(v10 + 160) = v16;
  *(v10 + 80) = re::internal::TimelineTree::source(a4, a5 + 1);
  *(v10 + 165) = 1;
  return v10;
}

uint64_t re::AnimationClip<re::Vector2<float>>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, float32x2_t *a4, uint64_t a5, float32x2_t *a6)
{
  v47 = a2;
  v48 = a3;
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_23:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(result + 80);
  if (!v9)
  {
    *a6 = *a4;
    return result;
  }

  if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
  {
    v16 = re::Slice<re::AnimationClock>::range(&v47, 1uLL, a3);
    return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
  }

  v45 = 0;
  v46 = 0;
  if (v33[0] != 1 || v34 != 1)
  {
    goto LABEL_23;
  }

  v13 = *(v8 + 80);
  if (v13)
  {
    v14 = 0;
    if (*(v8 + 88) == 1)
    {
      v14 = *(v8 + 96);
    }

    (*(*v13 + 40))(v13);
    if (*(v8 + 104) == 1)
    {
      v15 = *(v8 + 112);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v35 = 0;
  v38 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v44 = 2;
  v33[0] = 3;
  v36 = 1;
  v37 = v14;
  v43 = 0;
  v39 = 1065353216;
  v23 = 0;
  v26 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v32 = 2;
  v22[0] = 3;
  v24 = 1;
  v25 = v15;
  v31 = 0;
  v27 = 1065353216;
  if (*(v8 + 128))
  {
    v18 = &v45;
  }

  else
  {
    v18 = &v46;
  }

  if (*(v8 + 128))
  {
    v19 = &v46;
  }

  else
  {
    v19 = &v45;
  }

  (*(*v9 + 112))(v9, v33, 1, a4, a5, v18);
  (*(*v9 + 112))(v9, v22, 1, a4, a5, v19);
  v46 = vmul_n_f32(vsub_f32(v45, v46), floorf(*(a2 + 64)));
  v20 = re::Slice<re::AnimationClock>::range(&v47, 1uLL, v48);
  result = (*(*v9 + 112))(v9, v20, v21, a4, a5, a6);
  *a6 = vadd_f32(*a6, v46);
  return result;
}

double re::AnimationClip<re::Vector3<float>>::totalDuration(uint64_t a1)
{
  if (dyld_program_sdk_at_least() && *(a1 + 164))
  {
    v2 = INFINITY;
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0.0;
      if (*(a1 + 88) == 1)
      {
        v4 = *(a1 + 96);
      }

      (*(*v3 + 40))(v3);
      if (*(a1 + 104) == 1)
      {
        v5 = *(a1 + 112);
      }

      v2 = v5 - v4;
    }

    else
    {
      v2 = 0.0;
    }
  }

  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
  }

  return *(a1 + 136) + v2 / fabsf(*(a1 + 160));
}

float re::AnimationClip<re::Vector3<float>>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0.0;
    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 96);
    }

    (*(*v4 + 40))(v4);
    if (*(a1 + 104) == 1)
    {
      v7 = *(a1 + 112);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(a1 + 144) != 1 || (v8 = *(a1 + 152), v8 == 0.0))
  {
    if (dyld_program_sdk_at_least() && *(a1 + 164))
    {
      v8 = INFINITY;
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = 0.0;
        if (*(a1 + 88) == 1)
        {
          v10 = *(a1 + 96);
        }

        (*(*v9 + 40))(v9);
        if (*(a1 + 104) == 1)
        {
          v11 = *(a1 + 112);
        }

        v8 = v11 - v10;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v12 = v8;
  v13 = *(a1 + 136);
  *a2 = v13;
  *(a2 + 4) = v12;
  v14 = *(a1 + 160);
  if (*(a1 + 128))
  {
    v14 = -v14;
  }

  v15 = v5;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  result = v7;
  v17 = *(a1 + 120);
  *(a2 + 16) = result;
  *(a2 + 20) = v17;
  *(a2 + 24) = *(a1 + 164);
  *(a2 + 25) = *(a1 + 16);
  return result;
}

uint64_t re::AnimationClip<re::Vector3<float>>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
{
  if ((*(*a1 + 24))(a1) != 1)
  {
    return a1;
  }

  v9 = re::internal::TimelineTree::source(a4, a5 + 1);
  if (!(*(*v9 + 88))(v9))
  {
    return a1;
  }

  v10 = (*(*a2 + 32))(a2, 168, 8);
  *v10 = &unk_1F5CAD3A8;
  v11 = *(a1 + 16);
  *(v10 + 8) = *(a1 + 8);
  *(v10 + 16) = v11;
  re::StringID::StringID((v10 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v10 + 40), (a1 + 40));
  *(v10 + 72) = *(a1 + 72);
  *v10 = &unk_1F5CB1F08;
  *(v10 + 80) = *(a1 + 80);
  v12 = *(a1 + 88);
  *(v10 + 88) = v12;
  if (v12 == 1)
  {
    *(v10 + 96) = *(a1 + 96);
  }

  v13 = *(a1 + 104);
  *(v10 + 104) = v13;
  if (v13 == 1)
  {
    *(v10 + 112) = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  *(v10 + 136) = *(a1 + 136);
  *(v10 + 120) = v14;
  v15 = *(a1 + 144);
  *(v10 + 144) = v15;
  if (v15 == 1)
  {
    *(v10 + 152) = *(a1 + 152);
  }

  v16 = *(a1 + 160);
  *(v10 + 164) = *(a1 + 164);
  *(v10 + 160) = v16;
  *(v10 + 80) = re::internal::TimelineTree::source(a4, a5 + 1);
  *(v10 + 165) = 1;
  return v10;
}

uint64_t re::AnimationClip<re::Vector3<float>>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v48 = a2;
  v49 = a3;
  if (a3)
  {
    v8 = result;
    v9 = *(result + 80);
    if (!v9)
    {
      v18 = *a4;
LABEL_22:
      *a6 = v18;
      return result;
    }

    if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v16 = re::Slice<re::AnimationClock>::range(&v48, 1uLL, a3);
      return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
    }

    v46 = 0u;
    v47 = 0u;
    if (v34[0] == 1 && v35 == 1)
    {
      v13 = *(v8 + 80);
      if (v13)
      {
        v14 = 0;
        if (*(v8 + 88) == 1)
        {
          v14 = *(v8 + 96);
        }

        (*(*v13 + 40))(v13);
        if (*(v8 + 104) == 1)
        {
          v15 = *(v8 + 112);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v36 = 0;
      v39 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v45 = 2;
      v34[0] = 3;
      v37 = 1;
      v38 = v14;
      v44 = 0;
      v40 = 1065353216;
      v24 = 0;
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v33 = 2;
      v23[0] = 3;
      v25 = 1;
      v26 = v15;
      v32 = 0;
      v28 = 1065353216;
      if (*(v8 + 128))
      {
        v19 = &v46;
      }

      else
      {
        v19 = &v47;
      }

      if (*(v8 + 128))
      {
        v20 = &v47;
      }

      else
      {
        v20 = &v46;
      }

      (*(*v9 + 112))(v9, v34, 1, a4, a5, v19);
      (*(*v9 + 112))(v9, v23, 1, a4, a5, v20);
      v47 = vmulq_n_f32(vsubq_f32(v46, v47), floorf(*(a2 + 64)));
      v21 = re::Slice<re::AnimationClock>::range(&v48, 1uLL, v49);
      result = (*(*v9 + 112))(v9, v21, v22, a4, a5, a6);
      v18 = vaddq_f32(*a6, v47);
      goto LABEL_22;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
  result = _os_crash();
  __break(1u);
  return result;
}

double re::AnimationClip<re::Vector4<float>>::totalDuration(uint64_t a1)
{
  if (dyld_program_sdk_at_least() && *(a1 + 164))
  {
    v2 = INFINITY;
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0.0;
      if (*(a1 + 88) == 1)
      {
        v4 = *(a1 + 96);
      }

      (*(*v3 + 40))(v3);
      if (*(a1 + 104) == 1)
      {
        v5 = *(a1 + 112);
      }

      v2 = v5 - v4;
    }

    else
    {
      v2 = 0.0;
    }
  }

  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
  }

  return *(a1 + 136) + v2 / fabsf(*(a1 + 160));
}

float re::AnimationClip<re::Vector4<float>>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0.0;
    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 96);
    }

    (*(*v4 + 40))(v4);
    if (*(a1 + 104) == 1)
    {
      v7 = *(a1 + 112);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(a1 + 144) != 1 || (v8 = *(a1 + 152), v8 == 0.0))
  {
    if (dyld_program_sdk_at_least() && *(a1 + 164))
    {
      v8 = INFINITY;
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = 0.0;
        if (*(a1 + 88) == 1)
        {
          v10 = *(a1 + 96);
        }

        (*(*v9 + 40))(v9);
        if (*(a1 + 104) == 1)
        {
          v11 = *(a1 + 112);
        }

        v8 = v11 - v10;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v12 = v8;
  v13 = *(a1 + 136);
  *a2 = v13;
  *(a2 + 4) = v12;
  v14 = *(a1 + 160);
  if (*(a1 + 128))
  {
    v14 = -v14;
  }

  v15 = v5;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  result = v7;
  v17 = *(a1 + 120);
  *(a2 + 16) = result;
  *(a2 + 20) = v17;
  *(a2 + 24) = *(a1 + 164);
  *(a2 + 25) = *(a1 + 16);
  return result;
}

uint64_t re::AnimationClip<re::Vector4<float>>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
{
  if ((*(*a1 + 24))(a1) != 1)
  {
    return a1;
  }

  v9 = re::internal::TimelineTree::source(a4, a5 + 1);
  if (!(*(*v9 + 88))(v9))
  {
    return a1;
  }

  v10 = (*(*a2 + 32))(a2, 168, 8);
  *v10 = &unk_1F5CAD3A8;
  v11 = *(a1 + 16);
  *(v10 + 8) = *(a1 + 8);
  *(v10 + 16) = v11;
  re::StringID::StringID((v10 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v10 + 40), (a1 + 40));
  *(v10 + 72) = *(a1 + 72);
  *v10 = &unk_1F5CB1FA0;
  *(v10 + 80) = *(a1 + 80);
  v12 = *(a1 + 88);
  *(v10 + 88) = v12;
  if (v12 == 1)
  {
    *(v10 + 96) = *(a1 + 96);
  }

  v13 = *(a1 + 104);
  *(v10 + 104) = v13;
  if (v13 == 1)
  {
    *(v10 + 112) = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  *(v10 + 136) = *(a1 + 136);
  *(v10 + 120) = v14;
  v15 = *(a1 + 144);
  *(v10 + 144) = v15;
  if (v15 == 1)
  {
    *(v10 + 152) = *(a1 + 152);
  }

  v16 = *(a1 + 160);
  *(v10 + 164) = *(a1 + 164);
  *(v10 + 160) = v16;
  *(v10 + 80) = re::internal::TimelineTree::source(a4, a5 + 1);
  *(v10 + 165) = 1;
  return v10;
}

uint64_t re::AnimationClip<re::Vector4<float>>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v48 = a2;
  v49 = a3;
  if (a3)
  {
    v8 = result;
    v9 = *(result + 80);
    if (!v9)
    {
      v18 = *a4;
LABEL_22:
      *a6 = v18;
      return result;
    }

    if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v16 = re::Slice<re::AnimationClock>::range(&v48, 1uLL, a3);
      return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
    }

    v46 = 0u;
    v47 = 0u;
    if (v34[0] == 1 && v35 == 1)
    {
      v13 = *(v8 + 80);
      if (v13)
      {
        v14 = 0;
        if (*(v8 + 88) == 1)
        {
          v14 = *(v8 + 96);
        }

        (*(*v13 + 40))(v13);
        if (*(v8 + 104) == 1)
        {
          v15 = *(v8 + 112);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v36 = 0;
      v39 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v45 = 2;
      v34[0] = 3;
      v37 = 1;
      v38 = v14;
      v44 = 0;
      v40 = 1065353216;
      v24 = 0;
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v33 = 2;
      v23[0] = 3;
      v25 = 1;
      v26 = v15;
      v32 = 0;
      v28 = 1065353216;
      if (*(v8 + 128))
      {
        v19 = &v46;
      }

      else
      {
        v19 = &v47;
      }

      if (*(v8 + 128))
      {
        v20 = &v47;
      }

      else
      {
        v20 = &v46;
      }

      (*(*v9 + 112))(v9, v34, 1, a4, a5, v19);
      (*(*v9 + 112))(v9, v23, 1, a4, a5, v20);
      v47 = vmulq_n_f32(vsubq_f32(v46, v47), floorf(*(a2 + 64)));
      v21 = re::Slice<re::AnimationClock>::range(&v48, 1uLL, v49);
      result = (*(*v9 + 112))(v9, v21, v22, a4, a5, a6);
      v18 = vaddq_f32(*a6, v47);
      goto LABEL_22;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
  result = _os_crash();
  __break(1u);
  return result;
}

double re::AnimationClip<re::Quaternion<float>>::totalDuration(uint64_t a1)
{
  if (dyld_program_sdk_at_least() && *(a1 + 164))
  {
    v2 = INFINITY;
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0.0;
      if (*(a1 + 88) == 1)
      {
        v4 = *(a1 + 96);
      }

      (*(*v3 + 40))(v3);
      if (*(a1 + 104) == 1)
      {
        v5 = *(a1 + 112);
      }

      v2 = v5 - v4;
    }

    else
    {
      v2 = 0.0;
    }
  }

  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
  }

  return *(a1 + 136) + v2 / fabsf(*(a1 + 160));
}

float re::AnimationClip<re::Quaternion<float>>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0.0;
    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 96);
    }

    (*(*v4 + 40))(v4);
    if (*(a1 + 104) == 1)
    {
      v7 = *(a1 + 112);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(a1 + 144) != 1 || (v8 = *(a1 + 152), v8 == 0.0))
  {
    if (dyld_program_sdk_at_least() && *(a1 + 164))
    {
      v8 = INFINITY;
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = 0.0;
        if (*(a1 + 88) == 1)
        {
          v10 = *(a1 + 96);
        }

        (*(*v9 + 40))(v9);
        if (*(a1 + 104) == 1)
        {
          v11 = *(a1 + 112);
        }

        v8 = v11 - v10;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v12 = v8;
  v13 = *(a1 + 136);
  *a2 = v13;
  *(a2 + 4) = v12;
  v14 = *(a1 + 160);
  if (*(a1 + 128))
  {
    v14 = -v14;
  }

  v15 = v5;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  result = v7;
  v17 = *(a1 + 120);
  *(a2 + 16) = result;
  *(a2 + 20) = v17;
  *(a2 + 24) = *(a1 + 164);
  *(a2 + 25) = *(a1 + 16);
  return result;
}

uint64_t re::AnimationClip<re::Quaternion<float>>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
{
  if ((*(*a1 + 24))(a1) != 1)
  {
    return a1;
  }

  v9 = re::internal::TimelineTree::source(a4, a5 + 1);
  if (!(*(*v9 + 88))(v9))
  {
    return a1;
  }

  v10 = (*(*a2 + 32))(a2, 168, 8);
  *v10 = &unk_1F5CAD3A8;
  v11 = *(a1 + 16);
  *(v10 + 8) = *(a1 + 8);
  *(v10 + 16) = v11;
  re::StringID::StringID((v10 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v10 + 40), (a1 + 40));
  *(v10 + 72) = *(a1 + 72);
  *v10 = &unk_1F5CB2038;
  *(v10 + 80) = *(a1 + 80);
  v12 = *(a1 + 88);
  *(v10 + 88) = v12;
  if (v12 == 1)
  {
    *(v10 + 96) = *(a1 + 96);
  }

  v13 = *(a1 + 104);
  *(v10 + 104) = v13;
  if (v13 == 1)
  {
    *(v10 + 112) = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  *(v10 + 136) = *(a1 + 136);
  *(v10 + 120) = v14;
  v15 = *(a1 + 144);
  *(v10 + 144) = v15;
  if (v15 == 1)
  {
    *(v10 + 152) = *(a1 + 152);
  }

  v16 = *(a1 + 160);
  *(v10 + 164) = *(a1 + 164);
  *(v10 + 160) = v16;
  *(v10 + 80) = re::internal::TimelineTree::source(a4, a5 + 1);
  *(v10 + 165) = 1;
  return v10;
}

uint64_t re::AnimationClip<re::Quaternion<float>>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, int32x4_t *a4, uint64_t a5, int32x4_t *a6)
{
  v79 = a2;
  v80 = a3;
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_31:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(result + 80);
  if (!v9)
  {
    *a6 = *a4;
    return result;
  }

  if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
  {
    v16 = re::Slice<re::AnimationClock>::range(&v79, 1uLL, a3);
    return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
  }

  v77 = xmmword_1E30474D0;
  v78 = xmmword_1E30474D0;
  if (v65[0] != 1 || v66 != 1)
  {
    goto LABEL_31;
  }

  v13 = *(v8 + 80);
  if (v13)
  {
    v14 = 0;
    if (*(v8 + 88) == 1)
    {
      v14 = *(v8 + 96);
    }

    (*(*v13 + 40))(v13);
    if (*(v8 + 104) == 1)
    {
      v15 = *(v8 + 112);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v67 = 0;
  v70 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v76 = 2;
  v65[0] = 3;
  v68 = 1;
  v69 = v14;
  v75 = 0;
  v71 = 1065353216;
  v55 = 0;
  v58 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v64 = 2;
  v54[0] = 3;
  v56 = 1;
  v57 = v15;
  v63 = 0;
  v59 = 1065353216;
  if (*(v8 + 128))
  {
    v18 = &v77;
  }

  else
  {
    v18 = &v78;
  }

  if (*(v8 + 128))
  {
    v19 = &v78;
  }

  else
  {
    v19 = &v77;
  }

  (*(*v9 + 112))(v9, v65, 1, a4, a5, v18);
  (*(*v9 + 112))(v9, v54, 1, a4, a5, v19);
  _V2.S[3] = HIDWORD(v77);
  v21 = vnegq_f32(v78);
  _S4 = HIDWORD(v78);
  __asm { FMLA            S0, S4, V2.S[3] }

  v28 = floorf(*(a2 + 64));
  v29 = fabsf(_S0);
  if (v29 > 1.0 && fabsf(v29 + -1.0) >= (((v29 + 1.0) + 1.0) * 0.00001))
  {
    v37.i64[0] = 0x3F0000003FLL;
    v37.i64[1] = 0x3F0000003FLL;
    v32 = vnegq_f32(v37);
  }

  else
  {
    v30 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(v77)), vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v78);
    v31 = vmlaq_laneq_f32(vmlsq_laneq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v78, v77, 3), v77, v78, 3);
    v32 = v31;
    v32.f32[3] = _S0;
    v33 = vmulq_f32(v32, v32);
    v34 = sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
    if (fabsf(v34) >= 0.00001)
    {
      v50 = v31;
      v52 = v28;
      v35 = atanf(v34 / _S0);
      v28 = v52;
      v36 = v35 / v34;
      *v32.f32 = vmul_n_f32(*v50.f32, v36);
      v32.i32[2] = vmuls_lane_f32(v36, v50, 2);
    }

    v32.i32[3] = 0;
  }

  v38 = vmulq_n_f32(v32, v28);
  v39 = vmulq_f32(v38, v38);
  v40 = sqrtf(v39.f32[2] + vaddv_f32(*v39.f32));
  v51 = v38.f32[2];
  v53 = *v38.f32;
  if (v40 > 0.00001)
  {
    v41 = sinf(v40) / v40;
    v53 = vmul_n_f32(v53, v41);
    v51 = v51 * v41;
  }

  v42 = cosf(v40);
  *&v78 = v53;
  *(&v78 + 2) = v51;
  *(&v78 + 3) = v42;
  v43 = re::Slice<re::AnimationClock>::range(&v79, 1uLL, v80);
  result = (*(*v9 + 112))(v9, v43, v44, a4, a5, a6);
  _Q0 = v78;
  _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a6, *a6), *a6, 0xCuLL), vnegq_f32(v78)), *a6, vextq_s8(vuzp1q_s32(_Q0, _Q0), v78, 0xCuLL));
  v47 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), *a6, v78, 3);
  _Q3.i32[0] = HIDWORD(*a6);
  v48 = vmlaq_laneq_f32(v47, v78, *a6, 3);
  __asm { FMLA            S1, S3, V0.S[3] }

  v48.i32[3] = _S1;
  *a6 = v48;
  return result;
}

double re::AnimationClip<re::GenericSRT<float>>::totalDuration(uint64_t a1)
{
  if (dyld_program_sdk_at_least() && *(a1 + 164))
  {
    v2 = INFINITY;
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0.0;
      if (*(a1 + 88) == 1)
      {
        v4 = *(a1 + 96);
      }

      (*(*v3 + 40))(v3);
      if (*(a1 + 104) == 1)
      {
        v5 = *(a1 + 112);
      }

      v2 = v5 - v4;
    }

    else
    {
      v2 = 0.0;
    }
  }

  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
  }

  return *(a1 + 136) + v2 / fabsf(*(a1 + 160));
}

float re::AnimationClip<re::GenericSRT<float>>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0.0;
    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 96);
    }

    (*(*v4 + 40))(v4);
    if (*(a1 + 104) == 1)
    {
      v7 = *(a1 + 112);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(a1 + 144) != 1 || (v8 = *(a1 + 152), v8 == 0.0))
  {
    if (dyld_program_sdk_at_least() && *(a1 + 164))
    {
      v8 = INFINITY;
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = 0.0;
        if (*(a1 + 88) == 1)
        {
          v10 = *(a1 + 96);
        }

        (*(*v9 + 40))(v9);
        if (*(a1 + 104) == 1)
        {
          v11 = *(a1 + 112);
        }

        v8 = v11 - v10;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v12 = v8;
  v13 = *(a1 + 136);
  *a2 = v13;
  *(a2 + 4) = v12;
  v14 = *(a1 + 160);
  if (*(a1 + 128))
  {
    v14 = -v14;
  }

  v15 = v5;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  result = v7;
  v17 = *(a1 + 120);
  *(a2 + 16) = result;
  *(a2 + 20) = v17;
  *(a2 + 24) = *(a1 + 164);
  *(a2 + 25) = *(a1 + 16);
  return result;
}

uint64_t re::AnimationClip<re::GenericSRT<float>>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
{
  if ((*(*a1 + 24))(a1) != 1)
  {
    return a1;
  }

  v9 = re::internal::TimelineTree::source(a4, a5 + 1);
  if (!(*(*v9 + 88))(v9))
  {
    return a1;
  }

  v10 = (*(*a2 + 32))(a2, 168, 8);
  *v10 = &unk_1F5CAD3A8;
  v11 = *(a1 + 16);
  *(v10 + 8) = *(a1 + 8);
  *(v10 + 16) = v11;
  re::StringID::StringID((v10 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v10 + 40), (a1 + 40));
  *(v10 + 72) = *(a1 + 72);
  *v10 = &unk_1F5CB20D0;
  *(v10 + 80) = *(a1 + 80);
  v12 = *(a1 + 88);
  *(v10 + 88) = v12;
  if (v12 == 1)
  {
    *(v10 + 96) = *(a1 + 96);
  }

  v13 = *(a1 + 104);
  *(v10 + 104) = v13;
  if (v13 == 1)
  {
    *(v10 + 112) = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  *(v10 + 136) = *(a1 + 136);
  *(v10 + 120) = v14;
  v15 = *(a1 + 144);
  *(v10 + 144) = v15;
  if (v15 == 1)
  {
    *(v10 + 152) = *(a1 + 152);
  }

  v16 = *(a1 + 160);
  *(v10 + 164) = *(a1 + 164);
  *(v10 + 160) = v16;
  *(v10 + 80) = re::internal::TimelineTree::source(a4, a5 + 1);
  *(v10 + 165) = 1;
  return v10;
}

void re::AnimationClip<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v78 = a2;
  v79 = a3;
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_23:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
    _os_crash();
    __break(1u);
    return;
  }

  v9 = *(a1 + 80);
  if (!v9)
  {
    v18 = *a4;
    v19 = a4[2];
    *(a6 + 16) = a4[1];
    *(a6 + 32) = v19;
    *a6 = v18;
    return;
  }

  if (*(a1 + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
  {
    v16 = re::Slice<re::AnimationClock>::range(&v78, 1uLL, a3);
    (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
    return;
  }

  v75.i64[0] = 0x3F8000003F800000;
  v75.i64[1] = 1065353216;
  v76.i64[0] = 0;
  v76.i64[1] = 0x3F80000000000000;
  v77 = 0uLL;
  v72.i64[0] = 0x3F8000003F800000;
  v72.i64[1] = 1065353216;
  v73.i64[0] = 0;
  v73.i64[1] = 0x3F80000000000000;
  v74 = 0uLL;
  if (v60[0] != 1 || v61 != 1)
  {
    goto LABEL_23;
  }

  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    if (*(a1 + 88) == 1)
    {
      v14 = *(a1 + 96);
    }

    (*(*v13 + 40))(v13);
    if (*(a1 + 104) == 1)
    {
      v15 = *(a1 + 112);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v62 = 0;
  v65 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v71 = 2;
  v60[0] = 3;
  v63 = 1;
  v64 = v14;
  v70 = 0;
  v66 = 1065353216;
  v50 = 0;
  v53 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v59 = 2;
  v49[0] = 3;
  v51 = 1;
  v52 = v15;
  v58 = 0;
  v54 = 1065353216;
  if (*(a1 + 128))
  {
    v20 = &v72;
  }

  else
  {
    v20 = &v75;
  }

  if (*(a1 + 128))
  {
    v21 = &v75;
  }

  else
  {
    v21 = &v72;
  }

  (*(*v9 + 112))(v9, v60, 1, a4, a5, v20);
  (*(*v9 + 112))(v9, v49, 1, a4, a5, v21);
  __asm { FMOV            V3.4S, #1.0 }

  v27 = vdivq_f32(_Q3, v75);
  v28 = vnegq_f32(v76);
  v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
  v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v76), v77, v29);
  v31 = vaddq_f32(v30, v30);
  v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
  _S7 = v76.i32[3];
  v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v76), v32, v29);
  v35 = vmulq_f32(vaddq_f32(vaddq_f32(v77, vmulq_laneq_f32(v32, v76, 3)), vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL)), vnegq_f32(v27));
  _Q6 = v73;
  v37 = vmulq_f32(v27, v72);
  v38 = vextq_s8(vuzp1q_s32(_Q6, _Q6), v73, 0xCuLL);
  v39 = vnegq_f32(v73);
  v40 = vmlsq_f32(vmulq_f32(v29, v39), v38, v76);
  v41 = vmlaq_laneq_f32(vmlsq_laneq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), v76, v73, 3), v73, v76, 3);
  __asm { FMLA            S1, S7, V6.S[3] }

  v41.i32[3] = _S1;
  v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v39), v35, v38);
  v44 = vaddq_f32(v43, v43);
  v45 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
  v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), v39), v45, v38);
  v75 = v37;
  v76 = v41;
  v77 = vaddq_f32(v74, vmulq_f32(v72, vaddq_f32(vaddq_f32(v35, vmulq_laneq_f32(v45, v73, 3)), vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL))));
  v37.i32[0] = *(a2 + 64);
  re::AnimationValueTraits<re::GenericSRT<float>>::repeat(&v75, vcvtms_s32_f32(v37.f32[0]), &v75, v37);
  v47 = re::Slice<re::AnimationClock>::range(&v78, 1uLL, v79);
  (*(*v9 + 112))(v9, v47, v48, a4, a5, a6);
  re::AnimationValueTraits<re::GenericSRT<float>>::combine(a6, &v75, a6);
}

float32x4_t re::AnimationValueTraits<re::GenericSRT<float>>::repeat(float32x4_t *a1, unsigned int a2, float32x4_t *a3, float32x4_t result)
{
  if (a2)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v6 = a1[1];
      v7 = a1[2];
      __asm { FMOV            V3.4S, #1.0 }

      v13 = vdivq_f32(_Q3, *a1);
      v14 = vnegq_f32(v6);
      v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
      v14.i32[3] = v6.i32[3];
      v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v6), v7, v15);
      v17 = vaddq_f32(v16, v16);
      v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
      v19 = vaddq_f32(v7, vmulq_laneq_f32(v18, v6, 3));
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v6), v18, v15);
      *a3 = v13;
      a3[1] = v14;
      a3[2] = vmulq_f32(vaddq_f32(v19, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL)), vnegq_f32(v13));
      a2 = -a2;
    }

    else
    {
      v4 = *a1;
      v5 = a1[2];
      a3[1] = a1[1];
      a3[2] = v5;
      *a3 = v4;
    }

    v21 = *a3;
    if (a2 <= 1)
    {
      v23 = xmmword_1E30474D0;
      v22 = xmmword_1E304F3C0;
      _Q3 = a3[1];
      v24 = a3[2];
      v26 = 0uLL;
    }

    else
    {
      v22 = xmmword_1E304F3C0;
      v23 = xmmword_1E30474D0;
      _Q3 = a3[1];
      v24 = a3[2];
      v26 = 0uLL;
      v27 = *a3;
      do
      {
        v21 = vmulq_f32(v27, v27);
        v28 = vuzp1q_s32(_Q3, _Q3);
        v29 = vnegq_f32(_Q3);
        _S17 = _Q3.i32[3];
        v31 = vuzp1q_s32(v24, v24);
        if (a2)
        {
          v22 = vmulq_f32(v22, v27);
          v40 = vextq_s8(v28, _Q3, 0xCuLL);
          v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v29), v23, v40);
          _S20 = v23.i32[3];
          v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), v23, _Q3, 3), _Q3, v23, 3);
          __asm { FMLA            S5, S20, V3.S[3] }

          v43.i32[3] = _S5;
          v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v29), v26, v40);
          v46 = vaddq_f32(v45, v45);
          v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
          _Q20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL), v29), v47, v40);
          v26 = vaddq_f32(v24, vmulq_f32(v27, vaddq_f32(vaddq_f32(v26, vmulq_laneq_f32(v47, _Q3, 3)), vextq_s8(vuzp1q_s32(_Q20, _Q20), _Q20, 0xCuLL))));
          v49 = vmlaq_f32(vmulq_f32(v40, v29), _Q3, v40);
          v50 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), _Q3, _Q3, 3), _Q3, _Q3, 3);
          __asm { FMLA            S20, S17, V3.S[3] }

          v50.i32[3] = _Q20.i32[0];
          v51 = vmlaq_f32(vmulq_f32(vextq_s8(v31, v24, 0xCuLL), v29), v24, v40);
          v52 = vaddq_f32(v51, v51);
          v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
          v54 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), v29), v53, v40);
          v24 = vaddq_f32(v24, vmulq_f32(v27, vaddq_f32(vaddq_f32(v24, vmulq_laneq_f32(v53, _Q3, 3)), vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL))));
          --a2;
          _Q3 = v50;
          v23 = v43;
        }

        else
        {
          v32 = vextq_s8(v28, _Q3, 0xCuLL);
          v33 = vmlaq_f32(vmulq_f32(v32, v29), _Q3, v32);
          v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), _Q3, _Q3, 3), _Q3, _Q3, 3);
          __asm { FMLA            S20, S17, V3.S[3] }

          v34.i32[3] = _S20;
          v36 = vmlaq_f32(vmulq_f32(vextq_s8(v31, v24, 0xCuLL), v29), v24, v32);
          v37 = vaddq_f32(v36, v36);
          v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
          v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), v29), v38, v32);
          v24 = vaddq_f32(v24, vmulq_f32(v27, vaddq_f32(vaddq_f32(v24, vmulq_laneq_f32(v38, _Q3, 3)), vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL))));
          _Q3 = v34;
        }

        v27 = v21;
        v55 = a2 > 2;
        a2 >>= 1;
      }

      while (v55);
    }

    v56 = vmulq_f32(v21, v22);
    v57 = vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL);
    v58 = vnegq_f32(_Q3);
    v59 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v58), v23, v57);
    _S17 = v23.i32[3];
    v61 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL), v23, _Q3, 3), _Q3, v23, 3);
    __asm { FMLA            S5, S17, V3.S[3] }

    v61.i32[3] = _S5;
    v63 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v58), v26, v57);
    v64 = vaddq_f32(v63, v63);
    v65 = vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL);
    v66 = vaddq_f32(v26, vmulq_laneq_f32(v65, _Q3, 3));
    v67 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), v58), v65, v57);
    result = vaddq_f32(v24, vmulq_f32(v21, vaddq_f32(v66, vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL))));
    *a3 = v56;
    a3[1] = v61;
    a3[2] = result;
  }

  else
  {
    a3->i64[0] = 0x3F8000003F800000;
    a3->i64[1] = 1065353216;
    a3[1].i64[0] = 0;
    a3[1].i64[1] = 0x3F80000000000000;
    a3[2].i64[0] = 0;
    a3[2].i64[1] = 0;
  }

  return result;
}

double re::AnimationClip<re::SkeletalPose>::totalDuration(uint64_t a1)
{
  if (dyld_program_sdk_at_least() && *(a1 + 164))
  {
    v2 = INFINITY;
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0.0;
      if (*(a1 + 88) == 1)
      {
        v4 = *(a1 + 96);
      }

      (*(*v3 + 40))(v3);
      if (*(a1 + 104) == 1)
      {
        v5 = *(a1 + 112);
      }

      v2 = v5 - v4;
    }

    else
    {
      v2 = 0.0;
    }
  }

  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
  }

  return *(a1 + 136) + v2 / fabsf(*(a1 + 160));
}

float re::AnimationClip<re::SkeletalPose>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0.0;
    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 96);
    }

    (*(*v4 + 40))(v4);
    if (*(a1 + 104) == 1)
    {
      v7 = *(a1 + 112);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(a1 + 144) != 1 || (v8 = *(a1 + 152), v8 == 0.0))
  {
    if (dyld_program_sdk_at_least() && *(a1 + 164))
    {
      v8 = INFINITY;
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = 0.0;
        if (*(a1 + 88) == 1)
        {
          v10 = *(a1 + 96);
        }

        (*(*v9 + 40))(v9);
        if (*(a1 + 104) == 1)
        {
          v11 = *(a1 + 112);
        }

        v8 = v11 - v10;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v12 = v8;
  v13 = *(a1 + 136);
  *a2 = v13;
  *(a2 + 4) = v12;
  v14 = *(a1 + 160);
  if (*(a1 + 128))
  {
    v14 = -v14;
  }

  v15 = v5;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  result = v7;
  v17 = *(a1 + 120);
  *(a2 + 16) = result;
  *(a2 + 20) = v17;
  *(a2 + 24) = *(a1 + 164);
  *(a2 + 25) = *(a1 + 16);
  return result;
}

uint64_t re::AnimationClip<re::SkeletalPose>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
{
  if ((*(*a1 + 24))(a1) != 1)
  {
    return a1;
  }

  v9 = re::internal::TimelineTree::source(a4, a5 + 1);
  if (!(*(*v9 + 88))(v9))
  {
    return a1;
  }

  v10 = (*(*a2 + 32))(a2, 168, 8);
  *v10 = &unk_1F5CAD3A8;
  v11 = *(a1 + 16);
  *(v10 + 8) = *(a1 + 8);
  *(v10 + 16) = v11;
  re::StringID::StringID((v10 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v10 + 40), (a1 + 40));
  *(v10 + 72) = *(a1 + 72);
  *v10 = &unk_1F5CB2168;
  *(v10 + 80) = *(a1 + 80);
  v12 = *(a1 + 88);
  *(v10 + 88) = v12;
  if (v12 == 1)
  {
    *(v10 + 96) = *(a1 + 96);
  }

  v13 = *(a1 + 104);
  *(v10 + 104) = v13;
  if (v13 == 1)
  {
    *(v10 + 112) = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  *(v10 + 136) = *(a1 + 136);
  *(v10 + 120) = v14;
  v15 = *(a1 + 144);
  *(v10 + 144) = v15;
  if (v15 == 1)
  {
    *(v10 + 152) = *(a1 + 152);
  }

  v16 = *(a1 + 160);
  *(v10 + 164) = *(a1 + 164);
  *(v10 + 160) = v16;
  *(v10 + 80) = re::internal::TimelineTree::source(a4, a5 + 1);
  *(v10 + 165) = 1;
  return v10;
}

void *re::AnimationClip<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v59[0] = a2;
  v59[1] = a3;
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    a1 = _os_crash();
    __break(1u);
LABEL_10:
    v13 = a1;
    v52[0] = 0;
    v52[1] = &str_67;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v45[0] = 0;
    v45[1] = &str_67;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    re::AnimationValueTraits<re::SkeletalPose>::init(v52, v7);
    re::AnimationValueTraits<re::SkeletalPose>::init(v45, v7);
    if (v33[0] == 1 && v34 == 1)
    {
      v16 = *(v13 + 80);
      v15.n128_u64[0] = 0;
      v17 = 0;
      if (v16)
      {
        if (*(v13 + 88) == 1)
        {
          v17 = *(v13 + 96);
        }

        (*(*v16 + 40))(v16, v15);
        if (*(v13 + 104) == 1)
        {
          v15.n128_u64[0] = *(v13 + 112);
        }
      }

      v35 = 0;
      v38 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v44 = 2;
      v33[0] = 3;
      v36 = 1;
      v37 = v17;
      v43 = 0;
      v39 = 1065353216;
      v23 = 0;
      v26 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v32 = 2;
      v22[0] = 3;
      v24 = 1;
      v25 = v15.n128_u64[0];
      v31 = 0;
      v27 = 1065353216;
      if (*(v13 + 128))
      {
        v18 = v45;
      }

      else
      {
        v18 = v52;
      }

      if (*(v13 + 128))
      {
        v19 = v52;
      }

      else
      {
        v19 = v45;
      }

      (*(*v8 + 112))(v8, v33, 1, v7, v6, v18);
      (*(*v8 + 112))(v8, v22, 1, v7, v6, v19);
      re::AnimationValueTraits<re::SkeletalPose>::invert(v52, v52);
      *&v20 = re::AnimationValueTraits<re::SkeletalPose>::combine(v52, v45, v52).u64[0];
      re::internal::assertLog(4, v21, v20, "assertion failure: '%s' (%s:line %i) Not yet implemented.", "!Unreachable code", "repeat", 308);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = a4;
  v8 = *(a1 + 80);
  if (v8)
  {
    v6 = a5;
    if (*(a1 + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v10 = re::Slice<re::AnimationClock>::range(v59, 1uLL, a3);
      return (*(*v8 + 112))(v8, v10, v11, v7, v6, a6);
    }

    goto LABEL_10;
  }

  return re::AnimationValueTraits<re::SkeletalPose>::copy(a4, a6);
}

void *re::AnimationClip<float>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<float>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<double>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<double>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::Vector2<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::Vector2<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::Vector3<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::Vector3<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::Vector4<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::Vector4<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::Quaternion<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::Quaternion<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::GenericSRT<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::GenericSRT<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::SkeletalPose>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::SkeletalPose>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_AudioAnimationState(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_21, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_21))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190A30, "AudioAnimationState");
    __cxa_guard_release(&_MergedGlobals_21);
  }

  return &unk_1EE190A30;
}

void re::initInfo_AudioAnimationState(re *this, re::IntrospectionBase *a2)
{
  v23[0] = 0x2D5905E6F33A1986;
  v23[1] = "AudioAnimationState";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1909F0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1909F0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "speed";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE190A10 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_double(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "time";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 2;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE190A18 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "prepared";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0xC00000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE190A20 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_size_t(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "animationCounter";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x1000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE190A28 = v21;
      __cxa_guard_release(&qword_1EE1909F0);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE190A10;
  *(this + 9) = re::internal::defaultConstruct<re::AudioAnimationState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioAnimationState>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioAnimationState>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioAnimationState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

void re::internal::defaultConstruct<re::AudioAnimationState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::AudioAnimationState>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t re::AudioAnimationTimeline::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(a2 + 24);
    v9 = v8;
    if (*(result + 80) <= v9)
    {
      v11 = *(result + 88);
      v12 = v11 == v9;
      v13 = v11 < v9;
      if (v11 <= v9)
      {
        v9 = 0.0;
      }

      *a6 = v9;
      *(a6 + 8) = *(a2 + 36);
      if (v13 || v12)
      {
        v10 = 0;
      }

      else
      {
        v10 = *(a2 + 40);
      }
    }

    else
    {
      v10 = 0;
      *a6 = 0;
      *(a6 + 8) = *(a2 + 36);
    }

    *(a6 + 16) = v10;
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

float32x2_t re::AudioAnimationTimeline::timelineDesc@<D0>(float64x2_t *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1065353216;
  *(a2 + 20) = 0;
  v2 = this[5];
  *(a2 + 24) = 0;
  v3 = vsubq_f64(vdupq_laneq_s64(v2, 1), v2).f64[0];
  *(a2 + 4) = v3;
  result = vcvt_f32_f64(v2);
  *(a2 + 12) = result;
  return result;
}

double re::AudioAnimationTimeline::makeCompositionChain(re::AudioAnimationTimeline *this, Allocator *a2)
{
  v2 = (*(a2->var0 + 4))(a2, 176, 8);
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 168) = 0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 144) = 0;
  *(v2 + 156) = 0;
  *(v2 + 80) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *v2 = &unk_1F5CB23A0;
  return result;
}

uint64_t re::internal::AudioAnimationTimelineCompositionChain::update(re::internal::AudioAnimationTimelineCompositionChain *this)
{
  result = re::internal::AnimationCompositionChain<re::AudioAnimationState>::update(this);
  *(this + 156) = *(this + 168);
  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::update(uint64_t result)
{
  v115 = *MEMORY[0x1E69E9840];
  v96 = *(result + 72);
  if (v96)
  {
    v6 = result;
    result = re::BindPoint::isAlive((result + 8));
    if (result)
    {
      v7 = re::BindPoint::supportsOverrideValue((v6 + 8));
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v90 = v7;
      if (v7)
      {
        v7 = re::BindPoint::baseValueUntyped((v6 + 8));
        v8 = v7;
      }

      else
      {
        v107 = 1;
        v106 = 0;
        v8 = &v103;
      }

      if (*(v6 + 112) == 1)
      {
        *(v6 + 144) = *(v6 + 120);
        *(v6 + 160) = *(v6 + 136);
      }

      else
      {
        v9 = *v8;
        *(v6 + 160) = *(v8 + 16);
        *(v6 + 144) = v9;
      }

      v10 = re::animationLogObjects(v7);
      result = re::AnimationLogObjects::loggingEnabled(v10);
      if (result)
      {
LABEL_110:
        v2 = *re::animationLogObjects(result);
        result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v79 = re::BindPoint::overrideValueUntyped((v6 + 8));
          *buf = 134217984;
          *&buf[4] = v79;
          _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "ANIM: -------------- Target: %p -----------------\n", buf, 0xCu);
        }
      }

      v101 = 0u;
      v102 = 0u;
      if (*(v6 + 72))
      {
        v1 = 0;
        v5 = 0;
        v11 = 0;
        v93 = 0;
        v12 = *(*(v6 + 88) + 16);
        v92 = v6 + 144;
        v89 = v8;
        v98 = v8;
        v99 = 0;
        v100 = 0;
        v13 = 0.0;
        v14 = 0.0;
        v88 = 136315138;
        v91 = v90;
        while (1)
        {
          v8 = *(v6 + 72);
          if (v8 <= v5)
          {
            v97[0] = 0;
            v114 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v108 = 136315906;
            *&v108[4] = "operator[]";
            *&v108[12] = 1024;
            *&v108[14] = 789;
            v109 = 2048;
            v110 = v5;
            v111 = 2048;
            v112 = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_105:
            re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_106:
            v97[0] = 0;
            v114 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v108 = 136315906;
            *&v108[4] = "operator[]";
            *&v108[12] = 1024;
            *&v108[14] = 476;
            v109 = 2048;
            v110 = v4;
            v111 = 2048;
            v112 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_107:
            v97[0] = 0;
            v114 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v108 = 136315906;
            *&v108[4] = "operator[]";
            *&v108[12] = 1024;
            *&v108[14] = 789;
            v109 = 2048;
            v110 = v5;
            v111 = 2048;
            v112 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_108:
            v97[0] = 0;
            v114 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v108 = 136315906;
            *&v108[4] = "operator[]";
            *&v108[12] = 1024;
            *&v108[14] = 789;
            v109 = 2048;
            v110 = v5;
            v111 = 2048;
            v112 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_109:
            v97[0] = 0;
            v114 = 0u;
            memset(buf, 0, sizeof(buf));
            v6 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v108 = 136315906;
            *&v108[4] = "operator[]";
            *&v108[12] = 1024;
            *&v108[14] = 789;
            v109 = 2048;
            v110 = v5;
            v111 = 2048;
            v112 = v11;
            _os_log_send_and_compose_impl();
            result = _os_crash_msg();
            __break(1u);
            goto LABEL_110;
          }

          v15 = *(v6 + 88) + v1;
          v8 = *(v15 + 16);
          if (((v12 != v8) & v11) == 1)
          {
            v11 = 0;
            v16 = (v14 + *(v6 + 152)) * 0.5;
            v17 = (v93 | *(v6 + 156)) & 1;
            *(v6 + 144) = (v13 + *(v6 + 144)) * 0.5;
            *(v6 + 152) = v16;
            *(v6 + 156) = v17;
            *(v6 + 160) = 0;
          }

          v3 = *v15;
          v18 = *(v15 + 8);
          v19 = re::animationLogObjects(result);
          v20 = re::AnimationLogObjects::loggingEnabled(v19);
          if (v20)
          {
            v49 = *re::animationLogObjects(v20);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v3 + 48))
              {
                v50 = *(v3 + 56);
              }

              else
              {
                v50 = v3 + 49;
              }

              *buf = 134218754;
              *&buf[4] = v5;
              *&buf[12] = 2048;
              *&buf[14] = v3;
              *&buf[22] = 1024;
              *&buf[24] = v18;
              *&buf[28] = 2080;
              *&buf[30] = v50;
              _os_log_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEFAULT, "ANIM: #%zu: %p(%d) %s\n", buf, 0x26u);
            }
          }

          ClocksOfSubtree = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, v18);
          if (!v22)
          {
            goto LABEL_105;
          }

          v23 = ClocksOfSubtree;
          v24 = v22;
          v4 = v18;
          result = re::internal::TimelineTree::source(v3, v18);
          v25 = result;
          if ((v23[16] & 1) == 0)
          {
            v28 = re::animationLogObjects(result);
            v29 = re::AnimationLogObjects::loggingEnabled(v28);
            if (v29)
            {
              log = *re::animationLogObjects(v29);
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                v95 = v8;
                v8 = v11;
                v51 = *(re::internal::TimelineTree::source(v3, v4) + 32);
                if (*v23 == 2)
                {
                  v4 = "Delayed";
                }

                else
                {
                  v4 = "Completed";
                }

                *v108 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
                *&v108[8] = v52;
                v53 = re::Slice<re::AnimationClock>::operator[](v108, 0);
                if (*(v53 + 16))
                {
                  v54 = *(v53 + 24);
                }

                else
                {
                  v54 = 0;
                }

                *buf = 136315650;
                *&buf[4] = v51;
                v11 = v8;
                LODWORD(v8) = v95;
                *&buf[12] = 2080;
                *&buf[14] = v4;
                *&buf[22] = 2048;
                *&buf[24] = v54;
                _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s skipped, %s. Root Time: %f\n", buf, 0x20u);
              }
            }

            result = (*(*v25 + 112))(v25, v23, v24, v92, &v98, v92);
            goto LABEL_65;
          }

          v94 = v8;
          v8 = v11;
          v11 = *(v3 + 208);
          if (v11 <= v4)
          {
            goto LABEL_106;
          }

          v26 = *(*(v3 + 216) + 4 * v4);
          v27 = fabsf(v26);
          if (v27 < 0.00001)
          {
            break;
          }

          v30 = re::animationLogObjects(result);
          v31 = re::AnimationLogObjects::loggingEnabled(v30);
          if (v31)
          {
            v55 = *re::animationLogObjects(v31);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v85 = *(v25 + 32);
              v84 = re::BindPoint::valueUntyped((v6 + 8));
              loga = v55;
              if (v23[16] == 1)
              {
                v83 = *(v23 + 3);
              }

              else
              {
                v83 = 0;
              }

              v56 = re::internal::TimelineTree::source(v3, v4);
              v82 = (*(*v56 + 40))(v56);
              *v108 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
              *&v108[8] = v57;
              v58 = re::Slice<re::AnimationClock>::operator[](v108, 0);
              if (*(v58 + 16))
              {
                v59 = *(v58 + 24);
              }

              else
              {
                v59 = 0;
              }

              v97[0] = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
              v97[1] = v60;
              v61 = re::Slice<re::AnimationClock>::operator[](v97, 0);
              v62 = re::AnimationClock::clockStateToName(v61);
              v63 = *(v25 + 72);
              *buf = 136316674;
              *&buf[4] = v85;
              *&buf[12] = 2048;
              *&buf[14] = v84;
              *&buf[22] = 2048;
              *&buf[24] = v83;
              *&buf[32] = 2048;
              *&buf[34] = v82;
              *&buf[42] = 2048;
              *&buf[44] = v59;
              *&buf[52] = 2080;
              *&buf[54] = v62;
              *&buf[62] = 1024;
              LODWORD(v114) = v63;
              _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s, Target: %p, Clock %f / %f, Root Time: %f, ClockState: '%s', additive: %d\n", buf, 0x44u);
            }
          }

          if (v26 != 1.0 && fabsf(v26 + -1.0) >= (((v27 + 1.0) + 1.0) * 0.00001))
          {
            if ((BYTE8(v102) & 1) == 0)
            {
              BYTE8(v102) = 1;
            }

            v40 = (v6 + 144);
            if (v8)
            {
              v41 = (v14 + *(v6 + 152)) * 0.5;
              v42 = (v93 | *(v6 + 156)) & 1;
              *&v101 = (v13 + *(v6 + 144)) * 0.5;
              *(&v101 + 2) = v41;
              BYTE12(v101) = v42;
              *&v102 = 0;
              v40 = &v101;
            }

            v43 = v99;
            result = (*(*v25 + 112))(v25, v23, v24, v40, &v98, &v101);
            if (v99 != v43)
            {
              return (*(*v6 + 32))(v6);
            }

            if (*(v25 + 72))
            {
              v2 = *(v6 + 72);
              if (v2 <= v5)
              {
                goto LABEL_114;
              }

              if ((*(*(v6 + 88) + v1 + 20) & 4) != 0)
              {
                v44 = *(v6 + 144);
                v45 = *(v6 + 152);
                v46 = *(v6 + 156);
                *&v101 = (*&v101 + v44) * 0.5;
                *(&v101 + 2) = (*(&v101 + 2) + v45) * 0.5;
                BYTE12(v101) = (BYTE12(v101) | v46) & 1;
                *&v102 = 0;
                if (v8)
                {
                  v46 |= v93;
                  v45 = (v14 + v45) * 0.5;
                  v44 = (v13 + v44) * 0.5;
                }
              }

              else
              {
                v44 = *(v6 + 144);
                v45 = *(v6 + 152);
                v46 = *(v6 + 156);
                if (v8)
                {
                  v46 |= v93;
                  v45 = (v14 + v45) * 0.5;
                  v44 = (v13 + v44) * 0.5;
                }

                *&v101 = (v44 + *&v101) * 0.5;
                *(&v101 + 2) = (v45 + *(&v101 + 2)) * 0.5;
                BYTE12(v101) = (BYTE12(v101) | v46) & 1;
                *&v102 = 0;
              }
            }

            else
            {
              v44 = *(v6 + 144);
              v45 = *(v6 + 152);
              v46 = *(v6 + 156);
              if (v8)
              {
                v46 |= v93;
                v45 = (v14 + v45) * 0.5;
                v44 = (v13 + v44) * 0.5;
              }
            }

            v11 = 0;
            v47 = v46 | BYTE12(v101);
            v48 = (v26 * *(&v101 + 2)) + (v45 * (1.0 - v26));
            *(v6 + 144) = *&v101 * v26 + v44 * (1.0 - v26);
            *(v6 + 152) = v48;
            *(v6 + 156) = v47 & 1;
            *(v6 + 160) = 0;
            goto LABEL_64;
          }

          v11 = *(v6 + 72);
          if (v11 <= v5)
          {
            goto LABEL_107;
          }

          *(*(v6 + 88) + v1 + 20) &= ~4u;
          v11 = v8;
          if ((*(v25 + 72) & 1) == 0)
          {
            v100 = 1;
            result = (*(*v25 + 112))(v25, v23, v24, v92, &v98, v92);
            goto LABEL_64;
          }

          if ((BYTE8(v102) & 1) == 0)
          {
            BYTE8(v102) = 1;
          }

          v32 = (v6 + 144);
          if (v8)
          {
            v33 = (v14 + *(v6 + 152)) * 0.5;
            v34 = (v93 | *(v6 + 156)) & 1;
            *&v101 = (v13 + *(v6 + 144)) * 0.5;
            *(&v101 + 2) = v33;
            BYTE12(v101) = v34;
            *&v102 = 0;
            v32 = &v101;
          }

          result = (*(*v25 + 112))(v25, v23, v24, v32, &v98, &v101);
          if (v90)
          {
            v11 = *(v6 + 72);
            if (v11 <= v5)
            {
              goto LABEL_108;
            }

            LOBYTE(v11) = v8;
            if ((*(*(v6 + 88) + v1 + 20) & 1) != 0 && v23[32] == 1)
            {
              v68 = *&v101;
              v69 = *(&v101 + 2);
              v70 = -*(&v101 + 2);
              v71 = BYTE12(v101);
              *(v6 + 144) = -*&v101;
              *(v6 + 152) = v70;
              *(v6 + 156) = v71;
              *(v6 + 160) = 0;
              v72 = (*(v89 + 8) - v69) * 0.5;
              v73 = (v71 | *(v89 + 12)) & 1;
              *(v6 + 144) = (*v89 - v68) * 0.5;
              *(v6 + 152) = v72;
              *(v6 + 156) = v73;
              *(v6 + 160) = 0;
              v74 = re::animationLogObjects(result);
              v75 = re::AnimationLogObjects::loggingEnabled(v74);
              if (v75)
              {
                goto LABEL_115;
              }

              goto LABEL_99;
            }
          }

          if (v11)
          {
            v93 |= BYTE12(v101);
            v14 = (v14 + *(&v101 + 2)) * 0.5;
            v13 = (v13 + *&v101) * 0.5;
          }

          else
          {
            v13 = *&v101;
            v14 = *(&v101 + 2);
            v93 = BYTE12(v101);
          }

          v8 = v94;
          if (v91)
          {
            v11 = *(v6 + 72);
            if (v11 <= v5)
            {
              goto LABEL_109;
            }

            v91 = 0;
            v11 = 1;
            if ((*(*(v6 + 88) + v1 + 20) & 2) != 0 && *v23 == 5)
            {
              v35 = re::animationLogObjects(result);
              v36 = re::AnimationLogObjects::loggingEnabled(v35);
              if (v36)
              {
                v64 = *re::animationLogObjects(v36);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(v3 + 48))
                  {
                    v65 = *(v3 + 56);
                  }

                  else
                  {
                    v65 = v3 + 49;
                  }

                  *buf = 136315138;
                  *&buf[4] = v65;
                  _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (last frame) value on last frame, from composition chain.\n", buf, 0xCu);
                  LODWORD(v8) = v94;
                }
              }

              v37 = (v14 + *(v6 + 152)) * 0.5;
              v38 = (v93 | *(v6 + 156)) & 1;
              *(v6 + 144) = (v13 + *(v6 + 144)) * 0.5;
              *(v6 + 152) = v37;
              *(v6 + 156) = v38;
              *(v6 + 160) = 0;
              result = re::BindPoint::baseValueUntyped((v6 + 8));
              if (result)
              {
                v39 = *v92;
                *(result + 16) = *(v6 + 160);
                *result = v39;
                result = re::BindPoint::markAsWritten(v6 + 8);
              }

              v2 = *(v6 + 72);
              if (v2 <= v5)
              {
                goto LABEL_113;
              }

              v11 = 0;
              *(*(v6 + 88) + v1 + 20) &= ~2u;
              v91 = 1;
              *v23 = 1;
            }
          }

          else
          {
            v91 = 0;
            v11 = 1;
          }

LABEL_65:
          ++v5;
          v1 += 24;
          v12 = v8;
          if (v96 == v5)
          {
            if (v11)
            {
              v66 = v93 | *(v6 + 156);
              v67 = (v14 + *(v6 + 152)) * 0.5;
              *(v6 + 144) = (v13 + *(v6 + 144)) * 0.5;
              *(v6 + 152) = v67;
              *(v6 + 156) = v66 & 1;
              *(v6 + 160) = 0;
            }

            return result;
          }
        }

        v11 = v8;
LABEL_64:
        LODWORD(v8) = v94;
        goto LABEL_65;
      }

      v98 = 0;
      v114 = 0uLL;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v108 = 136315906;
      *&v108[4] = "operator[]";
      *&v108[12] = 1024;
      *&v108[14] = 789;
      v109 = 2048;
      v110 = 0;
      v111 = 2048;
      v112 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_113:
      v97[0] = 0;
      v114 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v108 = 136315906;
      *&v108[4] = "operator[]";
      *&v108[12] = 1024;
      *&v108[14] = 789;
      v109 = 2048;
      v110 = v5;
      v111 = 2048;
      v112 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_114:
      v97[0] = 0;
      v114 = 0u;
      memset(buf, 0, sizeof(buf));
      v6 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v108 = 136315906;
      *&v108[4] = "operator[]";
      *&v108[12] = 1024;
      *&v108[14] = 789;
      v109 = 2048;
      v110 = v5;
      v111 = 2048;
      v112 = v2;
      _os_log_send_and_compose_impl();
      v75 = _os_crash_msg();
      __break(1u);
LABEL_115:
      v80 = *re::animationLogObjects(v75);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 48))
        {
          v81 = *(v3 + 56);
        }

        else
        {
          v81 = v3 + 49;
        }

        *buf = v88;
        *&buf[4] = v81;
        _os_log_impl(&dword_1E1C61000, v80, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (first frame) value from composition chain.\n", buf, 0xCu);
      }

LABEL_99:
      v76 = re::BindPoint::baseValueUntyped((v6 + 8));
      if (v76)
      {
        v77 = *v92;
        *(v76 + 16) = *(v92 + 16);
        *v76 = v77;
        re::BindPoint::markAsWritten(v6 + 8);
      }

      v78 = *(v6 + 72);
      if (v78 <= v5)
      {
        v97[0] = 0;
        v114 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v108 = 136315906;
        *&v108[4] = "operator[]";
        *&v108[12] = 1024;
        *&v108[14] = 789;
        v109 = 2048;
        v110 = v5;
        v111 = 2048;
        v112 = v78;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(*(v6 + 88) + v1 + 20) &= ~1u;
      return (*(*v6 + 32))(v6);
    }
  }

  return result;
}
uint64_t re::anonymous namespace::storeRegisterDependenciesForType<re::Vector3<float>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 120);
  if (v7)
  {
    v14 = result;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 120);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::anonymous namespace::storeRegisterDependencies(re::EvaluationTree *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a5;
  v115 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v53[0] = &unk_1F5CCF7F8;
  v53[1] = "Scratch Pad";
  if (a2 != 255)
  {
    v14 = a7 + 24 * a4;
    v15 = *(v14 + 8);
    if (v15 <= a5)
    {
      goto LABEL_64;
    }

    v16 = a8 + 24 * a4;
    v15 = *(v16 + 8);
    if (v15 <= a5)
    {
LABEL_65:
      *&v56 = 0;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v67 = 136315906;
      *&v67[4] = "operator[]";
      *&v67[12] = 1024;
      *&v67[14] = 468;
      *&v67[18] = 2048;
      *&v67[20] = v11;
      *&v67[28] = 2048;
      *&v67[30] = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v17 = *(v14 + 16);
      v18 = (*(v16 + 16) + 16 * a5);
      v19 = *(v17 + 8 * a5) - 1;
      *(v17 + 8 * a5) = v19;
      v20 = v18[1];
      if (v20 > v19)
      {
        v21 = *v18 + 16 * v19;
        *v21 = a2;
        *(v21 + 8) = a3;
        goto LABEL_6;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v19, v20);
    _os_crash();
    __break(1u);
  }

LABEL_6:
  v22 = a6 + 24 * a4;
  v15 = *(v22 + 8);
  if (v15 <= a5)
  {
    goto LABEL_63;
  }

  v23 = *(v22 + 16);
  if ((*(v23 + a5) & 1) == 0)
  {
    *(v23 + a5) = 1;
    re::EvaluationTree::getRegister(v52, a1, a4, a5);
    v24 = &(&re::kEvaluationCommandDescriptions)[2 * v52[0]];
    v48 = *(v24 + 9);
    if (*(v24 + 9))
    {
      v25 = 0;
      v47 = v24 + 10;
      do
      {
        v26 = v47[v25];
        v27 = *&v52[2 * v25 + 2];
        v49 = v25;
        if (v26 == 253)
        {
          v33 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a1 + 1608, v27);
          v50 = *(v33 + 40);
          v51 = v33;
          if (v50)
          {
            for (i = 0; i != v50; ++i)
            {
              v34 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v51, i);
              v35 = v34[5];
              if (v35 != -1)
              {
                v36 = v35 - 0x7FFFFFFFFFFFFFFFLL;
                if (v35 - 0x7FFFFFFFFFFFFFFFLL >= 0)
                {
                  v15 = *(a1 + 88);
                  while (v15 > v36)
                  {
                    v35 = *(*(a1 + 90) + 8 * v36);
                    v36 = v35 - 0x7FFFFFFFFFFFFFFFLL;
                    if (v35 - 0x7FFFFFFFFFFFFFFFLL < 0)
                    {
                      goto LABEL_24;
                    }
                  }

                  *&v56 = 0;
                  v82 = 0u;
                  v83 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  v79 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v67 = 136315906;
                  *&v67[4] = "operator[]";
                  *&v67[12] = 1024;
                  *&v67[14] = 797;
                  *&v67[18] = 2048;
                  *&v67[20] = v36;
                  *&v67[28] = 2048;
                  *&v67[30] = v15;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_62:
                  v55 = 0;
                  v59 = 0u;
                  v60 = 0u;
                  v57 = 0u;
                  v58 = 0u;
                  v56 = 0u;
                  v11 = MEMORY[0x1E69E9C10];
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v107 = 136315906;
                  v108 = "operator[]";
                  v109 = 1024;
                  v110 = 468;
                  v111 = 2048;
                  v112 = i;
                  v113 = 2048;
                  v114 = v15;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_63:
                  *&v56 = 0;
                  v82 = 0u;
                  v83 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  v79 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v67 = 136315906;
                  *&v67[4] = "operator[]";
                  *&v67[12] = 1024;
                  *&v67[14] = 468;
                  *&v67[18] = 2048;
                  *&v67[20] = v11;
                  *&v67[28] = 2048;
                  *&v67[30] = v15;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_64:
                  *&v56 = 0;
                  v82 = 0u;
                  v83 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  v79 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v67 = 136315906;
                  *&v67[4] = "operator[]";
                  *&v67[12] = 1024;
                  *&v67[14] = 468;
                  *&v67[18] = 2048;
                  *&v67[20] = v11;
                  *&v67[28] = 2048;
                  *&v67[30] = v15;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_65;
                }

LABEL_24:
              }

              v37 = *v34;
              v38 = *(*v34 + 1304);
              *v67 = *(*v34 + 1320);
              *&v67[8] = v38;
              v39 = v37[168];
              *&v67[16] = v37[170];
              *&v67[24] = v39;
              v40 = v37[173];
              *&v67[32] = v37[175];
              v68 = v40;
              v41 = v37[178];
              v69 = v37[180];
              v70 = v41;
              v42 = v37[183];
              v71 = v37[185];
              v72 = v42;
              v43 = v37[188];
              v73 = v37[190];
              v74 = v43;
              v44 = v37[193];
              v75 = v37[195];
              v76 = v44;
              v45 = v37[200];
              v46 = v37[198];
              v77 = v45;
              v78 = v46;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              re::EvaluationTree::resolveAliasRegisters(a1, v53, v67, &v79);
              *&v56 = v80;
              *(&v56 + 1) = *(&v79 + 1);
              *&v57 = *(&v81 + 1);
              *(&v57 + 1) = v81;
              *&v58 = v83;
              *(&v58 + 1) = *(&v82 + 1);
              *&v59 = *(&v84 + 1);
              *(&v59 + 1) = v84;
              *&v60 = v86;
              *(&v60 + 1) = *(&v85 + 1);
              v61 = *(&v87 + 1);
              v62 = v87;
              v63 = v89;
              v64 = *(&v88 + 1);
              v65 = *(&v90 + 1);
              v66 = v90;
              if (*(&v89 + 1))
              {
                if (v90)
                {
                  (*(**(&v89 + 1) + 40))();
                  v90 = 0uLL;
                }

                *(&v89 + 1) = 0;
              }

              if (v88)
              {
                if (*(&v88 + 1))
                {
                  (*(*v88 + 40))();
                  *(&v88 + 1) = 0;
                  *&v89 = 0;
                }

                *&v88 = 0;
              }

              if (*(&v86 + 1))
              {
                if (v87)
                {
                  (*(**(&v86 + 1) + 40))();
                  v87 = 0uLL;
                }

                *(&v86 + 1) = 0;
              }

              if (v85)
              {
                if (*(&v85 + 1))
                {
                  (*(*v85 + 40))();
                  *(&v85 + 1) = 0;
                  *&v86 = 0;
                }

                *&v85 = 0;
              }

              if (*(&v83 + 1))
              {
                if (v84)
                {
                  (*(**(&v83 + 1) + 40))();
                  v84 = 0uLL;
                }

                *(&v83 + 1) = 0;
              }

              if (v82)
              {
                if (*(&v82 + 1))
                {
                  (*(*v82 + 40))();
                  *(&v82 + 1) = 0;
                  *&v83 = 0;
                }

                *&v82 = 0;
              }

              if (*(&v80 + 1))
              {
                if (v81)
                {
                  (*(**(&v80 + 1) + 40))();
                  v81 = 0uLL;
                }

                *(&v80 + 1) = 0;
              }

              if (v79 && *(&v79 + 1))
              {
                (*(*v79 + 40))();
              }
            }
          }
        }

        else if (v26 == 254)
        {
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          CallbackData = re::EvaluationTree::getCallbackData(a1, v27);
          re::EvaluationTree::resolveAliasRegisters(a1, v53, CallbackData, &v79);
          *v67 = *(&v80 + 1);
          *&v67[8] = v80;
          *&v67[16] = v82;
          *&v67[24] = *(&v81 + 1);
          *&v67[32] = *(&v83 + 1);
          v68 = v83;
          v69 = v85;
          v70 = *(&v84 + 1);
          v71 = *(&v86 + 1);
          v72 = v86;
          v73 = v88;
          v74 = *(&v87 + 1);
          v75 = *(&v89 + 1);
          v76 = v89;
          v77 = v91;
          v78 = *(&v90 + 1);
          v29 = v92;
          if (v92)
          {
            v30 = 0;
            i = 0;
            do
            {
              v15 = v92;
              if (v92 <= i)
              {
                goto LABEL_62;
              }

              v32 = *(&v92 + 1) + v30;
              ++i;
              v30 += 24;
            }

            while (v29 != i);
          }

          re::EvaluationCallbackData::~EvaluationCallbackData(&v79);
        }

        else
        {
        }

        v25 = v49 + 1;
      }

      while (v49 + 1 != v48);
    }
  }

  re::Allocator::~Allocator(v53);
}

uint64_t re::Result<re::Unit,re::DetailedError>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      *a1 = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 40) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 48) = *(a2 + 48);
      v3 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
      v4 = *(a2 + 40);
      *(a2 + 48) = 0;
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      *(a1 + 32) = v3;
      *(a1 + 40) = v4;
      *(a2 + 32) = v6;
      *(a2 + 40) = v5;
    }
  }

  else if (*a2)
  {
    re::DynamicString::deinit((a1 + 24));
    *a1 = 1;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    re::DynamicString::operator=((a1 + 24), (a2 + 24));
  }

  return a1;
}

void *re::EvaluationTree::getRegister(uint64_t a1, void *a2, unsigned __int8 a3, uint64_t a4)
{
  *a1 = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {

        return re::EvaluationTree::getRegister<re::Vector2<float>>(a2, a4, a1);
      }

      else
      {
        if (a3 != 7)
        {
          goto LABEL_35;
        }

        return re::EvaluationTree::getRegister<re::Vector3<float>>(a2, a4, a1);
      }
    }

    else if (a3 == 4)
    {

      return re::EvaluationTree::getRegister<re::Matrix4x4<float>>(a2, a4, a1);
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_35;
      }

      return re::EvaluationTree::getRegister<re::Quaternion<float>>(a2, a4, a1);
    }
  }

  else
  {
    if (a3 <= 1u)
    {
      if (a3)
      {

        return re::EvaluationTree::getRegister<unsigned int>(a2, a4, a1);
      }

      else
      {

        return re::EvaluationTree::getRegister<int>(a2, a4, a1);
      }
    }

    if (a3 != 2)
    {
      if (a3 == 3)
      {

        return re::EvaluationTree::getRegister<re::Matrix3x3<float>>(a2, a4, a1);
      }

LABEL_35:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 885, a3);
      result = _os_crash();
      __break(1u);
      return result;
    }

    return re::EvaluationTree::getRegister<float>(a2, a4, a1);
  }
}

void *re::EvaluationTree::getRegister<int>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  for (i = a2 - 0x7FFFFFFFFFFFFFFFLL; (v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0; i = v3 - 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result[83] <= i)
    {
      goto LABEL_52;
    }

    v3 = *(result[85] + 8 * i);
  }

  if (result[210] <= v3)
  {
LABEL_53:
    v15 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v16) = 136315906;
    *(&v16 + 4) = "operator[]";
    WORD6(v16) = 1024;
    HIWORD(v16) = 797;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v5 = (result[212] + 32 * v3);
  v6 = v5[1];
  *a3 = *v5;
  a3[1] = v6;
  v7 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v8 = *(v7 + 9);
  if (*(v7 + 9))
  {
    v9 = 0;
    v10 = v5 + 8;
    v11 = v7 + 10;
    do
    {
      v12 = *&v10[8 * v9] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = v11[v9];
        if (v11[v9] <= 3u)
        {
          if (v11[v9] <= 1u)
          {
            if (!v11[v9])
            {
              while (result[83] > v12)
              {
                v14 = *(result[85] + 8 * v12);
                v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_41;
                }
              }

              goto LABEL_45;
            }

            while (result[88] > v12)
            {
              v14 = *(result[90] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_48;
          }

          if (v13 == 2)
          {
            while (result[93] > v12)
            {
              v14 = *(result[95] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_47;
          }

          if (v13 == 3)
          {
            while (result[98] > v12)
            {
              v14 = *(result[100] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_46;
          }

          goto LABEL_54;
        }

        if (v11[v9] <= 5u)
        {
          if (v13 == 4)
          {
            while (result[103] > v12)
            {
              v14 = *(result[105] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_49;
          }

          if (v13 == 5)
          {
            while (result[108] > v12)
            {
              v14 = *(result[110] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_51;
          }

          goto LABEL_54;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            while (result[118] > v12)
            {
              v14 = *(result[120] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_46:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_47:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_48:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_50:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_51:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_52:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_53;
          }

LABEL_54:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13, v15, v16);
          _os_crash();
          __break(1u);
        }

        do
        {
          if (result[113] <= v12)
          {
            goto LABEL_50;
          }

          v14 = *(result[115] + 8 * v12);
          v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_41:
        *(a3 + v9 + 1) = v14;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

void *re::EvaluationTree::getRegister<unsigned int>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  for (i = a2 - 0x7FFFFFFFFFFFFFFFLL; (v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0; i = v3 - 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result[88] <= i)
    {
      goto LABEL_52;
    }

    v3 = *(result[90] + 8 * i);
  }

  if (result[215] <= v3)
  {
LABEL_53:
    v15 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v16) = 136315906;
    *(&v16 + 4) = "operator[]";
    WORD6(v16) = 1024;
    HIWORD(v16) = 797;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v5 = (result[217] + 32 * v3);
  v6 = v5[1];
  *a3 = *v5;
  a3[1] = v6;
  v7 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v8 = *(v7 + 9);
  if (*(v7 + 9))
  {
    v9 = 0;
    v10 = v5 + 8;
    v11 = v7 + 10;
    do
    {
      v12 = *&v10[8 * v9] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = v11[v9];
        if (v11[v9] <= 3u)
        {
          if (v11[v9] <= 1u)
          {
            if (!v11[v9])
            {
              while (result[83] > v12)
              {
                v14 = *(result[85] + 8 * v12);
                v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_41;
                }
              }

              goto LABEL_45;
            }

            while (result[88] > v12)
            {
              v14 = *(result[90] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_48;
          }

          if (v13 == 2)
          {
            while (result[93] > v12)
            {
              v14 = *(result[95] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_47;
          }

          if (v13 == 3)
          {
            while (result[98] > v12)
            {
              v14 = *(result[100] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_46;
          }

          goto LABEL_54;
        }

        if (v11[v9] <= 5u)
        {
          if (v13 == 4)
          {
            while (result[103] > v12)
            {
              v14 = *(result[105] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_49;
          }

          if (v13 == 5)
          {
            while (result[108] > v12)
            {
              v14 = *(result[110] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_51;
          }

          goto LABEL_54;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            while (result[118] > v12)
            {
              v14 = *(result[120] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_46:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_47:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_48:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_50:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_51:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_52:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_53;
          }

LABEL_54:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13, v15, v16);
          _os_crash();
          __break(1u);
        }

        do
        {
          if (result[113] <= v12)
          {
            goto LABEL_50;
          }

          v14 = *(result[115] + 8 * v12);
          v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_41:
        *(a3 + v9 + 1) = v14;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

void *re::EvaluationTree::getRegister<float>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  for (i = a2 - 0x7FFFFFFFFFFFFFFFLL; (v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0; i = v3 - 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result[93] <= i)
    {
      goto LABEL_52;
    }

    v3 = *(result[95] + 8 * i);
  }

  if (result[220] <= v3)
  {
LABEL_53:
    v15 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v16) = 136315906;
    *(&v16 + 4) = "operator[]";
    WORD6(v16) = 1024;
    HIWORD(v16) = 797;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v5 = (result[222] + 32 * v3);
  v6 = v5[1];
  *a3 = *v5;
  a3[1] = v6;
  v7 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v8 = *(v7 + 9);
  if (*(v7 + 9))
  {
    v9 = 0;
    v10 = v5 + 8;
    v11 = v7 + 10;
    do
    {
      v12 = *&v10[8 * v9] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = v11[v9];
        if (v11[v9] <= 3u)
        {
          if (v11[v9] <= 1u)
          {
            if (!v11[v9])
            {
              while (result[83] > v12)
              {
                v14 = *(result[85] + 8 * v12);
                v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_41;
                }
              }

              goto LABEL_45;
            }

            while (result[88] > v12)
            {
              v14 = *(result[90] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_48;
          }

          if (v13 == 2)
          {
            while (result[93] > v12)
            {
              v14 = *(result[95] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_47;
          }

          if (v13 == 3)
          {
            while (result[98] > v12)
            {
              v14 = *(result[100] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_46;
          }

          goto LABEL_54;
        }

        if (v11[v9] <= 5u)
        {
          if (v13 == 4)
          {
            while (result[103] > v12)
            {
              v14 = *(result[105] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_49;
          }

          if (v13 == 5)
          {
            while (result[108] > v12)
            {
              v14 = *(result[110] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_51;
          }

          goto LABEL_54;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            while (result[118] > v12)
            {
              v14 = *(result[120] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_46:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_47:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_48:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_50:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_51:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_52:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_53;
          }

LABEL_54:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13, v15, v16);
          _os_crash();
          __break(1u);
        }

        do
        {
          if (result[113] <= v12)
          {
            goto LABEL_50;
          }

          v14 = *(result[115] + 8 * v12);
          v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_41:
        *(a3 + v9 + 1) = v14;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

void *re::EvaluationTree::getRegister<re::Matrix3x3<float>>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  for (i = a2 - 0x7FFFFFFFFFFFFFFFLL; (v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0; i = v3 - 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result[98] <= i)
    {
      goto LABEL_52;
    }

    v3 = *(result[100] + 8 * i);
  }

  if (result[225] <= v3)
  {
LABEL_53:
    v15 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v16) = 136315906;
    *(&v16 + 4) = "operator[]";
    WORD6(v16) = 1024;
    HIWORD(v16) = 797;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v5 = (result[227] + 32 * v3);
  v6 = v5[1];
  *a3 = *v5;
  a3[1] = v6;
  v7 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v8 = *(v7 + 9);
  if (*(v7 + 9))
  {
    v9 = 0;
    v10 = v5 + 8;
    v11 = v7 + 10;
    do
    {
      v12 = *&v10[8 * v9] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = v11[v9];
        if (v11[v9] <= 3u)
        {
          if (v11[v9] <= 1u)
          {
            if (!v11[v9])
            {
              while (result[83] > v12)
              {
                v14 = *(result[85] + 8 * v12);
                v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_41;
                }
              }

              goto LABEL_45;
            }

            while (result[88] > v12)
            {
              v14 = *(result[90] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_48;
          }

          if (v13 == 2)
          {
            while (result[93] > v12)
            {
              v14 = *(result[95] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_47;
          }

          if (v13 == 3)
          {
            while (result[98] > v12)
            {
              v14 = *(result[100] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_46;
          }

          goto LABEL_54;
        }

        if (v11[v9] <= 5u)
        {
          if (v13 == 4)
          {
            while (result[103] > v12)
            {
              v14 = *(result[105] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_49;
          }

          if (v13 == 5)
          {
            while (result[108] > v12)
            {
              v14 = *(result[110] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_51;
          }

          goto LABEL_54;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            while (result[118] > v12)
            {
              v14 = *(result[120] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_46:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_47:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_48:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_50:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_51:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_52:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_53;
          }

LABEL_54:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13, v15, v16);
          _os_crash();
          __break(1u);
        }

        do
        {
          if (result[113] <= v12)
          {
            goto LABEL_50;
          }

          v14 = *(result[115] + 8 * v12);
          v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_41:
        *(a3 + v9 + 1) = v14;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

void *re::EvaluationTree::getRegister<re::Matrix4x4<float>>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  for (i = a2 - 0x7FFFFFFFFFFFFFFFLL; (v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0; i = v3 - 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result[103] <= i)
    {
      goto LABEL_52;
    }

    v3 = *(result[105] + 8 * i);
  }

  if (result[230] <= v3)
  {
LABEL_53:
    v15 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v16) = 136315906;
    *(&v16 + 4) = "operator[]";
    WORD6(v16) = 1024;
    HIWORD(v16) = 797;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v5 = (result[232] + 32 * v3);
  v6 = v5[1];
  *a3 = *v5;
  a3[1] = v6;
  v7 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v8 = *(v7 + 9);
  if (*(v7 + 9))
  {
    v9 = 0;
    v10 = v5 + 8;
    v11 = v7 + 10;
    do
    {
      v12 = *&v10[8 * v9] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = v11[v9];
        if (v11[v9] <= 3u)
        {
          if (v11[v9] <= 1u)
          {
            if (!v11[v9])
            {
              while (result[83] > v12)
              {
                v14 = *(result[85] + 8 * v12);
                v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_41;
                }
              }

              goto LABEL_45;
            }

            while (result[88] > v12)
            {
              v14 = *(result[90] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_48;
          }

          if (v13 == 2)
          {
            while (result[93] > v12)
            {
              v14 = *(result[95] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_47;
          }

          if (v13 == 3)
          {
            while (result[98] > v12)
            {
              v14 = *(result[100] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_46;
          }

          goto LABEL_54;
        }

        if (v11[v9] <= 5u)
        {
          if (v13 == 4)
          {
            while (result[103] > v12)
            {
              v14 = *(result[105] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_49;
          }

          if (v13 == 5)
          {
            while (result[108] > v12)
            {
              v14 = *(result[110] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_51;
          }

          goto LABEL_54;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            while (result[118] > v12)
            {
              v14 = *(result[120] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_46:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_47:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_48:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_50:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_51:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_52:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_53;
          }

LABEL_54:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13, v15, v16);
          _os_crash();
          __break(1u);
        }

        do
        {
          if (result[113] <= v12)
          {
            goto LABEL_50;
          }

          v14 = *(result[115] + 8 * v12);
          v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_41:
        *(a3 + v9 + 1) = v14;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

void *re::EvaluationTree::getRegister<re::Quaternion<float>>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  for (i = a2 - 0x7FFFFFFFFFFFFFFFLL; (v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0; i = v3 - 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result[108] <= i)
    {
      goto LABEL_52;
    }

    v3 = *(result[110] + 8 * i);
  }

  if (result[235] <= v3)
  {
LABEL_53:
    v15 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v16) = 136315906;
    *(&v16 + 4) = "operator[]";
    WORD6(v16) = 1024;
    HIWORD(v16) = 797;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v5 = (result[237] + 32 * v3);
  v6 = v5[1];
  *a3 = *v5;
  a3[1] = v6;
  v7 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v8 = *(v7 + 9);
  if (*(v7 + 9))
  {
    v9 = 0;
    v10 = v5 + 8;
    v11 = v7 + 10;
    do
    {
      v12 = *&v10[8 * v9] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = v11[v9];
        if (v11[v9] <= 3u)
        {
          if (v11[v9] <= 1u)
          {
            if (!v11[v9])
            {
              while (result[83] > v12)
              {
                v14 = *(result[85] + 8 * v12);
                v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_41;
                }
              }

              goto LABEL_45;
            }

            while (result[88] > v12)
            {
              v14 = *(result[90] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_48;
          }

          if (v13 == 2)
          {
            while (result[93] > v12)
            {
              v14 = *(result[95] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_47;
          }

          if (v13 == 3)
          {
            while (result[98] > v12)
            {
              v14 = *(result[100] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_46;
          }

          goto LABEL_54;
        }

        if (v11[v9] <= 5u)
        {
          if (v13 == 4)
          {
            while (result[103] > v12)
            {
              v14 = *(result[105] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_49;
          }

          if (v13 == 5)
          {
            while (result[108] > v12)
            {
              v14 = *(result[110] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_51;
          }

          goto LABEL_54;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            while (result[118] > v12)
            {
              v14 = *(result[120] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_46:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_47:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_48:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_50:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_51:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_52:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_53;
          }

LABEL_54:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13, v15, v16);
          _os_crash();
          __break(1u);
        }

        do
        {
          if (result[113] <= v12)
          {
            goto LABEL_50;
          }

          v14 = *(result[115] + 8 * v12);
          v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_41:
        *(a3 + v9 + 1) = v14;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

void *re::EvaluationTree::getRegister<re::Vector2<float>>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  for (i = a2 - 0x7FFFFFFFFFFFFFFFLL; (v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0; i = v3 - 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result[113] <= i)
    {
      goto LABEL_52;
    }

    v3 = *(result[115] + 8 * i);
  }

  if (result[240] <= v3)
  {
LABEL_53:
    v15 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v16) = 136315906;
    *(&v16 + 4) = "operator[]";
    WORD6(v16) = 1024;
    HIWORD(v16) = 797;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v5 = (result[242] + 32 * v3);
  v6 = v5[1];
  *a3 = *v5;
  a3[1] = v6;
  v7 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v8 = *(v7 + 9);
  if (*(v7 + 9))
  {
    v9 = 0;
    v10 = v5 + 8;
    v11 = v7 + 10;
    do
    {
      v12 = *&v10[8 * v9] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = v11[v9];
        if (v11[v9] <= 3u)
        {
          if (v11[v9] <= 1u)
          {
            if (!v11[v9])
            {
              while (result[83] > v12)
              {
                v14 = *(result[85] + 8 * v12);
                v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_41;
                }
              }

              goto LABEL_45;
            }

            while (result[88] > v12)
            {
              v14 = *(result[90] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_48;
          }

          if (v13 == 2)
          {
            while (result[93] > v12)
            {
              v14 = *(result[95] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_47;
          }

          if (v13 == 3)
          {
            while (result[98] > v12)
            {
              v14 = *(result[100] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_46;
          }

          goto LABEL_54;
        }

        if (v11[v9] <= 5u)
        {
          if (v13 == 4)
          {
            while (result[103] > v12)
            {
              v14 = *(result[105] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_49;
          }

          if (v13 == 5)
          {
            while (result[108] > v12)
            {
              v14 = *(result[110] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_51;
          }

          goto LABEL_54;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            while (result[118] > v12)
            {
              v14 = *(result[120] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_46:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_47:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_48:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_50:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_51:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_52:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_53;
          }

LABEL_54:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13, v15, v16);
          _os_crash();
          __break(1u);
        }

        do
        {
          if (result[113] <= v12)
          {
            goto LABEL_50;
          }

          v14 = *(result[115] + 8 * v12);
          v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_41:
        *(a3 + v9 + 1) = v14;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

void *re::EvaluationTree::getRegister<re::Vector3<float>>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  for (i = a2 - 0x7FFFFFFFFFFFFFFFLL; (v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0; i = v3 - 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result[118] <= i)
    {
      goto LABEL_52;
    }

    v3 = *(result[120] + 8 * i);
  }

  if (result[245] <= v3)
  {
LABEL_53:
    v15 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v16) = 136315906;
    *(&v16 + 4) = "operator[]";
    WORD6(v16) = 1024;
    HIWORD(v16) = 797;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v5 = (result[247] + 32 * v3);
  v6 = v5[1];
  *a3 = *v5;
  a3[1] = v6;
  v7 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v8 = *(v7 + 9);
  if (*(v7 + 9))
  {
    v9 = 0;
    v10 = v5 + 8;
    v11 = v7 + 10;
    do
    {
      v12 = *&v10[8 * v9] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = v11[v9];
        if (v11[v9] <= 3u)
        {
          if (v11[v9] <= 1u)
          {
            if (!v11[v9])
            {
              while (result[83] > v12)
              {
                v14 = *(result[85] + 8 * v12);
                v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_41;
                }
              }

              goto LABEL_45;
            }

            while (result[88] > v12)
            {
              v14 = *(result[90] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_48;
          }

          if (v13 == 2)
          {
            while (result[93] > v12)
            {
              v14 = *(result[95] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_47;
          }

          if (v13 == 3)
          {
            while (result[98] > v12)
            {
              v14 = *(result[100] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_46;
          }

          goto LABEL_54;
        }

        if (v11[v9] <= 5u)
        {
          if (v13 == 4)
          {
            while (result[103] > v12)
            {
              v14 = *(result[105] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_49;
          }

          if (v13 == 5)
          {
            while (result[108] > v12)
            {
              v14 = *(result[110] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_51;
          }

          goto LABEL_54;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            while (result[118] > v12)
            {
              v14 = *(result[120] + 8 * v12);
              v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_41;
              }
            }

            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_46:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_47:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_48:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_50:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_51:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_52:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_53;
          }

LABEL_54:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13, v15, v16);
          _os_crash();
          __break(1u);
        }

        do
        {
          if (result[113] <= v12)
          {
            goto LABEL_50;
          }

          v14 = *(result[115] + 8 * v12);
          v12 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_41:
        *(a3 + v9 + 1) = v14;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

void re::FixedArray<BOOL>::init<>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    v5 = (*(*a2 + 32))(a2, a3, 1);
    a1[2] = v5;
    if (v5)
    {
      v7 = v5;
      v8 = a3 - 1;
      if (v8)
      {
        bzero(v5, v8);
        v7 += v8;
      }

      *v7 = 0;
    }

    else
    {
      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }
  }
}

uint64_t re::FullBodyIKSolver::FullBodyIKSolver(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  v7 = (a1 + 80);
  v12[0] = &unk_1F5CB0660;
  v12[3] = v12;
  v13 = CoreIKGenericSolverCreate();
  v14[3] = v14;
  v14[0] = &unk_1F5CB0660;
  std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::operator=[abi:nn200100](v6, &v13);
  std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::~unique_ptr[abi:nn200100](&v13);
  std::__function::__value_func<void ()(CoreIKGenericSolver *)>::~__value_func[abi:nn200100](v12);
  re::StringID::operator=(a1, a3);
  v8 = MEMORY[0x1E6903C40](a2);
  v9 = MEMORY[0x1E6903720](a2);
  return a1;
}

uint64_t *std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(CoreIKGenericSolver *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(CoreIKGenericSolver *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

BOOL re::FullBodyIKSolver::solve(void *a1, re::RigDataValue *this, re::RigDataValue *a3)
{
  v4 = this;
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(this + 32);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      *v27 = 0x3F8000003F800000;
      *&v27[8] = 1065353216;
      *&v27[16] = 0;
      *&v27[24] = 0x3F80000000000000;
      *&v27[32] = 0;
      *&v27[40] = 0;
      v9 = re::RigDataValue::attributeValue(v4, v8);
      re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v9, v27);
      v10 = a1[14];
      if (v10 <= v8)
      {
        break;
      }

      v12 = *&v27[16];
      v11 = *&v27[24];
      v13 = *&v27[40];
      v14 = (a1[15] + v7);
      *v14 = *&v27[32];
      v14[1] = v13;
      v14[2] = v12;
      v14[3] = v11;
      ++v8;
      v7 += 32;
      if (v6 == v8)
      {
        goto LABEL_5;
      }
    }

    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v35 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v28 = 136315906;
    *&v28[4] = "operator[]";
    v29 = 1024;
    v30 = 468;
    v31 = 2048;
    v32 = v8;
    v33 = 2048;
    v34 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_22:
    *v28 = 0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v35 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    *&v27[12] = 1024;
    *&v27[14] = 468;
    *&v27[18] = 2048;
    *&v27[20] = v8;
    *&v27[28] = 2048;
    *&v27[30] = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v35 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v28 = 136315906;
    *&v28[4] = "operator[]";
    v29 = 1024;
    v30 = 476;
    v31 = 2048;
    v32 = v4;
    v33 = 2048;
    v34 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_5:
  v15 = a1[2];
  if (a1[8])
  {
    v16 = 0;
    v8 = 0;
    do
    {
      MEMORY[0x1E6903A00](v15, v8);
      if (CoreIKGenericConstraintHasLookAtEnabled())
      {
        v10 = a1[11];
        if (v10 <= v8)
        {
          goto LABEL_22;
        }

        CoreIKGenericConstraintSetLookAtTarget();
      }

      CoreIKGenericConstraintSetTargetTranslation();
      CoreIKGenericConstraintSetTargetOrientation();
      ++v8;
      v16 += 48;
    }

    while (v8 < a1[8]);
  }

  v17 = CoreIKGenericSolverSolve();
  if (v17 == 1)
  {
    v22 = *(v4 + 32);
    if (v22)
    {
      for (i = 0; i != v22; ++i)
      {
        *&v35 = 0x3F8000003F800000;
        *(&v35 + 1) = 1065353216;
        *&v36 = 0;
        *(&v36 + 1) = 0x3F80000000000000;
        v37 = 0uLL;
        v24 = re::RigDataValue::attributeValue(v4, i);
        re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v24, &v35);
        v25 = re::RigDataValue::attributeValue(a3, i);
        re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v25, &v35);
      }
    }
  }

  else
  {
    v18 = *(a3 + 32);
    if (v18)
    {
      v19 = 0;
      v4 = 0;
      while (1)
      {
        v10 = a1[14];
        if (v10 <= v4)
        {
          break;
        }

        v20 = (a1[15] + v19);
        *v27 = 0x3F8000003F800000;
        *&v27[8] = 1065353216;
        *&v27[16] = v20[1];
        *&v27[32] = *v20;
        v21 = re::RigDataValue::attributeValue(a3, v4);
        re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v21, v27);
        v4 = (v4 + 1);
        v19 += 32;
        if (v18 == v4)
        {
          return v17 != 1;
        }
      }

      goto LABEL_23;
    }
  }

  return v17 != 1;
}

uint64_t re::FullBodyIKSolver::taskName(re::FullBodyIKSolver *this)
{
  v1 = MEMORY[0x1E6903A00](*(this + 2));
  v2 = MEMORY[0x1E69038E0](v1);

  return MEMORY[0x1EEDF9208](v2);
}

uint64_t re::FullBodyIKSolver::taskTargetName(re::FullBodyIKSolver *this)
{
  v1 = MEMORY[0x1E6903A00](*(this + 2));
  v2 = MEMORY[0x1E69038E0](v1);

  return MEMORY[0x1EEDF9200](v2);
}

void re::FullBodyIKSolver::taskPositionEnabled(re::FullBodyIKSolver *this)
{
  v1 = MEMORY[0x1E6903A00](*(this + 2));
  MEMORY[0x1E69038E0](v1);

  JUMPOUT(0x1E6903B30);
}

void re::FullBodyIKSolver::taskRotationEnabled(re::FullBodyIKSolver *this)
{
  v1 = MEMORY[0x1E6903A00](*(this + 2));
  MEMORY[0x1E69038E0](v1);

  JUMPOUT(0x1E6903B10);
}

__n128 re::FullBodyIKSolver::taskLookAtTarget(re::FullBodyIKSolver *this, unint64_t a2)
{
  if (*(this + 11) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 12) + 16 * a2);
}

uint64_t re::FullBodyIKSolver::setTaskLookAtTarget(uint64_t result, unint64_t a2, __n128 a3)
{
  if (*(result + 88) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 96) + 16 * a2) = a3;
  return result;
}

uint64_t re::FullBodyIKSolver::setTaskTargetPosition(uint64_t result, unint64_t a2, __n128 a3)
{
  if (*(result + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 72) + 48 * a2 + 32) = a3;
  return result;
}

__n128 re::FullBodyIKSolver::taskTargetRotation(re::FullBodyIKSolver *this, unint64_t a2)
{
  if (*(this + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 9) + 48 * a2 + 16);
}

uint64_t re::FullBodyIKSolver::setTaskTargetRotation(uint64_t this, unint64_t a2, simd_quatf a3)
{
  if (*(this + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 72) + 48 * a2 + 16) = a3;
  return this;
}

uint64_t re::FullBodyIKSolver::setTaskTargetParameters(uint64_t a1, unint64_t a2, __n128 a3, double a4, __n128 a5)
{
  re::FullBodyIKSolver::setTaskTargetPosition(a1, a2, a3);
  MEMORY[0x1E6903A00](*(a1 + 16), a2);
  CoreIKGenericConstraintSetTranslationTargetBlendWeight();
  v7 = a5;
  re::FullBodyIKSolver::setTaskTargetRotation(a1, a2, v7);
  MEMORY[0x1E6903A00](*(a1 + 16), a2);

  return CoreIKGenericConstraintSetOrientationTargetBlendWeight();
}

void *re::allocInfo_FullBodyIKSolver(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1906A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1906A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1906B0, "FullBodyIKSolver");
    __cxa_guard_release(&qword_1EE1906A8);
  }

  return &unk_1EE1906B0;
}

void re::initInfo_FullBodyIKSolver(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xE798B206CD368F8CLL;
  v11[1] = "FullBodyIKSolver";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1906A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1906A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      _MergedGlobals_17 = v9;
      __cxa_guard_release(&qword_1EE1906A0);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_17;
  *(this + 9) = re::internal::defaultConstruct<re::FullBodyIKSolver>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FullBodyIKSolver>;
  *(this + 13) = re::internal::defaultConstructV2<re::FullBodyIKSolver>;
  *(this + 14) = re::internal::defaultDestructV2<re::FullBodyIKSolver>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

double re::internal::defaultConstruct<re::FullBodyIKSolver>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  return result;
}

void re::internal::defaultDestruct<re::FullBodyIKSolver>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 7);
  std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::~unique_ptr[abi:nn200100](a3 + 2);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::FullBodyIKSolver>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::FullBodyIKSolver>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 7);
  std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::~unique_ptr[abi:nn200100](a1 + 2);

  re::StringID::destroyString(a1);
}

uint64_t std::__function::__func<re::FullBodyIKSolver::FullBodyIKSolver(CoreIKRig *,re::StringID const&)::$_0,std::allocator<re::FullBodyIKSolver::FullBodyIKSolver(CoreIKRig *,re::StringID const&)::$_0>,void ()(CoreIKGenericSolver *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(CoreIKGenericSolver *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(CoreIKGenericSolver *)>::operator=[abi:nn200100](a1);
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

uint64_t std::__function::__value_func<void ()(CoreIKGenericSolver *)>::operator=[abi:nn200100](uint64_t a1)
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

void *re::FixedArray<re::Pose<float>>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 32 * a3, 16);
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
      *result = 0;
      result[1] = 0;
      result[2] = 0;
      result[3] = 0x3F80000000000000;
      result += 4;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x3F80000000000000;
  return result;
}

void _ZN2re10FixedArrayIDv3_fE4initIJEEEvPNS_9AllocatorEmDpOT_(uint64_t *a1, uint64_t a2, unint64_t a3)
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
  v6 = (*(*a2 + 32))(a2, 16 * a3, 16);
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

  *v8 = 0u;
}

double re::TimelineClip::totalDuration(re::TimelineClip *this)
{
  re::TimelineClip::defaultDuration(this);
  if (*(this + 136) == 1)
  {
    v2 = *(this + 18);
  }

  return *(this + 16) + v2 / fabsf(*(this + 38));
}

uint64_t re::TimelineClip::defaultDuration(re::TimelineClip *this)
{
  result = dyld_program_sdk_at_least();
  if (!result || !*(this + 156))
  {
    result = *(this + 9);
    if (result)
    {
      return (*(*result + 40))(result);
    }
  }

  return result;
}

float re::TimelineClip::timelineDesc@<S0>(re::TimelineClip *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 9);
  if (v4)
  {
    v5 = 0.0;
    if (*(this + 80) == 1)
    {
      v5 = *(this + 11);
    }

    (*(*v4 + 40))(v4);
    if (*(this + 96) == 1)
    {
      v7 = *(this + 13);
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

  if (*(this + 136) != 1 || (v8 = *(this + 18), v8 == 0.0))
  {
    re::TimelineClip::defaultDuration(this);
  }

  v9 = v8;
  v10 = *(this + 16);
  *a2 = v10;
  *(a2 + 4) = v9;
  v11 = *(this + 38);
  if (*(this + 120))
  {
    v11 = -v11;
  }

  v12 = v5;
  *(a2 + 8) = v11;
  *(a2 + 12) = v12;
  result = v7;
  v14 = *(this + 14);
  *(a2 + 16) = result;
  *(a2 + 20) = v14;
  *(a2 + 24) = *(this + 156);
  *(a2 + 25) = *(this + 16);
  return result;
}

void re::TimelineClip::~TimelineClip(re::TimelineClip *this)
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

void re::TimelineClip::debugLogData(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v53, a2);
    re::Timeline::debugLogData(a1, v53);
    v5 = *&v53[0];
    if (*&v53[0])
    {
      if (BYTE8(v53[0]))
      {
        v5 = (*(**&v53[0] + 40))();
      }

      memset(v53, 0, sizeof(v53));
    }

    if (*(a1 + 80) == 1)
    {
      v6 = re::animationLogObjects(v5);
      v5 = re::AnimationLogObjects::loggingEnabled(v6);
      if (v5)
      {
        v39 = *re::animationLogObjects(v5);
        v5 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
        if (v5)
        {
          if (*(a2 + 8))
          {
            v40 = *(a2 + 16);
          }

          else
          {
            v40 = a2 + 9;
          }

          v49 = *(a1 + 88);
          *buf = 136315394;
          v55 = v40;
          v56 = 2048;
          v57 = v49;
          _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "ANIM: %sclipStart: %f\n", buf, 0x16u);
        }
      }
    }

    if (*(a1 + 96) == 1)
    {
      v7 = re::animationLogObjects(v5);
      v5 = re::AnimationLogObjects::loggingEnabled(v7);
      if (v5)
      {
        v41 = *re::animationLogObjects(v5);
        v5 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
        if (v5)
        {
          if (*(a2 + 8))
          {
            v42 = *(a2 + 16);
          }

          else
          {
            v42 = a2 + 9;
          }

          v50 = *(a1 + 104);
          *buf = 136315394;
          v55 = v42;
          v56 = 2048;
          v57 = v50;
          _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "ANIM: %sclipEnd: %f\n", buf, 0x16u);
        }
      }
    }

    v8 = re::animationLogObjects(v5);
    v9 = re::AnimationLogObjects::loggingEnabled(v8);
    if (v9)
    {
      v31 = *re::animationLogObjects(v9);
      v9 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (*(a2 + 8))
        {
          v32 = *(a2 + 16);
        }

        else
        {
          v32 = a2 + 9;
        }

        v45 = *(a1 + 112);
        *buf = 136315394;
        v55 = v32;
        v56 = 2048;
        v57 = v45;
        _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "ANIM: %sclipOffset: %f\n", buf, 0x16u);
      }
    }

    v10 = re::animationLogObjects(v9);
    v11 = re::AnimationLogObjects::loggingEnabled(v10);
    if (v11)
    {
      v33 = *re::animationLogObjects(v11);
      v11 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (*(a2 + 8))
        {
          v34 = *(a2 + 16);
        }

        else
        {
          v34 = a2 + 9;
        }

        *&v46 = COERCE_DOUBLE("false");
        if (*(a1 + 120))
        {
          *&v46 = COERCE_DOUBLE("true");
        }

        *buf = 136315394;
        v55 = v34;
        v56 = 2080;
        v57 = *&v46;
        _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "ANIM: %sclipReversed: %s\n", buf, 0x16u);
      }
    }

    v12 = re::animationLogObjects(v11);
    v13 = re::AnimationLogObjects::loggingEnabled(v12);
    if (v13)
    {
      v35 = *re::animationLogObjects(v13);
      v13 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (*(a2 + 8))
        {
          v36 = *(a2 + 16);
        }

        else
        {
          v36 = a2 + 9;
        }

        v47 = *(a1 + 128);
        *buf = 136315394;
        v55 = v36;
        v56 = 2048;
        v57 = v47;
        _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "ANIM: %sdelay: %f\n", buf, 0x16u);
      }
    }

    if (*(a1 + 136) == 1)
    {
      v14 = re::animationLogObjects(v13);
      v13 = re::AnimationLogObjects::loggingEnabled(v14);
      if (v13)
      {
        v43 = *re::animationLogObjects(v13);
        v13 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (*(a2 + 8))
          {
            v44 = *(a2 + 16);
          }

          else
          {
            v44 = a2 + 9;
          }

          v51 = *(a1 + 144);
          *buf = 136315394;
          v55 = v44;
          v56 = 2048;
          v57 = v51;
          _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "ANIM: %sduration: %f\n", buf, 0x16u);
        }
      }
    }

    v15 = re::animationLogObjects(v13);
    v16 = re::AnimationLogObjects::loggingEnabled(v15);
    if (v16)
    {
      v37 = *re::animationLogObjects(v16);
      v16 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (*(a2 + 8))
        {
          v38 = *(a2 + 16);
        }

        else
        {
          v38 = a2 + 9;
        }

        v48 = *(a1 + 152);
        *buf = 136315394;
        v55 = v38;
        v56 = 2048;
        v57 = v48;
        _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "ANIM: %sspeed: %f\n", buf, 0x16u);
      }
    }

    v17 = *(a1 + 156);
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v28 = re::animationLogObjects(v16);
        v29 = re::AnimationLogObjects::loggingEnabled(v28);
        if (!v29)
        {
          return;
        }

        v20 = *re::animationLogObjects(v29);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        if (*(a2 + 8))
        {
          v30 = *(a2 + 16);
        }

        else
        {
          v30 = a2 + 9;
        }

        *buf = 136315138;
        v55 = v30;
        v52 = "ANIM: %sloopBehavior: RepeatCumulative\n";
      }

      else
      {
        if (v17 != 3)
        {
          return;
        }

        v22 = re::animationLogObjects(v16);
        v23 = re::AnimationLogObjects::loggingEnabled(v22);
        if (!v23)
        {
          return;
        }

        v20 = *re::animationLogObjects(v23);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        if (*(a2 + 8))
        {
          v24 = *(a2 + 16);
        }

        else
        {
          v24 = a2 + 9;
        }

        *buf = 136315138;
        v55 = v24;
        v52 = "ANIM: %sloopBehavior: AutoReverse\n";
      }
    }

    else if (*(a1 + 156))
    {
      if (v17 != 1)
      {
        return;
      }

      v18 = re::animationLogObjects(v16);
      v19 = re::AnimationLogObjects::loggingEnabled(v18);
      if (!v19)
      {
        return;
      }

      v20 = *re::animationLogObjects(v19);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      if (*(a2 + 8))
      {
        v21 = *(a2 + 16);
      }

      else
      {
        v21 = a2 + 9;
      }

      *buf = 136315138;
      v55 = v21;
      v52 = "ANIM: %sloopBehavior: Repeat\n";
    }

    else
    {
      v25 = re::animationLogObjects(v16);
      v26 = re::AnimationLogObjects::loggingEnabled(v25);
      if (!v26)
      {
        return;
      }

      v20 = *re::animationLogObjects(v26);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      if (*(a2 + 8))
      {
        v27 = *(a2 + 16);
      }

      else
      {
        v27 = a2 + 9;
      }

      *buf = 136315138;
      v55 = v27;
      v52 = "ANIM: %sloopBehavior: Constant\n";
    }

    _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, v52, buf, 0xCu);
  }
}

ArcSharedObject *re::BlendShapeWeightsDefinition::BlendShapeWeightsDefinition(ArcSharedObject *a1, uint64_t a2, const StringID **a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v6 + 16) = a2;
  *v6 = &unk_1F5CB0788;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 24) = 0u;
  v7 = (v6 + 24);
  *(v6 + 68) = 0u;
  *(v6 + 84) = 0x7FFFFFFFLL;
  *(v6 + 96) = 0;
  re::FixedArray<re::StringID>::init<>((v6 + 24), a2, a3[1]);
  re::FixedArray<re::StringID>::operator=(v7, a3);
  v8 = a3[1];
  if (v8)
  {
    v9 = *a3;
    v10 = 16 * v8;
    do
    {
      v11 = re::StringID::StringID(v15, v9);
      v12 = v15[0];
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v15[0] >> 31) ^ (v15[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v15[0] >> 31) ^ (v15[0] >> 1))) >> 27));
      *(a1 + 12) ^= (*(a1 + 12) << 6) + (*(a1 + 12) >> 2) - 0x61C8864680B583E9 + (v13 ^ (v13 >> 31));
      if (v12)
      {
        if (v15[0])
        {
        }
      }

      ++v9;
      v10 -= 16;
    }

    while (v10);
  }

  re::BlendShapeWeightsDefinition::buildWeightNameMap(a1);
  return a1;
}

void re::BlendShapeWeightsDefinition::buildWeightNameMap(re::BlendShapeWeightsDefinition *this)
{
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 48, *(this + 3), 2 * *(this + 8));
  v8 = 0;
  if (*(this + 4))
  {
    v2 = 0;
    do
    {
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 48, (*(this + 5) + 16 * v2), &v8);
      v2 = v8 + 1;
      v8 = v2;
      v3 = *(this + 4);
    }

    while (v2 < v3);
    v10 = 0;
    if (v3)
    {
      for (i = 0; i < v3; v10 = i)
      {
        v5 = strrchr(*(*(this + 5) + 16 * i + 8), 47);
        if (v5)
        {
          v6 = v5;
          v8 = 0;
          v9 = &str_67;
          v7 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 48, &v8, &v10);
          if (v8)
          {
            if (v8)
            {
            }
          }

          i = v10;
          v3 = *(this + 4);
        }

        ++i;
      }
    }
  }
}

void re::BlendShapeWeights::init(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1 + 3, v4);
}

void re::BlendShapeWeights::deinit(re::BlendShapeWeights *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this);
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }
}

void re::BlendShapeWeights::reset(uint64_t *a1, uint64_t *a2)
{
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1 + 3, *a2);
  if (a1[1] != *(a1[3] + 32))
  {
    v4 = *a1;
    if (!*a1)
    {
    }

    re::FixedArray<CoreIKTransform>::deinit(a1);
    v5 = *(a1[3] + 32);

    re::FixedArray<int>::init<>(a1, v4, v5);
  }
}

void *re::allocInfo_BlendShapeWeights(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190758, "BlendShapeWeights");
    __cxa_guard_release(&_MergedGlobals_18);
  }

  return &unk_1EE190758;
}

void re::initInfo_BlendShapeWeights(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x3826001B6619E1D6;
  v11[1] = "BlendShapeWeights";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE190750, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE190750);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "weights";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE190748 = v9;
      __cxa_guard_release(&qword_1EE190750);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE190748;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeights>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeights>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeights>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeights>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<float>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionFixedArray<float>::IntrospectionFixedArray(&re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_float(1, a2);
  if ((re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info, 0);
    qword_1EE186D88 = 0x1800000004;
    dword_1EE186D90 = v8;
    word_1EE186D94 = 0;
    *&xmmword_1EE186D98 = 0;
    *(&xmmword_1EE186D98 + 1) = 0xFFFFFFFFLL;
    qword_1EE186DA8 = v7;
    unk_1EE186DB0 = 0;
    re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info = &unk_1F5CB07D0;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info, &v15);
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
    xmmword_1EE186D98 = v14;
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

  return &re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::BlendShapeWeights>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::BlendShapeWeights>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t *re::AnimationValueTraits<re::BlendShapeWeights>::copy(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v19 = *MEMORY[0x1E69E9840];
  v4 = result[3];
  v5 = *(v4 + 32);
  v6 = a2[3];
  if (v5 == *(v6 + 32) && *(v4 + 96) == *(v6 + 96))
  {

    return re::FixedArray<float>::operator=(a2, result);
  }

  else if (v5)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = v3[3];
      if (*(v9 + 32) <= v8)
      {
        break;
      }

      v10 = *(v9 + 40);
      v11 = a2[3];
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v10 + v7) >> 31) ^ (*(v10 + v7) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v10 + v7) >> 31) ^ (*(v10 + v7) >> 1))) >> 27));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v11 + 48, (v10 + v7), v12 ^ (v12 >> 31), &v14);
      if (HIDWORD(v14) != 0x7FFFFFFF)
      {
        if (v3[1] <= v8)
        {
          goto LABEL_16;
        }

        v13 = *(*(v11 + 64) + 32 * HIDWORD(v14) + 24);
        if (a2[1] <= v13)
        {
          goto LABEL_17;
        }

        *(a2[2] + 4 * v13) = *(v3[2] + 4 * v8);
      }

      ++v8;
      v7 += 16;
      if (v5 == v8)
      {
        return result;
      }
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_16:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_17:
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

  return result;
}

float re::AnimationValueTraits<re::BlendShapeWeights>::combine(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a1;
  v49 = *MEMORY[0x1E69E9840];
  v8 = a1[3];
  v9 = *(v8 + 32);
  v10 = a2[3];
  if (v9 != *(v10 + 32) || *(v8 + 96) != *(v10 + 96))
  {
    v17 = *(v6[3] + 32);
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v18 = *(v7[3] + 32);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v4 = 0x7FFFFFFFLL;
      while (1)
      {
        v21 = v7[3];
        v12 = *(v21 + 32);
        if (v12 <= v20)
        {
          break;
        }

        v22 = *(v21 + 40);
        v9 = a3[3];
        v23 = 0xBF58476D1CE4E5B9 * ((*(v22 + v19) >> 31) ^ (*(v22 + v19) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 48, (v22 + v19), (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31), &v44);
        if (HIDWORD(v44) != 0x7FFFFFFF)
        {
          v3 = *(*(v9 + 64) + 32 * HIDWORD(v44) + 24);
          v9 = v6[3];
          v24 = 0xBF58476D1CE4E5B9 * ((*(v22 + v19) >> 31) ^ (*(v22 + v19) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 48, (v22 + v19), (0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) ^ ((0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) >> 31), &v44);
          if (HIDWORD(v44) == 0x7FFFFFFF)
          {
            v12 = v7[1];
            if (v12 <= v20)
            {
              goto LABEL_53;
            }

            v12 = a3[1];
            if (v12 <= v3)
            {
              goto LABEL_54;
            }

            result = *(v7[2] + 4 * v20);
            *(a3[2] + 4 * v3) = result;
          }

          else
          {
            v12 = v7[1];
            if (v12 <= v20)
            {
              goto LABEL_52;
            }

            v12 = *(*(v9 + 64) + 32 * HIDWORD(v44) + 24);
            v9 = v6[1];
            if (v9 <= v12)
            {
              goto LABEL_55;
            }

            v9 = a3[1];
            if (v9 <= v3)
            {
              goto LABEL_56;
            }

            result = *(v7[2] + 4 * v20) + *(v6[2] + 4 * v12);
            *(a3[2] + 4 * v3) = result;
            v9 = v33;
            if (v33 <= v12)
            {
              goto LABEL_57;
            }

            *(v34 + v12) = 1;
          }
        }

        ++v20;
        v19 += 16;
        if (v18 == v20)
        {
          goto LABEL_28;
        }
      }

      v35 = 0;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v36 = 136315906;
      v37 = "operator[]";
      v38 = 1024;
      v39 = 476;
      v40 = 2048;
      v41 = v20;
      v42 = 2048;
      v43 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_28:
      v20 = *(v6[3] + 32);
      if (!v20)
      {
LABEL_38:
        if (v32)
        {
          if (v33)
          {
            (*(*v32 + 40))();
          }
        }

        return result;
      }

      v12 = 0;
      v7 = 0;
      v3 = 0x7FFFFFFFLL;
      while (1)
      {
        v9 = v33;
        if (v33 <= v7)
        {
          break;
        }

        if ((*(v7 + v34) & 1) == 0)
        {
          v25 = v6[3];
          v9 = *(v25 + 32);
          if (v9 <= v7)
          {
            goto LABEL_51;
          }

          v26 = *(v25 + 40);
          v18 = a3[3];
          v27 = 0xBF58476D1CE4E5B9 * ((*(v26 + v12) >> 31) ^ (*(v26 + v12) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v18 + 48, (v26 + v12), (0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) ^ ((0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) >> 31), &v44);
          if (HIDWORD(v44) != 0x7FFFFFFF)
          {
            v9 = v6[1];
            if (v9 <= v20)
            {
              goto LABEL_58;
            }

            v18 = *(*(v18 + 64) + 32 * HIDWORD(v44) + 24);
            v9 = a3[1];
            if (v9 <= v18)
            {
              goto LABEL_59;
            }

            result = *(v6[2] + 4 * v20);
            *(a3[2] + 4 * v18) = result;
          }
        }

        v7 = (v7 + 1);
        v12 += 16;
        if (v20 == v7)
        {
          goto LABEL_38;
        }
      }
    }

    v35 = 0;
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
    v43 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_51:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 476;
    v40 = 2048;
    v41 = v7;
    v42 = 2048;
    v43 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 476;
    v40 = 2048;
    v41 = v20;
    v42 = 2048;
    v43 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 476;
    v40 = 2048;
    v41 = v20;
    v42 = 2048;
    v43 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_54:
    v35 = 0;
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
    v41 = v3;
    v42 = 2048;
    v43 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 476;
    v40 = 2048;
    v41 = v12;
    v42 = 2048;
    v43 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v35 = 0;
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
    v41 = v3;
    v42 = 2048;
    v43 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v35 = 0;
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
    v41 = v12;
    v42 = 2048;
    v43 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    v39 = 476;
    v40 = 2048;
    v41 = v20;
    v42 = 2048;
    v43 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_59:
    v35 = 0;
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
    v41 = v18;
    v42 = 2048;
    v43 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_60;
  }

  if (v8 == a3[3])
  {
    if (v9)
    {
      v28 = 0;
      v12 = a1[1];
      v29 = a1[2];
      v7 = a2[1];
      v30 = a2[2];
      v6 = a3[1];
      v31 = a3[2];
      while (v12 != v28)
      {
        if (v7 == v28)
        {
          goto LABEL_62;
        }

        if (v6 == v28)
        {
          goto LABEL_63;
        }

        result = *(v29 + 4 * v28) + *(v30 + 4 * v28);
        *(v31 + 4 * v28) = result;
        v28 = (v28 + 1);
        if (v9 == v28)
        {
          return result;
        }
      }

LABEL_61:
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
      v39 = 476;
      v40 = 2048;
      v41 = v12;
      v42 = 2048;
      v43 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_62:
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
      v39 = 476;
      v40 = 2048;
      v41 = v7;
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
      v39 = 468;
      v40 = 2048;
      v41 = v6;
      v42 = 2048;
      v43 = v6;
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
      v39 = 476;
      v40 = 2048;
      v41 = v12;
      v42 = 2048;
      v43 = v4;
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
      v39 = 476;
      v40 = 2048;
      v41 = v12;
      v42 = 2048;
      v43 = v4;
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
      v39 = 468;
      v40 = 2048;
      v41 = v4;
      v42 = 2048;
      v43 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else if (v9)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = v7[3];
      v4 = *(v13 + 32);
      if (v4 <= v12)
      {
        break;
      }

      v14 = *(v13 + 40);
      v3 = a3[3];
      v15 = 0xBF58476D1CE4E5B9 * ((*(v14 + v11) >> 31) ^ (*(v14 + v11) >> 1));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v3 + 48, (v14 + v11), (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), &v44);
      if (HIDWORD(v44) != 0x7FFFFFFF)
      {
        v4 = v7[1];
        if (v4 <= v12)
        {
          goto LABEL_64;
        }

        v4 = v6[1];
        if (v4 <= v12)
        {
          goto LABEL_65;
        }

        v4 = *(*(v3 + 64) + 32 * HIDWORD(v44) + 24);
        v3 = a3[1];
        if (v3 <= v4)
        {
          goto LABEL_66;
        }

        result = *(v7[2] + 4 * v12) + *(v6[2] + 4 * v12);
        *(a3[2] + 4 * v4) = result;
      }

      ++v12;
      v11 += 16;
      if (v9 == v12)
      {
        return result;
      }
    }

LABEL_60:
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
    v39 = 476;
    v40 = 2048;
    v41 = v12;
    v42 = 2048;
    v43 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_61;
  }

  return result;
}

void *re::AnimationValueTraits<re::BlendShapeWeights>::invert(void *result, void *a2)
{
  v3 = result;
  v24 = *MEMORY[0x1E69E9840];
  v4 = result[3];
  v5 = *(v4 + 32);
  v6 = a2[3];
  if (v5 == *(v6 + 32) && *(v4 + 96) == *(v6 + 96))
  {
    if (v5)
    {
      v7 = 0;
      v9 = result[1];
      v8 = result[2];
      v11 = a2[1];
      v10 = a2[2];
      while (v9 != v7)
      {
        if (v11 == v7)
        {
          goto LABEL_22;
        }

        *(v10 + 4 * v7) = -*(v8 + 4 * v7);
        if (v5 == ++v7)
        {
          return result;
        }
      }

      goto LABEL_21;
    }
  }

  else if (v5)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v3[3];
      if (*(v14 + 32) <= v13)
      {
        break;
      }

      v15 = *(v14 + 40);
      v16 = a2[3];
      v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v15 + v12) >> 31) ^ (*(v15 + v12) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v15 + v12) >> 31) ^ (*(v15 + v12) >> 1))) >> 27));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v16 + 48, (v15 + v12), v17 ^ (v17 >> 31), &v19);
      if (HIDWORD(v19) != 0x7FFFFFFF)
      {
        if (v3[1] <= v13)
        {
          goto LABEL_19;
        }

        v18 = *(*(v16 + 64) + 32 * HIDWORD(v19) + 24);
        if (a2[1] <= v18)
        {
          goto LABEL_20;
        }

        *(a2[2] + 4 * v18) = -*(v3[2] + 4 * v13);
      }

      ++v13;
      v12 += 16;
      if (v5 == v13)
      {
        return result;
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_20:
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_21:
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_22:
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

_anonymous_namespace_ *re::AnimationValueTraits<re::BlendShapeWeights>::interpolate(_anonymous_namespace_ *result, void *a2, void *a3, float a4)
{
  v9 = a2;
  v10 = result;
  v52 = *MEMORY[0x1E69E9840];
  v11 = *(result + 3);
  v12 = *(v11 + 32);
  v13 = a2[3];
  if (v12 != *(v13 + 32) || *(v11 + 96) != *(v13 + 96))
  {
    v19 = *(v9[3] + 32);
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v4 = *(*(v10 + 24) + 32);
    if (v4)
    {
      v20 = 0;
      v21 = 0;
      v22 = 1.0 - a4;
      v6 = 0x7FFFFFFFLL;
      while (1)
      {
        v23 = *(v10 + 24);
        v15 = *(v23 + 32);
        if (v15 <= v21)
        {
          break;
        }

        v24 = *(v23 + 40);
        v12 = a3[3];
        v25 = 0xBF58476D1CE4E5B9 * ((*(v24 + v20) >> 31) ^ (*(v24 + v20) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v12 + 48, (v24 + v20), (0x94D049BB133111EBLL * (v25 ^ (v25 >> 27))) ^ ((0x94D049BB133111EBLL * (v25 ^ (v25 >> 27))) >> 31), &v47);
        if (HIDWORD(v47) != 0x7FFFFFFF)
        {
          v5 = *(*(v12 + 64) + 32 * HIDWORD(v47) + 24);
          v12 = v9[3];
          v26 = 0xBF58476D1CE4E5B9 * ((*(v24 + v20) >> 31) ^ (*(v24 + v20) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v12 + 48, (v24 + v20), (0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) ^ ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) >> 31), &v47);
          if (HIDWORD(v47) == 0x7FFFFFFF)
          {
            v15 = *(v10 + 8);
            if (v15 <= v21)
            {
              goto LABEL_53;
            }

            v15 = a3[1];
            if (v15 <= v5)
            {
              goto LABEL_54;
            }

            *(a3[2] + 4 * v5) = (a4 * 0.0) + (*(*(v10 + 16) + 4 * v21) * v22);
          }

          else
          {
            v15 = *(v10 + 8);
            if (v15 <= v21)
            {
              goto LABEL_52;
            }

            v15 = *(*(v12 + 64) + 32 * HIDWORD(v47) + 24);
            v12 = v9[1];
            if (v12 <= v15)
            {
              goto LABEL_55;
            }

            v12 = a3[1];
            if (v12 <= v5)
            {
              goto LABEL_56;
            }

            *(a3[2] + 4 * v5) = (*(v9[2] + 4 * v15) * a4) + (*(*(v10 + 16) + 4 * v21) * v22);
            v12 = v36;
            if (v36 <= v15)
            {
              goto LABEL_57;
            }

            *(v37 + v15) = 1;
          }
        }

        ++v21;
        v20 += 16;
        if (v4 == v21)
        {
          goto LABEL_28;
        }
      }

      v38 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v39 = 136315906;
      v40 = "operator[]";
      v41 = 1024;
      v42 = 476;
      v43 = 2048;
      v44 = v21;
      v45 = 2048;
      v46 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_28:
      v15 = *(v9[3] + 32);
      if (!v15)
      {
LABEL_38:
        result = v35;
        if (v35)
        {
          if (v36)
          {
            return (*(*v35 + 40))();
          }
        }

        return result;
      }

      v21 = 0;
      v10 = 0;
      v4 = 0x7FFFFFFFLL;
      while (1)
      {
        v12 = v36;
        if (v36 <= v10)
        {
          break;
        }

        if ((*(v37 + v10) & 1) == 0)
        {
          v27 = v9[3];
          v12 = *(v27 + 32);
          if (v12 <= v10)
          {
            goto LABEL_51;
          }

          v28 = *(v27 + 40);
          v5 = a3[3];
          v29 = 0xBF58476D1CE4E5B9 * ((*(v28 + v21) >> 31) ^ (*(v28 + v21) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 48, (v28 + v21), (0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) ^ ((0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) >> 31), &v47);
          if (HIDWORD(v47) != 0x7FFFFFFF)
          {
            v12 = v9[1];
            if (v12 <= v10)
            {
              goto LABEL_58;
            }

            v5 = *(*(v5 + 64) + 32 * HIDWORD(v47) + 24);
            v12 = a3[1];
            if (v12 <= v5)
            {
              goto LABEL_59;
            }

            *(a3[2] + 4 * v5) = (*(v9[2] + 4 * v10) * a4) + ((1.0 - a4) * 0.0);
          }
        }

        ++v10;
        v21 += 16;
        if (v15 == v10)
        {
          goto LABEL_38;
        }
      }
    }

    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 468;
    v43 = 2048;
    v44 = v10;
    v45 = 2048;
    v46 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_51:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 476;
    v43 = 2048;
    v44 = v10;
    v45 = 2048;
    v46 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 476;
    v43 = 2048;
    v44 = v21;
    v45 = 2048;
    v46 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 476;
    v43 = 2048;
    v44 = v21;
    v45 = 2048;
    v46 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_54:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 468;
    v43 = 2048;
    v44 = v5;
    v45 = 2048;
    v46 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 476;
    v43 = 2048;
    v44 = v15;
    v45 = 2048;
    v46 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 468;
    v43 = 2048;
    v44 = v5;
    v45 = 2048;
    v46 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 468;
    v43 = 2048;
    v44 = v15;
    v45 = 2048;
    v46 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 476;
    v43 = 2048;
    v44 = v10;
    v45 = 2048;
    v46 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_59:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 468;
    v43 = 2048;
    v44 = v5;
    v45 = 2048;
    v46 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_60;
  }

  if (v11 == a3[3])
  {
    if (v12)
    {
      v30 = 0;
      v15 = *(result + 1);
      v31 = *(result + 2);
      v10 = a2[1];
      v32 = a2[2];
      v9 = a3[1];
      v33 = a3[2];
      v34 = 1.0 - a4;
      while (v15 != v30)
      {
        if (v10 == v30)
        {
          goto LABEL_62;
        }

        if (v9 == v30)
        {
          goto LABEL_63;
        }

        *(v33 + 4 * v30) = (*(v32 + 4 * v30) * a4) + (*(v31 + 4 * v30) * v34);
        v30 = (v30 + 1);
        if (v12 == v30)
        {
          return result;
        }
      }

LABEL_61:
      v35 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v39 = 136315906;
      v40 = "operator[]";
      v41 = 1024;
      v42 = 476;
      v43 = 2048;
      v44 = v15;
      v45 = 2048;
      v46 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_62:
      v35 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v39 = 136315906;
      v40 = "operator[]";
      v41 = 1024;
      v42 = 476;
      v43 = 2048;
      v44 = v10;
      v45 = 2048;
      v46 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_63:
      v35 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v39 = 136315906;
      v40 = "operator[]";
      v41 = 1024;
      v42 = 468;
      v43 = 2048;
      v44 = v9;
      v45 = 2048;
      v46 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_64:
      v35 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v39 = 136315906;
      v40 = "operator[]";
      v41 = 1024;
      v42 = 476;
      v43 = 2048;
      v44 = v15;
      v45 = 2048;
      v46 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_65:
      v35 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v39 = 136315906;
      v40 = "operator[]";
      v41 = 1024;
      v42 = 476;
      v43 = 2048;
      v44 = v15;
      v45 = 2048;
      v46 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_66:
      v35 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v39 = 136315906;
      v40 = "operator[]";
      v41 = 1024;
      v42 = 468;
      v43 = 2048;
      v44 = v6;
      v45 = 2048;
      v46 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else if (v12)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *(v10 + 24);
      v6 = *(v16 + 32);
      if (v6 <= v15)
      {
        break;
      }

      v17 = *(v16 + 40);
      v4 = a3[3];
      v18 = 0xBF58476D1CE4E5B9 * ((*(v17 + v14) >> 31) ^ (*(v17 + v14) >> 1));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 48, (v17 + v14), (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31), &v47);
      if (HIDWORD(v47) != 0x7FFFFFFF)
      {
        v6 = *(v10 + 8);
        if (v6 <= v15)
        {
          goto LABEL_64;
        }

        v6 = v9[1];
        if (v6 <= v15)
        {
          goto LABEL_65;
        }

        v6 = *(*(v4 + 64) + 32 * HIDWORD(v47) + 24);
        v4 = a3[1];
        if (v4 <= v6)
        {
          goto LABEL_66;
        }

        *(a3[2] + 4 * v6) = (*(v9[2] + 4 * v15) * a4) + (*(*(v10 + 16) + 4 * v15) * (1.0 - a4));
      }

      ++v15;
      v14 += 16;
      if (v12 == v15)
      {
        return result;
      }
    }

LABEL_60:
    v35 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 476;
    v43 = 2048;
    v44 = v15;
    v45 = 2048;
    v46 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_61;
  }

  return result;
}

void re::BlendShapeWeightsDefinition::~BlendShapeWeightsDefinition(re::BlendShapeWeightsDefinition *this)
{
  *this = &unk_1F5CB0788;
  v2 = (this + 24);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 6);
  re::FixedArray<re::StringID>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB0788;
  v2 = (this + 24);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 6);
  re::FixedArray<re::StringID>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionFixedArray<float>::IntrospectionFixedArray(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CAE268;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CB07D0;
  return a1;
}

void *re::IntrospectionFixedArray<float>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<float>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<float>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<float>::init(uint64_t a1, uint64_t *a2, re *a3, int a4, unint64_t a5)
{
  re::FixedArray<int>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (a2[1] <= v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10));
      ++v11;
      v10 += 4;
    }

    while (a5 != v11);
  }
}

uint64_t re::IntrospectionFixedArray<float>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 4 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 4 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<int>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 4 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 4;
        v11 -= 4;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 4 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::internal::retargetingSolverCallback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, uint64_t a9)
{
  if (!a4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  if (a4 == 1)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_22;
  }

  if (a4 <= 2)
  {
LABEL_22:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a4);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  if (!a8)
  {
LABEL_23:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::transferPose((a3 + 288), a9 + 40);
  re::internal::transferPose(a3, a9 + 16);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v11 = CoreIKSolve();
  if (re::internal::enableSignposts(0, 0))
  {
    CoreIKSolverGetConstraintCount();
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::updateOutputBasedOnSolveResult(v11, a3, (a9 + 16), a7);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::retargetingSolverCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v35[4] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  if (a3 == 1)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  if (a3 <= 2)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_22;
  }

  if (a3 == 3)
  {
LABEL_22:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
LABEL_23:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_23;
  }

  v6 = *(a2[1] + 184);
  v7 = a2[3];
  v8 = *(a2[2] + 184);
  v9 = *a4;
  v10 = *(*a2 + 232);
  v11 = strlen(v10);
  v12 = MEMORY[0x1E6903780](v10, v11);
  re::internal::makePoseFromRig(a1, v6, v12, v34);
  re::internal::makeSourcePose(a1, v8, v12, v33);
  v13 = MEMORY[0x1E6903C40](v12);
  re::internal::makePose(a1, v13, v32);
  v28 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v14 = *a1;
  re::RigGraphCallbackBuilder::init(v24, *a1);
  *&v29.var0 = 0x10643527A253C4;
  v29.var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v24, &v29, v34);
  if (*&v29.var0)
  {
    if (*&v29.var0)
    {
    }
  }

  *&v29.var0 = 0x104A00692196D8;
  v29.var1 = "SourcePose";
  re::RigGraphCallbackBuilder::addInputParam(v24, &v29, v33);
  if (*&v29.var0)
  {
    if (*&v29.var0)
    {
    }
  }

  *&v29.var0 = 0xF3F1BA25D000CB3ALL;
  v29.var1 = "SolverToComponentTransform";
  re::RigGraphCallbackBuilder::addInputParam(v24, &v29, v7);
  if (*&v29.var0)
  {
    if (*&v29.var0)
    {
    }
  }

  *&v29.var0 = 0xDC3EE39E3142978ELL;
  v29.var1 = "SolvedTargetPose";
  re::RigGraphCallbackBuilder::addOutputParam(v24, &v29, v32);
  if (*&v29.var0)
  {
    if (*&v29.var0)
    {
    }
  }

  v19 = (*(*v14 + 32))(v14, 64, 8);
  *v19 = MEMORY[0x1E6903790](v12);
  *(v19 + 8) = v14;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 16) = 0u;
  v20 = MEMORY[0x1E6903C40](v12);
  re::FixedArray<CoreIKTransform>::init<>((v19 + 16), v14, v20);
  v21 = MEMORY[0x1E6903C20](v12);
  re::FixedArray<CoreIKTransform>::init<>((v19 + 40), v14, v21);
  v35[0] = &unk_1F5CB0868;
  v35[1] = v14;
  v35[3] = v35;
  p_var1 = &v29.var1;
  *&v29.var0 = v19;
  v29.var1 = &unk_1F5CB0868;
  v30 = v14;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v35);
  re::RigGraphCallbackBuilder::buildCallbackData(v24, a1, re::internal::retargetingSolverCallback, &v29);
  v22 = re::internal::bindCallbackOutputToNodeOutputPose(v6, v32, v12, a1, v9);
  MEMORY[0x1E69037D0](v12, v22);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v29);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v26 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v24 + 8);
  re::RigDataValue::~RigDataValue(v32);
  re::RigDataValue::~RigDataValue(v33);
  re::RigDataValue::~RigDataValue(v34);
  return 1;
}

void re::internal::arvinoToArvinoRetargetNodeCallback(int a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, re::RigDataValue *a7, uint64_t a8, re::internal::AutoRetargetRigGraphNode *a9)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  if (a4 == 1)
  {
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (a4 <= 2)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a4);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (a4 == 3)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  if (a4 <= 4)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
  }

  if (!a8)
  {
    goto LABEL_15;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = &str_67;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v19 = 0;
  v21 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = -1;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v35 = 0;
  v34 = 0;
  v30 = &str_67;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v11 = re::internal::AutoRetargetRigGraphNode::initialize(a9, (a3 + 576), (a3 + 864), (a3 + 1152), (a3 + 1152), v12);
  re::RigDataValue::~RigDataValue(v12);
  if (v11)
  {
    re::internal::AutoRetargetRigGraphNode::solveAndUpdate(a9, a3, (a3 + 288), a7);
  }
}

uint64_t re::internal::arvinoToArvinoRetargetNodeCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_73;
  }

  if (a3 == 1)
  {
LABEL_73:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_74;
  }

  if (a3 <= 2)
  {
LABEL_74:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
LABEL_75:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_75;
  }

  v6 = *(*a2 + 184);
  v7 = *(a2[1] + 184);
  v8 = a2[2];
  v9 = *a4;
  re::internal::makePoseFromRigHierarchy(a1, v6, v95);
  re::RigHierarchy::getBindPoseHierarchy(v6, v10, &v74);
  re::internal::makePoseFromRigHierarchy(a1, &v74, v94);
  re::internal::makePoseFromRigHierarchy(a1, v7, v93);
  re::RigHierarchy::getBindPoseHierarchy(v7, v11, &v58);
  re::internal::makePoseFromRigHierarchy(a1, &v58, v92);
  re::internal::makePose(a1, v6[27], v91);
  v57 = 0;
  memset(v53, 0, sizeof(v53));
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  v56 = 0;
  v12 = *a1;
  re::RigGraphCallbackBuilder::init(v53, *a1);
  *&v90[0].var0 = 0x10643527A253C4;
  v90[0].var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v53, v90, v95);
  if (*&v90[0].var0)
  {
    if (*&v90[0].var0)
    {
    }
  }

  *&v90[0].var0 = 0x104A00692196D8;
  v90[0].var1 = "SourcePose";
  re::RigGraphCallbackBuilder::addInputParam(v53, v90, v93);
  if (*&v90[0].var0)
  {
    if (*&v90[0].var0)
    {
    }
  }

  *&v90[0].var0 = 0xFC2B6F833ABE967ELL;
  v90[0].var1 = "TargetBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v53, v90, v94);
  if (*&v90[0].var0)
  {
    if (*&v90[0].var0)
    {
    }
  }

  *&v90[0].var0 = 0x8AE112C755FE2F92;
  v90[0].var1 = "SourceBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v53, v90, v92);
  if (*&v90[0].var0)
  {
    if (*&v90[0].var0)
    {
    }
  }

  *&v90[0].var0 = 0xB88303615935B0FCLL;
  v90[0].var1 = "ModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v53, v90, v8);
  if (*&v90[0].var0)
  {
    if (*&v90[0].var0)
    {
    }
  }

  *&v90[0].var0 = 0xDC3EE39E3142978ELL;
  v90[0].var1 = "SolvedTargetPose";
  re::RigGraphCallbackBuilder::addOutputParam(v53, v90, v91);
  if (*&v90[0].var0)
  {
    if (*&v90[0].var0)
    {
    }
  }

  v37 = v74;
  v38 = v75;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v39, v76);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v40, v77);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v41, v78);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v42, v79);
  re::DynamicArray<re::StringID>::DynamicArray(v43, v80);
  re::DynamicArray<unsigned long>::DynamicArray(v44, v81);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v47, v84);
  re::DynamicArray<unsigned long>::DynamicArray(v50, v87);
  v21 = v58;
  v22 = v59;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v23, v60);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v24, v61);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v25, v62);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v26, v63);
  re::DynamicArray<re::StringID>::DynamicArray(v27, v64);
  re::DynamicArray<unsigned long>::DynamicArray(v28, v65);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v31, v68);
  re::DynamicArray<unsigned long>::DynamicArray(v34, v71);
  re::internal::makeNodeUnique<re::internal::AutoRetargetRigGraphNode,re::Allocator,re::RigHierarchy,re::RigHierarchy>(v90, v12, &v37, &v21);
  if (v34[0])
  {
    if (v36)
    {
      (*(*v34[0] + 40))();
    }

    v36 = 0;
    memset(v34, 0, sizeof(v34));
    ++v35;
  }

  if (v31[0])
  {
    if (v33)
    {
      (*(*v31[0] + 40))();
    }

    v33 = 0;
    memset(v31, 0, sizeof(v31));
    ++v32;
  }

  if (v28[0])
  {
    if (v30)
    {
      (*(*v28[0] + 40))();
    }

    v30 = 0;
    memset(v28, 0, sizeof(v28));
    ++v29;
  }

  re::DynamicArray<re::StringID>::deinit(v27);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v26);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v25);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v24);
  v19.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v23);
  if (v50[0])
  {
    if (v52)
    {
      (*(*v50[0] + 40))(v19.n128_f64[0]);
    }

    v52 = 0;
    memset(v50, 0, sizeof(v50));
    ++v51;
  }

  if (v47[0])
  {
    if (v49)
    {
      (*(*v47[0] + 40))(v19);
    }

    v49 = 0;
    memset(v47, 0, sizeof(v47));
    ++v48;
  }

  if (v44[0])
  {
    if (v46)
    {
      (*(*v44[0] + 40))(v19);
    }

    v46 = 0;
    memset(v44, 0, sizeof(v44));
    ++v45;
  }

  re::DynamicArray<re::StringID>::deinit(v43);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v42);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v41);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v40);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v39);
  re::RigGraphCallbackBuilder::buildCallbackData(v53, a1, re::internal::arvinoToArvinoRetargetNodeCallback, v90);
  re::internal::bindCallbackOutputToNodeOutputPose(v6, v91, v9, a1);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v90);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v55[8]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v53 + 8);
  re::RigDataValue::~RigDataValue(v91);
  re::RigDataValue::~RigDataValue(v92);
  if (v71[0])
  {
    if (v73)
    {
      (*(*v71[0] + 40))();
    }

    v73 = 0;
    memset(v71, 0, sizeof(v71));
    ++v72;
  }

  if (v68[0])
  {
    if (v70)
    {
      (*(*v68[0] + 40))();
    }

    v70 = 0;
    memset(v68, 0, sizeof(v68));
    ++v69;
  }

  if (v65[0])
  {
    if (v67)
    {
      (*(*v65[0] + 40))();
    }

    v67 = 0;
    memset(v65, 0, sizeof(v65));
    ++v66;
  }

  re::DynamicArray<re::StringID>::deinit(v64);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v63);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v62);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v61);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v60);
  re::RigDataValue::~RigDataValue(v93);
  re::RigDataValue::~RigDataValue(v94);
  if (v87[0])
  {
    if (v89)
    {
      (*(*v87[0] + 40))();
    }

    v89 = 0;
    memset(v87, 0, sizeof(v87));
    ++v88;
  }

  if (v84[0])
  {
    if (v86)
    {
      (*(*v84[0] + 40))();
    }

    v86 = 0;
    memset(v84, 0, sizeof(v84));
    ++v85;
  }

  if (v81[0])
  {
    if (v83)
    {
      (*(*v81[0] + 40))();
    }

    v83 = 0;
    memset(v81, 0, sizeof(v81));
    ++v82;
  }

  re::DynamicArray<re::StringID>::deinit(v80);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v79);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v78);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v77);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v76);
  re::RigDataValue::~RigDataValue(v95);
  return 1;
}

uint64_t re::internal::makeNodeUnique<re::internal::AutoRetargetRigGraphNode,re::Allocator,re::RigHierarchy,re::RigHierarchy>(re::internal::AutoRetargetRigGraphNode **a1, re::Allocator *a2, const re::RigHierarchy *a3, const re::RigHierarchy *a4)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v8 = (*(*a2 + 32))(a2, 144, 8);
  v9 = re::internal::AutoRetargetRigGraphNode::AutoRetargetRigGraphNode(v8, a2, a3, a4);
  v11[0] = &unk_1F5CB08E8;
  v11[1] = a2;
  v11[3] = v11;
  a1[4] = (a1 + 1);
  *a1 = v9;
  a1[1] = &unk_1F5CB08E8;
  a1[2] = a2;
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v11);
}

void re::internal::bipedToBipedAutoRetargetNodeCallback(int a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, re::RigDataValue *a7, uint64_t a8, re::internal::AutoRetargetRigGraphNode *a9)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (a4 == 1)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (a4 <= 2)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a4);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  if (a4 == 3)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  if (a4 <= 4)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (a4 == 5)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
  }

  if (!a8)
  {
    goto LABEL_17;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = &str_67;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v19 = 0;
  v21 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = -1;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v35 = 0;
  v34 = 0;
  v30 = &str_67;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v11 = re::internal::AutoRetargetRigGraphNode::initialize(a9, (a3 + 576), (a3 + 864), (a3 + 1152), (a3 + 1440), v12);
  re::RigDataValue::~RigDataValue(v12);
  if (v11)
  {
    re::internal::AutoRetargetRigGraphNode::solveAndUpdate(a9, a3, (a3 + 288), a7);
  }
}

uint64_t re::internal::bipedToBipedAutoRetargetNodeCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v98 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_77;
  }

  if (a3 == 1)
  {
LABEL_77:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_78;
  }

  if (a3 <= 2)
  {
LABEL_78:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_79;
  }

  if (a3 == 3)
  {
LABEL_79:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
LABEL_80:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_80;
  }

  v6 = *(*a2 + 184);
  v7 = *(a2[1] + 184);
  v9 = a2[2];
  v8 = a2[3];
  v10 = *a4;
  re::internal::makePoseFromRigHierarchy(a1, v6, v97);
  re::RigHierarchy::getBindPoseHierarchy(v6, v11, &v76);
  re::internal::makePoseFromRigHierarchy(a1, &v76, v96);
  re::internal::makePoseFromRigHierarchy(a1, v7, v95);
  re::RigHierarchy::getBindPoseHierarchy(v7, v12, &v60);
  re::internal::makePoseFromRigHierarchy(a1, &v60, v94);
  re::internal::makePose(a1, v6[27], v93);
  v59 = 0;
  memset(v55, 0, sizeof(v55));
  memset(v57, 0, sizeof(v57));
  v56 = 0;
  v58 = 0;
  v13 = *a1;
  re::RigGraphCallbackBuilder::init(v55, *a1);
  *&v92[0].var0 = 0x10643527A253C4;
  v92[0].var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v55, v92, v97);
  if (*&v92[0].var0)
  {
    if (*&v92[0].var0)
    {
    }
  }

  *&v92[0].var0 = 0x104A00692196D8;
  v92[0].var1 = "SourcePose";
  re::RigGraphCallbackBuilder::addInputParam(v55, v92, v95);
  if (*&v92[0].var0)
  {
    if (*&v92[0].var0)
    {
    }
  }

  *&v92[0].var0 = 0xFC2B6F833ABE967ELL;
  v92[0].var1 = "TargetBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v55, v92, v96);
  if (*&v92[0].var0)
  {
    if (*&v92[0].var0)
    {
    }
  }

  *&v92[0].var0 = 0x8AE112C755FE2F92;
  v92[0].var1 = "SourceBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v55, v92, v94);
  if (*&v92[0].var0)
  {
    if (*&v92[0].var0)
    {
    }
  }

  *&v92[0].var0 = 0xE3E7F62755B346DALL;
  v92[0].var1 = "TargetModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v55, v92, v9);
  if (*&v92[0].var0)
  {
    if (*&v92[0].var0)
    {
    }
  }

  *&v92[0].var0 = 0x8128E1FAEBA80E46;
  v92[0].var1 = "SourceModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v55, v92, v8);
  if (*&v92[0].var0)
  {
    if (*&v92[0].var0)
    {
    }
  }

  *&v92[0].var0 = 0xDC3EE39E3142978ELL;
  v92[0].var1 = "SolvedTargetPose";
  re::RigGraphCallbackBuilder::addOutputParam(v55, v92, v93);
  if (*&v92[0].var0)
  {
    if (*&v92[0].var0)
    {
    }
  }

  v39 = v76;
  v40 = v77;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v41, v78);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v42, v79);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v43, v80);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v44, v81);
  re::DynamicArray<re::StringID>::DynamicArray(v45, v82);
  re::DynamicArray<unsigned long>::DynamicArray(v46, v83);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v49, v86);
  re::DynamicArray<unsigned long>::DynamicArray(v52, v89);
  v23 = v60;
  v24 = v61;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v25, v62);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v26, v63);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v27, v64);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v28, v65);
  re::DynamicArray<re::StringID>::DynamicArray(v29, v66);
  re::DynamicArray<unsigned long>::DynamicArray(v30, v67);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v33, v70);
  re::DynamicArray<unsigned long>::DynamicArray(v36, v73);
  re::internal::makeNodeUnique<re::internal::AutoRetargetRigGraphNode,re::Allocator,re::RigHierarchy,re::RigHierarchy>(v92, v13, &v39, &v23);
  if (v36[0])
  {
    if (v38)
    {
      (*(*v36[0] + 40))();
    }

    v38 = 0;
    memset(v36, 0, sizeof(v36));
    ++v37;
  }

  if (v33[0])
  {
    if (v35)
    {
      (*(*v33[0] + 40))();
    }

    v35 = 0;
    memset(v33, 0, sizeof(v33));
    ++v34;
  }

  if (v30[0])
  {
    if (v32)
    {
      (*(*v30[0] + 40))();
    }

    v32 = 0;
    memset(v30, 0, sizeof(v30));
    ++v31;
  }

  re::DynamicArray<re::StringID>::deinit(v29);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v28);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v27);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v26);
  v21.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v25);
  if (v52[0])
  {
    if (v54)
    {
      (*(*v52[0] + 40))(v21.n128_f64[0]);
    }

    v54 = 0;
    memset(v52, 0, sizeof(v52));
    ++v53;
  }

  if (v49[0])
  {
    if (v51)
    {
      (*(*v49[0] + 40))(v21);
    }

    v51 = 0;
    memset(v49, 0, sizeof(v49));
    ++v50;
  }

  if (v46[0])
  {
    if (v48)
    {
      (*(*v46[0] + 40))(v21);
    }

    v48 = 0;
    memset(v46, 0, sizeof(v46));
    ++v47;
  }

  re::DynamicArray<re::StringID>::deinit(v45);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v44);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v43);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v42);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v41);
  re::RigGraphCallbackBuilder::buildCallbackData(v55, a1, re::internal::bipedToBipedAutoRetargetNodeCallback, v92);
  re::internal::bindCallbackOutputToNodeOutputPose(v6, v93, v10, a1);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v92);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v57[8]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v55 + 8);
  re::RigDataValue::~RigDataValue(v93);
  re::RigDataValue::~RigDataValue(v94);
  if (v73[0])
  {
    if (v75)
    {
      (*(*v73[0] + 40))();
    }

    v75 = 0;
    memset(v73, 0, sizeof(v73));
    ++v74;
  }

  if (v70[0])
  {
    if (v72)
    {
      (*(*v70[0] + 40))();
    }

    v72 = 0;
    memset(v70, 0, sizeof(v70));
    ++v71;
  }

  if (v67[0])
  {
    if (v69)
    {
      (*(*v67[0] + 40))();
    }

    v69 = 0;
    memset(v67, 0, sizeof(v67));
    ++v68;
  }

  re::DynamicArray<re::StringID>::deinit(v66);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v65);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v64);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v63);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v62);
  re::RigDataValue::~RigDataValue(v95);
  re::RigDataValue::~RigDataValue(v96);
  if (v89[0])
  {
    if (v91)
    {
      (*(*v89[0] + 40))();
    }

    v91 = 0;
    memset(v89, 0, sizeof(v89));
    ++v90;
  }

  if (v86[0])
  {
    if (v88)
    {
      (*(*v86[0] + 40))();
    }

    v88 = 0;
    memset(v86, 0, sizeof(v86));
    ++v87;
  }

  if (v83[0])
  {
    if (v85)
    {
      (*(*v83[0] + 40))();
    }

    v85 = 0;
    memset(v83, 0, sizeof(v83));
    ++v84;
  }

  re::DynamicArray<re::StringID>::deinit(v82);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v81);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v80);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v79);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v78);
  re::RigDataValue::~RigDataValue(v97);
  return 1;
}

uint64_t re::internal::bipedToBipedAutoRetargetWithOffsetNodeCallback(int a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, re::RigDataValue *a7, uint64_t a8, re::internal::AutoRetargetRigGraphNode *a9)
{
  if (!a4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  if (a4 == 1)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (a4 <= 2)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a4);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  if (a4 == 3)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  if (a4 <= 4)
  {
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (a4 == 5)
  {
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  if (a4 <= 6)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 6, 6);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  if (!a8)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  result = re::internal::AutoRetargetRigGraphNode::initialize(a9, (a3 + 576), (a3 + 864), (a3 + 1152), (a3 + 1440), (a3 + 1728));
  if (result)
  {

    return re::internal::AutoRetargetRigGraphNode::solveAndUpdate(a9, a3, (a3 + 288), a7);
  }

  return result;
}

uint64_t re::internal::bipedToBipedAutoRetargetWithOffsetNodeCompile(re::Allocator **a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v102 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_81;
  }

  if (a3 == 1)
  {
LABEL_81:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_82;
  }

  if (a3 <= 2)
  {
LABEL_82:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_83;
  }

  if (a3 == 3)
  {
LABEL_83:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_84;
  }

  if (!a5)
  {
LABEL_84:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_85;
  }

  v8 = *(*a2 + 184);
  v9 = *(*(a2 + 8) + 184);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *a4;
  re::internal::makePoseFromRigHierarchy(a1, v8, v101);
  re::RigHierarchy::getBindPoseHierarchy(v8, v13, &v80);
  re::internal::makePoseFromRigHierarchy(a1, &v80, v100);
  re::internal::makePoseFromRigHierarchy(a1, v9, v99);
  re::RigHierarchy::getBindPoseHierarchy(v9, v14, &v64);
  re::internal::makePoseFromRigHierarchy(a1, &v64, v98);
  re::internal::makePose(a1, v8[27], v97);
  v63 = 0;
  memset(v59, 0, sizeof(v59));
  memset(v61, 0, sizeof(v61));
  v60 = 0;
  v62 = 0;
  v15 = *a1;
  re::RigGraphCallbackBuilder::init(v59, *a1);
  *&v96[0].var0 = 0x10643527A253C4;
  v96[0].var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v59, v96, v101);
  if (*&v96[0].var0)
  {
    if (*&v96[0].var0)
    {
    }
  }

  *&v96[0].var0 = 0x104A00692196D8;
  v96[0].var1 = "SourcePose";
  re::RigGraphCallbackBuilder::addInputParam(v59, v96, v99);
  if (*&v96[0].var0)
  {
    if (*&v96[0].var0)
    {
    }
  }

  *&v96[0].var0 = 0xFC2B6F833ABE967ELL;
  v96[0].var1 = "TargetBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v59, v96, v100);
  if (*&v96[0].var0)
  {
    if (*&v96[0].var0)
    {
    }
  }

  *&v96[0].var0 = 0x8AE112C755FE2F92;
  v96[0].var1 = "SourceBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v59, v96, v98);
  if (*&v96[0].var0)
  {
    if (*&v96[0].var0)
    {
    }
  }

  *&v96[0].var0 = 0xE3E7F62755B346DALL;
  v96[0].var1 = "TargetModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v59, v96, v11);
  if (*&v96[0].var0)
  {
    if (*&v96[0].var0)
    {
    }
  }

  *&v96[0].var0 = 0x8128E1FAEBA80E46;
  v96[0].var1 = "SourceModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v59, v96, v10);
  if (*&v96[0].var0)
  {
    if (*&v96[0].var0)
    {
    }
  }

  *&v96[0].var0 = 0xA7BB9F3DA476C144;
  v96[0].var1 = "RetargetingOffsets";
  if (a3 <= 4)
  {
LABEL_85:
    re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash();
    __break(1u);
  }

  re::RigGraphCallbackBuilder::addInputParam(v59, v96, *(a2 + 32));
  if (*&v96[0].var0)
  {
    if (*&v96[0].var0)
    {
    }
  }

  *&v96[0].var0 = 0xDC3EE39E3142978ELL;
  v96[0].var1 = "SolvedTargetPose";
  re::RigGraphCallbackBuilder::addOutputParam(v59, v96, v97);
  if (*&v96[0].var0)
  {
    if (*&v96[0].var0)
    {
    }
  }

  v43 = v80;
  v44 = v81;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v45, v82);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v46, v83);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v47, v84);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v48, v85);
  re::DynamicArray<re::StringID>::DynamicArray(v49, v86);
  re::DynamicArray<unsigned long>::DynamicArray(v50, v87);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v53, v90);
  re::DynamicArray<unsigned long>::DynamicArray(v56, v93);
  v27 = v64;
  v28 = v65;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v29, v66);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v30, v67);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v31, v68);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v32, v69);
  re::DynamicArray<re::StringID>::DynamicArray(v33, v70);
  re::DynamicArray<unsigned long>::DynamicArray(v34, v71);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v37, v74);
  re::DynamicArray<unsigned long>::DynamicArray(v40, v77);
  re::internal::makeNodeUnique<re::internal::AutoRetargetRigGraphNode,re::Allocator,re::RigHierarchy,re::RigHierarchy>(v96, v15, &v43, &v27);
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

  if (v34[0])
  {
    if (v36)
    {
      (*(*v34[0] + 40))();
    }

    v36 = 0;
    memset(v34, 0, sizeof(v34));
    ++v35;
  }

  re::DynamicArray<re::StringID>::deinit(v33);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v32);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v31);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v30);
  v25.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v29);
  if (v56[0])
  {
    if (v58)
    {
      (*(*v56[0] + 40))(v25.n128_f64[0]);
    }

    v58 = 0;
    memset(v56, 0, sizeof(v56));
    ++v57;
  }

  if (v53[0])
  {
    if (v55)
    {
      (*(*v53[0] + 40))(v25);
    }

    v55 = 0;
    memset(v53, 0, sizeof(v53));
    ++v54;
  }

  if (v50[0])
  {
    if (v52)
    {
      (*(*v50[0] + 40))(v25);
    }

    v52 = 0;
    memset(v50, 0, sizeof(v50));
    ++v51;
  }

  re::DynamicArray<re::StringID>::deinit(v49);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v48);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v47);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v46);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v45);
  re::RigGraphCallbackBuilder::buildCallbackData(v59, a1, re::internal::bipedToBipedAutoRetargetWithOffsetNodeCallback, v96);
  re::internal::bindCallbackOutputToNodeOutputPose(v8, v97, v12, a1);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v96);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v61[8]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v59 + 8);
  re::RigDataValue::~RigDataValue(v97);
  re::RigDataValue::~RigDataValue(v98);
  if (v77[0])
  {
    if (v79)
    {
      (*(*v77[0] + 40))();
    }

    v79 = 0;
    memset(v77, 0, sizeof(v77));
    ++v78;
  }

  if (v74[0])
  {
    if (v76)
    {
      (*(*v74[0] + 40))();
    }

    v76 = 0;
    memset(v74, 0, sizeof(v74));
    ++v75;
  }

  if (v71[0])
  {
    if (v73)
    {
      (*(*v71[0] + 40))();
    }

    v73 = 0;
    memset(v71, 0, sizeof(v71));
    ++v72;
  }

  re::DynamicArray<re::StringID>::deinit(v70);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v69);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v68);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v67);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v66);
  re::RigDataValue::~RigDataValue(v99);
  re::RigDataValue::~RigDataValue(v100);
  if (v93[0])
  {
    if (v95)
    {
      (*(*v93[0] + 40))();
    }

    v95 = 0;
    memset(v93, 0, sizeof(v93));
    ++v94;
  }

  if (v90[0])
  {
    if (v92)
    {
      (*(*v90[0] + 40))();
    }

    v92 = 0;
    memset(v90, 0, sizeof(v90));
    ++v91;
  }

  if (v87[0])
  {
    if (v89)
    {
      (*(*v87[0] + 40))();
    }

    v89 = 0;
    memset(v87, 0, sizeof(v87));
    ++v88;
  }

  re::DynamicArray<re::StringID>::deinit(v86);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v85);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v84);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v83);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v82);
  re::RigDataValue::~RigDataValue(v101);
  return 1;
}

void re::internal::registerRetargetingSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719BC8;
  v11[3] = *&off_1E8719BD8;
  v11[4] = xmmword_1E8719BE8;
  v11[0] = xmmword_1E8719BA8;
  v11[1] = *&off_1E8719BB8;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 4uLL, 1uLL, re::internal::retargetingSolverCompile, v11);
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

void re::internal::registerArvinoToArvinoRetargetNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719BF8;
  v11[1] = *&off_1E8719C08;
  v11[2] = xmmword_1E8719C18;
  v11[3] = *&off_1E8719C28;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::arvinoToArvinoRetargetNodeCompile, v11);
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

void re::internal::registerBipedToBipedRetargetNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719C58;
  v11[3] = *&off_1E8719C68;
  v11[4] = xmmword_1E8719C78;
  v11[0] = xmmword_1E8719C38;
  v11[1] = *&off_1E8719C48;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 4uLL, 1uLL, re::internal::bipedToBipedAutoRetargetNodeCompile, v11);
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

void re::internal::registerBipedToBipedRetargetWithOffsetNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719CA8;
  v11[3] = *&off_1E8719CB8;
  v11[4] = xmmword_1E8719CC8;
  v11[5] = *&off_1E8719CD8;
  v11[0] = xmmword_1E8719C88;
  v11[1] = *&off_1E8719C98;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 5uLL, 1uLL, re::internal::bipedToBipedAutoRetargetWithOffsetNodeCompile, v11);
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

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_33CoreIKRetargetingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB0868;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_33CoreIKRetargetingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    MEMORY[0x1E69037E0](*v2);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 5);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_33CoreIKRetargetingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_33CoreIKRetargetingSolverNodeHelperENS_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_24AutoRetargetRigGraphNodeENS2_9AllocatorEJNS2_12RigHierarchyES7_EEEDaPT0_DpT1_EUlPvE_NS_9allocatorISE_EEFvSD_EE7__cloneEPNS0_6__baseISH_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB08E8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_24AutoRetargetRigGraphNodeENS2_9AllocatorEJNS2_12RigHierarchyES7_EEEDaPT0_DpT1_EUlPvE_NS_9allocatorISE_EEFvSD_EEclEOSD_(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    if (*v2)
    {
      MEMORY[0x1E69037E0]();
    }

    re::FixedArray<CoreIKTransform>::deinit(v2 + 13);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 10);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 7);
    re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v2 + 4);
    re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v2 + 1);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_24AutoRetargetRigGraphNodeENS2_9AllocatorEJNS2_12RigHierarchyES7_EEEDaPT0_DpT1_EUlPvE_NS_9allocatorISE_EEFvSD_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_24AutoRetargetRigGraphNodeENS_9AllocatorEJNS_12RigHierarchyES4_EEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::introspect_AnimationHandoffType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1907F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1907F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1907F8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE190858, "AnimationHandoffType", 4, 4, 1, 1);
      qword_1EE190858 = &unk_1F5D0C658;
      qword_1EE190898 = &re::introspect_AnimationHandoffType(BOOL)::enumTable;
      dword_1EE190868 = 9;
      __cxa_guard_release(&qword_1EE1907F8);
    }

    if (_MergedGlobals_19)
    {
      break;
    }

    _MergedGlobals_19 = 1;
    re::IntrospectionRegistry::add(&qword_1EE190858, a2);
    v41 = 0x8FFDC97622DE77ECLL;
    v42 = "AnimationHandoffType";
    v45 = 208862;
    v46 = "int";
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
      v6 = qword_1EE190898;
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
      xmmword_1EE190878 = v43;
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
    v28 = __cxa_guard_acquire(&qword_1EE1907F0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "SnapshotAndReplace";
      qword_1EE190828 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Replace";
      qword_1EE190830 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Compose";
      qword_1EE190838 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "Stop";
      qword_1EE190840 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "UpdateBaseAndCompose";
      qword_1EE190848 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 5;
      *(v40 + 16) = "ComposeAndUpdateBase";
      qword_1EE190850 = v40;
      __cxa_guard_release(&qword_1EE1907F0);
    }
  }
}

void *re::allocInfo_AnimationHandoffDesc(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190800))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1908A0, "AnimationHandoffDesc");
    __cxa_guard_release(&qword_1EE190800);
  }

  return &unk_1EE1908A0;
}

void re::initInfo_AnimationHandoffDesc(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x8FFDC97622CF569ALL;
  v18[1] = "AnimationHandoffDesc";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE190808, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE190808);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "fadeDuration";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x400000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE190810 = v9;
      v10 = re::introspectionAllocator(v9);
      re::introspect_AnimationHandoffType(v10, v11);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "type";
      *(v12 + 16) = &qword_1EE190858;
      *(v12 + 24) = 0;
      *(v12 + 32) = 2;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE190818 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "layerOnly";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE190820 = v16;
      __cxa_guard_release(&qword_1EE190808);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE190810;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationHandoffDesc>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationHandoffDesc>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationHandoffDesc>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationHandoffDesc>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::AnimationHandoffDesc>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  *a3 = 0;
  *(a3 + 12) = 0x80000000;
  *(a3 + 16) = "";
}

uint64_t re::internal::defaultConstructV2<re::AnimationHandoffDesc>(uint64_t result)
{
  *(result + 8) = 0;
  *result = 0;
  *(result + 12) = 0x80000000;
  *(result + 16) = "";
  return result;
}

void re::TimelineGroup::timelineDesc(re::TimelineGroup *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 10);
  if (v4)
  {
    v5 = *(this + 11);
    v6 = 8 * v4;
    v7 = 0.0;
    do
    {
      v8 = *v5++;
      v9 = (*(*v8 + 40))(v8);
      if (v7 < v9)
      {
        v7 = v9;
      }

      v6 -= 8;
    }

    while (v6);
    v10 = v7;
  }

  else
  {
    v10 = 0.0;
  }

  *a2 = 0;
  *(a2 + 4) = v10;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = v10;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = *(this + 16);
}

double re::TimelineGroup::totalDuration(re::TimelineGroup *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(this + 11);
  v3 = 8 * v1;
  v4 = 0.0;
  do
  {
    v5 = *v2++;
    v6 = (*(*v5 + 40))(v5);
    if (v4 < v6)
    {
      v4 = v6;
    }

    v3 -= 8;
  }

  while (v3);
  return v4;
}

void re::TimelineGroup::~TimelineGroup(re::TimelineGroup *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 9);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 9);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::TimelineGroup::child(re::TimelineGroup *this, unint64_t a2)
{
  if (*(this + 10) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 11) + 8 * a2);
}

uint64_t re::internal::CoreIKFootPlacementSolverNodeHelper::updateLookAtTasks(re::internal::CoreIKFootPlacementSolverNodeHelper *this, const re::RigDataValue *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  result = CoreIKFootPlacementSolverGetGenericSolver();
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = result;
    for (i = 0; i != v4; ++i)
    {
      v7 = re::RigDataValue::attributeValue(a2, i);
      re::internal::getRuntimeValue<re::internal::IKLookAtTaskSettings>(v7, &v8);
      MEMORY[0x1E6903A00](v5, v9);
      result = CoreIKGenericConstraintSetLookAtParameters();
    }
  }

  return result;
}

uint64_t re::internal::CoreIKFootPlacementSolverNodeHelper::updateRayCastTasks(float32x4_t *a1, re::RigDataValue *a2, float32x4_t *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  result = CoreIKFootPlacementSolverGetConstraintCount();
  if (result)
  {
    v7 = result;
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      v10 = MEMORY[0x1E69038A0](a1->i64[0], i);
      result = CoreIKFootPlacementConstraintIsRayTracing();
      if (result)
      {
        v21 = a1[3].f32[0] * 0.5;
        v22 = a1[2];
        v11 = re::RigDataValue::attributeValue(a2, v8);
        re::internal::getSRTFromRDV(v11, v23);
        v12 = a3[1];
        v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
        v14 = vnegq_f32(v12);
        v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v14), v24, v13);
        v16 = vaddq_f32(v15, v15);
        v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
        v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v14), v17, v13);
        a1[1] = vsubq_f32(vaddq_f32(a3[2], vmulq_f32(*a3, vaddq_f32(vaddq_f32(v24, vmulq_laneq_f32(v17, v12, 3)), vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL)))), vmulq_n_f32(v22, v21));
        re::internal::RayCaster::cast(a1[4].i64, &a1[1], v23);
        if (LOBYTE(v23[0]) == 1)
        {
          CoreIKFootPlacementConstraintSetRayTraceParameters();
          v19.n128_u32[0] = 1.0;
          v20.n128_u32[0] = 1.0;
        }

        else
        {
          v19.n128_u64[0] = 0;
          v20.n128_u64[0] = 0;
        }

        result = MEMORY[0x1E6903860](v10, v19, v20);
        ++v8;
      }
    }
  }

  return result;
}

uint64_t re::internal::CoreIKFootPlacementSolverNodeHelper::solveAndUpdate(re::internal::CoreIKFootPlacementSolverNodeHelper *this, const re::RigDataValue *a2, re::RigDataValue *a3)
{
  CoreIKFootPlacementSolverGetGenericSolver();
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v6 = CoreIKGenericSolverSolve();
  if (re::internal::enableSignposts(0, 0))
  {
    CoreIKFootPlacementSolverGetGenericSolver();
    CoreIKGenericSolverGetConstraintCount();
    CoreIKFootPlacementSolverGetGenericSolver();
    CoreIKGenericSolverGetJointCount();
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::updateOutputBasedOnSolveResult(v6, a2, (this + 184), a3);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::footPlacementSolverCallback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, float32x4_t *a9)
{
  if (!a4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v9 = a4;
  if (a4 == 1)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  if (a4 <= 2)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, v9);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  re::internal::getSRTFromRDV((a3 + 576), &v37);
  if (v9 == 3)
  {
LABEL_18:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  re::internal::getSRTFromRDV((a3 + 864), &v34);
  if (v9 <= 4)
  {
LABEL_19:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  if (v9 == 5)
  {
LABEL_20:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  if (!a8)
  {
LABEL_21:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  _Q2 = v38;
  v16 = vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL);
  v17 = vnegq_f32(v38);
  v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v17), v35, v16);
  _S7 = v35.i32[3];
  v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v35, v38, 3), v38, v35, 3);
  __asm { FMLA            S3, S7, V2.S[3] }

  v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), v17), v36, v16);
  v27 = vaddq_f32(v26, v26);
  v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
  v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v17), v28, v16);
  v20.i32[3] = _S3;
  v33[0] = vmulq_f32(v37, v34);
  v33[1] = v20;
  v33[2] = vaddq_f32(v39, vmulq_f32(v37, vaddq_f32(vaddq_f32(v36, vmulq_laneq_f32(v28, v38, 3)), vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL))));
  __asm { FMOV            V5.4S, #-1.0 }

  CoreIKFootPlacementSolverGetGenericSolver();
  CoreIKGenericSolverSetWorldToSolverTransform();
  re::RigDataValue::getRuntimeValue<float>(a3 + 1440, v31);
  CoreIKFootPlacementSolverSetBodyControllerParameters();
  re::internal::CoreIKFootPlacementSolverNodeHelper::updateRayCastTasks(a9, (a3 + 288), v33);
  re::internal::CoreIKFootPlacementSolverNodeHelper::updateLookAtTasks(a9->i64[0], (a3 + 1152));
  re::internal::transferPose(a3, &a9[11].i64[1]);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  return re::internal::CoreIKFootPlacementSolverNodeHelper::solveAndUpdate(a9, a3, a7);
}

uint64_t re::internal::footPlacementSolverCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v42[37] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_34;
  }

  if (a3 == 1)
  {
LABEL_34:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_35;
  }

  if (a3 <= 2)
  {
LABEL_35:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_36;
  }

  if (a3 == 3)
  {
LABEL_36:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_37;
  }

  v10 = a2[1];
  v11 = *(*a2 + 184);
  v12 = a2[2];
  v13 = a2[3];
  v41[0] = 0x51C691EF1C9C00D8;
  v41[1] = "IKLookAtTaskSettings[0]";
  re::internal::makeRigDataValue(a1, v41, v42);
  if (v41[0])
  {
    if (v41[0])
    {
    }
  }

  if (a3 == 5)
  {
    re::RigDataValue::operator=(v42, a2[4]);
  }

  if (!a5)
  {
LABEL_37:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  v16 = *a4;
  v17 = strlen(*(v10 + 232));
  v18 = MEMORY[0x1E6903780](*(v10 + 232), v17);
  re::internal::makePoseFromRig(a1, v11, v18, v41);
  v19 = MEMORY[0x1E6903C40](v18);
  re::internal::makePose(a1, v19, v40);
  v20 = *a1;
  re::internal::makeNodeUnique<re::internal::CoreIKFootPlacementSolverNodeHelper,re::Allocator,CoreIKRig *,std::reference_wrapper<re::CollisionWorld const>>(v39, *a1, v18, *(*(a1 + 16) + 56));
  re::internal::makeModelSpacePoseForRayTracingJoints(a1, v11, *v39[0], v38);
  v21 = re::RigHierarchy::jointName(v11, 0);
  re::internal::makeModelSpaceJointPoseRDV(a1, v11, *(v21 + 8), v37);
  v36 = 0;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  re::RigGraphCallbackBuilder::init(v32, v20);
  *&v31.var0 = 0x76F1BA5D1EB6;
  v31.var1 = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v32, &v31, v41);
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0x10988E7944E83FE6;
  v31.var1 = "ModelSpaceRayCastTransforms";
  re::RigGraphCallbackBuilder::addInputParam(v32, &v31, v38);
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0x1F85042B1B4E4034;
  v31.var1 = "WorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v32, &v31, v13);
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0xF5F802EF32C90F2;
  v31.var1 = "SolverTransform";
  re::RigGraphCallbackBuilder::addInputParam(v32, &v31, v37);
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0x1D028121B777EB8;
  v31.var1 = "LookAtTasks";
  re::RigGraphCallbackBuilder::addInputParam(v32, &v31, v42);
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0x4DF90C13235A0886;
  v31.var1 = "HipOffsetMultiplier";
  re::RigGraphCallbackBuilder::addInputParam(v32, &v31, v12);
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0x10498EC9357CACLL;
  v31.var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v32, &v31, v40);
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v32, a1, re::internal::footPlacementSolverCallback, v39);
  v29 = re::internal::bindCallbackOutputToNodeOutputPose(v11, v40, v18, a1, v16);
  MEMORY[0x1E69037D0](v18, v29);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v34 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v32 + 8);
  re::RigDataValue::~RigDataValue(v37);
  re::RigDataValue::~RigDataValue(v38);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v39);
  re::RigDataValue::~RigDataValue(v40);
  re::RigDataValue::~RigDataValue(v41);
  re::RigDataValue::~RigDataValue(v42);
  return 1;
}

uint64_t re::internal::makeNodeUnique<re::internal::CoreIKFootPlacementSolverNodeHelper,re::Allocator,CoreIKRig *,std::reference_wrapper<re::CollisionWorld const>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v8 = (*(*a2 + 32))(a2, 224, 16);
  *v8 = CoreIKFootPlacementSolverCreate();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v8 + 64) = a4;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 84) = 0xFFFFFFFF00000001;
  *(v8 + 124) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 140) = 0u;
  *(v8 + 108) = 0u;
  *(v8 + 92) = 0u;
  *(v8 + 128) = 1;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 136) = 0;
  *(v8 + 160) = 0;
  *(v8 + 176) = a2;
  *(v8 + 192) = 0;
  *(v8 + 200) = 0;
  *(v8 + 184) = 0;
  *(v8 + 208) = 1;
  v9 = MEMORY[0x1E6903C40](a3);
  re::FixedArray<CoreIKTransform>::init<>((v8 + 184), a2, v9);
  CoreIKFootPlacementSolverGetGenericSolver();
  CoreIKGenericSolverGetTargetRestPose();
  v11 = vmulq_f32(v10, v10);
  *(v8 + 16) = 0u;
  *(v8 + 32) = xmmword_1E30476B0;
  *(v8 + 48) = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32)) * 4.0;
  v13[0] = &unk_1F5CB0A00;
  v13[1] = a2;
  v13[3] = v13;
  a1[4] = (a1 + 1);
  *a1 = v8;
  a1[1] = &unk_1F5CB0A00;
  a1[2] = a2;
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v13);
}

uint64_t re::internal::footPlacementDebugSolverCallback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, float32x4_t *a9)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (a4 <= 3)
  {
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, a4);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  re::internal::getSRTFromRDV((a3 + 864), &v44);
  if (a4 == 4)
  {
LABEL_16:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  re::internal::getSRTFromRDV((a3 + 1152), &v41);
  _Q2 = v45;
  v16 = vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL);
  v17 = vnegq_f32(v45);
  v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), v17), v42, v16);
  _S7 = v42.i32[3];
  v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v42, v45, 3), v45, v42, 3);
  __asm { FMLA            S3, S7, V2.S[3] }

  v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), v17), v43, v16);
  v27 = vaddq_f32(v26, v26);
  v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
  v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v17), v28, v16);
  v20.i32[3] = _S3;
  v40[0] = vmulq_f32(v44, v41);
  v40[1] = v20;
  v40[2] = vaddq_f32(v46, vmulq_f32(v44, vaddq_f32(vaddq_f32(v43, vmulq_laneq_f32(v28, v45, 3)), vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL))));
  __asm { FMOV            V5.4S, #-1.0 }

  CoreIKFootPlacementSolverGetGenericSolver();
  CoreIKGenericSolverSetWorldToSolverTransform();
  re::RigDataValue::getRuntimeValue<float>(a3 + 576, v31);
  CoreIKFootPlacementSolverSetBodyControllerParameters();
  re::internal::CoreIKFootPlacementSolverNodeHelper::updateRayCastTasks(a9, (a3 + 288), v40);
  if (a4 <= 5)
  {
LABEL_17:
    re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  re::internal::CoreIKFootPlacementSolverNodeHelper::updateLookAtTasks(a9->i64[0], (a3 + 1440));
  GenericSolver = CoreIKFootPlacementSolverGetGenericSolver();
  if (a4 == 6)
  {
LABEL_18:
    re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 6, 6);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  v35 = GenericSolver;
  re::internal::GameRigSettingsUpdateHelper::updateRigJointSettings((a3 + 1728));
  if (a4 <= 7)
  {
LABEL_19:
    re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 7, 7);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  re::internal::GameRigSettingsUpdateHelper::updateRigTaskSettings((a3 + 2016), v35);
  if (a4 == 8)
  {
LABEL_20:
    re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 8, 8);
    _os_crash();
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  re::internal::GameRigSettingsUpdateHelper::updateRigSolverSettings((a3 + 2304), v35);
  re::internal::transferPose(a3, &a9[11].i64[1]);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a8)
  {
    goto LABEL_21;
  }

  return re::internal::CoreIKFootPlacementSolverNodeHelper::solveAndUpdate(a9, a3, a7);
}

uint64_t re::internal::footPlacementSolverDebugCompile(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_44;
  }

  if (a3 == 1)
  {
LABEL_44:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_45:
    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
LABEL_46:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
LABEL_47:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash();
    __break(1u);
LABEL_48:
    re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash();
    __break(1u);
LABEL_49:
    re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 6, 6);
    _os_crash();
    __break(1u);
LABEL_50:
    re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 7, 7);
    _os_crash();
    __break(1u);
    goto LABEL_51;
  }

  v10 = *(*a2 + 184);
  v11 = *(*(a2 + 8) + 232);
  v12 = strlen(v11);
  v13 = MEMORY[0x1E6903780](v11, v12);
  re::internal::makePoseFromRig(a1, v10, v13, v46);
  v14 = MEMORY[0x1E6903C40](v13);
  re::internal::makePose(a1, v14, v45);
  v15 = *a1;
  re::internal::makeNodeUnique<re::internal::CoreIKFootPlacementSolverNodeHelper,re::Allocator,CoreIKRig *,std::reference_wrapper<re::CollisionWorld const>>(v44, *a1, v13, *(*(a1 + 16) + 56));
  re::internal::makeModelSpacePoseForRayTracingJoints(a1, v10, *v44[0], v43);
  v16 = re::RigHierarchy::jointName(v10, 0);
  re::internal::makeModelSpaceJointPoseRDV(a1, v10, *(v16 + 8), v42);
  v41 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  re::RigGraphCallbackBuilder::init(v37, v15);
  *&v36.var0 = 0x76F1BA5D1EB6;
  v36.var1 = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v37, &v36, v46);
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0x10988E7944E83FE6;
  v36.var1 = "ModelSpaceRayCastTransforms";
  re::RigGraphCallbackBuilder::addInputParam(v37, &v36, v43);
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0x4DF90C13235A0886;
  v36.var1 = "HipOffsetMultiplier";
  if (a3 <= 2)
  {
    goto LABEL_45;
  }

  re::RigGraphCallbackBuilder::addInputParam(v37, &v36, *(a2 + 16));
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0x1F85042B1B4E4034;
  v36.var1 = "WorldTransform";
  if (a3 == 3)
  {
    goto LABEL_46;
  }

  re::RigGraphCallbackBuilder::addInputParam(v37, &v36, *(a2 + 24));
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0xF5F802EF32C90F2;
  v36.var1 = "SolverTransform";
  re::RigGraphCallbackBuilder::addInputParam(v37, &v36, v42);
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0x80FA33623D02F274;
  v36.var1 = "LookAtTaskSettings";
  if (a3 <= 4)
  {
    goto LABEL_47;
  }

  re::RigGraphCallbackBuilder::addInputParam(v37, &v36, *(a2 + 32));
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0x608B8AAFAB2B677ALL;
  v36.var1 = "RigJointSettings";
  if (a3 == 5)
  {
    goto LABEL_48;
  }

  re::RigGraphCallbackBuilder::addInputParam(v37, &v36, *(a2 + 40));
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0x963E12F0C5BD5BB0;
  v36.var1 = "RigTaskSettings";
  if (a3 <= 6)
  {
    goto LABEL_49;
  }

  re::RigGraphCallbackBuilder::addInputParam(v37, &v36, *(a2 + 48));
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0x86B1473B92D2CCCCLL;
  v36.var1 = "RigSolverSettings";
  if (a3 == 7)
  {
    goto LABEL_50;
  }

  re::RigGraphCallbackBuilder::addInputParam(v37, &v36, *(a2 + 56));
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0x10498EC9357CACLL;
  v36.var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v37, &v36, v45);
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v37, a1, re::internal::footPlacementDebugSolverCallback, v44);
  if (!a5)
  {
LABEL_51:
    re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  v34 = re::internal::bindCallbackOutputToNodeOutputPose(v10, v45, v13, a1, *a4);
  if (v13)
  {
    MEMORY[0x1E69037D0](v13, v34);
  }

  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v39 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v37 + 8);
  re::RigDataValue::~RigDataValue(v42);
  re::RigDataValue::~RigDataValue(v43);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v44);
  re::RigDataValue::~RigDataValue(v45);
  re::RigDataValue::~RigDataValue(v46);
  return 1;
}

void re::internal::registerFootPlacementSolverNoLookAtNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719D08;
  v11[3] = *&off_1E8719D18;
  v11[4] = xmmword_1E8719D28;
  v11[0] = xmmword_1E8719CE8;
  v11[1] = *&off_1E8719CF8;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 4uLL, 1uLL, re::internal::footPlacementSolverCompile, v11);
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

void re::internal::registerFootPlacementSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719D58;
  v11[3] = *&off_1E8719D68;
  v11[4] = xmmword_1E8719D78;
  v11[5] = *&off_1E8719D88;
  v11[0] = xmmword_1E8719D38;
  v11[1] = *&off_1E8719D48;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 5uLL, 1uLL, re::internal::footPlacementSolverCompile, v11);
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

void re::internal::registerFootPlacementSolverDebugNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[6] = xmmword_1E8719DF8;
  v11[7] = *&off_1E8719E08;
  v11[8] = xmmword_1E8719E18;
  v11[2] = xmmword_1E8719DB8;
  v11[3] = *&off_1E8719DC8;
  v11[4] = xmmword_1E8719DD8;
  v11[5] = *&off_1E8719DE8;
  v11[0] = xmmword_1E8719D98;
  v11[1] = *&off_1E8719DA8;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 8uLL, 1uLL, re::internal::footPlacementSolverDebugCompile, v11);
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

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_35CoreIKFootPlacementSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB0A00;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_35CoreIKFootPlacementSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EEclEOSI_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKFootPlacementSolverDestroy();
    re::FixedArray<CoreIKTransform>::deinit((v2 + 184));
    re::BucketArray<re::CollisionCastHit,10ul>::deinit(v2 + 112);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 112);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_35CoreIKFootPlacementSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_35CoreIKFootPlacementSolverNodeHelperENS_9AllocatorEJP9CoreIKRigNSt3__117reference_wrapperIKNS_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::feetSlidingSolverCallback(uint64_t a1, uint64_t a2, re::RigDataValue *a3, uint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, uint64_t a9)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a4)
  {
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  re::internal::transferPose(a3, a9 + 16);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a8)
  {
    goto LABEL_19;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v15 = MEMORY[0x1E69036F0](*a9, *(a9 + 32), *(a9 + 24));
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::updateOutputBasedOnSolveResult(v15, a3, (a9 + 16), a7);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::feetSlidingSolverCompile(re::Allocator **a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v29[4] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (a3 == 1)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_13;
  }

  v6 = a2[1];
  v7 = *a4;
  v8 = *(*a2 + 232);
  v9 = strlen(v8);
  v10 = MEMORY[0x1E6903780](v8, v9);
  v11 = *a1;
  v12 = (*(**a1 + 32))(*a1, 40, 8);
  *v12 = CoreIKCreateACPSlidingSolverFromRig();
  v12[1] = v11;
  v12[3] = 0;
  v12[4] = 0;
  v12[2] = 0;
  v13 = MEMORY[0x1E6903C40](v10);
  re::FixedArray<CoreIKTransform>::init<>(v12 + 2, v11, v13);
  v27[0] = &unk_1F5CB0A80;
  v27[1] = v11;
  v27[3] = v27;
  v29[3] = v29;
  v28 = v12;
  v29[0] = &unk_1F5CB0A80;
  v29[1] = v11;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v27);
  v14 = *(v6 + 184);
  re::internal::makePoseFromRig(a1, v14, v10, v27);
  v15 = MEMORY[0x1E6903C40](v10);
  re::internal::makePose(a1, v15, v26);
  v25 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  re::RigGraphCallbackBuilder::init(v21, *a1);
  *&v20.var0 = 0x10643527A253C4;
  v20.var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v21, &v20, v27);
  if (*&v20.var0)
  {
    if (*&v20.var0)
    {
    }
  }

  *&v20.var0 = 0x10498EC9357CACLL;
  v20.var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v21, &v20, v26);
  if (*&v20.var0)
  {
    if (*&v20.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v21, a1, re::internal::feetSlidingSolverCallback, &v28);
  v18 = re::internal::bindCallbackOutputToNodeOutputPose(v14, v26, v10, a1, v7);
  MEMORY[0x1E69037D0](v10, v18);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v23 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v21 + 8);
  re::RigDataValue::~RigDataValue(v26);
  re::RigDataValue::~RigDataValue(v27);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v28);
  return 1;
}

void re::internal::registerFeetSlidingSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719E28;
  v11[1] = *&off_1E8719E38;
  v11[2] = xmmword_1E8719E48;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 2uLL, 1uLL, re::internal::feetSlidingSolverCompile, v11);
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

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_32CoreIKACPSlidingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB0A80;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_32CoreIKACPSlidingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKDestroyACPSlidingSolver();
    re::FixedArray<CoreIKTransform>::deinit((v2 + 16));
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_32CoreIKACPSlidingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_32CoreIKACPSlidingSolverNodeHelperENS_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::AnimationController::indexOf@<X0>(void *this@<X0>, const re::Timeline *a2@<X1>, uint64_t a3@<X8>)
{
  if (*this && (this = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (this[1] >> 56 << 6) + 72, this[1])) != 0)
  {
    if (a2)
    {
      v6 = this[13];
      v5 = this[14];
      if (v6)
      {
        v7 = 8 * v6;
        v8 = this[14];
        while (*v8 != a2)
        {
          ++v8;
          v7 -= 8;
          if (!v7)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v8 = this[14];
      }

      if (v8 == (v5 + 8 * v6))
      {
LABEL_14:
        v9 = 0;
      }

      else
      {
        *(a3 + 8) = (v8 - v5) >> 3;
        v9 = 1;
      }

      *a3 = v9;
    }

    else
    {
      *a3 = 1;
      *(a3 + 8) = 0;
    }
  }

  else
  {
    *a3 = 0;
  }

  return this;
}

void re::AnimationController::pause(re::AnimationController *this)
{
  if (*this)
  {
    v1 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    if (v1)
    {

      re::internal::TimelineTreeInfo::setPaused(v1, 1);
    }
  }
}

void re::AnimationController::resume(re::AnimationController *this)
{
  if (*this)
  {
    v1 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    if (v1)
    {

      re::internal::TimelineTreeInfo::setPaused(v1, 0);
    }
  }
}

double re::AnimationController::stop(re::AnimationController *this, double result)
{
  if (*this)
  {
    v2 = *&result;
    v4 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    if (v4)
    {
      v5 = v4;
      v6 = *this;
      if (v2 <= 0.0)
      {

        return re::AnimationManager::remove(v6, v5, 1);
      }

      else
      {
        v7 = 3;
        v8 = 0;
        v9 = 1;
        v10 = 0;
        v11 = v2;
        re::AnimationManager::addFadeOutHandoffBehavior(v6, v5, &v7);
      }
    }
  }

  return result;
}

void re::AnimationController::updateAndApply(re::AnimationController *this)
{
  if (*this)
  {
    v2 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    if (v2)
    {
      v3 = v2;
      v4 = *this;

      re::AnimationManager::updateAndApplyAnimations(v4, v3);
    }
  }
}

uint64_t re::AnimationController::isPaused(re::AnimationController *this)
{
  if (!*this)
  {
    return 0;
  }

  result = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
  if (result)
  {
    do
    {
      v2 = result;
      result = *(result + 288);
    }

    while (result);
    return *(v2 + 249) == 1;
  }

  return result;
}

void *re::AnimationController::setParentClockOrTimebase(void *this, void *a2)
{
  if (*this)
  {
    this = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (this[1] >> 56 << 6) + 72, this[1]);
    if (this)
    {
      if (a2)
      {
        v3 = a2;
      }

      else
      {
        v3 = 0;
      }

      return re::internal::TimelineTreeInfo::setParentClockOrTimebase(this, v3, 0);
    }
  }

  return this;
}

void *re::AnimationController::timebase@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && (this = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (this[1] >> 56 << 6) + 72, this[1])) != 0)
  {
    do
    {
      v3 = this;
      this = this[36];
    }

    while (this);
    *a2 = 1;
    *(a2 + 8) = v3[34];
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

float re::AnimationController::speed(re::AnimationController *this)
{
  if (!*this)
  {
    return NAN;
  }

  v1 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
  if (!v1)
  {
    return NAN;
  }

  do
  {
    v2 = v1;
    v1 = *(v1 + 288);
  }

  while (v1);
  return *(v2 + 252);
}

uint64_t re::AnimationController::setSpeed(uint64_t this, float a2)
{
  if (*this)
  {
    this = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 8) >> 56 << 6) + 72, *(this + 8));
    if (this)
    {
      if (!*(this + 288))
      {
        *(this + 252) = a2;
        if (!*(this + 249))
        {
          v3 = *(this + 272);

          return CMTimebaseSetRate(v3, a2);
        }
      }
    }
  }

  return this;
}

uint64_t re::AnimationController::timeline(re::AnimationController *this)
{
  if (!*this)
  {
    return 0;
  }

  result = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
  if (result)
  {
    if (!*(result + 104))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return **(result + 112);
  }

  return result;
}

double re::AnimationController::clock@<D0>(re::AnimationController *this@<X0>, const re::Timeline *a2@<X1>, uint64_t a3@<X8>)
{
  re::AnimationController::indexOf(this, a2, v14);
  if (v14[0] == 1)
  {
    v5 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    v6 = v15;
    v8 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v5 + 80), v7);
    v9 = re::RelativeArray<re::AnimationClock>::operator[](v8, v6);
    *a3 = *v9;
    v10 = v9[16];
    *(a3 + 16) = v10;
    if (v10 == 1)
    {
      *(a3 + 24) = *(v9 + 3);
    }

    v11 = *(v9 + 2);
    v12 = *(v9 + 3);
    *(a3 + 32) = v11;
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v9 + 8);
  }

  else
  {
    *&v11 = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 1;
    *(a3 + 60) = 0;
    *(a3 + 64) = 0;
    *(a3 + 36) = 0;
    *(a3 + 44) = 0;
    *(a3 + 49) = 0;
    *(a3 + 68) = 2;
  }

  return *&v11;
}

void re::AnimationController::time(re::AnimationController *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && (v3 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1))) != 0)
  {
    v4 = re::internal::TimelineTreeInfo::currentTime(v3);
    *a2 = 1;
    *(a2 + 8) = v4;
  }

  else
  {
    *a2 = 0;
  }
}

void *re::AnimationController::setTime(void *this, double a2)
{
  if (*this)
  {
    this = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (this[1] >> 56 << 6) + 72, this[1]);
    if (this)
    {

      return re::internal::TimelineTreeInfo::setCurrentTime(this, a2);
    }
  }

  return this;
}

uint64_t re::internal::TimelineTreeInfo::setCurrentTime(uint64_t this, double a2)
{
  if (!*(this + 288))
  {
    v10 = v5;
    v11 = v4;
    v12 = v2;
    v13 = v3;
    v7 = this;
    if (*(this + 264) && *(this + 256))
    {
      realitykit_willSetWithString(this + 264, this + 256, "AnimationPlaybackController.time");
    }

    v8 = v7[34];
    CMTimeMake(&time, (a2 * 18000.0 + 0.5), 18000);
    this = CMTimebaseSetTime(v8, &time);
    if (v7[33])
    {
      if (v7[32])
      {
        return realitykit_didSetWithString((v7 + 33), (v7 + 32), "AnimationPlaybackController.time");
      }
    }
  }

  return this;
}

float re::AnimationController::blendFactor(re::AnimationController *this, const re::Timeline *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  re::AnimationController::indexOf(this, a2, v9);
  if (v9[0] != 1)
  {
    return NAN;
  }

  if (*this)
  {
    v3 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
  }

  else
  {
    v3 = 0;
  }

  v5 = v10;
  v6 = *(v3 + 184);
  if (v6 <= v10)
  {
    v11 = 0;
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
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = (*(v3 + 192) + 12 * v10);
  v8 = 4;
  if (*v7)
  {
    v8 = 8;
  }

  return *&v7[v8];
}

uint64_t re::AnimationController::setBlendFactor(re::AnimationController *this, float a2, const re::Timeline *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  result = re::AnimationController::indexOf(this, a3, v8);
  if (v8[0] == 1)
  {
    if (*this)
    {
      result = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    }

    else
    {
      result = 0;
    }

    v6 = v9;
    v7 = *(result + 184);
    if (v7 <= v9)
    {
      v10 = 0;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v11 = 136315906;
      v12 = "operator[]";
      v13 = 1024;
      v14 = 468;
      v15 = 2048;
      v16 = v6;
      v17 = 2048;
      v18 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(result + 192) + 12 * v9 + 4) = a2;
  }

  return result;
}

void *re::AnimationController::setParentController(re::AnimationController *this, const re::AnimationController *a2)
{
  if (a2)
  {
    result = re::AnimationController::timebase(a2, v7);
    if (v7[0] != 1)
    {
      return result;
    }

    if (*this)
    {
      v4 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    }

    else
    {
      v4 = 0;
    }

    v5 = v8;
    v6 = 1;
  }

  else
  {
    if (*this)
    {
      v4 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    }

    else
    {
      v4 = 0;
    }

    v5 = 0;
    v6 = 0;
  }

  return re::internal::TimelineTreeInfo::setParentClockOrTimebase(v4, v5, v6);
}

void re::RigDataTypeClass::rigDataTypeParser(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v142 = *MEMORY[0x1E69E9840];
  v6 = re::RigDataParser::parseAlphaNumeric(a2);
  v8 = v7;
  if (!strncmp(v6, "struct", v7) && !aStruct_0[v8] && (v24 = (*a2 + *(a2 + 8) - &v6[v8]), *&v137.var0 = &v6[v8], v137.var1 = v24, v25 = re::RigDataParser::parseAlphaNumeric(&v137), v26) && (v27 = v25, v28 = v26, v29 = *a2 + *(a2 + 8), *&v137.var0 = &v26[v25], v137.var1 = (v29 - &v26[v25]), v30 = re::RigDataParser::parseWhitespace(&v137), v32 = &v30[v31], v33 = &v30[v31] < v29, !strncmp(&v30[v31], "{", v33)) && !asc_1E3139C82[v33])
  {
    v34 = &v32[v33];
    *&v124.var0 = v27;
    v124.var1 = v28;
    *&v125.var0 = 0;
    v125.var1 = 0;
    LODWORD(v126) = 1;
    v128 = 0;
    v129 = 0;
    v127 = 0;
    v130 = 0;
    v35 = *a2;
    v36 = *(a2 + 8);
    v37 = *a2 + v36;
    if (v34 >= v37)
    {
      v119 = 1;
      v118 = 0;
      v123 = 0;
      v38 = 0;
    }

    else
    {
      v118 = 0;
      v123 = 0;
      v38 = 0;
      v119 = 1;
      while (1)
      {
        *&v137.var0 = v34;
        v137.var1 = (v37 - v34);
        v39 = re::RigDataParser::parseWhitespace(&v137);
        v41 = &v39[v40];
        v42 = &v39[v40] < v37;
        if (!strncmp(&v39[v40], "}", v42) && !asc_1E3139DCF[v42])
        {
          break;
        }

        v43 = (*a2 + *(a2 + 8) - v34);
        *&v137.var0 = v34;
        v137.var1 = v43;
        v44 = re::RigDataParser::parseTypeName(&v137);
        if (!v45 || (v46 = v44, v47 = v45, v48 = (*a2 + *(a2 + 8) - &v45[v44]), *&v137.var0 = &v45[v44], v137.var1 = v48, v49 = re::RigDataParser::parseAlphaNumeric(&v137), !v50) || (v51 = v49, v52 = v50, v120 = v47, v121 = v46, v53 = &v49[v50], v54 = *a2 + *(a2 + 8), *&v137.var0 = &v49[v50], v137.var1 = (v54 - &v49[v50]), v55 = re::RigDataParser::parseWhitespace(&v137), v57 = &v55[v56], v58 = &v55[v56] < v54, strncmp(&v55[v56], ";", v58)) || asc_1E313E293[v58])
        {
          *&v137.var0 = 0;
          goto LABEL_109;
        }

        if (v38)
        {
          v59 = 0;
          while (1)
          {
            v60 = re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](&v125, v59);
            if (*(v60 + 8) == v52 && !memcmp(*v60, v51, v52))
            {
              break;
            }

            if (v38 == ++v59)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
LABEL_30:
          v61 = memchr(v51, 46, v52);
          if (!v61 || v61 == v53)
          {
            var1 = v123;
            if (v38 + 1 > 8 * v123)
            {
              re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::setBucketsCapacity(&v125, (v38 + 8) >> 3);
              var1 = v125.var1;
            }

            v63 = v38 >> 3;
            v123 = var1;
            if (var1 <= v38 >> 3)
            {
              goto LABEL_127;
            }

            v119 = v126;
            v64 = &v127;
            v118 = v128;
            if ((v126 & 1) == 0)
            {
              v64 = v128;
            }

            v65 = v64[v63];
            v66 = v38 & 7;
            v38 = ++v129;
            ++v130;
            v67 = (v65 + 32 * v66);
            *v67 = v51;
            v67[1] = v52;
            v67[2] = v121;
            v67[3] = v120;
          }
        }

        v34 = &v57[v58];
        v35 = *a2;
        v36 = *(a2 + 8);
        v37 = *a2 + v36;
        if (&v57[v58] >= v37)
        {
          goto LABEL_66;
        }
      }

      v34 = &v41[v42];
      v35 = *a2;
      v36 = *(a2 + 8);
    }

LABEL_66:
    v91 = (v35 + v36);
    *&v137.var0 = v34;
    v137.var1 = (v35 + v36 - v34);
    v92 = re::RigDataParser::parseWhitespace(&v137);
    if (&v92[v93] == v91)
    {
      v63 = v124.var1;
      *&v137.var0 = 0;
      v137.var1 = &str_67;
      v132[0] = 13;
      v105 = re::StringID::StringID(&v132[8], &v137);
      v135 = 0;
      *&v132[32] = 0;
      v133 = 0;
      *&v132[24] = 0;
      v134 = 0;
      if (*&v137.var0)
      {
        if (*&v137.var0)
        {
        }
      }

      v106 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(&v132[24], v38);
      ++v134;
      if (v38)
      {
        v107 = 0;
        v108 = &v127;
        if ((v119 & 1) == 0)
        {
          v108 = v118;
        }

        v122 = v108;
        while (v123 > v107 >> 3)
        {
          v109 = v122[v107 >> 3] + 32 * (v107 & 7);
          v110 = *v109;
          v111 = *(v109 + 8);
          *&v137.var0 = 0;
          v137.var1 = &str_67;
          v112 = *(v109 + 16);
          v63 = *(v109 + 24);
          *&v138 = 0;
          *(&v138 + 1) = &str_67;
          v106 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::add(&v132[24], &v137);
          if (v138)
          {
            if (v138)
            {
            }
          }

          *&v138 = 0;
          *(&v138 + 1) = &str_67;
          if (*&v137.var0)
          {
            if (*&v137.var0)
            {
            }
          }

          if (v38 == ++v107)
          {
            goto LABEL_106;
          }
        }

        v131 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v136 = 136315906;
        *&v136[4] = "operator[]";
        *&v136[12] = 1024;
        *&v136[14] = 866;
        *&v136[18] = 2048;
        *&v136[20] = v107 >> 3;
        *&v136[28] = 2048;
        *&v136[30] = v123;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_127:
        *v136 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v132 = 136315906;
        *&v132[4] = "operator[]";
        *&v132[12] = 1024;
        *&v132[14] = 858;
        *&v132[18] = 2048;
        *&v132[20] = v63;
        *&v132[28] = 2048;
        *&v132[30] = v123;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_106:
      *&v137.var0 = 1;
      LOBYTE(v137.var1) = v132[0];
      re::StringID::StringID(&v138, &v132[8]);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(&v139, &v132[24]);
      v114 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v132[24]);
      if (v132[8])
      {
        if (v132[8])
        {
        }
      }
    }

    else
    {
      *&v137.var0 = 0;
    }

LABEL_109:
    if (v38)
    {
      for (i = 0; i != v38; ++i)
      {
        re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](&v125, i);
      }
    }

    if (v123)
    {
      do
      {
        re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v125);
      }

      while (v125.var1);
    }

    if (*&v125.var0 && (v126 & 1) == 0)
    {
      (*(**&v125.var0 + 40))();
    }

    if (*&v137.var0)
    {
      *&v124.var0 = v137.var1;
      re::StringID::StringID(&v124.var1, &v138);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(&v125.var1, &v139);
      *a3 = 1;
      *(a3 + 8) = v124.var0;
      re::StringID::StringID((a3 + 16), &v124.var1);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(a3 + 32, &v125.var1);
      v116 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v125.var1);
      if (v124.var1)
      {
        if (v124.var1)
        {
        }
      }

      goto LABEL_54;
    }
  }

  else
  {
    *&v137.var0 = 0;
  }

  v9 = re::RigDataParser::parseAlphaNumeric(a2);
  if (!v10)
  {
    *&v124.var0 = 0;
    goto LABEL_48;
  }

  v11 = v9;
  v12 = v10;
  v13 = &v9[v10];
  v14 = *a2 + *(a2 + 8);
  *&v124.var0 = &v9[v10];
  v124.var1 = (v14 - &v9[v10]);
  v15 = re::RigDataParser::parseWhitespace(&v124);
  v17 = &v15[v16];
  v18 = &v15[v16] < v14;
  if (strncmp(&v15[v16], "[", v18) || asc_1E3139E79[v18])
  {
    v19 = (*a2 + *(a2 + 8));
    *&v124.var0 = v13;
    v124.var1 = (v19 - v13);
    v20 = re::RigDataParser::parseWhitespace(&v124);
    if (&v20[v21] == v19)
    {
      v22 = 1;
      while (1)
      {
        v23 = *re::RigDataTypeDescriptions::rigDataTypeDescription(v22, v21);
        if (!strncmp(v11, v23, v12) && !v23[v12])
        {
          break;
        }

        if (++v22 == 14)
        {
          goto LABEL_43;
        }
      }

      v87 = re::RigDataTypeDescriptions::rigDataTypeDescription(v22, v21);
      v88 = *v87;
      *&v124.var0 = 0;
      v124.var1 = &str_67;
      v132[0] = v22;
      v89 = re::StringID::StringID(&v132[8], &v124);
      v135 = 0;
      *&v132[32] = 0;
      v133 = 0;
      *&v132[24] = 0;
      v134 = 0;
      if (*&v124.var0)
      {
        if (*&v124.var0)
        {
        }
      }

      goto LABEL_62;
    }

LABEL_43:
    *&v124.var0 = 0;
    goto LABEL_44;
  }

  v68 = (*a2 + *(a2 + 8) - &v17[v18]);
  *&v124.var0 = &v17[v18];
  v124.var1 = v68;
  v69 = re::RigDataParser::parseNumeric(&v124);
  v71 = v70;
  v72 = *a2 + *(a2 + 8);
  *&v124.var0 = &v69[v70];
  v124.var1 = (v72 - &v69[v70]);
  v73 = re::RigDataParser::parseWhitespace(&v124);
  v75 = &v73[v74];
  v76 = &v73[v74] < v72;
  if (strncmp(&v73[v74], "]", v76))
  {
    goto LABEL_43;
  }

  if (asc_1E3139E7B[v76])
  {
    goto LABEL_43;
  }

  v77 = &v75[v76];
  v78 = (*a2 + *(a2 + 8));
  *&v124.var0 = v77;
  v124.var1 = (v78 - v77);
  v79 = re::RigDataParser::parseWhitespace(&v124);
  if (&v79[v80] != v78)
  {
    goto LABEL_43;
  }

  if (v71)
  {
    v94 = 0;
    do
    {
      v95 = v94;
      v97 = *v69++;
      v96 = v97;
      v94 = v97 + 10 * v94 - 48;
      --v71;
    }

    while (v71);
    *&v124.var0 = 0;
    v124.var1 = &str_67;
    v132[0] = 11;
    v98 = re::StringID::StringID(&v132[8], &v124);
    v135 = 0;
    *&v132[32] = 0;
    v133 = 0;
    *&v132[24] = 0;
    v134 = 0;
    if (*&v124.var0)
    {
      if (*&v124.var0)
      {
      }
    }

    v99 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(&v132[24], v94);
    ++v134;
    v124.var1 = 0;
    *&v125.var0 = 0;
    v125.var1 = 0;
    re::DynamicString::setCapacity(&v124, 0);
    if (v94)
    {
      v100 = 0;
      v101 = v96 + 10 * v95 - 48;
      do
      {
        v102 = re::DynamicString::assignf(&v124, "value[%zu]", v100);
        if (v124.var1)
        {
          v103 = *&v125.var0;
        }

        else
        {
          v103 = &v124.var1 + 1;
        }

        *v136 = 0;
        *&v136[8] = &str_67;
        re::StringID::StringID(&v136[16], &v132[8]);
        v104 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::add(&v132[24], v136);
        if (v136[16])
        {
          if (v136[16])
          {
          }
        }

        *&v136[16] = 0;
        *&v136[24] = &str_67;
        if (v136[0])
        {
          if (v136[0])
          {
          }
        }

        ++v100;
      }

      while (v101 != v100);
    }

    if (*&v124.var0 && (v124.var1 & 1) != 0)
    {
      (*(**&v124.var0 + 40))();
    }
  }

  else
  {
    *&v124.var0 = 0;
    v124.var1 = &str_67;
    v132[0] = 12;
    v117 = re::StringID::StringID(&v132[8], &v124);
    v135 = 0;
    *&v132[32] = 0;
    v133 = 0;
    *&v132[24] = 0;
    v134 = 0;
    if (*&v124.var0)
    {
      if (*&v124.var0)
      {
      }
    }
  }

LABEL_62:
  *&v124.var0 = 1;
  LOBYTE(v124.var1) = v132[0];
  re::StringID::StringID(&v125, &v132[8]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(&v126, &v132[24]);
  v90 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v132[24]);
  if (v132[8])
  {
    if (v132[8])
    {
    }
  }

LABEL_44:
  if (*&v124.var0)
  {
    v132[0] = v124.var1;
    re::StringID::StringID(&v132[8], &v125);
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(&v132[24], &v126);
    *a3 = 1;
    *(a3 + 8) = v132[0];
    re::StringID::StringID((a3 + 16), &v132[8]);
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(a3 + 32, &v132[24]);
    v81 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v132[24]);
    if (v132[8])
    {
      if (v132[8])
      {
      }
    }

    goto LABEL_49;
  }

LABEL_48:
  *&v132[16] = 0;
  *&v132[24] = 0;
  *v132 = a1;
  re::DynamicString::setCapacity(v132, 0x40uLL);
  re::DynamicString::append(v132, "Unknown rig data type: ", 0x17uLL);
  re::DynamicString::append(v132, *a2, *(a2 + 8));
  v82 = *v132;
  v83 = *&v132[16];
  v84 = *&v132[24];
  *a3 = 0;
  *(a3 + 8) = 5000;
  *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a3 + 24) = v82;
  *(a3 + 40) = v83;
  *(a3 + 48) = v84;
LABEL_49:
  if (v124.var0 == 1)
  {
    v85 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v126);
    if (*&v125.var0)
    {
      if (*&v125.var0)
      {
      }
    }

    v125.var1 = &str_67;
  }

LABEL_54:
  if (v137.var0 == 1)
  {
    v86 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v139);
    if (v138)
    {
      if (v138)
      {
      }
    }
  }
}
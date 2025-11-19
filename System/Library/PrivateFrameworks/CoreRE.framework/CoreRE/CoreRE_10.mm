uint64_t re::IntrospectionDynamicArray<re::StateMachineParameterBindingItem>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE18F198, 0);
  *(&qword_1EE18F1A8 + 6) = 0;
  qword_1EE18F1A8 = 0;
  *&xmmword_1EE18F1B8 = 0;
  *(&xmmword_1EE18F1B8 + 1) = 0xFFFFFFFFLL;
  qword_1EE18F198 = &unk_1F5CADA48;
  qword_1EE18F1D0 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(algn_1EE18F1C8);
  qword_1EE18F198 = &unk_1F5CAF290;
  return result;
}

void *re::IntrospectionDynamicArray<re::StateMachineParameterBindingItem>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::StateMachineParameterBindingItem>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::StateMachineParameterBindingItem>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::StateMachineParameterBindingItem>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::StateMachineParameterBindingItem>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::StateMachineParameterBindingItem>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::StateMachineParameterBindingItem>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::StateMachineParameterBindingItem>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::StateMachineParameterBindingItem>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v12 = 0;
  v13 = 0;
  v14 = &str_67;
  v8 = re::DynamicArray<re::StateMachineParameterBindingItem>::add(this, v11);
  if (v13)
  {
    if (v13)
    {
    }
  }

  v13 = 0;
  v14 = &str_67;
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::StateMachineParameterBindingItem>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void re::DynamicArray<re::StateMachineParameterBindingItem>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::StringID::destroyString((v10 + 24));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 40;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::StateMachineParameterBindingItem>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        *(v7 + 32) = &str_67;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::StateMachineParameterBindingItem>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 40 * v8;
      do
      {
        re::StringID::destroyString((v9 + 24));
        re::StringID::destroyString(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::StateMachineParameterBindingItem>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::StateMachineParameterBindingItem>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 40 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StateMachineParameterBindingItem>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::validateRigDefinitionData@<X0>(re *this@<X0>, re::Allocator *a2@<X1>, uint64_t a3@<X8>)
{
  v269 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 2);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = (*(a2 + 4) + 88 * i);
      v10 = v9[3];
      if (!v10)
      {
        result = re::DynamicString::format(this, "Rig Point Constraint %zu has no constraint nodes.", &v256, i);
        goto LABEL_428;
      }

      v11 = v9[8];
      if (v11)
      {
        v12 = v11 == v10;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        result = re::DynamicString::format(this, "Rig Point Constraint %zu has an invalid weight count: %zu", &v256, i, v11);
        goto LABEL_428;
      }

      v13 = v9[5];
      v14 = 8 * v10;
      do
      {
        if (*v13 >= *(a2 + 130))
        {
          result = re::DynamicString::format(this, "Rig Point Constraint %zu has an invalid node: %zu.", &v256, i, *v13);
          goto LABEL_428;
        }

        ++v13;
        v14 -= 8;
      }

      while (v14);
    }
  }

  v15 = *(a2 + 7);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v17 = (*(a2 + 9) + 88 * j);
      v18 = v17[3];
      if (!v18)
      {
        result = re::DynamicString::format(this, "Rig Orient Constraint %zu has no constraint nodes.", &v256, j);
        goto LABEL_428;
      }

      v19 = v17[8];
      if (v19)
      {
        v20 = v19 == v18;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        result = re::DynamicString::format(this, "Rig Orient Constraint %zu has an invalid weight count: %zu", &v256, j, v19);
        goto LABEL_428;
      }

      v21 = v17[5];
      v22 = 8 * v18;
      do
      {
        if (*v21 >= *(a2 + 130))
        {
          result = re::DynamicString::format(this, "Rig Orient Constraint %zu has an invalid node: %zu.", &v256, j, *v21);
          goto LABEL_428;
        }

        ++v21;
        v22 -= 8;
      }

      while (v22);
    }
  }

  v23 = *(a2 + 12);
  if (v23)
  {
    for (k = 0; k != v23; ++k)
    {
      v25 = (*(a2 + 14) + 80 * k);
      v26 = v25[2];
      if (!v26)
      {
        result = re::DynamicString::format(this, "Rig Parent Constraint %zu has no constraint nodes.", &v256, k);
        goto LABEL_428;
      }

      v27 = v25[7];
      if (v27)
      {
        v28 = v27 == v26;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        result = re::DynamicString::format(this, "Rig Parent Constraint %zu has an invalid weight count: %zu", &v256, k, v27);
        goto LABEL_428;
      }

      v29 = v25[4];
      v30 = 8 * v26;
      do
      {
        if (*v29 >= *(a2 + 130))
        {
          result = re::DynamicString::format(this, "Rig Parent Constraint %zu has an invalid node: %zu.", &v256, k, *v29);
          goto LABEL_428;
        }

        ++v29;
        v30 -= 8;
      }

      while (v30);
    }
  }

  v31 = *(a2 + 17);
  if (v31)
  {
    v32 = 0;
    v33 = *(a2 + 130);
    do
    {
      v34 = *(a2 + 19) + 144 * v32;
      v35 = *(v34 + 16);
      v36 = vmulq_f32(v35, v35);
      v37 = vaddv_f32(*v36.f32);
      if ((v36.f32[2] + v37) != 1.0 && fabsf((v36.f32[2] + v37) + -1.0) > 0.000001)
      {
        result = re::DynamicString::format(this, "Rig Aim Constraint %zu has an invalid aim vector: (%f, %f %f).", &v256, v32, v35.f32[0], v35.f32[1], v35.f32[2]);
        goto LABEL_428;
      }

      v38 = *(v34 + 32);
      v39 = vmulq_f32(v38, v38);
      v40 = v39.f32[2] + vaddv_f32(*v39.f32);
      if (v40 != 1.0 && fabsf(v40 + -1.0) > 0.000001)
      {
        result = re::DynamicString::format(this, "Rig Aim Constraint %zu has an invalid up vector: (%f, %f %f).", &v256, v32, v38.f32[0], v38.f32[1], v38.f32[2]);
        goto LABEL_428;
      }

      v41 = *(v34 + 4);
      v42 = *(v34 + 3);
      if (v41 == v42)
      {
        v43 = vmulq_f32(v35, v38);
        if (fabsf(v43.f32[2] + vaddv_f32(*v43.f32)) >= 0.00001)
        {
          result = re::DynamicString::format(this, "Rig aim constraint %zu must have perpendicular aim/up vectors.", &v256, v32);
          goto LABEL_428;
        }
      }

      if (v42 >= 2)
      {
        if (v42 != 2)
        {
          result = re::DynamicString::format(this, "Rig Aim Constraint %zu has an invalid forward axis type: %u.", &v256, v32, v42);
          goto LABEL_428;
        }
      }

      else
      {
        v44 = *(v34 + 64);
        if (!v44)
        {
          result = re::DynamicString::format(this, "Rig Aim Constraint %zu has no forward nodes.", &v256, v32);
          goto LABEL_428;
        }

        v45 = *(v34 + 104);
        if (v45)
        {
          v46 = v45 == v44;
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          result = re::DynamicString::format(this, "Rig Aim Constraint %zu has an invalid weight count: %zu", &v256, v32, v45);
          goto LABEL_428;
        }

        v47 = *(v34 + 80);
        v48 = 8 * v44;
        do
        {
          if (*v47 >= v33)
          {
            result = re::DynamicString::format(this, "Rig Aim Constraint %zu has an invalid forward node: %zu.", &v256, v32, *v47);
            goto LABEL_428;
          }

          ++v47;
          v48 -= 8;
        }

        while (v48);
      }

      if (v41 >= 2)
      {
        if (v41 != 2)
        {
          result = re::DynamicString::format(this, "Rig Aim Constraint %zu has an invalid up axis type: %u.", &v256, v32, v41);
          goto LABEL_428;
        }
      }

      else
      {
        v49 = *(v34 + 128);
        if (v49 >= v33)
        {
          result = re::DynamicString::format(this, "Rig Aim Constraint %zu has an invalid up node: %zu.", &v256, v32, v49);
          goto LABEL_428;
        }
      }

      ++v32;
    }

    while (v32 != v31);
  }

  v50 = *(a2 + 22);
  if (v50)
  {
    v51 = 0;
    v52 = (*(a2 + 24) + 8);
    do
    {
      v53 = *(v52 - 8);
      if ((v53 - 1) >= 3)
      {
        result = re::DynamicString::format(this, "Rig node channel %zu has an invalid channel type: %u.", &v256, v51, v53);
        goto LABEL_428;
      }

      if (*v52 >= *(a2 + 130))
      {
        result = re::DynamicString::format(this, "Rig node channel %zu has an invalid rig node: %zu.", &v256, v51, *v52);
        goto LABEL_428;
      }

      ++v51;
      v52 += 2;
    }

    while (v50 != v51);
  }

  v54 = *(a2 + 67);
  if (v54)
  {
    v55 = 0;
    v56 = *(a2 + 62);
    v57 = *(a2 + 57);
    v58 = *(a2 + 52);
    v59 = *(a2 + 47);
    v60 = *(a2 + 42);
    v61 = *(a2 + 37);
    v62 = *(a2 + 32);
    v63 = *(a2 + 27);
    v64 = (*(a2 + 69) + 8);
    do
    {
      v65 = *(v64 - 8);
      if (v65 >= 8)
      {
        result = re::DynamicString::format(this, "Rig node constant %zu has an constant type: %u.", &v256, v55, v65);
        goto LABEL_428;
      }

      v66 = *v64;
      if (*(v64 - 8) > 3u)
      {
        if (*(v64 - 8) > 5u)
        {
          if (v65 == 6)
          {
            if (v57 <= v66)
            {
              goto LABEL_249;
            }
          }

          else if (v56 <= v66)
          {
LABEL_249:
            result = re::DynamicString::format(this, "Rig node constant %zu has an invalid constant index: %zu.", &v256, v55, v66);
            goto LABEL_428;
          }
        }

        else if (v65 == 4)
        {
          if (v59 <= v66)
          {
            goto LABEL_249;
          }
        }

        else if (v58 <= v66)
        {
          goto LABEL_249;
        }
      }

      else if (*(v64 - 8) > 1u)
      {
        if (v65 == 2)
        {
          if (v61 <= v66)
          {
            goto LABEL_249;
          }
        }

        else if (v60 <= v66)
        {
          goto LABEL_249;
        }
      }

      else if (*(v64 - 8))
      {
        if (v62 <= v66)
        {
          goto LABEL_249;
        }
      }

      else if (v63 <= v66)
      {
        goto LABEL_249;
      }

      ++v55;
      v64 += 2;
    }

    while (v54 != v55);
  }

  v67 = *(a2 + 80);
  if (v67)
  {
    v68 = 0;
    v69 = (*(a2 + 82) + 8);
    do
    {
      v70 = *(v69 - 8);
      if (v70 >= 8)
      {
        result = re::DynamicString::format(this, "Rig temporary value %zu has an invalid type: %u.", &v256, v68, v70);
        goto LABEL_428;
      }

      if (*v69 >= *(a2 + *(v69 - 8) + 70))
      {
        result = re::DynamicString::format(this, "Rig temporary value %zu has an invalid index: %zu.", &v256, v68, *v69);
        goto LABEL_428;
      }

      ++v68;
      v69 += 2;
    }

    while (v67 != v68);
  }

  v71 = *(a2 + 85);
  if (v71)
  {
    v72 = 0;
    v73 = (*(a2 + 87) + 8);
    do
    {
      v74 = *(v73 - 8);
      switch(v74)
      {
        case 3:
          if (*v73 >= v67)
          {
            result = re::DynamicString::format(this, "Rig expression parameter %zu has an invalid temporary value index: %zu.", &v256, v72, *v73);
            goto LABEL_428;
          }

          break;
        case 2:
          if (*v73 >= v54)
          {
            result = re::DynamicString::format(this, "Rig expression parameter %zu has an invalid constraint value index: %zu.", &v256, v72, *v73);
            goto LABEL_428;
          }

          break;
        case 1:
          if (*v73 >= v50)
          {
            result = re::DynamicString::format(this, "Rig expression parameter %zu has an invalid joint channel: %zu.", &v256, v72, *v73);
            goto LABEL_428;
          }

          break;
        default:
          result = re::DynamicString::format(this, "Rig expression parameter %zu has an invalid type: %u.", &v256, v72, v74);
          goto LABEL_428;
      }

      ++v72;
      v73 += 2;
    }

    while (v71 != v72);
  }

  if (*(a2 + 90))
  {
    v75 = 0;
    do
    {
      v76 = (*(a2 + 92) + 24 * v75);
      v77 = *v76;
      if (v77 > 0x4D || v77 == 76)
      {
        result = re::DynamicString::format(this, "Rig expression command %zu has an invalid type: %u.", &v256, v75, v77);
        goto LABEL_428;
      }

      v78 = &(&re::kEvaluationCommandDescriptions)[2 * v77];
      v79 = *(v78 + 9);
      v80 = *(a2 + 85);
      if (*(v78 + 9))
      {
        v81 = *(v76 + 1);
        v180 = __CFADD__(v81, v79);
        v82 = v81 + v79;
        if (v180 || v82 > v80)
        {
          result = re::DynamicString::format(this, "Rig expression command %zu does not have enough parameters.", &v256, v75);
          goto LABEL_428;
        }

        v83 = 0;
        do
        {
          v84 = v83 + *(v76 + 1);
          if (v84 >= *(a2 + 85))
          {
            result = re::DynamicString::format(this, "Rig expression %zu has an invalid input parameter: %zu.", &v256, v75, v84);
            goto LABEL_428;
          }

          if (ExpressionParameterType != *(v78 + v83 + 10))
          {
            result = re::DynamicString::format(this, "Rig expression %zu input parameter %u expected type %u, received %u.", &v256, v75, v83, *(v78 + v83 + 10), ExpressionParameterType);
            goto LABEL_428;
          }

          ++v83;
        }

        while (v79 != v83);
        v80 = *(a2 + 85);
      }

      v86 = *(v76 + 2);
      if (v86 >= v80)
      {
        result = re::DynamicString::format(this, "Rig expression %zu has an invalid output parameter index: %zu.", &v256, v75, v86);
        goto LABEL_428;
      }

      if (v87 != *(v78 + 8))
      {
        result = re::DynamicString::format(this, "Rig expression %zu output parameter expected type %u, received %u.", &v256, v75, *(v78 + 8), v87);
        goto LABEL_428;
      }

      ++v75;
    }

    while (v75 < *(a2 + 90));
  }

  v88 = *(a2 + 95);
  if (v88)
  {
    v89 = 0;
    v90 = 0.001;
    v91 = 1.001;
    do
    {
      v92 = (*(a2 + 97) + 240 * v89);
      v93 = v92[2];
      if (v93 != v92[7])
      {
        result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has mismatching roots and effectors.", &v256, v89);
        goto LABEL_428;
      }

      if (v93 != v92[12])
      {
        result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has mismatching roots and targets.", &v256, v89);
        goto LABEL_428;
      }

      if (v93 != v92[17])
      {
        result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has mismatching roots and up nodes.", &v256, v89);
        goto LABEL_428;
      }

      v94 = v92[22];
      if (v94)
      {
        v95 = v93 == v94;
      }

      else
      {
        v95 = 1;
      }

      if (!v95)
      {
        result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has invalid end twist offsets.", &v256, v89);
        goto LABEL_428;
      }

      v96 = v92[27];
      if (v96)
      {
        v97 = v93 == v96;
      }

      else
      {
        v97 = 1;
      }

      if (!v97)
      {
        result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has invalid soft IK percentages.", &v256, v89);
        goto LABEL_428;
      }

      if (v93)
      {
        v98 = v92[4];
        v99 = *(a2 + 130);
        v100 = 8 * v93;
        v101 = 8 * v93;
        do
        {
          if (*v98 >= v99)
          {
            result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has an invalid root node: %zu.", &v256, v89, *v98);
            goto LABEL_428;
          }

          ++v98;
          v101 -= 8;
        }

        while (v101);
        v102 = v92[9];
        v103 = 8 * v93;
        do
        {
          if (*v102 >= v99)
          {
            result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has an invalid effector node: %zu.", &v256, v89, *v102);
            goto LABEL_428;
          }

          ++v102;
          v103 -= 8;
        }

        while (v103);
        v104 = v92[14];
        v105 = 8 * v93;
        do
        {
          if (*v104 >= v99)
          {
            result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has an invalid target node: %zu.", &v256, v89, *v104);
            goto LABEL_428;
          }

          ++v104;
          v105 -= 8;
        }

        while (v105);
        v106 = v92[19];
        do
        {
          if (*v106 >= v99)
          {
            result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has an invalid up node: %zu.", &v256, v89, *v106);
            goto LABEL_428;
          }

          ++v106;
          v100 -= 8;
        }

        while (v100);
      }

      if (v96)
      {
        v107 = v92[29];
        v108 = 4 * v96;
        do
        {
          v109 = *v107;
          if (*v107 < v90 || v109 > v91)
          {
            result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has an invalid soft IK Percentage: %f.", &v256, v89, v109);
            goto LABEL_428;
          }

          ++v107;
          v108 -= 4;
        }

        while (v108);
      }

      if (v93)
      {
        v110 = v91;
        v111 = v90;
        for (m = 0; m != v93; ++m)
        {
          v113 = re::DynamicArray<unsigned long>::operator[]((v92 + 5), m);
          v114 = *(re::DynamicArray<re::RigNode>::operator[](*(a2 + 130), *(a2 + 132), *v113) + 32);
          if (v114 == -1)
          {
            result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has effector with no parent: %zu.", &v256, v89, m);
            goto LABEL_428;
          }

          v115 = *(re::DynamicArray<re::RigNode>::operator[](*(a2 + 130), *(a2 + 132), v114) + 32);
          if (v115 == -1)
          {
            result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu has middle with no parent: %zu.", &v256, v89, m);
            goto LABEL_428;
          }

          if (v115 != *re::DynamicArray<unsigned long>::operator[](v92, m))
          {
            result = re::DynamicString::format(this, "Rig Two-bone IK handle %zu does not have a 2-bone chain: %zu.", &v256, v89, m);
            goto LABEL_428;
          }
        }

        v88 = *(a2 + 95);
        v90 = v111;
        v91 = v110;
      }

      ++v89;
    }

    while (v89 < v88);
  }

  v116 = *(a2 + 100);
  if (v116)
  {
    v117 = 0;
    while (1)
    {
      v118 = re::DynamicArray<re::RigSingleChainIKHandles>::operator[](v116, *(a2 + 102), v117);
      v119 = v118[2];
      if (v119 != v118[7])
      {
        result = re::DynamicString::format(this, "Rig single chain IK handle %zu has mismatching roots & effectors.", &v256, v117);
        goto LABEL_428;
      }

      v120 = v118;
      if (v119 != v118[12])
      {
        result = re::DynamicString::format(this, "Rig single chain IK handle %zu has mismatching roots & targets.", &v256, v117);
        goto LABEL_428;
      }

      if (v119)
      {
        break;
      }

LABEL_195:
      ++v117;
      v116 = *(a2 + 100);
      if (v117 >= v116)
      {
        goto LABEL_196;
      }
    }

    v121 = v118[4];
    v122 = *(a2 + 130);
    v123 = 8 * v119;
    v124 = 8 * v119;
    do
    {
      if (*v121 >= v122)
      {
        result = re::DynamicString::format(this, "Rig single chain IK handle %zu has an invalid root: %zu.", &v256, v117, *v121);
        goto LABEL_428;
      }

      ++v121;
      v124 -= 8;
    }

    while (v124);
    v125 = v118[9];
    v126 = 8 * v119;
    do
    {
      if (*v125 >= v122)
      {
        result = re::DynamicString::format(this, "Rig single chain IK handle %zu has an invalid effector: %zu.", &v256, v117, *v125);
        goto LABEL_428;
      }

      ++v125;
      v126 -= 8;
    }

    while (v126);
    v127 = v118[14];
    do
    {
      if (*v127 >= v122)
      {
        result = re::DynamicString::format(this, "Rig single chain IK handle %zu has an invalid target: %zu.", &v256, v117, *v127);
        goto LABEL_428;
      }

      ++v127;
      v123 -= 8;
    }

    while (v123);
    v128 = 0;
    while (1)
    {
      v129 = re::DynamicArray<unsigned long>::operator[](v120 + 40, v128);
      v130 = re::DynamicArray<re::RigNode>::operator[](*(a2 + 130), *(a2 + 132), *v129);
      v131 = *re::DynamicArray<unsigned long>::operator[](v120, v128);
      v132 = *(v130 + 32);
      if (v132 != -1 && v132 != v131)
      {
        break;
      }

LABEL_193:
      if (v132 == -1)
      {
        result = re::DynamicString::format(this, "Rig single chain IK handle %zu no a valid chain: %zu.", &v256, v117, v128);
        goto LABEL_428;
      }

      if (++v128 == v119)
      {
        goto LABEL_195;
      }
    }

    v134 = *(a2 + 130);
    while (v134 > v132)
    {
      v132 = *(*(a2 + 132) + 32 + 56 * v132);
      if (v132 == -1 || v132 == v131)
      {
        goto LABEL_193;
      }
    }

    v259 = 0u;
    v260 = 0u;
    v257 = 0u;
    v258 = 0u;
    v256 = 0u;
    a3 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v268 = 136315906;
    *&v268[4] = "operator[]";
    *&v268[12] = 1024;
    *&v268[14] = 797;
    *&v268[18] = 2048;
    *&v268[20] = v132;
    *&v268[28] = 2048;
    *&v268[30] = v134;
    v253 = 38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_405:
    result = re::DynamicString::format(this, "Rig node %zu does not have a valid name.", &v256, v117, v253);
    goto LABEL_428;
  }

LABEL_196:
  v136 = *(a2 + 105);
  if (v136)
  {
    v137 = 0;
    while (1)
    {
      v138 = re::DynamicArray<re::RigSplineIKHandle>::operator[](v136, *(a2 + 107), v137);
      v139 = v138[3];
      if (v139)
      {
        v140 = v138[5];
        v141 = 80 * v139;
        do
        {
          if (*v140 >= *(a2 + 130))
          {
            result = re::DynamicString::format(this, "Rig Spline IK handle %zu does not have a valid joint node.", &v256, v137);
            goto LABEL_428;
          }

          v140 += 10;
          v141 -= 80;
        }

        while (v141);
      }

      v142 = v138[8];
      if (!v142)
      {
        result = re::DynamicString::format(this, "Rig Spline IK handle %zu does not have any control points.", &v256, v137);
        goto LABEL_428;
      }

      v143 = v138[10];
      v144 = v143 + 96 * v142;
      do
      {
        v145 = *(v143 + 16);
        if (v145)
        {
          v146 = *(v143 + 32);
          v147 = 8 * v145;
          do
          {
            if (*v146 >= v139)
            {
              result = re::DynamicString::format(this, "Rig Spline IK handle %zu does not have a valid control point joint influence: %zu", &v256, v137, *v146);
              goto LABEL_428;
            }

            ++v146;
            v147 -= 8;
          }

          while (v147);
        }

        v143 += 96;
      }

      while (v143 != v144);
      if (v142 + 2 != v138[13])
      {
        result = re::DynamicString::format(this, "Rig Spline IK handle %zu has %zu knots and needs %zu.", &v256, v137, v138[13], v142 + 2);
        goto LABEL_428;
      }

      v148 = v138[16];
      v149 = *(a2 + 130);
      if (v148 >= v149)
      {
        result = re::DynamicString::format(this, "Rig Spline IK handle %zu does not have a valid root node: %zu", &v256, v137, v148);
        goto LABEL_428;
      }

      v150 = v138[17];
      if (v150 >= v149)
      {
        result = re::DynamicString::format(this, "Rig Spline IK handle %zu does not have a valid end effector node: %zu", &v256, v137, v150);
        goto LABEL_428;
      }

      v151 = v138[18];
      if (v151 >= v149)
      {
        break;
      }

      ++v137;
      v136 = *(a2 + 105);
      if (v137 >= v136)
      {
        goto LABEL_214;
      }
    }

    result = re::DynamicString::format(this, "Rig Spline IK handle %zu does not have a valid bind transform node: %zu", &v256, v137, v151);
LABEL_428:
    v246 = v256;
    v247 = v257;
    *a3 = 0;
    *(a3 + 8) = 3000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v246;
    *(a3 + 40) = v247;
  }

  else
  {
LABEL_214:
    v152 = *(a2 + 110);
    if (v152)
    {
      for (n = 0; n < v152; ++n)
      {
        v154 = re::DynamicArray<re::RigTransform>::operator[](v152, *(a2 + 112), n);
        v155 = *(v154 + 32);
        v156 = vmulq_f32(v155, v155);
        if (fabsf(v156.f32[2] + vaddv_f32(*v156.f32)) < 1.0e-10)
        {
          result = re::DynamicString::format(this, "Rig transform %zu must have a valid scale value.", &v256, n);
          goto LABEL_428;
        }

        if (*(a2 + 120) && (v155.f32[0] != v155.f32[1] && vabds_f32(v155.f32[0], v155.f32[1]) >= (((fabsf(v155.f32[0]) + fabsf(v155.f32[1])) + 1.0) * 0.00001) || v155.f32[0] != v155.f32[2] && vabds_f32(v155.f32[0], v155.f32[2]) >= (((fabsf(v155.f32[0]) + fabsf(v155.f32[2])) + 1.0) * 0.00001)))
        {
          result = re::DynamicString::format(this, "Rig transform %zu contains unsupported non-uniform scaling.", &v256, n);
          goto LABEL_428;
        }

        v157 = *(v154 + 48);
        if (v157 >= 6)
        {
          result = re::DynamicString::format(this, "Rig transform %zu contains an invalid rotation order: %u.", &v256, n, v157);
          goto LABEL_428;
        }

        v152 = *(a2 + 110);
      }
    }

    v158 = *(a2 + 115);
    if (v158)
    {
      for (ii = 0; ii < v158; ++ii)
      {
        v160 = re::DynamicArray<re::RigJoint>::operator[](v158, *(a2 + 117), ii);
        v161 = vmulq_f32(*(v160 + 16), *(v160 + 16));
        v162 = vaddv_f32(vadd_f32(*v161.i8, *&vextq_s8(v161, v161, 8uLL)));
        if (v162 != 1.0 && fabsf(v162 + -1.0) > 0.00001)
        {
          result = re::DynamicString::format(this, "Rig joint %zu does not have a valid orientation value.", &v256, ii);
          goto LABEL_428;
        }

        v163 = vmulq_f32(*(v160 + 48), *(v160 + 48));
        v164 = vaddv_f32(vadd_f32(*v163.i8, *&vextq_s8(v163, v163, 8uLL)));
        if (v164 != 1.0 && fabsf(v164 + -1.0) > 0.00001)
        {
          result = re::DynamicString::format(this, "Rig joint %zu does not have a valid scale orientation value.", &v256, ii);
          goto LABEL_428;
        }

        v165 = *(v160 + 64);
        v166 = vmulq_f32(v165, v165);
        if (fabsf(v166.f32[2] + vaddv_f32(*v166.f32)) < 1.0e-10)
        {
          result = re::DynamicString::format(this, "Rig joint %zu must have a valid scale value.", &v256, ii);
          goto LABEL_428;
        }

        v167 = *(a2 + 120);
        if (v167 && (v165.f32[0] != v165.f32[1] && vabds_f32(v165.f32[0], v165.f32[1]) >= (((fabsf(v165.f32[0]) + fabsf(v165.f32[1])) + 1.0) * 0.00001) || v165.f32[0] != v165.f32[2] && vabds_f32(v165.f32[0], v165.f32[2]) >= (((fabsf(v165.f32[0]) + fabsf(v165.f32[2])) + 1.0) * 0.00001)))
        {
          result = re::DynamicString::format(this, "Rig joint %zu contains unsupported non-uniform scaling.", &v256, ii);
          goto LABEL_428;
        }

        v168 = *(v160 + 80);
        if (v168 >= 6)
        {
          result = re::DynamicString::format(this, "Rig joint %zu contains an invalid rotation order: %u.", &v256, ii, v168);
          goto LABEL_428;
        }

        v158 = *(a2 + 115);
      }
    }

    else
    {
      v167 = *(a2 + 120);
    }

    if (v167)
    {
      for (jj = 0; jj < v167; ++jj)
      {
        v171 = re::DynamicArray<re::StringID>::operator[](v167, *(a2 + 122), jj);
        v172 = *v171;
        if (*v171 <= 2u)
        {
          if (v172 == 1)
          {
            if (*(v171 + 1) >= *(a2 + 2))
            {
              result = re::DynamicString::format(this, "Rig node constraint %zu is not a valid point constraint.", &v256, jj);
              goto LABEL_428;
            }
          }

          else
          {
            if (v172 != 2)
            {
LABEL_409:
              result = re::DynamicString::format(this, "Rig node constraint %zu contains an invalid constraint type: %u.", &v256, jj, v172);
              goto LABEL_428;
            }

            if (*(v171 + 1) >= *(a2 + 7))
            {
              result = re::DynamicString::format(this, "Rig node constraint %zu is not a valid orient constraint.", &v256, jj);
              goto LABEL_428;
            }
          }
        }

        else
        {
          switch(v172)
          {
            case 3:
              if (*(v171 + 1) >= *(a2 + 12))
              {
                result = re::DynamicString::format(this, "Rig node constraint %zu is not a valid parent constraint.", &v256, jj);
                goto LABEL_428;
              }

              break;
            case 4:
              if (*(v171 + 1) >= *(a2 + 17))
              {
                result = re::DynamicString::format(this, "Rig node constraint %zu is not a valid aim constraint.", &v256, jj);
                goto LABEL_428;
              }

              break;
            case 5:
              if (*(v171 + 1) >= *(a2 + 90))
              {
                result = re::DynamicString::format(this, "Rig node constraint %zu is not a valid expression constraint.", &v256, jj);
                goto LABEL_428;
              }

              break;
            default:
              goto LABEL_409;
          }
        }

        v167 = *(a2 + 120);
      }
    }

    v173 = *(a2 + 130);
    if (v173)
    {
      v117 = 0;
      do
      {
        v174 = re::DynamicArray<re::RigNode>::operator[](v173, *(a2 + 132), v117);
        v175 = *(v174 + 8);
        if (!v175 || !*v175)
        {
          goto LABEL_405;
        }

        v176 = *(v174 + 16);
        if (v176 == 2)
        {
          v178 = *(v174 + 24);
          if (v178 >= *(a2 + 115))
          {
            result = re::DynamicString::format(this, "Rig node %zu (%s) does not specify a valid joint node: %zu.", &v256, v117, *(v174 + 8), v178);
            goto LABEL_428;
          }
        }

        else
        {
          if (v176 != 1)
          {
            result = re::DynamicString::format(this, "Rig node %zu (%s) does not specify a valid node type: %u.", &v256, v117, *(v174 + 8), v176);
            goto LABEL_428;
          }

          v177 = *(v174 + 24);
          if (v177 >= *(a2 + 110))
          {
            result = re::DynamicString::format(this, "Rig node %zu (%s) does not specify a valid transform node: %zu.", &v256, v117, *(v174 + 8), v177);
            goto LABEL_428;
          }
        }

        v179 = *(v174 + 32);
        v173 = *(a2 + 130);
        v180 = v179 != -1 && v179 >= v173;
        if (v180)
        {
          result = re::DynamicString::format(this, "Rig Node %zu (%s) does not specify a valid parent node: %zu.", &v256, v117, *(v174 + 8), v179);
          goto LABEL_428;
        }

        v181 = *(v174 + 40);
        if (v181)
        {
          v182 = *(v174 + 48);
          v180 = __CFADD__(v182, v181);
          v183 = v182 + v181;
          if (v180 || v183 > *(a2 + 120))
          {
            result = re::DynamicString::format(this, "Rig Node %zu (%s) does not specify valid constraint nodes.", &v256, v117, v175);
            goto LABEL_428;
          }
        }
      }

      while (++v117 < v173);
    }

    v184 = 0;
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    v262 = 0u;
    v263 = 0u;
    v260 = 0u;
    v261 = 0u;
    v258 = 0u;
    v259 = 0u;
    v185 = (a2 + 560);
    v256 = 0u;
    v257 = 0u;
    do
    {
      v186 = *v185++;
      v184 += 24;
    }

    while (v184 != 192);
    v187 = *(a2 + 130);
    if (v187)
    {
      for (kk = 0; kk < v187; ++kk)
      {
        v189 = re::DynamicArray<re::RigNode>::operator[](v187, *(a2 + 132), kk);
        if (*(v189 + 40))
        {
          v190 = v189;
          for (mm = 0; mm < v190[5]; ++mm)
          {
            v192 = re::DynamicArray<re::StringID>::operator[](*(a2 + 120), *(a2 + 122), v190[6] + mm);
            v193 = *v192;
            if (*v192 <= 2u)
            {
              if (v193 == 1)
              {
                v215 = re::DynamicArray<re::RigComponentConstraint>::operator[](*(a2 + 2), *(a2 + 4), *(v192 + 1));
                v216 = *(v215 + 24);
                if (v216)
                {
                  v217 = *(v215 + 40);
                  v218 = 8 * v216;
                  do
                  {
                    if (*v217 == kk)
                    {
                      re::DynamicString::format(this, "Rig Node %zu (%s) point constraint %zu is constrained to itself.", v268, kk, v190[1], mm);
                      goto LABEL_435;
                    }

                    ++v217;
                    v218 -= 8;
                  }

                  while (v218);
                }
              }

              else
              {
                if (v193 != 2)
                {
LABEL_433:
                  re::DynamicString::format(this, "Rig node constraint %zu contains an invalid constraint type: %u.", v268, kk, v193);
                  goto LABEL_435;
                }

                v207 = re::DynamicArray<re::RigComponentConstraint>::operator[](*(a2 + 7), *(a2 + 9), *(v192 + 1));
                v208 = *(v207 + 24);
                if (v208)
                {
                  v209 = *(v207 + 40);
                  v210 = 8 * v208;
                  do
                  {
                    if (*v209 == kk)
                    {
                      re::DynamicString::format(this, "Rig Node %zu (%s) orient constraint %zu is constrained to itself.", v268, kk, v190[1], mm);
                      goto LABEL_435;
                    }

                    ++v209;
                    v210 -= 8;
                  }

                  while (v210);
                }
              }
            }

            else
            {
              switch(v193)
              {
                case 3:
                  v219 = re::DynamicArray<re::RigBasicConstraint>::operator[](*(a2 + 12), *(a2 + 14), *(v192 + 1));
                  v220 = *(v219 + 16);
                  if (v220)
                  {
                    v221 = *(v219 + 32);
                    v222 = 8 * v220;
                    do
                    {
                      if (*v221 == kk)
                      {
                        re::DynamicString::format(this, "Rig Node %zu (%s) parent constraint %zu is constrained to itself.", v268, kk, v190[1], mm);
                        goto LABEL_435;
                      }

                      ++v221;
                      v222 -= 8;
                    }

                    while (v222);
                  }

                  break;
                case 4:
                  v211 = re::DynamicArray<re::RigAimConstraint>::operator[](*(a2 + 17), *(a2 + 19), *(v192 + 1));
                  v212 = v211[8];
                  if (v212)
                  {
                    v213 = v211[10];
                    v214 = 8 * v212;
                    do
                    {
                      if (*v213 == kk)
                      {
                        re::DynamicString::format(this, "Rig Node %zu (%s) aim constraint %zu forward is constrained to self.", v268, kk, v190[1], mm);
                        goto LABEL_435;
                      }

                      ++v213;
                      v214 -= 8;
                    }

                    while (v214);
                  }

                  if (v211[16] == kk)
                  {
                    re::DynamicString::format(this, "Rig Node %zu (%s) aim constraint %zu up is contrained to seld.", v268, kk, v190[1], mm);
                    goto LABEL_435;
                  }

                  break;
                case 5:
                  v194 = re::DynamicArray<re::RigExpression>::operator[](*(a2 + 90), *(a2 + 92), *(v192 + 1));
                  v195 = &(&re::kEvaluationCommandDescriptions)[2 * *v194];
                  v196 = *(v195 + 9);
                  if (*(v195 + 9))
                  {
                    v197 = 0;
                    do
                    {
                      v198 = re::DynamicArray<re::StringID>::operator[](*(a2 + 85), *(a2 + 87), v197 + *(v194 + 1));
                      if (*v198 == 3)
                      {
                        v199 = re::DynamicArray<re::StringID>::operator[](*(a2 + 80), *(a2 + 82), *(v198 + 8));
                        if (*re::FixedArray<unsigned long>::operator[](&v256 + 24 * *v199, *(v199 + 1)) == -1)
                        {
                          re::DynamicString::format(this, "Rig Node %zu (%s) reads from uninitialized temporary value.", v268, kk, v190[1]);
                          goto LABEL_435;
                        }

                        v200 = *re::FixedArray<unsigned long>::operator[](&v256 + 24 * *v199, *(v199 + 1));
                        if (v200 != kk)
                        {
                          v245 = v190[1];
                          v254 = *(re::DynamicArray<re::RigNode>::operator[](*(a2 + 130), *(a2 + 132), v200) + 8);
                          re::DynamicString::format(this, "Rig Node %zu (%s) reads from temporary value initialized by other rig node %zu (%s).", v268, kk, v245, v200, v254);
                          goto LABEL_435;
                        }
                      }

                      ++v197;
                    }

                    while (v196 != v197);
                  }

                  v201 = re::DynamicArray<re::StringID>::operator[](*(a2 + 85), *(a2 + 87), *(v194 + 2));
                  v202 = *v201;
                  if (v202 == 1)
                  {
                    v223 = *(re::DynamicArray<re::StringID>::operator[](*(a2 + 22), *(a2 + 24), *(v201 + 1)) + 8);
                    if (v223 != kk)
                    {
                      re::DynamicString::format(this, "Rig Node %zu (%s) constraint %zu outputs for a differing rig node : %zu.", v268, kk, v190[1], mm, v223);
                      goto LABEL_435;
                    }
                  }

                  else
                  {
                    if (v202 != 3)
                    {
                      re::DynamicString::format(this, "Rig Node %zu (%s) constraint %zu outputs to invalid destination: %u.", v268, kk, v190[1], mm, v202);
                      goto LABEL_435;
                    }

                    v203 = re::DynamicArray<re::StringID>::operator[](*(a2 + 80), *(a2 + 82), *(v201 + 1));
                    v204 = *re::FixedArray<unsigned long>::operator[](&v256 + 24 * *v203, *(v203 + 1));
                    v205 = re::FixedArray<unsigned long>::operator[](&v256 + 24 * *v203, *(v203 + 1));
                    if (v204 == -1)
                    {
                      *v205 = kk;
                    }

                    else
                    {
                      v206 = *v205;
                      if (*v205 != kk)
                      {
                        v248 = v190[1];
                        v255 = *(re::DynamicArray<re::RigNode>::operator[](*(a2 + 130), *(a2 + 132), v206) + 8);
                        re::DynamicString::format(this, "Rig Node %zu (%s) initializing temporary value already initialized by other rig node %zu (%s).", v268, kk, v248, v206, v255);
                        goto LABEL_435;
                      }
                    }
                  }

                  break;
                default:
                  goto LABEL_433;
              }
            }
          }
        }

        v187 = *(a2 + 130);
      }
    }

    v224 = *(a2 + 125);
    if (v224)
    {
      for (nn = 0; nn < v224; ++nn)
      {
        v226 = re::DynamicArray<re::StringID>::operator[](v224, *(a2 + 127), nn);
        v227 = *v226;
        switch(v227)
        {
          case 3:
            v230 = *(v226 + 1);
            if (v230 >= *(a2 + 105))
            {
              re::DynamicString::format(this, "Rig IK Handle %zu does not have a valid Spline IK index: %zu.", v268, nn, v230);
              goto LABEL_435;
            }

            break;
          case 2:
            v229 = *(v226 + 1);
            if (v229 >= *(a2 + 100))
            {
              re::DynamicString::format(this, "Rig IK Handle %zu does not have a valid single chain IK index: %zu.", v268, nn, v229);
              goto LABEL_435;
            }

            break;
          case 1:
            v228 = *(v226 + 1);
            if (v228 >= *(a2 + 95))
            {
              re::DynamicString::format(this, "Rig IK Handle %zu does not have a valid two-bone IK index: %zu.", v268, nn, v228);
              goto LABEL_435;
            }

            break;
          default:
            re::DynamicString::format(this, "Rig IK Handle %zu does not have a valid type: %u.", v268, nn, v227);
            goto LABEL_435;
        }

        v224 = *(a2 + 125);
      }
    }

    v231 = *(a2 + 135);
    if (v231)
    {
      for (i1 = 0; i1 < v231; ++i1)
      {
        v233 = re::DynamicArray<re::RigExpression>::operator[](v231, *(a2 + 137), i1);
        v234 = *v233;
        if (v234 == 2)
        {
          v236 = *(v233 + 1);
          if (v236 >= *(a2 + 115))
          {
            re::DynamicString::format(this, "Rig pose node %zu does not specify a valid joint node: %zu.", v268, i1, v236);
            goto LABEL_435;
          }
        }

        else
        {
          if (v234 != 1)
          {
            re::DynamicString::format(this, "Rig pose node %zu does not specify a valid node type: %u.", v268, i1, v234);
            goto LABEL_435;
          }

          v235 = *(v233 + 1);
          if (v235 >= *(a2 + 110))
          {
            re::DynamicString::format(this, "Rig pose node %zu does not specify a valid transform node: %zu.", v268, i1, v235);
            goto LABEL_435;
          }
        }

        v237 = *(v233 + 2);
        if (v237 >= *(a2 + 130))
        {
          re::DynamicString::format(this, "Rig pose node %zu does not specify a valid rig node to override: %zu.", v268, i1, v237);
          goto LABEL_435;
        }

        v231 = *(a2 + 135);
      }
    }

    v238 = *(a2 + 140);
    if (v238)
    {
      v239 = 0;
      while (1)
      {
        v240 = re::DynamicArray<re::RigPose>::operator[](v238, *(a2 + 142), v239);
        v241 = v240[1];
        if (!v241 || !*v241)
        {
          re::DynamicString::format(this, "Rig pose %zu does not have a valid name.", v268, v239);
          goto LABEL_435;
        }

        v242 = v240[2];
        if (!v242)
        {
          re::DynamicString::format(this, "Rig pose %zu (%s) does not contain any pose nodes.", v268, v239, v241);
          goto LABEL_435;
        }

        v243 = v240[3];
        v180 = __CFADD__(v243, v242);
        v244 = v243 + v242;
        if (v180 || v244 > *(a2 + 135))
        {
          break;
        }

        ++v239;
        v238 = *(a2 + 140);
        if (v239 >= v238)
        {
          goto LABEL_396;
        }
      }

      re::DynamicString::format(this, "Rig pose %zu (%s) does not contain valid pose nodes.", v268, v239, v241);
LABEL_435:
      v249 = *v268;
      v250 = *&v268[16];
      v251 = *&v268[24];
      *a3 = 0;
      *(a3 + 8) = 3000;
      *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(a3 + 24) = v249;
      *(a3 + 40) = v250;
      *(a3 + 48) = v251;
    }

    else
    {
LABEL_396:
      *a3 = 1;
    }

    for (i2 = 168; i2 != -24; i2 -= 24)
    {
      result = re::FixedArray<CoreIKTransform>::deinit((&v256 + i2));
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::RigComponentConstraint>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 88 * a3;
}

uint64_t re::DynamicArray<re::RigBasicConstraint>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 80 * a3;
}

uint64_t re::DynamicArray<re::RigAimConstraint>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 144 * a3;
}

uint64_t re::DynamicArray<re::RigExpression>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 24 * a3;
}

uint64_t re::anonymous namespace::getExpressionParameterType(re::_anonymous_namespace_ *this, uint64_t a2)
{
  if (*(this + 85) <= a2)
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
    goto LABEL_14;
  }

  v2 = (*(this + 87) + 16 * a2);
  v3 = *v2;
  switch(v3)
  {
    case 1:
      return 7;
    case 3:
      v4 = *(v2 + 1);
      if (*(this + 80) > v4)
      {
        v5 = *(this + 82);
        return *(v5 + 16 * v4);
      }

      goto LABEL_13;
    case 2:
      v4 = *(v2 + 1);
      if (*(this + 67) > v4)
      {
        v5 = *(this + 69);
        return *(v5 + 16 * v4);
      }

LABEL_14:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      break;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected parameter type value.", "!Unreachable code", "getExpressionParameterType", 84);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::DynamicArray<re::RigNode>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 56 * a3;
}

uint64_t re::DynamicArray<unsigned long>::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 8 * a2;
}

uint64_t re::DynamicArray<re::RigSingleChainIKHandles>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + (a3 << 7);
}

uint64_t re::DynamicArray<re::RigSplineIKHandle>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 240 * a3;
}

uint64_t re::DynamicArray<re::RigTransform>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + (a3 << 6);
}

uint64_t re::DynamicArray<re::RigJoint>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 96 * a3;
}

uint64_t re::DynamicArray<re::RigPose>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 32 * a3;
}

void re::introspect_RigConstraintType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18F360, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE18F368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F368))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE18FEA8, "RigConstraintType", 1, 1, 1, 1);
      qword_1EE18FEA8 = &unk_1F5D0C658;
      qword_1EE18FEE8 = &re::introspect_RigConstraintType(BOOL)::enumTable;
      dword_1EE18FEB8 = 9;
      __cxa_guard_release(&qword_1EE18F368);
    }

    if (_MergedGlobals_15)
    {
      break;
    }

    _MergedGlobals_15 = 1;
    re::IntrospectionRegistry::add(&qword_1EE18FEA8, a2);
    v41 = 0x2C7A148B8865178ELL;
    v42 = "RigConstraintType";
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
      v6 = qword_1EE18FEE8;
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
      xmmword_1EE18FEC8 = v43;
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
    v28 = __cxa_guard_acquire(&qword_1EE18F360);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "InvalidConstraint";
      qword_1EE18F840 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "PointConstraint";
      qword_1EE18F848 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "OrientConstraint";
      qword_1EE18F850 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "ParentConstraint";
      qword_1EE18F858 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "AimConstraint";
      qword_1EE18F860 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 5;
      *(v40 + 16) = "ExpressionConstraint";
      qword_1EE18F868 = v40;
      __cxa_guard_release(&qword_1EE18F360);
    }
  }
}

void *re::allocInfo_RigBasicConstraint(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F370))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1900E8, "RigBasicConstraint");
    __cxa_guard_release(&qword_1EE18F370);
  }

  return &unk_1EE1900E8;
}

void re::initInfo_RigBasicConstraint(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xA7153225B4A8BB36;
  v15[1] = "RigBasicConstraint";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE18F378, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F378);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "constraintNodeIndices";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F678 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "constraintNodeWeights";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18F680 = v13;
      __cxa_guard_release(&qword_1EE18F378);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18F678;
  *(this + 9) = re::internal::defaultConstruct<re::RigBasicConstraint>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigBasicConstraint>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigBasicConstraint>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigBasicConstraint>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(BOOL)::info) = &unk_1F5CAF328;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_size_t(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(BOOL)::info, 0);
    qword_1EE186758 = 0x2800000003;
    dword_1EE186760 = v8;
    word_1EE186764 = 0;
    *&xmmword_1EE186768 = 0;
    *(&xmmword_1EE186768 + 1) = 0xFFFFFFFFLL;
    qword_1EE186778 = v7;
    unk_1EE186780 = 0;
    re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(BOOL)::info = &unk_1F5CAF328;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(BOOL)::info, &v15);
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
    xmmword_1EE186768 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<float>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<float>>::get(BOOL)::info) = &unk_1F5CAF3C0;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<float>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<float>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<float>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<float>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_float(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<float>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<float>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<float>>::get(BOOL)::info, 0);
    qword_1EE186878 = 0x2800000003;
    dword_1EE186880 = v8;
    word_1EE186884 = 0;
    *&xmmword_1EE186888 = 0;
    *(&xmmword_1EE186888 + 1) = 0xFFFFFFFFLL;
    qword_1EE186898 = v7;
    unk_1EE1868A0 = 0;
    re::IntrospectionInfo<re::DynamicArray<float>>::get(BOOL)::info = &unk_1F5CAF3C0;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<float>>::get(BOOL)::info, &v15);
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
    xmmword_1EE186888 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<float>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::RigBasicConstraint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 72) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigBasicConstraint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::RigBasicConstraint>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigBasicConstraint>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

void *re::allocInfo_RigComponentConstraint(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F388))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190178, "RigComponentConstraint");
    __cxa_guard_release(&qword_1EE18F388);
  }

  return &unk_1EE190178;
}

void re::initInfo_RigComponentConstraint(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x58E39F8DB27A6F54;
  v18[1] = "RigComponentConstraint";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE18F390, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F390);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<BOOL [3]>::get(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "constraintComponents";
      *(v8 + 16) = &unk_1EE190058;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE18F6F8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "constraintNodeIndices";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE18F700 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "constraintNodeWeights";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x3000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE18F708 = v16;
      __cxa_guard_release(&qword_1EE18F390);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18F6F8;
  *(this + 9) = re::internal::defaultConstruct<re::RigComponentConstraint>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigComponentConstraint>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigComponentConstraint>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigComponentConstraint>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::IntrospectionInfo<BOOL [3]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18F5C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F5C8))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE190058);
    __cxa_guard_release(&qword_1EE18F5C8);
  }

  if ((byte_1EE18F346 & 1) == 0)
  {
    byte_1EE18F346 = 1;
    v2 = re::introspect_BOOL(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE190058, v2, 3);
    re::IntrospectionRegistry::add(&unk_1EE190058, v3);
    re::getPrettyTypeName(&unk_1EE190058, &v7);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE190078 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::RigComponentConstraint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  *(a3 + 80) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigComponentConstraint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 48);

  return re::DynamicArray<unsigned long>::deinit(a3 + 8);
}

double re::internal::defaultConstructV2<re::RigComponentConstraint>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigComponentConstraint>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 48);

  return re::DynamicArray<unsigned long>::deinit(a1 + 8);
}

void re::introspect_RigAimAxisType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18F3A0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE18F3A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F3A8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE18FEF0, "RigAimAxisType", 1, 1, 1, 1);
      qword_1EE18FEF0 = &unk_1F5D0C658;
      qword_1EE18FF30 = &re::introspect_RigAimAxisType(BOOL)::enumTable;
      dword_1EE18FF00 = 9;
      __cxa_guard_release(&qword_1EE18F3A8);
    }

    if (byte_1EE18F341)
    {
      break;
    }

    byte_1EE18F341 = 1;
    re::IntrospectionRegistry::add(&qword_1EE18FEF0, a2);
    v35 = 0x570029D698AED7A0;
    v36 = "RigAimAxisType";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE18FF30;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
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
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
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
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE18FF10 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE18F3A0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "PointAtConstraintNode";
      qword_1EE18F710 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "ConstraintNodeAxis";
      qword_1EE18F718 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "WorldAxis";
      qword_1EE18F720 = v34;
      __cxa_guard_release(&qword_1EE18F3A0);
    }
  }
}

void *re::allocInfo_RigAimConstraint(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F3B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F3B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190208, "RigAimConstraint");
    __cxa_guard_release(&qword_1EE18F3B0);
  }

  return &unk_1EE190208;
}

void re::initInfo_RigAimConstraint(re *this, re::IntrospectionBase *a2)
{
  v34[0] = 0x979D610D07DC9BE4;
  v34[1] = "RigAimConstraint";
  if (v34[0])
  {
    if (v34[0])
    {
    }
  }

  *(this + 2) = v35;
  if ((atomic_load_explicit(&qword_1EE18F3B8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F3B8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<BOOL [3]>::get(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "constraintComponents";
      *(v8 + 16) = &unk_1EE190058;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE18F968 = v8;
      v9 = re::introspectionAllocator(v8);
      re::introspect_RigAimAxisType(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "forwardAxisType";
      *(v11 + 16) = &qword_1EE18FEF0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x300000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE18F970 = v11;
      v12 = re::introspectionAllocator(v11);
      re::introspect_RigAimAxisType(v12, v13);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "upAxisType";
      *(v14 + 16) = &qword_1EE18FEF0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x400000003;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18F978 = v14;
      v15 = re::introspectionAllocator(v14);
      v16 = re::introspect_Vector3F(1);
      v17 = (*(*v15 + 32))(v15, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "aimAxisForward";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1000000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE18F980 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = re::introspect_Vector3F(1);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "aimAxisUp";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2000000005;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE18F988 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "forwardConstraintNodeIndices";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x3000000006;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE18F990 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "forwardConstraintWeights";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x5800000007;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE18F998 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_size_t(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "upConstraintNodeIndex";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x8000000008;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE18F9A0 = v32;
      __cxa_guard_release(&qword_1EE18F3B8);
    }
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE18F968;
  *(this + 9) = re::internal::defaultConstruct<re::RigAimConstraint>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigAimConstraint>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigAimConstraint>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigAimConstraint>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v33 = v35;
}

double re::internal::defaultConstruct<re::RigAimConstraint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 60) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = -1;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigAimConstraint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 88);

  return re::DynamicArray<unsigned long>::deinit(a3 + 48);
}

double re::internal::defaultConstructV2<re::RigAimConstraint>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = -1;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigAimConstraint>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 88);

  return re::DynamicArray<unsigned long>::deinit(a1 + 48);
}

void re::introspect_RigNodeChannelType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18F3C8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE18F3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F3D0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE18FF38, "RigNodeChannelType", 1, 1, 1, 1);
      qword_1EE18FF38 = &unk_1F5D0C658;
      qword_1EE18FF78 = &re::introspect_RigNodeChannelType(BOOL)::enumTable;
      dword_1EE18FF48 = 9;
      __cxa_guard_release(&qword_1EE18F3D0);
    }

    if (byte_1EE18F342)
    {
      break;
    }

    byte_1EE18F342 = 1;
    re::IntrospectionRegistry::add(&qword_1EE18FF38, a2);
    v37 = 0x3CBA80F78C4288D6;
    v38 = "RigNodeChannelType";
    v41 = 0x31CD534126;
    v42 = "uint8_t";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE18FF78;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE18FF58 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE18F3C8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Invalid";
      qword_1EE18F7A0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Rotation";
      qword_1EE18F7A8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Scale";
      qword_1EE18F7B0 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "Translation";
      qword_1EE18F7B8 = v36;
      __cxa_guard_release(&qword_1EE18F3C8);
    }
  }
}

void *re::allocInfo_RigNodeChannel(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F3D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F3D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190298, "RigNodeChannel");
    __cxa_guard_release(&qword_1EE18F3D8);
  }

  return &unk_1EE190298;
}

void re::initInfo_RigNodeChannel(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x574CF3CA093CE322;
  v14[1] = "RigNodeChannel";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE18F3E0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F3E0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_RigNodeChannelType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "channelType";
      *(v8 + 16) = &qword_1EE18FF38;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE18F688 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_size_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "rigNode";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE18F690 = v12;
      __cxa_guard_release(&qword_1EE18F3E0);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18F688;
  *(this + 9) = re::internal::defaultConstruct<re::RigNodeChannel>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigNodeChannel>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigNodeChannel>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigNodeChannel>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

uint64_t re::internal::defaultConstructV2<re::RigNodeChannel>(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  return result;
}

void *re::allocInfo_RigNodeConstant(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F3F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F3F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&_MergedGlobals_168, "RigNodeConstant");
    __cxa_guard_release(&qword_1EE18F3F0);
  }

  return &_MergedGlobals_168;
}

void re::initInfo_RigNodeConstant(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x9251857A2FE701ACLL;
  v15[1] = "RigNodeConstant";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE18F3F8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F3F8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_EvaluationRegisterType(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "constantType";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F698 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_size_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "constantIndex";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18F6A0 = v13;
      __cxa_guard_release(&qword_1EE18F3F8);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18F698;
  *(this + 9) = re::internal::defaultConstruct<re::RigNodeConstant>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigNodeConstant>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigNodeConstant>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigNodeConstant>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

uint64_t re::internal::defaultConstructV2<re::RigNodeConstant>(uint64_t result)
{
  *result = -1;
  *(result + 8) = -1;
  return result;
}

void *re::allocInfo_RigNodeTemporaryValue(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F408))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF17E30, "RigNodeTemporaryValue");
    __cxa_guard_release(&qword_1EE18F408);
  }

  return &unk_1ECF17E30;
}

void re::initInfo_RigNodeTemporaryValue(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xD3DD14C91493BAA4;
  v15[1] = "RigNodeTemporaryValue";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE18F410, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F410);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_EvaluationRegisterType(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "temporaryValueType";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F6A8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_size_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "temporaryValueIndex";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18F6B0 = v13;
      __cxa_guard_release(&qword_1EE18F410);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18F6A8;
  *(this + 9) = re::internal::defaultConstruct<re::RigNodeTemporaryValue>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigNodeTemporaryValue>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigNodeTemporaryValue>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigNodeTemporaryValue>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

uint64_t re::internal::defaultConstructV2<re::RigNodeTemporaryValue>(uint64_t result)
{
  *result = -1;
  *(result + 8) = -1;
  return result;
}

void re::introspect_RigExpressionParameterType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18F420, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE18F428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F428))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE18FF80, "RigExpressionParameterType", 1, 1, 1, 1);
      qword_1EE18FF80 = &unk_1F5D0C658;
      qword_1EE18FFC0 = &re::introspect_RigExpressionParameterType(BOOL)::enumTable;
      dword_1EE18FF90 = 9;
      __cxa_guard_release(&qword_1EE18F428);
    }

    if (byte_1EE18F343)
    {
      break;
    }

    byte_1EE18F343 = 1;
    re::IntrospectionRegistry::add(&qword_1EE18FF80, a2);
    v37 = 0x654B278C74D9AF76;
    v38 = "RigExpressionParameterType";
    v41 = 0x31CD534126;
    v42 = "uint8_t";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE18FFC0;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE18FFA0 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE18F420);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Invalid";
      qword_1EE18F7C0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "NodeChannel";
      qword_1EE18F7C8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "ConstantValue";
      qword_1EE18F7D0 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "TemporaryValue";
      qword_1EE18F7D8 = v36;
      __cxa_guard_release(&qword_1EE18F420);
    }
  }
}

void *re::allocInfo_RigExpressionParameter(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F430))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF17EC0, "RigExpressionParameter");
    __cxa_guard_release(&qword_1EE18F430);
  }

  return &unk_1ECF17EC0;
}

void re::initInfo_RigExpressionParameter(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x27D44DBCDBB059C2;
  v14[1] = "RigExpressionParameter";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE18F438, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F438);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_RigExpressionParameterType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "type";
      *(v8 + 16) = &qword_1EE18FF80;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE18F6B8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_size_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "parameterIndex";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE18F6C0 = v12;
      __cxa_guard_release(&qword_1EE18F438);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18F6B8;
  *(this + 9) = re::internal::defaultConstruct<re::RigExpressionParameter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigExpressionParameter>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigExpressionParameter>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigExpressionParameter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

uint64_t re::internal::defaultConstructV2<re::RigExpressionParameter>(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  return result;
}

void *re::allocInfo_RigExpression(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F448))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF17F50, "RigExpression");
    __cxa_guard_release(&qword_1EE18F448);
  }

  return &unk_1ECF17F50;
}

void re::initInfo_RigExpression(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x4D21E17B034C8750;
  v19[1] = "RigExpression";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE18F450, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F450);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_EvaluationCommand(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "command";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F728 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_size_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "expressionParameterIndexStart";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18F730 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_size_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "expressionDestinationParameterIndex";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE18F738 = v17;
      __cxa_guard_release(&qword_1EE18F450);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18F728;
  *(this + 9) = re::internal::defaultConstruct<re::RigExpression>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigExpression>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigExpression>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigExpression>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void re::internal::defaultConstruct<re::RigExpression>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = -1;
  *(a3 + 8) = -1;
  *(a3 + 16) = -1;
}

uint64_t re::internal::defaultConstructV2<re::RigExpression>(uint64_t result)
{
  *result = -1;
  *(result + 8) = -1;
  *(result + 16) = -1;
  return result;
}

void *re::allocInfo_RigTwoBoneIKHandles(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F460))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF17FE0, "RigTwoBoneIKHandles");
    __cxa_guard_release(&qword_1EE18F460);
  }

  return &unk_1ECF17FE0;
}

void re::initInfo_RigTwoBoneIKHandles(re *this, re::IntrospectionBase *a2)
{
  v31[0] = 0xCDF945C63DA71752;
  v31[1] = "RigTwoBoneIKHandles";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE18F468, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F468);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "rootRigNodes";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F870 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "effectorRigNodes";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18F878 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "targetRigNodes";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x5000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE18F880 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "upRigNodes";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x7800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE18F888 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "twistOffsets";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xA000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE18F890 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "softIKPercentages";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0xC800000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE18F898 = v29;
      __cxa_guard_release(&qword_1EE18F468);
    }
  }

  *(this + 2) = 0xF000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE18F870;
  *(this + 9) = re::internal::defaultConstruct<re::RigTwoBoneIKHandles>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigTwoBoneIKHandles>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigTwoBoneIKHandles>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigTwoBoneIKHandles>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v30 = v32;
}

double re::internal::defaultConstruct<re::RigTwoBoneIKHandles>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 232) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigTwoBoneIKHandles>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 200);
  re::DynamicArray<unsigned long>::deinit(a3 + 160);
  re::DynamicArray<unsigned long>::deinit(a3 + 120);
  re::DynamicArray<unsigned long>::deinit(a3 + 80);
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::RigTwoBoneIKHandles>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 232) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigTwoBoneIKHandles>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 200);
  re::DynamicArray<unsigned long>::deinit(a1 + 160);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  re::DynamicArray<unsigned long>::deinit(a1 + 80);
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

void *re::allocInfo_RigSingleChainIKHandles(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F478))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF18070, "RigSingleChainIKHandles");
    __cxa_guard_release(&qword_1EE18F478);
  }

  return &unk_1ECF18070;
}

void re::initInfo_RigSingleChainIKHandles(re *this, re::IntrospectionBase *a2)
{
  v23[0] = 0x4FC8F2E06F6B7B40;
  v23[1] = "RigSingleChainIKHandles";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE18F480, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F480);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "rootRigNodes";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F7E0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "effectorRigNodes";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18F7E8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "targetRigNodes";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x5000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE18F7F0 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "tolerance";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x7800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE18F7F8 = v21;
      __cxa_guard_release(&qword_1EE18F480);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE18F7E0;
  *(this + 9) = re::internal::defaultConstruct<re::RigSingleChainIKHandles>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigSingleChainIKHandles>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigSingleChainIKHandles>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigSingleChainIKHandles>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

double re::internal::defaultConstruct<re::RigSingleChainIKHandles>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 120) = 1008981770;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigSingleChainIKHandles>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 80);
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::RigSingleChainIKHandles>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1008981770;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigSingleChainIKHandles>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 80);
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

void *re::allocInfo_RigSplineIKJoint(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F490))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF18100, "RigSplineIKJoint");
    __cxa_guard_release(&qword_1EE18F490);
  }

  return &unk_1ECF18100;
}

void re::initInfo_RigSplineIKJoint(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x2612B483F7D3490ELL;
  v14[1] = "RigSplineIKJoint";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE18F498, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F498);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "rigNodeIndex";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F6C8 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = re::introspect_Matrix4x4F(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "inverseBindPose";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE18F6D0 = v12;
      __cxa_guard_release(&qword_1EE18F498);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18F6C8;
  *(this + 9) = re::internal::defaultConstruct<re::RigSplineIKJoint>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigSplineIKJoint>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigSplineIKJoint>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigSplineIKJoint>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::RigSplineIKJoint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = -1;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RigSplineIKJoint>(uint64_t a1)
{
  *a1 = -1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

void *re::allocInfo_RigSplineIKControlPoint(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F4A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF18190, "RigSplineIKControlPoint");
    __cxa_guard_release(&qword_1EE18F4A8);
  }

  return &unk_1ECF18190;
}

void re::initInfo_RigSplineIKControlPoint(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xEC09AC94D535DF2CLL;
  v18[1] = "RigSplineIKControlPoint";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE18F4B0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F4B0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "jointInfluences";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F740 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "jointWeights";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18F748 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = re::introspect_Vector3F(1);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "bindPosition";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x5000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE18F750 = v16;
      __cxa_guard_release(&qword_1EE18F4B0);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18F740;
  *(this + 9) = re::internal::defaultConstruct<re::RigSplineIKControlPoint>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigSplineIKControlPoint>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigSplineIKControlPoint>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigSplineIKControlPoint>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::RigSplineIKControlPoint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 72) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigSplineIKControlPoint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::RigSplineIKControlPoint>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigSplineIKControlPoint>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

void *re::allocInfo_RigSplineIKHandle(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F4C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F4C0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF18220, "RigSplineIKHandle");
    __cxa_guard_release(&qword_1EE18F4C0);
  }

  return &unk_1ECF18220;
}

void re::initInfo_RigSplineIKHandle(re *this, re::IntrospectionBase *a2)
{
  v32[0] = 0x9C43DBFAFA3C2396;
  v32[1] = "RigSplineIKHandle";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE18F4C8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F4C8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::RigSplineIKJoint>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "joints";
      *(v7 + 16) = &qword_1EE18F9A8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0x800000001;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE18F930 = v7;
      v8 = re::introspectionAllocator(v7);
      re::IntrospectionInfo<re::DynamicArray<re::RigSplineIKControlPoint>>::get(v8);
      v9 = (*(*v8 + 32))(v8, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "controlPoints";
      *(v9 + 16) = &qword_1EE18F9E8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x3000000002;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F938 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "knots";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x5800000003;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18F940 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_size_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "rootRigNode";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x8000000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE18F948 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_size_t(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "endEffectorRigNode";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x8800000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE18F950 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_size_t(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "splineBindTransformNodeIndex";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x9000000006;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE18F958 = v25;
      v26 = re::introspectionAllocator(v25);
      v27 = v26;
      v28 = qword_1EE18F4E8;
      if (!qword_1EE18F4E8)
      {
        v28 = re::allocInfo_RigIKTwistControls(v26);
        qword_1EE18F4E8 = v28;
        re::initInfo_RigIKTwistControls(v28, v29);
      }

      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "twistControls";
      *(v30 + 16) = v28;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0xA000000007;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE18F960 = v30;
      __cxa_guard_release(&qword_1EE18F4C8);
    }
  }

  *(this + 2) = 0xF000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE18F930;
  *(this + 9) = re::internal::defaultConstruct<re::RigSplineIKHandle>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigSplineIKHandle>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigSplineIKHandle>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigSplineIKHandle>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v31 = v33;
}

void re::IntrospectionInfo<re::DynamicArray<re::RigSplineIKJoint>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F5D0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F5D0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18F9A8);
      qword_1EE18F9A8 = &unk_1F5CAF458;
      __cxa_guard_release(&qword_1EE18F5D0);
    }
  }

  if ((byte_1EE18F347 & 1) == 0)
  {
    v1 = qword_1EE18F4A0;
    if (qword_1EE18F4A0 || (v1 = re::allocInfo_RigSplineIKJoint(a1), qword_1EE18F4A0 = v1, re::initInfo_RigSplineIKJoint(v1, v2), (byte_1EE18F347 & 1) == 0))
    {
      byte_1EE18F347 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18F9A8, 0);
      qword_1EE18F9B8 = 0x2800000003;
      dword_1EE18F9C0 = v3;
      word_1EE18F9C4 = 0;
      *&xmmword_1EE18F9C8 = 0;
      *(&xmmword_1EE18F9C8 + 1) = 0xFFFFFFFFLL;
      qword_1EE18F9D8 = v1;
      qword_1EE18F9E0 = 0;
      qword_1EE18F9A8 = &unk_1F5CAF458;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18F9A8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18F9C8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigSplineIKControlPoint>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F5D8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F5D8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18F9E8);
      qword_1EE18F9E8 = &unk_1F5CAF4F0;
      __cxa_guard_release(&qword_1EE18F5D8);
    }
  }

  if ((byte_1EE18F348 & 1) == 0)
  {
    v1 = qword_1EE18F4B8;
    if (qword_1EE18F4B8 || (v1 = re::allocInfo_RigSplineIKControlPoint(a1), qword_1EE18F4B8 = v1, re::initInfo_RigSplineIKControlPoint(v1, v2), (byte_1EE18F348 & 1) == 0))
    {
      byte_1EE18F348 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18F9E8, 0);
      qword_1EE18F9F8 = 0x2800000003;
      dword_1EE18FA00 = v3;
      word_1EE18FA04 = 0;
      *&xmmword_1EE18FA08 = 0;
      *(&xmmword_1EE18FA08 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FA18 = v1;
      qword_1EE18FA20 = 0;
      qword_1EE18F9E8 = &unk_1F5CAF4F0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18F9E8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FA08 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::RigSplineIKHandle>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1008981770;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  *(a3 + 160) = -1;
  *(a3 + 168) = -1;
  *(a3 + 120) = 0;
  *(a3 + 128) = -1;
  *(a3 + 136) = -1;
  *(a3 + 144) = -1;
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 176) = 0u;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigSplineIKHandle>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 88);
  re::DynamicArray<re::RigSplineIKControlPoint>::deinit(a3 + 48);

  return re::DynamicArray<unsigned long>::deinit(a3 + 8);
}

double re::internal::defaultConstructV2<re::RigSplineIKHandle>(uint64_t a1)
{
  *a1 = 1008981770;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 160) = -1;
  *(a1 + 168) = -1;
  *(a1 + 120) = 0;
  *(a1 + 128) = -1;
  *(a1 + 136) = -1;
  *(a1 + 144) = -1;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigSplineIKHandle>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 88);
  re::DynamicArray<re::RigSplineIKControlPoint>::deinit(a1 + 48);

  return re::DynamicArray<unsigned long>::deinit(a1 + 8);
}

void *re::allocInfo_RigIKTwistControls(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F4D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F4D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF182B0, "RigIKTwistControls");
    __cxa_guard_release(&qword_1EE18F4D8);
  }

  return &unk_1ECF182B0;
}

void re::initInfo_RigIKTwistControls(re *this, re::IntrospectionBase *a2)
{
  v28[0] = 0x47666560A0227416;
  v28[1] = "RigIKTwistControls";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE18F4E0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F4E0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "startTwistRigNode";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F8A0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_size_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "endTwistRigNode";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18F8A8 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = re::introspect_Vector3F(1);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "startTwistUpAxis";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE18F8B0 = v16;
      v17 = re::introspectionAllocator(v16);
      v18 = re::introspect_Vector3F(1);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "endTwistUpAxis";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE18F8B8 = v19;
      v20 = re::introspectionAllocator(v19);
      v21 = re::introspect_Vector3F(1);
      v22 = (*(*v20 + 32))(v20, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "ikChainUpAxis";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x3000000005;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE18F8C0 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::introspect_float(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "twistOffset";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x4000000006;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE18F8C8 = v26;
      __cxa_guard_release(&qword_1EE18F4E0);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE18F8A0;
  *(this + 9) = re::internal::defaultConstruct<re::RigIKTwistControls>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigIKTwistControls>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigIKTwistControls>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigIKTwistControls>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v27 = v29;
}

double re::internal::defaultConstruct<re::RigIKTwistControls>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = -1;
  *(a3 + 8) = -1;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::RigIKTwistControls>(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 8) = -1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

void re::introspect_RigIKHandleType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18F4F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE18F4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F4F8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE18FFC8, "RigIKHandleType", 1, 1, 1, 1);
      qword_1EE18FFC8 = &unk_1F5D0C658;
      qword_1EE190008 = &re::introspect_RigIKHandleType(BOOL)::enumTable;
      dword_1EE18FFD8 = 9;
      __cxa_guard_release(&qword_1EE18F4F8);
    }

    if (byte_1EE18F344)
    {
      break;
    }

    byte_1EE18F344 = 1;
    re::IntrospectionRegistry::add(&qword_1EE18FFC8, a2);
    v37 = 0x8DF3E5D041D1B268;
    v38 = "RigIKHandleType";
    v41 = 0x31CD534126;
    v42 = "uint8_t";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE190008;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE18FFE8 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE18F4F0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Invalid";
      qword_1EE18F800 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "TwoBone";
      qword_1EE18F808 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "SingleChain";
      qword_1EE18F810 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "Spline";
      qword_1EE18F818 = v36;
      __cxa_guard_release(&qword_1EE18F4F0);
    }
  }
}

void *re::allocInfo_RigIKHandles(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F500))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF18340, "RigIKHandles");
    __cxa_guard_release(&qword_1EE18F500);
  }

  return &unk_1ECF18340;
}

void re::initInfo_RigIKHandles(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x3C4B6E422A8111B2;
  v14[1] = "RigIKHandles";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE18F508, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F508);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_RigIKHandleType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "type";
      *(v8 + 16) = &qword_1EE18FFC8;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE18F6D8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_size_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "ikHandleIndex";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE18F6E0 = v12;
      __cxa_guard_release(&qword_1EE18F508);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18F6D8;
  *(this + 9) = re::internal::defaultConstruct<re::RigIKHandles>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigIKHandles>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigIKHandles>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigIKHandles>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

uint64_t re::internal::defaultConstructV2<re::RigIKHandles>(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  return result;
}

void *re::allocInfo_RigTransform(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F518))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF183D0, "RigTransform");
    __cxa_guard_release(&qword_1EE18F518);
  }

  return &unk_1ECF183D0;
}

void re::initInfo_RigTransform(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x3C4B815110E2B0B8;
  v20[1] = "RigTransform";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE18F520, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F520);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_Vector3F(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "translation";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE18F820 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "rotation";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE18F828 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::introspect_Vector3F(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "scale";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x2000000003;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18F830 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_RERotationOrder(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "rotationOrder";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x3000000004;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18F838 = v18;
      __cxa_guard_release(&qword_1EE18F520);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE18F820;
  *(this + 9) = re::internal::defaultConstruct<re::RigTransform>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigTransform>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigTransform>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigTransform>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

double re::internal::defaultConstruct<re::RigTransform>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0x3F8000003F800000;
  *(a3 + 40) = 1065353216;
  *(a3 + 48) = 7;
  return result;
}

double re::internal::defaultConstructV2<re::RigTransform>(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x3F8000003F800000;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 7;
  return result;
}

void *re::allocInfo_RigJoint(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F530))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF18460, "RigJoint");
    __cxa_guard_release(&qword_1EE18F530);
  }

  return &unk_1ECF18460;
}

void re::initInfo_RigJoint(re *this, re::IntrospectionBase *a2)
{
  v26[0] = 0x44759315AF4;
  v26[1] = "RigJoint";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE18F538, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F538);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_Vector3F(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "translation";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE18F8D0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_QuaternionF(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "orientation";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE18F8D8 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::introspect_Vector3F(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "rotation";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x2000000003;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18F8E0 = v14;
      v15 = re::introspectionAllocator(v14);
      v16 = re::introspect_QuaternionF(1);
      v17 = (*(*v15 + 32))(v15, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "scaleOrientation";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3000000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE18F8E8 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = re::introspect_Vector3F(1);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "scale";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x4000000005;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE18F8F0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_RERotationOrder(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "rotationOrder";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x5000000006;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE18F8F8 = v24;
      __cxa_guard_release(&qword_1EE18F538);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE18F8D0;
  *(this + 9) = re::internal::defaultConstruct<re::RigJoint>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigJoint>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigJoint>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigJoint>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

double re::internal::defaultConstruct<re::RigJoint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = xmmword_1E30474D0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = xmmword_1E30474D0;
  *(a3 + 64) = 0x3F8000003F800000;
  *(a3 + 72) = 1065353216;
  *(a3 + 80) = 7;
  return result;
}

double re::internal::defaultConstructV2<re::RigJoint>(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = xmmword_1E30474D0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_1E30474D0;
  *(a1 + 64) = 0x3F8000003F800000;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 7;
  return result;
}

void *re::allocInfo_RigNodeConstraint(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F548))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF184F0, "RigNodeConstraint");
    __cxa_guard_release(&qword_1EE18F548);
  }

  return &unk_1ECF184F0;
}

void re::initInfo_RigNodeConstraint(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x44060FADD4005D1ELL;
  v14[1] = "RigNodeConstraint";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE18F550, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F550);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_RigConstraintType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "type";
      *(v8 + 16) = &qword_1EE18FEA8;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE18F6E8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_size_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "constraintIndex";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE18F6F0 = v12;
      __cxa_guard_release(&qword_1EE18F550);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18F6E8;
  *(this + 9) = re::internal::defaultConstruct<re::RigNodeConstraint>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigNodeConstraint>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigNodeConstraint>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigNodeConstraint>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

uint64_t re::internal::defaultConstructV2<re::RigNodeConstraint>(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  return result;
}

void re::introspect_RigNodeType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18F560, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE18F568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F568))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE190010, "RigNodeType", 1, 1, 1, 1);
      qword_1EE190010 = &unk_1F5D0C658;
      qword_1EE190050 = &re::introspect_RigNodeType(BOOL)::enumTable;
      dword_1EE190020 = 9;
      __cxa_guard_release(&qword_1EE18F568);
    }

    if (byte_1EE18F345)
    {
      break;
    }

    byte_1EE18F345 = 1;
    re::IntrospectionRegistry::add(&qword_1EE190010, a2);
    v35 = 0x1F1EB17A3692AD8;
    v36 = "RigNodeType";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE190050;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
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
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
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
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE190030 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE18F560);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Invalid";
      qword_1EE18F758 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Transform";
      qword_1EE18F760 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Joint";
      qword_1EE18F768 = v34;
      __cxa_guard_release(&qword_1EE18F560);
    }
  }
}

void *re::allocInfo_RigNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F570))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF18580, "RigNode");
    __cxa_guard_release(&qword_1EE18F570);
  }

  return &unk_1ECF18580;
}

void re::initInfo_RigNode(re *this, re::IntrospectionBase *a2)
{
  v30[0] = 0x235578D624;
  v30[1] = "RigNode";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE18F578, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F578);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F900 = v9;
      v10 = re::introspectionAllocator(v9);
      re::introspect_RigNodeType(v10, v11);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "nodeType";
      *(v12 + 16) = &qword_1EE190010;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE18F908 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_size_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "index";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE18F910 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_size_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "parentIndex";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE18F918 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_size_t(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "constraintCount";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x2800000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE18F920 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_size_t(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "constraintStartIndex";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x3000000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE18F928 = v28;
      __cxa_guard_release(&qword_1EE18F578);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE18F900;
  *(this + 9) = re::internal::defaultConstruct<re::RigNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v29 = v31;
}

double re::internal::defaultConstruct<re::RigNode>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 24) = -1;
  *(a3 + 32) = -1;
  result = 0.0;
  *(a3 + 40) = xmmword_1E3049610;
  return result;
}

double re::internal::defaultConstructV2<re::RigNode>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  result = 0.0;
  *(a1 + 40) = xmmword_1E3049610;
  return result;
}

void *re::allocInfo_RigPoseNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F588))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF18610, "RigPoseNode");
    __cxa_guard_release(&qword_1EE18F588);
  }

  return &unk_1ECF18610;
}

void re::initInfo_RigPoseNode(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x1F1EB3176197E86;
  v18[1] = "RigPoseNode";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE18F590, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F590);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_RigNodeType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "nodeType";
      *(v8 + 16) = &qword_1EE190010;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE18F770 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_size_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "nodeIndex";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE18F778 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_size_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "rigNodeIndex";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE18F780 = v16;
      __cxa_guard_release(&qword_1EE18F590);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18F770;
  *(this + 9) = re::internal::defaultConstruct<re::RigPoseNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigPoseNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigPoseNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigPoseNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::RigPoseNode>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  *(a3 + 16) = -1;
}

uint64_t re::internal::defaultConstructV2<re::RigPoseNode>(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  *(result + 16) = -1;
  return result;
}

void *re::allocInfo_RigPose(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F5A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F5A0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF186A0, "RigPose");
    __cxa_guard_release(&qword_1EE18F5A0);
  }

  return &unk_1ECF186A0;
}

void re::initInfo_RigPose(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x23557AAB42;
  v19[1] = "RigPose";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE18F5A8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F5A8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18F788 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_size_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "poseNodeCount";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18F790 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_size_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "poseNodeStartIndex";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE18F798 = v17;
      __cxa_guard_release(&qword_1EE18F5A8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18F788;
  *(this + 9) = re::internal::defaultConstruct<re::RigPose>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigPose>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigPose>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigPose>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::RigPose>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  result = 0.0;
  *(a3 + 16) = xmmword_1E3049610;
  return result;
}

double re::internal::defaultConstructV2<re::RigPose>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  result = 0.0;
  *(a1 + 16) = xmmword_1E3049610;
  return result;
}

void *re::allocInfo_RigDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18F5B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F5B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF18730, "RigDefinition");
    __cxa_guard_release(&qword_1EE18F5B8);
  }

  return &unk_1ECF18730;
}

void re::initInfo_RigDefinition(re *this, re::IntrospectionBase *a2)
{
  v51[0] = 0x4D2193656067CCC6;
  v51[1] = "RigDefinition";
  if (v51[0])
  {
    if (v51[0])
    {
    }
  }

  *(this + 2) = v52;
  if ((atomic_load_explicit(&qword_1EE18F5C0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18F5C0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::RigComponentConstraint>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "pointConstraints";
      *(v7 + 16) = &qword_1EE18FA28;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1ECF187C0 = v7;
      v8 = re::introspectionAllocator(v7);
      re::IntrospectionInfo<re::DynamicArray<re::RigComponentConstraint>>::get(v8);
      v9 = (*(*v8 + 32))(v8, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "orientConstraints";
      *(v9 + 16) = &qword_1EE18FA28;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x2800000002;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1ECF187C8 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::RigBasicConstraint>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "parentConstraints";
      *(v11 + 16) = &qword_1EE18FA68;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x5000000003;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1ECF187D0 = v11;
      v12 = re::introspectionAllocator(v11);
      re::IntrospectionInfo<re::DynamicArray<re::RigAimConstraint>>::get(v12);
      v13 = (*(*v12 + 32))(v12, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "aimConstraints";
      *(v13 + 16) = &qword_1EE18FAA8;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x7800000004;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1ECF187D8 = v13;
      v14 = re::introspectionAllocator(v13);
      re::IntrospectionInfo<re::DynamicArray<re::RigNodeChannel>>::get(v14);
      v15 = (*(*v14 + 32))(v14, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "nodeChannels";
      *(v15 + 16) = &qword_1EE18FAE8;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0xA000000005;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1ECF187E0 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = re::introspect_DynamicRegisterTable(1);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "constantValues";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0xC800000006;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1ECF187E8 = v18;
      v19 = re::introspectionAllocator(v18);
      re::IntrospectionInfo<re::DynamicArray<re::RigNodeConstant>>::get(v19);
      v20 = (*(*v19 + 32))(v19, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "rigNodeConstants";
      *(v20 + 16) = &qword_1EE18FB28;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x20800000007;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1ECF187F0 = v20;
      v21 = re::introspectionAllocator(v20);
      re::IntrospectionInfo<unsigned long [8]>::get(v21, v22);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "temporaryValueCounts";
      *(v23 + 16) = &algn_1EE190088[24];
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x23000000008;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1ECF187F8 = v23;
      v24 = re::introspectionAllocator(v23);
      re::IntrospectionInfo<re::DynamicArray<re::RigNodeTemporaryValue>>::get(v24);
      v25 = (*(*v24 + 32))(v24, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "rigNodeTemporaryValues";
      *(v25 + 16) = &qword_1EE18FB68;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x27000000009;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1ECF18800 = v25;
      v26 = re::introspectionAllocator(v25);
      re::IntrospectionInfo<re::DynamicArray<re::RigExpressionParameter>>::get(v26);
      v27 = (*(*v26 + 32))(v26, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "expressionParameters";
      *(v27 + 16) = &qword_1EE18FBA8;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x2980000000ALL;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1ECF18808 = v27;
      v28 = re::introspectionAllocator(v27);
      re::IntrospectionInfo<re::DynamicArray<re::RigExpression>>::get(v28);
      v29 = (*(*v28 + 32))(v28, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "expressions";
      *(v29 + 16) = &qword_1EE18FBE8;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x2C00000000BLL;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1ECF18810 = v29;
      v30 = re::introspectionAllocator(v29);
      re::IntrospectionInfo<re::DynamicArray<re::RigTwoBoneIKHandles>>::get(v30);
      v31 = (*(*v30 + 32))(v30, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "twoBoneIKHandles";
      *(v31 + 16) = &qword_1EE18FC28;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x2E80000000CLL;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1ECF18818 = v31;
      v32 = re::introspectionAllocator(v31);
      re::IntrospectionInfo<re::DynamicArray<re::RigSingleChainIKHandles>>::get(v32);
      v33 = (*(*v32 + 32))(v32, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "singleChainIKHandles";
      *(v33 + 16) = &qword_1EE18FC68;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x3100000000DLL;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1ECF18820 = v33;
      v34 = re::introspectionAllocator(v33);
      re::IntrospectionInfo<re::DynamicArray<re::RigSplineIKHandle>>::get(v34);
      v35 = (*(*v34 + 32))(v34, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "splineIKHandles";
      *(v35 + 16) = &qword_1EE18FCA8;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x3380000000ELL;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1ECF18828 = v35;
      v36 = re::introspectionAllocator(v35);
      re::IntrospectionInfo<re::DynamicArray<re::RigTransform>>::get(v36);
      v37 = (*(*v36 + 32))(v36, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "transforms";
      *(v37 + 16) = &qword_1EE18FCE8;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x3600000000FLL;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1ECF18830 = v37;
      v38 = re::introspectionAllocator(v37);
      re::IntrospectionInfo<re::DynamicArray<re::RigJoint>>::get(v38);
      v39 = (*(*v38 + 32))(v38, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "joints";
      *(v39 + 16) = &qword_1EE18FD28;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x38800000010;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1ECF18838 = v39;
      v40 = re::introspectionAllocator(v39);
      re::IntrospectionInfo<re::DynamicArray<re::RigNodeConstraint>>::get(v40);
      v41 = (*(*v40 + 32))(v40, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "constraints";
      *(v41 + 16) = &qword_1EE18FD68;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x3B000000011;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1ECF18840 = v41;
      v42 = re::introspectionAllocator(v41);
      re::IntrospectionInfo<re::DynamicArray<re::RigIKHandles>>::get(v42);
      v43 = (*(*v42 + 32))(v42, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "ikHandles";
      *(v43 + 16) = &qword_1EE18FDA8;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x3D800000012;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1ECF18848 = v43;
      v44 = re::introspectionAllocator(v43);
      re::IntrospectionInfo<re::DynamicArray<re::RigNode>>::get(v44);
      v45 = (*(*v44 + 32))(v44, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "rigNodes";
      *(v45 + 16) = &qword_1EE18FDE8;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x40000000013;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1ECF18850 = v45;
      v46 = re::introspectionAllocator(v45);
      re::IntrospectionInfo<re::DynamicArray<re::RigPoseNode>>::get(v46);
      v47 = (*(*v46 + 32))(v46, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "poseNodes";
      *(v47 + 16) = &qword_1EE18FE28;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x42800000014;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1ECF18858 = v47;
      v48 = re::introspectionAllocator(v47);
      re::IntrospectionInfo<re::DynamicArray<re::RigPose>>::get(v48);
      v49 = (*(*v48 + 32))(v48, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "rigPoses";
      *(v49 + 16) = &qword_1EE18FE68;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0x45000000015;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1ECF18860 = v49;
      __cxa_guard_release(&qword_1EE18F5C0);
    }
  }

  *(this + 2) = 0x47800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 21;
  *(this + 8) = &qword_1ECF187C0;
  *(this + 9) = re::internal::defaultConstruct<re::RigDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v50 = v52;
}

void re::IntrospectionInfo<re::DynamicArray<re::RigComponentConstraint>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F5E0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F5E0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FA28);
      qword_1EE18FA28 = &unk_1F5CAF588;
      __cxa_guard_release(&qword_1EE18F5E0);
    }
  }

  if ((byte_1EE18F349 & 1) == 0)
  {
    v1 = qword_1EE18F398;
    if (qword_1EE18F398 || (v1 = re::allocInfo_RigComponentConstraint(a1), qword_1EE18F398 = v1, re::initInfo_RigComponentConstraint(v1, v2), (byte_1EE18F349 & 1) == 0))
    {
      byte_1EE18F349 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FA28, 0);
      qword_1EE18FA38 = 0x2800000003;
      dword_1EE18FA40 = v3;
      word_1EE18FA44 = 0;
      *&xmmword_1EE18FA48 = 0;
      *(&xmmword_1EE18FA48 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FA58 = v1;
      qword_1EE18FA60 = 0;
      qword_1EE18FA28 = &unk_1F5CAF588;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FA28, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FA48 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigBasicConstraint>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F5E8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F5E8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FA68);
      qword_1EE18FA68 = &unk_1F5CAF620;
      __cxa_guard_release(&qword_1EE18F5E8);
    }
  }

  if ((byte_1EE18F34A & 1) == 0)
  {
    v1 = qword_1EE18F380;
    if (qword_1EE18F380 || (v1 = re::allocInfo_RigBasicConstraint(a1), qword_1EE18F380 = v1, re::initInfo_RigBasicConstraint(v1, v2), (byte_1EE18F34A & 1) == 0))
    {
      byte_1EE18F34A = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FA68, 0);
      qword_1EE18FA78 = 0x2800000003;
      dword_1EE18FA80 = v3;
      word_1EE18FA84 = 0;
      *&xmmword_1EE18FA88 = 0;
      *(&xmmword_1EE18FA88 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FA98 = v1;
      qword_1EE18FAA0 = 0;
      qword_1EE18FA68 = &unk_1F5CAF620;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FA68, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FA88 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigAimConstraint>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F5F0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F5F0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FAA8);
      qword_1EE18FAA8 = &unk_1F5CAF6B8;
      __cxa_guard_release(&qword_1EE18F5F0);
    }
  }

  if ((byte_1EE18F34B & 1) == 0)
  {
    v1 = qword_1EE18F3C0;
    if (qword_1EE18F3C0 || (v1 = re::allocInfo_RigAimConstraint(a1), qword_1EE18F3C0 = v1, re::initInfo_RigAimConstraint(v1, v2), (byte_1EE18F34B & 1) == 0))
    {
      byte_1EE18F34B = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FAA8, 0);
      qword_1EE18FAB8 = 0x2800000003;
      dword_1EE18FAC0 = v3;
      word_1EE18FAC4 = 0;
      *&xmmword_1EE18FAC8 = 0;
      *(&xmmword_1EE18FAC8 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FAD8 = v1;
      qword_1EE18FAE0 = 0;
      qword_1EE18FAA8 = &unk_1F5CAF6B8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FAA8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FAC8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigNodeChannel>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F5F8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F5F8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FAE8);
      qword_1EE18FAE8 = &unk_1F5CAF750;
      __cxa_guard_release(&qword_1EE18F5F8);
    }
  }

  if ((byte_1EE18F34C & 1) == 0)
  {
    v1 = qword_1EE18F3E8;
    if (qword_1EE18F3E8 || (v1 = re::allocInfo_RigNodeChannel(a1), qword_1EE18F3E8 = v1, re::initInfo_RigNodeChannel(v1, v2), (byte_1EE18F34C & 1) == 0))
    {
      byte_1EE18F34C = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FAE8, 0);
      qword_1EE18FAF8 = 0x2800000003;
      dword_1EE18FB00 = v3;
      word_1EE18FB04 = 0;
      *&xmmword_1EE18FB08 = 0;
      *(&xmmword_1EE18FB08 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FB18 = v1;
      qword_1EE18FB20 = 0;
      qword_1EE18FAE8 = &unk_1F5CAF750;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FAE8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FB08 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigNodeConstant>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F600, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F600);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FB28);
      qword_1EE18FB28 = &unk_1F5CAF7E8;
      __cxa_guard_release(&qword_1EE18F600);
    }
  }

  if ((byte_1EE18F34D & 1) == 0)
  {
    v1 = qword_1EE18F400;
    if (qword_1EE18F400 || (v1 = re::allocInfo_RigNodeConstant(a1), qword_1EE18F400 = v1, re::initInfo_RigNodeConstant(v1, v2), (byte_1EE18F34D & 1) == 0))
    {
      byte_1EE18F34D = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FB28, 0);
      qword_1EE18FB38 = 0x2800000003;
      dword_1EE18FB40 = v3;
      word_1EE18FB44 = 0;
      *&xmmword_1EE18FB48 = 0;
      *(&xmmword_1EE18FB48 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FB58 = v1;
      qword_1EE18FB60 = 0;
      qword_1EE18FB28 = &unk_1F5CAF7E8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FB28, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FB48 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<unsigned long [8]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18F608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18F608))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&algn_1EE190088[24]);
    __cxa_guard_release(&qword_1EE18F608);
  }

  if ((byte_1EE18F34E & 1) == 0)
  {
    byte_1EE18F34E = 1;
    v2 = re::introspect_size_t(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&algn_1EE190088[24], v2, 8);
    re::IntrospectionRegistry::add(&algn_1EE190088[24], v3);
    re::getPrettyTypeName(&algn_1EE190088[24], &v7);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE1900C0 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigNodeTemporaryValue>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F610, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F610);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FB68);
      qword_1EE18FB68 = &unk_1F5CAF880;
      __cxa_guard_release(&qword_1EE18F610);
    }
  }

  if ((byte_1EE18F34F & 1) == 0)
  {
    v1 = qword_1EE18F418;
    if (qword_1EE18F418 || (v1 = re::allocInfo_RigNodeTemporaryValue(a1), qword_1EE18F418 = v1, re::initInfo_RigNodeTemporaryValue(v1, v2), (byte_1EE18F34F & 1) == 0))
    {
      byte_1EE18F34F = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FB68, 0);
      qword_1EE18FB78 = 0x2800000003;
      dword_1EE18FB80 = v3;
      word_1EE18FB84 = 0;
      *&xmmword_1EE18FB88 = 0;
      *(&xmmword_1EE18FB88 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FB98 = v1;
      qword_1EE18FBA0 = 0;
      qword_1EE18FB68 = &unk_1F5CAF880;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FB68, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FB88 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigExpressionParameter>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F618, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F618);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FBA8);
      qword_1EE18FBA8 = &unk_1F5CAF918;
      __cxa_guard_release(&qword_1EE18F618);
    }
  }

  if ((byte_1EE18F350 & 1) == 0)
  {
    v1 = qword_1EE18F440;
    if (qword_1EE18F440 || (v1 = re::allocInfo_RigExpressionParameter(a1), qword_1EE18F440 = v1, re::initInfo_RigExpressionParameter(v1, v2), (byte_1EE18F350 & 1) == 0))
    {
      byte_1EE18F350 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FBA8, 0);
      qword_1EE18FBB8 = 0x2800000003;
      dword_1EE18FBC0 = v3;
      word_1EE18FBC4 = 0;
      *&xmmword_1EE18FBC8 = 0;
      *(&xmmword_1EE18FBC8 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FBD8 = v1;
      qword_1EE18FBE0 = 0;
      qword_1EE18FBA8 = &unk_1F5CAF918;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FBA8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FBC8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigExpression>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F620, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F620);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FBE8);
      qword_1EE18FBE8 = &unk_1F5CAF9B0;
      __cxa_guard_release(&qword_1EE18F620);
    }
  }

  if ((byte_1EE18F351 & 1) == 0)
  {
    v1 = qword_1EE18F458;
    if (qword_1EE18F458 || (v1 = re::allocInfo_RigExpression(a1), qword_1EE18F458 = v1, re::initInfo_RigExpression(v1, v2), (byte_1EE18F351 & 1) == 0))
    {
      byte_1EE18F351 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FBE8, 0);
      qword_1EE18FBF8 = 0x2800000003;
      dword_1EE18FC00 = v3;
      word_1EE18FC04 = 0;
      *&xmmword_1EE18FC08 = 0;
      *(&xmmword_1EE18FC08 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FC18 = v1;
      qword_1EE18FC20 = 0;
      qword_1EE18FBE8 = &unk_1F5CAF9B0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FBE8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FC08 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigTwoBoneIKHandles>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F628, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F628);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FC28);
      qword_1EE18FC28 = &unk_1F5CAFA48;
      __cxa_guard_release(&qword_1EE18F628);
    }
  }

  if ((byte_1EE18F352 & 1) == 0)
  {
    v1 = qword_1EE18F470;
    if (qword_1EE18F470 || (v1 = re::allocInfo_RigTwoBoneIKHandles(a1), qword_1EE18F470 = v1, re::initInfo_RigTwoBoneIKHandles(v1, v2), (byte_1EE18F352 & 1) == 0))
    {
      byte_1EE18F352 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FC28, 0);
      qword_1EE18FC38 = 0x2800000003;
      dword_1EE18FC40 = v3;
      word_1EE18FC44 = 0;
      *&xmmword_1EE18FC48 = 0;
      *(&xmmword_1EE18FC48 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FC58 = v1;
      qword_1EE18FC60 = 0;
      qword_1EE18FC28 = &unk_1F5CAFA48;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FC28, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FC48 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigSingleChainIKHandles>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F630, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F630);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FC68);
      qword_1EE18FC68 = &unk_1F5CAFAE0;
      __cxa_guard_release(&qword_1EE18F630);
    }
  }

  if ((byte_1EE18F353 & 1) == 0)
  {
    v1 = qword_1EE18F488;
    if (qword_1EE18F488 || (v1 = re::allocInfo_RigSingleChainIKHandles(a1), qword_1EE18F488 = v1, re::initInfo_RigSingleChainIKHandles(v1, v2), (byte_1EE18F353 & 1) == 0))
    {
      byte_1EE18F353 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FC68, 0);
      qword_1EE18FC78 = 0x2800000003;
      dword_1EE18FC80 = v3;
      word_1EE18FC84 = 0;
      *&xmmword_1EE18FC88 = 0;
      *(&xmmword_1EE18FC88 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FC98 = v1;
      qword_1EE18FCA0 = 0;
      qword_1EE18FC68 = &unk_1F5CAFAE0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FC68, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FC88 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigSplineIKHandle>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F638, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F638);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FCA8);
      qword_1EE18FCA8 = &unk_1F5CAFB78;
      __cxa_guard_release(&qword_1EE18F638);
    }
  }

  if ((byte_1EE18F354 & 1) == 0)
  {
    v1 = qword_1EE18F4D0;
    if (qword_1EE18F4D0 || (v1 = re::allocInfo_RigSplineIKHandle(a1), qword_1EE18F4D0 = v1, re::initInfo_RigSplineIKHandle(v1, v2), (byte_1EE18F354 & 1) == 0))
    {
      byte_1EE18F354 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FCA8, 0);
      qword_1EE18FCB8 = 0x2800000003;
      dword_1EE18FCC0 = v3;
      word_1EE18FCC4 = 0;
      *&xmmword_1EE18FCC8 = 0;
      *(&xmmword_1EE18FCC8 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FCD8 = v1;
      qword_1EE18FCE0 = 0;
      qword_1EE18FCA8 = &unk_1F5CAFB78;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FCA8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FCC8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigTransform>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F640, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F640);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FCE8);
      qword_1EE18FCE8 = &unk_1F5CAFC10;
      __cxa_guard_release(&qword_1EE18F640);
    }
  }

  if ((byte_1EE18F355 & 1) == 0)
  {
    v1 = qword_1EE18F528;
    if (qword_1EE18F528 || (v1 = re::allocInfo_RigTransform(a1), qword_1EE18F528 = v1, re::initInfo_RigTransform(v1, v2), (byte_1EE18F355 & 1) == 0))
    {
      byte_1EE18F355 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FCE8, 0);
      qword_1EE18FCF8 = 0x2800000003;
      dword_1EE18FD00 = v3;
      word_1EE18FD04 = 0;
      *&xmmword_1EE18FD08 = 0;
      *(&xmmword_1EE18FD08 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FD18 = v1;
      qword_1EE18FD20 = 0;
      qword_1EE18FCE8 = &unk_1F5CAFC10;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FCE8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FD08 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigJoint>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F648, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F648);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FD28);
      qword_1EE18FD28 = &unk_1F5CAFCA8;
      __cxa_guard_release(&qword_1EE18F648);
    }
  }

  if ((byte_1EE18F356 & 1) == 0)
  {
    v1 = qword_1EE18F540;
    if (qword_1EE18F540 || (v1 = re::allocInfo_RigJoint(a1), qword_1EE18F540 = v1, re::initInfo_RigJoint(v1, v2), (byte_1EE18F356 & 1) == 0))
    {
      byte_1EE18F356 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FD28, 0);
      qword_1EE18FD38 = 0x2800000003;
      dword_1EE18FD40 = v3;
      word_1EE18FD44 = 0;
      *&xmmword_1EE18FD48 = 0;
      *(&xmmword_1EE18FD48 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FD58 = v1;
      qword_1EE18FD60 = 0;
      qword_1EE18FD28 = &unk_1F5CAFCA8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FD28, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FD48 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigNodeConstraint>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F650, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F650);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FD68);
      qword_1EE18FD68 = &unk_1F5CAFD40;
      __cxa_guard_release(&qword_1EE18F650);
    }
  }

  if ((byte_1EE18F357 & 1) == 0)
  {
    v1 = qword_1EE18F558;
    if (qword_1EE18F558 || (v1 = re::allocInfo_RigNodeConstraint(a1), qword_1EE18F558 = v1, re::initInfo_RigNodeConstraint(v1, v2), (byte_1EE18F357 & 1) == 0))
    {
      byte_1EE18F357 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FD68, 0);
      qword_1EE18FD78 = 0x2800000003;
      dword_1EE18FD80 = v3;
      word_1EE18FD84 = 0;
      *&xmmword_1EE18FD88 = 0;
      *(&xmmword_1EE18FD88 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FD98 = v1;
      qword_1EE18FDA0 = 0;
      qword_1EE18FD68 = &unk_1F5CAFD40;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FD68, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FD88 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigIKHandles>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F658, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F658);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FDA8);
      qword_1EE18FDA8 = &unk_1F5CAFDD8;
      __cxa_guard_release(&qword_1EE18F658);
    }
  }

  if ((byte_1EE18F358 & 1) == 0)
  {
    v1 = qword_1EE18F510;
    if (qword_1EE18F510 || (v1 = re::allocInfo_RigIKHandles(a1), qword_1EE18F510 = v1, re::initInfo_RigIKHandles(v1, v2), (byte_1EE18F358 & 1) == 0))
    {
      byte_1EE18F358 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FDA8, 0);
      qword_1EE18FDB8 = 0x2800000003;
      dword_1EE18FDC0 = v3;
      word_1EE18FDC4 = 0;
      *&xmmword_1EE18FDC8 = 0;
      *(&xmmword_1EE18FDC8 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FDD8 = v1;
      qword_1EE18FDE0 = 0;
      qword_1EE18FDA8 = &unk_1F5CAFDD8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FDA8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FDC8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigNode>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F660, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F660);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FDE8);
      qword_1EE18FDE8 = &unk_1F5CAFE70;
      __cxa_guard_release(&qword_1EE18F660);
    }
  }

  if ((byte_1EE18F359 & 1) == 0)
  {
    v1 = qword_1EE18F580;
    if (qword_1EE18F580 || (v1 = re::allocInfo_RigNode(a1), qword_1EE18F580 = v1, re::initInfo_RigNode(v1, v2), (byte_1EE18F359 & 1) == 0))
    {
      byte_1EE18F359 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FDE8, 0);
      qword_1EE18FDF8 = 0x2800000003;
      dword_1EE18FE00 = v3;
      word_1EE18FE04 = 0;
      *&xmmword_1EE18FE08 = 0;
      *(&xmmword_1EE18FE08 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FE18 = v1;
      qword_1EE18FE20 = 0;
      qword_1EE18FDE8 = &unk_1F5CAFE70;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FDE8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FE08 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigPoseNode>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F668, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F668);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FE28);
      qword_1EE18FE28 = &unk_1F5CAFF08;
      __cxa_guard_release(&qword_1EE18F668);
    }
  }

  if ((byte_1EE18F35A & 1) == 0)
  {
    v1 = qword_1EE18F598;
    if (qword_1EE18F598 || (v1 = re::allocInfo_RigPoseNode(a1), qword_1EE18F598 = v1, re::initInfo_RigPoseNode(v1, v2), (byte_1EE18F35A & 1) == 0))
    {
      byte_1EE18F35A = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FE28, 0);
      qword_1EE18FE38 = 0x2800000003;
      dword_1EE18FE40 = v3;
      word_1EE18FE44 = 0;
      *&xmmword_1EE18FE48 = 0;
      *(&xmmword_1EE18FE48 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FE58 = v1;
      qword_1EE18FE60 = 0;
      qword_1EE18FE28 = &unk_1F5CAFF08;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FE28, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FE48 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigPose>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18F670, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18F670);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18FE68);
      qword_1EE18FE68 = &unk_1F5CAFFA0;
      __cxa_guard_release(&qword_1EE18F670);
    }
  }

  if ((byte_1EE18F35B & 1) == 0)
  {
    v1 = qword_1EE18F5B0;
    if (qword_1EE18F5B0 || (v1 = re::allocInfo_RigPose(a1), qword_1EE18F5B0 = v1, re::initInfo_RigPose(v1, v2), (byte_1EE18F35B & 1) == 0))
    {
      byte_1EE18F35B = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18FE68, 0);
      qword_1EE18FE78 = 0x2800000003;
      dword_1EE18FE80 = v3;
      word_1EE18FE84 = 0;
      *&xmmword_1EE18FE88 = 0;
      *(&xmmword_1EE18FE88 + 1) = 0xFFFFFFFFLL;
      qword_1EE18FE98 = v1;
      qword_1EE18FEA0 = 0;
      qword_1EE18FE68 = &unk_1F5CAFFA0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18FE68, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18FE88 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::RigDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 264) = 0;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0;
  *(a3 + 344) = 0;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0;
  *(a3 + 424) = 0;
  *(a3 + 392) = 0u;
  *(a3 + 408) = 0u;
  *(a3 + 464) = 0;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 504) = 0;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 0u;
  *(a3 + 1136) = 0;
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 544) = 0;
  *(a3 + 512) = 0u;
  *(a3 + 528) = 0u;
  *(a3 + 648) = 0;
  *(a3 + 616) = 0u;
  *(a3 + 632) = 0u;
  *(a3 + 584) = 0u;
  *(a3 + 600) = 0u;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 0u;
  *(a3 + 688) = 0;
  *(a3 + 656) = 0u;
  *(a3 + 672) = 0u;
  *(a3 + 728) = 0;
  *(a3 + 696) = 0u;
  *(a3 + 712) = 0u;
  *(a3 + 768) = 0;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 808) = 0;
  *(a3 + 776) = 0u;
  *(a3 + 792) = 0u;
  *(a3 + 848) = 0;
  *(a3 + 816) = 0u;
  *(a3 + 832) = 0u;
  *(a3 + 888) = 0;
  *(a3 + 856) = 0u;
  *(a3 + 872) = 0u;
  *(a3 + 928) = 0;
  *(a3 + 896) = 0u;
  *(a3 + 912) = 0u;
  *(a3 + 968) = 0;
  *(a3 + 936) = 0u;
  *(a3 + 952) = 0u;
  *(a3 + 1008) = 0;
  *(a3 + 976) = 0u;
  *(a3 + 992) = 0u;
  *(a3 + 1048) = 0;
  *(a3 + 1016) = 0u;
  *(a3 + 1032) = 0u;
  *(a3 + 1088) = 0;
  *(a3 + 1072) = 0u;
  *(a3 + 1056) = 0u;
  *(a3 + 1128) = 0;
  *(a3 + 1096) = 0u;
  *(a3 + 1112) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RigDefinition>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 344) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 424) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 1136) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 648) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 888) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 968) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1128) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  return result;
}

void *re::FixedArray<unsigned long>::init<unsigned long const&>(void *result, uint64_t a2, unint64_t a3, uint64_t *a4)
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
    goto LABEL_10;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 8 * a3, 8);
  v6[2] = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = a3 - 1;
  if (a3 != 1)
  {
    v9 = *a4;
    do
    {
      *result++ = v9;
      --v8;
    }

    while (v8);
  }

  *result = *a4;
  return result;
}

uint64_t re::FixedArray<unsigned long>::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 8 * a2;
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<unsigned long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<unsigned long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<unsigned long>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<unsigned long>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<unsigned long>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<unsigned long>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<unsigned long>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<unsigned long>::add(this, &v10);
  v8 = (*(this + 4) + 8 * *(this + 2) - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<unsigned long>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

void re::DynamicArray<unsigned long>::resize(uint64_t a1, unint64_t a2)
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
      re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 8 * v4), 8 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<unsigned long>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 8 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 8;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 8 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<float>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<float>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<float>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<float>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<int>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<float>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<int>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<float>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<float>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<float>::add(this, &v10);
  v8 = (*(this + 4) + 4 * *(this + 2) - 4);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<float>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 4 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 4 * a3;
}

void re::DynamicArray<float>::resize(uint64_t a1, unint64_t a2)
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
      re::DynamicArray<int>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 4 * v4), 4 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<int>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<int>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<float>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 4 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

re::IntrospectionCStyleArray *re::IntrospectionCStyleArray::IntrospectionCStyleArray(re::IntrospectionCStyleArray *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CB0038;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *(this + 16) = 0;
  return this;
}

{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CB0038;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *(this + 16) = 0;
  return this;
}

void re::IntrospectionCStyleArray::~IntrospectionCStyleArray(re::IntrospectionCStyleArray *this)
{
  *this = &unk_1F5CB0038;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB0038;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CB0038;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

uint64_t re::IntrospectionCStyleArray::childInfo(re::IntrospectionCStyleArray *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 454, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKJoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigSplineIKJoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigSplineIKJoint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKJoint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKJoint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigSplineIKJoint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigSplineIKJoint>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = *(a4 + 32) + 80 * v9;
  *v15 = -1;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 80 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::RigSplineIKJoint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}

void *re::DynamicArray<re::RigSplineIKJoint>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 16);
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
            memcpy(v7, v5[4], 80 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::RigSplineIKJoint>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      memset(v8 + 8, 0, 56);
      v5 = 80 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = v3[4] + 80 * v4;
        v7 = v5 / 0x50uLL + 1;
        do
        {
          *v6 = -1;
          *(v6 + 24) = v8[1];
          *(v6 + 40) = v8[2];
          *(v6 + 56) = v8[3];
          *(v6 + 72) = 0;
          *(v6 + 8) = v8[0];
          v6 += 80;
          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigSplineIKJoint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigSplineIKJoint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 80 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 80;
        v11 -= 80;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 80 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 80 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigSplineIKControlPoint>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigSplineIKControlPoint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = *(a4 + 32) + 96 * v9;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *v15 = 0;
  *(v15 + 24) = 1;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 1;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 72) = 0;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 96 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::RigSplineIKControlPoint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

uint64_t re::DynamicArray<re::RigSplineIKControlPoint>::deinit(uint64_t a1)
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
        v5 = 96 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 96;
          v5 -= 96;
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

void *re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 16);
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
        v10 = 0;
        v11 = v8 + 96 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v13[9] = 0;
          v13[6] = 0;
          v13[7] = 0;
          v13[5] = 0;
          *(v13 + 16) = 0;
          v17 = (v8 + v10 + 40);
          v18 = *(v8 + v10 + 48);
          v13[5] = *v17;
          *v17 = 0;
          v13[6] = v18;
          *(v12 + 48) = 0;
          v19 = v7[v10 / 8 + 7];
          v13[7] = *(v8 + v10 + 56);
          *(v12 + 56) = v19;
          v20 = v7[v10 / 8 + 9];
          v13[9] = *(v8 + v10 + 72);
          *(v12 + 72) = v20;
          *(v12 + 64) = *(v8 + v10 + 64) + 1;
          *(v13 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          *(v13 + 5) = *(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v17);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 96;
        }

        while (v12 + 96 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RigSplineIKControlPoint>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 96 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 96;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 96 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        *(v7 + 80) = 0;
        *(v7 + 88) = 0;
        *(v7 + 72) = 0;
        v6 += 96;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigSplineIKControlPoint>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigSplineIKControlPoint>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::RigSplineIKControlPoint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 96 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 96;
        v11 -= 96;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::RigSplineIKControlPoint>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 96 * v2;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v3 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v3);
      v3 += 96;
      v4 -= 96;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 96 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 96 * v5;
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
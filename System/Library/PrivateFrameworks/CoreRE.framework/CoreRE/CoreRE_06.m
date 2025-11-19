void re::DynamicArray<re::RigGraphInputValue>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 96 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::StringID::destroyString((v10 + 80));
      re::StringID::destroyString((v10 + 64));
      re::StringID::destroyString((v10 + 48));
      re::StringID::destroyString((v10 + 32));
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 96;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigGraphInputValue>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 96 * v4 + 88;
      do
      {
        v7 = (*(a1 + 32) + v6);
        re::StringID::invalid((v7 - 11));
        re::StringID::invalid((v7 - 9));
        re::StringID::invalid((v7 - 7));
        re::StringID::invalid((v7 - 5));
        re::StringID::invalid((v7 - 3));
        *(v7 - 1) = 0;
        *v7 = &str_67;
        v6 += 96;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigGraphInputValue>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 96 * v8;
      do
      {
        re::StringID::destroyString((v10 + v9 + 80));
        re::StringID::destroyString((v10 + v9 + 64));
        re::StringID::destroyString((v10 + v9 + 48));
        re::StringID::destroyString((v10 + v9 + 32));
        re::StringID::destroyString((v10 + v9 + 16));
        re::StringID::destroyString((v10 + v9));
        v9 += 96;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::RigGraphInputValue>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigGraphInputValue>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RigGraphInputValue>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 96 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 96;
        v15 -= 96;
      }

      while (v15);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

float re::bounceEase(re *this, float a2, float a3)
{
  v3 = a3;
  if (a3 <= 1.0 || fabsf(a3 + -1.0) < (((fabsf(a3) + 1.0) + 1.0) * 0.00001))
  {
    v3 = 1.01;
  }

  v4 = fmaxf(this, 0.0);
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (a2 >= 0.0)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = powf(v3, v4);
  v7 = v5 * (((1.0 - v6) / (1.0 - v3)) + (v6 * 0.5));
  v8 = logf(1.0 - (v7 * (1.0 - v3)));
  v9 = floorf(v8 / logf(v3));
  v10 = (1.0 - powf(v3, v9)) / (1.0 - v3);
  v11 = powf(v3, v9 + 1.0);
  v12 = (v7 - ((v10 + ((1.0 - v11) / (1.0 - v3))) * 0.5)) / (((1.0 - v11) / (1.0 - v3)) - ((v10 + ((1.0 - v11) / (1.0 - v3))) * 0.5));
  return powf(1.0 / v3, v4 - v9) * (1.0 - (v12 * v12));
}

float re::internal::evaluateCubicBezierEase<float>(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v4 = *&a1 * 3.0;
  v5 = -((*&a1 * 3.0) - ((*&a2 - *&a1) * 3.0));
  v6 = (1.0 - (*&a1 * 3.0)) - v5;
  v7 = 8;
  v8 = a3;
  while (1)
  {
    v9 = v8 * (v4 + (((v6 * v8) - ((*&a1 * 3.0) - ((*&a2 - *&a1) * 3.0))) * v8));
    if (vabds_f32(v9, a3) < a4)
    {
      break;
    }

    v10 = v4 + (((v5 + v5) + ((v6 * 3.0) * v8)) * v8);
    if (fabsf(v10) >= 0.000001)
    {
      v8 = v8 - ((v9 - a3) / v10);
      if (--v7)
      {
        continue;
      }
    }

    v8 = 0.0;
    if (a3 >= 0.0)
    {
      v8 = 1.0;
      if (a3 <= 1.0)
      {
        v11 = 0.0;
        v12 = 1.0;
        v13 = -1025;
        v8 = a3;
        do
        {
          if (__CFADD__(v13++, 1))
          {
            break;
          }

          v15 = v8 * (v4 + (((v6 * v8) - ((*&a1 * 3.0) - ((*&a2 - *&a1) * 3.0))) * v8));
          if (vabds_f32(v15, a3) < a4)
          {
            break;
          }

          if ((v15 - a3) >= 0.0)
          {
            v12 = v8;
          }

          else
          {
            v11 = v8;
          }

          v8 = v11 + (v12 - v11) * 0.5;
        }

        while (v11 < v12);
      }
    }

    break;
  }

  v16 = -((*(&a1 + 1) * 3.0) - ((*(&a2 + 1) - *(&a1 + 1)) * 3.0));
  return v8 * ((*(&a1 + 1) * 3.0) + ((v16 + (((1.0 - (*(&a1 + 1) * 3.0)) - v16) * v8)) * v8));
}

double re::internal::evaluateCubicBezierEase<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = *&a1 * 3.0;
  v7 = -(*&a1 * 3.0 - (*&a3 - *&a1) * 3.0);
  v8 = 1.0 - *&a1 * 3.0 - v7;
  v9 = 8;
  v10 = a5;
  while (1)
  {
    v11 = v10 * (v6 + (v8 * v10 - (*&a1 * 3.0 - (*&a3 - *&a1) * 3.0)) * v10);
    if (vabdd_f64(v11, a5) < a6)
    {
      break;
    }

    v12 = v6 + (v7 + v7 + v8 * 3.0 * v10) * v10;
    if (fabs(v12) >= 0.000001)
    {
      v10 = v10 - (v11 - a5) / v12;
      if (--v9)
      {
        continue;
      }
    }

    v10 = 0.0;
    if (a5 >= 0.0)
    {
      v10 = 1.0;
      if (a5 <= 1.0)
      {
        v13 = 0.0;
        v14 = 1.0;
        v15 = -1025;
        v10 = a5;
        do
        {
          if (__CFADD__(v15++, 1))
          {
            break;
          }

          v17 = v10 * (v6 + (v8 * v10 - (*&a1 * 3.0 - (*&a3 - *&a1) * 3.0)) * v10);
          if (vabdd_f64(v17, a5) < a6)
          {
            break;
          }

          if (v17 - a5 >= 0.0)
          {
            v14 = v10;
          }

          else
          {
            v13 = v10;
          }

          v10 = v13 + (v14 - v13) * 0.5;
        }

        while (v13 < v14);
      }
    }

    break;
  }

  v18 = -(*&a2 * 3.0 - (*&a4 - *&a2) * 3.0);
  return v10 * (*&a2 * 3.0 + (v18 + (1.0 - *&a2 * 3.0 - v18) * v10) * v10);
}

void re::EasingFunctionBase::evaluate(re::EasingFunctionBase *this, __n128 a2, uint64_t a3)
{
  v3 = *(this + 3);
  if (v3 == 2)
  {
    if (a2.n128_f32[0] <= 0.5)
    {
      (*(*this + 40))(this, a2.n128_f32[0] + a2.n128_f32[0]);
    }

    else
    {
      (*(*this + 40))(this, (1.0 - a2.n128_f32[0]) + (1.0 - a2.n128_f32[0]));
    }
  }

  else if (v3 == 1)
  {
    (*(*this + 40))(this, 1.0 - a2.n128_f32[0]);
  }

  else if (v3)
  {
    re::internal::assertLog(4, a3, "assertion failure: '%s' (%s:line %i) Invalid easing mode.", "!Unreachable code", "evaluate", 224);
    _os_crash();
    __break(1u);
  }

  else
  {
    v4 = *(*this + 40);

    v4(a2);
  }
}

void re::RigGraphNode::inputType(re::RigGraphNode *this@<X0>, const re::RigEnvironment *a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 2) <= a3)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(*(this + 4) + 40 * a3 + 16);
  if (*(this + 17) <= v5)
  {
    goto LABEL_9;
  }

  re::RigEnvironment::lookupRigDataType(a2, (*(this + 19) + 16 * v5), &v7);
  *a4 = BYTE8(v7);
  re::StringID::StringID((a4 + 8), &v8);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray((a4 + 24), &v9);
  if (v7 == 1)
  {
    v6 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v9);
    if (v8)
    {
      if (v8)
      {
      }
    }
  }
}

void re::RigGraphNode::inputValue(re::RigGraphNode *this@<X0>, const re::RigEnvironment *a2@<X1>, re::EvaluationTree *a3@<X2>, re::Allocator *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  re::RigGraphNode::inputType(this, a2, a5, v11);
  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 40) = 0;
  *(a6 + 48) = &str_67;
  *(a6 + 88) = 0;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  *(a6 + 56) = 0;
  *(a6 + 80) = 0;
  *(a6 + 96) = 0;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = -1;
  *(a6 + 184) = 0;
  *(a6 + 216) = 0;
  *(a6 + 224) = 0;
  *(a6 + 272) = 0;
  *(a6 + 264) = 0;
  *(a6 + 232) = &str_67;
  *(a6 + 240) = 0;
  *(a6 + 248) = 0;
  *(a6 + 256) = 0;
  re::RigDataValue::init(a6, a4, a2, v11, a3);
  v10 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v13);
  if (v12)
  {
    if (v12)
    {
    }
  }
}

uint64_t re::RigGraphSystem::buildFromDefinition@<X0>(uint64_t a1@<X0>, _anonymous_namespace_ *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v232 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 192) = 0;
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
  v7 = *(a2 + 14);
  v208 = v7;
  v201 = 9 * v7;
  if (v7)
  {
    if (v7 >= 0x1C71C71C71C71C8)
    {
LABEL_303:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 144, v208);
      _os_crash();
      __break(1u);
LABEL_304:
      re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v8 = (*(*a1 + 32))(a1, 144 * v7, 8);
    if (!v8)
    {
      goto LABEL_304;
    }

    v10 = v8;
    v11 = v208 - 1;
    if (v208 != 1)
    {
      v10 = v8;
      do
      {
        *v10 = 0;
        *(v10 + 8) = 0;
        *(v10 + 32) = 0uLL;
        *(v10 + 48) = 0uLL;
        *(v10 + 16) = 0uLL;
        *(v10 + 52) = 0x7FFFFFFF;
        *(v10 + 72) = 0;
        *(v10 + 80) = 0;
        *(v10 + 64) = 0;
        *(v10 + 88) = 0;
        *(v10 + 136) = 0;
        *(v10 + 96) = 0uLL;
        *(v10 + 112) = 0uLL;
        *(v10 + 128) = 0;
        v10 += 144;
        --v11;
      }

      while (v11);
    }

    v209 = v8;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 52) = 0x7FFFFFFF;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    *(v10 + 64) = 0;
    *(v10 + 88) = 0;
    *(v10 + 136) = 0;
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
    *(v10 + 128) = 0;
    v12 = *(v5 + 14);
    v215 = 0;
    v213 = 0u;
    v214 = 0u;
    v216 = 0x7FFFFFFFLL;
    v212 = 0;
    if (v12)
    {
      v13 = 0;
      while (1)
      {
        re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v213, (*(v5 + 16) + 32 * v13), &v212);
        *buf = v212;
        memset(v222, 0, sizeof(v222));
        *&buf[8] = 0;
        DWORD1(v222[2]) = 0x7FFFFFFF;
        *&v223[16] = 0;
        LODWORD(v224) = 0;
        v225 = 0u;
        v226 = 0u;
        v227 = 0;
        v228 = 0;
        *v223 = a1;
        re::DynamicArray<float *>::setCapacity(v223, 0);
        LODWORD(v224) = v224 + 1;
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v222, a1, 3);
        v15 = v212;
        if (v208 <= v212)
        {
          goto LABEL_296;
        }

        v16 = v209 + 144 * v212;
        *v16 = *buf;
        *(v16 + 2) = *&buf[8];
        v17 = *(v16 + 2);
        v18 = *&v222[0];
        if (v17)
        {
          v19 = v17 == *&v222[0];
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          *(v16 + 2) = *&v222[0];
          *&v222[0] = v17;
          v20 = *&v222[1];
          v21 = *(v16 + 24);
          *(v16 + 3) = *(&v222[0] + 1);
          *(v16 + 4) = v20;
          *(v222 + 8) = v21;
          v22 = *(v16 + 40);
          *(v16 + 40) = *(&v222[1] + 8);
          *(&v222[1] + 8) = v22;
        }

        else
        {
          if (*(v16 + 11))
          {
            v23 = *(v16 + 10);
            if (v23)
            {
              memset_pattern16(*(v16 + 3), &unk_1E304C660, 4 * v23);
            }

            v24 = *(v16 + 12);
            if (v24)
            {
              v25 = 8;
              do
              {
                v26 = *(v16 + 4);
                v27 = *(v26 + v25);
                if (v27 < 0)
                {
                  *(v26 + v25) = v27 & 0x7FFFFFFF;
                }

                v25 += 24;
                --v24;
              }

              while (v24);
            }

            *(v16 + 11) = 0;
            *(v16 + 12) = 0;
            v28 = *(v16 + 14) + 1;
            *(v16 + 13) = 0x7FFFFFFF;
            *(v16 + 14) = v28;
          }

          if (v18)
          {
            v14 = HIDWORD(v222[1]);
            if (*(v16 + 10) < HIDWORD(v222[1]))
            {
              re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::setCapacity((v16 + 16), HIDWORD(v222[1]));
            }

            v29 = LODWORD(v222[2]);
            if (LODWORD(v222[2]))
            {
              v30 = (*&v222[1] + 16);
              do
              {
                if ((*(v30 - 1) & 0x80000000) != 0)
                {
                  v31 = *(v30 - 2);
                  v32 = *(v16 + 10);
                  v33 = v31 % v32;
                  v4 = *(v16 + 13);
                  if (v4 == 0x7FFFFFFF)
                  {
                    v4 = *(v16 + 12);
                    v34 = v4;
                    if (v4 == v32)
                    {
                      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::setCapacity((v16 + 16), 2 * *(v16 + 11));
                      v33 = v31 % *(v16 + 10);
                      v34 = *(v16 + 12);
                    }

                    *(v16 + 12) = v34 + 1;
                    v35 = *(v16 + 4);
                    v36 = *(v35 + 24 * v4 + 8);
                  }

                  else
                  {
                    v35 = *(v16 + 4);
                    v36 = *(v35 + 24 * v4 + 8);
                    *(v16 + 13) = v36 & 0x7FFFFFFF;
                  }

                  *(v35 + 24 * v4 + 8) = v36 | 0x80000000;
                  *(*(v16 + 4) + 24 * v4 + 8) = *(*(v16 + 4) + 24 * v4 + 8) & 0x80000000 | *(*(v16 + 3) + 4 * v33);
                  *(*(v16 + 4) + 24 * v4) = v31;
                  *(*(v16 + 4) + 24 * v4 + 16) = *v30;
                  *(*(v16 + 3) + 4 * v33) = v4;
                  ++*(v16 + 11);
                  v5 = a2;
                }

                v30 += 3;
                --v29;
              }

              while (v29);
            }

            ++*(v16 + 14);
          }
        }

        v3 = *(v16 + 8);
        if (v3)
        {
          v37 = *v223 == 0;
        }

        else
        {
          v37 = 1;
        }

        if (!v37 && v3 != *v223)
        {
          goto LABEL_299;
        }

        *(v16 + 8) = *v223;
        *v223 = v3;
        v39 = *(v16 + 72);
        *(v16 + 72) = *&v223[8];
        *&v223[8] = v39;
        v40 = *(v16 + 12);
        *(v16 + 12) = v225;
        *&v225 = v40;
        v41 = v224;
        LODWORD(v224) = v224 + 1;
        ++*(v16 + 22);
        v42 = *(v16 + 13);
        if (v42)
        {
          if (*(&v225 + 1) && v42 != *(&v225 + 1))
          {
            break;
          }
        }

        *(v16 + 13) = *(&v225 + 1);
        *(&v225 + 1) = v42;
        v43 = *(v16 + 7);
        *(v16 + 7) = v226;
        v226 = v43;
        v44 = *(v16 + 17);
        *(v16 + 17) = v228;
        v228 = v44;
        v4 = v227++;
        ++*(v16 + 32);
        if (v42)
        {
          if (v44)
          {
            (*(*v42 + 40))(v42);
          }

          v228 = 0;
          v226 = 0uLL;
          *(&v225 + 1) = 0;
          v227 = v4 + 2;
        }

        if (v3)
        {
          if (v40)
          {
            (*(*v3 + 40))(v3, v40);
          }

          *&v225 = 0;
          memset(v223, 0, sizeof(v223));
          LODWORD(v224) = v41 + 2;
        }

        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v222);
        v13 = v212 + 1;
        v212 = v13;
        if (v13 >= *(v5 + 14))
        {
          goto LABEL_61;
        }
      }

LABEL_300:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash();
      __break(1u);
LABEL_301:
      *v218 = 0;
      *v223 = 0u;
      memset(v222, 0, sizeof(v222));
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v229[0]) = 136315906;
      *(v229 + 4) = "operator[]";
      WORD6(v229[0]) = 1024;
      *(v229 + 14) = 468;
      WORD1(v229[1]) = 2048;
      *(&v229[1] + 4) = v3;
      WORD6(v229[1]) = 2048;
      *(&v229[1] + 14) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_302:
      *v218 = 0;
      *v223 = 0u;
      memset(v222, 0, sizeof(v222));
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v229[0]) = 136315906;
      *(v229 + 4) = "operator[]";
      WORD6(v229[0]) = 1024;
      *(v229 + 14) = 468;
      WORD1(v229[1]) = 2048;
      *(&v229[1] + 4) = v4;
      WORD6(v229[1]) = 2048;
      *(&v229[1] + 14) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_303;
    }
  }

  else
  {
    v209 = 0;
    v215 = 0;
    v213 = 0uLL;
    v214 = 0uLL;
    v216 = 0x7FFFFFFFLL;
  }

LABEL_61:
  v15 = 0x94D049BB133111EBLL;
  v45 = *(v5 + 19);
  if (v45)
  {
    v46 = *(a2 + 21);
    v206 = &v46[20 * v45];
    do
    {
      v47 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v46 >> 31) ^ (*v46 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v46 >> 31) ^ (*v46 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v213, v46, v47 ^ (v47 >> 31), buf);
      v48 = *&buf[12];
      v49 = v214;
      v50 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v46[10] >> 31) ^ (v46[10] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v46[10] >> 31) ^ (v46[10] >> 1))) >> 27));
      v51 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v213, v46 + 10, v50 ^ (v50 >> 31), buf);
      v4 = *&buf[12];
      v5 = v214;
      if (v48 != 0x7FFFFFFF || (*v46 & 0xFFFFFFFFFFFFFFFELL) == 0x6C9D3C && ((v51 = v46[1], v51 == "this") || (v51 = strcmp(v51, "this"), !v51)))
      {
        if (v4 != 0x7FFFFFFF || (v46[10] & 0xFFFFFFFFFFFFFFFELL) == 0x6C9D3C && ((v56 = v46[11], v56 == "this") || (v51 = strcmp(v56, "this"), !v51)))
        {
          v59 = v49 + 32 * v48;
          if (v48 != 0x7FFFFFFF)
          {
            v3 = *(v59 + 24);
            if (v208 <= v3)
            {
              goto LABEL_297;
            }

            *buf = v46;
            re::DynamicArray<re::RigDataValue *>::add((v209 + 144 * v3 + 64), buf);
          }

          if (v4 != 0x7FFFFFFF)
          {
            v4 = v5 + 32 * v4;
            v3 = *(v4 + 24);
            v5 = v208;
            if (v208 <= v3)
            {
              goto LABEL_298;
            }

            *buf = v46;
            re::DynamicArray<re::RigDataValue *>::add((v209 + 144 * v3 + 64), buf);
            if (v48 != 0x7FFFFFFF)
            {
              v3 = *(v59 + 24);
              v5 = v208;
              if (v208 <= v3)
              {
                goto LABEL_301;
              }

              v4 = *(v4 + 24);
              if (v208 <= v4)
              {
                goto LABEL_302;
              }

              v60 = v209 + 144 * v3;
              v61 = v209 + 144 * v4;
              *buf = v61;
              v62 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) >> 27));
              v63 = v62 ^ (v62 >> 31);
              v64 = *(v60 + 10);
              if (v64)
              {
                v65 = v63 % v64;
                v66 = *(*(v60 + 3) + 4 * (v63 % v64));
                if (v66 != 0x7FFFFFFF)
                {
                  v67 = *(v60 + 4);
                  while (*(v67 + 24 * v66 + 16) != v61)
                  {
                    LODWORD(v66) = *(v67 + 24 * v66 + 8) & 0x7FFFFFFF;
                    if (v66 == 0x7FFFFFFF)
                    {
                      goto LABEL_91;
                    }
                  }

                  goto LABEL_92;
                }
              }

              else
              {
                LODWORD(v65) = 0;
              }

LABEL_91:
              re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::addAsMove((v60 + 16), v65, v63, buf);
              ++*(v60 + 14);
            }
          }
        }

        else
        {
          v57 = *re::animationLogObjects(v51);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = v46[11];
            *buf = 136315138;
            *&buf[4] = v58;
            v54 = v57;
            v55 = "Connection with invalid target node '%s' in RigGraphDefinition ignored.";
            goto LABEL_75;
          }
        }
      }

      else
      {
        v52 = *re::animationLogObjects(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = v46[1];
          *buf = 136315138;
          *&buf[4] = v53;
          v54 = v52;
          v55 = "Connection with invalid source node '%s' in RigGraphDefinition ignored.";
LABEL_75:
          _os_log_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_DEFAULT, v55, buf, 0xCu);
        }
      }

LABEL_92:
      v46 += 20;
    }

    while (v46 != v206);
  }

  v68 = *(a2 + 24);
  v5 = v208;
  v69 = v209;
  if (v68)
  {
    v70 = *(a2 + 26);
    v3 = 96 * v68;
    do
    {
      v71 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v70 >> 31) ^ (*v70 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v70 >> 31) ^ (*v70 >> 1))) >> 27));
      v72 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v213, v70, v71 ^ (v71 >> 31), buf);
      v4 = *(v214 + 32 * *&buf[12] + 24);
      if (v208 <= v4)
      {
        goto LABEL_294;
      }

      v73 = v69 + 144 * v4;
      v74 = *(v73 + 14);
      v75 = *(v73 + 15);
      if (v75 >= v74)
      {
        v76 = v75 + 1;
        if (v74 < v75 + 1)
        {
          if (*(v73 + 13))
          {
            if (v74)
            {
              v77 = 2 * v74;
            }

            else
            {
              v77 = 8;
            }

            if (v77 <= v76)
            {
              v78 = v75 + 1;
            }

            else
            {
              v78 = v77;
            }

            re::DynamicArray<float *>::setCapacity(v73 + 13, v78);
          }

          else
          {
            re::DynamicArray<float *>::setCapacity(v73 + 13, v76);
            ++*(v73 + 32);
          }
        }

        v75 = *(v73 + 15);
        v69 = v209;
      }

      *(*(v73 + 17) + 8 * v75) = v70;
      *(v73 + 15) = v75 + 1;
      ++*(v73 + 32);
      v70 += 12;
      v3 -= 96;
    }

    while (v3);
  }

  *&v222[1] = 0;
  *&buf[8] = 0;
  *&v222[0] = 0;
  DWORD2(v222[0]) = 0;
  *buf = a1;
  v79 = re::DynamicArray<float *>::setCapacity(buf, v208);
  v80 = ++DWORD2(v222[0]);
  v81 = *&v222[0];
  if (v208)
  {
    v82 = 16 * v201;
    v83 = v69;
    do
    {
      if (v81 >= *&buf[8])
      {
        if (*&buf[8] < v81 + 1)
        {
          if (*buf)
          {
            v84 = 2 * *&buf[8];
            if (!*&buf[8])
            {
              v84 = 8;
            }

            if (v84 <= v81 + 1)
            {
              v85 = v81 + 1;
            }

            else
            {
              v85 = v84;
            }

            v79 = re::DynamicArray<float *>::setCapacity(buf, v85);
            v80 = DWORD2(v222[0]);
          }

          else
          {
            v79 = re::DynamicArray<float *>::setCapacity(buf, v81 + 1);
            v80 = DWORD2(v222[0]) + 1;
          }
        }

        v81 = *&v222[0];
      }

      *(*&v222[1] + 8 * v81++) = v83;
      *&v222[0] = v81;
      DWORD2(v222[0]) = ++v80;
      v83 = (v83 + 144);
      v82 -= 144;
    }

    while (v82);
  }

  *&v220[2] = 0;
  memset(&v218[8], 0, 20);
  *v218 = a1;
  re::DynamicArray<re::RigGraphSystem::BuildTask>::setCapacity(v218, v208);
  ++*&v218[24];
  if (v81)
  {
    do
    {
      re::RigGraphSystem::visitTask(**&v222[1], buf, v218);
    }

    while (*&v222[0]);
  }

  if (*buf && *&v222[1])
  {
    (*(**buf + 40))();
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v213);
  if (a1 && v208)
  {
    v86 = 16 * v201;
    v87 = v69 + 104;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v87);
      re::DynamicArray<unsigned long>::deinit(v87 - 40);
      v88 = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v87 - 88));
      v87 += 144;
      v86 -= 144;
    }

    while (v86);
    (*(*a1 + 40))(a1, v69, v88);
  }

  v215 = 0;
  v213 = 0u;
  v214 = 0u;
  v216 = 0x7FFFFFFFLL;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(&v213, a1, 3);
  *(a3 + 120) = a1;
  v210 = (a3 + 120);
  re::DynamicArray<re::StringID>::setCapacity((a3 + 120), 0);
  ++*(a3 + 144);
  v89 = *(a2 + 4);
  *a3 = a1;
  re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(a3, v89);
  ++*(a3 + 24);
  v90 = *(a2 + 4);
  if (v90)
  {
    v91 = 0;
    v92 = *(a2 + 6);
    v93 = 112 * v90;
    while (1)
    {
      v94 = (v92 + v91 + 64);
      v95 = *&v94->var0;
      if (*&v94->var0 >= 0xFFFFFFFFFFFFFFFELL && (v95 & 1) == 0)
      {
        break;
      }

      if (v95 <= 1)
      {
        v96 = *(v92 + v91 + 72);
        if (v96)
        {
          goto LABEL_140;
        }
      }

LABEL_142:
      re::DynamicArray<re::StringID>::add(v210, v94);
      *&v229[0] = *(a3 + 136) - 1;
      v97 = *&v229[0];
      re::StringID::StringID(buf, (v92 + v91 + 80));
      *&v222[0] = v97;
      re::StringID::StringID((v222 + 8), (v92 + v91 + 96));
      v98 = re::DynamicArray<re::RigGraphNodeParameter>::add(a3, buf);
      if (BYTE8(v222[0]))
      {
        if (BYTE8(v222[0]))
        {
        }
      }

      *(&v222[0] + 1) = 0;
      *&v222[1] = &str_67;
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      *buf = "this";
      *&buf[8] = 4;
      v99 = strlen(*(v92 + v91 + 88));
      *&v222[0] = *(v92 + v91 + 88);
      *(&v222[0] + 1) = v99;
      re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(&v213, buf, v229);
      v91 += 112;
      if (v93 == v91)
      {
        goto LABEL_149;
      }
    }

    v96 = *(v92 + v91 + 72);
LABEL_140:
    if (!*v96)
    {
      v94 = (v92 + v91 + 16);
    }

    goto LABEL_142;
  }

LABEL_149:
  *(a3 + 40) = a1;
  re::DynamicArray<re::RigGraphNodeParameter>::setCapacity((a3 + 40), *(a2 + 9));
  ++*(a3 + 64);
  v100 = *(a2 + 9);
  if (v100)
  {
    v101 = *(a2 + 11) + 64;
    for (i = 112 * v100; i; i -= 112)
    {
      v103 = *v101;
      if (*v101 < 0xFFFFFFFFFFFFFFFELL || (v103 & 1) != 0)
      {
        v105 = v101;
        if (v103 > 1)
        {
          goto LABEL_159;
        }

        v104 = *(v101 + 8);
        v105 = v101;
        if (!v104)
        {
          goto LABEL_159;
        }
      }

      else
      {
        v104 = *(v101 + 8);
      }

      if (*v104)
      {
        v105 = v101;
      }

      else
      {
        v105 = (v101 - 48);
      }

LABEL_159:
      re::DynamicArray<re::StringID>::add(v210, v105);
      *&v229[0] = *(a3 + 136) - 1;
      v106 = *&v229[0];
      re::StringID::StringID(buf, (v101 + 16));
      v222[0] = v106;
      *&v222[1] = &str_67;
      v107 = re::DynamicArray<re::RigGraphNodeParameter>::add((a3 + 40), buf);
      if (BYTE8(v222[0]))
      {
        if (BYTE8(v222[0]))
        {
        }
      }

      *(&v222[0] + 1) = 0;
      *&v222[1] = &str_67;
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      *buf = "this";
      *&buf[8] = 4;
      v108 = strlen(*(v101 + 24));
      *&v222[0] = *(v101 + 24);
      *(&v222[0] + 1) = v108;
      re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(&v213, buf, v229);
      v101 += 112;
    }
  }

  *(a3 + 80) = a1;
  v109 = *&v218[16];
  v200 = (a3 + 80);
  re::DynamicArray<re::RigGraphNodeChild>::setCapacity((a3 + 80), *&v218[16]);
  *(a3 + 160) = a1;
  v4 = a3 + 160;
  ++*(a3 + 104);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity((a3 + 160), 0);
  ++*(a3 + 184);
  v199 = v109;
  if (v109)
  {
    v202 = *&v220[2];
    v5 = (*&v220[2] + 144 * v109);
    v110 = v5;
    v208 = (a3 + 160);
LABEL_168:
    v112 = *(v110 - 18);
    v111 = (v110 - 144);
    v15 = v112;
    v3 = *(a2 + 14);
    if (v3 <= v112)
    {
      goto LABEL_295;
    }

    v203 = v111;
    v113 = (*(a2 + 16) + 32 * v15);
    *buf = 0;
    *&buf[8] = &str_67;
    memset(v222, 0, 28);
    v224 = 0;
    v222[2] = 0u;
    memset(v223, 0, 20);
    re::StringID::operator=(buf, v113 + 2);
    v114 = *(v5 - 8);
    *&v222[0] = a1;
    re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(v222, v114);
    ++DWORD2(v222[1]);
    v115 = *(v5 - 8);
    *(&v222[2] + 1) = a1;
    re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(&v222[2] + 1, v115);
    ++*&v223[16];
    v207 = v5;
    v116 = *(v5 - 8);
    if (!v116)
    {
      goto LABEL_250;
    }

    v117 = *(v5 - 6);
    v118 = &v117[v116];
    while (1)
    {
      v119 = *v117;
      if (re::StringID::operator==(*v117, v113))
      {
        v4 = *&v223[8];
        if (*&v223[8])
        {
          v120 = v224;
          while (!re::StringID::operator==(v120, (v119 + 32)))
          {
            v120 += 8;
            if (!--v4)
            {
              goto LABEL_176;
            }
          }

          goto LABEL_187;
        }

LABEL_176:
        v121 = strlen(*(v119 + 88));
        *&v229[0] = *(v119 + 88);
        *(&v229[0] + 1) = v121;
        v122 = strlen(*(v119 + 120));
        *&v229[1] = *(v119 + 120);
        *(&v229[1] + 1) = v122;
        v123 = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::tryGet(&v213, v229);
        if (v123)
        {
          v124 = *(v119 + 144);
          if (v124 >= 0xFFFFFFFFFFFFFFFELL && (v124 & 1) == 0)
          {
            v125 = *(v119 + 152);
LABEL_182:
            if (!*v125)
            {
              *v217 = *v123;
              v4 = *v217;
              re::StringID::StringID(v229, (v119 + 32));
              v229[1] = v4;
              *(&v230 + 1) = 0;
              v229[2] = 0uLL;
              LODWORD(v230) = 0;
              re::DynamicArray<re::RigGraphNodeOutputParameter>::add((&v222[2] + 8), v229);
              v126 = re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(&v229[1] + 8);
              if (v229[0])
              {
                if (v229[0])
                {
                }
              }

              v127 = strlen(*(v119 + 8));
              *&v229[0] = *(v119 + 8);
              *(&v229[0] + 1) = v127;
              v128 = strlen(*(v119 + 40));
              *&v229[1] = *(v119 + 40);
              *(&v229[1] + 1) = v128;
              re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(&v213, v229, v217);
            }

            goto LABEL_187;
          }

          if (v124 <= 1)
          {
            v125 = *(v119 + 152);
            if (v125)
            {
              goto LABEL_182;
            }
          }
        }
      }

LABEL_187:
      if (++v117 == v118)
      {
        v129 = *(v207 - 8);
        if (v129)
        {
          v15 = *(v207 - 6);
          v130 = v15 + 8 * v129;
          while (1)
          {
            v131 = *v15;
            if (re::StringID::operator==((*v15 + 80), v113))
            {
              if (*&v222[1])
              {
                v132 = *&v222[2];
                v133 = 40 * *&v222[1];
                while (!re::StringID::operator==(v132, (v131 + 112)))
                {
                  v132 += 5;
                  v133 -= 40;
                  if (!v133)
                  {
                    goto LABEL_195;
                  }
                }
              }

              else
              {
LABEL_195:
                v134 = strlen(*(v131 + 88));
                *&v229[0] = *(v131 + 88);
                *(&v229[0] + 1) = v134;
                v135 = strlen(*(v131 + 120));
                *&v229[1] = *(v131 + 120);
                *(&v229[1] + 1) = v135;
                v136 = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::tryGet(&v213, v229);
                if (v136)
                {
                  v137 = v136;
                  re::StringID::StringID(v229, (v131 + 112));
                  *&v229[1] = *v137;
                  re::StringID::invalid((&v229[1] + 8));
                }

                else
                {
                  v138 = strlen(*(v131 + 8));
                  *&v229[0] = *(v131 + 8);
                  *(&v229[0] + 1) = v138;
                  v139 = strlen(*(v131 + 40));
                  *&v229[1] = *(v131 + 40);
                  *(&v229[1] + 1) = v139;
                  v140 = re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>::operator()(v229);
                  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::findEntry<re::Pair<re::StringSlice,re::StringSlice,true>>(v217, &v213, v229, v140);
                  v141 = *(v214 + 56 * *&v217[12] + 40);
                  re::StringID::StringID(v229, (v131 + 112));
                  *&v229[1] = v141;
                  re::StringID::StringID((&v229[1] + 8), (v131 + 64));
                }

                v142 = re::DynamicArray<re::RigGraphNodeParameter>::add(v222, v229);
                if (BYTE8(v229[1]))
                {
                  if (BYTE8(v229[1]))
                  {
                  }
                }

                *(&v229[1] + 1) = 0;
                *&v229[2] = &str_67;
                if (v229[0])
                {
                  if (v229[0])
                  {
                  }
                }
              }
            }

            if (!re::StringID::operator==(v131, v113))
            {
              goto LABEL_249;
            }

            v143 = *&v223[8];
            if (*&v223[8])
            {
              v4 = 0;
              v144 = v224;
              while (!re::StringID::operator==(v144, (v131 + 32)))
              {
                ++v4;
                v144 += 8;
                if (v143 == v4)
                {
                  goto LABEL_209;
                }
              }
            }

            else
            {
LABEL_209:
              re::DynamicArray<re::StringID>::add(v210, (v131 + 16));
              *v217 = *(a3 + 136) - 1;
              v145 = *v217;
              re::StringID::StringID(v229, (v131 + 32));
              v229[1] = v145;
              *(&v230 + 1) = 0;
              v229[2] = 0uLL;
              LODWORD(v230) = 0;
              re::DynamicArray<re::RigGraphNodeOutputParameter>::add((&v222[2] + 8), v229);
              v146 = re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(&v229[1] + 8);
              if (v229[0])
              {
                if (v229[0])
                {
                }
              }

              v4 = *&v223[8] - 1;
              v147 = strlen(*(v131 + 8));
              *&v229[0] = *(v131 + 8);
              *(&v229[0] + 1) = v147;
              v148 = strlen(*(v131 + 40));
              *&v229[1] = *(v131 + 40);
              *(&v229[1] + 1) = v148;
              re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(&v213, v229, v217);
            }

            v5 = (v131 + 144);
            v149 = *(v131 + 144);
            if (v149 >= 0xFFFFFFFFFFFFFFFELL && (v149 & 1) == 0)
            {
              break;
            }

            if (v149 <= 1)
            {
              v150 = *(v131 + 152);
              if (v150)
              {
                goto LABEL_218;
              }
            }

LABEL_219:
            v151 = v130;
            v152 = strlen(*(v131 + 88));
            *&v229[0] = *(v131 + 88);
            *(&v229[0] + 1) = v152;
            v153 = strlen(*(v131 + 120));
            *&v229[1] = *(v131 + 120);
            *(&v229[1] + 1) = v153;
            v154 = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::tryGet(&v213, v229);
            if (v154)
            {
              v3 = *v154;
              v211 = *v154;
            }

            else
            {
              re::DynamicArray<re::StringID>::add(v210, (v131 + 96));
              v3 = *(a3 + 136) - 1;
              v211 = v3;
              v155 = strlen(*(v131 + 88));
              *&v229[0] = *(v131 + 88);
              *(&v229[0] + 1) = v155;
              v156 = strlen(*(v131 + 120));
              *&v229[1] = *(v131 + 120);
              *(&v229[1] + 1) = v156;
              re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(&v213, v229, &v211);
            }

            v157 = *&v223[8];
            if (*&v223[8] <= v4)
            {
              v212 = 0;
              v230 = 0u;
              v231 = 0u;
              memset(v229, 0, sizeof(v229));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v217 = 136315906;
              *&v217[4] = "operator[]";
              *&v217[12] = 1024;
              *&v217[14] = 789;
              *&v217[18] = 2048;
              *&v217[20] = v4;
              *&v217[28] = 2048;
              *&v217[30] = v157;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_294:
              *v218 = 0;
              *v223 = 0u;
              memset(v222, 0, sizeof(v222));
              *buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v229[0]) = 136315906;
              *(v229 + 4) = "operator[]";
              WORD6(v229[0]) = 1024;
              *(v229 + 14) = 468;
              WORD1(v229[1]) = 2048;
              *(&v229[1] + 4) = v4;
              WORD6(v229[1]) = 2048;
              *(&v229[1] + 14) = v5;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_295:
              *v217 = 0;
              *v223 = 0u;
              memset(v222, 0, sizeof(v222));
              *buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v229[0]) = 136315906;
              *(v229 + 4) = "operator[]";
              WORD6(v229[0]) = 1024;
              *(v229 + 14) = 797;
              WORD1(v229[1]) = 2048;
              *(&v229[1] + 4) = v15;
              WORD6(v229[1]) = 2048;
              *(&v229[1] + 14) = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_296:
              *v217 = 0;
              v230 = 0u;
              v231 = 0u;
              memset(v229, 0, sizeof(v229));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v218 = 136315906;
              *&v218[4] = "operator[]";
              *&v218[12] = 1024;
              *&v218[14] = 468;
              *&v218[18] = 2048;
              *&v218[20] = v15;
              v219 = 2048;
              *v220 = v208;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_297:
              *v218 = 0;
              *v223 = 0u;
              memset(v222, 0, sizeof(v222));
              *buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v229[0]) = 136315906;
              *(v229 + 4) = "operator[]";
              WORD6(v229[0]) = 1024;
              *(v229 + 14) = 468;
              WORD1(v229[1]) = 2048;
              *(&v229[1] + 4) = v3;
              WORD6(v229[1]) = 2048;
              *(&v229[1] + 14) = v208;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_298:
              *v218 = 0;
              *v223 = 0u;
              memset(v222, 0, sizeof(v222));
              *buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v229[0]) = 136315906;
              *(v229 + 4) = "operator[]";
              WORD6(v229[0]) = 1024;
              *(v229 + 14) = 468;
              WORD1(v229[1]) = 2048;
              *(&v229[1] + 4) = v3;
              WORD6(v229[1]) = 2048;
              *(&v229[1] + 14) = v5;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_299:
              re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
              _os_crash();
              __break(1u);
              goto LABEL_300;
            }

            v4 = &v224[8 * v4];
            re::StringID::StringID(v217, (v131 + 112));
            *&v217[16] = v3;
            re::StringID::StringID(&v217[24], (v131 + 144));
            v158 = re::StringID::StringID(v229, (v131 + 64));
            v229[1] = *v217;
            *v217 = 0;
            *&v217[8] = &str_67;
            v229[2] = *&v217[16];
            *&v230 = *&v217[32];
            *&v217[24] = 0;
            *&v217[32] = &str_67;
            v159 = *(v4 + 32);
            v160 = *(v4 + 40);
            v130 = v151;
            if (v160 >= v159)
            {
              v161 = v160 + 1;
              if (v159 < v160 + 1)
              {
                if (*(v4 + 24))
                {
                  v162 = 2 * v159;
                  v19 = v159 == 0;
                  v163 = 8;
                  if (!v19)
                  {
                    v163 = v162;
                  }

                  if (v163 <= v161)
                  {
                    v164 = v161;
                  }

                  else
                  {
                    v164 = v163;
                  }

                  v158 = re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity((v4 + 24), v164);
                }

                else
                {
                  v158 = re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity((v4 + 24), v161);
                  ++*(v4 + 48);
                }
              }

              v160 = *(v4 + 40);
            }

            v165 = (*(v4 + 56) + 56 * v160);
            v166 = v229[0];
            *v165 = *v165 & 0xFFFFFFFFFFFFFFFELL | v229[0] & 1;
            *v165 = *&v229[0] & 0xFFFFFFFFFFFFFFFELL | v166 & 1;
            v165[1] = *(&v229[0] + 1);
            *&v229[0] = 0;
            *(&v229[0] + 1) = &str_67;
            v167 = v229[1];
            v165[2] = v165[2] & 0xFFFFFFFFFFFFFFFELL | v229[1] & 1;
            v165[2] = *&v229[1] & 0xFFFFFFFFFFFFFFFELL | v167 & 1;
            v165[3] = *(&v229[1] + 1);
            *&v229[1] = 0;
            *(&v229[1] + 1) = &str_67;
            v165[4] = *&v229[2];
            v168 = BYTE8(v229[2]);
            v165[5] = v165[5] & 0xFFFFFFFFFFFFFFFELL | BYTE8(v229[2]) & 1;
            v165[5] = *(&v229[2] + 1) & 0xFFFFFFFFFFFFFFFELL | v168 & 1;
            v165[6] = v230;
            *(&v229[2] + 1) = 0;
            *&v230 = &str_67;
            ++*(v4 + 40);
            ++*(v4 + 48);
            if (BYTE8(v229[2]))
            {
              if (BYTE8(v229[2]))
              {
              }
            }

            *(&v229[2] + 1) = 0;
            *&v230 = &str_67;
            if (v229[1])
            {
              if (v229[1])
              {
              }
            }

            *&v229[1] = 0;
            *(&v229[1] + 1) = &str_67;
            if (v229[0])
            {
              if (v229[0])
              {
              }
            }

            *&v229[0] = 0;
            *(&v229[0] + 1) = &str_67;
            if (v217[24])
            {
              if (v217[24])
              {
              }
            }

            *&v217[24] = 0;
            *&v217[32] = &str_67;
            if (v217[0])
            {
              if (v217[0])
              {
              }
            }

LABEL_249:
            v15 += 8;
            if (v15 == v130)
            {
              goto LABEL_250;
            }
          }

          v150 = *(v131 + 152);
LABEL_218:
          if (!*v150)
          {
            goto LABEL_249;
          }

          goto LABEL_219;
        }

LABEL_250:
        v169 = *(v207 - 3);
        if (v169)
        {
          v170 = *(v207 - 1);
          v171 = 8 * v169;
          do
          {
            v4 = *v170;
            re::DynamicArray<re::StringID>::add(v210, *v170 + 1);
            v172 = *(a3 + 136) - 1;
            *&v229[0] = v172;
            re::StringID::StringID((v229 + 8), (v4 + 80));
            v173 = *(a3 + 168);
            v174 = *(a3 + 176);
            if (v174 >= v173)
            {
              v175 = v174 + 1;
              if (v173 < v174 + 1)
              {
                if (*v208)
                {
                  v176 = 2 * v173;
                  v19 = v173 == 0;
                  v177 = 8;
                  if (!v19)
                  {
                    v177 = v176;
                  }

                  if (v177 <= v175)
                  {
                    v178 = v175;
                  }

                  else
                  {
                    v178 = v177;
                  }

                  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(v208, v178);
                }

                else
                {
                  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(v208, v175);
                  ++*(a3 + 184);
                }
              }

              v174 = *(a3 + 176);
            }

            v179 = (*(a3 + 192) + 24 * v174);
            *v179 = *&v229[0];
            v180 = BYTE8(v229[0]);
            v179[1] = v179[1] & 0xFFFFFFFFFFFFFFFELL | BYTE8(v229[0]) & 1;
            v179[1] = *(&v229[0] + 1) & 0xFFFFFFFFFFFFFFFELL | v180 & 1;
            v179[2] = *&v229[1];
            ++*(a3 + 176);
            ++*(a3 + 184);
            re::StringID::StringID(v229, (v4 + 32));
            *&v229[1] = v172;
            re::StringID::StringID((&v229[1] + 8), (v4 + 64));
            v181 = re::DynamicArray<re::RigGraphNodeParameter>::add(v222, v229);
            if (BYTE8(v229[1]))
            {
              if (BYTE8(v229[1]))
              {
              }
            }

            *(&v229[1] + 1) = 0;
            *&v229[2] = &str_67;
            if (v229[0])
            {
              if (v229[0])
              {
              }
            }

            ++v170;
            v171 -= 8;
          }

          while (v171);
        }

        v182 = *(a3 + 88);
        v183 = *(a3 + 96);
        if (v183 >= v182)
        {
          v184 = v183 + 1;
          if (v182 < v183 + 1)
          {
            if (*v200)
            {
              v185 = 2 * v182;
              v19 = v182 == 0;
              v186 = 8;
              if (!v19)
              {
                v186 = v185;
              }

              if (v186 <= v184)
              {
                v187 = v184;
              }

              else
              {
                v187 = v186;
              }

              re::DynamicArray<re::RigGraphNodeChild>::setCapacity(v200, v187);
            }

            else
            {
              re::DynamicArray<re::RigGraphNodeChild>::setCapacity(v200, v184);
              ++*(a3 + 104);
            }
          }

          v183 = *(a3 + 96);
        }

        v188 = *(a3 + 112) + 96 * v183;
        v189 = buf[0];
        *v188 = *v188 & 0xFFFFFFFFFFFFFFFELL | buf[0] & 1;
        *v188 = *buf & 0xFFFFFFFFFFFFFFFELL | v189 & 1;
        *(v188 + 8) = *&buf[8];
        *buf = 0;
        *&buf[8] = &str_67;
        *(v188 + 48) = 0;
        *(v188 + 40) = 0;
        *(v188 + 24) = 0;
        *(v188 + 32) = 0;
        *(v188 + 16) = 0;
        *(v188 + 16) = *&v222[0];
        *&v222[0] = 0;
        *(v188 + 24) = *(&v222[0] + 1);
        *(&v222[0] + 1) = 0;
        v190 = *(v188 + 32);
        *(v188 + 32) = *&v222[1];
        *&v222[1] = v190;
        v191 = *(v188 + 48);
        *(v188 + 48) = *&v222[2];
        *&v222[2] = v191;
        ++DWORD2(v222[1]);
        ++*(v188 + 40);
        *(v188 + 88) = 0;
        *(v188 + 64) = 0;
        *(v188 + 72) = 0;
        *(v188 + 56) = 0;
        *(v188 + 80) = 0;
        *(v188 + 56) = *(&v222[2] + 1);
        *(&v222[2] + 1) = 0;
        *(v188 + 64) = *v223;
        *v223 = 0;
        v192 = *(v188 + 72);
        *(v188 + 72) = *&v223[8];
        *&v223[8] = v192;
        v193 = *(v188 + 88);
        *(v188 + 88) = v224;
        v224 = v193;
        ++*&v223[16];
        ++*(v188 + 80);
        ++*(a3 + 96);
        ++*(a3 + 104);
        re::DynamicArray<re::RigGraphNodeOutputParameter>::deinit(&v222[2] + 8);
        v194 = re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v222);
        if (buf[0])
        {
          if (buf[0])
          {
          }
        }

        v110 = v203;
        v5 = v203;
        if (v203 == v202)
        {
          break;
        }

        goto LABEL_168;
      }
    }
  }

  v195.n128_f64[0] = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(&v213);
  result = *v218;
  if (*v218 && *&v220[2])
  {
    if (v199)
    {
      v197 = 144 * v199;
      v198 = *&v220[2] + 104;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v198);
        re::DynamicArray<unsigned long>::deinit(v198 - 40);
        v195.n128_f64[0] = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v198 - 88));
        v198 += 144;
        v197 -= 144;
      }

      while (v197);
      result = *v218;
    }

    return (*(*result + 40))(result, v195);
  }

  return result;
}

re::StringID *re::DynamicArray<re::StringID>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::StringID>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::StringID::StringID((*(this + 4) + 16 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphNodeParameter>::add(_anonymous_namespace_ *result, uint64_t *a2)
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

        result = re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = (*(v3 + 4) + 40 * v5);
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v13 = a2[2];
  v11[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v11[2] = v13;
  v14 = a2[3];
  v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  v11[3] = a2[3] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  v11[4] = a2[4];
  a2[3] = 0;
  a2[4] = &str_67;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

__n128 re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>::operator()(a2);
  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::findEntry<re::Pair<re::StringSlice,re::StringSlice,true>>(&v9, a1, a2, v6);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::allocEntry(a1, v10, v9);
    result = *a2;
    *(v8 + 24) = *(a2 + 16);
    *(v8 + 8) = result;
    *(v8 + 40) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>::operator()(a2);
  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::findEntry<re::Pair<re::StringSlice,re::StringSlice,true>>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 40;
  }
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphNodeOutputParameter>::add(_anonymous_namespace_ *result, uint64_t *a2)
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

        result = re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + (v5 << 6);
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v13 = a2[2];
  *(v11 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v11 + 56) = 0;
  *(v11 + 16) = v13;
  *(v11 + 24) = 0;
  *(v11 + 48) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  v14 = a2[4];
  *(v11 + 24) = a2[3];
  *(v11 + 32) = v14;
  a2[3] = 0;
  a2[4] = 0;
  v15 = *(v11 + 40);
  *(v11 + 40) = a2[5];
  a2[5] = v15;
  v16 = *(v11 + 56);
  *(v11 + 56) = a2[7];
  a2[7] = v16;
  ++*(a2 + 12);
  ++*(v11 + 48);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

re::DynamicString *re::RigGraphSystem::compile@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, re::EvaluationContextManager *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v95 = *MEMORY[0x1E69E9840];
  v51[0] = a5;
  v51[1] = a6;
  if (*(a1 + 24) == 1)
  {
    v9 = v56;
    v10 = v57;
    *a7 = 0;
    *(a7 + 8) = 3004;
    *(a7 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a7 + 24) = v9;
    *(a7 + 40) = v10;
  }

  else
  {
    v12 = a5;
    v13 = a1;
    *(a1 + 8) = a3;
    v14 = *a1;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v46 = v14;
    re::DynamicArray<float *>::setCapacity(&v46, a6);
    v15 = ++v49;
    if (a6)
    {
      v16 = v48;
      v17 = 288 * a6;
      do
      {
        if (v16 >= v47)
        {
          re::DynamicArray<float *>::growCapacity(&v46, v16 + 1);
          v16 = v48;
          v15 = v49;
        }

        *(v50 + 8 * v16++) = v12;
        v48 = v16;
        v49 = ++v15;
        v12 += 288;
        v17 -= 288;
      }

      while (v17);
    }

    v18 = *v13;
    v19 = a2[7];
    v44 = 0;
    v45 = 0;
    v43 = 0;
    re::FixedArray<re::RigDataValue>::init<>(&v43, v18, v19);
    v20 = a2[7];
    if (v20)
    {
      v21 = a2;
      v22 = 0;
      v23 = 0;
      v24 = 16;
      v41 = v13;
      while (v20 > v23)
      {
        v25 = *(v21[9] + v24);
        v20 = v21[17];
        if (v20 <= v25)
        {
          goto LABEL_35;
        }

        v27 = *(v13 + 8);
        v26 = *(v13 + 16);
        v28 = *v13;
        re::RigEnvironment::lookupRigDataType(v26, (v21[19] + 16 * v25), v81);
        LOBYTE(v52) = v81[8];
        re::StringID::StringID(&v53, &v81[16]);
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v54, &v83[2]);
        if (v81[0] == 1)
        {
          v29 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v83[2]);
          if (v81[16])
          {
            if (v81[16])
            {
            }
          }
        }

        v56 = 0u;
        v57 = 0u;
        v58 = 0;
        v59 = 0;
        v60 = &str_67;
        v65 = 0;
        v62 = 0;
        v63 = 0;
        v61 = 0;
        v64 = 0;
        v66 = 0;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = -1;
        v72 = 0;
        v73 = 0;
        v74 = 0;
        v75 = &str_67;
        v80 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v76 = 0;
        re::RigDataValue::init(&v56, v28, v26, &v52, v27);
        v30 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v54);
        if (v53)
        {
          if (v53)
          {
          }
        }

        v25 = v44;
        v13 = v41;
        if (v44 <= v23)
        {
          goto LABEL_36;
        }

        re::RigDataValue::operator=((v45 + v22), &v56);
        re::RigDataValue::~RigDataValue(&v56);
        ++v23;
        v21 = a2;
        v20 = a2[7];
        v24 += 40;
        v22 += 288;
        if (v23 >= v20)
        {
          goto LABEL_21;
        }
      }

      v55 = 0;
      v25 = v81;
      v93 = 0u;
      v94 = 0u;
      memset(v92, 0, sizeof(v92));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v84 = 136315906;
      v85 = "operator[]";
      v86 = 1024;
      v87 = 797;
      v88 = 2048;
      v89 = v23;
      v90 = 2048;
      v91 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v55 = 0;
      v93 = 0u;
      v94 = 0u;
      memset(v92, 0, sizeof(v92));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v84 = 136315906;
      v85 = "operator[]";
      v86 = 1024;
      v87 = 797;
      v88 = 2048;
      v89 = v25;
      v90 = 2048;
      v91 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_36:
      v52 = 0;
      v93 = 0u;
      v94 = 0u;
      memset(v92, 0, sizeof(v92));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v81 = 136315906;
      *&v81[4] = "operator[]";
      *&v81[12] = 1024;
      *&v81[14] = 468;
      *&v81[18] = 2048;
      *&v81[20] = v23;
      v82 = 2048;
      *v83 = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_21:
    v31 = *v13;
    *&v83[2] = 0;
    memset(&v81[8], 0, 20);
    *v81 = v31;
    re::DynamicArray<float *>::setCapacity(v81, v44);
    ++*&v81[24];
    if (v44)
    {
      v32 = v45;
      v33 = 288 * v44;
      do
      {
        *&v56 = v32;
        re::DynamicArray<re::RigDataValue *>::add(v81, &v56);
        v32 += 288;
        v33 -= 288;
      }

      while (v33);
    }

    v34 = v50;
    v35 = *&v83[2];
    re::RigGraphSystem::compileRigGraph(v92, v13, a2, v50, v48, *&v83[2], *&v81[16]);
    *(v13 + 24) = 1;
    if (v92[0])
    {
      *&v56 = v45;
      *(&v56 + 1) = v44;
      re::RigGraphCompilation::setInputOutputValues((v13 + 32), a4, v51, &v56);
      re::RigGraphCompilation::RigGraphCompilation(&v56, v13 + 32);
      *a7 = 1;
      re::RigGraphCompilation::RigGraphCompilation(a7 + 8, &v56);
      re::RigGraphCompilation::~RigGraphCompilation(&v56);
    }

    else
    {
      *(a7 + 8) = *&v92[1];
      v36 = *&v92[3];
      v37 = v92[5];
      v38 = v93;
      *a7 = 0;
      *(a7 + 24) = v36;
      *(a7 + 40) = v37;
      *(a7 + 48) = v38;
    }

    if (*v81 && v35)
    {
      (*(**v81 + 40))();
    }

    re::FixedArray<re::RigDataValue>::deinit(&v43);
    result = v46;
    if (v46)
    {
      if (v34)
      {
        return (*(*v46 + 40))();
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigDataValue *>::add(_anonymous_namespace_ *result, void *a2)
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

        result = re::DynamicArray<float *>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<float *>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v5) = *a2;
  *(v3 + 2) = v5 + 1;
  ++*(v3 + 6);
  return result;
}

void *re::RigGraphSystem::compileRigGraph(uint64_t a1, re::Allocator **a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  i = v163;
  v10 = v143;
  v173 = *MEMORY[0x1E69E9840];
  v11 = a7 + a5;
  v12 = a3[17];
  v13 = v12 + 1;
  if (v12 + 1 <= a7 + a5)
  {
LABEL_183:
    v132 = 0;
    v10[3] = 0u;
    v10[4] = 0u;
    v10[1] = 0u;
    v10[2] = 0u;
    *v10 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v163 = 136315906;
    *(i + 4) = "slice";
    *&v163[12] = 1024;
    *(i + 14) = 1119;
    v164 = 2048;
    *(i + 20) = v11;
    v166 = 2048;
    *(i + 30) = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_184;
  }

  v13 = a3[7] + a3[2];
  v7 = (v12 - v13);
  if (__CFADD__(v11, v12 - v13))
  {
LABEL_184:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 1125, v11, v7, v12);
    _os_crash();
    __break(1u);
LABEL_185:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 1129, v11, v7, v12);
    _os_crash();
    __break(1u);
  }

  if (v11 + v12 - v13 > v12)
  {
    goto LABEL_185;
  }

  v15 = a3[19];
  v16 = *a2;
  v140 = 0;
  v141 = 0;
  v139 = 0;
  re::FixedArray<re::RigDataValue>::init<>(&v139, v16, v12 - v13);
  if (v12 != v13)
  {
    v17 = 0;
    v13 = 0;
    v18 = v143;
    v19 = (v15 + 16 * v11);
    do
    {
      v8 = v140;
      if (v140 <= v13)
      {
        goto LABEL_176;
      }

      i = v141;
      v8 = *a2;
      v20 = a2[2];
      re::RigEnvironment::lookupRigDataType(v20, v19, v143);
      re::RigDataValue::init(&i[v17], v8, v20, &v143[1], a2[1]);
      if (LOBYTE(v143[0]) == 1)
      {
        v21 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v143[4]);
        if (v143[2])
        {
          if (v143[2])
          {
          }
        }
      }

      ++v13;
      v17 += 288;
      v19 += 2;
    }

    while (v7 != v13);
  }

  i = a3;
  v22 = a3[22];
  if (v22)
  {
    v23 = a3[24];
    v13 = v23 + 24 * v22;
    v18 = 288;
    while (1)
    {
      v24 = *v23 - v11;
      v7 = v140;
      if (v140 <= v24)
      {
        break;
      }

      v25 = strlen(*(v23 + 16));
      *v163 = *(v23 + 16);
      *&v163[8] = v25;
      re::RigDataValue::setRigDataValue(&v141[288 * v24], v163, 1, v143);
      if (LOBYTE(v143[0]) != 1 && v143[3] && (v143[4] & 1) != 0)
      {
        (*(*v143[3] + 40))();
      }

      v23 += 24;
      if (v23 == v13)
      {
        goto LABEL_20;
      }
    }

    v132 = 0;
    v144 = 0u;
    v145 = 0u;
    memset(v143, 0, sizeof(v143));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v163 = 136315906;
    *&v163[4] = "operator[]";
    *&v163[12] = 1024;
    *&v163[14] = 468;
    v164 = 2048;
    v165 = v24;
    v166 = 2048;
    v167[0] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_176:
    v132 = 0;
    v144 = 0u;
    v145 = 0u;
    memset(v143, 0, sizeof(v143));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v163 = 136315906;
    *&v163[4] = "operator[]";
    *&v163[12] = 1024;
    *&v163[14] = 468;
    v164 = 2048;
    v165 = v13;
    v166 = 2048;
    v167[0] = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v142 = 0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v168 = 136315906;
    *&v168[4] = "operator[]";
    *&v168[12] = 1024;
    *&v168[14] = 797;
    v169 = 2048;
    v170 = v11;
    v171 = 2048;
    v172 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_178:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_179:
    v142 = 0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v168 = 136315906;
    *&v168[4] = "operator[]";
    *&v168[12] = 1024;
    *&v168[14] = 797;
    v169 = 2048;
    v170 = v13;
    v171 = 2048;
    v172 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_180:
    re::internal::assertLog(4, v58, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_181:
    re::internal::assertLog(4, v81, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_182:
    *v168 = 0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v163 = 136315906;
    *&v163[4] = "operator[]";
    *&v163[12] = 1024;
    *&v163[14] = 789;
    v164 = 2048;
    v165 = v11;
    v166 = 2048;
    v167[0] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_183;
  }

LABEL_20:
  v26 = *a2;
  v132 = 0;
  v133 = 0;
  v134 = 1;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v138 = 0;
  re::BucketArray<re::RigDataValue,8ul>::init(&v132, v26, 1uLL);
  v27 = *a2;
  v131 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v127 = v27;
  re::DynamicArray<float *>::setCapacity(&v127, 0);
  ++v130;
  v28 = *a2;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v122 = v28;
  re::DynamicArray<float *>::setCapacity(&v122, 0);
  ++v125;
  v29 = a3[12];
  v7 = v143;
  if (!v29)
  {
    goto LABEL_158;
  }

  v30 = a3[14];
  v105 = (v30 + 96 * v29);
  v18 = v137;
LABEL_22:
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v31 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v132, i);
      re::RigDataValue::~RigDataValue(v31);
    }
  }

  v137 = 0;
  ++v138;
  v129 = 0;
  ++v130;
  v124 = 0;
  ++v125;
  v32 = re::RigEnvironment::lookupRigGraphNode(a2[2], v30);
  v114 = v30;
  if (v32)
  {
    v33 = *(v32 + 16);
    v34 = v32;
    if (v128 < v33)
    {
      re::DynamicArray<float *>::setCapacity(&v127, v33);
      v33 = v34[2];
    }

    v111 = v34;
    v18 = 0;
    if (v33)
    {
      v35 = v34[4];
      v108 = v35 + 40 * v33;
      while (1)
      {
        v36 = *(v114 + 4);
        if (!v36)
        {
          break;
        }

        i = *(v114 + 6);
        v37 = 40 * v36;
        while (!re::StringID::operator==(i, v35))
        {
          i += 40;
          v37 -= 40;
          if (!v37)
          {
            goto LABEL_34;
          }
        }

        if (!i)
        {
          goto LABEL_35;
        }

        v121 = v46;
        if (v46)
        {
          v44 = v46;
          goto LABEL_51;
        }

        v38 = 0;
LABEL_36:
        v11 = *(v35 + 16);
        v13 = v111[17];
        if (v13 <= v11)
        {
          goto LABEL_177;
        }

        re::RigEnvironment::lookupRigDataType(a2[2], (v111[19] + 16 * v11), v163);
        memset(v143, 0, 33);
        v143[5] = 0;
        *&v144 = &str_67;
        v147 = 0;
        *(&v144 + 1) = 0;
        v145 = 0uLL;
        v146 = 0;
        v148 = 0;
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v153 = -1;
        v154 = 0;
        v155 = 0;
        v156 = 0;
        v157 = &str_67;
        v162 = 0;
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v158 = 0;
        v39 = re::BucketArray<re::RigDataValue,8ul>::addUninitialized(&v132);
        re::RigDataValue::RigDataValue(v39, v143);
        re::RigDataValue::~RigDataValue(v143);
        v18 = v137;
        if (!v137)
        {
          goto LABEL_178;
        }

        v41 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v132, v137 - 1);
        re::RigDataValue::init(v41, *a2, a2[2], &v163[8], a2[1]);
        v42 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v132, v18 - 1);
        v43 = strlen(*(v35 + 32));
        *v168 = *(v35 + 32);
        *&v168[8] = v43;
        re::RigDataValue::setRigDataValue(v42, v168, 1, v143);
        if (LOBYTE(v143[0]) != 1 && v143[3] && (v143[4] & 1) != 0)
        {
          (*(*v143[3] + 40))();
        }

        v44 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v132, v18 - 1);
        v121 = v44;
        if (v163[0] == 1)
        {
          v45 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v167 + 2);
          if (v163[16])
          {
            if (v163[16])
            {
            }
          }
        }

        if (v38)
        {
LABEL_59:
          re::DynamicArray<re::TransitionCondition *>::add(&v127, &v121);
          goto LABEL_65;
        }

LABEL_51:
        v47 = *(i + 3);
        if (v47 < 0xFFFFFFFFFFFFFFFELL || (v47 & 1) != 0)
        {
          i = *(i + 4);
          if (v47 > 1)
          {
            goto LABEL_56;
          }
        }

        else
        {
          i = *(i + 4);
        }

        if (!*i)
        {
          goto LABEL_59;
        }

LABEL_56:
        v48 = strlen(i);
        *v163 = i;
        *&v163[8] = v48;
        re::RigDataValue::attributeValue(v44, v163, v143);
        v49 = v143[0];
        if (LOBYTE(v143[0]) == 1)
        {
          re::DynamicArray<re::TransitionCondition *>::add(&v127, &v143[1]);
          if (v143[0])
          {
            goto LABEL_65;
          }
        }

        else
        {
          v50 = *&v143[3];
          memset(&v143[3], 0, 24);
          v51 = v143[5];
          v52 = v144;
          *&v144 = 0;
          *a1 = 0;
          *(a1 + 8) = *&v143[1];
          *(a1 + 24) = v50;
          *(a1 + 40) = v51;
          *(a1 + 48) = v52;
        }

        if (v143[3] && (v143[4] & 1) != 0)
        {
          (*(*v143[3] + 40))();
        }

        if ((v49 & 1) == 0)
        {
          goto LABEL_159;
        }

LABEL_65:
        v35 += 40;
        if (v35 == v108)
        {
          goto LABEL_68;
        }
      }

LABEL_34:
      i = 0;
      v121 = 0;
LABEL_35:
      v38 = 1;
      goto LABEL_36;
    }

LABEL_68:
    v53 = v111[7];
    if (v123 < v53)
    {
      re::DynamicArray<float *>::setCapacity(&v122, v53);
      v53 = v111[7];
    }

    v30 = v114;
    if (v53)
    {
      i = v111[9];
      v11 = &i[40 * v53];
      do
      {
        v54 = *(v114 + 9);
        if (!v54)
        {
          goto LABEL_79;
        }

        v55 = *(v114 + 11);
        v56 = v54 << 6;
        while (!re::StringID::operator==(v55, i))
        {
          v55 += 8;
          v56 -= 64;
          if (!v56)
          {
            goto LABEL_79;
          }
        }

        if (v55)
        {
          re::DynamicArray<re::RigDataValue *>::add(&v122, v143);
        }

        else
        {
LABEL_79:
          v13 = *(i + 2);
          v18 = v111[17];
          if (v18 <= v13)
          {
            goto LABEL_179;
          }

          re::RigEnvironment::lookupRigDataType(a2[2], (v111[19] + 16 * v13), v163);
          memset(v143, 0, 33);
          v143[5] = 0;
          *&v144 = &str_67;
          v147 = 0;
          *(&v144 + 1) = 0;
          v145 = 0uLL;
          v146 = 0;
          v148 = 0;
          v149 = 0u;
          v150 = 0u;
          v151 = 0u;
          v152 = 0u;
          v153 = -1;
          v154 = 0;
          v155 = 0;
          v156 = 0;
          v157 = &str_67;
          v162 = 0;
          v159 = 0;
          v160 = 0;
          v161 = 0;
          v158 = 0;
          v57 = re::BucketArray<re::RigDataValue,8ul>::addUninitialized(&v132);
          re::RigDataValue::RigDataValue(v57, v143);
          re::RigDataValue::~RigDataValue(v143);
          v18 = v137;
          if (!v137)
          {
            goto LABEL_180;
          }

          v59 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v132, v137 - 1);
          re::RigDataValue::init(v59, *a2, a2[2], &v163[8], a2[1]);
          v143[0] = re::BucketArray<re::RigDataValue,8ul>::operator[](&v132, v18 - 1);
          re::DynamicArray<re::RigDataValue *>::add(&v122, v143);
          if (v163[0] == 1)
          {
            v60 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v167 + 2);
            if (v163[16])
            {
              if (v163[16])
              {
              }
            }
          }
        }

        i += 40;
      }

      while (i != v11);
    }

    v61 = v126;
    v11 = v124;
    re::RigGraphSystem::compileRigGraph(v118, a2, v111, v131, v129, v126, v124);
    if ((v118[0] & 1) == 0 && v119)
    {
      if (BYTE8(v119))
      {
        (*(*v119 + 40))();
      }

      v120 = 0u;
      v119 = 0u;
    }

    goto LABEL_132;
  }

  v62 = re::RigEnvironment::lookupRigGraphOperator(a2[2], v30);
  v13 = a4;
  if (!v62)
  {
    re::internal::assertLog(4, v63, "assertion failure: '%s' (%s:line %i) Node definition not found!", "!Unreachable code", "compileRigGraph", 527);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v64 = v62;
  v65 = *(v62 + 24);
  if (v128 < v65)
  {
    re::DynamicArray<float *>::setCapacity(&v127, v65);
    v65 = *(v64 + 24);
  }

  if (!v65)
  {
LABEL_114:
    v76 = *(v64 + 48);
    if (v123 < v76)
    {
      re::DynamicArray<float *>::setCapacity(&v122, v76);
      v76 = *(v64 + 48);
    }

    v18 = 0;
    if (v76)
    {
      i = *(v64 + 56);
      v11 = &i[32 * v76];
      do
      {
        v77 = *(v30 + 9);
        if (!v77)
        {
          goto LABEL_125;
        }

        v78 = *(v30 + 11);
        v79 = v77 << 6;
        while (!re::StringID::operator==(v78, i))
        {
          v78 += 8;
          v79 -= 64;
          if (!v79)
          {
            goto LABEL_125;
          }
        }

        if (v78)
        {
          re::DynamicArray<re::RigDataValue *>::add(&v122, v143);
        }

        else
        {
LABEL_125:
          re::RigEnvironment::lookupRigDataType(a2[2], i + 2, v163);
          memset(v143, 0, 33);
          v143[5] = 0;
          *&v144 = &str_67;
          v147 = 0;
          *(&v144 + 1) = 0;
          v145 = 0uLL;
          v146 = 0;
          v148 = 0;
          v149 = 0u;
          v150 = 0u;
          v151 = 0u;
          v152 = 0u;
          v153 = -1;
          v154 = 0;
          v155 = 0;
          v156 = 0;
          v157 = &str_67;
          v162 = 0;
          v159 = 0;
          v160 = 0;
          v161 = 0;
          v158 = 0;
          v80 = re::BucketArray<re::RigDataValue,8ul>::addUninitialized(&v132);
          re::RigDataValue::RigDataValue(v80, v143);
          re::RigDataValue::~RigDataValue(v143);
          v18 = v137;
          if (!v137)
          {
            goto LABEL_181;
          }

          v82 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v132, v137 - 1);
          re::RigDataValue::init(v82, *a2, a2[2], &v163[8], a2[1]);
          v143[0] = re::BucketArray<re::RigDataValue,8ul>::operator[](&v132, v18 - 1);
          re::DynamicArray<re::RigDataValue *>::add(&v122, v143);
          if (v163[0] == 1)
          {
            v83 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v167 + 2);
            if (v163[16])
            {
              if (v163[16])
              {
              }
            }
          }
        }

        i += 32;
      }

      while (i != v11);
    }

    v61 = v126;
    v11 = v124;
    (*(v64 + 64))(a2, v131, v129, v126, v124);
LABEL_132:
    v84 = *(v30 + 9);
    if (!v84)
    {
      goto LABEL_157;
    }

    v85 = 0;
    v109 = v11;
    v106 = v61;
    while (1)
    {
      if (v85 == v11)
      {
        goto LABEL_182;
      }

      v86 = *(v30 + 11) + (v85 << 6);
      v87 = *(v86 + 40);
      if (!v87)
      {
        goto LABEL_156;
      }

      v112 = v85;
      v88 = *(v61 + 8 * v85);
      v89 = *(v86 + 56);
      v90 = v89 + 56 * v87;
      v91 = v89 + 8;
      do
      {
        v13 = v91 - 8;
        v92 = *(v91 - 8);
        if (v92 >= 0xFFFFFFFFFFFFFFFELL && (v92 & 1) == 0)
        {
          i = *v91;
LABEL_141:
          v93 = v88;
          if (!*i)
          {
            goto LABEL_146;
          }

          goto LABEL_142;
        }

        i = *v91;
        if (v92 <= 1)
        {
          goto LABEL_141;
        }

LABEL_142:
        v94 = strlen(i);
        *v163 = i;
        *&v163[8] = v94;
        re::RigDataValue::attributeValue(v88, v163, v143);
        v93 = v143[1];
        if (v143[0] & 1) == 0 && v143[3] && (v143[4])
        {
          (*(*v143[3] + 40))();
        }

LABEL_146:
        v96 = strlen(*(v91 + 40));
        *v163 = *(v91 + 40);
        *&v163[8] = v96;
        re::RigDataValue::attributeValue(v95, v163, v143);
        v97 = v143[0];
        if (LOBYTE(v143[0]) == 1)
        {
          re::RigDataValue::operator=(v143[1], v93);
          if (v143[0])
          {
            goto LABEL_154;
          }
        }

        else
        {
          v98 = *&v143[3];
          memset(&v143[3], 0, 24);
          v99 = v143[5];
          v100 = v144;
          *&v144 = 0;
          *a1 = 0;
          *(a1 + 8) = *&v143[1];
          *(a1 + 24) = v98;
          *(a1 + 40) = v99;
          *(a1 + 48) = v100;
        }

        if (v143[3] && (v143[4] & 1) != 0)
        {
          (*(*v143[3] + 40))();
        }

        if ((v97 & 1) == 0)
        {
          goto LABEL_159;
        }

LABEL_154:
        v91 += 56;
      }

      while (v13 + 56 != v90);
      v30 = v114;
      v84 = *(v114 + 9);
      v7 = v143;
      v11 = v109;
      v61 = v106;
      v85 = v112;
LABEL_156:
      if (++v85 >= v84)
      {
LABEL_157:
        v30 = (v30 + 96);
        if (v30 == v105)
        {
LABEL_158:
          *a1 = 1;
          goto LABEL_159;
        }

        goto LABEL_22;
      }
    }
  }

  i = *(v64 + 32);
  v66 = &i[32 * v65];
  while (1)
  {
      ;
    }

    *v168 = v68;
    v69 = j[3];
    if (v69 < 0xFFFFFFFFFFFFFFFELL || (v69 & 1) != 0)
    {
      v70 = j[4];
      if (v69 > 1)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v70 = j[4];
    }

    if (!*v70)
    {
      re::DynamicArray<re::TransitionCondition *>::add(&v127, v168);
      v30 = v114;
      goto LABEL_113;
    }

LABEL_103:
    v71 = strlen(v70);
    *v163 = v70;
    *&v163[8] = v71;
    re::RigDataValue::attributeValue(v68, v163, v143);
    v72 = v143[0];
    if (LOBYTE(v143[0]) != 1)
    {
      break;
    }

    re::DynamicArray<re::TransitionCondition *>::add(&v127, &v143[1]);
    v30 = v114;
    if ((v143[0] & 1) == 0)
    {
      goto LABEL_107;
    }

LABEL_113:
    i += 32;
    if (i == v66)
    {
      goto LABEL_114;
    }
  }

  v73 = *&v143[3];
  memset(&v143[3], 0, 24);
  v74 = v143[5];
  v75 = v144;
  *&v144 = 0;
  *a1 = 0;
  *(a1 + 8) = *&v143[1];
  *(a1 + 24) = v73;
  *(a1 + 40) = v74;
  *(a1 + 48) = v75;
  v30 = v114;
LABEL_107:
  if (v143[3] && (v143[4] & 1) != 0)
  {
    (*(*v143[3] + 40))();
  }

  if (v72)
  {
    goto LABEL_113;
  }

LABEL_159:
  if (v122 && v126)
  {
    (*(*v122 + 40))();
  }

  if (v127 && v131)
  {
    (*(*v127 + 40))();
  }

  v101 = v137;
  if (v137)
  {
    v102 = 0;
    do
    {
      v103 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v132, v102);
      re::RigDataValue::~RigDataValue(v103);
      ++v102;
    }

    while (v101 != v102);
  }

  while (v133)
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v132);
  }

  if (v132)
  {
    if ((v134 & 1) == 0)
    {
      (*(*v132 + 40))();
    }
  }

  return re::FixedArray<re::RigDataValue>::deinit(&v139);
}

uint64_t re::anonymous namespace::resolveRigDataIndexInputValue(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v7 = a1 - a3;
  if (a1 < a3)
  {
    return *(a2 + 8 * a1);
  }

  v9 = a1 - (a5 + a3);
  if (a1 < a5 + a3)
  {
    if (v7 < a5)
    {
      return *(a4 + 8 * v7);
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a1 - a3, a5);
    _os_crash();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (a5 + a3 + a6 <= a1)
  {
    return 0;
  }

  if (v9 >= a6)
  {
    goto LABEL_12;
  }

  return a7 + 288 * v9;
}

uint64_t re::anonymous namespace::resolveRigDataIndexOutputValue(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = a1 - (a4 + a2);
  if (a1 < a4 + a2)
  {
    if (a1 - a2 < a4)
    {
      return *(a3 + 8 * (a1 - a2));
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a1 - a2, a4);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v6 >= a5)
  {
    goto LABEL_8;
  }

  return a6 + 288 * v6;
}

uint64_t *re::RigGraphSystem::visitTask(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (*(result + 2) != 2)
  {
    v5 = result;
    v6 = *(result + 12);
    if (v6)
    {
      v7 = 0;
      v8 = (result[4] + 8);
      while (1)
      {
        v9 = *v8;
        v8 += 6;
        if (v9 < 0)
        {
          break;
        }

        if (v6 == ++v7)
        {
          LODWORD(v7) = *(result + 12);
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
      result = re::RigGraphSystem::visitTask(*(v5[4] + 24 * v7 + 16), a2, a3);
      v10 = *(v5 + 12);
      if (v10 <= v7 + 1)
      {
        v10 = v7 + 1;
      }

      while (v10 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v5[4] + 24 * v7 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v7) = v10;
LABEL_15:
      ;
    }

    *(v5 + 2) = 2;
    v11 = *(a3 + 8);
    v12 = *(a3 + 16);
    if (v12 >= v11)
    {
      v13 = v12 + 1;
      if (v11 < v12 + 1)
      {
        if (*a3)
        {
          v14 = 2 * v11;
          v15 = v11 == 0;
          v16 = 8;
          if (!v15)
          {
            v16 = v14;
          }

          if (v16 <= v13)
          {
            v17 = v13;
          }

          else
          {
            v17 = v16;
          }

          re::DynamicArray<re::RigGraphSystem::BuildTask>::setCapacity(a3, v17);
        }

        else
        {
          re::DynamicArray<re::RigGraphSystem::BuildTask>::setCapacity(a3, v13);
          ++*(a3 + 24);
        }
      }

      v12 = *(a3 + 16);
    }

    v18 = *(a3 + 32) + 144 * v12;
    v19 = *v5;
    *(v18 + 8) = *(v5 + 2);
    *v18 = v19;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0;
    *(v18 + 16) = 0u;
    *(v18 + 52) = 0x7FFFFFFFLL;
    result = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((v18 + 16), v5 + 2);
    *(v18 + 96) = 0;
    *(v18 + 88) = 0;
    *(v18 + 72) = 0;
    *(v18 + 80) = 0;
    *(v18 + 64) = 0;
    v20 = v5[9];
    *(v18 + 64) = v5[8];
    *(v18 + 72) = v20;
    v5[8] = 0;
    v5[9] = 0;
    v21 = *(v18 + 80);
    *(v18 + 80) = v5[10];
    v5[10] = v21;
    v22 = *(v18 + 96);
    *(v18 + 96) = v5[12];
    v5[12] = v22;
    ++*(v5 + 22);
    ++*(v18 + 88);
    *(v18 + 136) = 0;
    *(v18 + 112) = 0;
    *(v18 + 120) = 0;
    *(v18 + 104) = 0;
    *(v18 + 128) = 0;
    v23 = v5[14];
    *(v18 + 104) = v5[13];
    *(v18 + 112) = v23;
    v5[13] = 0;
    v5[14] = 0;
    v24 = *(v18 + 120);
    *(v18 + 120) = v5[15];
    v5[15] = v24;
    v25 = *(v18 + 136);
    *(v18 + 136) = v5[17];
    v5[17] = v25;
    ++*(v5 + 32);
    ++*(v18 + 128);
    ++*(a3 + 16);
    ++*(a3 + 24);
    v26 = *(a2 + 32);
    v27 = *(a2 + 16);
    i = v26;
    if (v27)
    {
      v29 = 8 * v27;
      for (i = *(a2 + 32); *i != v5; i += 8)
      {
        v29 -= 8;
        if (!v29)
        {
          return result;
        }
      }
    }

    v30 = &v26[8 * v27];
    if (i != v30)
    {
      v31 = i - v26;
      if (v27 <= v31 >> 3)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (v27 - 1 > v31 >> 3)
      {
        *&v26[v31] = *(v30 - 1);
      }

      *(a2 + 16) = v27 - 1;
      ++*(a2 + 24);
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

void re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
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
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

uint64_t *re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  LODWORD(v4) = *(result + 6);
  *(result + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(result + 7);
  *(result + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(result + 9);
  *(result + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  return result;
}

void re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      v7 = *(a1 + 16);
      *&v13[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v8 = *&v13[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 1) & 0x80000000) != 0)
          {
            re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::addAsMove(a1, *(v11 - 2) % *(a1 + 24), *(v11 - 2), v11);
          }

          v11 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::addAsMove(uint64_t result, unsigned int a2, unint64_t a3, void *a4)
{
  v6 = result;
  v7 = *(result + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(result + 32);
    v8 = v7;
    if (v7 == *(result + 24))
    {
      result = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::setCapacity(result, (2 * *(result + 28)));
      a2 = a3 % *(v6 + 24);
      v8 = *(v6 + 32);
    }

    *(v6 + 32) = v8 + 1;
    v9 = *(v6 + 16);
    v10 = *(v9 + 24 * v7 + 8);
  }

  else
  {
    v9 = *(result + 16);
    v10 = *(v9 + 24 * v7 + 8);
    *(result + 36) = v10 & 0x7FFFFFFF;
  }

  *(v9 + 24 * v7 + 8) = v10 | 0x80000000;
  *(*(v6 + 16) + 24 * v7 + 8) = *(*(v6 + 16) + 24 * v7 + 8) & 0x80000000 | *(*(v6 + 8) + 4 * a2);
  *(*(v6 + 16) + 24 * v7) = a3;
  *(*(v6 + 16) + 24 * v7 + 16) = *a4;
  *(*(v6 + 8) + 4 * a2) = v7;
  ++*(v6 + 28);
  return result;
}

double re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
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

void *re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(v5, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v13 = v8[2];
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[2] = v13;
          LOBYTE(v12) = v8[3];
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v8[3] & 1;
          v11[3] = v8[3] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[4] = v8[4];
          v8[4] = &str_67;
          v8[3] = 0;
          re::StringID::destroyString((v8 + 3));
          re::StringID::destroyString(v8);
          v11 += 5;
          v8 += 5;
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

void *re::DynamicArray<re::RigGraphNodeChild>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphNodeChild>::setCapacity(v5, a2);
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
        v10 = &v8[12 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[6] = 0;
          *(v11 + 10) = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = 0;
          v13 = v8[3];
          v11[2] = v8[2];
          v8[2] = 0;
          v11[3] = v13;
          v8[3] = 0;
          v14 = v11[4];
          v11[4] = v8[4];
          v8[4] = v14;
          v15 = v11[6];
          v11[6] = v8[6];
          v8[6] = v15;
          ++*(v8 + 10);
          ++*(v11 + 10);
          v11[11] = 0;
          v11[8] = 0;
          v11[9] = 0;
          v11[7] = 0;
          *(v11 + 20) = 0;
          v16 = v8[8];
          v11[7] = v8[7];
          v8[7] = 0;
          v11[8] = v16;
          v8[8] = 0;
          v17 = v11[9];
          v11[9] = v8[9];
          v8[9] = v17;
          v18 = v11[11];
          v11[11] = v8[11];
          v8[11] = v18;
          ++*(v8 + 20);
          ++*(v11 + 20);
          re::DynamicArray<re::RigGraphNodeOutputParameter>::deinit((v8 + 7));
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 12;
          v8 += 12;
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

void *re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(v5, a2);
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
          *v11 = *v8;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[1] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[2] = v12[1];
          *v12 = 0;
          v12[1] = &str_67;
          re::StringID::destroyString(v12);
          v11 += 3;
          v8 = v12 + 2;
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

double re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 14;
        --v3;
      }

      while (v3);
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

uint64_t re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::findEntry<re::Pair<re::StringSlice,re::StringSlice,true>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v6) = 0;
    goto LABEL_12;
  }

  v6 = a4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v6);
  if (v7 == 0x7FFFFFFF)
  {
LABEL_12:
    v11 = 0x7FFFFFFF;
    goto LABEL_13;
  }

  v15 = a4 % *(a2 + 24);
  v16 = a4;
  v8 = *(a2 + 16);
  v10 = *a3;
  v9 = *(a3 + 8);
  v5 = 0x7FFFFFFF;
  v11 = 0x7FFFFFFF;
  v12 = *(a3 + 24);
  __s2 = *(a3 + 16);
  while (1)
  {
    v13 = v7;
    v14 = v8 + 56 * v7;
    if (*(v14 + 16) == v9)
    {
      result = memcmp(*(v14 + 8), v10, v9);
      if (!result && *(v14 + 32) == v12)
      {
        result = memcmp(*(v14 + 24), __s2, v12);
        if (!result)
        {
          break;
        }
      }
    }

    v7 = *(v8 + 56 * v13) & 0x7FFFFFFF;
    v11 = v13;
    if (v7 == 0x7FFFFFFF)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  v5 = v13;
LABEL_10:
  LODWORD(v6) = v15;
  a4 = v16;
LABEL_13:
  *v4 = a4;
  *(v4 + 8) = v6;
  *(v4 + 12) = v5;
  *(v4 + 16) = v11;
  return result;
}

unint64_t re::Hash<re::StringSlice>::operator()(uint64_t a1, unint64_t a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  MurmurHash3_x64_128(a1, a2, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

uint64_t re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 40);
            do
            {
              if ((*(v17 - 5) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                v19 = *(v17 - 2);
                *(v18 + 24) = *(v17 - 1);
                *(v18 + 8) = v19;
                *(v18 + 40) = *v17;
              }

              v17 += 7;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 56 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 48) = a3;
  ++*(a1 + 28);
  return v20 + 56 * v5;
}

void *re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        v10 = &v8[8 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v13 = v8[2];
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[7] = 0;
          v11[2] = v13;
          v11[3] = 0;
          *(v11 + 12) = 0;
          v11[4] = 0;
          v11[5] = 0;
          v14 = v8[4];
          v11[3] = v8[3];
          v8[3] = 0;
          v11[4] = v14;
          v8[4] = 0;
          v15 = v11[5];
          v11[5] = v8[5];
          v8[5] = v15;
          v16 = v11[7];
          v11[7] = v8[7];
          v8[7] = v16;
          ++*(v8 + 12);
          ++*(v11 + 12);
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit((v8 + 3));
          re::StringID::destroyString(v8);
          v11 += 8;
          v8 += 8;
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

void *re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = &v8[7 * v9];
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
          v13 = v8[4];
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          v11[4] = v13;
          LOBYTE(v12) = v8[5];
          v11[5] = v11[5] & 0xFFFFFFFFFFFFFFFELL | v8[5] & 1;
          v11[5] = v8[5] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[6] = v8[6];
          v8[6] = &str_67;
          v8[5] = 0;
          re::StringID::destroyString((v8 + 5));
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 7;
          v8 += 7;
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

uint64_t re::RigGraphCompilation::RigGraphCompilation(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::swap(a1, a2);
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v5;
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v6;
  ++*(a2 + 80);
  ++*(a1 + 80);
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  v7 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v7;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v8 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v8;
  v9 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v9;
  ++*(a2 + 120);
  ++*(a1 + 120);
  return a1;
}

void *re::BucketArray<re::RigDataValue,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::RigDataValue,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::RigDataValue,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
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
          result = (*(**v3 + 32))(*v3, 2304, 0);
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

uint64_t re::BucketArray<re::RigDataValue,8ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 3)
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

  return *(v3 + 8 * (a2 >> 3)) + 288 * (a2 & 7);
}

uint64_t re::BucketArray<re::RigDataValue,8ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::RigDataValue,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
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

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 288 * (v2 & 7);
}

void *re::DynamicArray<re::RigGraphSystem::BuildTask>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphSystem::BuildTask>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
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
        v10 = &v8[18 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 2) = *(v8 + 2);
          *v11 = v12;
          *(v11 + 2) = 0u;
          *(v11 + 12) = 0;
          *(v11 + 1) = 0u;
          *(v11 + 52) = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v11 + 2, v8 + 2);
          v11[12] = 0;
          *(v11 + 22) = 0;
          v11[9] = 0;
          v11[10] = 0;
          v11[8] = 0;
          v13 = v8[9];
          v11[8] = v8[8];
          v8[8] = 0;
          v11[9] = v13;
          v8[9] = 0;
          v14 = v11[10];
          v11[10] = v8[10];
          v8[10] = v14;
          v15 = v11[12];
          v11[12] = v8[12];
          v8[12] = v15;
          ++*(v8 + 22);
          ++*(v11 + 22);
          v11[17] = 0;
          v11[14] = 0;
          v11[15] = 0;
          v11[13] = 0;
          *(v11 + 32) = 0;
          v16 = v8[14];
          v17 = v8 + 13;
          v11[13] = v8[13];
          v11[14] = v16;
          v8[13] = 0;
          v8[14] = 0;
          v18 = v11[15];
          v11[15] = v8[15];
          v8[15] = v18;
          v19 = v11[17];
          v11[17] = v8[17];
          v8[17] = v19;
          ++*(v8 + 32);
          ++*(v11 + 32);
          re::DynamicArray<unsigned long>::deinit((v8 + 13));
          re::DynamicArray<unsigned long>::deinit((v8 + 8));
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v8 + 2);
          v8 += 18;
          v11 += 18;
        }

        while (v17 + 5 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::internal::AnimationHandoffBehavior::AnimationHandoffBehavior(uint64_t a1, re::AnimationManager *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v40 = *MEMORY[0x1E69E9840];
  *a1 = a3;
  *(a1 + 8) = *a4;
  *(a1 + 16) = &unk_1F5CADE60;
  v8 = a1 + 16;
  *(a1 + 24) = 5;
  v9 = a1 + 32;
  v10 = re::Timeline::Timeline(a1 + 32, 11);
  *(v7 + 152) = 0u;
  v11 = (v7 + 152);
  *(v7 + 104) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  *(v7 + 32) = &unk_1F5CADEB8;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 1;
  *(v7 + 192) = 0;
  *(v7 + 200) = 0;
  *(v7 + 28) = 2;
  if (*(a4 + 4) == 1)
  {
    *(v7 + 120) = 1;
    *(v7 + 124) = *(a4 + 8);
  }

  if (*(a4 + 12) == 1)
  {
    *(v7 + 128) = 1;
    *(v7 + 132) = *(a4 + 16);
  }

  *(v7 + 112) = *(a4 + 20);
  *(v7 + 144) = v8;
  *(v7 + 48) = 0;
  v12 = re::animationLogObjects(v10);
  if (re::AnimationLogObjects::loggingEnabled(v12))
  {
    re::StringID::operator=<15ul>((v7 + 56));
  }

  v13 = *(a3 + 248);
  v14 = re::DataArray<re::internal::TimelineTreeInfo>::handle(a2 + 64 * v13 + 72, a3);
  re::AnimationManager::blendFactorAsBindPoint(a2, v14 & 0xFFFFFFFFFFFFFFLL | (v13 << 56), 0, &v27);
  if (*(a3 + 184))
  {
    v16 = *(a3 + 192);
    *v16 = 1;
    *(v16 + 8) = 0;
    v17 = re::animationLogObjects(v15);
    v18 = re::AnimationLogObjects::loggingEnabled(v17);
    if (!v18)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v28[5] = 0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    memset(buf, 0, sizeof(buf));
    v7 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v29 = 136315906;
    *&v29[4] = "operator[]";
    v30 = 1024;
    v31 = 468;
    v32 = 2048;
    v33 = 0;
    v34 = 2048;
    v35 = 0;
    _os_log_send_and_compose_impl();
    v18 = _os_crash_msg();
    __break(1u);
  }

  v24 = *re::animationLogObjects(v18);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 48))
    {
      v25 = *(a3 + 56);
    }

    else
    {
      v25 = a3 + 49;
    }

    v26 = re::BindPoint::overrideValueUntyped(&v27);
    *buf = 136315650;
    *&buf[4] = v25;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *&buf[24] = v26;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "ANIM: Start fade animation on timeline tree %s (%p), target: %p", buf, 0x20u);
  }

LABEL_9:
  *v29 = 0;
  *buf = 1;
  buf[8] = 0;
  *&buf[12] = 0x80000000;
  *&buf[16] = "";
  started = re::AnimationManager::startAnimation(a2, v9, 0, &v27, buf, 1, a3, v29, 0, 0);
  *(v7 + 152) = started;
  *(v7 + 160) = v20;
  if (*v29)
  {

    started = *v11;
  }

  if (started)
  {
    v21 = *(a3 + 160);
    v22 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(started + (*(v7 + 160) >> 56 << 6) + 72, *(v7 + 160));
    if (v22)
    {
      *(v22 + 160) = v21;
    }
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v28);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v28);
  return v7;
}

re::StringID *re::StringID::operator=<15ul>(re::StringID *a1)
{
  re::StringID::destroyString(a1);
  *a1 = 2 * re::internal::compileTimeHornerHash<15ul>(31, "Fade animation", 0, 0, 14);
  *(a1 + 1) = "Fade animation";
  return a1;
}

void re::internal::AnimationHandoffBehavior::~AnimationHandoffBehavior(re::internal::AnimationHandoffBehavior *this)
{
  re::AnimationController::stop((this + 152), 0.0);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 168);
  *(this + 4) = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 72));
  re::StringID::destroyString((this + 56));
}

void re::FloatAnimation::~FloatAnimation(re::FloatAnimation *this)
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

uint64_t re::internal::AnimationHandoffBehavior::update(re::internal::AnimationHandoffBehavior *this, re::AnimationManager *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      re::AnimationController::clock((this + 152), 0, v8);
      if (LOBYTE(v8[0]) == 1)
      {
        re::AnimationManager::removePending(a2, *this, this);
        re::AnimationManager::remove(a2, *this, 0);
        return 1;
      }

      return 0;
    }

    if (v4 != 2)
    {
      goto LABEL_17;
    }

LABEL_10:
    re::AnimationController::clock((this + 152), 0, v8);
    return LOBYTE(v8[0]) == 1;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    v5 = *this;
    if (!*(*this + 184))
    {
      memset(v8, 0, sizeof(v8));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v6 = *(*(v5 + 24) + 8);
    if (v6 == 1.0 || fabsf(v6 + -1.0) < (((fabsf(v6) + 1.0) + 1.0) * 0.00001))
    {
      re::AnimationManager::removePending(a2, v5, this);
      return 1;
    }

    return 0;
  }

LABEL_17:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected animation handoff type.", "!Unreachable code", "update", 83);
  result = _os_crash();
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::add(uint64_t a1, void *a2)
{
  result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = *(a1 + 8);
  *(v5 + 8 * v6) = *a2;
  *(a1 + 8) = v6 + 1;
  *(a1 + 16) += 2;
  return result;
}

double re::HermiteEase::clone(re::HermiteEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 16, 8);
  result = *(this + 1);
  *(v4 + 8) = result;
  *v4 = &unk_1F5CADE60;
  return result;
}

float re::HermiteEase::easeIn(re::HermiteEase *this, float a2)
{
  v2 = 0.0;
  if (a2 > 0.0)
  {
    v2 = 1.0;
    if (a2 < 1.0)
    {
      return ((a2 * a2) * (3.0 - a2)) * 0.5;
    }
  }

  return v2;
}

uint64_t re::Timeline::Timeline(uint64_t a1, int a2)
{
  *a1 = &unk_1F5CAD3A8;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  return a1;
}

uint64_t re::internal::compileTimeHornerHash<15ul>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  result = a5 - a4;
  if (a5 - a4 <= 4)
  {
    if (result <= 1)
    {
      if (!result)
      {
        return result;
      }

      if (result == 1)
      {
        v10 = 31 * a3;
        return v10 + *(a2 + v6);
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          v10 = 961 * a3 - *(a2 + a4) + 32 * *(a2 + a4);
          v6 = a4 + 1;
          return v10 + *(a2 + v6);
        case 3:
          v10 = 29791 * a3 + 961 * *(a2 + a4) - *(a2 + a4 + 1) + 32 * *(a2 + a4 + 1);
          v6 = a4 + 2;
          return v10 + *(a2 + v6);
        case 4:
          v10 = 923521 * a3 + 29791 * *(a2 + a4) + 961 * *(a2 + a4 + 1) - *(a2 + a4 + 2) + 32 * *(a2 + a4 + 2);
          v6 = a4 + 3;
          return v10 + *(a2 + v6);
      }
    }

LABEL_25:
    v11 = a4 + (result >> 1);
    v12 = re::internal::compileTimeHornerHash<15ul>(a1, a2, a3, a4, v11 - 1);
    v6 = a5 - 1;
    v10 = re::internal::compileTimeHornerHash<15ul>(a1, a2, *(a2 + v11 - 1) + v12 * a1, v11, a5 - 1) * a1;
    return v10 + *(a2 + v6);
  }

  if (result > 7)
  {
    switch(result)
    {
      case 8:
        v10 = 0xC694446F01 * a3 + 0x667E12CDFLL * *(a2 + a4) + 887503681 * *(a2 + a4 + 1) + 28629151 * *(a2 + a4 + 2) + 923521 * *(a2 + a4 + 3) + 29791 * *(a2 + a4 + 4) + 961 * *(a2 + a4 + 5) - *(a2 + a4 + 6) + 32 * *(a2 + a4 + 6);
        v6 = a4 + 7;
        return v10 + *(a2 + v6);
      case 9:
        v10 = 0x180BF449711FLL * a3 + 0xC694446F01 * *(a2 + a4) + 0x667E12CDFLL * *(a2 + a4 + 1) + 887503681 * *(a2 + a4 + 2) + 28629151 * *(a2 + a4 + 3) + 923521 * *(a2 + a4 + 4) + 29791 * *(a2 + a4 + 5) + 961 * *(a2 + a4 + 6) - *(a2 + a4 + 7) + 32 * *(a2 + a4 + 7);
        v6 = a4 + 8;
        return v10 + *(a2 + v6);
      case 10:
        v10 = 0x2E97294E4B2C1 * a3 + 0x180BF449711FLL * *(a2 + a4) + 0xC694446F01 * *(a2 + a4 + 1) + 0x667E12CDFLL * *(a2 + a4 + 2) + 887503681 * *(a2 + a4 + 3) + 28629151 * *(a2 + a4 + 4) + 923521 * *(a2 + a4 + 5) + 29791 * *(a2 + a4 + 6) + 961 * *(a2 + a4 + 7) - *(a2 + a4 + 8) + 32 * *(a2 + a4 + 8);
        v6 = a4 + 9;
        return v10 + *(a2 + v6);
    }

    goto LABEL_25;
  }

  if (result == 5)
  {
    v10 = 28629151 * a3 + 923521 * *(a2 + a4) + 29791 * *(a2 + a4 + 1) + 961 * *(a2 + a4 + 2) - *(a2 + a4 + 3) + 32 * *(a2 + a4 + 3);
    v6 = a4 + 4;
    return v10 + *(a2 + v6);
  }

  if (result == 6)
  {
    v10 = 887503681 * a3 + 28629151 * *(a2 + a4) + 923521 * *(a2 + a4 + 1) + 29791 * *(a2 + a4 + 2) + 961 * *(a2 + a4 + 3) - *(a2 + a4 + 4) + 32 * *(a2 + a4 + 4);
    v6 = a4 + 5;
    return v10 + *(a2 + v6);
  }

  if (result != 7)
  {
    goto LABEL_25;
  }

  v10 = 0x667E12CDFLL * a3 + 887503681 * *(a2 + a4) + 28629151 * *(a2 + a4 + 1) + 923521 * *(a2 + a4 + 2) + 29791 * *(a2 + a4 + 3) + 961 * *(a2 + a4 + 4) - *(a2 + a4 + 5) + 32 * *(a2 + a4 + 5);
  v6 = a4 + 6;
  return v10 + *(a2 + v6);
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 4;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 4)
    {
      return result;
    }

    v5 = 8;
  }

  else
  {
    v4 = *(result + 3);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(result, a2);
}

void *re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
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

void re::Skeleton::init(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v104 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 8);
  if (!v8)
  {
    v9 = v99;
    v11 = v100.i64[1];
    v10 = v100.i64[0];
    *a7 = 0;
    v12 = 1003;
LABEL_59:
    *(a7 + 8) = v12;
    *(a7 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a7 + 24) = v9;
    *(a7 + 40) = v10;
    *(a7 + 48) = v11;
    return;
  }

  if (v8 >= 0xFFFFFFFF)
  {
LABEL_58:
    v9 = v99;
    v11 = v100.i64[1];
    v10 = v100.i64[0];
    *a7 = 0;
    v12 = 1032;
    goto LABEL_59;
  }

  v13 = a5[1];
  if (v8 != v13)
  {
    re::DynamicString::format("Mismatching parent indices count (%u != %zu).", &v99, *(a4 + 8), v13);
    goto LABEL_58;
  }

  j = a6;
  if (v8 != *(a6 + 8))
  {
    re::DynamicString::format("Mismatching local rest pose joint count (%u != %zu).", &v99, *(a4 + 8), v8);
    v9 = v99;
    v11 = v100.i64[1];
    v10 = v100.i64[0];
    *a7 = 0;
    v12 = 1004;
    goto LABEL_59;
  }

  v15 = a4;
  v17 = a2;
  for (i = 0; i != v8; ++i)
  {
    v20 = *(*a5 + 4 * i);
    if (v20 != -1 && i <= v20)
    {
      re::DynamicString::format("Joint parent (%u) must proceed child (%u) in joint order.", &v99, *(*a5 + 4 * i), i);
      v9 = v99;
      v11 = v100.i64[1];
      v10 = v100.i64[0];
      *a7 = 0;
      v12 = 1031;
      goto LABEL_59;
    }
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init((a1 + 17), a2, 2 * v8);
  v23 = 0;
  *v97 = 0;
  v24 = &str_67;
  do
  {
    v25 = v23;
    v26 = *(v15 + 8);
    if (v26 <= v23)
    {
      goto LABEL_67;
    }

    v27 = (*v15 + 16 * v23);
    v28 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), v27, v97);
    if (*v28 != *v97)
    {
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 17);
      re::DynamicString::format("Duplicate joint name found: %s", &v99, v27->var1);
      v9 = v99;
      v11 = v100.i64[1];
      v10 = v100.i64[0];
      *a7 = 0;
      v12 = 1030;
      goto LABEL_59;
    }

    var1 = v27->var1;
    v30 = strrchr(var1, 47);
    if (v30)
    {
      var1 = v30 + 1;
    }

    v99.i64[0] = 0;
    v99.i64[1] = &str_67;
    v31 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), &v99, v97);
    if (v99.i8[0])
    {
      if (v99.i8[0])
      {
      }
    }

    v23 = *v97 + 1;
    *v97 = v23;
  }

  while (v23 < v8);
  v94 = j;
  re::StringID::operator=(a1, a3);
  re::FixedArray<re::StringID>::init<>(a1 + 2, v17, v8);
  re::FixedArray<re::StringID>::operator=((a1 + 2), v15);
  re::FixedArray<int>::init<>(a1 + 5, v17, v8);
  re::FixedArray<int>::operator=((a1 + 5), a5);
  v96 = v17;
  re::FixedArray<re::FixedArray<unsigned int>>::init<>(a1 + 8, v17, v8);
  v15 = 0;
  v24 = 1;
  do
  {
    v32 = v15 + 1;
    if (v15 + 1 < v8)
    {
      LODWORD(v33) = 0;
      v17 = a1[6];
      v34 = v24;
      while (v17 > v34)
      {
        if (v15 == *(a1[7] + 4 * v34))
        {
          v33 = (v33 + 1);
        }

        else
        {
          v33 = v33;
        }

        if (v8 == ++v34)
        {
          goto LABEL_33;
        }
      }

      v103 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      *&v97[14] = 468;
      *&v97[18] = 2048;
      *&v97[20] = v34;
      *&v97[28] = 2048;
      *&v97[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_64:
      v103 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      *&v97[14] = 468;
      *&v97[18] = 2048;
      *&v97[20] = v34;
      *&v97[28] = 2048;
      *&v97[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_65:
      v103 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      *&v97[14] = 468;
      *&v97[18] = 2048;
      *&v97[20] = v15;
      *&v97[28] = 2048;
      *&v97[30] = j;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_66:
      v103 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      *&v97[14] = 468;
      *&v97[18] = 2048;
      *&v97[20] = 0;
      *&v97[28] = 2048;
      *&v97[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_67:
      re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v25, v26, v94);
      _os_crash();
      __break(1u);
LABEL_68:
      v103 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      *&v97[14] = 468;
      *&v97[18] = 2048;
      *&v97[20] = v15;
      *&v97[28] = 2048;
      *&v97[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_69:
      re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, j, v37);
      _os_crash();
      __break(1u);
LABEL_70:
      v103 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      *&v97[14] = 468;
      *&v97[18] = 2048;
      *&v97[20] = v15;
      *&v97[28] = 2048;
      *&v97[30] = v24;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_71:
      v103 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      *&v97[14] = 468;
      *&v97[18] = 2048;
      *&v97[20] = j;
      *&v97[28] = 2048;
      *&v97[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_72:
      v103 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      *&v97[14] = 468;
      *&v97[18] = 2048;
      *&v97[20] = j;
      *&v97[28] = 2048;
      *&v97[30] = v24;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_73:
      v103 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      *&v97[14] = 468;
      *&v97[18] = 2048;
      *&v97[20] = j;
      *&v97[28] = 2048;
      *&v97[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_74:
      v103 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      *&v97[14] = 468;
      *&v97[18] = 2048;
      *&v97[20] = j;
      *&v97[28] = 2048;
      *&v97[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v33 = 0;
LABEL_33:
    v17 = a1[9];
    if (v17 <= v15)
    {
      goto LABEL_68;
    }

    re::FixedArray<int>::init<>((a1[10] + 24 * v15), v96, v33);
    if (v32 < v8)
    {
      v17 = a1[6];
      v34 = v24;
      while (v17 > v34)
      {
        if (v15 == *(a1[7] + 4 * v34))
        {
          j = a1[9];
          if (j <= v15)
          {
            goto LABEL_65;
          }

          v35 = a1[10] + 24 * v15;
          if (!*(v35 + 8))
          {
            goto LABEL_66;
          }

          **(v35 + 16) = v34;
        }

        if (v8 == ++v34)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_64;
    }

LABEL_42:
    ++v24;
    ++v15;
  }

  while (v32 != v8);
  v17 = v96;
  re::FixedArray<re::GenericSRT<float>>::init<>(a1 + 11, v96, v8);
  re::FixedArray<re::GenericSRT<float>>::operator=((a1 + 11), v94);
  re::FixedArray<re::Matrix4x4<float>>::init<>(a1 + 14, v96, v8);
  for (j = 0; j != v8; ++j)
  {
    v37 = a5[1];
    if (v37 <= j)
    {
      goto LABEL_69;
    }

    v15 = *(*a5 + 4 * j);
    if (v15 == -1)
    {
      v17 = a1[12];
      if (v17 <= j)
      {
        goto LABEL_73;
      }

      v17 = a1[15];
      if (v17 <= j)
      {
        goto LABEL_74;
      }

      v73 = (a1[13] + 48 * j);
      v71 = v73[2];
      v71.i32[3] = 1.0;
      v74 = v73[1].f32[0];
      v75 = v73[1].f32[1];
      v76 = v74 + v74;
      v77 = v73[1].f32[2];
      v78 = v73[1].f32[3];
      v79 = (v74 + v74) * v77;
      v80 = (v75 + v75) * v78;
      v81 = v77 * (v75 + v75);
      v82 = (v74 + v74) * v78;
      v83 = v74 * (v74 + v74);
      v84 = v75 * (v75 + v75);
      v85.i32[3] = 0;
      v85.f32[0] = v79 + v80;
      v85.f32[1] = v81 - v82;
      v85.f32[2] = 1.0 - (v83 + v84);
      v86 = v76 * v75;
      v87 = (v77 + v77) * v78;
      v88 = v77 * (v77 + v77);
      *&v89 = v81 + v82;
      v90.f32[0] = v86 - v87;
      v90.f32[1] = 1.0 - (v83 + v88);
      v90.i64[1] = v89;
      v72 = vmulq_laneq_f32(v85, *v73, 2);
      v91 = v86 + v87;
      v92.i32[3] = 0;
      v92.f32[0] = 1.0 - (v88 + v84);
      v92.f32[1] = v91;
      v92.f32[2] = v79 - v80;
      v69 = vmulq_n_f32(v92, COERCE_FLOAT(*v73));
      v70 = vmulq_n_f32(v90, COERCE_FLOAT(HIDWORD(v73->i64[0])));
      v39 = a1[16];
    }

    else
    {
      v24 = a1[15];
      if (v24 <= v15)
      {
        goto LABEL_70;
      }

      v17 = a1[12];
      if (v17 <= j)
      {
        goto LABEL_71;
      }

      v38 = 0;
      v39 = a1[16];
      v40 = (a1[13] + 48 * j);
      v41 = v40[1].f32[0];
      v42 = v40[1].f32[1];
      v43 = v41 + v41;
      v44 = v42 + v42;
      v45 = v40[1].f32[2];
      v46 = v40[1].f32[3];
      v47 = v45 + v45;
      v48 = v41 * (v41 + v41);
      v49 = v42 * (v42 + v42);
      v50 = v45 * (v45 + v45);
      v51 = v43 * v42;
      v52 = v43 * v45;
      v53 = v44 * v45;
      v54 = v44 * v46;
      v55 = v47 * v46;
      v56.i32[3] = 0;
      v56.f32[0] = 1.0 - (v49 + v50);
      v56.f32[1] = v51 + v55;
      v56.f32[2] = v52 - v54;
      v57 = v43 * v46;
      v58 = 1.0 - (v48 + v50);
      v59.i32[3] = 0;
      v59.f32[0] = v51 - v55;
      v59.f32[1] = v58;
      v59.f32[2] = v53 + v57;
      v60 = (v39 + (v15 << 6));
      v61.i32[3] = 0;
      v61.f32[0] = v52 + v54;
      v61.f32[1] = v53 - v57;
      v61.f32[2] = 1.0 - (v48 + v49);
      v62 = vmulq_laneq_f32(v61, *v40, 2);
      v63 = v40[2];
      v63.i32[3] = 1.0;
      v64 = *v60;
      v65 = v60[1];
      v66 = v60[2];
      v67 = v60[3];
      v68 = vmulq_n_f32(v59, COERCE_FLOAT(HIDWORD(v40->i64[0])));
      *v97 = vmulq_n_f32(v56, COERCE_FLOAT(*v40));
      *&v97[16] = v68;
      *&v97[32] = v62;
      v98 = v63;
      do
      {
        *(&v99 + v38) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, COERCE_FLOAT(*&v97[v38])), v65, *&v97[v38], 1), v66, *&v97[v38], 2), v67, *&v97[v38], 3);
        v38 += 16;
      }

      while (v38 != 64);
      if (v24 <= j)
      {
        goto LABEL_72;
      }

      v69 = v99;
      v70 = v100;
      v72 = v101;
      v71 = v102;
    }

    v93 = (v39 + (j << 6));
    *v93 = v69;
    v93[1] = v70;
    v93[2] = v72;
    v93[3] = v71;
  }

  *a7 = 1;
}

void re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 8) = *(v7 + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *(v7 + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v7 + 16) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v7 + 24) = *a3;
  result = v7 + 24;
  ++*(a1 + 40);
  return result;
}

_anonymous_namespace_ *re::FixedArray<re::StringID>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::StringID>::copy(a1, a2);
  }

  return a1;
}

void re::FixedArray<re::FixedArray<unsigned int>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
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

double re::Skeleton::deinit(re::Skeleton *this)
{
  re::StringID::invalid(&v4);
  v2 = re::StringID::operator=(this, &v4);
  if (v4)
  {
    if (v4)
    {
    }
  }

  re::FixedArray<re::StringID>::deinit(this + 2);
  re::FixedArray<CoreIKTransform>::deinit(this + 5);
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 8);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 17);
}

uint64_t re::Skeleton::estimatedFootprint(const char **this)
{
  if (*this)
  {
    v2 = strlen(this[1]) + 185;
  }

  else
  {
    v2 = 184;
  }

  v3 = this[3];
  v4 = v2 + 16 * v3;
  if (v3)
  {
    v5 = (this[4] + 8);
    do
    {
      if (*(v5 - 1))
      {
        v6 = strlen(*v5) + 1;
      }

      else
      {
        v6 = 0;
      }

      v4 += v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v7 = v4 + 4 * this[6] + 48 * this[12] + (&this[15][*(this + 40)] << 6);
  v8 = *(this + 42);
  if (v8)
  {
    v9 = 0;
    v10 = this[19];
    while (1)
    {
      v11 = *v10;
      v10 += 32;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(this + 42);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 != v8)
  {
    v12 = this[19];
    do
    {
      v13 = &v12[32 * v9];
      v15 = *(v13 + 2);
      v14 = v13 + 8;
      if (v15)
      {
        v16 = strlen(*(v14 + 1)) + 1;
      }

      else
      {
        v16 = 0;
      }

      v7 += v16;
      if (v8 <= v9 + 1)
      {
        v17 = v9 + 1;
      }

      else
      {
        v17 = v8;
      }

      while (v17 - 1 != v9)
      {
        LODWORD(v9) = v9 + 1;
        if ((*&v12[32 * v9] & 0x80000000) != 0)
        {
          goto LABEL_29;
        }
      }

      LODWORD(v9) = v17;
LABEL_29:
      ;
    }

    while (v9 != v8);
  }

  return v7;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(int a1)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info) = &unk_1F5CADF68;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::introspect_Matrix4x4F(1);
  if ((re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info, 0);
    qword_1EE186DD0 = 0x1800000004;
    dword_1EE186DD8 = v7;
    word_1EE186DDC = 0;
    *&xmmword_1EE186DE0 = 0;
    *(&xmmword_1EE186DE0 + 1) = 0xFFFFFFFFLL;
    qword_1EE186DF0 = v6;
    unk_1EE186DF8 = 0;
    re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info = &unk_1F5CADF68;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info, &v14);
    if (BYTE8(v14))
    {
      v10 = v15;
    }

    else
    {
      v10 = &v14 + 9;
    }

    if (v14 && (BYTE8(v14) & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v14 = *(v6 + 32);
    xmmword_1EE186DE0 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(v5);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(int a1)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info) = &unk_1F5CAE000;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::introspect_SRT(1);
  if ((re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info, 0);
    qword_1EE186F38 = 0x1800000004;
    dword_1EE186F40 = v7;
    word_1EE186F44 = 0;
    *&xmmword_1EE186F48 = 0;
    *(&xmmword_1EE186F48 + 1) = 0xFFFFFFFFLL;
    qword_1EE186F58 = v6;
    unk_1EE186F60 = 0;
    re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info = &unk_1F5CAE000;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info, &v14);
    if (BYTE8(v14))
    {
      v10 = v15;
    }

    else
    {
      v10 = &v14 + 9;
    }

    if (v14 && (BYTE8(v14) & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v14 = *(v6 + 32);
    xmmword_1EE186F48 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(v5);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info) = &unk_1F5CAE098;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::StringID>::get(1, a2);
  if ((re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info, 0);
    qword_1EE186E18 = 0x1800000004;
    dword_1EE186E20 = v8;
    word_1EE186E24 = 0;
    *&xmmword_1EE186E28 = 0;
    *(&xmmword_1EE186E28 + 1) = 0xFFFFFFFFLL;
    qword_1EE186E38 = v7;
    unk_1EE186E40 = 0;
    re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info = &unk_1F5CAE098;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info, &v15);
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
    xmmword_1EE186E28 = v14;
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

  return &re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info) = &unk_1F5CAE130;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint32_t(1, a2);
  if ((re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info, 0);
    qword_1EE186CB0 = 0x1800000004;
    dword_1EE186CB8 = v8;
    word_1EE186CBC = 0;
    *&xmmword_1EE186CC0 = 0;
    *(&xmmword_1EE186CC0 + 1) = 0xFFFFFFFFLL;
    qword_1EE186CD0 = v7;
    unk_1EE186CD8 = 0;
    re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info = &unk_1F5CAE130;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info, &v15);
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
    xmmword_1EE186CC0 = v14;
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

  return &re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info) = &unk_1F5CAE1C8;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::StringID>::get(1, a2);
  v8 = re::introspect_uint32_t(1, v7);
  if ((re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v9 = v8;
    re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized = 1;
    v10 = *(v8 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info, 0);
    qword_1EE186270 = 0x3000000007;
    dword_1EE186278 = v10;
    word_1EE18627C = 0;
    *&xmmword_1EE186280 = 0;
    *(&xmmword_1EE186280 + 1) = 0xFFFFFFFFLL;
    qword_1EE186290 = v6;
    unk_1EE186298 = 0;
    qword_1EE1862A0 = v9;
    unk_1EE1862A8 = 0;
    re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info = &unk_1F5CAE1C8;
    re::IntrospectionRegistry::add(v11, v12);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info, &v19);
    if (BYTE8(v19))
    {
      v13 = v20;
    }

    else
    {
      v13 = &v19 + 9;
    }

    if (v19 && (BYTE8(v19) & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    v14 = v6[2];
    v18 = *(v9 + 32);
    v19 = v14;
    xmmword_1EE186280 = v17;
    if (v21)
    {
      if (v21)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v15 = re::introspectionSharedMutex(v8);
    std::__shared_mutex_base::unlock(v15);
  }

  return &re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
}

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        v7 = *(a2 + 16);
        *(result + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

unint64_t *re::FixedArray<re::StringID>::copy(unint64_t *result, uint64_t **a2)
{
  v2 = result[1];
  if (v2 == a2[1])
  {
    if (v2)
    {
      v3 = *a2;
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
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

re::IntrospectionFixedArrayBase *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(re::IntrospectionFixedArrayBase *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CAE268;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  return this;
}

void *re::IntrospectionFixedArray<re::Matrix4x4<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::Matrix4x4<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionFixedArrayBase::childInfo(re::IntrospectionFixedArrayBase *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 603, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::IntrospectionFixedArray<re::Matrix4x4<float>>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<re::Matrix4x4<float>>::init(uint64_t a1, uint64_t *a2, re *a3, int a4, unint64_t a5)
{
  re::FixedArray<re::Matrix4x4<float>>::init<>(a2, a3, a5);
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
      v10 += 64;
    }

    while (a5 != v11);
  }
}

uint64_t re::IntrospectionFixedArray<re::Matrix4x4<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + (a3 << 6);
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + (a3 << 6);
}

void re::IntrospectionFixedArrayBase::~IntrospectionFixedArrayBase(re::IntrospectionFixedArrayBase *this)
{
  *this = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArrayBase::init(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "init", 593);
  _os_crash();
  __break(1u);
}

void re::IntrospectionFixedArrayBase::deinit(re::IntrospectionFixedArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "deinit", 594);
  _os_crash();
  __break(1u);
}

void re::IntrospectionFixedArrayBase::size(re::IntrospectionFixedArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "size", 595);
  _os_crash();
  __break(1u);
}

void re::IntrospectionFixedArrayBase::isInitialized(re::IntrospectionFixedArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "isInitialized", 596);
  _os_crash();
  __break(1u);
}

void re::IntrospectionFixedArrayBase::elementAt(re::IntrospectionFixedArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "elementAt", 597);
  _os_crash();
  __break(1u);
}

{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "elementAt", 598);
  _os_crash();
  __break(1u);
}

void *re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<re::Matrix4x4<float>>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + (v1 << 6);
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<re::GenericSRT<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::GenericSRT<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::GenericSRT<float>>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void *re::IntrospectionFixedArray<re::GenericSRT<float>>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  result = re::FixedArray<re::GenericSRT<float>>::init<>(a2, a3, a5);
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (a2[1] <= v12)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v11));
      ++v12;
      v11 += 48;
    }

    while (a5 != v12);
  }

  return result;
}

uint64_t re::IntrospectionFixedArray<re::GenericSRT<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 48 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 48 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  v8 = re::FixedArray<re::GenericSRT<float>>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + 48 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<re::StringID>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::StringID>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::StringID>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void *re::IntrospectionFixedArray<re::StringID>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  result = re::FixedArray<re::StringID>::init<>(a2, a3, a5);
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (a2[1] <= v12)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v11));
      ++v12;
      v11 += 16;
    }

    while (a5 != v12);
  }

  return result;
}

uint64_t re::IntrospectionFixedArray<re::StringID>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 16 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 16 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::StringID>::deinit(a1);

  return re::FixedArray<re::StringID>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(void *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::StringID>::deinit(a1);
  v8 = re::FixedArray<re::StringID>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + 16 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<unsigned int>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<unsigned int>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<unsigned int>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<unsigned int>::init(uint64_t a1, uint64_t *a2, re *a3, int a4, unint64_t a5)
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

uint64_t re::IntrospectionFixedArray<unsigned int>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
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

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, re **a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v26);
  if (v26)
  {
    *a5 = v26;
  }

  else
  {
    *&v19 = 0x449AD97C4B77BED4;
    *(&v19 + 1) = "_CompareFunc";
    v10 = re::TypeRegistry::typeID(a1, &v19, &v25);
    if (v19)
    {
      if (v19)
      {
      }
    }

    if (!v25)
    {
      v21[0] = 0x449AD97C4B77BED4;
      v21[1] = "_CompareFunc";
      re::TypeRegistry::declareType(v21, a1, 8, 1u, 0, &v19);
      v25 = v19;
      if (v21[0])
      {
        if (v21[0])
        {
        }
      }
    }

    re::TypeRegistry::typeInfo(a1, a3, &v19);
    re::TypeInfo::TypeInfo(v24, &v19 + 8);
    if (!v25 || (v12 = *v24[2], *&v19 = *(&v25 + 1), *(&v19 + 1) = v12, v20 = -1, (v13 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v24[0] + 768, &v19)) == 0) || !*v13)
    {
      v14 = *a3;
      v22 = v25;
      v23 = v14;
      re::TypeRegistry::addAttribute(a1, &v23, -1, &v22, re::internal::less<re::StringID>, 0);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    re::TypeBuilder::TypeBuilder(&v19, v21);
    v15 = *a3;
    v17 = *a4;
    v18 = v15;
    re::TypeBuilder::beginDictionaryType(&v19, a2, 1, 0x30uLL, 8uLL, &v18, &v17);
    re::TypeBuilder::setConstructor(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setDictionaryAccessors(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::setDictionaryIterator(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(&v19, a1, a5);
    re::TypeBuilder::~TypeBuilder(&v19, v16);
    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

re::IntrospectionHashTableBase *re::IntrospectionHashTableBase::IntrospectionHashTableBase(re::IntrospectionHashTableBase *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CAE2E8;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *(this + 9) = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 64);
  return this;
}

void *re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionHashTableBase::childInfo(re::IntrospectionHashTableBase *this, uint64_t a2)
{
  if (!a2)
  {
    v4 = 48;
    return *(this + v4);
  }

  if (a2 == 1)
  {
    v4 = 64;
    return *(this + v4);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "!Unreachable code", "childInfo", 862, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

double re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::IntrospectionHashTableBase::~IntrospectionHashTableBase(re::IntrospectionHashTableBase *this)
{
  *this = &unk_1F5CAE2E8;
  v2 = this + 48;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 64);
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CAE2E8;
  v2 = this + 48;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 64);
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionHashTableBase::setCapacity(re::IntrospectionHashTableBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "setCapacity", 849);
  _os_crash();
  __break(1u);
}

void re::IntrospectionHashTableBase::size(re::IntrospectionHashTableBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "size", 850);
  _os_crash();
  __break(1u);
}

void re::IntrospectionHashTableBase::clear(re::IntrospectionHashTableBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "clear", 851);
  _os_crash();
  __break(1u);
}

void re::IntrospectionHashTableBase::addElement(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "addElement", 852);
  _os_crash();
  __break(1u);
}

void re::IntrospectionHashTableBase::iterate(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "iterate", 853);
  _os_crash();
  __break(1u);
}

void re::IntrospectionHashTableBase::destroyKey(re::IntrospectionHashTableBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "destroyKey", 854);
  _os_crash();
  __break(1u);
}

void re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 32;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, _DWORD *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v13, v12);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = *a3;
    v9 = v8 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 24) = *a3;
    return v10 + 24;
  }

  return v9;
}

uint64_t std::function<BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a2;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v7, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::less<re::StringID>(v5);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

char *re::AnimationClock::update(char *result, uint64_t a2, uint64_t a3, float a4)
{
  if (*(result + 17) == 1)
  {
    if (*a2)
    {
      v4 = *(a2 + 8);
      *(result + 17) = 1;
      *(result + 1) = v4;
      v5 = *(a3 + 8);
      v6 = fabsf(v5);
      v7 = v4 * v6 - (v6 * *a3);
      if (v7 >= 0.0)
      {
        v15 = v7;
        v8 = *(a3 + 4);
        if (v8 >= v15 || vabds_f32(v15, v8) < (((fabsf(v15) + fabsf(v8)) + 1.0) * 0.00001))
        {
          *result = 3;
          ++*(result + 5);
        }

        else if (*(a3 + 25))
        {
          *result = 5;
        }

        else
        {
          *result = 1;
          if (v8 <= 0.0)
          {
            goto LABEL_11;
          }

          v7 = v8;
        }

LABEL_33:
        v20 = v5 * a4;
        v22 = *(a3 + 12);
        v21 = *(a3 + 16);
        if (v8 <= (v21 - v22))
        {
          v23 = v8;
        }

        else
        {
          v23 = v21 - v22;
        }

        v24 = *(a3 + 20);
        v25 = v7 + v24;
        v26 = fabsf(v23);
        if (v26 < 0.00001 || (LODWORD(v23) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          if (*(a3 + 24))
          {
            v31 = v26 < 0.00001;
          }

          else
          {
            v31 = 0;
          }

          v32 = 0.0;
          if (!v31)
          {
            v32 = v7 + v24;
          }

          if (v5 >= 0.0)
          {
            v33 = v22 + v32;
          }

          else
          {
            v33 = v21 - v32;
          }

          v37 = v33;
          if ((result[16] & 1) == 0)
          {
            result[16] = 1;
          }

          *(result + 3) = v37;
          v38 = *(a3 + 4);
          v39 = 0.0;
          if (fabsf(v38) >= 0.00001)
          {
            v39 = v7 / v38;
          }

          *(result + 16) = v39;
          goto LABEL_143;
        }

        v27 = v7 / v23;
        if (!*(a3 + 24))
        {
          if (v27 > 1.0)
          {
            v27 = 1.0;
          }

          if (v27 < 0.0)
          {
            v27 = 0.0;
          }

          v40 = -v24;
          v41 = (v21 - v22) - v24;
          v42 = fmaxf(-v24, 0.0);
          if (v23 > v41)
          {
            v23 = v41;
          }

          v43 = v7;
          if (v23 < v43)
          {
            v43 = v23;
          }

          if (v43 < v42)
          {
            v43 = v42;
          }

          v44 = v43 - v42;
          v45 = result + 16;
          if (v5 >= 0.0)
          {
            v46 = (v22 - (v40 - v42)) + v44;
          }

          else
          {
            v46 = (v21 - (v41 - v23)) - v44;
          }

          v47 = v46;
          if (result[16])
          {
            goto LABEL_138;
          }

LABEL_82:
          *v45 = 1;
          goto LABEL_138;
        }

        v28 = floorf(v25 / v23);
        v29 = (v25 / v23) - v28;
        if (v29 > 1.0)
        {
          v29 = 1.0;
        }

        if (v29 < 0.0)
        {
          v29 = 0.0;
        }

        if (*(a3 + 24) == 3)
        {
          if ((((v5 < 0.0) ^ v28) & 1) == 0)
          {
LABEL_45:
            v30 = v22 + (v29 * v23);
            goto LABEL_78;
          }
        }

        else if (v5 >= 0.0)
        {
          goto LABEL_45;
        }

        v30 = v21 - (v29 * v23);
LABEL_78:
        v47 = v30;
        v45 = result + 16;
        if (result[16])
        {
          goto LABEL_138;
        }

        goto LABEL_82;
      }

      if ((*(a3 + 25) & 2) != 0)
      {
        *result = 4;
        v8 = *(a3 + 4);
        goto LABEL_33;
      }

      goto LABEL_9;
    }

    *(result + 17) = 1;
    goto LABEL_15;
  }

  if ((*a2 & 1) == 0)
  {
LABEL_15:
    *result = 1;
    if (result[16] == 1)
    {
      result[16] = 0;
    }

    *(result + 16) = 2143289344;
    *(result + 9) = 0;
    *(result + 1) = 0;
    return result;
  }

  v9 = *(a2 + 8);
  *(result + 1) = v9;
  v10 = *(a3 + 8);
  v11 = fabsf(v10);
  v12 = v10 < 0.0;
  result[56] = v10 < 0.0;
  v13 = v9 * v11 - (v11 * *a3);
  if (v13 < 0.0)
  {
    if ((*(a3 + 25) & 2) == 0)
    {
LABEL_9:
      v14 = 2;
LABEL_10:
      *result = v14;
LABEL_11:
      if (result[16] == 1)
      {
        result[16] = 0;
      }

      *(result + 16) = 2143289344;
      *(result + 9) = 0;
      return result;
    }

    v34 = 0;
    v17 = *(a3 + 4);
    v19 = 4;
    goto LABEL_86;
  }

  v16 = v13;
  v17 = *(a3 + 4);
  if ((*(a3 + 25) & 1) == 0)
  {
    if (v17 > v16 && vabds_f32(v16, v17) >= (((fabsf(v16) + fabsf(v17)) + 1.0) * 0.00001))
    {
      v19 = 3;
    }

    else
    {
      if (v17 < v16 && vabds_f32(v16, v17) >= (((fabsf(v16) + fabsf(v17)) + 1.0) * 0.00001))
      {
        v18 = *result;
        if (v18 == 1 || v18 == 6 || v17 <= 0.0)
        {
          v14 = 1;
          goto LABEL_10;
        }
      }

      v13 = v17;
      v19 = 6;
    }

    goto LABEL_85;
  }

  v19 = 3;
  if (v17 >= v16)
  {
LABEL_85:
    v34 = 1;
    goto LABEL_86;
  }

  v35 = ((fabsf(v16) + fabsf(v17)) + 1.0) * 0.00001;
  v36 = vabds_f32(v16, v17);
  v34 = v36 < v35;
  if (v36 < v35)
  {
    v19 = 3;
  }

  else
  {
    v19 = 5;
  }

LABEL_86:
  v20 = v10 * a4;
  *result = v19;
  *(result + 5) += v34;
  v49 = *(a3 + 12);
  v48 = *(a3 + 16);
  if (v17 <= (v48 - v49))
  {
    v50 = v17;
  }

  else
  {
    v50 = v48 - v49;
  }

  v51 = *(a3 + 20);
  v52 = v13 + v51;
  v53 = fabsf(v50);
  if (v53 >= 0.00001 && (LODWORD(v50) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v27 = v13 / v50;
    v54 = *(a3 + 24);
    if (*(a3 + 24))
    {
      v55 = v10 < 0.0;
      v56 = (v52 / v50) - floorf(v52 / v50);
      if (v56 > 1.0)
      {
        v56 = 1.0;
      }

      if (v56 < 0.0)
      {
        v56 = 0.0;
      }

      v57 = vcvtms_s32_f32(v52 / v50);
      v58 = v54 == 3;
      if (v54 == 3)
      {
        v59 = (v55 ^ v57) & 1;
      }

      else
      {
        v59 = v12;
      }

      if (v58)
      {
        v60 = v55 ^ v57;
      }

      else
      {
        v60 = v55;
      }

      result[56] = v59;
      if (result[16] == 1)
      {
        v61 = *(result + 3);
        *(result + 15) = v61;
        v62 = v48 - (v56 * v50);
        v63 = v49 + (v56 * v50);
        if (v60)
        {
          v63 = v62;
        }
      }

      else
      {
        *(result + 15) = 0;
        if (v60)
        {
          v63 = v48 - (v56 * v50);
        }

        else
        {
          v63 = v49 + (v56 * v50);
        }

        result[16] = 1;
      }

      *(result + 3) = v63;
      v77 = *(result + 12);
      *(result + 12) = v57;
      *(result + 13) = v77;
      goto LABEL_142;
    }

    if (v27 > 1.0)
    {
      v27 = 1.0;
    }

    if (v27 < 0.0)
    {
      v27 = 0.0;
    }

    v70 = -v51;
    v71 = (v48 - v49) - v51;
    v72 = fmaxf(-v51, 0.0);
    if (v50 > v71)
    {
      v50 = v71;
    }

    v73 = v13;
    if (v50 < v73)
    {
      v73 = v50;
    }

    if (v73 < v72)
    {
      v73 = v72;
    }

    v74 = v73 - v72;
    if (result[16] == 1)
    {
      v75 = *(result + 3);
      *(result + 15) = v75;
    }

    else
    {
      *(result + 15) = 0;
      result[16] = 1;
    }

    if (v10 >= 0.0)
    {
      v76 = (v49 - (v70 - v72)) + v74;
    }

    else
    {
      v76 = (v48 - (v71 - v50)) - v74;
    }

    v47 = v76;
LABEL_138:
    *(result + 3) = v47;
LABEL_142:
    *(result + 16) = v27;
LABEL_143:
    *(result + 9) = v20;
    return result;
  }

  if (*(a3 + 24))
  {
    v64 = v53 < 0.00001;
  }

  else
  {
    v64 = 0;
  }

  v65 = 0.0;
  if (!v64)
  {
    v65 = v13 + v51;
  }

  if (v10 >= 0.0)
  {
    v66 = v49 + v65;
  }

  else
  {
    v66 = v48 - v65;
  }

  v67 = v66;
  if ((result[16] & 1) == 0)
  {
    result[16] = 1;
  }

  *(result + 3) = v67;
  v68 = *(a3 + 4);
  v69 = 0.0;
  if (fabsf(v68) >= 0.00001)
  {
    v69 = v13 / v68;
  }

  *(result + 16) = v69;
  *(result + 9) = v20;
  result[56] = v12;
  return result;
}

const char *re::AnimationClock::clockStateToName(re::AnimationClock *this)
{
  v1 = *this;
  if (v1 > 6)
  {
    return "Unknown";
  }

  else
  {
    return off_1E8717DD0[v1];
  }
}

void re::RigEnvironment::init(re::RigEnvironment *this, re::Allocator *a2)
{
  v99 = *MEMORY[0x1E69E9840];
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::init(this, a2, 1uLL);
  re::RigEnvironment::pushEnvironmentScope(this);
  v31 = "struct SRT{Vector3 scale;Quaternion rotation;Vector3 translation;}";
  *&v32 = 66;
  re::RigDataTypeClass::rigDataTypeParser(a2, &v31, &v72);
  re::StringID::StringID(&v94, &v73);
  re::RigEnvironment::insertRigDataType(this, &v94, &v72.var1, &v31);
  if (v94)
  {
    if (v94)
    {
    }
  }

  if (v31 & 1) == 0 && v33 && (v34)
  {
    (*(*v33 + 40))();
  }

  re::Result<re::RigDataTypeClass,re::DetailedError>::~Result(&v72);
  re::RigGraphOperatorDefinition::registerBuiltIns(this, v6);
  re::registerIKinemaAnimNodes(this, v7);
  re::internal::registerPerformRayCastNode(this, v8);
  re::internal::registerGeneratePenetrationCorrectionIKTarget(this, v9);
  re::internal::registerTranslationFilter(this, v10);
  re::internal::registerTranslationAndRotationFilter(this, v11);
  v12 = re::StringID::invalid(&v72);
  v73.var1 = 0;
  *&v73.var0 = 0;
  v74 = 0;
  v84 = 0;
  v13 = 0uLL;
  memset(v76, 0, sizeof(v76));
  v75 = 0;
  v77 = 0;
  memset(v78, 0, sizeof(v78));
  memset(v80, 0, sizeof(v80));
  v79 = 0;
  v81 = 0;
  memset(v82, 0, sizeof(v82));
  v83 = 0;
  if (*&v72.var0)
  {
    v13 = 0uLL;
    if (*&v72.var0)
    {
      v13 = 0uLL;
    }
  }

  v72.var1 = "axpy";
  *&v72.var0 = 6017280;
  *&v70[12] = v13;
  v69 = v13;
  *v70 = v13;
  v68 = v13;
  v71 = 0x7FFFFFFFLL;
  re::RigGraphDefinitionBuilder::init(&v68, a2, &v72, this);
  re::RigGraphDefinitionBuilder::addNode(&v68, "ScaleVector3", "scale", v65);
  if ((v65[0] & 1) == 0 && v66)
  {
    if (BYTE8(v66))
    {
      (*(*v66 + 40))();
    }

    v67 = 0u;
    v66 = 0u;
  }

  re::RigGraphDefinitionBuilder::addNode(&v68, "AddVector3", "add", v62);
  if ((v62[0] & 1) == 0 && v63)
  {
    if (BYTE8(v63))
    {
      (*(*v63 + 40))();
    }

    v64 = 0u;
    v63 = 0u;
  }

  re::RigGraphDefinitionBuilder::addConnection(&v68, "scale", "output", "add", "input1", 0, 0, v59);
  if ((v59[0] & 1) == 0 && v60)
  {
    if (BYTE8(v60))
    {
      (*(*v60 + 40))();
    }

    v61 = 0u;
    v60 = 0u;
  }

  re::RigGraphDefinitionBuilder::promoteParameter(&v68, "scale", "input1", "x", "[0, 0, 0]", 1, v56);
  if ((v56[0] & 1) == 0 && v57)
  {
    if (BYTE8(v57))
    {
      (*(*v57 + 40))();
    }

    v58 = 0u;
    v57 = 0u;
  }

  re::RigGraphDefinitionBuilder::promoteParameter(&v68, "scale", "input2", "a", "1", 1, v53);
  if ((v53[0] & 1) == 0 && v54)
  {
    if (BYTE8(v54))
    {
      (*(*v54 + 40))();
    }

    v55 = 0u;
    v54 = 0u;
  }

  re::RigGraphDefinitionBuilder::promoteParameter(&v68, "add", "input2", "y", "[0, 0, 0]", 1, v50);
  if ((v50[0] & 1) == 0 && v51)
  {
    if (BYTE8(v51))
    {
      (*(*v51 + 40))();
    }

    v52 = 0u;
    v51 = 0u;
  }

  v14 = v47;
  re::RigGraphDefinitionBuilder::promoteParameter(&v68, "add", "output", "output", "", 0, v47);
  if ((v47[0] & 1) == 0 && v48)
  {
    if (BYTE8(v48))
    {
      (*(*v48 + 40))();
    }

    v49 = 0u;
    v48 = 0u;
  }

  re::RigGraphSystem::buildFromDefinition(a2, &v72, &v31);
  v16 = re::RigEnvironment::validateNewRigNode(this, &v72, v85);
  if (v85[0] == 1)
  {
    v17 = *(this + 5);
    if (v17)
    {
      v2 = &v90;
      v18 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v17 - 1);
      v20 = v18;
      v21 = *(v18 + 56);
      if ((v21 + 1) >> 24)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21 + 1;
      }

      *(v18 + 56) = v22;
      v23 = *(v18 + 52);
      v14 = *(v18 + 54);
      if (v23 == 0xFFFF && v14 == 0xFFFF)
      {
        if (*(v18 + 48) >= *(v18 + 44))
        {
          re::DataArray<re::RigGraphNode>::allocBlock(v18);
        }

        v24 = *(v20 + 16);
        v14 = (v24 - 1);
        if (v24)
        {
          v23 = *(v20 + 48);
          if (v23 < 0x10000)
          {
            v25 = (*(v20 + 32) + 16 * v14);
            *(v20 + 48) = v23 + 1;
            *(v25[1] + 4 * v23) = *(v20 + 56);
            v26 = *v25 + 200 * v23;
LABEL_63:
            ++*(v20 + 40);
            *(v26 + 32) = 0;
            *v26 = 0;
            *(v26 + 8) = 0u;
            *(v26 + 24) = 0;
            *v26 = v31;
            v31 = 0;
            *(v26 + 8) = v32;
            v32 = 0u;
            *(v26 + 32) = v34;
            LODWORD(v33) = v33 + 1;
            ++*(v26 + 24);
            *(v26 + 72) = 0;
            *(v26 + 64) = 0;
            *(v26 + 56) = 0;
            *(v26 + 40) = 0u;
            *(v26 + 40) = *(&v34 + 1);
            *(v26 + 48) = v35;
            v34 = 0u;
            v35 = 0u;
            *(v26 + 72) = v37;
            ++v36;
            ++*(v26 + 64);
            *(v26 + 112) = 0;
            *(v26 + 104) = 0;
            *(v26 + 96) = 0;
            *(v26 + 80) = 0u;
            *(v26 + 80) = *(&v37 + 1);
            v37 = 0u;
            *(v26 + 88) = v38;
            v38 = 0u;
            *(v26 + 112) = v40;
            ++v39;
            ++*(v26 + 104);
            *(v26 + 152) = 0;
            *(v26 + 144) = 0;
            *(v26 + 136) = 0;
            *(v26 + 120) = 0u;
            *(v26 + 120) = *(&v40 + 1);
            *(v26 + 128) = v41;
            v40 = 0u;
            v41 = 0u;
            *(v26 + 152) = v43;
            ++v42;
            ++*(v26 + 144);
            *(v26 + 192) = 0;
            *(v26 + 184) = 0;
            *(v26 + 176) = 0;
            *(v26 + 160) = 0u;
            *(v26 + 160) = *(&v43 + 1);
            v43 = 0u;
            *(v26 + 168) = v44;
            v44 = 0u;
            *(v26 + 192) = v46;
            v46 = 0;
            ++v45;
            ++*(v26 + 184);
            *&v94 = v23 + (v14 << 16) + ((*(v20 + 56) & 0xFFFFFF) << 32);
            re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v20 + 176, &v72, &v94);
            goto LABEL_64;
          }

LABEL_71:
          re::internal::assertLog(5, v19, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v23);
          _os_crash();
          __break(1u);
        }

LABEL_70:
        v89 = 0;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v94 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v90 = 136315906;
        *(v2 + 1) = "operator[]";
        v91 = 1024;
        *(v2 + 14) = 789;
        v92 = 2048;
        *(v2 + 5) = v14;
        v93 = 2048;
        *(v2 + 30) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_71;
      }

      v27 = *(v18 + 16);
      if (v27 > v14)
      {
        v28 = (*(v18 + 32) + 16 * v14);
        *(v28[1] + 4 * v23) = v22;
        v26 = *v28 + 200 * v23;
        *(v18 + 52) = *v26;
        goto LABEL_63;
      }
    }

    else
    {
      re::internal::assertLog(4, v15, v16.n128_f64[0], "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      _os_crash();
      __break(1u);
    }

    v89 = 0;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    v30 = v27;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    *(v2 + 1) = "operator[]";
    v91 = 1024;
    *(v2 + 14) = 789;
    v92 = 2048;
    *(v2 + 5) = v14;
    v93 = 2048;
    *(v2 + 30) = v30;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  if (v86 && (v87 & 1) != 0)
  {
    (*(*v86 + 40))(v86, v88, v16);
  }

LABEL_64:
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(&v43 + 8);
  re::DynamicArray<re::StringID>::deinit(&v40 + 8);
  re::DynamicArray<re::RigGraphNodeChild>::deinit(&v37 + 8);
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v34 + 8);
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v31);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v69 + 1);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v82[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v80[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v78[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v76[8]);
  v29 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v73);
  if (*&v72.var0)
  {
    if (*&v72.var0)
    {
    }
  }

  re::RigEnvironment::pushEnvironmentScope(this);
}

void *re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::RigEnvironment::pushEnvironmentScope(re::RigEnvironment *this)
{
  v65 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v48 = 0u;
  v41 = 0;
  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  *(&v35 + 4) = 0x1FFFFFFFFLL;
  v37 = 0uLL;
  v36 = 0uLL;
  v38 = 0uLL;
  v39 = 0;
  v40 = 0x1FFFFFFFFLL;
  v42 = 0u;
  v43 = 0u;
  v44 = 0x7FFFFFFF00000000uLL;
  v45 = 0u;
  v46 = 0u;
  v47 = 0x7FFFFFFF00000000uLL;
  v50 = 0x7FFFFFFF00000000uLL;
  v2 = *(this + 5);
  v48 = 0u;
  v3 = *(this + 1);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::setBucketsCapacity(this, (v2 + 8) >> 3);
    v3 = *(this + 1);
  }

  if (v3 <= v2 >> 3)
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
    v55 = 858;
    v56 = 2048;
    v57 = v2 >> 3;
    v58 = 2048;
    v59 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
    goto LABEL_28;
  }

  if (*(this + 16))
  {
    v4 = this + 24;
  }

  else
  {
    v4 = *(this + 4);
  }

  v5 = *&v4[8 * (v2 >> 3)];
  ++*(this + 5);
  ++*(this + 12);
  v6 = v5 + 272 * (v2 & 7);
  *(v6 + 48) = 0;
  *(v6 + 40) = 0;
  *(v6 + 52) = 0x1FFFFFFFFLL;
  v60 = 0u;
  *v6 = 0u;
  *&v61 = 0;
  *(v6 + 16) = 0;
  *&v62 = 0;
  *(v6 + 32) = 0;
  *(v6 + 24) = 1;
  DWORD2(v61) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v6, v33);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v33, &v60);
  if (v60 && v62)
  {
    (*(*v60 + 40))(v60);
  }

  v7 = *(v6 + 40);
  *(v6 + 40) = DWORD2(v34);
  DWORD2(v34) = v7;
  v8 = *(v6 + 44);
  *(v6 + 44) = HIDWORD(v34);
  HIDWORD(v34) = v8;
  v9 = *(v6 + 48);
  *(v6 + 48) = v35;
  LODWORD(v35) = v9;
  v10 = *(v6 + 52);
  *(v6 + 52) = DWORD1(v35);
  DWORD1(v35) = v10;
  v11 = *(v6 + 56);
  *(v6 + 56) = DWORD2(v35);
  DWORD2(v35) = v11;
  *(v6 + 112) = 0;
  *(v6 + 104) = 0;
  *(v6 + 116) = 0x1FFFFFFFFLL;
  v60 = 0u;
  *(v6 + 64) = 0u;
  *&v61 = 0;
  *(v6 + 80) = 0;
  *&v62 = 0;
  *(v6 + 96) = 0;
  *(v6 + 88) = 1;
  DWORD2(v61) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v6 + 64, &v36);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v36, &v60);
  if (v60 && v62)
  {
    (*(*v60 + 40))(v60);
  }

  v12 = *(v6 + 104);
  *(v6 + 104) = DWORD2(v38);
  DWORD2(v38) = v12;
  v13 = *(v6 + 108);
  *(v6 + 108) = HIDWORD(v38);
  HIDWORD(v38) = v13;
  v14 = *(v6 + 112);
  *(v6 + 112) = v39;
  v39 = v14;
  v15 = *(v6 + 116);
  *(v6 + 116) = v40;
  LODWORD(v40) = v15;
  v16 = *(v6 + 120);
  *(v6 + 120) = HIDWORD(v40);
  HIDWORD(v40) = v16;
  *(v6 + 160) = 0x7FFFFFFF00000000;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 128) = v42;
  *&v42 = 0;
  *(v6 + 136) = *(&v42 + 1);
  *(&v42 + 1) = 0;
  *(v6 + 144) = v43;
  *&v43 = 0;
  *(v6 + 152) = DWORD2(v43);
  DWORD2(v43) = 0;
  *(v6 + 156) = HIDWORD(v43);
  HIDWORD(v43) = 0;
  *(v6 + 160) = v44;
  LODWORD(v44) = 0;
  *(v6 + 164) = DWORD1(v44);
  DWORD1(v44) = 0x7FFFFFFF;
  *(v6 + 168) = 1;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0x7FFFFFFF00000000;
  *(v6 + 176) = v45;
  *&v45 = 0;
  *(v6 + 184) = *(&v45 + 1);
  *(&v45 + 1) = 0;
  *(v6 + 192) = v46;
  *&v46 = 0;
  *(v6 + 200) = DWORD2(v46);
  DWORD2(v46) = 0;
  *(v6 + 204) = HIDWORD(v46);
  HIDWORD(v46) = 0;
  *(v6 + 208) = v47;
  LODWORD(v47) = 0;
  *(v6 + 212) = DWORD1(v47);
  DWORD1(v47) = 0x7FFFFFFF;
  *(v6 + 216) = 1;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0x7FFFFFFF00000000;
  *(v6 + 224) = v48;
  *&v48 = 0;
  *(v6 + 232) = *(&v48 + 1);
  *(&v48 + 1) = 0;
  *(v6 + 240) = v49;
  *&v49 = 0;
  *(v6 + 248) = DWORD2(v49);
  DWORD2(v49) = 0;
  *(v6 + 252) = HIDWORD(v49);
  HIDWORD(v49) = 0;
  *(v6 + 256) = v50;
  LODWORD(v50) = 0;
  *(v6 + 260) = DWORD1(v50);
  DWORD1(v50) = 0x7FFFFFFF;
  *(v6 + 264) = 1;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v48);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v45);
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v42);
  re::DataArray<re::RigGraphOperatorDefinition>::deinit(&v36);
  if (v36)
  {
    if (v38)
    {
      (*(*v36 + 40))();
    }

    *&v38 = 0;
    *&v37 = 0;
    v36 = 0uLL;
    ++DWORD2(v37);
  }

  re::DataArray<re::RigGraphNode>::deinit(v33);
  if (*&v33[0])
  {
    v17 = v34;
    if (v34)
    {
      (*(**&v33[0] + 40))();
    }
  }

  v18 = *(this + 5);
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v18 - 1);
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v19 + 128, *this, 128);
  v21 = *(this + 5);
  if (!v21)
  {
LABEL_28:
    re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  v22 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v21 - 1);
  *v22 = *this;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v22, 0);
  ++*(v22 + 24);
  *(v22 + 44) = 32;
  re::DataArray<re::RigGraphNode>::allocBlock(v22);
  v24 = *(this + 5);
  if (!v24)
  {
LABEL_29:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
    goto LABEL_30;
  }

  v25 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v24 - 1);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25 + 176, *this, 32);
  v27 = *(this + 5);
  if (!v27)
  {
LABEL_30:
    re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_31:
    re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v28 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v27 - 1);
  *(v28 + 64) = *this;
  v29 = v28 + 64;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity((v28 + 64), 0);
  ++*(v29 + 24);
  *(v29 + 44) = 32;
  re::DataArray<re::RigGraphOperatorDefinition>::allocBlock(v29);
  v31 = *(this + 5);
  if (!v31)
  {
    goto LABEL_31;
  }

  v32 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v31 - 1);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v32 + 224, *this, 32);
}

void re::RigEnvironment::insertRigDataType(re::RigEnvironment *a1@<X0>, const char **a2@<X1>, const re::RigDataTypeClass *a3@<X2>, uint64_t a4@<X8>)
{
  re::RigEnvironment::validateNewRigType(a1, a2, a3, v11);
  if (v11[0] == 1)
  {
    v9 = *(a1 + 5);
    if (v9)
    {
      v10 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](a1, v9 - 1);
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v10 + 128, a2, a3);
      *a4 = 1;
    }

    else
    {
      re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      _os_crash();
      __break(1u);
    }
  }

  else
  {
    *a4 = v11[0];
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
    *(a4 + 48) = v15;
    *(a4 + 32) = v14;
  }
}

void re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 88 * v10, 16);
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

uint64_t re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::removeLast(uint64_t a1)
{
  v2 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](a1, *(a1 + 40) - 1);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v2 + 28);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v2 + 22);
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v2 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::deinit((v2 + 8));
  re::DynamicArray<unsigned long>::deinit((v2 + 8));
  re::DataArray<re::RigGraphNode>::deinit(v2);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  --*(a1 + 40);
  ++*(a1 + 48);
  return result;
}

void re::RigEnvironment::validateNewRigType(re::RigEnvironment *this@<X0>, const char **a2@<X1>, const re::RigDataTypeClass *a3@<X2>, uint64_t a4@<X8>)
{
  re::RigEnvironment::lookupRigDataType(this, a2, v23);
  if (v23[0] == 1)
  {
    if (!re::RigDataTypeClass::operator==(a3, v24))
    {
      re::DynamicString::format("Type (%s) already exists and does not match new definition.", &v19, a2[1]);
LABEL_19:
      v14 = v19;
      v15 = v20;
      v16 = v21;
      *a4 = 0;
      *(a4 + 8) = 5001;
      *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(a4 + 24) = v14;
      *(a4 + 40) = v15;
      *(a4 + 48) = v16;
      goto LABEL_20;
    }
  }

  else
  {
    if (*a3 != 13)
    {
      re::RigEnvironment::lookupRigDataType(this, a3 + 1, &v19);
      if (v19 != 1)
      {
        re::DynamicString::format("Type (%s) has an unknown base type: %s", &v19, a2[1], *(a3 + 2));
        goto LABEL_19;
      }

      v12 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v22);
      if (v20)
      {
        if (v20)
        {
        }
      }
    }

    v8 = *(a3 + 5);
    if (v8)
    {
      v9 = 0;
      while (1)
      {
        v10 = re::RigDataTypeClass::attributeType(*(a3 + 5), *(a3 + 7), v9);
        re::RigEnvironment::lookupRigDataType(this, v10, &v19);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v11 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v22);
        if (v20)
        {
          if (v20)
          {
          }
        }

        if (v8 == ++v9)
        {
          goto LABEL_12;
        }
      }

      v13 = a2[1];
      v18 = *(re::RigDataTypeClass::attributeType(*(a3 + 5), *(a3 + 7), v9) + 8);
      re::DynamicString::format("Type (%s) has an unknown attribute type: %s", &v19, v13, v18);
      goto LABEL_19;
    }
  }

LABEL_12:
  *a4 = 1;
LABEL_20:
  if (v23[0] == 1)
  {
    v17 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v26);
    if (v25)
    {
      if (v25)
      {
      }
    }
  }
}
double re::internal::defaultConstructV2<re::AudioFileAssetConfiguration>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_1E3061530;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::AudioFileAssetConfiguration>(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    return re::DynamicString::deinit((a1 + 40));
  }

  return result;
}

void re::TypeBuilderHelper::registerOptional<unsigned int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 8uLL, 4uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionOptional<unsigned int>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<unsigned int>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<unsigned int>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<unsigned int>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

uint64_t *re::audioLogObjects(re *this)
{
  {
    re::audioLogObjects(void)::logObjects = os_log_create("com.apple.re", "Audio");
  }

  return &re::audioLogObjects(void)::logObjects;
}

uint64_t re::AudioLogObjects::loggingEnabled(re::AudioLogObjects *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("audio.log.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::AudioLogObjects::loggingEnabled(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[472];
}

void re::AudioManager_PHASE_StateMachine_SceneRecoveryStep::eventReceived(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    std::__tree<unsigned long long>::__erase_unique<unsigned long long>((a1 + 16), a2);
  }
}

void re::AudioManager_PHASE_StateMachine_SceneRecoveryStep::stepDescription(re::AudioManager_PHASE_StateMachine_SceneRecoveryStep *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 4))
  {
    re::nameForAudioManagerStateMachineEvent(*(this + 2), &v16);
    v4 = std::string::append(&v16, ": ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, *(this + 4));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v17, p_p, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v18, " remaining");
    *a2 = *v10;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      v11 = v16.__r_.__value_.__r.__words[0];
LABEL_20:
      operator delete(v11);
    }
  }

  else
  {
    re::nameForAudioManagerStateMachineEvent(*(this + 2), &v17);
    v12 = std::string::append(&v17, ": ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v18, "completed");
    *a2 = *v14;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      v11 = v17.__r_.__value_.__r.__words[0];
      goto LABEL_20;
    }
  }
}

void sub_1E213D450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E213D588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  std::__tree<unsigned long long>::destroy(&a10, a11);
  MEMORY[0x1E6906520](v12, v11);
  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE_StateMachine_SceneRecoveryStep::~AudioManager_PHASE_StateMachine_SceneRecoveryStep(re::AudioManager_PHASE_StateMachine_SceneRecoveryStep *this)
{
  *this = &unk_1F5CCB338;
  std::__tree<unsigned long long>::destroy(this + 16, *(this + 3));
}

{
  *this = &unk_1F5CCB338;
  std::__tree<unsigned long long>::destroy(this + 16, *(this + 3));

  JUMPOUT(0x1E6906520);
}

void std::__tree<unsigned long long>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned long long>::destroy(a1, *a2);
    std::__tree<unsigned long long>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::set<unsigned long long>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned long long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned long long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<unsigned long long>::__find_equal<unsigned long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<unsigned long long>::__find_equal<unsigned long long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<unsigned long long>::__erase_unique<unsigned long long>(void **a1, unint64_t a2)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (!v2)
  {
    return;
  }

  v5 = a1 + 1;
  v6 = v2;
  do
  {
    v7 = v6[4];
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v5 = v6;
    }

    v6 = v6[v9];
  }

  while (v6);
  if (v5 == v3 || v5[4] > a2)
  {
    return;
  }

  v10 = v5[1];
  if (v10)
  {
    do
    {
      v11 = v10;
      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    v12 = v5;
    do
    {
      v11 = v12[2];
      v36 = *v11 == v12;
      v12 = v11;
    }

    while (!v36);
  }

  if (*a1 == v5)
  {
    *a1 = v11;
  }

  a1[2] = a1[2] - 1;
  v13 = *v5;
  v14 = v5;
  if (*v5)
  {
    v15 = v5[1];
    if (!v15)
    {
      v14 = v5;
      goto LABEL_24;
    }

    do
    {
      v14 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  v13 = v14[1];
  if (v13)
  {
LABEL_24:
    v17 = 0;
    v16 = v14[2];
    *(v13 + 16) = v16;
    goto LABEL_25;
  }

  v16 = v14[2];
  v17 = 1;
LABEL_25:
  v18 = *v16;
  if (*v16 == v14)
  {
    *v16 = v13;
    if (v14 == v2)
    {
      v18 = 0;
      v2 = v13;
    }

    else
    {
      v18 = v16[1];
    }
  }

  else
  {
    v16[1] = v13;
  }

  v19 = *(v14 + 24);
  if (v14 != v5)
  {
    v20 = v5[2];
    v14[2] = v20;
    v20[*v20 != v5] = v14;
    v22 = *v5;
    v21 = v5[1];
    *(v22 + 16) = v14;
    *v14 = v22;
    v14[1] = v21;
    if (v21)
    {
      *(v21 + 16) = v14;
    }

    *(v14 + 24) = *(v5 + 24);
    if (v2 == v5)
    {
      v2 = v14;
    }
  }

  if (!v2 || !v19)
  {
    goto LABEL_68;
  }

  if (!v17)
  {
    *(v13 + 24) = 1;
    goto LABEL_68;
  }

  while (1)
  {
    v23 = v18[2];
    v24 = *v23;
    if (*v23 == v18)
    {
      break;
    }

    if ((v18[3] & 1) == 0)
    {
      *(v18 + 24) = 1;
      *(v23 + 24) = 0;
      v25 = v23[1];
      v26 = *v25;
      v23[1] = *v25;
      if (v26)
      {
        *(v26 + 16) = v23;
      }

      v27 = v23[2];
      v25[2] = v27;
      v27[*v27 != v23] = v25;
      *v25 = v23;
      v23[2] = v25;
      if (v2 == *v18)
      {
        v2 = v18;
      }

      v18 = *(*v18 + 8);
    }

    v28 = *v18;
    if (*v18 && *(v28 + 24) != 1)
    {
      v29 = v18[1];
      if (v29 && (v29[3] & 1) == 0)
      {
LABEL_75:
        v28 = v18;
      }

      else
      {
        *(v28 + 24) = 1;
        *(v18 + 24) = 0;
        v37 = v28[1];
        *v18 = v37;
        if (v37)
        {
          *(v37 + 16) = v18;
        }

        v38 = v18[2];
        v28[2] = v38;
        v38[*v38 != v18] = v28;
        v28[1] = v18;
        v18[2] = v28;
        v29 = v18;
      }

      v39 = v28[2];
      *(v28 + 24) = *(v39 + 24);
      *(v39 + 24) = 1;
      *(v29 + 24) = 1;
      v40 = *(v39 + 8);
      v41 = *v40;
      *(v39 + 8) = *v40;
      if (v41)
      {
        *(v41 + 16) = v39;
      }

      v42 = *(v39 + 16);
      v40[2] = v42;
      v42[*v42 != v39] = v40;
      *v40 = v39;
      goto LABEL_88;
    }

    v29 = v18[1];
    if (v29 && *(v29 + 24) != 1)
    {
      goto LABEL_75;
    }

    *(v18 + 24) = 0;
    v30 = v18[2];
    if (v30 == v2 || (v30[24] & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_66:
    v18 = *(*(v30 + 2) + 8 * (**(v30 + 2) == v30));
  }

  if ((v18[3] & 1) == 0)
  {
    *(v18 + 24) = 1;
    *(v23 + 24) = 0;
    v31 = v24[1];
    *v23 = v31;
    if (v31)
    {
      *(v31 + 16) = v23;
    }

    v32 = v23[2];
    v24[2] = v32;
    v32[*v32 != v23] = v24;
    v24[1] = v23;
    v23[2] = v24;
    v33 = v18[1];
    if (v2 == v33)
    {
      v2 = v18;
    }

    v18 = *v33;
  }

  v34 = *v18;
  if (*v18 && *(v34 + 24) != 1)
  {
    goto LABEL_84;
  }

  v35 = v18[1];
  if (!v35 || *(v35 + 24) == 1)
  {
    *(v18 + 24) = 0;
    v30 = v18[2];
    v36 = v30[24] != 1 || v30 == v2;
    if (v36)
    {
LABEL_69:
      v30[24] = 1;
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  if (v34 && (v34[3] & 1) == 0)
  {
LABEL_84:
    v35 = v18;
    goto LABEL_85;
  }

  *(v35 + 24) = 1;
  *(v18 + 24) = 0;
  v43 = *v35;
  v18[1] = *v35;
  if (v43)
  {
    *(v43 + 16) = v18;
  }

  v44 = v18[2];
  v35[2] = v44;
  v44[*v44 != v18] = v35;
  *v35 = v18;
  v18[2] = v35;
  v34 = v18;
LABEL_85:
  v39 = v35[2];
  *(v35 + 24) = *(v39 + 24);
  *(v39 + 24) = 1;
  *(v34 + 24) = 1;
  v40 = *v39;
  v45 = *(*v39 + 8);
  *v39 = v45;
  if (v45)
  {
    *(v45 + 16) = v39;
  }

  v46 = *(v39 + 16);
  v40[2] = v46;
  v46[*v46 != v39] = v40;
  v40[1] = v39;
LABEL_88:
  *(v39 + 16) = v40;
LABEL_68:
  operator delete(v5);
}

void *std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1E213E444(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void re::AudioManager_PHASE::~AudioManager_PHASE(re::AudioManager_PHASE *this)
{
  v2 = **(this + 45);
  [v2 cancel];

  v3 = atomic_load(this + 171);
  if (v3 >= 1)
  {
    do
    {
      re::AudioManager_PHASE::stopEngine(this);
      v4 = atomic_load(this + 171);
    }

    while (v4 > 0);
  }

  dispatch_sync(*(this + 84), &__block_literal_global_13);
  v5 = *(this + 83);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re18AudioManager_PHASED2Ev_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v5, block);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>>>::~__hash_table(this + 1056);
  std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::~__value_func[abi:ne200100](this + 1016);
  v6 = *(this + 126);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::unique_ptr<re::UserActiveStateNotificationManager>::reset[abi:ne200100](this + 124, 0);
  std::unique_ptr<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>,std::function<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>*)>>::reset[abi:ne200100](this + 106, 0);
  std::__function::__value_func<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>::~__value_func[abi:ne200100](this + 856);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 744);
  std::__hash_table<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>>>::~__hash_table(this + 704);

  std::unique_ptr<re::AudioManager_PHASE_StateMachine>::reset[abi:ne200100](this + 82, 0);
  std::unique_ptr<re::AudioManager_PHASE_Async>::reset[abi:ne200100](this + 81, 0);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(this + 608);

  v7 = *(this + 74);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  re::AudioManager::~AudioManager(this);
}

{
  re::AudioManager_PHASE::~AudioManager_PHASE(this);

  JUMPOUT(0x1E6906520);
}

void re::AudioManager_PHASE::stopEngine(atomic_uint *this)
{
  if (atomic_fetch_add(this + 171, 0xFFFFFFFF) <= 0)
  {
    v1 = *re::audioLogObjects(this);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_error_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_ERROR, "unbalanced call to AudioManager_PHASE::stopEngine()", v2, 2u);
    }
  }
}

re::AudioManager_PHASE_Async *___ZN2re18AudioManager_PHASED2Ev_block_invoke_2(uint64_t a1, const re::AudioManager_PHASE *a2)
{
  v2 = *(a1 + 32);
  re::AudioManagerTelemetryReporter::stopAndCleanupReporter(v2, a2);

  return std::unique_ptr<re::AudioManager_PHASE_Async>::reset[abi:ne200100](v2 + 81, 0);
}

void re::AudioManager_PHASE::addAudioEngineRunnableReason(uint64_t a1, int a2)
{
  v2 = *(a1 + 1000);
  if (v2)
  {
    re::AudioEngineRunnableManager::addReason(v2, a2);
  }
}

void re::AudioManager_PHASE::removeAudioEngineRunnableReason(uint64_t a1, int a2)
{
  v2 = *(a1 + 1000);
  if (v2)
  {
    re::AudioEngineRunnableManager::removeReason(v2, a2);
  }
}

void re::AudioManager_PHASE::setEngineQueue(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((a1 + 8), a2);
  v5 = *(a1 + 648);
  v6 = *(v5 + 176);
  *(v5 + 176) = v4;
}

void re::AudioManager_PHASE::triggerNotification(re::AudioManager_PHASE *this, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      re::AudioManager_PHASE::triggerServiceLost(this);
    }

    else if (a2 == 3)
    {
      re::AudioManager_PHASE::triggerServiceReset(this);
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      re::AudioManager_PHASE::configureAndStartEngine(this);
    }
  }

  else
  {
    re::AudioManager::configureSTS(this);
  }
}

void re::AudioManager_PHASE::configureAndStartEngine(re::AudioManager_PHASE *this)
{
  if (*(*(this + 125) + 24))
  {
    v1 = *(this + 83);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re18AudioManager_PHASE23configureAndStartEngineEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_async(v1, block);
  }
}

void re::AudioManager_PHASE::triggerServiceLost(re::AudioManager_PHASE *this)
{
  re::AudioManager_PHASE_StateMachine::handleStateChangeEvent(*(this + 82), 0, 0, 0);
  UnfairLockedPointer<REPHASEContext>::set(*(this + 81) + 8, 0);
  Instance = re::AudioManagerTelemetryReporter::getInstance(v2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re29AudioManagerTelemetryReporter23mediaServicesResetEventEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = Instance;
  dispatch_async(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, block);
  re::AudioManager_PHASE_Async::notifyPlaybackClientsWithPreparedSoundsThatMediaServicesWereLost(*(this + 81));
  os_unfair_lock_lock(this + 262);
  std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::operator=[abi:ne200100](this + 1016);
  os_unfair_lock_unlock(this + 262);

  re::AudioManager::triggerServiceLost(this);
}

void re::AudioManager_PHASE::triggerServiceReset(re::AudioManager_PHASE *this)
{
  re::AudioManager_PHASE_StateMachine::handleStateChangeEvent(*(this + 82), 1, 0, 0);
  re::AudioManager_PHASE_Async::notifyPlaybackClientsWithPreparedSoundsThatMediaServicesWereReset(*(this + 81));

  re::AudioManager::triggerServiceReset(this);
}

void re::AudioManager_PHASE::joinPlaybackHostingServiceAtEndpoint(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 664);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2re18AudioManager_PHASE36joinPlaybackHostingServiceAtEndpointEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
  v6[3] = &unk_1E871B4D0;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

id re::AudioManager_PHASE::copyOrCreateEndpointForPlaybackHostingService(void **this)
{
  if (this[83])
  {
    Instance = re::AudioManagerTelemetryReporter::getInstance(this);
    re::AudioManagerTelemetryReporter::initializeTimerWith(Instance, this, this[83]);
  }

  v3 = this[81];

  return re::AudioManager_PHASE_Async::copyOrCreateEndpointForPlaybackHostingService(v3);
}

uint64_t re::AudioManager_PHASE::addPlaybackConnectionDisconnectCallback(uint64_t a1, void *a2)
{
  v2 = *(a1 + 648);
  v3 = a2;
  os_unfair_lock_lock((v2 + 200));
  v4 = *(v2 + 248) + 1;
  do
  {
    v5 = v4;
    v4 = 1;
  }

  while (!v5);
  *(v2 + 248) = v5;
  v6 = _Block_copy(v3);
  v7 = *(v2 + 216);
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (*&v7 <= v5)
    {
      v9 = v5 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v5;
  }

  v10 = *(*(v2 + 208) + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[2] != v5)
  {
    goto LABEL_19;
  }

  v13 = *(v2 + 248);
  os_unfair_lock_unlock((v2 + 200));

  return v13;
}

void sub_1E213EFD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);

  os_unfair_lock_unlock(v3 + 50);
  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE::removePlaybackConnectionDisconnectCallback(re::AudioManager_PHASE *this, unint64_t a2)
{
  v3 = *(this + 81);
  os_unfair_lock_lock((v3 + 200));
  v4 = *(v3 + 216);
  if (v4)
  {
    v5 = (v3 + 208);
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = a2;
      if (*&v4 <= a2)
      {
        v7 = a2 % *&v4;
      }
    }

    else
    {
      v7 = (*&v4 - 1) & a2;
    }

    v8 = *v5;
    v9 = *(*v5 + 8 * v7);
    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        v11 = *&v4 - 1;
        do
        {
          v12 = v10[1];
          if (v12 == a2)
          {
            if (v10[2] == a2)
            {
              if (v6.u32[0] > 1uLL)
              {
                if (*&v4 <= a2)
                {
                  a2 %= *&v4;
                }
              }

              else
              {
                a2 &= v11;
              }

              v13 = *(v8 + 8 * a2);
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13 != v10);
              if (v14 == (v3 + 224))
              {
                goto LABEL_36;
              }

              v15 = v14[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v15 >= *&v4)
                {
                  v15 %= *&v4;
                }
              }

              else
              {
                v15 &= v11;
              }

              if (v15 != a2)
              {
LABEL_36:
                if (!*v10)
                {
                  goto LABEL_37;
                }

                v16 = *(*v10 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v16 >= *&v4)
                  {
                    v16 %= *&v4;
                  }
                }

                else
                {
                  v16 &= v11;
                }

                if (v16 != a2)
                {
LABEL_37:
                  *(v8 + 8 * a2) = 0;
                }
              }

              v17 = *v10;
              if (*v10)
              {
                v18 = *(v17 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v18 >= *&v4)
                  {
                    v18 %= *&v4;
                  }
                }

                else
                {
                  v18 &= v11;
                }

                if (v18 != a2)
                {
                  *(*v5 + 8 * v18) = v14;
                  v17 = *v10;
                }
              }

              *v14 = v17;
              *v10 = 0;
              --*(v3 + 232);
              v19[0] = v10;
              v19[1] = v3 + 208;
              v20 = 1;
              memset(v21, 0, sizeof(v21));
              std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](v19);
              break;
            }
          }

          else
          {
            if (v6.u32[0] > 1uLL)
            {
              if (v12 >= *&v4)
              {
                v12 %= *&v4;
              }
            }

            else
            {
              v12 &= v11;
            }

            if (v12 != v7)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  os_unfair_lock_unlock((v3 + 200));
}

void re::AudioManager_PHASE::setExternalSourceControl(re::AudioManager_PHASE *this, char a2)
{
  *(this + 320) = a2;
  v2 = *(this + 83);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN2re18AudioManager_PHASE24setExternalSourceControlEb_block_invoke;
  v3[3] = &__block_descriptor_41_e5_v8__0l;
  v3[4] = this;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t re::AudioManager_PHASE::loadAssetsOnReset(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 672);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZN2re18AudioManager_PHASE17loadAssetsOnResetENSt3__18functionIFNS1_13unordered_mapIyNS1_10shared_ptrINS_18PersistedAssetDataEEENS1_4hashIyEENS1_8equal_toIyEENS1_9allocatorINS1_4pairIKyS6_EEEEEEvEEE_block_invoke;
  v4[3] = &__block_descriptor_72_ea8_40c152_ZTSKNSt3__18functionIFNS_13unordered_mapIyNS_10shared_ptrIN2re18PersistedAssetDataEEENS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKyS5_EEEEEEvEEE_e5_v8__0l;
  v4[4] = a1;
  std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::__value_func[abi:ne200100](v5, a2);
  dispatch_async(v2, v4);
  return std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::~__value_func[abi:ne200100](v5);
}

void ___ZN2re18AudioManager_PHASE17loadAssetsOnResetENSt3__18functionIFNS1_13unordered_mapIyNS1_10shared_ptrINS_18PersistedAssetDataEEENS1_4hashIyEENS1_8equal_toIyEENS1_9allocatorINS1_4pairIKyS6_EEEEEEvEEE_block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (re::AudioManager_PHASE_StateMachine::isRecoveryStepCompleted(*(v2 + 656), 4))
  {
    v3 = *(a1 + 64);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v3 + 48))(v7);
    re::AudioManager_PHASE::loadAssetsFromGenerator(v2, v7);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(v7);
    re::AudioManager_PHASE_StateMachine::handleStateChangeEvent(*(v2 + 656), 3, 0, 0);
  }

  else
  {
    os_unfair_lock_lock((v2 + 1048));
    std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::__value_func[abi:ne200100](v7, a1 + 40);
    v4 = v2 + 1016;
    if (v7 != (v2 + 1016))
    {
      v5 = v8;
      v6 = *(v2 + 1040);
      if (v8 == v7)
      {
        if (v6 == v4)
        {
          (*(*v8 + 24))();
          (*(*v8 + 32))(v8);
          v8 = 0;
          (*(**(v2 + 1040) + 24))(*(v2 + 1040), v7);
          (*(**(v2 + 1040) + 32))(*(v2 + 1040));
          *(v2 + 1040) = 0;
          v8 = v7;
          (*(v9[0] + 24))(v9, v2 + 1016);
          (*(v9[0] + 32))(v9);
        }

        else
        {
          (*(*v8 + 24))();
          (*(*v8 + 32))(v8);
          v8 = *(v2 + 1040);
        }

        *(v2 + 1040) = v4;
      }

      else if (v6 == v4)
      {
        (*(*v6 + 24))(*(v2 + 1040), v7);
        (*(**(v2 + 1040) + 32))(*(v2 + 1040));
        *(v2 + 1040) = v8;
        v8 = v7;
      }

      else
      {
        v8 = *(v2 + 1040);
        *(v2 + 1040) = v5;
      }
    }

    std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::~__value_func[abi:ne200100](v7);

    os_unfair_lock_unlock((v2 + 1048));
  }
}

void sub_1E213F6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void re::AudioManager_PHASE::loadAssetsFromGenerator(uint64_t a1, uint64_t a2)
{
  v4 = UnfairLockedPointer<REPHASEContext>::get(*(a1 + 648) + 8);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 engine];
    v7 = [v6 assetRegistry];

    for (i = *(a2 + 16); i; i = *i)
    {
      v10 = i[3];
      v9 = i[4];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = _Block_copy(*v10);
      v12 = *(v10 + 32);
      v16[0] = *(v10 + 16);
      v16[1] = v12;
      v17 = *(v10 + 48);
      if (v17 == 1)
      {
        re::DynamicString::DynamicString(&v18, (v10 + 56));
      }

      v21 = *(v10 + 88);
      if (v21 == 1)
      {
        v22 = *(v10 + 92);
      }

      v23 = *(v10 + 96);
      v13 = *(v10 + 8);
      (*(v11 + 2))(v11, v7, v13, v16, *(*(a1 + 648) + 328));

      [v5 addAudioAssetID:i[2] configuration:v16];
      if (v17 == 1 && v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))(v18, v20, v14, v15);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }
    }
  }
}

uint64_t re::AudioManager_PHASE::loadAssetsOnSceneRegister(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 672);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZN2re18AudioManager_PHASE25loadAssetsOnSceneRegisterENSt3__18functionIFNS1_13unordered_mapIyNS1_10shared_ptrINS_18PersistedAssetDataEEENS1_4hashIyEENS1_8equal_toIyEENS1_9allocatorINS1_4pairIKyS6_EEEEEEvEEE_block_invoke;
  v4[3] = &__block_descriptor_72_ea8_40c152_ZTSKNSt3__18functionIFNS_13unordered_mapIyNS_10shared_ptrIN2re18PersistedAssetDataEEENS_4hashIyEENS_8equal_toIyEENS_9allocatorINS_4pairIKyS5_EEEEEEvEEE_e5_v8__0l;
  v4[4] = a1;
  std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::__value_func[abi:ne200100](v5, a2);
  dispatch_async(v2, v4);
  return std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::~__value_func[abi:ne200100](v5);
}

uint64_t ___ZN2re18AudioManager_PHASE25loadAssetsOnSceneRegisterENSt3__18functionIFNS1_13unordered_mapIyNS1_10shared_ptrINS_18PersistedAssetDataEEENS1_4hashIyEENS1_8equal_toIyEENS1_9allocatorINS1_4pairIKyS6_EEEEEEvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(a1 + 32);
  (*(*v2 + 48))(v5);
  re::AudioManager_PHASE::loadAssetsFromGenerator(v3, v5);
  return std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(v5);
}

void sub_1E213FA48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE::systemFinishedRecovery(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (a2 <= 5)
  {
    re::AudioManager_PHASE_StateMachine::handleStateChangeEvent(*(a1 + 656), dword_1E3064580[a2], a3, a4);
  }
}

void re::AudioManager_PHASE::registerSceneForSystemRecovery(re *a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 <= 2)
  {
    if (!a2)
    {
      v4 = *(a1 + 82);
      v5 = *(v4 + 40);
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = ___ZN2re31AudioManager_PHASE_StateMachine28registerRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke;
      v11 = &__block_descriptor_52_e5_v8__0l;
      v6 = 6;
      goto LABEL_12;
    }

    if (a2 == 2)
    {
      v4 = *(a1 + 82);
      v5 = *(v4 + 40);
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = ___ZN2re31AudioManager_PHASE_StateMachine28registerRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke;
      v11 = &__block_descriptor_52_e5_v8__0l;
      v6 = 5;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = *(a1 + 82);
        v5 = *(v4 + 40);
        v8 = MEMORY[0x1E69E9820];
        v9 = 3221225472;
        v10 = ___ZN2re31AudioManager_PHASE_StateMachine28registerRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke;
        v11 = &__block_descriptor_52_e5_v8__0l;
        v6 = 7;
        goto LABEL_12;
      case 4:
        v4 = *(a1 + 82);
        v5 = *(v4 + 40);
        v8 = MEMORY[0x1E69E9820];
        v9 = 3221225472;
        v10 = ___ZN2re31AudioManager_PHASE_StateMachine28registerRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke;
        v11 = &__block_descriptor_52_e5_v8__0l;
        v6 = 8;
        goto LABEL_12;
      case 5:
        v4 = *(a1 + 82);
        v5 = *(v4 + 40);
        v8 = MEMORY[0x1E69E9820];
        v9 = 3221225472;
        v10 = ___ZN2re31AudioManager_PHASE_StateMachine28registerRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke;
        v11 = &__block_descriptor_52_e5_v8__0l;
        v6 = 9;
LABEL_12:
        v14 = v6;
        v12 = v4;
        v13 = a3;
        dispatch_async(v5, &v8);
        return;
    }
  }

  v7 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v8) = 67109120;
    HIDWORD(v8) = a2;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "[RE/MediaServices] [EngineState] Invalid system registered for system recovery, system id %d", &v8, 8u);
  }
}

void re::AudioManager_PHASE::unregisterSceneFromSystemRecovery(re *a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 <= 2)
  {
    if (!a2)
    {
      v4 = *(a1 + 82);
      v5 = *(v4 + 40);
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = ___ZN2re31AudioManager_PHASE_StateMachine30unregisterRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke;
      v11 = &__block_descriptor_52_e5_v8__0l;
      v6 = 6;
      goto LABEL_12;
    }

    if (a2 == 2)
    {
      v4 = *(a1 + 82);
      v5 = *(v4 + 40);
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = ___ZN2re31AudioManager_PHASE_StateMachine30unregisterRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke;
      v11 = &__block_descriptor_52_e5_v8__0l;
      v6 = 5;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = *(a1 + 82);
        v5 = *(v4 + 40);
        v8 = MEMORY[0x1E69E9820];
        v9 = 3221225472;
        v10 = ___ZN2re31AudioManager_PHASE_StateMachine30unregisterRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke;
        v11 = &__block_descriptor_52_e5_v8__0l;
        v6 = 7;
        goto LABEL_12;
      case 4:
        v4 = *(a1 + 82);
        v5 = *(v4 + 40);
        v8 = MEMORY[0x1E69E9820];
        v9 = 3221225472;
        v10 = ___ZN2re31AudioManager_PHASE_StateMachine30unregisterRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke;
        v11 = &__block_descriptor_52_e5_v8__0l;
        v6 = 8;
        goto LABEL_12;
      case 5:
        v4 = *(a1 + 82);
        v5 = *(v4 + 40);
        v8 = MEMORY[0x1E69E9820];
        v9 = 3221225472;
        v10 = ___ZN2re31AudioManager_PHASE_StateMachine30unregisterRequiredRecoveryStepENS_36AudioManager_PHASE_StateMachineEventEy_block_invoke;
        v11 = &__block_descriptor_52_e5_v8__0l;
        v6 = 9;
LABEL_12:
        v14 = v6;
        v12 = v4;
        v13 = a3;
        dispatch_async(v5, &v8);
        return;
    }
  }

  v7 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v8) = 67109120;
    HIDWORD(v8) = a2;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "[RE/MediaServices] [EngineState] Invalid system unregistered from system recovery, system id %d", &v8, 8u);
  }
}

void re::AudioManager_PHASE::clearAllRenderingState(re::AudioManager_PHASE *this)
{
  re::AudioManager::clearAllRenderingState(this);
  v6 = *(this + 50);
  v14 = *(this + 51);
  v15 = *(this + 104);
  v2 = *(this + 210);
  v3 = re::AudioManager_PHASE_Async::createPhaseContext(*(this + 81), *(this + 83));
  atomic_store(0, (*(this + 81) + 192));
  v4 = *(this + 83);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re18AudioManager_PHASE22clearAllRenderingStateEv_block_invoke;
  block[3] = &unk_1F5CCB858;
  v9 = v3;
  v10 = this;
  v11 = v14;
  v12 = v15;
  v13 = v2;
  v8 = v6;
  v5 = v3;
  dispatch_async(v4, block);
}

void ___ZN2re18AudioManager_PHASE22clearAllRenderingStateEv_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = re::AudioManager_PHASE_Async::swapPhaseContext(*(v2 + 648), *(a1 + 48));
  re::AudioManager_PHASE_Async::clearPendingAssetData(*(v2 + 648));
  v5 = *re::audioLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] Clearing old phase context and resetting state on new context.", buf, 2u);
  }

  [v3 stopAllAndReset];
  re::AudioManager::setSceneReverbPreset(v2, *(a1 + 80), *(a1 + 64), *(a1 + 72));
  re::AudioManager_PHASE_Async::setSceneReverbPreset(*(v2 + 648), *(a1 + 64));
  re::AudioManager_PHASE_Async::setSpaceBlendLevel(*(v2 + 648), *(a1 + 88));
  v6 = *(a1 + 32);
  re::AudioManager_PHASE_Async::setSpaceBlendTargetPresetOrientation(*(v2 + 648), v6);
  os_unfair_lock_lock((v2 + 696));
  if (*(v2 + 728))
  {
    std::__hash_table<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>>>::__deallocate_node(*(v2 + 720));
    *(v2 + 720) = 0;
    v7 = *(v2 + 712);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        *(*(v2 + 704) + 8 * i) = 0;
      }
    }

    *(v2 + 728) = 0;
  }

  os_unfair_lock_unlock((v2 + 696));
  v9 = atomic_load((v2 + 684));
  if (v9 >= 1 && *(*(v2 + 1000) + 24))
  {
    re::AudioManager_PHASE_Async::configureAndStartEngine(*(v2 + 648));
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((v2 + 744));
  re::AudioManager_PHASE_StateMachine::handleStateChangeEvent(*(v2 + 656), 4, 0, 0);
  os_unfair_lock_lock((v2 + 1048));
  if (*(v2 + 1040))
  {
    std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::__value_func[abi:ne200100](v13, v2 + 1016);
    re::AudioManager_PHASE::loadAssetsOnReset(v2, v13);
    std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::~__value_func[abi:ne200100](v13);
    std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::operator=[abi:ne200100](v2 + 1016);
  }

  os_unfair_lock_unlock((v2 + 1048));
  os_unfair_lock_lock((v2 + 1052));
  if (*(v2 + 1080))
  {
    v10 = *(v2 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re18AudioManager_PHASE22clearAllRenderingStateEv_block_invoke_16;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v2;
    dispatch_async(v10, block);
  }

  os_unfair_lock_unlock((v2 + 1052));
}

void sub_1E21402D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::~__value_func[abi:ne200100](va);
  os_unfair_lock_unlock(v9 + 262);

  _Unwind_Resume(a1);
}

void ___ZN2re18AudioManager_PHASE22clearAllRenderingStateEv_block_invoke_16(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock((v1 + 1052));
  v2 = (v1 + 1072);
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    v3 = v2[6];
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v3 + 48))(v3);
  }

  if (*(v1 + 1080))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>>>::__deallocate_node(*(v1 + 1072));
    *(v1 + 1072) = 0;
    v4 = *(v1 + 1064);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*(v1 + 1056) + 8 * i) = 0;
      }
    }

    *(v1 + 1080) = 0;
  }

  os_unfair_lock_unlock((v1 + 1052));
}

void re::AudioManager_PHASE::recoverSTS(re::AudioManager_PHASE *this)
{
  v1 = *(this + 83);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re18AudioManager_PHASE10recoverSTSEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_async(v1, block);
}

void ___ZN2re18AudioManager_PHASE10recoverSTSEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  re::AudioManager::configureSTS(v1);
  v2 = *(v1 + 82);

  re::AudioManager_PHASE_StateMachine::handleStateChangeEvent(v2, 2, 0, 0);
}

void re::AudioManager_PHASE::startEngine(re::AudioManager_PHASE *this)
{
  if (!atomic_fetch_add(this + 171, 1u))
  {
    re::AudioManager_PHASE::configureAndStartEngine(this);
  }
}

void re::AudioManager_PHASE::updateEngine(re::AudioManager_PHASE *this)
{
  v1 = *(this + 83);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re18AudioManager_PHASE12updateEngineEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_async(v1, block);
}

void ___ZN2re18AudioManager_PHASE12updateEngineEv_block_invoke(uint64_t a1)
{
  v1 = UnfairLockedPointer<REPHASEContext>::get(*(*(a1 + 32) + 648) + 8);
  if (v1)
  {
    [v1 update];
  }
}

id re::AudioManager_PHASE::getAudioEnginePHASE(re::AudioManager_PHASE *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v1 = *(this + 83);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZNK2re18AudioManager_PHASE19getAudioEnginePHASEEv_block_invoke;
  v4[3] = &unk_1E871B8E0;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZNK2re18AudioManager_PHASE19getAudioEnginePHASEEv_block_invoke(uint64_t a1)
{
  v2 = re::AudioManager_PHASE_Async::getAudioEnginePHASE(*(*(a1 + 40) + 648));
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

__n128 re::AudioManager_PHASE::getPHASESourceTransformForToken(re::AudioManager_PHASE *this, uint64_t a2)
{
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(this + 81) + 8);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eventFor:a2];
    [v5 sourcePose];
    v8 = v6;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9B18];
  }

  return v8;
}

id re::AudioManager_PHASE::getAudioObjectPHASE(re::AudioManager_PHASE *this, uint64_t a2)
{
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(this + 81) + 8);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eventFor:a2];
    v6 = [v5 externalStreamController];

    if (v6)
    {
      [v5 externalStreamController];
    }

    else
    {
      [v5 soundEvent];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id re::AudioManager_PHASE::getPHASESourceForEntityID(re::AudioManager_PHASE *this, uint64_t a2)
{
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(this + 81) + 8);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 sourceObjectForEntityID:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id re::AudioManager_PHASE::getPHASEGroups(os_unfair_lock_s *this)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(this + 174);
  for (i = this + 180; ; [v2 addObject:*&i[12]._os_unfair_lock_opaque])
  {
    i = *&i->_os_unfair_lock_opaque;
    if (!i)
    {
      break;
    }
  }

  os_unfair_lock_unlock(this + 174);

  return v2;
}

void sub_1E2140978(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 174);

  _Unwind_Resume(a1);
}

id re::AudioManager_PHASE::createSamplerDefinitionForToken(re::AudioManager_PHASE *this, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  v2 = *(this + 83);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZNK2re18AudioManager_PHASE31createSamplerDefinitionForTokenEy_block_invoke;
  block[3] = &unk_1E871B908;
  block[4] = &v6;
  block[5] = this;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void ___ZNK2re18AudioManager_PHASE31createSamplerDefinitionForTokenEy_block_invoke(void *a1)
{
  v2 = re::AudioManager_PHASE_Async::createSamplerDefinitionForToken(*(a1[5] + 648), a1[6]);
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t re::AudioManager_PHASE::playbackStateForToken(re::AudioManager_PHASE *this, uint64_t a2)
{
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(this + 81) + 8);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eventFor:a2];
    v6 = [v5 state];
  }

  else
  {
    v6 = 5;
  }

  return v6;
}

id re::AudioManager_PHASE::audioSessionForToken(re::AudioManager_PHASE *this, uint64_t a2)
{
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(this + 81) + 8);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eventFor:a2];
    v6 = [v5 audioSession];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t re::AudioManager_PHASE::addAcousticMeshEvent(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = *(a1 + 106);
  v4 = *(v3 + 16);
  v5 = v4 + 1;
  v6 = *(v3 + 8);
  if (v4 + 1 >= v6)
  {
    if (v6 < v5)
    {
      if (*v3)
      {
        v7 = 2 * v6;
        if (!v6)
        {
          v7 = 8;
        }

        if (v7 <= v5)
        {
          v8 = v5;
        }

        else
        {
          v8 = v7;
        }

        re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>::setCapacity(*(a1 + 106), v8);
        v4 = *(v3 + 16);
      }

      else
      {
        re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>::setCapacity(v3, v5);
        v4 = 0;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
      }
    }

    v6 = *(v3 + 8);
  }

  v9 = *(v3 + 40) + 48 * ((*(v3 + 24) + v4) % v6);
  *v9 = 0;
  *(v9 + 40) = -1;
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
  v11 = *(a2 + 40);
  if (v11 != -1)
  {
    v12 = v9;
    result = (off_1F5CCBC08[v11])(&v12, a2);
    *(v9 + 40) = v11;
  }

  ++*(v3 + 16);
  ++*(v3 + 32);
  return result;
}

void re::AudioManager_PHASE::beforeFrameUpdate(re::AudioManager_PHASE *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v2, 2500, this);
  re::AudioManager::beforeFrameUpdate(this);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v2);
}

void re::AudioManager_PHASE::afterFrameUpdate(re::AudioManager_PHASE *this, float a2)
{
  v4 = *MEMORY[0x1E69E9840];
  ++*(this + 86);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v3, 2502, this);
  re::AudioManager::updateSTSStateAfterFrameUpdate(this);
  re::AudioSessionCache::update((this + 408));
}

void sub_1E2141474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double __Block_byref_object_copy__18(uint64_t a1, void *a2)
{
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v3 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v3;
  a2[6] = 0;
  a2[7] = 0;
  v4 = *(a1 + 64);
  *(a1 + 64) = a2[8];
  a2[8] = v4;
  v5 = *(a1 + 88);
  *(a1 + 88) = a2[11];
  a2[11] = v5;
  v6 = *(a1 + 72);
  *(a1 + 72) = a2[9];
  a2[9] = v6;
  return result;
}

void ___ZN2re18AudioManager_PHASE16afterFrameUpdateEf_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v5, 2520, *(v2 + 648));
  v3 = *(v2 + 648);
  v4 = atomic_load((v2 + 684));
  re::AudioManager_PHASE_Async::afterFrameUpdate(v3, v4, *(*(a1 + 32) + 8) + 48, *(a1 + 56));
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v5);
}

uint64_t *std::unique_ptr<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>,std::function<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>*)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>::operator()(result[4], v3);
  }

  return result;
}

void ___ZN2re18AudioManager_PHASE16afterFrameUpdateEf_block_invoke_21(uint64_t a1)
{
  v2 = *(a1 + 32);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v3, 2541, *(v2 + 648));
  re::AudioManager_PHASE_Async::afterFrameSlowMeshEvents(*(v2 + 648), *(a1 + 48));
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v3);
}

uint64_t __copy_helper_block_ea8_32c55_ZTSKZN2re18AudioManager_PHASE16afterFrameUpdateEfE3__0(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c55_ZTSKZN2re18AudioManager_PHASE16afterFrameUpdateEfE3__0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void re::AudioManager_PHASE::fadeSourceToGain(uint64_t a1, uint64_t a2, float a3, double a4)
{
  objc_initWeak(&location, (a2 + 8));
  v7 = *(a1 + 664);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re18AudioManager_PHASE16fadeSourceToGainERKNS_16AudioSourceStateEfd_block_invoke;
  block[3] = &__block_descriptor_60_ea8_40c45_ZTSN2re10ArcWeakPtrINS_16AudioSourceStateEEE_e5_v8__0l;
  block[4] = a1;
  v9[0] = 0;
  objc_copyWeak(v9, &location);
  v10 = a3;
  v9[1] = *&a4;
  dispatch_async(v7, block);
  objc_destroyWeak(v9);
  v9[0] = 0;
  objc_destroyWeak(&location);
}

uint64_t ___ZN2re18AudioManager_PHASE16fadeSourceToGainERKNS_16AudioSourceStateEfd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = (WeakRetained - 8);
  if (WeakRetained)
  {
    v5 = (WeakRetained - 8);
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (WeakRetained)
  {
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
      v4 = v7;
    }

    re::AudioManager_PHASE_Async::fadeSourceToGain(*(v2 + 648), v4, *(a1 + 56), *(a1 + 48));
  }

  return re::SharedPtr<re::AudioSourceState>::~SharedPtr(&v7);
}

void sub_1E214182C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  re::SharedPtr<re::AudioSourceState>::~SharedPtr(va);
  _Unwind_Resume(a1);
}

uint64_t re::SharedPtr<re::AudioSourceState>::~SharedPtr(uint64_t a1)
{
  if (*a1)
  {

    *a1 = 0;
  }

  return a1;
}

id *re::ArcWeakPtr<re::AudioSourceState>::~ArcWeakPtr(id *a1)
{
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

float re::AudioManager_PHASE::currentGainForSource(re::AudioManager_PHASE *this, const re::AudioSourceState *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(this + 81) + 8);
  v4 = v3;
  if (v3)
  {
    v5 = 712;
    if (*(a2 + 24))
    {
      v5 = 32;
    }

    v6 = [v3 eventFor:*(a2 + v5)];
    if (v6)
    {
      v7 = [v4 gainParamForToken:*(a2 + 89) isGroupPlaybackSound:*(a2 + 24)];
      v8 = [v6 paramForKey:v7];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 value];
        [v10 floatValue];
        v12 = v11;
      }

      else
      {
        v21 = *re::audioLogObjects(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a2 + 89);
          v25 = 134217984;
          v26 = v23;
          _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Could not find gain param for token %llu", &v25, 0xCu);
        }

        v12 = 0.0;
      }
    }

    else
    {
      v7 = *re::audioLogObjects(0);
      v12 = 0.0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = re::AssetHandle::assetInfo((a2 + 64));
        if (v13[17])
        {
          v14 = v13[18];
        }

        else
        {
          v14 = v13 + 137;
        }

        v15 = *(a2 + 89);
        v16 = *(a2 + 60);
        v17 = *(a2 + 66);
        v18 = *(a2 + 64);
        if (v18 && (v19 = *(v18 + 16)) != 0)
        {
          v20 = *(v19 + 296);
        }

        else
        {
          v20 = "";
        }

        v24 = *(a2 + 97);
        v25 = 136316418;
        v26 = v14;
        v27 = 2048;
        v28 = v15;
        v29 = 2048;
        v30 = v16;
        v31 = 2048;
        v32 = v17;
        v33 = 2080;
        v34 = v20;
        v35 = 2048;
        v36 = v24;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "AudioManager_PHASE::currentGainForSource(asset='%s', token=%llu, sceneID=%llu, entity(%llu, '%s'), sourceID=%llu) could not find sound event", &v25, 0x3Eu);
      }
    }
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

void re::AudioManager_PHASE::fadeSourceToReverbLevel(uint64_t a1, uint64_t a2, float a3, double a4)
{
  objc_initWeak(&location, (a2 + 8));
  v7 = *(a1 + 664);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re18AudioManager_PHASE23fadeSourceToReverbLevelERKNS_16AudioSourceStateEfd_block_invoke;
  block[3] = &__block_descriptor_60_ea8_40c45_ZTSN2re10ArcWeakPtrINS_16AudioSourceStateEEE_e5_v8__0l;
  block[4] = a1;
  v9[0] = 0;
  objc_copyWeak(v9, &location);
  v10 = a3;
  v9[1] = *&a4;
  dispatch_async(v7, block);
  objc_destroyWeak(v9);
  v9[0] = 0;
  objc_destroyWeak(&location);
}

uint64_t ___ZN2re18AudioManager_PHASE23fadeSourceToReverbLevelERKNS_16AudioSourceStateEfd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = (WeakRetained - 8);
  if (WeakRetained)
  {
    v5 = (WeakRetained - 8);
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (WeakRetained)
  {
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
      v4 = v7;
    }

    re::AudioManager_PHASE_Async::fadeSourceToReverbLevel(*(v2 + 648), v4, *(a1 + 56), *(a1 + 48));
  }

  return re::SharedPtr<re::AudioSourceState>::~SharedPtr(&v7);
}

void sub_1E2141D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  re::SharedPtr<re::AudioSourceState>::~SharedPtr(va);
  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE::fadeSourceToDirectLevel(uint64_t a1, uint64_t a2, float a3, double a4)
{
  objc_initWeak(&location, (a2 + 8));
  v7 = *(a1 + 664);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re18AudioManager_PHASE23fadeSourceToDirectLevelERKNS_16AudioSourceStateEfd_block_invoke;
  block[3] = &__block_descriptor_60_ea8_40c45_ZTSN2re10ArcWeakPtrINS_16AudioSourceStateEEE_e5_v8__0l;
  block[4] = a1;
  v9[0] = 0;
  objc_copyWeak(v9, &location);
  v10 = a3;
  v9[1] = *&a4;
  dispatch_async(v7, block);
  objc_destroyWeak(v9);
  v9[0] = 0;
  objc_destroyWeak(&location);
}

uint64_t ___ZN2re18AudioManager_PHASE23fadeSourceToDirectLevelERKNS_16AudioSourceStateEfd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = (WeakRetained - 8);
  if (WeakRetained)
  {
    v5 = (WeakRetained - 8);
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (WeakRetained)
  {
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
      v4 = v7;
    }

    re::AudioManager_PHASE_Async::fadeSourceToDirectLevel(*(v2 + 648), v4, *(a1 + 56), *(a1 + 48));
  }

  return re::SharedPtr<re::AudioSourceState>::~SharedPtr(&v7);
}

void sub_1E2141EA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  re::SharedPtr<re::AudioSourceState>::~SharedPtr(va);
  _Unwind_Resume(a1);
}

unint64_t *re::AudioManager_PHASE::createListenerInScene(re *a1, unint64_t a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v13 = a2;
    _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "AudioManager_PHASE::createListenerInScene(sceneID=%llu)", buf, 0xCu);
  }

  ListenerInScene = re::AudioManager::createListenerInScene(a1, a2);
  v8 = *(a1 + 83);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN2re18AudioManager_PHASE21createListenerInSceneEy19REAudioListenerType_block_invoke;
  v10[3] = &__block_descriptor_57_e5_v8__0l;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = ListenerInScene;
  v11 = a3;
  dispatch_async(v8, v10);
  return ListenerInScene;
}

void ___ZN2re18AudioManager_PHASE21createListenerInSceneEy19REAudioListenerType_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v3, 2504, v2);
  re::AudioManager_PHASE_Async::createListenerInScene(*(v2 + 648), *(a1 + 48), *(a1 + 40), *(a1 + 56));
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v3);
}

void re::AudioManager_PHASE::removeListenerFromScene(re::AudioManager_PHASE *this, uint64_t a2)
{
  if (a2)
  {
    for (i = *(this + 10); i; i = *i)
    {
      if (i[3] == a2)
      {
        i[3] = 0;
      }
    }

    v3 = *(this + 83);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re18AudioManager_PHASE23removeListenerFromSceneEy_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_async(v3, block);
  }
}

uint64_t re::AudioManager_PHASE::setListenerTransformAndLevel(uint64_t this, uint64_t a2, const simd_float4x4 *a3, float a4, uint64_t a5)
{
  v9 = this;
  v10 = (this + 80);
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    this = [v10[12] count];
    if (this)
    {
      goto LABEL_6;
    }
  }

  if (!*(v9 + 504))
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*(v9 + 104) == 1)
  {
    v11 = a3->columns[0];
    v17 = a3->columns[1];
    v12 = a3->columns[2];
    v18 = a3->columns[3];
    v13 = *(v9 + 256);
    *(v9 + 176) = a5;
    *(v9 + 184) = 0;
    *(v9 + 192) = v11;
    *(v9 + 208) = v17;
    *(v9 + 224) = v12;
    *(v9 + 240) = v18;
    if ((v13 & 1) == 0)
    {
      *(v9 + 256) = 1;
    }
  }

LABEL_9:
  *(v9 + 904) = a2;
  v14 = a3->columns[0];
  v15 = a3->columns[1];
  v16 = a3->columns[3];
  *(v9 + 944) = a3->columns[2];
  *(v9 + 960) = v16;
  *(v9 + 912) = v14;
  *(v9 + 928) = v15;
  *(v9 + 976) = a4;
  *(v9 + 984) = a5;
  return this;
}

__n128 re::AudioManager_PHASE::getListenerTransform(re::AudioManager_PHASE_Async **this)
{
  v1 = re::AudioManager_PHASE_Async::getListener(this[81]);
  v2 = v1;
  if (v1)
  {
    [v1 transform];
    v5 = v3;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9B18];
  }

  return v5;
}

float re::AudioManager_PHASE::getListenerLevel(re::AudioManager_PHASE_Async **this)
{
  v1 = re::AudioManager_PHASE_Async::getListener(this[81]);
  v2 = v1;
  if (v1)
  {
    [v1 gain];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

uint64_t re::AudioManager_PHASE::createSessionRootInScene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    return 0;
  }

  if (*(a3 + 8))
  {
    v6 = *(a3 + 16);
  }

  else
  {
    v6 = a3 + 9;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
  if (v9)
  {
    *__buf = 0;
    do
    {
      arc4random_buf(__buf, 8uLL);
      v7 = *__buf;
    }

    while (*__buf < 0x3E8uLL);
    v10 = *(a1 + 664);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZN2re18AudioManager_PHASE24createSessionRootInSceneEyNS_13DynamicStringE_block_invoke;
    v14[3] = &unk_1E871B978;
    v16 = a1;
    v17 = a2;
    v18 = *__buf;
    v15 = v9;
    dispatch_async(v10, v14);
  }

  else
  {
    v11 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (*(a3 + 8))
      {
        v13 = *(a3 + 16);
      }

      else
      {
        v13 = a3 + 9;
      }

      *__buf = 136315138;
      *&__buf[4] = v13;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "invalid UUID string %s", __buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

void ___ZN2re18AudioManager_PHASE24createSessionRootInSceneEyNS_13DynamicStringE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v3, 2528, v2);
  re::AudioManager_PHASE_Async::createSessionRootInScene(*(v2 + 648), *(a1 + 56), *(a1 + 48), *(a1 + 32));
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v3);
}

void re::AudioManager_PHASE::removeSessionRootFromScene(re::AudioManager_PHASE *this, uint64_t a2)
{
  v2 = *(this + 83);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN2re18AudioManager_PHASE26removeSessionRootFromSceneEy_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = this;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void re::AudioManager_PHASE::setSceneReverbPreset(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  re::AudioManager::setSceneReverbPreset(a1, a2, a3, a4);
  if (*(a1 + 816) != a3 || *(a1 + 824) != a4)
  {
    *(a1 + 816) = a3;
    *(a1 + 824) = a4;
    v7 = *(a1 + 664);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re18AudioManager_PHASE20setSceneReverbPresetEyNS_12ReverbPresetEb_block_invoke;
    block[3] = &__block_descriptor_49_e5_v8__0l;
    block[4] = a1;
    block[5] = a3;
    v9 = a4;
    dispatch_async(v7, block);
  }
}

void re::AudioManager_PHASE::setSpaceBlendTargetPresetOrientation(float32x4_t *this, float32x4_t a2)
{
  if ((vminvq_u32(vceqq_f32(this[50], a2)) & 0x80000000) == 0)
  {
    v2 = this[41].i64[1];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZN2re18AudioManager_PHASE36setSpaceBlendTargetPresetOrientationE10simd_quatf_block_invoke;
    v3[3] = &__block_descriptor_56_e5_v8__0l;
    v5 = this;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

uint64_t re::AudioManager_PHASE::loadAudio(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(*a2 + 104), 0, 1);
  if (v6)
  {
    v7 = v6;
    v8 = *re::audioLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = mach_error_string(v7);
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[AudioManager_PHASE] [loadAudio] Failed to increment the taskToken ref count, with KERN error: %s", &buf, 0xCu);
    }
  }

  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v10, *a2);
  *&buf = a2;
  *(&buf + 1) = a3;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a1;
  if (v11 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  p_buf = &buf;
  (off_1F5CCBA00[v11])(&p_buf, v10);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10);
}

void re::AudioManager_PHASE::loadExternalStreamController(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = a3[1];
  v17 = *a3;
  v18 = v6;
  v19 = *(a3 + 32);
  if (v19 == 1)
  {
    re::DynamicString::DynamicString(&v20, (a3 + 40));
  }

  v22 = *(a3 + 72);
  v7 = v22;
  if (v22 == 1)
  {
    v23 = *(a3 + 19);
  }

  v24 = *(a3 + 80);
  v8 = *(a1 + 664);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re18AudioManager_PHASE28loadExternalStreamControllerEyRKNS_27AudioFileAssetConfigurationE_block_invoke;
  block[3] = &__block_descriptor_136_ea8_48c38_ZTSN2re27AudioFileAssetConfigurationE_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  if (v19 == 1)
  {
    re::DynamicString::DynamicString(v13, &v20);
    v7 = v22;
  }

  v14 = v7;
  if (v7)
  {
    v15 = v23;
  }

  v16 = v24;
  dispatch_async(v8, block);
  if (v12 == 1 && v13[0])
  {
    if (v13[1])
    {
      (*(*v13[0] + 40))();
    }

    memset(v13, 0, sizeof(v13));
  }

  if (v19 == 1 && v20 && (v21 & 1) != 0)
  {
    (*(*v20 + 40))();
  }
}

re::DynamicString *__copy_helper_block_ea8_48c38_ZTSN2re27AudioFileAssetConfigurationE(re::DynamicString *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 64);
  *(result + 3) = *(a2 + 48);
  *(result + 4) = v4;
  v5 = *(a2 + 80);
  *(result + 80) = v5;
  if (v5 == 1)
  {
    result = re::DynamicString::DynamicString((result + 88), (a2 + 88));
  }

  v6 = *(a2 + 120);
  *(v3 + 120) = v6;
  if (v6 == 1)
  {
    *(v3 + 31) = *(a2 + 124);
  }

  *(v3 + 128) = *(a2 + 128);
  return result;
}

double __destroy_helper_block_ea8_48c38_ZTSN2re27AudioFileAssetConfigurationE(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    return re::DynamicString::deinit((a1 + 88));
  }

  return result;
}

uint64_t re::AudioManager_PHASE::getConfigurationForExternalStreamController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = *(a1 + 664);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2re18AudioManager_PHASE43getConfigurationForExternalStreamControllerEyRNS_27AudioFileAssetConfigurationE_block_invoke;
  v6[3] = &unk_1E871B9C0;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t ___ZN2re18AudioManager_PHASE43getConfigurationForExternalStreamControllerEyRNS_27AudioFileAssetConfigurationE_block_invoke(void *a1)
{
  result = re::AudioManager_PHASE_Async::getConfigurationForExternalStreamController(*(a1[5] + 648), a1[6], a1[7]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void re::AudioManager_PHASE::setSpatialSceneClassification(uint64_t a1, char a2)
{
  v2 = *(a1 + 664);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN2re18AudioManager_PHASE29setSpatialSceneClassificationENS_30SpatialSceneClassificationTypeE_block_invoke;
  v3[3] = &__block_descriptor_41_e5_v8__0l;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void re::AudioManager_PHASE::setSpatialSceneRoomIdentifier(re::AudioManager_PHASE *this, unsigned __int8 *a2)
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2];
  v4 = *(this + 83);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2re18AudioManager_PHASE29setSpatialSceneRoomIdentifierEPh_block_invoke;
  v6[3] = &unk_1E871B4D0;
  v7 = v3;
  v8 = this;
  v5 = v3;
  dispatch_async(v4, v6);
}

void re::AudioManager_PHASE::updateExternalSpatialSourcePhase(id **this, const re::AudioSourceState *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  re::AudioManager_PHASE::updateSourceStateInternal(this, a2);
  v21 = *(a2 + 89);
  if (!std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(this + 93, &v21))
  {
    v4 = UnfairLockedPointer<REPHASEContext>::get((this[81] + 1));
    v5 = v4;
    if (v4)
    {
      v6 = [v4 eventFor:v21];
      if (!v6)
      {
        v7 = *re::audioLogObjects(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(a2 + 89);
          v16 = *(a2 + 60);
          v17 = *(a2 + 66);
          v18 = *(a2 + 64);
          if (v18 && (v19 = *(v18 + 16)) != 0)
          {
            v20 = *(v19 + 296);
          }

          else
          {
            v20 = "";
          }

          buf = 134218754;
          *buf_4 = v15;
          v24 = 2048;
          v25 = v16;
          v26 = 2048;
          v27 = v17;
          v28 = 2080;
          v29 = v20;
          _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "AudioManager_PHASE::updateExternalSpatialSourcePhase(token=%llu, sceneID=%llu, entity(%llu, '%s'))", &buf, 0x2Au);
        }

        v8 = *this[45];
        v9 = this[1];
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = MEMORY[0x1E69E96A0];
          v11 = MEMORY[0x1E69E96A0];
        }

        re::AudioSourceState::playbackHostConnectionIdentifier(a2);
        v12 = re::AudioSourceSyncState::externalStreamUUID((a2 + 40));
        v13 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(this + 93, &v21);
        if (*(a2 + 66))
        {
          re::audio::REPHASESoundPrepareState::create(v13);
        }

        v14 = *re::audioLogObjects(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "updateExternalSpatialSourcePhase failed because sourceState has no entityID", &buf, 2u);
        }
      }
    }
  }
}

void sub_1E2143140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE::updateSourceStateInternal(re::AudioManager_PHASE *this, const re::AudioSourceState *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 60);
  if (v2 != -1)
  {
    v5 = 712;
    if (*(a2 + 24))
    {
      v5 = 32;
    }

    v6 = *(a2 + v5);
    v7 = UnfairLockedPointer<REPHASEContext>::get(*(this + 81) + 8);
    v8 = v7;
    if (v7)
    {
      v9 = [v7 reverbParamForToken:*(a2 + 89) isGroupPlaybackSound:*(a2 + 24)];
      v10 = [v8 directParamForToken:*(a2 + 89) isGroupPlaybackSound:*(a2 + 24)];
      if (*(a2 + 97) != v6)
      {
        *(a2 + 97) = v6;
      }

      v11 = *(this + 81);
      v12 = re::AudioSourceState::playbackHostConnectionIdentifier(a2);
      isPlaybackHostConnectionIdentifierSensitive = re::AudioManager_PHASE_Async::isPlaybackHostConnectionIdentifierSensitive(v11, v12);
      v14 = *(a2 + 23);
      v75 = *(a2 + 22);
      v76 = v14;
      v15 = *(a2 + 25);
      v77 = *(a2 + 24);
      v78 = v15;
      v26 = *(a2 + 24);
      v16 = *(a2 + 40);
      v61 = *(a2 + 7);
      v60 = v16;
      re::AssetHandle::AssetHandle(v62, (a2 + 64));
      v17 = *(a2 + 104);
      v18 = *(a2 + 136);
      v65 = *(a2 + 120);
      v66[0] = v18;
      *(v66 + 12) = *(a2 + 148);
      v63 = *(a2 + 88);
      v64 = v17;
      v67 = *(a2 + 168);
      if (v67 == 1)
      {
        re::DynamicString::DynamicString(v68, (a2 + 176));
      }

      v69 = *(a2 + 208);
      re::DynamicString::DynamicString(v70, (a2 + 216));
      v19 = *(a2 + 264);
      v71 = *(a2 + 248);
      v72 = v19;
      re::DynamicString::DynamicString(v73, (a2 + 280));
      v74 = *(a2 + 156);
      v20 = *(a2 + 66);
      v21 = *(a2 + 27);
      v32 = *(a2 + 26);
      v33 = v21;
      v22 = *(a2 + 29);
      v34 = *(a2 + 28);
      v35 = v22;
      v23 = *(this + 83);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = ___ZN2re18AudioManager_PHASE25updateSourceStateInternalERKNS_16AudioSourceStateE_block_invoke;
      block[3] = &unk_1F5CCB950;
      v39 = this;
      v40 = v2;
      v41 = v20;
      v30 = v77;
      v31 = v78;
      v28 = v75;
      v29 = v76;
      v58 = isPlaybackHostConnectionIdentifierSensitive;
      v36 = v8;
      v42 = v6;
      v43 = v60;
      v44 = v61;
      re::AssetHandle::AssetHandle(v45, v62);
      v47 = v65;
      v48[0] = v66[0];
      *(v48 + 12) = *(v66 + 12);
      *&v45[24] = v63;
      v46 = v64;
      v49 = v67;
      if (v67 == 1)
      {
        re::DynamicString::DynamicString(v50, v68);
      }

      v51 = v69;
      re::DynamicString::DynamicString(v52, v70);
      v53 = v71;
      v54 = v72;
      re::DynamicString::DynamicString(&v55, v73);
      v57 = v74;
      v24 = v9;
      v37 = v24;
      v25 = v10;
      v38 = v25;
      v59 = v26;
      dispatch_async(v23, block);

      if (v55)
      {
        if (BYTE8(v55))
        {
          (*(*v55 + 40))(v55, v56);
        }

        v55 = 0u;
        v56 = 0u;
      }

      if (v52[0])
      {
        if (v52[1])
        {
          (*(*v52[0] + 40))();
        }

        memset(v52, 0, sizeof(v52));
      }

      if (v49 == 1 && v50[0])
      {
        if (v50[1])
        {
          (*(*v50[0] + 40))();
        }

        memset(v50, 0, sizeof(v50));
      }

      re::AssetHandle::~AssetHandle(v45);

      if (v73[0])
      {
        if (v73[1])
        {
          (*(*v73[0] + 40))();
        }

        memset(v73, 0, sizeof(v73));
      }

      if (v70[0])
      {
        if (v70[1])
        {
          (*(*v70[0] + 40))();
        }

        memset(v70, 0, sizeof(v70));
      }

      if (v67 == 1 && v68[0])
      {
        if (v68[1])
        {
          (*(*v68[0] + 40))();
        }

        memset(v68, 0, sizeof(v68));
      }

      re::AssetHandle::~AssetHandle(v62);
    }
  }
}

id re::AudioSourceSyncState::externalStreamUUID(re::AudioSourceSyncState *this)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v1 = *(this + 29);
  if (*(this + 14) == 0)
  {
    v2 = 0;
  }

  else
  {
    v4[0] = *(this + 28);
    v4[1] = v1;
    v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v4];
  }

  return v2;
}

void ___ZN2re18AudioManager_PHASE32updateExternalSpatialSourcePhaseERKNS_16AudioSourceStateE_block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re18AudioManager_PHASE32updateExternalSpatialSourcePhaseERKNS_16AudioSourceStateE_block_invoke_2;
  block[3] = &unk_1E871BAC8;
  v18 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v17 = v6;
  v19 = v7;
  dispatch_async(v5, block);
  v9 = *re::audioLogObjects(v8);
  if (v3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      *buf = 138413058;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      v24 = 2048;
      v25 = v12;
      v26 = 2112;
      v27 = v3;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Could not prepare external stream UUID %@ for source state token %llu from connection %llu: %@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    *buf = 138412802;
    v21 = v13;
    v22 = 2048;
    v23 = v14;
    v24 = 2048;
    v25 = v15;
    _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Prepared and started external stream UUID %@ for source state token %llu from connection %llu", buf, 0x20u);
  }
}

void ___ZN2re18AudioManager_PHASE32updateExternalSpatialSourcePhaseERKNS_16AudioSourceStateE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) isCancelled];
  if (v3)
  {
    v4 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Engine cancelled, preparation completion", v5, 2u);
    }
  }

  else
  {

    std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::__erase_unique<unsigned long long>((v2 + 744), (a1 + 48));
  }
}

void re::AudioManager_PHASE::prepareSource(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a4;
  isSourcePrepared = re::AudioManager_PHASE::isSourcePrepared(a1, a2);
  v8 = isSourcePrepared;
  v9 = *re::audioLogObjects(isSourcePrepared);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a2[89];
      v12 = a2[60];
      v13 = a2[66];
      v14 = a2[64];
      if (v14 && (v15 = *(v14 + 16)) != 0)
      {
        v16 = *(v15 + 296);
      }

      else
      {
        v16 = "";
      }

      v29 = re::AssetHandle::assetInfo((a2 + 8));
      if (v29[17])
      {
        v30 = v29[18];
      }

      else
      {
        v30 = v29 + 137;
      }

      buf[0] = 134219010;
      *&buf[1] = v11;
      v38 = 2048;
      v39 = v12;
      v40 = 2048;
      v41 = v13;
      v42 = 2080;
      v43 = v16;
      v44 = 2080;
      v45 = v30;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "AudioManager_PHASE::prepareSource(token=%llu, sceneID=%llu, entity(%llu, '%s')), Asset = '%s' redundant prepare calls", buf, 0x34u);
    }

    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v32 = a2[89];
      v33 = a2[60];
      v34 = a2[66];
      v35 = re::AssetHandle::assetInfo((a2 + 8));
      if (v35[17])
      {
        v36 = v35[18];
      }

      else
      {
        v36 = v35 + 137;
      }

      buf[0] = 134218754;
      *&buf[1] = v32;
      v38 = 2048;
      v39 = v33;
      v40 = 2048;
      v41 = v34;
      v42 = 2080;
      v43 = v36;
      _os_log_debug_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEBUG, "AudioManager_PHASE::prepareSource(token=%llu, sceneID=%llu, entityID=%llu), Asset = '%s'", buf, 0x2Au);
    }

    v18 = a2[9];
    if (v18)
    {
      v19 = atomic_load((v18 + 896));
      if (v19 == 2)
      {
        re::AudioManager_PHASE::updateSourceStateInternal(a1, a2);
        v20 = **(a1 + 360);
        v21 = *(a1 + 8);
        v22 = v21;
        if (a2[66])
        {
          re::audio::REPHASESoundPrepareState::create(v21);
        }

        v31 = *re::audioLogObjects(v21);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0]) = 0;
          _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "AudioManager_PHASE::prepareSource failed because sourceState has no entityID", buf, 2u);
        }
      }

      else
      {
        v20 = *re::audioLogObjects(v17);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v23 = re::AssetHandle::assetInfo((a2 + 8));
          v25 = v23[17];
          v24 = v23[18];
          v26 = a2[89];
          v27 = re::AudioSourceState::playbackHostConnectionIdentifier(a2);
          v28 = v23 + 137;
          buf[0] = 136315650;
          if (v25)
          {
            v28 = v24;
          }

          *&buf[1] = v28;
          v38 = 2048;
          v39 = v26;
          v40 = 2048;
          v41 = v27;
          _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "AudioManager_PHASE::prepareSource cannot prepare asset that is not loaded. Asset='%s', token=%llu, connection=%llu", buf, 0x20u);
        }
      }
    }
  }
}

void sub_1E214482C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45)
{
  std::__function::__value_func<void ()(AUAudioUnit *,NSError *)>::~__value_func[abi:nn200100](v48 - 240);
  re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0::~$_0(&a13);

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a45);
  }

  _Unwind_Resume(a1);
}

BOOL re::AudioManager_PHASE::isSourcePrepared(re::AudioManager_PHASE *this, const re::AudioSourceState *a2)
{
  re::AudioGeneratorAsset::assetType(this);
  if ((*(a2 + 9) || !*(a2 + 33) && !*(a2 + 34)) && !*(a2 + 91))
  {
    return 0;
  }

  v5 = UnfairLockedPointer<REPHASEContext>::get(*(this + 81) + 8);
  v6 = v5;
  if (v5)
  {
    v7 = 712;
    if (*(a2 + 24))
    {
      v7 = 32;
    }

    v8 = [v5 eventFor:*(a2 + v7)];
    v4 = v8 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void ___ZN2re18AudioManager_PHASE13prepareSourceERNS_16AudioSourceStateE6CMTimeU13block_pointerFvP7NSErrorE_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *re::audioLogObjects(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 56);
    *buf = 134217984;
    v12 = v6;
    _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "Prepare completed for %llu", buf, 0xCu);
  }

  if (*(a1 + 48))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN2re18AudioManager_PHASE13prepareSourceERNS_16AudioSourceStateE6CMTimeU13block_pointerFvP7NSErrorE_block_invoke_32;
      block[3] = &unk_1E871BA10;
      v8 = *(a1 + 40);
      v10 = *(a1 + 48);
      v9 = v3;
      dispatch_async(v5, block);
    }
  }
}

void ___ZN2re18AudioManager_PHASE13prepareSourceERNS_16AudioSourceStateE6CMTimeU13block_pointerFvP7NSErrorE_block_invoke_32(uint64_t a1)
{
  v2 = [*(a1 + 32) isCancelled];
  if (v2)
  {
    v3 = *re::audioLogObjects(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Engine cancelled, preparation completion", v5, 2u);
    }
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

const void **re::AudioManager_PHASE::mixGroupStateFor(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  buf[3] = *MEMORY[0x1E69E9840];
  REAudioComputePHASEMixGroupID(a2, a3, a4, &v28);
  v5 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 88), &v28);
  v6 = a1[89];
  if (v6)
  {
    v7 = v5;
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *&v6)
      {
        v10 = v5 % *&v6;
      }
    }

    else
    {
      v10 = (*&v6 - 1) & v5;
    }

    v11 = *(a1[88] + 8 * v10);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v7)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100]((a1 + 88), i + 2, &v28.__r_.__value_.__l.__data_))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v9 > 1)
          {
            if (v13 >= *&v6)
            {
              v13 %= *&v6;
            }
          }

          else
          {
            v13 &= *&v6 - 1;
          }

          if (v13 != v10)
          {
            break;
          }
        }
      }
    }
  }

  v14 = objc_alloc(MEMORY[0x1E69781C0]);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v28;
  }

  else
  {
    v15 = v28.__r_.__value_.__r.__words[0];
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
  v17 = [v14 initWithIdentifier:v16];

  buf[0] = &v28;
  i = std::__hash_table<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 88, &v28.__r_.__value_.__l.__data_);
  objc_storeStrong(i + 6, v17);
  v19 = *re::audioLogObjects(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v28.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v20;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_INFO, "[RE/PHASE] [MixGroup] Will register PHASEGroup in the phase queue. PhaseID: %s (sceneID - connectionID - name).", buf, 0xCu);
  }

  v21 = a1[83];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3321888768;
  v24[2] = ___ZN2re18AudioManager_PHASE16mixGroupStateForEyyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
  v24[3] = &unk_1F5CCB988;
  v26 = a1;
  v22 = v17;
  v25 = v22;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v28;
  }

  dispatch_async(v21, v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return i + 5;
}

void sub_1E2144F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(_BYTE *a1, char *a2)
{
  if (a1[24] == 1)
  {
    MEMORY[0x1E6905F60]();
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, a2);
    a1[24] = 1;
  }

  return a1;
}

uint64_t re::AssetHandle::loadedAsset<re::AudioFileGroupAsset>(re::AudioFileGroupAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::AudioFileGroupAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::DynamicArray<re::AssetHandle>::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::AssetHandle::loadedAsset<re::AudioGeneratorAsset>(re::AudioGeneratorAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::AudioGeneratorAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t re::AudioManager_PHASE::preparePlaybackGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  memset(v41, 0, sizeof(v41));
  v42 = 1065353216;
  if (!*(a2 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "[AudioManager_PHASE] [preparePlaybackGroup] Cannot prepare playback group with zero playback tokens.");
    v29 = re::audio::throttledLog(OS_LOG_TYPE_ERROR, __p);
    v30 = v29;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if (!v30)
      {
        goto LABEL_63;
      }
    }

    else if (!v29)
    {
      goto LABEL_63;
    }

    v31 = *re::audioLogObjects(v29);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    *__p = 134217984;
    *&__p[4] = a3;
    v32 = "[AudioManager_PHASE] [preparePlaybackGroup] Cannot prepare a playback group: %llu forwith zero playback tokens.";
    goto LABEL_55;
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    goto LABEL_43;
  }

  v9 = (a1 + 608);
  while (1)
  {
    v40 = v8[2];
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((a1 + 608), &v40);
    if (!v10)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "[AudioManager_PHASE] [preparePlaybackGroup] Cannot find playback group.");
      v33 = re::audio::throttledLog(OS_LOG_TYPE_ERROR, __p);
      v34 = v33;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (!v34)
      {
        goto LABEL_63;
      }

      v31 = *re::audioLogObjects(v33);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      *__p = 134217984;
      *&__p[4] = a3;
      v32 = "[AudioManager_PHASE] [preparePlaybackGroup] Cannot find playback group for token: %llu";
LABEL_55:
      _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, v32, __p, 0xCu);
      goto LABEL_63;
    }

    v11 = *(v10[3] + 376);
    v12 = *(*(v11 + 8) + 176);
    if (v12 == 1)
    {
      goto LABEL_64;
    }

    if (v12 == 2)
    {
      break;
    }

    *__p = &v40;
    v13 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 608), v40);
    *__p = &v40;
    v14 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v41, v40);
    v16 = v13[3];
    v15 = v13[4];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = v14[4];
    v14[3] = v16;
    v14[4] = v15;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    v8 = *v8;
    if (!v8)
    {
      v18 = *(a2 + 16);
      if (v18)
      {
        while (1)
        {
          v40 = v18[2];
          v19 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((a1 + 608), &v40);
          if (v19)
          {
            break;
          }

LABEL_42:
          v18 = *v18;
          if (!v18)
          {
            goto LABEL_43;
          }
        }

        v20 = *(a1 + 616);
        v21 = v19[1];
        v22 = vcnt_s8(v20);
        v22.i16[0] = vaddlv_u8(v22);
        if (v22.u32[0] > 1uLL)
        {
          if (v21 >= *&v20)
          {
            v21 %= *&v20;
          }
        }

        else
        {
          v21 &= *&v20 - 1;
        }

        v23 = *v19;
        v24 = *(*v9 + 8 * v21);
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24 != v19);
        if (v25 == (a1 + 624))
        {
          goto LABEL_31;
        }

        v26 = v25[1];
        if (v22.u32[0] > 1uLL)
        {
          if (v26 >= *&v20)
          {
            v26 %= *&v20;
          }
        }

        else
        {
          v26 &= *&v20 - 1;
        }

        if (v26 != v21)
        {
LABEL_31:
          if (v23)
          {
            v27 = *(v23 + 8);
            if (v22.u32[0] > 1uLL)
            {
              v28 = *(v23 + 8);
              if (v27 >= *&v20)
              {
                v28 = v27 % *&v20;
              }
            }

            else
            {
              v28 = v27 & (*&v20 - 1);
            }

            if (v28 == v21)
            {
              goto LABEL_35;
            }
          }

          *(*v9 + 8 * v21) = 0;
          v23 = *v19;
        }

        if (!v23)
        {
LABEL_41:
          *v25 = v23;
          *v19 = 0;
          --*(a1 + 632);
          __p[16] = 1;
          *&__p[17] = 0;
          *&__p[20] = 0;
          *__p = 0;
          *&__p[8] = a1 + 608;
          std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,void *>>>::operator()[abi:ne200100](&__p[8], v19);
          goto LABEL_42;
        }

        v27 = *(v23 + 8);
LABEL_35:
        if (v22.u32[0] > 1uLL)
        {
          if (v27 >= *&v20)
          {
            v27 %= *&v20;
          }
        }

        else
        {
          v27 &= *&v20 - 1;
        }

        if (v27 != v21)
        {
          *(*v9 + 8 * v27) = v25;
          v23 = *v19;
        }

        goto LABEL_41;
      }

LABEL_43:
      re::AudioManager_PHASE_Async::prepareGroupSourceAsync(*(a1 + 648), v41, a3, *(a1 + 664), a4);
      v12 = 0;
      goto LABEL_64;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "[AudioManager_PHASE] [preparePlaybackGroup] Audio asset failed to load.");
  v35 = re::audio::throttledLog(OS_LOG_TYPE_ERROR, __p);
  v36 = v35;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (!v36)
    {
      goto LABEL_63;
    }
  }

  else if (!v35)
  {
    goto LABEL_63;
  }

  v37 = *re::audioLogObjects(v35);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v39 = *(*(v11 + 8) + 24);
    *__p = 134218240;
    *&__p[4] = v39;
    *&__p[12] = 2048;
    *&__p[14] = a3;
    _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "[AudioManager_PHASE] [preparePlaybackGroup] Audio asset: %llu failed to load. Cannot prepare playback group for token: %llu", __p, 0x16u);
  }

LABEL_63:
  v12 = 2;
LABEL_64:
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(v41);
  return v12;
}

void re::AudioManager_PHASE::scheduleSourceState(uint64_t a1, uint64_t a2, char a3, void *a4, __int128 *a5, double a6)
{
  objc_initWeak(&location, (a2 + 8));
  v11 = *(a1 + 664);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re18AudioManager_PHASE19scheduleSourceStateERKNS_16AudioSourceStateEbdy6CMTime_block_invoke;
  block[3] = &__block_descriptor_89_ea8_40c45_ZTSN2re10ArcWeakPtrINS_16AudioSourceStateEEE_e5_v8__0l;
  block[4] = a1;
  v13[0] = 0;
  objc_copyWeak(v13, &location);
  v13[1] = a4;
  v14 = *a5;
  v15 = *(a5 + 2);
  v16 = a3;
  v13[2] = *&a6;
  dispatch_async(v11, block);
  objc_destroyWeak(v13);
  v13[0] = 0;
  objc_destroyWeak(&location);
}

uint64_t ___ZN2re18AudioManager_PHASE19scheduleSourceStateERKNS_16AudioSourceStateEbdy6CMTime_block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = (WeakRetained - 8);
  if (!WeakRetained)
  {
    v4 = 0;
  }

  v33 = v4;
  if (WeakRetained)
  {
    v5 = UnfairLockedPointer<REPHASEContext>::get(*(v2 + 648) + 8);
    v6 = v5;
    v7 = 712;
    if (*(v33 + 24))
    {
      v7 = 32;
    }

    v8 = [v5 eventFor:*(v33 + v7)];
    v9 = *re::audioLogObjects(v8);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(v33 + 89);
        v17 = *(a1 + 48);
        lhs = *(a1 + 64);
        Seconds = CMTimeGetSeconds(&lhs);
        v19 = *(a1 + 88);
        v20 = *(a1 + 56);
        LODWORD(time.value) = 134219008;
        *(&time.value + 4) = v16;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v17;
        HIWORD(time.epoch) = 2048;
        v35 = Seconds;
        v36 = 1024;
        *v37 = v19;
        *&v37[4] = 2048;
        *&v37[6] = v20;
        _os_log_debug_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEBUG, "scheduling token %llu at time %llu with offset %0.3f, shouldSeek=%d, rate=%0.2f", &time, 0x30u);
      }

      if (*(a1 + 88) == 1)
      {
        if (*(a1 + 76))
        {
          time = *(a1 + 64);
          [(re *)v8 seekToTime:CMTimeGetSeconds(&time)];
        }

        else
        {
          memset(&time, 0, sizeof(time));
          HostTimeClock = CMClockGetHostTimeClock();
          CMClockGetTime(&lhs, HostTimeClock);
          CMClockMakeHostTimeFromSystemUnits(&rhs, *(a1 + 48));
          CMTimeSubtract(&time, &lhs, &rhs);
          lhs = time;
          [(re *)v8 seekToTime:CMTimeGetSeconds(&lhs)];
        }
      }

      if (*(a1 + 56) == 0.0)
      {
        time = *(a1 + 64);
        if (CMTimeGetSeconds(&time) != 0.0 || ((v13 = *(v33 + 9)) == 0 ? (v14 = 0) : (v14 = *(v13 + 280)), v14 == re::AudioGeneratorAsset::assetType(v12)))
        {
          [(re *)v8 pause];
        }

        else
        {
          [(re *)v8 stopAndRePrepare];
        }
      }

      else
      {
        if (re::internal::enableSignposts(0, 0))
        {
          kdebug_trace();
        }

        [(re *)v8 resume];
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v21 = re::AssetHandle::assetInfo((v33 + 64));
        if (v21[17])
        {
          v22 = v21[18];
        }

        else
        {
          v22 = v21 + 137;
        }

        v23 = *(v33 + 89);
        v24 = re::AudioSourceState::playbackHostConnectionIdentifier(v33);
        v25 = *(v33 + 60);
        v26 = *(v33 + 66);
        v27 = *(v33 + 64);
        if (v27 && (v28 = *(v27 + 16)) != 0)
        {
          v29 = *(v28 + 296);
        }

        else
        {
          v29 = "";
        }

        v30 = *(v33 + 97);
        LODWORD(time.value) = 136316674;
        *(&time.value + 4) = v22;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v23;
        HIWORD(time.epoch) = 2048;
        v35 = *&v24;
        v36 = 2048;
        *v37 = v25;
        *&v37[8] = 2048;
        *&v37[10] = v26;
        v38 = 2080;
        v39 = v29;
        v40 = 2048;
        v41 = v30;
        _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "AudioManager_PHASE::scheduleSourceState(asset=%s, token=%llu, connection=%llu, sceneID=%llu, entity(%llu, '%s'), sourceID=%llu) could not find sound event", &time, 0x48u);
      }
    }
  }

  return re::SharedPtr<re::AudioSourceState>::~SharedPtr(&v33);
}

void sub_1E2145C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  re::SharedPtr<re::AudioSourceState>::~SharedPtr(va);
  _Unwind_Resume(a1);
}

uint64_t re::AudioManager_PHASE::isPreparingSoundEvent(re::AudioManager_PHASE *this, const re::AudioSourceState *a2)
{
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(this + 81) + 8);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eventBeingPrepared:*(a2 + 89)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unint64_t re::AudioManager_PHASE::prepareMeshAsset(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a2;
  v10 = *(a1 + 648);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::DynamicArray(v15, a3);
  re::DynamicArray<re::AcousticScatteringMaterial>::DynamicArray(v14, a4);
  re::DynamicArray<re::AcousticSoundReductionMaterial>::DynamicArray(v13, a5);
  v11 = re::AudioManager_PHASE_Async::prepareMeshAsset(v10, v9, v15, v14, v13);
  re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(v13);
  re::DynamicArray<re::AcousticScatteringMaterial>::deinit(v14);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(v15);

  return v11;
}

void sub_1E2145DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(va);
  re::DynamicArray<re::AcousticScatteringMaterial>::deinit(va1);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(va2);

  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE::removeMeshAsset(re::AudioManager_PHASE *this, uint64_t a2)
{
  v2 = *(this + 83);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN2re18AudioManager_PHASE15removeMeshAssetEy_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = this;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void re::AudioManager_PHASE::setTransformForEntity(re::AudioManager_PHASE *this, uint64_t a2, uint64_t a3, simd_float4x4 a4, simd_float4x4 a5, char a6)
{
  v6 = *(this + 83);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN2re18AudioManager_PHASE21setTransformForEntityEyy13simd_float4x4S1_b_block_invoke;
  v7[3] = &__block_descriptor_185_e5_v8__0l;
  v10 = this;
  v11 = a2;
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v13 = a6;
  dispatch_async(v6, v7);
}

void re::AudioManager_PHASE::setTargetRoomAcousticParameters(uint64_t a1, char *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = &v6[5 * v5];
    do
    {
      v8 = *v6;
      v9 = v6[1];
      v11 = v6[2];
      v10 = v6[3];
      v12 = v6[4];
      v13 = objc_alloc_init(MEMORY[0x1E6978250]);
      [v13 setRt60:v9];
      [v13 setFrequency:v8];
      [v13 setConfidence:v11];
      [v13 setLateRoomEqDb:v10];
      [v13 setEarlyRoomEqDb:v12];
      [v4 addObject:v13];

      v6 += 5;
    }

    while (v6 != v7);
  }

  v14 = [objc_alloc(MEMORY[0x1E6978248]) initWithSubbandParameters:v4];
  v15 = *a2;
  v16 = *(a1 + 664);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re18AudioManager_PHASE31setTargetRoomAcousticParametersERKNS_22RoomAcousticParametersE_block_invoke;
  block[3] = &unk_1E871BA80;
  v19 = v14;
  v20 = a1;
  v21 = v15;
  v17 = v14;
  dispatch_async(v16, block);
}

void re::AudioManager_PHASE::disableTargetRoomAcousticParameters(re::AudioManager_PHASE *this)
{
  v1 = *(this + 83);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re18AudioManager_PHASE35disableTargetRoomAcousticParametersEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_async(v1, block);
}

void re::AudioManager_PHASE::setSpaceBlendLevel(re::AudioManager_PHASE *this, float a2)
{
  if (*(this + 210) != a2)
  {
    v7 = v2;
    v8 = v3;
    *(this + 210) = a2;
    v4 = *(this + 83);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___ZN2re18AudioManager_PHASE18setSpaceBlendLevelEf_block_invoke;
    v5[3] = &__block_descriptor_44_e5_v8__0l;
    v5[4] = this;
    v6 = a2;
    dispatch_async(v4, v5);
  }
}

void re::AudioManager_PHASE::unloadAsset(re::AudioManager_PHASE *this, unint64_t a2)
{
  v2 = a2;
  v4 = *(this + 84);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re18AudioManager_PHASE11unloadAssetEy_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = this;
  block[5] = a2;
  dispatch_async(v4, block);
  os_unfair_lock_lock(this + 263);
  v5 = *(this + 1064);
  if (v5)
  {
    v6 = (this + 1056);
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v2;
      if (*&v5 <= v2)
      {
        v8 = v2 % *&v5;
      }
    }

    else
    {
      v8 = (*&v5 - 1) & v2;
    }

    v9 = *v6;
    v10 = *(*v6 + 8 * v8);
    if (v10)
    {
      v11 = *v10;
      if (v11)
      {
        v12 = *&v5 - 1;
        do
        {
          v13 = v11[1];
          if (v13 == v2)
          {
            if (v11[2] == v2)
            {
              if (v7.u32[0] > 1uLL)
              {
                if (*&v5 <= v2)
                {
                  v2 %= *&v5;
                }
              }

              else
              {
                v2 &= v12;
              }

              v14 = *(v9 + 8 * v2);
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14 != v11);
              if (v15 == (this + 1072))
              {
                goto LABEL_36;
              }

              v16 = v15[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v16 >= *&v5)
                {
                  v16 %= *&v5;
                }
              }

              else
              {
                v16 &= v12;
              }

              if (v16 != v2)
              {
LABEL_36:
                if (!*v11)
                {
                  goto LABEL_37;
                }

                v17 = *(*v11 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v17 >= *&v5)
                  {
                    v17 %= *&v5;
                  }
                }

                else
                {
                  v17 &= v12;
                }

                if (v17 != v2)
                {
LABEL_37:
                  *(v9 + 8 * v2) = 0;
                }
              }

              v18 = *v11;
              if (*v11)
              {
                v19 = *(v18 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v19 >= *&v5)
                  {
                    v19 %= *&v5;
                  }
                }

                else
                {
                  v19 &= v12;
                }

                if (v19 != v2)
                {
                  *(*v6 + 8 * v19) = v15;
                  v18 = *v11;
                }
              }

              *v15 = v18;
              *v11 = 0;
              --*(this + 135);
              v21[0] = v11;
              v21[1] = this + 1056;
              v22 = 1;
              memset(v23, 0, sizeof(v23));
              std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,void *>>>>::~unique_ptr[abi:ne200100](v21);
              break;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v13 >= *&v5)
              {
                v13 %= *&v5;
              }
            }

            else
            {
              v13 &= v12;
            }

            if (v13 != v8)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  os_unfair_lock_unlock(this + 263);
}

id re::AudioManager_PHASE::getPHASEAssetForIdentifier(re::AudioManager_PHASE *this, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  v2 = *(this + 83);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZNK2re18AudioManager_PHASE26getPHASEAssetForIdentifierEy_block_invoke;
  block[3] = &unk_1E871B908;
  block[4] = &v6;
  block[5] = this;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void ___ZNK2re18AudioManager_PHASE26getPHASEAssetForIdentifierEy_block_invoke(void *a1)
{
  v2 = re::AudioManager_PHASE_Async::getPHASEAssetForIdentifier(*(a1[5] + 648), a1[6]);
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void re::AudioManager_PHASE::removeSourceFromSceneIfIncorrectlyConnected(re::AudioManager_PHASE *this, const re::AudioSourceState *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  re::AudioManager::removeSourceFromSceneIfIncorrectlyConnected(this, a2);
  v4 = UnfairLockedPointer<REPHASEContext>::get(*(this + 81) + 8);
  v5 = v4;
  if (v4)
  {
    v6 = 712;
    if (*(a2 + 24))
    {
      v6 = 32;
    }

    if ([v4 doCleanUpSoundEventForToken:*(a2 + v6) ifNotInScene:*(a2 + 60)])
    {
      if (*(a2 + 24) == 1)
      {
        re::AudioManager::removeAudioGroup(this, *(a2 + 4));
      }

      re::AudioManager_PHASE_Async::setPlaybackStateChangeHandlerForToken(*(this + 81), *(a2 + 89), 0);
      v8 = *re::audioLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a2 + 89);
        v10 = 134217984;
        v11 = v9;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Playback] Stopped sound with token: %llu", &v10, 0xCu);
      }

      *(a2 + 97) = 0;
      *(a2 + 189) = 0;
    }
  }
}

void ___ZN2re18AudioManager_PHASE25updateSourceStateInternalERKNS_16AudioSourceStateE_block_invoke(uint64_t a1)
{
  v100 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 184);
  re::AudioManager_PHASE_Async::setTransformForEntity(*(v2 + 648), *(a1 + 192), *(a1 + 200), *(a1 + 32), *(a1 + 96), *(a1 + 496));
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(v2 + 648) + 8);
  v4 = v3;
  if (*(a1 + 160))
  {
    v5 = [v3 eventFor:*(a1 + 208)];
    v6 = v5;
    if (!v5)
    {
LABEL_50:

      goto LABEL_51;
    }

    v7 = [v5 soundEvent];
    if (v7)
    {
    }

    else
    {
      v8 = [v6 externalStreamController];

      if (!v8)
      {
LABEL_18:
        v41 = *(a1 + 272);
        [v6 cachedPlaybackSpeed];
        if (v41 != v42)
        {
          v43 = [v6 paramForKey:@"rate"];
          if (v43)
          {
            LODWORD(v44) = *(a1 + 272);
            v45 = *re::audioLogObjects([v6 setCachedPlaybackSpeed:v44]);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              v88 = *(a1 + 272);
              v89 = *(a1 + 208);
              *__p = 134218240;
              *&__p[4] = v88;
              v98 = 2048;
              *v99 = v89;
              _os_log_debug_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEBUG, "[RE/PHASE] [Playback] Rate=%.2f for token=%llu", __p, 0x16u);
            }

            [v43 fadeToValue:*(a1 + 272) duration:0.0];
          }

          else
          {
            v71 = [v6 soundEvent];
            v72 = v71 == 0;

            if (!v72)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "Could not find rate param for token");
              v73 = re::audio::throttledLog(OS_LOG_TYPE_ERROR, __p);
              v74 = v73;
              if ((v99[9] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              if (v74)
              {
                v75 = *re::audioLogObjects(v73);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                {
                  v76 = *(a1 + 208);
                  *__p = 134217984;
                  *&__p[4] = v76;
                  _os_log_error_impl(&dword_1E1C61000, v75, OS_LOG_TYPE_ERROR, "Could not find rate param for token %llu", __p, 0xCu);
                }
              }
            }
          }
        }

        v46 = *(a1 + 288);
        v47 = *(a1 + 292);
        [v6 cachedReverbSendLevel];
        v48 = v46 + v47;
        if (v48 != v49)
        {
          v50 = [v6 paramForKey:*(a1 + 168)];
          if (v50)
          {
            *&v51 = v48;
            [v6 setCachedReverbSendLevel:v51];
            v52 = __exp10f(v48 / 20.0);
            v54 = *re::audioLogObjects(v53);
            v55 = v52;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              v90 = *(a1 + 208);
              *__p = 134218240;
              *&__p[4] = v55;
              v98 = 2048;
              *v99 = v90;
              _os_log_debug_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_DEBUG, "[RE/PHASE] [Playback] Reverb=%.2f for token=%llu", __p, 0x16u);
            }

            [v50 fadeToValue:v55 duration:0.0];
          }
        }

        v56 = *(a1 + 304);
        v57 = *(a1 + 296);
        [v6 cachedDirectSendLevel];
        v58 = v56 + v57;
        if (v58 != v59)
        {
          v60 = [v6 paramForKey:*(a1 + 176)];
          if (v60)
          {
            *&v61 = v58;
            [v6 setCachedDirectSendLevel:v61];
            v62 = __exp10f(v58 / 20.0);
            v64 = *re::audioLogObjects(v63);
            v65 = v62;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              v91 = *(a1 + 208);
              *__p = 134218240;
              *&__p[4] = v65;
              v98 = 2048;
              *v99 = v91;
              _os_log_debug_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEBUG, "[RE/PHASE] [Playback] Direct=%.2f for token=%llu", __p, 0x16u);
            }

            [v60 fadeToValue:v65 duration:0.0];
          }
        }

        if (*(a1 + 497) == 1)
        {
          [v6 prepareStates];
          v66 = *&v99[2];
          if (*&v99[2])
          {
            do
            {
              v68 = v66[3];
              v67 = v66[4];
              if (v67)
              {
                atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v69 = *(a1 + 428);
              if (v69 != *(v68 + 308))
              {
                *(v68 + 308) = v69;
              }

              *(v68 + 312) = *(a1 + 432);
              *(v68 + 103) = *(a1 + 308);
              *(v68 + 196) = *(a1 + 300);
              if (v67)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v67);
              }

              v66 = *v66;
            }

            while (v66);
          }

          std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(__p);
        }

        else
        {
          [v6 prepareState];
          v70 = *(a1 + 428);
          if (v70 != *(v93 + 308))
          {
            *(v93 + 308) = v70;
          }

          *(v93 + 312) = *(a1 + 432);
          *(v93 + 103) = *(a1 + 308);
          *(v93 + 196) = *(a1 + 300);
          if (v94)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v94);
          }
        }

        goto LABEL_50;
      }
    }

    v10 = *(a1 + 32);
    v9 = *(a1 + 48);
    v11 = *(a1 + 64);
    LODWORD(v12) = HIDWORD(*(a1 + 48));
    v13 = COERCE_FLOAT(*(a1 + 72));
    v14 = v13 + (*v10.i32 + v12);
    if (v14 >= 0.0)
    {
      v28 = sqrtf(v14 + 1.0);
      v29 = v28 + v28;
      v30 = vrecpe_f32(COERCE_UNSIGNED_INT(v28 + v28));
      v31 = vmul_f32(v30, vrecps_f32(COERCE_UNSIGNED_INT(v28 + v28), v30));
      v31.i32[0] = vmul_f32(v31, vrecps_f32(COERCE_UNSIGNED_INT(v28 + v28), v31)).u32[0];
      *v25.f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&v11), vext_s8(*&v11, *&vextq_s8(v10, v10, 8uLL), 4uLL)), v31.f32[0]);
      v32.f32[0] = *&v10.i32[1] - *v9.i32;
      v32.f32[1] = v29;
      v31.i32[1] = 0.25;
      v27 = vmul_f32(v32, v31);
    }

    else if (*v10.i32 < v12 || *v10.i32 < v13)
    {
      v77 = 1.0 - *v10.i32;
      if (v12 >= v13)
      {
        v83 = sqrtf(v12 + (v77 - v13));
        *&v84 = v83 + v83;
        v85 = vrecpe_f32(v84);
        v86 = vmul_f32(v85, vrecps_f32(v84, v85));
        v87.i32[0] = vmul_f32(v86, vrecps_f32(v84, v86)).u32[0];
        v86.f32[0] = *&v10.i32[1] + *v9.i32;
        v86.i32[1] = v84;
        v27 = vmul_n_f32(vext_s8(vadd_f32(*&v11, vdup_laneq_s32(v9, 2)), vsub_f32(*&v11, *&vextq_s8(v10, v10, 8uLL)), 4uLL), v87.f32[0]);
        v87.i32[1] = 0.25;
        *v25.f32 = vmul_f32(v86, v87);
      }

      else
      {
        v78 = sqrtf(v13 + (v77 - v12));
        v79.f32[0] = v78 + v78;
        v80 = vrecpe_f32(COERCE_UNSIGNED_INT(v78 + v78));
        v81 = vmul_f32(v80, vrecps_f32(COERCE_UNSIGNED_INT(v78 + v78), v80));
        v81.i32[0] = vmul_f32(v81, vrecps_f32(COERCE_UNSIGNED_INT(v78 + v78), v81)).u32[0];
        *v25.f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v10, v10, 8uLL), *&vextq_s8(v9, v9, 8uLL)), *&v11), v81.f32[0]);
        v79.f32[1] = *&v10.i32[1] - *v9.i32;
        __asm { FMOV            V0.2S, #0.25 }

        _D0.i32[1] = v81.i32[0];
        v27 = vmul_f32(v79, _D0);
      }
    }

    else
    {
      v15 = sqrtf(*v10.i32 + ((1.0 - v12) - v13));
      v16.f32[0] = v15 + v15;
      v17 = vrecpe_f32(v16.u32[0]);
      v18 = vmul_f32(v17, vrecps_f32(v16.u32[0], v17));
      LODWORD(v19) = vmul_f32(v18, vrecps_f32(v16.u32[0], v18)).u32[0];
      v16.f32[1] = *&v10.i32[1] + *v9.i32;
      __asm { FMOV            V5.2S, #0.25 }

      _D5.f32[1] = v19;
      *v25.f32 = vmul_f32(v16, _D5);
      v26.i32[0] = vadd_f32(*&vextq_s8(v10, v10, 8uLL), *&v11).u32[0];
      v26.i32[1] = vsub_f32(vdup_laneq_s32(*&v9, 2), *&v11).i32[1];
      v27 = vmul_n_f32(v26, v19);
    }

    v33 = vadd_f32(vmul_f32(*v25.f32, *v25.f32), vmul_f32(v27, v27));
    if (vaddv_f32(v33) == 0.0)
    {
      v34 = xmmword_1E30474D0;
    }

    else
    {
      *&v25.u32[2] = v27;
      v35 = vadd_f32(v33, vdup_lane_s32(v33, 1)).u32[0];
      v36 = vrsqrte_f32(v35);
      v37 = vmul_f32(v36, vrsqrts_f32(v35, vmul_f32(v36, v36)));
      v34 = vmulq_n_f32(v25, vmul_f32(v37, vrsqrts_f32(v35, vmul_f32(v37, v37))).f32[0]);
    }

    v38 = [v6 soundEvent];

    if (v38)
    {
      [v6 soundEvent];
    }

    else
    {
      [v6 externalStreamController];
    }
    v39 = ;
    v40 = [v39 mixers];

    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = ___ZN2re18AudioManager_PHASE25updateSourceStateInternalERKNS_16AudioSourceStateE_block_invoke_2;
    v95[3] = &__block_descriptor_48_e15_v32__0_8_16_B24l;
    v96 = v92;
    [v40 enumerateKeysAndObjectsUsingBlock:v95];

    goto LABEL_18;
  }

LABEL_51:
}

void sub_1E2146E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN2re18AudioManager_PHASE25updateSourceStateInternalERKNS_16AudioSourceStateE_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setOrientation:*(a1 + 32)];
  }
}

re::DynamicString *__copy_helper_block_ea16_216c31_ZTSN2re20AudioSourceSyncStateE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v4;
  re::AssetHandle::AssetHandle((a1 + 240), (a2 + 240));
  *(a1 + 264) = *(a2 + 264);
  v5 = *(a2 + 280);
  v6 = *(a2 + 296);
  v7 = *(a2 + 312);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 296) = v6;
  *(a1 + 312) = v7;
  *(a1 + 280) = v5;
  v8 = *(a2 + 344);
  *(a1 + 344) = v8;
  if (v8 == 1)
  {
    re::DynamicString::DynamicString((a1 + 352), (a2 + 352));
  }

  *(a1 + 384) = *(a2 + 384);
  re::DynamicString::DynamicString((a1 + 392), (a2 + 392));
  v9 = *(a2 + 440);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 440) = v9;
  result = re::DynamicString::DynamicString((a1 + 456), (a2 + 456));
  *(a1 + 488) = *(a2 + 488);
  return result;
}

void __destroy_helper_block_ea16_216c31_ZTSN2re20AudioSourceSyncStateE(_BYTE *a1)
{
  re::DynamicString::deinit((a1 + 456));
  re::DynamicString::deinit((a1 + 392));
  if (a1[344] == 1)
  {
    re::DynamicString::deinit((a1 + 352));
  }

  re::AssetHandle::~AssetHandle((a1 + 240));
}

void re::AudioManager_PHASE::forceAudioOutputType(uint64_t a1, int a2)
{
  v2 = *(a1 + 664);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN2re18AudioManager_PHASE20forceAudioOutputTypeE17REAudioOutputType_block_invoke;
  v3[3] = &__block_descriptor_44_e5_v8__0l;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t re::AudioManager_PHASE::currentAudioOutputType(re::AudioManager_PHASE *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(this + 83);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN2re18AudioManager_PHASE22currentAudioOutputTypeEv_block_invoke;
  v4[3] = &unk_1E871B8E0;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZN2re18AudioManager_PHASE22currentAudioOutputTypeEv_block_invoke(uint64_t a1)
{
  result = re::AudioManager_PHASE_Async::currentAudioOutputType(*(*(a1 + 40) + 648));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void re::AudioManager_PHASE::applyCustomHRIR(id *this)
{
  v2 = this[43];
  v3 = this[83];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN2re18AudioManager_PHASE15applyCustomHRIREv_block_invoke;
  v5[3] = &unk_1E871B4D0;
  v6 = v2;
  v7 = this;
  v4 = v2;
  dispatch_async(v3, v5);
}

uint64_t re::AudioManager_PHASE::applyMixGroupState(os_unfair_lock_s *this, unint64_t a2, unint64_t a3, const re::AudioMixGroup *a4, int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 174);
  v10 = a4 + 9;
  if (*(a4 + 1))
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = a4 + 9;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v11);
  v12 = re::AudioManager_PHASE::mixGroupStateFor(this, a2, a3, __p);
  v13 = v12;
  if ((v65[9] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v14 = *v13;
  if (v14)
  {
    v15 = *(a4 + 88);
    if (v15 != [v13[1] isMuted])
    {
      v16 = v13[1];
      if (*(a4 + 88) == 1)
      {
        v17 = [v16 mute];
      }

      else
      {
        v17 = [v16 unmute];
      }

      v21 = *re::audioLogObjects(v17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v62 = a5;
        v23 = *(a4 + 1);
        v22 = *(a4 + 2);
        v24 = *(a4 + 88);
        v25 = [v13[1] identifier];
        v26 = v25;
        if (v23)
        {
          v27 = v22;
        }

        else
        {
          v27 = a4 + 9;
        }

        *__p = 136315650;
        *&__p[4] = v27;
        v64 = 1024;
        *v65 = v24;
        *&v65[4] = 2112;
        *&v65[6] = v25;
        _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_INFO, "[RE/PHASE] [MixGroup] Name: %s, Set Muted: %d, PhaseID: %@ (sceneID - connectionID - name).", __p, 0x1Cu);

        a5 = v62;
      }
    }

    v28 = *(a4 + 26);
    [v13[1] rate];
    if (vabdd_f64(v28, v29) > 0.00000011920929)
    {
      v30 = *re::audioLogObjects([v13[1] setRate:*(a4 + 26)]);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = a5;
        v32 = *(a4 + 1);
        v33 = *(a4 + 2);
        v34 = *(a4 + 26);
        v35 = [v13[1] identifier];
        v36 = v35;
        if (v32)
        {
          v37 = v33;
        }

        else
        {
          v37 = a4 + 9;
        }

        *__p = 136315650;
        *&__p[4] = v37;
        v64 = 2048;
        *v65 = v34;
        *&v65[8] = 2112;
        *&v65[10] = v35;
        _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_INFO, "[RE/PHASE] [MixGroup] Name: %s, Set Speed: %.2f, PhaseID: %@ (sceneID - connectionID - name).", __p, 0x20u);

        a5 = v31;
      }
    }

    v38 = __exp10f(*(a4 + 24) / 20.0);
    [v13[1] gainLowFrequency];
    if (vabdd_f64(v38, v39) > 0.00000011920929)
    {
      [v13[1] setGainLowFrequency:?];
    }

    v40 = __exp10f(*(a4 + 23) / 20.0);
    [v13[1] gainHighFrequency];
    if (vabdd_f64(v40, v41) > 0.00000011920929)
    {
      [v13[1] setGainHighFrequency:?];
    }

    if (a5)
    {
      v42 = *(a4 + 27);
      if (v42 == 0.0)
      {
        v43 = *(a4 + 28);
      }

      else
      {
        v43 = *(a4 + 28);
        if (*(a4 + 29) == v43)
        {
LABEL_43:
          if (v42 > 0.0)
          {
            v52 = [v13[1] fadeGain:1668435054 duration:__exp10f(*(a4 + 29) / 20.0) curveType:v42];
            v53 = *re::audioLogObjects(v52);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              v55 = *(a4 + 1);
              v54 = *(a4 + 2);
              v56 = *(a4 + 27);
              v57 = *(a4 + 29);
              v58 = [v13[1] identifier];
              v59 = v58;
              *__p = 136315906;
              if (v55)
              {
                v60 = v54;
              }

              else
              {
                v60 = v10;
              }

              *&__p[4] = v60;
              v64 = 2048;
              *v65 = v56;
              *&v65[8] = 2048;
              *&v65[10] = v57;
              v66 = 2112;
              v67 = v58;
              _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_INFO, "[RE/PHASE] [MixGroup] Name: %s, Set Fade: %.2fs, Gain: %.2fdB, PhaseID: %@ (sceneID - connectionID - name).", __p, 0x2Au);
            }
          }

          goto LABEL_50;
        }
      }

      v44 = [v13[1] setGain:__exp10f(v43 / 20.0)];
      v45 = *re::audioLogObjects(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = *(a4 + 1);
        v47 = *(a4 + 2);
        v48 = *(a4 + 28);
        v49 = [v13[1] identifier];
        v50 = v49;
        if (v46)
        {
          v51 = v47;
        }

        else
        {
          v51 = a4 + 9;
        }

        *__p = 136315650;
        *&__p[4] = v51;
        v64 = 2048;
        *v65 = v48;
        *&v65[8] = 2112;
        *&v65[10] = v49;
        _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_INFO, "[RE/PHASE] [MixGroup] Name: %s, Set Gain: %.2fdB, PhaseID: %@ (sceneID - connectionID - name).", __p, 0x20u);
      }

      v42 = *(a4 + 27);
      goto LABEL_43;
    }
  }

  else
  {
    v18 = *re::audioLogObjects(v12);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      if (*(a4 + 1))
      {
        v19 = *(a4 + 2);
      }

      else
      {
        v19 = a4 + 9;
      }

      v20 = *(a4 + 4);
      *__p = 136315394;
      *&__p[4] = v19;
      v64 = 2048;
      *v65 = v20;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_INFO, "[RE/PHASE] [MixGroup] Ignoring changes for mixGroup %s(id=%llu) as it isn't registered with PHASE yet.", __p, 0x16u);
    }
  }

LABEL_50:
  os_unfair_lock_unlock(this + 174);
  return v14;
}

void ___ZN2re18AudioManager_PHASE16mixGroupStateForEyyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  re::AudioManager_PHASE_Async::registerMixGroup(*(v2 + 648), *(a1 + 32));
  os_unfair_lock_lock((v2 + 696));
  *(std::__hash_table<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v2 + 704), (a1 + 48)) + 40) = 1;

  os_unfair_lock_unlock((v2 + 696));
}

void __copy_helper_block_ea8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

void __destroy_helper_block_ea8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

BOOL re::AudioManager_PHASE::shouldLoadFileAssetsByAbsolutePath(re::AudioManager_PHASE *this)
{
  v1 = *(this + 81);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 88) != 0;
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void re::AudioManager_PHASE::deallocateTaskToken(mach_port_name_t name)
{
  v6 = *MEMORY[0x1E69E9840];
  if (name - 1 <= 0xFFFFFFFD)
  {
    v1 = mach_port_deallocate(*MEMORY[0x1E69E9A60], name);
    if (v1)
    {
      v2 = v1;
      v3 = *re::audioLogObjects(v1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315138;
        v5 = mach_error_string(v2);
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Load] Failed to deallocate mach port, with KERN error code: %s", &v4, 0xCu);
      }
    }
  }
}

void re::AudioManager_PHASE::removeAudioFileGroupAssetData(re::AudioManager_PHASE *this, uint64_t a2)
{
  v2 = *(this + 83);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN2re18AudioManager_PHASE29removeAudioFileGroupAssetDataEy_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = this;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void ___ZN2re18AudioManager_PHASE29removeAudioFileGroupAssetDataEy_block_invoke(uint64_t a1)
{
  v2 = UnfairLockedPointer<REPHASEContext>::get(*(*(a1 + 32) + 648) + 8);
  if (v2)
  {
    [v2 removeAudioFileGroupAssetData:*(a1 + 40)];
  }
}

void re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 360);
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a3 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v5;
  operator new();
}

void sub_1E21480B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v10 + 8);
  os_unfair_lock_unlock(v8 + 263);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v11 - 104);

  _Unwind_Resume(a1);
}

uint64_t re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

id re::AudioManager_PHASE::insertPostProcessingEffect(re::AudioManager_PHASE *this, const AudioComponentDescription *a2)
{
  v3 = objc_alloc(MEMORY[0x1E69584C8]);
  v7 = *a2;
  v4 = [v3 initWithAudioComponentDescription:&v7];
  v5 = [v4 AUAudioUnit];

  return v5;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::AudioManager_PHASE::loadAudio(std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>)::$_0,re::AudioManager_PHASE::loadAudio(std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>)::$_1,re::AudioManager_PHASE::loadAudio(std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}> &&>(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*v2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1E21483EC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::AudioManager_PHASE::loadAudio(std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>)::$_0,re::AudioManager_PHASE::loadAudio(std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>)::$_1,re::AudioManager_PHASE::loadAudio(std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}> &&>(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*(v2 + 24) + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1E2148570(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::AudioManager_PHASE::loadAudio(std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>)::$_0,re::AudioManager_PHASE::loadAudio(std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>)::$_1,re::AudioManager_PHASE::loadAudio(std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}> &&>(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*(v2 + 48) + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1E21486F4(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__0clEP6NSData_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(v2 + 648) + 8);

  if (!v3)
  {
    v11 = a1[7];
    v23[0] = a1[6];
    v23[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = a1[8];
    v13 = a1[9];
    v22[0] = v12;
    v22[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(v2, v23, v22);
  }

  v4 = *(v2 + 648);
  v5 = a1[4];
  v6 = *(a1[6] + 128);
  re::AudioManager_PHASE_Async::loadBuffer(v4, v5, v6, *(a1[6] + 104), *(a1[6] + 112), &v20);

  v7 = *(v2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__0clEP6NSData_block_invoke_2;
  block[3] = &__block_descriptor_88_ea8_40c76_ZTSNSt3__110shared_ptrINS_8functionIFvNS0_IN2re18PersistedAssetDataEEEEEEEE56c51_ZTSNSt3__110shared_ptrIN2re18PersistedAssetDataEEE72c50_ZTSNSt3__110shared_ptrIN2re17AudioAssetPayloadEEE_e5_v8__0l;
  v9 = a1[8];
  v8 = a1[9];
  block[4] = v2;
  block[5] = v9;
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v20;
  v17 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[7];
  v18 = a1[6];
  v19 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v7, block);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }
}

void sub_1E21488F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__0clEP6NSData_block_invoke_2(void *a1)
{
  v2 = a1[5];
  v3 = a1[8];
  v5 = a1[7];
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(v2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  re::AudioManager_PHASE::deallocateTaskToken(*(a1[9] + 104));
}

void sub_1E21489B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_ea8_40c76_ZTSNSt3__110shared_ptrINS_8functionIFvNS0_IN2re18PersistedAssetDataEEEEEEEE56c51_ZTSNSt3__110shared_ptrIN2re18PersistedAssetDataEEE72c50_ZTSNSt3__110shared_ptrIN2re17AudioAssetPayloadEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[10];
  result[9] = a2[9];
  result[10] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c76_ZTSNSt3__110shared_ptrINS_8functionIFvNS0_IN2re18PersistedAssetDataEEEEEEEE56c51_ZTSNSt3__110shared_ptrIN2re18PersistedAssetDataEEE72c50_ZTSNSt3__110shared_ptrIN2re17AudioAssetPayloadEEE(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void *__copy_helper_block_ea8_48c50_ZTSNSt3__110shared_ptrIN2re17AudioAssetPayloadEEE64c76_ZTSNSt3__110shared_ptrINS_8functionIFvNS0_IN2re18PersistedAssetDataEEEEEEEE(void *result, void *a2)
{
  v2 = a2[7];
  result[6] = a2[6];
  result[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_48c50_ZTSNSt3__110shared_ptrIN2re17AudioAssetPayloadEEE64c76_ZTSNSt3__110shared_ptrINS_8functionIFvNS0_IN2re18PersistedAssetDataEEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__0clEP6NSData_block_invoke_65(void *a1)
{
  v2 = a1[5];
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(v2 + 648) + 8);

  if (!v3)
  {
    v11 = a1[7];
    v23[0] = a1[6];
    v23[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = a1[8];
    v13 = a1[9];
    v22[0] = v12;
    v22[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(v2, v23, v22);
  }

  v4 = *(v2 + 648);
  v5 = a1[4];
  v6 = *(a1[6] + 120);
  re::AudioManager_PHASE_Async::loadFileData(v4, v5, v6, (a1[6] + 16), *(a1[6] + 104), *(a1[6] + 112), &v20);

  v7 = *(v2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__0clEP6NSData_block_invoke_2_66;
  block[3] = &__block_descriptor_88_ea8_40c76_ZTSNSt3__110shared_ptrINS_8functionIFvNS0_IN2re18PersistedAssetDataEEEEEEEE56c51_ZTSNSt3__110shared_ptrIN2re18PersistedAssetDataEEE72c50_ZTSNSt3__110shared_ptrIN2re17AudioAssetPayloadEEE_e5_v8__0l;
  v9 = a1[8];
  v8 = a1[9];
  block[4] = v2;
  block[5] = v9;
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v20;
  v17 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[7];
  v18 = a1[6];
  v19 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v7, block);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }
}

void sub_1E2148CE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__0clEP6NSData_block_invoke_2_66(void *a1)
{
  v2 = a1[5];
  v3 = a1[8];
  v5 = a1[7];
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(v2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  re::AudioManager_PHASE::deallocateTaskToken(*(a1[9] + 104));
}

void sub_1E2148DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CCBA90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<re::PersistedAssetData>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<re::PersistedAssetData>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__1clEP16AVAudioPCMBuffer_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(v2 + 648) + 8);

  if (!v3)
  {
    v8 = *(a1 + 56);
    v20[0] = *(a1 + 48);
    v20[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v19[0] = v9;
    v19[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(v2, v20, v19);
  }

  re::AudioManager_PHASE_Async::loadBuffer(*(v2 + 648), *(a1 + 32), *(*(a1 + 48) + 104), *(*(a1 + 48) + 112), &v17);
  v4 = *(v2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__1clEP16AVAudioPCMBuffer_block_invoke_2;
  block[3] = &__block_descriptor_88_ea8_40c76_ZTSNSt3__110shared_ptrINS_8functionIFvNS0_IN2re18PersistedAssetDataEEEEEEEE56c51_ZTSNSt3__110shared_ptrIN2re18PersistedAssetDataEEE72c50_ZTSNSt3__110shared_ptrIN2re17AudioAssetPayloadEEE_e5_v8__0l;
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  block[4] = v2;
  block[5] = v6;
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v17;
  v14 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v4, block);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }
}

void sub_1E21490F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__1clEP16AVAudioPCMBuffer_block_invoke_2(void *a1)
{
  v2 = a1[5];
  v3 = a1[8];
  v5 = a1[7];
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(v2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  re::AudioManager_PHASE::deallocateTaskToken(*(a1[9] + 104));
}

void sub_1E21491AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__2clEP5NSURL_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = UnfairLockedPointer<REPHASEContext>::get(*(v2 + 648) + 8);

  if (!v3)
  {
    v11 = a1[7];
    v23[0] = a1[6];
    v23[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = a1[8];
    v13 = a1[9];
    v22[0] = v12;
    v22[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(v2, v23, v22);
  }

  v4 = *(v2 + 648);
  v5 = a1[4];
  v6 = *(a1[6] + 120);
  re::AudioManager_PHASE_Async::loadFile(v4, v5, v6, (a1[6] + 16), *(a1[6] + 104), *(a1[6] + 112), &v20);

  v7 = *(v2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__2clEP5NSURL_block_invoke_2;
  block[3] = &__block_descriptor_88_ea8_40c76_ZTSNSt3__110shared_ptrINS_8functionIFvNS0_IN2re18PersistedAssetDataEEEEEEEE56c51_ZTSNSt3__110shared_ptrIN2re18PersistedAssetDataEEE72c50_ZTSNSt3__110shared_ptrIN2re17AudioAssetPayloadEEE_e5_v8__0l;
  v9 = a1[8];
  v8 = a1[9];
  block[4] = v2;
  block[5] = v9;
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v20;
  v17 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[7];
  v18 = a1[6];
  v19 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v7, block);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }
}

void sub_1E21493A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void ___ZZN2re18AudioManager_PHASE9loadAudioENSt3__110shared_ptrINS_17AudioAssetPayloadEEENS1_8functionIFvNS2_INS_18PersistedAssetDataEEEEEEENK3__2clEP5NSURL_block_invoke_2(void *a1)
{
  v2 = a1[5];
  v3 = a1[8];
  v5 = a1[7];
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(v2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  re::AudioManager_PHASE::deallocateTaskToken(*(a1[9] + 104));
}

void sub_1E214946C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (off_1F5CCBAD0[v2])(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

re::AudioManager_PHASE_Async *std::unique_ptr<re::AudioManager_PHASE_Async>::reset[abi:ne200100](re::AudioManager_PHASE_Async **a1, re::AudioManager_PHASE_Async *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    re::AudioManager_PHASE_Async::~AudioManager_PHASE_Async(result);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

re::AudioManager_PHASE_StateMachine *std::unique_ptr<re::AudioManager_PHASE_StateMachine>::reset[abi:ne200100](re::AudioManager_PHASE_StateMachine **a1, re::AudioManager_PHASE_StateMachine *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    re::AudioManager_PHASE_StateMachine::~AudioManager_PHASE_StateMachine(result);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,re::AudioManager_PHASE::MixGroupState>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,re::AudioManager_PHASE::MixGroupState>,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

re::UserActiveStateNotificationManager *std::unique_ptr<re::UserActiveStateNotificationManager>::reset[abi:ne200100](re::UserActiveStateNotificationManager **a1, re::UserActiveStateNotificationManager *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    re::UserActiveStateNotificationManager::~UserActiveStateNotificationManager(result);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *std::default_delete<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>>::operator()[abi:ne200100](void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v3 = v1[5];
      if (v3)
      {
        if (v1[2])
        {
          v4 = 0;
          do
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1[5] + 48 * ((v4 + v1[3]) % v1[1]));
            ++v4;
          }

          while (v4 != v1[2]);
          v2 = *v1;
          v3 = v1[5];
        }

        (*(*v2 + 40))(v2, v3);
      }

      v1[5] = 0;
      *v1 = 0u;
      *(v1 + 1) = 0u;
      *(v1 + 8) = 0;
    }

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 != -1)
  {
    result = (off_1F5CCBAE8[v2])(&v3, result);
  }

  *(v1 + 40) = -1;
  return result;
}

uint64_t re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::deinit(uint64_t a1)
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
        v5 = 160 * v4;
        do
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v3);
          v3 += 160;
          v5 -= 160;
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

uint64_t re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::deinit(uint64_t a1)
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
        v5 = 168 * v4;
        do
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v3);
          v3 += 168;
          v5 -= 168;
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

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 160);
  if (v2 != -1)
  {
    result = (off_1F5CCBB00[v2])(&v3, result);
  }

  *(v1 + 160) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN2re5audio22AcousticMeshUpdateDataENS9_27AcousticARKitMeshUpdateDataEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(a2 + 120);
  re::DynamicArray<re::AcousticScatteringMaterial>::deinit(a2 + 80);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(a2 + 40);
  v3 = *(a2 + 32);
}

uint64_t std::__function::__func<std::default_delete<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>>,std::allocator<std::default_delete<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>>>,void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<re::AudioEngineRunnableManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CCBBB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::operator=[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>::setCapacity(void *result, unint64_t a2)
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
        result = re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 48, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_20:
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
          v11 = v5[5] + 48 * ((v9 + v5[3]) % v5[1]);
          v12 = &v8[6 * v10];
          *v12 = 0;
          *(v12 + 40) = -1;
          std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v12);
          v13 = *(v11 + 40);
          if (v13 != -1)
          {
            v14 = &v8[6 * v10];
            (off_1F5CCBBF0[v13])(&v14, v11);
            *(v12 + 40) = v13;
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
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

        while (v9 != *v6);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(v2 + 32) = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = 0;
  v3 = *(a2 + 8);
  *v2 = *a2;
  *(v2 + 8) = v3;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *(v2 + 16);
  *(v2 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  ++*(a2 + 24);
  ++*(v2 + 24);
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(v2 + 32) = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = 0;
  v3 = *(a2 + 8);
  *v2 = *a2;
  *(v2 + 8) = v3;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *(v2 + 16);
  *(v2 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  ++*(a2 + 24);
  ++*(v2 + 24);
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(v2 + 32) = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = 0;
  v3 = *(a2 + 8);
  *v2 = *a2;
  *(v2 + 8) = v3;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *(v2 + 16);
  *(v2 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  ++*(a2 + 24);
  ++*(v2 + 24);
  return result;
}

uint64_t re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 160 * v12;
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1> const&>(v13, v11);
        v11 += 160;
        v13 += 160;
        v14 -= 160;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 5 * v12;
      v16 = v11 + 32 * v15;
      v17 = v13 + 32 * v15;
      v18 = 160 * v4 - 32 * v15;
      do
      {
        *v17 = 0;
        *(v17 + 152) = -1;
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v17);
        v19 = *(v16 + 152);
        if (v19 != -1)
        {
          v20 = v17;
          result = (off_1F5CCBC40[v19])(&v20, v16);
          *(v17 + 152) = v19;
        }

        v16 += 160;
        v17 += 160;
        v18 -= 160;
      }

      while (v18);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 160 * v4;
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1> const&>(v6, v7);
        v7 += 160;
        v6 += 160;
        v8 -= 160;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 160 * v4;
      v10 = 160 * v5 - 160 * v4;
      do
      {
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
        v9 += 160;
        v10 -= 160;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 8);
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
        v10 = 160 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          *(v11 + 152) = -1;
          std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
          v12 = *(v8 + 152);
          if (v12 != -1)
          {
            v13 = v11;
            (off_1F5CCBC20[v12])(&v13, v8);
            *(v11 + 152) = v12;
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
          v8 += 160;
          v11 += 160;
          v10 -= 160;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  v4 = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = 0;
  v2[4].n128_u64[0] = 0;
  v2[1].n128_u64[1] = v4;
  v2[2].n128_u64[0] = 0;
  v2[2].n128_u64[1] = 0;
  v2[3].n128_u64[0] = 0;
  v2[3].n128_u32[2] = 0;
  v5 = a2[2].n128_u64[1];
  v2[2].n128_u64[0] = a2[2].n128_u64[0];
  v2[2].n128_u64[1] = v5;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  v6 = v2[3].n128_u64[0];
  v2[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v6;
  v7 = v2[4].n128_u64[0];
  v2[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v7;
  ++a2[3].n128_u32[2];
  ++v2[3].n128_u32[2];
  v2[6].n128_u64[1] = 0;
  v2[5].n128_u64[0] = 0;
  v2[5].n128_u64[1] = 0;
  v2[4].n128_u64[1] = 0;
  v2[6].n128_u32[0] = 0;
  v8 = a2[5].n128_u64[0];
  v2[4].n128_u64[1] = a2[4].n128_u64[1];
  v2[5].n128_u64[0] = v8;
  a2[4].n128_u64[1] = 0;
  a2[5].n128_u64[0] = 0;
  v9 = v2[5].n128_u64[1];
  v2[5].n128_u64[1] = a2[5].n128_u64[1];
  a2[5].n128_u64[1] = v9;
  v10 = v2[6].n128_u64[1];
  v2[6].n128_u64[1] = a2[6].n128_u64[1];
  a2[6].n128_u64[1] = v10;
  ++a2[6].n128_u32[0];
  ++v2[6].n128_u32[0];
  v2[9].n128_u64[0] = 0;
  v2[7].n128_u64[1] = 0;
  v2[8].n128_u64[0] = 0;
  v2[7].n128_u64[0] = 0;
  v2[8].n128_u32[2] = 0;
  v11 = a2[7].n128_u64[1];
  v2[7].n128_u64[0] = a2[7].n128_u64[0];
  v2[7].n128_u64[1] = v11;
  a2[7].n128_u64[0] = 0;
  a2[7].n128_u64[1] = 0;
  v12 = v2[8].n128_u64[0];
  v2[8].n128_u64[0] = a2[8].n128_u64[0];
  a2[8].n128_u64[0] = v12;
  v13 = v2[9].n128_u64[0];
  v2[9].n128_u64[0] = a2[9].n128_u64[0];
  a2[9].n128_u64[0] = v13;
  ++a2[8].n128_u32[2];
  ++v2[8].n128_u32[2];
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  v4 = *(a2 + 3);
  *(a2 + 3) = 0;
  *(v2 + 24) = v4;
  result = a2[2];
  *(v2 + 32) = result;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 152);
  if (*(result + 152) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_1F5CCBC30[v4])(v6);
    }
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN2re5audio16AcousticMeshDataENS9_21AcousticARKitMeshDataEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISC_LNS0_6_TraitE1EEEEEvOT_EUlRSK_OT0_E_JRNS0_6__baseILSG_1EJSA_SB_EEERKSS_EEEDcSK_DpT0_(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 152))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    v5 = *a3;
    *(v4 + 16) = *(a3 + 2);
    *v4 = v5;
    *(v4 + 24) = *(a3 + 3);
    re::DynamicArray<re::AcousticAbsorptionMaterial>::DynamicArray(v4 + 32, a3 + 4);
    re::DynamicArray<re::AcousticScatteringMaterial>::DynamicArray(v4 + 72, a3 + 9);
    result = re::DynamicArray<re::AcousticSoundReductionMaterial>::DynamicArray(v4 + 112, a3 + 14);
    *(v4 + 152) = 0;
  }

  else
  {
    v8 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v8;
    objc_storeStrong((a2 + 24), *(a3 + 3));
    re::DynamicArray<re::AcousticAbsorptionMaterial>::operator=(a2 + 32, a3 + 4);
    re::DynamicArray<re::AcousticScatteringMaterial>::operator=(a2 + 72, a3 + 9);

    return re::DynamicArray<re::AcousticSoundReductionMaterial>::operator=(a2 + 112, a3 + 14);
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN2re5audio16AcousticMeshDataENS9_21AcousticARKitMeshDataEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISC_LNS0_6_TraitE1EEEEEvOT_EUlRSK_OT0_E_JRNS0_6__baseILSG_1EJSA_SB_EEERKSS_EEEDcSK_DpT0_(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 152) == 1)
  {
    v6 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v6;
    objc_storeStrong((a2 + 24), *(a3 + 3));
    result = a3[2];
    *(a2 + 32) = result;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    v8 = *a3;
    *(v4 + 16) = *(a3 + 2);
    *v4 = v8;
    *(v4 + 24) = *(a3 + 3);
    result = a3[2];
    *(v4 + 32) = result;
    *(v4 + 152) = 1;
  }

  return result;
}

uint64_t re::DynamicArray<re::AcousticAbsorptionMaterial>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AcousticAbsorptionMaterial>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = 112 * v6;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v7 + 72);
            re::DynamicArray<unsigned long>::deinit(v7 + 32);
            re::DynamicString::deinit(v7);
            v7 = (v7 + 112);
            v8 -= 112;
          }

          while (v8);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AcousticAbsorptionMaterial>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::AcousticScatteringMaterial>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AcousticScatteringMaterial>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = 112 * v6;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v7 + 72);
            re::DynamicArray<unsigned long>::deinit(v7 + 32);
            re::DynamicString::deinit(v7);
            v7 = (v7 + 112);
            v8 -= 112;
          }

          while (v8);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AcousticScatteringMaterial>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::AcousticSoundReductionMaterial>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AcousticSoundReductionMaterial>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = 112 * v6;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v7 + 72);
            re::DynamicArray<unsigned long>::deinit(v7 + 32);
            re::DynamicString::deinit(v7);
            v7 = (v7 + 112);
            v8 -= 112;
          }

          while (v8);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AcousticSoundReductionMaterial>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2re5audio16AcousticMeshDataENS9_21AcousticARKitMeshDataEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJSA_SB_EEEEEEDcSL_DpT0_(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  *(v3 + 24) = *(a2 + 3);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::DynamicArray(v3 + 32, a2 + 4);
  re::DynamicArray<re::AcousticScatteringMaterial>::DynamicArray(v3 + 72, a2 + 9);

  return re::DynamicArray<re::AcousticSoundReductionMaterial>::DynamicArray(v3 + 112, a2 + 14);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2re5audio16AcousticMeshDataENS9_21AcousticARKitMeshDataEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJSA_SB_EEEEEEDcSL_DpT0_(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  *(v3 + 24) = *(a2 + 3);
  result = a2[2];
  *(v3 + 32) = result;
  return result;
}

uint64_t re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 168 * v12;
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1> const&>(v13, v11);
        v11 += 168;
        v13 += 168;
        v14 -= 168;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 168 * v12;
      v16 = v11 + v15;
      v17 = v13 + v15;
      v18 = 168 * v4 - v15;
      do
      {
        *v17 = 0;
        *(v17 + 160) = -1;
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v17);
        v19 = *(v16 + 160);
        if (v19 != -1)
        {
          v20 = v17;
          result = (off_1F5CCBC70[v19])(&v20, v16);
          *(v17 + 160) = v19;
        }

        v16 += 168;
        v17 += 168;
        v18 -= 168;
      }

      while (v18);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 168 * v4;
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1> const&>(v6, v7);
        v7 += 168;
        v6 += 168;
        v8 -= 168;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 168 * v4;
      v10 = 168 * v5 - 168 * v4;
      do
      {
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
        v9 += 168;
        v10 -= 168;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA8uLL))
        {
          v2 = 168 * a2;
          result = (*(*result + 32))(result, 168 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 168, a2);
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
        v10 = 168 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          *(v11 + 160) = -1;
          std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
          v12 = *(v8 + 160);
          if (v12 != -1)
          {
            v13 = v11;
            (off_1F5CCBC50[v12])(&v13, v8);
            *(v11 + 160) = v12;
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
          v8 += 168;
          v11 += 168;
          v10 -= 168;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v2 + 72) = 0;
  *(v2 + 32) = v5;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  v6 = *(a2 + 48);
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 48) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = *(v2 + 56);
  *(v2 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  v8 = *(v2 + 72);
  *(v2 + 72) = *(a2 + 72);
  *(a2 + 72) = v8;
  ++*(a2 + 64);
  ++*(v2 + 64);
  *(v2 + 112) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 80) = 0;
  *(v2 + 104) = 0;
  v9 = *(a2 + 88);
  *(v2 + 80) = *(a2 + 80);
  *(v2 + 88) = v9;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v10 = *(v2 + 96);
  *(v2 + 96) = *(a2 + 96);
  *(a2 + 96) = v10;
  v11 = *(v2 + 112);
  *(v2 + 112) = *(a2 + 112);
  *(a2 + 112) = v11;
  ++*(a2 + 104);
  ++*(v2 + 104);
  *(v2 + 152) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 144) = 0;
  v12 = *(a2 + 128);
  *(v2 + 120) = *(a2 + 120);
  *(v2 + 128) = v12;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v13 = *(v2 + 136);
  *(v2 + 136) = *(a2 + 136);
  *(a2 + 136) = v13;
  v14 = *(v2 + 152);
  *(v2 + 152) = *(a2 + 152);
  *(a2 + 152) = v14;
  ++*(a2 + 144);
  ++*(v2 + 144);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v2 + 32) = v4;
  result = *(a2 + 40);
  *(v2 + 40) = result;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 160);
  if (*(result + 160) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_1F5CCBC60[v4])(v6);
    }
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN2re5audio22AcousticMeshUpdateDataENS9_27AcousticARKitMeshUpdateDataEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISC_LNS0_6_TraitE1EEEEEvOT_EUlRSK_OT0_E_JRNS0_6__baseILSG_1EJSA_SB_EEERKSS_EEEDcSK_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 160))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    v5 = *(a3 + 16);
    *v4 = *a3;
    *(v4 + 16) = v5;
    *(v4 + 32) = *(a3 + 32);
    re::DynamicArray<re::AcousticAbsorptionMaterial>::DynamicArray(v4 + 40, (a3 + 40));
    re::DynamicArray<re::AcousticScatteringMaterial>::DynamicArray(v4 + 80, (a3 + 80));
    result = re::DynamicArray<re::AcousticSoundReductionMaterial>::DynamicArray(v4 + 120, (a3 + 120));
    *(v4 + 160) = 0;
  }

  else
  {
    v8 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v8;
    objc_storeStrong((a2 + 32), *(a3 + 32));
    re::DynamicArray<re::AcousticAbsorptionMaterial>::operator=(a2 + 40, (a3 + 40));
    re::DynamicArray<re::AcousticScatteringMaterial>::operator=(a2 + 80, (a3 + 80));

    return re::DynamicArray<re::AcousticSoundReductionMaterial>::operator=(a2 + 120, (a3 + 120));
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN2re5audio22AcousticMeshUpdateDataENS9_27AcousticARKitMeshUpdateDataEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISC_LNS0_6_TraitE1EEEEEvOT_EUlRSK_OT0_E_JRNS0_6__baseILSG_1EJSA_SB_EEERKSS_EEEDcSK_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 160) == 1)
  {
    v6 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v6;
    objc_storeStrong((a2 + 32), *(a3 + 32));
    result = *(a3 + 40);
    *(a2 + 40) = result;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    v8 = *(a3 + 16);
    *v4 = *a3;
    *(v4 + 16) = v8;
    *(v4 + 32) = *(a3 + 32);
    result = *(a3 + 40);
    *(v4 + 40) = result;
    *(v4 + 160) = 1;
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2re5audio22AcousticMeshUpdateDataENS9_27AcousticARKitMeshUpdateDataEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJSA_SB_EEEEEEDcSL_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a2 + 32);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::DynamicArray(v3 + 40, (a2 + 40));
  re::DynamicArray<re::AcousticScatteringMaterial>::DynamicArray(v3 + 80, (a2 + 80));

  return re::DynamicArray<re::AcousticSoundReductionMaterial>::DynamicArray(v3 + 120, (a2 + 120));
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2re5audio22AcousticMeshUpdateDataENS9_27AcousticARKitMeshUpdateDataEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJSA_SB_EEEEEEDcSL_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(v3 + 40) = result;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>>::QueueIterator<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>,re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>> const&>,re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>>::QueueIterator<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>,re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>> const&>,re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>>::QueueIterator<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>,re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>&>>(uint64_t result, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v11 = a3;
  v13 = result;
  if (a2 != a4 || a3 != a5)
  {
    do
    {
      v14 = (a2[5] + 48 * ((a2[3] + v11) % a2[1]));
      v15 = a6[5] + 48 * ((a6[3] + a7) % a6[1]);
      if (v15 != v14)
      {
        v16 = *v14;
        if (*v15)
        {
          if (v16)
          {
            result = re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::copy(v15, (a2[5] + 48 * ((a2[3] + v11) % a2[1])));
          }

          else
          {
            if (*(v15 + 16))
            {
              v18 = 0;
              do
              {
                result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*(v15 + 40) + 48 * ((v18 + *(v15 + 24)) % *(v15 + 8)));
                ++v18;
              }

              while (v18 < *(v15 + 16));
            }

            *(v15 + 16) = 0;
          }

          ++*(v15 + 32);
        }

        else if (v16)
        {
          v17 = v14[2];
          *v15 = v16;
          re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::setCapacity(v15, v17);
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
          *(v15 + 32) = 0;
          result = re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::copy(v15, v14);
        }
      }

      ++v11;
      ++a7;
    }

    while (a2 != a4 || v11 != a5);
    v11 = a5;
  }

  *v13 = a2;
  v13[1] = v11;
  v13[2] = a6;
  v13[3] = a7;
  return result;
}

uint64_t re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::copy(void *a1, void *a2)
{
  v4 = a2[2];
  if (v4 >= a1[2])
  {
    re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::setCapacity(a1, a2[2]);
    result = std::__copy_impl::operator()[abi:ne200100]<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::QueueIterator<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> const&>,re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::QueueIterator<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> const&>,re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::QueueIterator<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>&>>(v11, a2, 0, a2, a1[2], a1, 0);
    v7 = a1[2];
    for (a1[2] = v4; v7 != a2[2]; ++v7)
    {
      v8 = a1[5] + 48 * ((v7 + a1[3]) % a1[1]);
      v9 = a2[5] + 48 * ((v7 + a2[3]) % a2[1]);
      *v8 = 0;
      *(v8 + 40) = -1;
      result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
      v10 = *(v9 + 40);
      if (v10 != -1)
      {
        v11[0] = v8;
        result = (off_1F5CCBC98[v10])(v11, v9);
        *(v8 + 40) = v10;
      }
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:ne200100]<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::QueueIterator<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> const&>,re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::QueueIterator<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> const&>,re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::QueueIterator<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>&>>(v11, a2, 0, a2, a2[2], a1, 0);
    if (v4 != a1[2])
    {
      v6 = v4;
      do
      {
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1[5] + 48 * ((v6 + a1[3]) % a1[1]));
        ++v6;
      }

      while (v6 != a1[2]);
    }

    a1[2] = v4;
  }

  return result;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::QueueIterator<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> const&>,re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::QueueIterator<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>> const&>,re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::QueueIterator<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>&>>(uint64_t result, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v12 = result;
  if (a2 != a4 || a3 != a5)
  {
    v13 = a5 - 1;
    do
    {
      v14 = a3;
      v15 = a6[5] + 48 * ((a7 + a6[3]) % a6[1]);
      v16 = *(a2[5] + 48 * ((a3 + a2[3]) % a2[1]) + 40);
      if (*(v15 + 40) != -1 || v16 != -1)
      {
        if (v16 == -1)
        {
          result = std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v15);
        }

        else
        {
          v18 = a6[5] + 48 * ((a7 + a6[3]) % a6[1]);
          result = (off_1F5CCBC80[v16])(&v18);
        }
      }

      a3 = v14 + 1;
      ++a7;
    }

    while (a2 != a4 || v13 != v14);
    a3 = a5;
  }

  *v12 = a2;
  v12[1] = a3;
  v12[2] = a6;
  v12[3] = a7;
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN2re12DynamicArrayINS8_5audio23AcousticMeshRemovalDataEEENS9_INSA_17PHASEOccluderDataEEENS9_INSA_23PHASEOccluderUpdateDataEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_6__baseILSL_1EJSC_SE_SG_EEERKSX_EEEDcSP_DpT0_(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v4 = *result;
  if (*(*result + 40))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    result = re::DynamicArray<re::audio::AcousticMeshRemovalData>::DynamicArray(v4, a3);
    *(v4 + 40) = 0;
  }

  else if (a2 != a3)
  {
    v6 = *a3;
    if (*a2)
    {
      if (v6)
      {
        result = re::DynamicArray<re::audio::AcousticMeshRemovalData>::copy(a2, a3);
      }

      else
      {
        *(a2 + 16) = 0;
      }

      ++*(a2 + 24);
    }

    else if (v6)
    {
      v7 = a3[2];
      *a2 = v6;
      re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a2, v7);
      ++*(a2 + 24);
      return re::DynamicArray<re::audio::AcousticMeshRemovalData>::copy(a2, a3);
    }
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN2re12DynamicArrayINS8_5audio23AcousticMeshRemovalDataEEENS9_INSA_17PHASEOccluderDataEEENS9_INSA_23PHASEOccluderUpdateDataEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_6__baseILSL_1EJSC_SE_SG_EEERKSX_EEEDcSP_DpT0_(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  if (*(*a1 + 40) == 1)
  {
    if (a2 != a3)
    {
      v6 = *a3;
      if (*a2)
      {
        if (v6)
        {
          re::DynamicArray<re::audio::PHASEOccluderData>::copy(a2, a3);
        }

        else
        {
          v8 = *(a2 + 16);
          *(a2 + 16) = 0;
          if (v8)
          {
            v9 = 48 * v8;
            v10 = (*(a2 + 32) + 24);
            do
            {
              v11 = *v10;
              v10 += 6;

              v9 -= 48;
            }

            while (v9);
          }
        }

        ++*(a2 + 24);
      }

      else if (v6)
      {
        v7 = a3[2];
        *a2 = v6;
        re::DynamicArray<re::audio::PHASEOccluderData>::setCapacity(a2, v7);
        ++*(a2 + 24);
        re::DynamicArray<re::audio::PHASEOccluderData>::copy(a2, a3);
      }
    }
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    re::DynamicArray<re::audio::PHASEOccluderData>::DynamicArray(v4, a3);
    *(v4 + 40) = 1;
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN2re12DynamicArrayINS8_5audio23AcousticMeshRemovalDataEEENS9_INSA_17PHASEOccluderDataEEENS9_INSA_23PHASEOccluderUpdateDataEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_6__baseILSL_1EJSC_SE_SG_EEERKSX_EEEDcSP_DpT0_(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  if (*(*a1 + 40) == 2)
  {
    if (a2 != a3)
    {
      v6 = *a3;
      if (*a2)
      {
        if (v6)
        {
          re::DynamicArray<re::audio::PHASEOccluderUpdateData>::copy(a2, a3);
        }

        else
        {
          v8 = *(a2 + 16);
          *(a2 + 16) = 0;
          if (v8)
          {
            v9 = 56 * v8;
            v10 = (*(a2 + 32) + 32);
            do
            {
              v11 = *v10;
              v10 += 7;

              v9 -= 56;
            }

            while (v9);
          }
        }

        ++*(a2 + 24);
      }

      else if (v6)
      {
        v7 = a3[2];
        *a2 = v6;
        re::DynamicArray<re::audio::PHASEOccluderUpdateData>::setCapacity(a2, v7);
        ++*(a2 + 24);
        re::DynamicArray<re::audio::PHASEOccluderUpdateData>::copy(a2, a3);
      }
    }
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    re::DynamicArray<re::audio::PHASEOccluderUpdateData>::DynamicArray(v4, a3);
    *(v4 + 40) = 2;
  }
}

void re::DynamicArray<re::audio::PHASEOccluderData>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::audio::PHASEOccluderData>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:ne200100]<re::audio::PHASEOccluderData *,re::audio::PHASEOccluderData *,re::audio::PHASEOccluderData *>(*(a2 + 32), (*(a2 + 32) + 48 * a1[2]), a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = (v10 + 48 * v4);
      v12 = 3 * v9;
      v13 = (v10 + 16 * v12);
      v14 = a1[4] + 16 * v12;
      do
      {
        v15 = *v13;
        *(v14 + 16) = *(v13 + 2);
        *v14 = v15;
        *(v14 + 24) = *(v13 + 3);
        *(v14 + 32) = v13[2];
        v13 += 3;
        v14 += 48;
      }

      while (v13 != v11);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<re::audio::PHASEOccluderData *,re::audio::PHASEOccluderData *,re::audio::PHASEOccluderData *>(*(a2 + 32), (*(a2 + 32) + 48 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = 48 * v5 - 48 * v4;
      v7 = (a1[4] + 48 * v4 + 24);
      do
      {
        v8 = *v7;
        v7 += 6;

        v6 -= 48;
      }

      while (v6);
    }
  }

  a1[2] = v4;
}

void std::__copy_impl::operator()[abi:ne200100]<re::audio::PHASEOccluderData *,re::audio::PHASEOccluderData *,re::audio::PHASEOccluderData *>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
      objc_storeStrong((a3 + 24), *(v5 + 3));
      v7 = *(v5 + 4);
      *(a3 + 40) = *(v5 + 40);
      *(a3 + 32) = v7;
      v5 += 3;
      a3 += 48;
    }

    while (v5 != a2);
  }
}

uint64_t re::DynamicArray<re::audio::PHASEOccluderData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::audio::PHASEOccluderData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::audio::PHASEOccluderData>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::audio::PHASEOccluderUpdateData>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::audio::PHASEOccluderUpdateData>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:ne200100]<re::audio::PHASEOccluderUpdateData *,re::audio::PHASEOccluderUpdateData *,re::audio::PHASEOccluderUpdateData *>(*(a2 + 32), *(a2 + 32) + 56 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = v10 + 56 * v4;
      v12 = 56 * v9;
      v13 = v10 + v12;
      v14 = a1[4] + v12;
      do
      {
        v15 = *(v13 + 16);
        *v14 = *v13;
        *(v14 + 16) = v15;
        *(v14 + 32) = *(v13 + 32);
        *(v14 + 40) = *(v13 + 40);
        v13 += 56;
        v14 += 56;
      }

      while (v13 != v11);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<re::audio::PHASEOccluderUpdateData *,re::audio::PHASEOccluderUpdateData *,re::audio::PHASEOccluderUpdateData *>(*(a2 + 32), *(a2 + 32) + 56 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = -56 * v4 + 56 * v5;
      v7 = (56 * v4 + a1[4] + 32);
      do
      {
        v8 = *v7;
        v7 += 7;

        v6 -= 56;
      }

      while (v6);
    }
  }

  a1[2] = v4;
}

void std::__copy_impl::operator()[abi:ne200100]<re::audio::PHASEOccluderUpdateData *,re::audio::PHASEOccluderUpdateData *,re::audio::PHASEOccluderUpdateData *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *(v5 + 16);
      *a3 = *v5;
      *(a3 + 16) = v6;
      objc_storeStrong((a3 + 32), *(v5 + 32));
      v7 = *(v5 + 40);
      *(a3 + 48) = *(v5 + 48);
      *(a3 + 40) = v7;
      v5 += 56;
      a3 += 56;
    }

    while (v5 != a2);
  }
}

uint64_t re::DynamicArray<re::audio::PHASEOccluderUpdateData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::audio::PHASEOccluderUpdateData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::audio::PHASEOccluderUpdateData>::copy(a1, a2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::__shared_ptr_pointer<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *,std::function<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>,std::allocator<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CCBCC0;
  std::__function::__value_func<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>::~__value_func[abi:ne200100](&a1[1].__shared_owners_);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

{
  a1->__vftable = &unk_1F5CCBCC0;
  std::__function::__value_func<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>::~__value_func[abi:ne200100](&a1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *,std::function<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>,std::allocator<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>>>::__on_zero_shared(uint64_t a1)
{
  std::function<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>::operator()(*(a1 + 56), *(a1 + 24));

  return std::__function::__value_func<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>::~__value_func[abi:ne200100](a1 + 32);
}

uint64_t std::__shared_ptr_pointer<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *,std::function<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>,std::allocator<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>,re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>>> *)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__function::__func<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0,std::allocator<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0>,void ()(AUAudioUnit *,NSError *)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5CCBD80;

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0,std::allocator<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0>,void ()(AUAudioUnit *,NSError *)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5CCBD80;

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  JUMPOUT(0x1E6906520);
}

id std::__function::__func<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0,std::allocator<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0>,void ()(AUAudioUnit *,NSError *)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = &unk_1F5CCBD80;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = *(a1 + 24);
  v6 = _Block_copy(*(a1 + 32));
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  *(a2 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 56) = *(a1 + 56);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  return result;
}

void std::__function::__func<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0,std::allocator<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0>,void ()(AUAudioUnit *,NSError *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
}

void std::__function::__func<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0,std::allocator<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0>,void ()(AUAudioUnit *,NSError *)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(a1);
}

void std::__function::__func<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0,std::allocator<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0>,void ()(AUAudioUnit *,NSError *)>::operator()(uint64_t a1, id *a2, void **a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = v4;
  v7 = *(a1 + 56);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = ___ZZN2re18AudioManager_PHASE13prepareSourceERNS_16AudioSourceStateE6CMTimeU13block_pointerFvP7NSErrorEENK3__0clEP11AUAudioUnitS5__block_invoke;
  v16[3] = &unk_1F5CCBDF8;
  v22 = v7;
  v8 = *(a1 + 16);
  v17 = *(a1 + 24);
  v9 = v6;
  v18 = v9;
  v10 = *(a1 + 32);
  v11 = *(a1 + 8);
  v21 = v10;
  v23 = v11;
  v12 = v5;
  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  v19 = v12;
  v24 = v14;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 72);
  v26 = *(a1 + 64);
  v20 = v15;
  dispatch_async(v8, v16);

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }
}

uint64_t std::__function::__func<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0,std::allocator<re::AudioManager_PHASE::prepareSource(re::AudioSourceState &,CMTime,void({block_pointer})(NSError *))::$_0>,void ()(AUAudioUnit *,NSError *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZZN2re18AudioManager_PHASE13prepareSourceERNS_16AudioSourceStateE6CMTimeU13block_pointerFvP7NSErrorEENK3__0clEP11AUAudioUnitS5__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  v3 = [*(a1 + 32) isCancelled];
  if (v3)
  {
    v4 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "Aborting callback since the engine was shut down.", buf, 2u);
    }
  }

  else if (*(a1 + 40))
  {
    v5 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138412290;
      v12 = v9;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Could not instantiate audio generator AU. %@", buf, 0xCu);
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      (*(v6 + 16))(v6, *(a1 + 40));
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 80) + 488), *(a1 + 48));
    objc_storeStrong((*(a1 + 88) + 272), *(a1 + 48));
    v7 = *(v2 + 648);
    v8 = *(a1 + 96);
    v10[0] = *(a1 + 88);
    v10[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    re::AudioManager_PHASE_Async::prepareSourceAsync(v7, v10, *(a1 + 104), *(a1 + 56), *(v2 + 664));
    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }
}

void sub_1E214CBD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_ea8_88c63_ZTSNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(result + 96) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_88c63_ZTSNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(void)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E214D318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,re::AudioManager_PHASE::MixGroupState>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,re::AudioManager_PHASE::MixGroupState>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0,std::allocator<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5CCBE48;

  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void std::__function::__func<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0,std::allocator<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5CCBE48;

  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1E6906520);
}

id std::__function::__func<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0,std::allocator<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F5CCBE48;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 32);
  a2[3] = *(a1 + 24);
  a2[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 40);
  v8 = *(a1 + 48);
  a2[5] = result;
  a2[6] = v8;
  return result;
}

void std::__function::__func<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0,std::allocator<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__function::__func<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0,std::allocator<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  operator delete(a1);
}

void std::__function::__func<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0,std::allocator<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (([*(a1 + 40) isCancelled] & 1) == 0)
  {
    v3 = *(a1 + 16);
    v6 = *(a1 + 8);
    v7 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = *(a1 + 24);
    v5 = *(v4 + 24);
    if (v5)
    {
      if (v5 == v4)
      {
        v9 = v8;
        (*(*v5 + 24))(v5, v8);
LABEL_9:
        re::AudioManager_PHASE::loadAudio(v2, &v6, v8);
        std::__function::__value_func<void ()(std::shared_ptr<re::PersistedAssetData>)>::~__value_func[abi:ne200100](v8);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        return;
      }

      v5 = (*(*v5 + 16))(v5);
    }

    v9 = v5;
    goto LABEL_9;
  }
}

void sub_1E214D738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0,std::allocator<re::AudioManager_PHASE::storeAudioLoadAsPendingIfPhaseContextIsInactive(std::shared_ptr<re::AudioAssetPayload>,std::shared_ptr<std::function<void ()(std::shared_ptr<re::PersistedAssetData>)>>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::AudioTelemetryReporter *re::AudioTelemetryReporter::AudioTelemetryReporter(re::AudioTelemetryReporter *this)
{
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 44) = 0x7FFFFFFFLL;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_UTILITY, 0);

  v4 = dispatch_queue_create("AudioTelemetry", v3);
  v5 = *this;
  *this = v4;

  return this;
}

NSObject *re::AudioTelemetryReporter::initializeTimerWith(uint64_t a1, NSObject *a2, void *a3, double a4)
{
  v7 = a3;
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a2);
  object = v8;
  dispatch_source_set_timer(v8, 0, (a4 * 1000000000.0), 0x989680uLL);
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  v10 = v9 ^ (v9 >> 31);
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = v10 % v11;
    v13 = *(*(a1 + 16) + 4 * (v10 % v11));
    if (v13 != 0x7FFFFFFF)
    {
      v14 = *(a1 + 24);
      if (*(v14 + 24 * v13 + 16) == v8)
      {
        goto LABEL_9;
      }

      while (1)
      {
        LODWORD(v13) = *(v14 + 24 * v13 + 8) & 0x7FFFFFFF;
        if (v13 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v14 + 24 * v13 + 16) == v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  re::HashSetBase<NSObject  {objcproto18OS_dispatch_source}* {__strong},NSObject  {objcproto18OS_dispatch_source}* {__strong},re::internal::ValueAsKey<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::Hash<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::EqualTo<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,true,false>::addAsCopy(a1 + 8, v12, v10, &object, &object);
  ++*(a1 + 48);
  v8 = object;
LABEL_9:
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___ZN2re22AudioTelemetryReporter19initializeTimerWithEdPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvE_block_invoke;
  v18[3] = &unk_1E871BB28;
  v19 = v7;
  v15 = v7;
  dispatch_source_set_event_handler(v8, v18);
  dispatch_resume(object);
  v16 = object;

  return v16;
}

void re::AudioTelemetryReporter::~AudioTelemetryReporter(re::AudioTelemetryReporter *this)
{
  v2 = *this;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re22AudioTelemetryReporterD2Ev_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
  v3 = *this;
  *this = 0;

  re::HashSetBase<NSObject  {objcproto18OS_dispatch_source}* {__strong},NSObject  {objcproto18OS_dispatch_source}* {__strong},re::internal::ValueAsKey<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::Hash<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::EqualTo<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,true,false>::deinit(this + 1);
}

void ___ZN2re22AudioTelemetryReporterD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = 0;
    v4 = (*(v1 + 24) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(v1 + 40);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 == v2)
  {
    v6 = *(v1 + 40);
  }

  else
  {
    v6 = *(v1 + 40);
    do
    {
      v7 = *(*(v1 + 24) + 24 * v3 + 16);
      if (v7)
      {
        dispatch_source_cancel(v7);
        v6 = *(v1 + 40);
      }

      if (v6 <= v3 + 1)
      {
        v8 = v3 + 1;
      }

      else
      {
        v8 = v6;
      }

      while (v8 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(v1 + 24) + 24 * v3 + 8) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v3) = v8;
LABEL_19:
      ;
    }

    while (v3 != v2);
  }

  if (*(v1 + 36))
  {
    v9 = *(v1 + 32);
    if (v9)
    {
      memset_pattern16(*(v1 + 16), &unk_1E304C660, 4 * v9);
      v6 = *(v1 + 40);
    }

    if (v6)
    {
      v10 = 0;
      for (i = 0; i < v6; ++i)
      {
        v12 = *(v1 + 24) + v10;
        v13 = *(v12 + 8);
        if (v13 < 0)
        {
          *(v12 + 8) = v13 & 0x7FFFFFFF;

          v6 = *(v1 + 40);
        }

        v10 += 24;
      }
    }

    *(v1 + 36) = 0;
    *(v1 + 40) = 0;
    v14 = *(v1 + 48) + 1;
    *(v1 + 44) = 0x7FFFFFFF;
    *(v1 + 48) = v14;
  }
}

void re::AudioTelemetryReporter::stopTimer(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_source_cancel(v3);
  re::HashSetBase<NSObject  {objcproto18OS_dispatch_source}* {__strong},NSObject  {objcproto18OS_dispatch_source}* {__strong},re::internal::ValueAsKey<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::Hash<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::EqualTo<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,true,false>::remove(a1 + 8, &v3);
}

uint64_t re::HashSetBase<NSObject  {objcproto18OS_dispatch_source}* {__strong},NSObject  {objcproto18OS_dispatch_source}* {__strong},re::internal::ValueAsKey<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::Hash<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::EqualTo<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,true,false>::remove(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31)) % v2;
  v7 = *(a1 + 8);
  v8 = *(v7 + 4 * v6);
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (*(v10 + 24 * v8 + 16) != v4)
  {
    while (1)
    {
      v11 = v8;
      v12 = *(v10 + 24 * v8 + 8);
      v8 = v12 & 0x7FFFFFFF;
      if ((v12 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v10 + 24 * v8 + 16) == v4)
      {
        *(v10 + 24 * v11 + 8) = *(v10 + 24 * v11 + 8) & 0x80000000 | *(v10 + 24 * v8 + 8) & 0x7FFFFFFF;
        goto LABEL_10;
      }
    }
  }

  *(v7 + 4 * v6) = *(v10 + 24 * v8 + 8) & 0x7FFFFFFF;
LABEL_10:
  v13 = *(a1 + 16);
  v14 = v13 + 24 * v8;
  v15 = *(v14 + 8);
  if (v15 < 0)
  {
    *(v14 + 8) = v15 & 0x7FFFFFFF;

    v13 = *(a1 + 16);
  }

  v16 = *(a1 + 40);
  *(v13 + 24 * v8 + 8) = *(v13 + 24 * v8 + 8) & 0x80000000 | *(a1 + 36);
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v16 + 1;
  return 1;
}

void re::AudioTelemetryReporter::sendTelemetryReport(NSObject **a1, void *a2, void *a3)
{
  v4 = *a1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = ___ZN2re22AudioTelemetryReporter19sendTelemetryReportENS0_15TelemetryReportE_block_invoke;
  v7[3] = &__block_descriptor_48_ea8_32c50_ZTSN2re22AudioTelemetryReporter15TelemetryReportE_e5_v8__0l;
  v8 = a2;
  v9 = a3;
  v5 = a3;
  v6 = a2;
  dispatch_async(v4, v7);
}

void ___ZN2re22AudioTelemetryReporter19sendTelemetryReportENS0_15TelemetryReportE_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) UTF8String];
  v3 = strlen(v2);
  if (v3 + 22 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 + 22 >= 0x17)
  {
    operator new();
  }

  v7[23] = v3 + 22;
  strcpy(v7, "com.apple.re.tdgaudio.");
  if (v3)
  {
    memmove(&v7[22], v2, v3);
  }

  v7[v4 + 22] = 0;
  v11 = *v7;
  v12 = *&v7[16];
  *v7 = 0;
  *&v7[8] = v7;
  *&v7[16] = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__6;
  v10 = xpc_dictionary_create(0, 0, 0);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2re22AudioTelemetryReporter19sendTelemetryReportENS0_15TelemetryReportE_block_invoke_3;
  v6[3] = &unk_1E871BB50;
  v6[4] = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
  analytics_send_event_lazy();
  _Block_object_dispose(v7, 8);

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_1E214E0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (*(v24 - 73) < 0)
  {
    operator delete(*(v24 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN2re22AudioTelemetryReporter19sendTelemetryReportENS0_15TelemetryReportE_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(*(*(*(a1 + 32) + 8) + 40), [v9 UTF8String], objc_msgSend(v5, "UTF8String"));
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(*(*(a1 + 32) + 8) + 40);
      v7 = [v9 UTF8String];
      [v5 doubleValue];
      xpc_dictionary_set_double(v6, v7, v8);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        xpc_dictionary_set_int64(*(*(*(a1 + 32) + 8) + 40), [v9 UTF8String], objc_msgSend(v5, "intValue"));
      }
    }
  }
}

id __copy_helper_block_ea8_32c50_ZTSN2re22AudioTelemetryReporter15TelemetryReportE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c50_ZTSN2re22AudioTelemetryReporter15TelemetryReportE(uint64_t a1)
{
  v2 = *(a1 + 32);
}

double re::HashSetBase<NSObject  {objcproto18OS_dispatch_source}* {__strong},NSObject  {objcproto18OS_dispatch_source}* {__strong},re::internal::ValueAsKey<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::Hash<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::EqualTo<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,true,false>::deinit(uint64_t *a1)
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
        v6 = a1[2] + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;

          v3 = *(a1 + 8);
        }

        v4 += 24;
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

uint64_t re::HashSetBase<NSObject  {objcproto18OS_dispatch_source}* {__strong},NSObject  {objcproto18OS_dispatch_source}* {__strong},re::internal::ValueAsKey<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::Hash<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::EqualTo<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, id *a5)
{
  v9 = *(a1 + 36);
  if (v9 == 0x7FFFFFFF)
  {
    v9 = *(a1 + 32);
    v10 = v9;
    if (v9 == *(a1 + 24))
    {
      re::HashSetBase<NSObject  {objcproto18OS_dispatch_source}* {__strong},NSObject  {objcproto18OS_dispatch_source}* {__strong},re::internal::ValueAsKey<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::Hash<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::EqualTo<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v10 = *(a1 + 32);
    }

    *(a1 + 32) = v10 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v9 + 8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v9 + 8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  *(v11 + 24 * v9 + 8) = v12 | 0x80000000;
  *(*(a1 + 16) + 24 * v9 + 8) = *(*(a1 + 16) + 24 * v9 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v9) = a3;
  v13 = *(a1 + 16) + 24 * v9;
  *(v13 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v9;
  ++*(a1 + 28);
  return v9;
}

void re::HashSetBase<NSObject  {objcproto18OS_dispatch_source}* {__strong},NSObject  {objcproto18OS_dispatch_source}* {__strong},re::internal::ValueAsKey<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::Hash<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::EqualTo<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v22, v4, a2);
      v5 = *v22;
      *v22 = *a1;
      *a1 = v5;
      v6 = *&v22[16];
      *&v22[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      DWORD2(v5) = *&v22[32];
      *(a1 + 24) = v7;
      v8 = DWORD2(v5);
      if (DWORD2(v5))
      {
        v9 = 0;
        v10 = 0;
        v11 = DWORD1(v7);
        do
        {
          v12 = (*&v22[16] + v9);
          if ((*(*&v22[16] + v9 + 8) & 0x80000000) != 0)
          {
            v13 = *v12;
            v14 = *(a1 + 24);
            v15 = *v12 % v14;
            v16 = *(a1 + 36);
            if (v16 == 0x7FFFFFFF)
            {
              v16 = *(a1 + 32);
              v17 = v16;
              if (v16 == v14)
              {
                re::HashSetBase<NSObject  {objcproto18OS_dispatch_source}* {__strong},NSObject  {objcproto18OS_dispatch_source}* {__strong},re::internal::ValueAsKey<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::Hash<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::EqualTo<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,true,false>::setCapacity(a1, (2 * v11));
                v15 = v13 % *(a1 + 24);
                v17 = *(a1 + 32);
              }

              *(a1 + 32) = v17 + 1;
              v18 = *(a1 + 16);
              v19 = *(v18 + 24 * v16 + 8);
            }

            else
            {
              v18 = *(a1 + 16);
              v19 = *(v18 + 24 * v16 + 8);
              *(a1 + 36) = v19 & 0x7FFFFFFF;
            }

            *(v18 + 24 * v16 + 8) = v19 | 0x80000000;
            *(*(a1 + 16) + 24 * v16 + 8) = *(*(a1 + 16) + 24 * v16 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * v15);
            *(*(a1 + 16) + 24 * v16) = v13;
            v20 = *(a1 + 16) + 24 * v16;
            *(v20 + 16) = v12[2];
            *(*(a1 + 8) + 4 * v15) = v16;
            v11 = *(a1 + 28) + 1;
            *(a1 + 28) = v11;
            v8 = *&v22[32];
          }

          ++v10;
          v9 += 24;
        }

        while (v10 < v8);
      }

      re::HashSetBase<NSObject  {objcproto18OS_dispatch_source}* {__strong},NSObject  {objcproto18OS_dispatch_source}* {__strong},re::internal::ValueAsKey<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::Hash<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,re::EqualTo<NSObject  {objcproto18OS_dispatch_source}* {__strong}>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 3;
    }
  }
}

void re::AudioManager::AudioManager(re::AudioManager *this)
{
  *this = &unk_1F5CCC398;
  v2 = MEMORY[0x1E69E96A0];
  v3 = MEMORY[0x1E69E96A0];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 14) = 0;
  *this = &unk_1F5CCBEF8;
  *(this + 1) = v2;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 1065353216;
  *(this + 104) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 176) = 0;
  *(this + 256) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 76) = 1065353216;
  *(this + 39) = 0;
  *(this + 320) = 0;
  *(this + 84) = 0;
  *(this + 340) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 49) = 0;
  *(this + 100) = 1065353216;
  re::AudioSessionCache::AudioSessionCache(this + 51);
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 128) = 1065353216;
  *(this + 71) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 576) = 1;
  operator new();
}
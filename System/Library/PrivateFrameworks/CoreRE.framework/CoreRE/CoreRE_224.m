uint64_t re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw *a1, uint64_t a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v22[0] = 0;
  result = re::snapshot::DecoderRaw::beginDictionary(a1, v22);
  if (result)
  {
    v7 = (*(*a3 + 88))(a3, a2);
    v8 = v22[0];
    if (v22[0] != -1)
    {
      v7 = (*(*a3 + 72))(a3, a2, v22[0]);
    }

    v9 = a3[6];
    v10 = *(v9 + 6);
    v11 = *(v9 + 5) + v10 - 1;
    __space = v11;
    MEMORY[0x1EEE9AC00](v7);
    v13 = &__ptr - v12;
    bzero(&__ptr - v12, v11);
    __ptr = v13;
    result = std::align(v10, v11, &__ptr, &__space);
    for (__ptr = result; v8; result = (*(*a3 + 112))(a3, __ptr))
    {
      --v8;
      v14 = (*(*a1 + 40))(a1);
      v15 = (*(*a1 + 32))(a1);
      v16 = __ptr;
      re::introspectionCallConstructor(v15, v9, __ptr);
      re::introspectionInitElement(v14, v17, v9, v16);
      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a1);
      v18 = (*(*a1 + 40))(a1);
      v19 = (*(*a1 + 32))(a1);
      (*(*a3 + 96))(a3, v18, v19, a2, __ptr);
      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a1);
    }
  }

  return result;
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderRaw>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(&v13, 0);
  v17 = 0;
  if (re::snapshot::DecoderRaw::beginString(a1, &v17))
  {
    v6 = v17;
    re::DynamicString::resize(&v13, v17, 0);
    if (v14)
    {
      v7 = v15;
    }

    else
    {
      v7 = &v14 + 1;
    }

    re::snapshot::BufferDecoder::readRaw(a1, v7, v6);
  }

  v8 = *(a3 + 80);
  v9 = (*(*a1 + 40))(a1);
  v10 = (*(*a1 + 32))(a1);
  if (v14)
  {
    v11 = v15;
  }

  else
  {
    v11 = &v14 + 1;
  }

  v8(v9, v10, a3, a2, v11);
  result = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))();
    }
  }

  return result;
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderRaw>(uint64_t this, unint64_t a2, unint64_t a3)
{
  v5 = this;
  v55 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 128);
  if (!v6)
  {
    if (!*(a3 + 56))
    {
      return this;
    }

    v7 = 0;
    v8 = *(a3 + 60);
    while (1)
    {
      v9 = *(*(a3 + 64) + 8 * v7);
      if (*v9 != 1)
      {
        goto LABEL_30;
      }

      v10 = *(v9 + 40);
      if ((v8 & 1) != 0 && v10 == 3)
      {
        goto LABEL_30;
      }

      if (v10 > 1)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_28;
      }

      if (v10 == 1)
      {
        v11 = *(v9 + 16);
        v49 = *(v9 + 36);
        v50[0] = 0;
        __dst = 0;
        if (*(a2 + v49))
        {
          v12 = *(v9 + 48);
          if (v12)
          {
            memcpy(&__dst, (a2 + *(v9 + 64)), *(v12 + 20));
          }
        }

        if (*(*(v11 + 48) + 16))
        {
          this = re::snapshot::DecoderRaw::beginArray(v5, v50);
          if (this)
          {
            v13 = v49;
            v47 = v11;
            v48 = v50[0];
            v46 = v8;
            if (!*(a2 + v49))
            {
              v27 = 1;
              goto LABEL_64;
            }

            v14 = __dst;
            if (__dst != v50[0])
            {
              v53 = 0;
              v15 = *(*(v11 + 48) + 16);
              if (v15 > 6)
              {
                v16 = v5;
                if (v15 > 9)
                {
                  if (v15 == 10)
                  {
                    std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#4},void>(__src);
                  }

                  else
                  {
                    if (v15 != 13)
                    {
                      goto LABEL_63;
                    }

                    std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},void>(__src, v11);
                  }
                }

                else if (v15 == 7)
                {
                  std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},void>(__src, v11);
                }

                else
                {
                  if (v15 != 8)
                  {
                    goto LABEL_63;
                  }

                  std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},void>(__src, v5, v11);
                }
              }

              else
              {
                v16 = v5;
                if (v15 > 4)
                {
                  if (v15 == 5)
                  {
                    std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},void>(__src, v11);
                  }

                  else
                  {
                    std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#3},void>(__src);
                  }

                  goto LABEL_59;
                }

                if (v15 != 3)
                {
                  if (v15 == 4)
                  {
                    std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},void>(__src, v11);
                    goto LABEL_59;
                  }

LABEL_63:
                  v29 = (*(*v16 + 40))(v16);
                  (*(*v29 + 40))(v29, *(a2 + v49));
                  *(a2 + v49) = 0;
                  this = std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](__src);
                  v27 = *(a2 + v49) == 0;
LABEL_64:
                  if (v27 && v48 != 0)
                  {
                    v31 = (*(*v5 + 40))(v5);
                    v32 = (*(*v31 + 32))(v31, v48 * *(*(v47 + 48) + 20), 0);
                    *(a2 + v49) = v32;
                    if (!v32)
                    {
                      return re::snapshot::BufferDecoder::error(v5, "allocation failure, array with size: %zu %d byte elements");
                    }

                    v33 = 0;
                    do
                    {
                      v34 = (*(a2 + v13) + *(*(v47 + 48) + 20) * v33);
                      v35 = a2;
                      v36 = (*(*v5 + 40))(v5);
                      v37 = (*(*v5 + 32))(v5);
                      v38 = *(v47 + 48);
                      re::introspectionCallConstructor(v37, v38, v34);
                      v39 = v36;
                      a2 = v35;
                      v13 = v49;
                      this = re::introspectionInitElement(v39, v40, v38, v34);
                      ++v33;
                    }

                    while (v48 != v33);
                  }

                  goto LABEL_71;
                }

                std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},void>(__src, v11);
              }

LABEL_59:
              if (v14 && v53)
              {
                for (i = 0; i != v14; ++i)
                {
                  std::function<void ()(void *)>::operator()(__src, *(a2 + v49) + *(*(v47 + 48) + 20) * i);
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            __src[0] = v48;
            if (*(v9 + 40) == 1)
            {
              v41 = *(v9 + 48);
              if (v41)
              {
                this = memcpy((a2 + *(v9 + 64)), __src, *(v41 + 20));
              }
            }

            v42 = *(a2 + v13);
            v43 = v48 - 1;
            v50[0] = v48 - 1;
            v8 = v46;
            if (v48)
            {
              v44 = 0;
              do
              {
                if (v44 < v48)
                {
                  this = re::snapshot::introspected::read<re::snapshot::DecoderRaw>(v5);
                  v42 += *(*(v47 + 48) + 20);
                  v43 = v50[0];
                }

                v45 = v43--;
                v50[0] = v43;
                ++v44;
              }

              while (v45);
            }
          }
        }

        else
        {
          v18 = *(v5 + 3);
          v19 = *(v5 + 4) - v18;
          if (v19 <= 7)
          {
            this = re::snapshot::BufferDecoder::error(v5, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v19);
          }

          else
          {
            v20 = *v18;
            *(v5 + 3) = v18 + 1;
            v21 = *(*(v11 + 48) + 20);
            v22 = v20 / v21;
            if (v20 % v21)
            {
              return re::snapshot::BufferDecoder::error(v5, "invalid array data, data size = %zu, element size = %u");
            }

            v23 = *(a2 + v49);
            if (v23 && v22 != __dst)
            {
              v24 = (*(*v5 + 40))(v5);
              (*(*v24 + 40))(v24, *(a2 + v49));
              v23 = 0;
              *(a2 + v49) = 0;
            }

            if (v20)
            {
              if (!v23)
              {
                v25 = (*(*v5 + 40))(v5);
                v23 = (*(*v25 + 32))(v25, v20, 0);
                *(a2 + v49) = v23;
                if (!v23)
                {
                  return re::snapshot::BufferDecoder::error(v5, "allocation failure, array with size: %zu bytes");
                }
              }
            }

            __src[0] = v22;
            if (*(v9 + 40) == 1)
            {
              v26 = *(v9 + 48);
              if (v26)
              {
                memcpy((a2 + *(v9 + 64)), __src, *(v26 + 20));
                v23 = *(a2 + v49);
              }
            }

            this = re::snapshot::BufferDecoder::readRaw(v5, v23, v20);
          }
        }
      }

LABEL_30:
      if (++v7 >= *(a3 + 56))
      {
        return this;
      }
    }

    if (v10 == 2)
    {
      v17 = *(v9 + 36);
      v50[0] = a3;
      v50[1] = v9;
      v50[2] = a2;
      v53 = re::globalAllocators(this)[2];
      v54 = __src;
      __src[0] = &unk_1F5D17B20;
      __src[1] = v50;
      re::snapshot::DecoderRaw::deserializePolymorphicPointer(v5, a2 + v17, __src);
      this = re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(__src);
      goto LABEL_30;
    }

    if (v10 != 3 || (v8 & 1) != 0)
    {
      goto LABEL_30;
    }

LABEL_28:
    this = re::snapshot::introspected::read<re::snapshot::DecoderRaw>(v5);
    goto LABEL_30;
  }

  return v6();
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17820;
  v3 = *v2;
  *(a2 + 24) = v2[1];
  *(a2 + 8) = v3;
  return a2;
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1}::operator()(uint64_t *a1, re::snapshot::BufferDecoder *this, uint64_t *a3, int a4, void *a5)
{
  if (a4 != 3)
  {
    if (a4 != 1)
    {
      if (!a4)
      {
        v9 = *a3;
        if (*a3)
        {
          v10 = (*(*this + 40))(this);
          v11 = (*(*this + 32))(this);
          re::introspectionReleasePointer(v9, v10, v11, *a1);
          *a3 = 0;
        }
      }

      return;
    }

    v12 = a1[3];
    v13 = *v12;
    if (v13)
    {
      v14 = (*(v12 + 1) + 24);
      while (*v14 != a5)
      {
        v14 += 5;
        if (!--v13)
        {
          goto LABEL_20;
        }
      }

      v20 = *(v14 - 2);
      v21 = a1[1];
      if (v21)
      {
        v22 = a1[2];
        __dst = 0;
        memcpy(&__dst, v21, *(v22 + 20));
        v23 = __dst;
      }

      else
      {
        v23 = 0;
      }

      v27 = *a3;
      if (v23 == a5)
      {
        if (v27)
        {
LABEL_36:

          re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v27, v20);
          return;
        }
      }

      else if (v27)
      {
        v28 = (*(*this + 40))(this);
        v29 = (*(*this + 32))(this);
        re::introspectionReleasePointer(v27, v28, v29, *a1);
        *a3 = 0;
      }

      v30 = (*(*this + 40))(this);
      v31 = (*(*this + 32))(this);
      v32 = re::introspectionAllocPointer(v30, v31, v20);
      *a3 = v32;
      if (!v32)
      {
        re::snapshot::BufferDecoder::error(this, "allocation failure: %d bytes");
        return;
      }

      re::PolymorphicData::makeWithPointer(*a1, v32, &__dst);
      __src = a5;
      if (__dst)
      {
        memcpy(__dst, &__src, *(v34 + 20));
      }

      v27 = *a3;
      goto LABEL_36;
    }

LABEL_20:
    re::snapshot::BufferDecoder::error(this, "invalid polymorphic type %llu");
    return;
  }

  if (*(*a1 + 16) == 8 && (v15 = *(*a1 + 88)) != 0)
  {
    v16 = *a3;

    v15(v16);
  }

  else
  {
    v17 = a1[3];
    v18 = *v17;
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = (*(v17 + 1) + 24);
    while (*v19 != a5)
    {
      v19 += 5;
      if (!--v18)
      {
        goto LABEL_20;
      }
    }

    v24 = (*(*this + 40))(this);
    v25 = (*(*this + 32))(this);
    v26 = re::introspectionDeepCopy(v24, v25, *(v19 - 2), *a3);
    *a3 = v26;
    re::PolymorphicData::makeWithPointer(*a1, v26, &__dst);
    __src = a5;
    if (__dst)
    {
      memcpy(__dst, &__src, *(v34 + 20));
    }
  }
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17820;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17820;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(uint64_t a1))(void)
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

void *re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D178A0;
  a2[1] = v2;
  return a2;
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1}::operator()(re::Allocator **a1, re::snapshot::DecoderRaw *this, uint64_t *a3, int a4)
{
  switch(a4)
  {
    case 3:
      if (*(*a1 + 4) == 8 && (v14 = *(*a1 + 11)) != 0)
      {
        v15 = *a3;

        v14(v15);
      }

      else
      {
        v16 = (*(*this + 40))(this);
        v17 = (*(*this + 32))(this);
        *a3 = re::introspectionDeepCopy(v16, v17, *a1, *a3);
      }

      break;
    case 1:
      v10 = *a3;
      if (*a3 || (v11 = (*(*this + 40))(this), v12 = (*(*this + 32))(this), v10 = re::introspectionAllocPointer(v11, v12, *a1), (*a3 = v10) != 0))
      {
        v13 = *a1;

        re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v10, v13);
      }

      else
      {
        re::snapshot::BufferDecoder::error(this, "allocation failure: %d bytes", *(*a1 + 5));
      }

      break;
    case 0:
      v7 = *a3;
      if (*a3)
      {
        v8 = (*(*this + 40))(this);
        v9 = (*(*this + 32))(this);
        re::introspectionReleasePointer(v7, v8, v9, *a1);
        *a3 = 0;
      }

      break;
  }
}

void *re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D178A0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D178A0;
  a2[1] = v2;
  return a2;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},void>(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F5D178E0;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = v5;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v5);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17928;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#3},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D17970;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#4},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D179B8;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17A00;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17A48;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17A90;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17AD8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

__n128 std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D178E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(a1 + 16) + 48);
  v6 = *(v3 + 80);
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));

  return v6(v3, v4, v2);
}

void *std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17928;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17A00;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17A48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17A90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17AD8;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17B60;
  v3 = *v2;
  *(a2 + 24) = *(v2 + 2);
  *(a2 + 8) = v3;
  return a2;
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1}::operator()(re *a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5)
{
  v9 = a1;
  v59 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 1);
  v11 = *(*(v10 + 16) + 48);
  v12 = *(v11 + 64);
  v13 = *v12;
  if (**v12 != 2)
  {
    v14 = (v12 + 1);
    do
    {
      v15 = *v14++;
      v13 = v15;
    }

    while (*v15 != 2);
  }

  v16 = *(v13 + 1);
  if (v16)
  {
    v17 = *(a1 + 2);
    v18 = *(v10 + 64);
    v19 = *(v10 + 48);
    if (v17)
    {
      *__dst = 0;
      a1 = memcpy(__dst, (v17 + v18), *(v19 + 20));
      v20 = *__dst;
    }

    else
    {
      v20 = 0;
    }

    if (a4 > 1)
    {
      if (a4 != 2)
      {
        if (a4 != 3)
        {
          return;
        }

        if (v11 && *(v11 + 16) == 8 && (v32 = *(v11 + 88)) != 0)
        {
          v32(*a3);
        }

        else
        {
          v38 = *v16;
          if (v38)
          {
            v39 = *(v16 + 1);
            while (*(v39 + 24) != a5)
            {
              v39 += 40;
              if (!--v38)
              {
                goto LABEL_44;
              }
            }
          }

          else
          {
LABEL_44:
            v39 = 0;
          }

          v40 = (*(*a2 + 40))(a2);
          v41 = (*(*a2 + 32))(a2);
          *a3 = re::introspectionDeepCopy(v40, v41, *(v39 + 8), *a3);
        }
      }

      *__dst = a5;
      if (v17)
      {
        memcpy((v17 + v18), __dst, *(v19 + 20));
      }
    }

    else
    {
      if (a4)
      {
        if (a4 != 1)
        {
          return;
        }

        v25 = *v16;
        if (!v25)
        {
LABEL_18:
          v29 = *re::foundationSerializationLogObjects(a1);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            re::getPrettyTypeName(*v9, buf);
            if (buf[8])
            {
              v30 = *&v54[2];
            }

            else
            {
              v30 = &buf[9];
            }

            v31 = *(v9[1] + 8);
            *__dst = 134218498;
            *&__dst[4] = a5;
            v56 = 2080;
            *v57 = v30;
            *&v57[8] = 2080;
            v58 = v31;
            _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Couldn't find type %llu in polymorphic table for %s.%s", __dst, 0x20u);
            if (*buf)
            {
              if (buf[8])
              {
                (*(**buf + 40))();
              }
            }
          }

          return;
        }

        v26 = *(v16 + 1);
        v27 = (v26 + 24);
        v28 = v25;
        while (*v27 != a5)
        {
          v27 += 5;
          if (!--v28)
          {
            goto LABEL_18;
          }
        }

        v42 = *a3;
        if (*a3)
        {
          v43 = v20 == a5;
        }

        else
        {
          v43 = 1;
        }

        if (v43)
        {
          if (v42)
          {
LABEL_61:
            *__dst = a5;
            if (v17)
            {
              memcpy((v17 + v18), __dst, *(v19 + 20));
              v42 = *a3;
            }

            v47 = *(v27 - 2);
            v48 = *(*a2 + 328);

            v48(a2, v42, v47);
            return;
          }
        }

        else
        {
          while (*(v26 + 24) != v20)
          {
            v26 += 40;
            if (!--v25)
            {
              v26 = 0;
              break;
            }
          }

          v51 = (*(*a2 + 40))(a2);
          v44 = (*(*a2 + 32))(a2);
          re::introspectionReleasePointer(v42, v51, v44, *(v26 + 8));
          *a3 = 0;
        }

        v45 = (*(*a2 + 40))(a2);
        v46 = (*(*a2 + 32))(a2);
        v42 = re::introspectionAllocPointer(v45, v46, *(v27 - 2));
        *a3 = v42;
        goto LABEL_61;
      }

      v33 = *a3;
      if (*a3)
      {
        v34 = *v16;
        if (v34)
        {
          v35 = *(v16 + 1);
          while (*(v35 + 24) != v20)
          {
            v35 += 40;
            if (!--v34)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
LABEL_38:
          v35 = 0;
        }

        v36 = (*(*a2 + 40))(a2);
        v37 = (*(*a2 + 32))(a2);
        re::introspectionReleasePointer(v33, v36, v37, *(v35 + 8));
        *a3 = 0;
      }
    }
  }

  else
  {
    v21 = *re::foundationSerializationLogObjects(a1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      re::getPrettyTypeName(*v9, __dst);
      v49 = (__dst[8] & 1) != 0 ? *&v57[2] : &__dst[9];
      v50 = *(v9[1] + 8);
      *buf = 136315394;
      *&buf[4] = v49;
      v53 = 2080;
      *v54 = v50;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "No polymorphic table for %s.%s, treating as nullptr", buf, 0x16u);
      if (*__dst)
      {
        if (__dst[8])
        {
          (*(**__dst + 40))();
        }
      }
    }

    v22 = *a3;
    if (*a3)
    {
      v23 = (*(*a2 + 40))(a2);
      v24 = (*(*a2 + 32))(a2);
      re::introspectionReleasePointer(v22, v23, v24, *v9);
      *a3 = 0;
    }

    if ((*(*a2 + 88))(a2, 0))
    {
      (*(*a2 + 96))(a2, 0);
    }
  }
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17B60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17B60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *a1, double *a2, uint64_t a3)
{
  v4 = *(a3 + 56);
  if (v4 > 5)
  {
    if (v4 <= 8)
    {
      if (v4 != 6)
      {
        if (v4 != 7)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }

LABEL_18:
      result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
      *a2 = result;
      return result;
    }

    if (v4 != 9)
    {
      if (v4 != 10)
      {
        if (v4 == 11)
        {

          return re::snapshot::DecoderOPACK::operator>>(a1, a2);
        }

        return re::snapshot::BufferDecoder::error(a1, "unexpected basic type: %s", *(a3 + 48));
      }

      return re::snapshot::DecoderOPACK::operator>>(a1, a2);
    }

LABEL_21:
    result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    *a2 = result;
    return result;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
LABEL_20:
      result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
      *a2 = result;
      return result;
    }

    if (v4 == 4)
    {
LABEL_19:
      result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
      *a2 = result;
      return result;
    }

    goto LABEL_21;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      goto LABEL_18;
    }

    return re::snapshot::BufferDecoder::error(a1, "unexpected basic type: %s", *(a3 + 48));
  }

  return re::snapshot::DecoderOPACK::operator>>(a1, a2);
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *a1, uint64_t **a2, uint64_t a3)
{
  v4 = *(a3 + 20);
  if (v4 > 3)
  {
    if (v4 != 4)
    {
      if (v4 == 8)
      {
        result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
        *a2 = result;
        return result;
      }

      return re::snapshot::BufferDecoder::error(a1, "unexpected enum size %d", *(a3 + 20));
    }

    result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    *a2 = result;
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
        *a2 = result;
        return result;
      }

      return re::snapshot::BufferDecoder::error(a1, "unexpected enum size %d", *(a3 + 20));
    }

    result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    *a2 = result;
  }

  return result;
}

void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *this, const re::IntrospectionBase **a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C3C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3C60))
  {
    qword_1EE1C3C58 = re::introspect<char>(0);
    __cxa_guard_release(&qword_1EE1C3C60);
  }

  v6 = *(a3 + 48);
  if (v6 != qword_1EE1C3C58)
  {
    v7 = re::PolymorphicData::makeWithPointer(v6, *a2, &v19);
    if (v20 && *(&v19 + 1))
    {
      v16 = v6;
      v17 = v19;
      v18 = v20;
      v8 = re::globalAllocators(v7)[2];
      __len = &unk_1F5D17BA0;
      v22 = &v16;
      v23 = v8;
      p_len = &__len;
      re::snapshot::DecoderOPACK::deserializePolymorphicPointer(this, a2, &__len);
      re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(&__len);
    }

    else
    {
      v16 = v6;
      v11 = re::globalAllocators(v7)[2];
      __len = &unk_1F5D17C20;
      v22 = &v16;
      v23 = v11;
      p_len = &__len;
      re::snapshot::DecoderOPACK::deserializePointer(this, a2, &__len);
      re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(&__len);
    }

    return;
  }

  v9 = *(this + 3);
  if (v9 >= *(this + 4))
  {
    goto LABEL_9;
  }

  if (*v9 == 4)
  {
    *(this + 3) = v9 + 1;
LABEL_9:
    if (*a2)
    {
      v10 = (*(*this + 40))(this);
      (*(*v10 + 40))(v10, *a2);
      *a2 = 0;
    }

    return;
  }

  __len = 0;
  if (re::snapshot::DecoderOPACK::beginString(this, &__len))
  {
    v12 = *a2;
    v13 = __len;
    if (*a2 && strlen(*a2) != __len)
    {
      v14 = (*(*this + 40))(this);
      (*(*v14 + 40))(v14, *a2);
      v12 = 0;
      *a2 = 0;
    }

    if (v13 != -1)
    {
      if (v12 || (v15 = (*(*this + 40))(this), v12 = (*(*v15 + 32))(v15, v13 + 1, 0), (*a2 = v12) != 0))
      {
        re::snapshot::BufferDecoder::readRaw(this, v12, v13);
        *(*a2 + v13) = 0;
      }

      else
      {
        re::snapshot::BufferDecoder::error(this, "C String of %zu bytes", v13 + 1);
      }
    }
  }
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 3);
  if (v5 >= *(a1 + 4))
  {
LABEL_4:
    v7 = *(*a3 + 64);

    return v7(a3, a2, 0);
  }

  if (*v5 == 4)
  {
    *(a1 + 3) = v5 + 1;
    goto LABEL_4;
  }

  (*(*a3 + 64))(a3, a2, 1);
  (*(*a3 + 72))(a3, a2);

  return re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1);
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(const char **this, char *a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  __len = 0;
  if (*(v6 + 28) == 1 && re::snapshot::DecoderOPACK::beginData(this, &__len, 1))
  {
    v7 = __len;
    v8 = *(v6 + 20);
    if (__len % v8)
    {
      return re::snapshot::BufferDecoder::error(this, "C Array element size mismatch: expected multiple of %d, got %zu");
    }

    else if (__len / v8 == *(a3 + 64))
    {

      return re::snapshot::BufferDecoder::readRaw(this, a2, v7);
    }

    else
    {
      return re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %d, got %zu");
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(this, &__len);
    if (result)
    {
      v10 = __len;
      if (__len == *(a3 + 64))
      {
        result = re::snapshot::DecoderOPACK::endArray(this, &__len);
        v11 = 0;
        if ((result & 1) == 0)
        {
          do
          {
            if (v11 >= *(a3 + 64))
            {
              v12 = this[3];
              if (v12 >= this[4])
              {
                v13 = 0;
              }

              else
              {
                this[3] = (v12 + 1);
                v13 = *v12;
              }

              re::snapshot::DecoderOPACK::skip(this, v13);
            }

            else
            {
              re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this);
              a2 += *(v6 + 20);
              ++v11;
            }

            result = re::snapshot::DecoderOPACK::endArray(this, &__len);
          }

          while (!result);
        }

        if (v10 != v11)
        {
          return re::snapshot::BufferDecoder::error(this, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(this, "unexpected C Array size: expected %d, got %zu");
      }
    }
  }

  return result;
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *this, uint64_t a2, void *a3)
{
  v6 = a3[6];
  v20 = 0;
  if (*(v6 + 28) == 1 && re::snapshot::DecoderOPACK::beginData(this, &v20, 1))
  {
    v7 = v20;
    if (v20 % *(v6 + 20))
    {
      v8 = v20;

      return re::snapshot::BufferDecoder::skipData(this, v8);
    }

    else
    {
      v17 = (*(*this + 40))(this);
      v18 = (*(*this + 32))(this);
      result = (*(*a3 + 72))(a3, v17, v18, a2, v7 / *(v6 + 20));
      if (v7)
      {
        v19 = (*(*a3 + 96))(a3, a2, 0);

        return re::snapshot::BufferDecoder::readRaw(this, v19, v7);
      }
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(this, &v20);
    if (result)
    {
      v10 = (*(*this + 40))(this);
      v11 = (*(*this + 32))(this);
      v12 = v20;
      (*(*a3 + 72))(a3, v10, v11, a2, v20);
      result = re::snapshot::DecoderOPACK::endArray(this, &v20);
      v13 = 0;
      if ((result & 1) == 0)
      {
        do
        {
          if (v12 <= v13)
          {
            v15 = *(this + 3);
            if (v15 >= *(this + 4))
            {
              v16 = 0;
            }

            else
            {
              *(this + 3) = v15 + 1;
              v16 = *v15;
            }

            re::snapshot::DecoderOPACK::skip(this, v16);
          }

          else
          {
            v14 = v13++;
            (*(*a3 + 96))(a3, a2, v14);
            re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this);
          }

          result = re::snapshot::DecoderOPACK::endArray(this, &v20);
        }

        while (!result);
      }

      if (v12 != v13)
      {
        return re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d", v12, v13);
      }
    }
  }

  return result;
}

{
  v6 = a3[6];
  v21 = 0;
  if (*(v6 + 28) == 1 && re::snapshot::DecoderOPACK::beginData(this, &v21, 1))
  {
    if ((*(*a3 + 88))(a3, a2))
    {
      v7 = v21;
    }

    else
    {
      v16 = (*(*this + 40))(this);
      v17 = (*(*this + 32))(this);
      v7 = v21;
      (*(*a3 + 64))(a3, a2, v16, v17, v21 / *(v6 + 20));
    }

    v18 = *(v6 + 20);
    v19 = v7 / v18;
    if (v7 % v18)
    {

      return re::snapshot::BufferDecoder::skipData(this, v7);
    }

    else
    {
      result = (*(*a3 + 80))(a3, a2);
      if (v19 == result)
      {
        if (v7)
        {
          v20 = (*(*a3 + 96))(a3, a2, 0);

          return re::snapshot::BufferDecoder::readRaw(this, v20, v7);
        }
      }

      else
      {
        (*(*a3 + 80))(a3, a2);
        return re::snapshot::BufferDecoder::error(this, "unexpected data size reading FixedArray: expected %zu, got %zu");
      }
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(this, &v21);
    if (result)
    {
      if ((*(*a3 + 88))(a3, a2))
      {
        v9 = v21;
      }

      else
      {
        v10 = (*(*this + 40))(this);
        v11 = (*(*this + 32))(this);
        v9 = v21;
        (*(*a3 + 64))(a3, a2, v10, v11, v21);
      }

      if ((*(*a3 + 80))(a3, a2) == v9)
      {
        result = re::snapshot::DecoderOPACK::endArray(this, &v21);
        v12 = 0;
        if ((result & 1) == 0)
        {
          do
          {
            if ((*(*a3 + 80))(a3, a2) <= v12)
            {
              v14 = *(this + 3);
              if (v14 >= *(this + 4))
              {
                v15 = 0;
              }

              else
              {
                *(this + 3) = v14 + 1;
                v15 = *v14;
              }

              re::snapshot::DecoderOPACK::skip(this, v15);
            }

            else
            {
              v13 = v12++;
              (*(*a3 + 96))(a3, a2, v13);
              re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this);
            }

            result = re::snapshot::DecoderOPACK::endArray(this, &v21);
          }

          while (!result);
        }

        if (v9 != v12)
        {
          return re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
        }
      }

      else
      {
        (*(*a3 + 80))(a3, a2);
        return re::snapshot::BufferDecoder::error(this, "unexpected FixedArray size: expected %zu, got %zu");
      }
    }
  }

  return result;
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a3 + 80))(a3))
  {

    return re::snapshot::BufferDecoder::error(a1, "cannot read into existing DataArray");
  }

  else
  {
    v13 = 0;
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v13);
    if (result)
    {
      v7 = v13;
      result = re::snapshot::DecoderOPACK::endArray(a1, &v13);
      if ((result & 1) == 0)
      {
        v8 = 0;
        do
        {
          if (v8 >= v7)
          {
            v11 = *(a1 + 24);
            if (v11 >= *(a1 + 32))
            {
              v12 = 0;
            }

            else
            {
              *(a1 + 24) = v11 + 1;
              v12 = *v11;
            }

            re::snapshot::DecoderOPACK::skip(a1, v12);
          }

          else
          {
            v9 = (*(*a1 + 40))(a1);
            v10 = (*(*a1 + 32))(a1);
            (*(*a3 + 72))(a3, v9, v10, a2);
            re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1);
          }

          result = re::snapshot::DecoderOPACK::endArray(a1, &v13);
          ++v8;
        }

        while (!result);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *a1, uint64_t a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  result = re::snapshot::DecoderOPACK::beginDictionary(a1, v21);
  if (result)
  {
    v7 = (*(*a3 + 88))(a3, a2);
    if (v21[0] != -1)
    {
      v7 = (*(*a3 + 72))(a3, a2);
    }

    v8 = a3[6];
    v9 = *(v8 + 6);
    v10 = *(v8 + 5) + v9 - 1;
    __space = v10;
    MEMORY[0x1EEE9AC00](v7);
    v12 = &__ptr - v11;
    bzero(&__ptr - v11, v10);
    __ptr = v12;
    __ptr = std::align(v9, v10, &__ptr, &__space);
    result = re::snapshot::DecoderOPACK::endDictionary(a1, v21);
    if ((result & 1) == 0)
    {
      do
      {
        v13 = (*(*a1 + 40))(a1);
        v14 = (*(*a1 + 32))(a1);
        v15 = __ptr;
        re::introspectionCallConstructor(v14, v8, __ptr);
        re::introspectionInitElement(v13, v16, v8, v15);
        re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1);
        v17 = (*(*a1 + 40))(a1);
        v18 = (*(*a1 + 32))(a1);
        (*(*a3 + 96))(a3, v17, v18, a2, __ptr);
        re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1);
        (*(*a3 + 112))(a3, __ptr);
        result = re::snapshot::DecoderOPACK::endDictionary(a1, v21);
      }

      while (!result);
    }
  }

  return result;
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(&v13, 0);
  v17 = 0;
  if (re::snapshot::DecoderOPACK::beginString(a1, &v17))
  {
    v6 = v17;
    re::DynamicString::resize(&v13, v17, 0);
    if (v14)
    {
      v7 = v15;
    }

    else
    {
      v7 = &v14 + 1;
    }

    re::snapshot::BufferDecoder::readRaw(a1, v7, v6);
  }

  v8 = *(a3 + 80);
  v9 = (*(*a1 + 40))(a1);
  v10 = (*(*a1 + 32))(a1);
  if (v14)
  {
    v11 = v15;
  }

  else
  {
    v11 = &v14 + 1;
  }

  v8(v9, v10, a3, a2, v11);
  result = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))();
    }
  }

  return result;
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(uint64_t this, size_t a2, size_t a3)
{
  v3 = a3;
  v5 = this;
  v56 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 128);
  if (v6)
  {

    return v6();
  }

  v7 = *(v3 + 60);
  v52 = *(v3 + 48);
  if ((v7 & 1) == 0)
  {
    this = re::snapshot::DecoderOPACK::beginObject(this, &v52);
    if (!this)
    {
      return this;
    }
  }

  if (*(v3 + 56))
  {
    v8 = 0;
    while (1)
    {
      v9 = *(*(v3 + 64) + 8 * v8);
      if (*v9 != 1)
      {
        goto LABEL_37;
      }

      if (v7)
      {
        v10 = *(v9 + 40);
        if (v10 == 3)
        {
          goto LABEL_37;
        }
      }

      else
      {
        this = re::snapshot::DecoderOPACK::beginField(v5, *(v9 + 32), *(v9 + 8));
        if (!this)
        {
          goto LABEL_37;
        }

        v10 = *(v9 + 40);
      }

      if (v10 <= 1)
      {
        break;
      }

      if (v10 == 2)
      {
        v17 = *(v9 + 36);
        __len[0] = v3;
        __len[1] = v9;
        __len[2] = a2;
        v18 = re::globalAllocators(this)[2];
        __src[0] = &unk_1F5D17EE0;
        __src[1] = __len;
        v54 = v18;
        v55 = __src;
        re::snapshot::DecoderOPACK::deserializePolymorphicPointer(v5, a2 + v17, __src);
        this = re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(__src);
        goto LABEL_35;
      }

      if (v10 != 3)
      {
        goto LABEL_35;
      }

      if ((v7 & 1) == 0)
      {
        re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(v5);
LABEL_36:
        this = re::snapshot::DecoderOPACK::endField(v5);
      }

LABEL_37:
      if (++v8 >= *(v3 + 56))
      {
        goto LABEL_90;
      }
    }

    if (!v10)
    {
      this = re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(v5);
      goto LABEL_35;
    }

    if (v10 != 1)
    {
      goto LABEL_35;
    }

    v11 = *(v9 + 36);
    v12 = *(v9 + 16);
    __len[0] = 0;
    __dst = 0;
    if (*(a2 + v11))
    {
      v13 = *(v9 + 48);
      if (v13)
      {
        memcpy(&__dst, (a2 + *(v9 + 64)), *(v13 + 20));
      }
    }

    if (!*(*(v12 + 48) + 16))
    {
      this = re::snapshot::DecoderOPACK::beginData(v5, __len, 0);
      if (this)
      {
        v19 = __len[0];
        v20 = *(*(v12 + 48) + 20);
        v21 = __len[0] / v20;
        if (__len[0] % v20)
        {
          return re::snapshot::BufferDecoder::error(v5, "invalid array data, data size = %zu, element size = %u");
        }

        v22 = *(a2 + v11);
        if (v22 && v21 != __dst)
        {
          v23 = (*(*v5 + 40))(v5);
          (*(*v23 + 40))(v23, *(a2 + v11));
          v22 = 0;
          *(a2 + v11) = 0;
        }

        if (v19)
        {
          if (!v22)
          {
            v24 = (*(*v5 + 40))(v5);
            v22 = (*(*v24 + 32))(v24, v19, 0);
            *(a2 + v11) = v22;
            if (!v22)
            {
              return re::snapshot::BufferDecoder::error(v5, "allocation failure, array with size: %zu bytes");
            }
          }
        }

        __src[0] = v21;
        if (*(v9 + 40) == 1)
        {
          v25 = *(v9 + 48);
          if (v25)
          {
            memcpy((a2 + *(v9 + 64)), __src, *(v25 + 20));
            v22 = *(a2 + v11);
          }
        }

        this = re::snapshot::BufferDecoder::readRaw(v5, v22, v19);
      }

LABEL_35:
      if ((v7 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    this = re::snapshot::DecoderOPACK::beginArray(v5, __len);
    if (!this)
    {
      goto LABEL_35;
    }

    v47 = v3;
    v48 = v7;
    v14 = __len[0];
    v49 = __len[0];
    if (!*(a2 + v11))
    {
      v26 = 1;
      goto LABEL_70;
    }

    v15 = __dst;
    if (__dst == __len[0])
    {
LABEL_77:
      __src[0] = v49;
      if (*(v9 + 40) == 1)
      {
        v42 = *(v9 + 48);
        if (v42)
        {
          memcpy((a2 + *(v9 + 64)), __src, *(v42 + 20));
        }
      }

      v43 = *(a2 + v11);
      this = re::snapshot::DecoderOPACK::endArray(v5, __len);
      v7 = v48;
      v3 = v47;
      if ((this & 1) == 0)
      {
        v44 = 0;
        do
        {
          if (v44 >= v49)
          {
            v45 = *(v5 + 3);
            if (v45 >= *(v5 + 4))
            {
              v46 = 0;
            }

            else
            {
              *(v5 + 3) = v45 + 1;
              v46 = *v45;
            }

            re::snapshot::DecoderOPACK::skip(v5, v46);
          }

          else
          {
            re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(v5);
            v43 += *(*(v12 + 48) + 20);
          }

          this = re::snapshot::DecoderOPACK::endArray(v5, __len);
          ++v44;
        }

        while ((this & 1) == 0);
      }

      goto LABEL_35;
    }

    v14 = __len[0];
    v54 = 0;
    v16 = *(*(v12 + 48) + 16);
    if (v16 > 6)
    {
      if (v16 > 9)
      {
        if (v16 == 10)
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#4},void>(__src);
          goto LABEL_65;
        }

        if (v16 == 13)
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},void>(__src, v12);
          goto LABEL_65;
        }
      }

      else
      {
        if (v16 == 7)
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},void>(__src, v12);
          goto LABEL_65;
        }

        if (v16 == 8)
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},void>(__src, v5, v12);
          goto LABEL_65;
        }
      }
    }

    else
    {
      if (v16 > 4)
      {
        if (v16 == 5)
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},void>(__src, v12);
        }

        else
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#3},void>(__src);
        }

LABEL_65:
        if (v15 && v54)
        {
          for (i = 0; i != v15; ++i)
          {
            std::function<void ()(void *)>::operator()(__src, *(a2 + v11) + *(*(v12 + 48) + 20) * i);
          }
        }

        goto LABEL_69;
      }

      if (v16 == 3)
      {
        std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},void>(__src, v12);
        goto LABEL_65;
      }

      if (v16 == 4)
      {
        std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},void>(__src, v12);
        goto LABEL_65;
      }
    }

LABEL_69:
    v28 = (*(*v5 + 40))(v5);
    (*(*v28 + 40))(v28, *(a2 + v11));
    *(a2 + v11) = 0;
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](__src);
    v26 = *(a2 + v11) == 0;
LABEL_70:
    if (v26 && v14 != 0)
    {
      v30 = (*(*v5 + 40))(v5);
      v31 = (*(*v30 + 32))(v30, v49 * *(*(v12 + 48) + 20), 0);
      *(a2 + v11) = v31;
      if (!v31)
      {
        return re::snapshot::BufferDecoder::error(v5, "allocation failure, array with size: %zu %d byte elements");
      }

      v32 = 0;
      do
      {
        v33 = (*(a2 + v11) + *(*(v12 + 48) + 20) * v32);
        v34 = v11;
        v35 = (*(*v5 + 40))(v5);
        v36 = (*(*v5 + 32))(v5);
        v37 = a2;
        v38 = *(v12 + 48);
        re::introspectionCallConstructor(v36, v38, v33);
        v39 = v35;
        v11 = v34;
        v40 = v38;
        a2 = v37;
        re::introspectionInitElement(v39, v41, v40, v33);
        ++v32;
      }

      while (v49 != v32);
    }

    goto LABEL_77;
  }

LABEL_90:
  if ((v7 & 1) == 0)
  {
    return re::snapshot::DecoderOPACK::endObject(v5, v52);
  }

  return this;
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17BE0;
  v3 = *v2;
  *(a2 + 24) = v2[1];
  *(a2 + 8) = v3;
  return a2;
}

void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1}::operator()(uint64_t *a1, const char **this, uint64_t *a3, int a4, void *a5)
{
  if (a4 != 3)
  {
    if (a4 != 1)
    {
      if (!a4)
      {
        v9 = *a3;
        if (*a3)
        {
          v10 = (*(*this + 5))(this);
          v11 = (*(*this + 4))(this);
          re::introspectionReleasePointer(v9, v10, v11, *a1);
          *a3 = 0;
        }
      }

      return;
    }

    v12 = a1[3];
    v13 = *v12;
    if (v13)
    {
      v14 = (*(v12 + 1) + 24);
      while (*v14 != a5)
      {
        v14 += 5;
        if (!--v13)
        {
          goto LABEL_20;
        }
      }

      v20 = *(v14 - 2);
      v21 = a1[1];
      if (v21)
      {
        v22 = a1[2];
        __dst = 0;
        memcpy(&__dst, v21, *(v22 + 20));
        v23 = __dst;
      }

      else
      {
        v23 = 0;
      }

      v27 = *a3;
      if (v23 == a5)
      {
        if (v27)
        {
LABEL_36:

          re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, v27, v20);
          return;
        }
      }

      else if (v27)
      {
        v28 = (*(*this + 5))(this);
        v29 = (*(*this + 4))(this);
        re::introspectionReleasePointer(v27, v28, v29, *a1);
        *a3 = 0;
      }

      v30 = (*(*this + 5))(this);
      v31 = (*(*this + 4))(this);
      v32 = re::introspectionAllocPointer(v30, v31, v20);
      *a3 = v32;
      if (!v32)
      {
        re::snapshot::BufferDecoder::error(this, "allocation failure: %d bytes");
        return;
      }

      re::PolymorphicData::makeWithPointer(*a1, v32, &__dst);
      __src = a5;
      if (__dst)
      {
        memcpy(__dst, &__src, *(v34 + 20));
      }

      v27 = *a3;
      goto LABEL_36;
    }

LABEL_20:
    re::snapshot::BufferDecoder::error(this, "invalid polymorphic type %llu");
    return;
  }

  if (*(*a1 + 16) == 8 && (v15 = *(*a1 + 88)) != 0)
  {
    v16 = *a3;

    v15(v16);
  }

  else
  {
    v17 = a1[3];
    v18 = *v17;
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = (*(v17 + 1) + 24);
    while (*v19 != a5)
    {
      v19 += 5;
      if (!--v18)
      {
        goto LABEL_20;
      }
    }

    v24 = (*(*this + 5))(this);
    v25 = (*(*this + 4))(this);
    v26 = re::introspectionDeepCopy(v24, v25, *(v19 - 2), *a3);
    *a3 = v26;
    re::PolymorphicData::makeWithPointer(*a1, v26, &__dst);
    __src = a5;
    if (__dst)
    {
      memcpy(__dst, &__src, *(v34 + 20));
    }
  }
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17BE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17BE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D17C60;
  a2[1] = v2;
  return a2;
}

void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1}::operator()(re::Allocator **a1, const char **this, uint64_t *a3, int a4)
{
  switch(a4)
  {
    case 3:
      if (*(*a1 + 4) == 8 && (v14 = *(*a1 + 11)) != 0)
      {
        v15 = *a3;

        v14(v15);
      }

      else
      {
        v16 = (*(*this + 5))(this);
        v17 = (*(*this + 4))(this);
        *a3 = re::introspectionDeepCopy(v16, v17, *a1, *a3);
      }

      break;
    case 1:
      v10 = *a3;
      if (*a3 || (v11 = (*(*this + 5))(this), v12 = (*(*this + 4))(this), v10 = re::introspectionAllocPointer(v11, v12, *a1), (*a3 = v10) != 0))
      {
        v13 = *a1;

        re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, v10, v13);
      }

      else
      {
        re::snapshot::BufferDecoder::error(this, "allocation failure: %d bytes", *(*a1 + 5));
      }

      break;
    case 0:
      v7 = *a3;
      if (*a3)
      {
        v8 = (*(*this + 5))(this);
        v9 = (*(*this + 4))(this);
        re::introspectionReleasePointer(v7, v8, v9, *a1);
        *a3 = 0;
      }

      break;
  }
}

void *re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17C60;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17C60;
  a2[1] = v2;
  return a2;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},void>(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F5D17CA0;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = v5;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v5);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17CE8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#3},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D17D30;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#4},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D17D78;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17DC0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17E08;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17E50;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17E98;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

__n128 std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17CA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(a1 + 16) + 48);
  v6 = *(v3 + 80);
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));

  return v6(v3, v4, v2);
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17CE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17DC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17E08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17E50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17E98;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17F20;
  v3 = *v2;
  *(a2 + 24) = *(v2 + 2);
  *(a2 + 8) = v3;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17F20;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17F20;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t anonymous namespace::BinaryDeserializer::deserializeIntoBuffer(_anonymous_namespace_ *a1, const re::IntrospectionBase **a2, uint64_t a3, const re::IntrospectionBase **a4, re::DynamicString **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v25 = 0;
  v23 = 0u;
  v24 = 0u;
  *&v25[4] = 0x7FFFFFFFLL;
  v26 = 0u;
  v27 = 0u;
  *v28 = 0;
  *&v28[4] = 0x7FFFFFFFLL;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v31 = 0x7FFFFFFFLL;
  v32 = a1;
  v33 = 0;
  v34 = a3;
  v35 = a8;
  v37 = 0uLL;
  *(&v36 + 1) = 0;
  re::DynamicString::setCapacity(&v36, 0);
  v38 = a6;
  v39 = a7;
  v41 = 0;
  v40[0] = &unk_1F5CCF6E8;
  v40[1] = "ScratchAutoFreeAllocator";
  v42 = a7;
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  v45 = 0x7FFFFFFFLL;
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(v43, a7, 3);
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v46 = a7;
  re::DynamicArray<re::EvaluationRegister>::setCapacity(&v46, 0);
  ++v49;
  *&v36 = a7;
  re::DynamicString::setCapacity(&v36, 0);
  v14 = (*(*a1 + 24))(a1);
  {
    v51 = 0;
    if ((*(*a1 + 16))(a1, &v51, 1) == 1)
    {
      if (v51 == 69)
      {
        v21 = 1;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v21 = 0;
LABEL_9:
  if (v46)
  {
    if (v50)
    {
      (*(*v46 + 40))(v46, v50, v15, v16, v17, v18, v19, v20, v23, *(&v23 + 1), v24, *(&v24 + 1), *v25, *&v25[8], v26, *(&v26 + 1), v27, *(&v27 + 1), *v28, *&v28[8], *&v29[0], *(&v29[0] + 1));
    }

    v50 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    ++v49;
  }

  re::AutoFreeAllocator::~AutoFreeAllocator(v40);
  if (v36)
  {
    if (BYTE8(v36))
    {
      (*(*v36 + 40))();
    }

    v36 = 0u;
    v37 = 0u;
  }

  return v21;
}

_anonymous_namespace_ *anonymous namespace::BinaryDeserializer::addPointer(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v10 = *(result + 39);
  v11 = *(result + 40);
  v12 = v11 + 1;
  if (v11 >= v10 && v10 < v12)
  {
    if (*(result + 38))
    {
      v15 = 2 * v10;
      v16 = v10 == 0;
      v17 = 8;
      if (!v16)
      {
        v17 = v15;
      }

      if (v17 <= v12)
      {
        v18 = v12;
      }

      else
      {
        v18 = v17;
      }

      result = re::DynamicArray<re::EvaluationRegister>::setCapacity(result + 38, v18);
    }

    else
    {
      result = re::DynamicArray<re::EvaluationRegister>::setCapacity(v9 + 38, v12);
      ++*(v9 + 82);
    }
  }

  v14 = (*(v9 + 42) + 32 * *(v9 + 40));
  *v14 = a2;
  v14[1] = a3;
  v14[2] = a5;
  v14[3] = a4;
  ++*(v9 + 40);
  ++*(v9 + 82);
  return result;
}

uint64_t anonymous namespace::BinaryDeserializer::read(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionBase **a2, const re::IntrospectionBase **a3, re::DynamicString **a4)
{
  v103 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 4);
  if (v7 != *(a3 + 4))
  {
    re::getPrettyTypeName(a2, buf);
    if (buf[8])
    {
      v15 = *&buf[16];
    }

    else
    {
      v15 = &buf[9];
    }

    re::getPrettyTypeName(a3, &v99);
    if (v100)
    {
      v16 = v101;
    }

    else
    {
      v16 = &v100 + 1;
    }

    if (v99 && (v100 & 1) != 0)
    {
      (*(*v99 + 5))();
    }

LABEL_15:
    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))();
    }

    return 0;
  }

  v8 = a4;
  switch(v7)
  {
    case 0:
      if (a2 != a3)
      {
        v9 = *re::foundationSerializationLogObjects(this);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          return 0;
        }

        v10 = a2[6];
        v11 = a3[6];
        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = v11;
        v12 = "Binary Deserialization; Basic types don't match '%s' and '%s'.";
        v13 = v9;
        v14 = 22;
        goto LABEL_80;
      }

      v58 = *(a3 + 5);
      if ((*(**(this + 18) + 16))(*(this + 18), a4, v58) == v58)
      {
        return 1;
      }

      return 0;
    case 1:
      v33 = a2[6];
      v34 = a3[6];
      v99 = a4;
      v35 = *(v33 + 4);
      if (v35 != *(v34 + 16))
      {
        return 0;
      }

      if (v35 != 8)
      {
        goto LABEL_60;
      }

      v36 = *(v33 + 14);
      if (!v36)
      {
        goto LABEL_51;
      }

      v37 = *(v33 + 8);
      while (1)
      {
        v38 = *v37;
        if (**v37 == 2)
        {
          break;
        }

        ++v37;
        if (!--v36)
        {
LABEL_51:
          v38 = 0;
          break;
        }
      }

      v39 = *(v34 + 56);
      if (!v39)
      {
LABEL_59:
        if (!v38)
        {
          goto LABEL_60;
        }

LABEL_133:
        return 0;
      }

      v40 = *(v34 + 64);
      v41 = v40;
      v42 = *(v34 + 56);
      do
      {
        v43 = *v41;
        if (**v41 == 2)
        {
          goto LABEL_57;
        }

        ++v41;
        --v42;
      }

      while (v42);
      v43 = 0;
LABEL_57:
      while (1)
      {
        v44 = *v40;
        if (**v40 == 3)
        {
          break;
        }

        ++v40;
        if (!--v39)
        {
          goto LABEL_59;
        }
      }

      if ((v38 != 0) == (v43 == 0))
      {
        goto LABEL_133;
      }

      if (v38)
      {
        if (*a4)
        {
          re::introspectionReleasePointer(*a4, *(this + 26), *(this + 21), v34);
          *v8 = 0;
        }
      }

LABEL_60:
      v45 = *(this + 18);
      buf[0] = 0;
      if ((*(*v45 + 16))(v45, buf, 1) != 1)
      {
        return 0;
      }

      v46 = buf[0];
      v47 = re::introspect<char>(0) == v33;
      if (v47 != (re::introspect<char>(0) == v34))
      {
        return 0;
      }

      *buf = v34;
      *&buf[8] = v33;
      *&buf[16] = this;
      *&buf[24] = &v99;
      switch(v46)
      {
        case 'I':
        case 'R':
          LODWORD(v96) = 0;
          if ((*(**(this + 18) + 16))(*(this + 18), &v96, 4) == 4)
          {
            if (*(this + 40) <= v96)
            {
            }

            else
            {
              v85 = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::operator[](this + 304, v96);
              v86 = v85;
              v87 = *v85;
              if (*(v85 + 3))
              {
                v88 = v87 == 0;
              }

              else
              {
                v88 = 0;
              }

              if (!v88 && *(v34 + 16) == 8 && (v89 = *(v34 + 88)) != 0)
              {
                if (!v87)
                {
                  v92 = *re::foundationSerializationLogObjects(v85);
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                  {
                    *v95 = 0;
                    _os_log_impl(&dword_1E1C61000, v92, OS_LOG_TYPE_DEFAULT, "Binary Deserialization; reference is null because source was skipped.", v95, 2u);
                  }

                  v8 = v99;
                  goto LABEL_126;
                }

                if (*(v85 + 1) == v34)
                {
                  v89(*v85);
                  v93 = v99;
                  if (*v99)
                  {
                    re::introspectionReleasePointer(*v99, *(this + 26), *(this + 21), v34);
                    *v93 = 0;
                    v93 = v99;
                  }

                  *v93 = v87;
                  return 1;
                }
              }

              else
              {
                v90 = (*(**(this + 18) + 24))(*(this + 18));
                if ((*(**(this + 18) + 56))(*(this + 18), *(v86 + 24)))
                {
                  if ((*(**(this + 18) + 56))(*(this + 18), v90))
                  {
                    if (v91)
                    {
                      return 1;
                    }
                  }

                  else
                  {
                  }
                }

                else
                {
                }
              }
            }
          }

          else
          {
          }

          break;
        case 'N':
LABEL_126:
          if (*v8)
          {
            re::introspectionReleasePointer(*v8, *(this + 26), *(this + 21), v34);
            *v8 = 0;
          }

          return 1;
        default:
          break;
      }

      return 0;
    case 2:
      v29 = *(a2 + 16);
      if (v29 == *(a3 + 16))
      {
        v30 = a2[6];
        v31 = a3[6];
      }

      v50 = *re::foundationSerializationLogObjects(this);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v12 = "Binary Deserialization; C-style array length changed.";
        v13 = v50;
        v14 = 2;
LABEL_80:
        _os_log_debug_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEBUG, v12, buf, v14);
      }

      return 0;
    case 3:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      *buf = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), buf, 4) != 4)
      {
        return 0;
      }

      v27 = *buf;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v27)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      (*(*a3 + 9))(a3, *(this + 26), *(this + 21), v8, *buf);
      if (*buf)
      {
        goto LABEL_101;
      }

      return 1;
    case 4:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      *buf = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), buf, 4) != 4)
      {
        return 0;
      }

      v18 = *buf;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v18)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if (((*(*a3 + 11))(a3, v8) & 1) == 0)
      {
        (*(*a3 + 8))(a3, v8, *(this + 26), *(this + 21), *buf);
      }

      v59 = (*(*a3 + 10))(a3, v8);
      if (v59 != *buf)
      {
        return 0;
      }

      if (!*buf)
      {
        return 1;
      }

LABEL_101:
      v60 = (*(*a3 + 12))(a3, v8, 0);
    case 5:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      *buf = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), buf, 4) != 4)
      {
        return 0;
      }

      v23 = *buf;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v23)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if ((*(*a3 + 10))(a3, v8))
      {
        return 0;
      }

      if (!*buf)
      {
        return 1;
      }

      v69 = 0;
      while (1)
      {
        v70 = (*(*a3 + 9))(a3, *(this + 26), *(this + 21), v8);
        {
          break;
        }

        ++v69;
        v61 = 1;
        if (v69 >= *buf)
        {
          return v61;
        }
      }

      return 0;
    case 6:

    case 7:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      LODWORD(v96) = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v96, 4) != 4)
      {
        return 0;
      }

      v48 = v96;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v48)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      (*(*a3 + 8))(a3, v8, *(this + 26), v96);
      v62 = (*(**(this + 27) + 32))(*(this + 27), *(a3[6] + 5), 0);
      v99 = &unk_1F5D17F60;
      v100 = this;
      v102 = &v99;
      v98[0] = &buf[8];
      *buf = v62;
      *&buf[8] = &unk_1F5D17F60;
      *&buf[16] = this;
      std::__function::__value_func<void ()(unsigned char *)>::~__value_func[abi:nn200100](&v99);
      if (!v96)
      {
        goto LABEL_108;
      }

      v63 = 0;
      while (2)
      {
        v64 = *(this + 26);
        v65 = a3[6];
        v66 = *buf;
        re::introspectionCallConstructor(*(this + 21), v65, *buf);
        re::introspectionInitElement(v64, v67, v65, v66);
        {
          v68 = (*(*a3 + 12))(a3, *(this + 26), *(this + 21), v8, *buf);
          (*(*a3 + 14))(a3, *buf);
          {
            if (++v63 >= v96)
            {
LABEL_108:
              v61 = 1;
              goto LABEL_139;
            }

            continue;
          }
        }

        else
        {
          (*(*a3 + 14))(a3, *buf);
        }

        break;
      }

      v61 = 0;
LABEL_139:
      std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](buf);
      return v61;
    case 8:

    case 9:
      v49 = *(a2 + 5);
      if ((v49 - 9) <= 0xFFFFFFF7)
      {
        return 0;
      }

      *v95 = 0;
      if ((*(**(this + 18) + 16))(*(this + 18), v95, v49) != v49)
      {
        return 0;
      }

      v51 = *v95;
      v96 = *v95;
      if (a2 == a3)
      {
        goto LABEL_156;
      }

      v52 = *&buf[12];
      if (*&buf[12] != 0x7FFFFFFF)
      {
        goto LABEL_154;
      }

      v53 = a2[6];
      v54 = strcmp(v53, a3[6]);
      if (v54)
      {
        v55 = *re::foundationSerializationLogObjects(v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = a2[6];
          v57 = a3[6];
          *buf = 136315394;
          *&buf[4] = v56;
          *&buf[12] = 2080;
          *&buf[14] = v57;
          _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_INFO, "Binary Deserialization; enum name changed '%s' and '%s'.", buf, 0x16u);
        }

        return 0;
      }

      LODWORD(v98[0]) = 0;
      memset(buf, 0, sizeof(buf));
      *(v98 + 4) = 0x7FFFFFFFLL;
      v71 = a2[8];
      v72 = *v71;
      if (v72)
      {
        for (i = 0; i < v72; ++i)
        {
          v74 = *(*(v71 + 1) + 8 * i);
          if (*v74 == 1)
          {
            re::getIntrospectionEnumValueWithVersioning(a3[8], *(v74 + 16), &v99);
            if (v99 == 1)
            {
              re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(buf, (v74 + 8), &v100);
              v71 = a2[8];
            }

            v72 = *v71;
          }
        }

        v53 = a2[6];
      }

      if (!strcmp(v53, "REAudioPlaybackState"))
      {
      }

      v99 = 0;
      v100 = 0;
      v101 = 0;
      if (HIDWORD(v100) == 0x7FFFFFFF)
      {
        *(v75 + 8) = a2;
        re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v75 + 16, buf);
        ++*(this + 22);
      }

      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(buf);
      v52 = *&buf[12];
LABEL_154:
      v76 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(*(this + 8) + 72 * v52 + 16, &v96);
      if (!v76)
      {
        v77 = *re::foundationSerializationLogObjects(0);
        if (!os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          return 0;
        }

        v78 = a2[8];
        v79 = v96;
        v80 = v77;
        v81 = *v78;
        if (v81)
        {
          v82 = *(v78 + 1);
          v83 = &str_31_5;
          while (1)
          {
            v84 = *v82;
            if (**v82 == 1 && *(v84 + 1) == v79)
            {
              break;
            }

            ++v82;
            if (!--v81)
            {
              goto LABEL_182;
            }
          }

          v83 = *(v84 + 2);
        }

        else
        {
          v83 = &str_31_5;
        }

LABEL_182:
        *buf = 136315138;
        *&buf[4] = v83;
        _os_log_impl(&dword_1E1C61000, v80, OS_LOG_TYPE_INFO, "Binary Deserialization; unknown enum value '%s'.", buf, 0xCu);

        return 0;
      }

      v51 = *v76;
LABEL_156:
      __src = v51;
      memcpy(v8, &__src, *(a3 + 5));
      return 1;
    case 10:
      {
        return 0;
      }

      if (*(this + 184))
      {
        v17 = *(this + 24);
      }

      else
      {
        v17 = this + 185;
      }

      re::StringID::StringID(buf, v17);
      re::StringID::operator=(v8, buf);
      re::StringID::destroyString(buf);
      return 1;
    case 11:
      {
        return 0;
      }

      v25 = a3[10];
      if (v25)
      {
        goto LABEL_32;
      }

      if (!re::IntrospectionRegistry::contains(a3, v24))
      {
        return 1;
      }

      v25 = a3[10];
      if (!v25)
      {
        return 0;
      }

LABEL_32:
      if (*(this + 184))
      {
        v26 = *(this + 24);
      }

      else
      {
        v26 = this + 185;
      }

      if ((v25)(*(this + 26), *(this + 21), a3, v8, v26))
      {
        return 1;
      }

      return 0;
    case 13:
      buf[0] = 0;
      if ((*(**(this + 18) + 16))(*(this + 18), buf, 1) != 1)
      {
        return 0;
      }

      (*(*a3 + 8))(a3, v8, buf[0]);
      if (buf[0] != 1)
      {
        return 1;
      }

      v19 = a2[6];
      v20 = a3[6];
      v21 = (*(*a3 + 9))(a3, v8);
    default:
      re::getPrettyTypeName(a2, buf);
      if (buf[8])
      {
        v28 = *&buf[16];
      }

      else
      {
        v28 = &buf[9];
      }

      goto LABEL_15;
  }
}

void anonymous namespace::BinaryDeserializer::logError(_anonymous_namespace_::BinaryDeserializer *this, const char *__format, ...)
{
  va_start(va, __format);
  v25 = *MEMORY[0x1E69E9840];
  v3 = vsnprintf(__str, 0x100uLL, __format, va);
  v4 = *re::foundationSerializationLogObjects(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v23 = __str;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Binary Deserialization; %s", buf, 0xCu);
  }

  v5 = (*(**(this + 18) + 24))(*(this + 18));
  v6 = *(this + 19);
  if (v5 > v6)
  {
    v7 = v5;
    v8 = *(**(this + 18) + 40);
    if (v5 - v6 > 0x40)
    {
      v11 = v8();
      strcpy(&__str[v12], " ... ");
      v13 = (*(**(this + 18) + 40))(*(this + 18), buf, v7 - 32, 32);
      if (!&v11[v13])
      {
        return;
      }
    }

    else
    {
      v9 = v8();
      if (!v9)
      {
        return;
      }
    }

    v14 = *re::foundationSerializationLogObjects(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(this + 19);
      *v16 = 134218498;
      v17 = v15;
      v18 = 2048;
      v19 = v7 - 1;
      v20 = 2080;
      v21 = __str;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "  Input bytes %zu thru %zu: %s", v16, 0x20u);
    }

    *(this + 19) = v7;
  }
}

BOOL anonymous namespace::BinaryDeserializer::readStructure(_anonymous_namespace_ **this, const re::IntrospectionBase *a2, const re::IntrospectionBase *a3, re::IntrospectionBase *a4)
{
  StructureVersion = re::introspectionFindStructureVersion(a2, a2);
  v10 = re::introspectionFindStructureVersion(a3, v9);
  if (StructureVersion != v10)
  {
    v12 = v10;
    v13 = re::introspectionFindForVersion(a3, StructureVersion);
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    v15 = re::introspectionAllocPointer(this[26], this[21], v13);
    if (v14 == a3)
    {
      {
        goto LABEL_15;
      }
    }

    {
LABEL_15:
      re::introspectionReleasePointer(v15, this[26], this[21], v14);
      return 0;
    }

    if (re::introspectionRunComplexVersion(this[26], this[21], v14, StructureVersion, v15, a3, v12, a4))
    {
      return 1;
    }

    return 0;
  }
}

uint64_t re::HashTable<re::IntrospectionEnum const*,anonymous namespace::BinaryDeserializer::EnumVersionTable,re::Hash<re::IntrospectionEnum const*>,re::EqualTo<re::IntrospectionEnum const*>,true,false>::findEntry<re::IntrospectionEnum const*>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    v7 = 0x7FFFFFFF;
    goto LABEL_9;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
LABEL_8:
    v7 = 0x7FFFFFFF;
    goto LABEL_9;
  }

  v8 = *(a2 + 16);
  if (*(v8 + 72 * v7 + 8) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
    goto LABEL_8;
  }

  v6 = *(v8 + 72 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 72 * v6 + 8) != a3)
  {
    LODWORD(v9) = *(v8 + 72 * v7) & 0x7FFFFFFF;
    while (1)
    {
      v7 = v9;
      v9 = *(v8 + 72 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 72 * v9 + 8) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_9:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v8 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 32 * v8 + 16) = *a3;
  }

  return result;
}

uint64_t anonymous namespace::BinaryDeserializer::addMissingEnumValue(uint64_t result, uint64_t a2, unint64_t a3, char *a4)
{
  v13 = a3;
  if (!*a2 || (v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a3) ^ ((0xBF58476D1CE4E5B9 * a3) >> 27)), v7 = *(*(a2 + 8) + 4 * ((v6 ^ (v6 >> 31)) % *(a2 + 24))), v7 == 0x7FFFFFFF))
  {
LABEL_6:
    result = re::getIntrospectionEnumValueWithVersioning(result, a4, v11);
    if (v11[0] == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
      result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a2, &v13, v9 ^ (v9 >> 31), &v14);
      if (HIDWORD(v15) == 0x7FFFFFFF)
      {
        result = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a2, v15, v14);
        v10 = v12;
        *(result + 8) = v13;
        *(result + 16) = v10;
        ++*(a2 + 40);
      }
    }
  }

  else
  {
    v8 = *(a2 + 16);
    while (*(v8 + 32 * v7 + 8) != a3)
    {
      v7 = *(v8 + 32 * v7) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::IntrospectionEnum const*,anonymous namespace::BinaryDeserializer::EnumVersionTable,re::Hash<re::IntrospectionEnum const*>,re::EqualTo<re::IntrospectionEnum const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = *(v13 + 8);
                *(v17 + 16) = 0u;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 32) = 0;
                *(v17 + 16) = 0u;
                *(v17 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v17, (v13 + 16));
              }

              v13 += 72;
              --v16;
            }

            while (v16);
          }
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 72 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 72 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 72 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 64) = a3;
  ++*(a1 + 28);
  return v19 + 72 * v5;
}

uint64_t *re::HashTable<re::IntrospectionEnum const*,anonymous namespace::BinaryDeserializer::EnumVersionTable,re::Hash<re::IntrospectionEnum const*>,re::EqualTo<re::IntrospectionEnum const*>,true,false>::~HashTable(uint64_t *a1)
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
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

uint64_t re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    v5 = *(a2 + 28) <= 3u ? 3 : *(a2 + 28);
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v4, v5);
    v6 = *(a2 + 32);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = *(a2 + 16);
      do
      {
        if ((*(v9 + v7) & 0x80000000) != 0)
        {
          v10 = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v9 + v7 + 24) % *(a1 + 24), *(v9 + v7 + 24));
          v9 = *(a2 + 16);
          *(v10 + 8) = *(v9 + v7 + 8);
          *(v10 + 16) = *(v9 + v7 + 16);
          v6 = *(a2 + 32);
        }

        ++v8;
        v7 += 32;
      }

      while (v8 < v6);
    }
  }

  return a1;
}

uint64_t anonymous namespace::BinaryDeserializer::readDynamicString(_anonymous_namespace_::BinaryDeserializer *this, re::DynamicString *a2)
{
  *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
  LODWORD(v8) = 0;
  if ((*(**(this + 18) + 16))(*(this + 18), &v8, 4) == 4)
  {
    v4 = v8;
    if ((*(**(this + 18) + 32))(*(this + 18)) >= v4)
    {
      re::DynamicString::resize(a2, v8, -51);
      v6 = v8;
      if (!v8)
      {
        return 1;
      }

      v7 = (*(a2 + 1) & 1) != 0 ? *(a2 + 2) : (a2 + 9);
      if ((*(**(this + 18) + 16))(*(this + 18), v7, v8) == v6)
      {
        return 1;
      }
    }

    else
    {
      (*(**(this + 18) + 32))(*(this + 18));
    }
  }

  else
  {
  }

  return 0;
}

uint64_t anonymous namespace::BinaryDeserializer::readPointerPolymorphic(_anonymous_namespace_::BinaryDeserializer *this, re::DynamicString **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9)
{
  v30 = a4;
  v31 = a2;
  v28 = a6;
  v29 = a5;
  v27 = a7;
  v26 = a8;
  v25 = a9;
  if (!a4 || !a5)
  {
    return 0;
  }

  v11 = a2;
  if (*a2)
  {
    re::introspectionReleasePointer(*a2, *(this + 26), *(this + 21), a8);
    *v11 = 0;
  }

  v12 = *(this + 18);
  LOBYTE(v24[0]) = 0;
  if ((*(*v12 + 16))(v12, v24, 1) != 1)
  {
    return 0;
  }

  v13 = LOBYTE(v24[0]);
  v24[0] = this;
  v24[1] = &v30;
  v24[2] = &v29;
  v24[3] = a3;
  v24[4] = &v25;
  v24[5] = &v28;
  v24[6] = &v27;
  v24[7] = &v26;
  v24[8] = &v31;
  if (v13 != 73)
  {
    if (v13 == 82)
    {
      v23 = 0;
      if ((*(**(this + 18) + 16))(*(this + 18), &v23, 4) == 4)
      {
        if (*(this + 40) <= v23)
        {
        }

        else
        {
          v15 = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::operator[](this + 304, v23);
          v16 = v15;
          v17 = *v15;
          if ((*v15 || !v15[3]) && (v18 = *(a3 + 88)) != 0)
          {
            if (!v17)
            {
              v21 = *re::foundationSerializationLogObjects(v15);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Binary Deserialization; reference is null because source was skipped.", buf, 2u);
              }

              v11 = v31;
              if (!*v31)
              {
                return 1;
              }

              re::introspectionReleasePointer(*v31, *(this + 26), *(this + 21), a3);
              goto LABEL_9;
            }

            if (v15[1] == a3)
            {
              v18(*v15);
              *v31 = v17;
              return 1;
            }
          }

          else
          {
            v19 = (*(**(this + 18) + 24))(*(this + 18));
            if ((*(**(this + 18) + 56))(*(this + 18), v16[3]))
            {
              if ((*(**(this + 18) + 56))(*(this + 18), v19))
              {
                if (v20)
                {
                  return 1;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }
        }
      }

      else
      {
      }
    }

    else
    {
      if (v13 == 78)
      {
LABEL_9:
        *v11 = 0;
        return 1;
      }
    }

    return 0;
  }
}

uint64_t anonymous namespace::BinaryDeserializer::readPointer(re::IntrospectionBase const&,re::IntrospectionBase const&,void *)::{lambda(anonymous namespace::BinaryDeserializer::PointerMapEntry *,unsigned int)#1}::operator()(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v5 = a1;
  v28 = *MEMORY[0x1E69E9840];
  v7 = a1[1];
  v6 = a1[2];
  v8 = *a1;
  v9 = (*(**(v6 + 144) + 24))(*(v6 + 144));
  v10 = v5[1];
  v11 = &unk_1ECF17000;
  {
    goto LABEL_42;
  }

  while (*(v11 + 408) != v10)
  {
    v11 = **v5[3];
    v10 = v11;
    if (v11)
    {
      if (a2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = re::introspectionAllocPointer(*(v6 + 208), *(v6 + 168), v8);
      if (a2)
      {
        goto LABEL_19;
      }
    }

    if (*(v8 + 16) == 8)
    {
      if (*(v8 + 88))
      {
        v13 = v10;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_19:
    {
      goto LABEL_20;
    }

    re::getPrettyTypeName(v5[1], &v23);
    if (BYTE8(v23))
    {
      v19 = v24;
    }

    else
    {
      v19 = &v23 + 9;
    }

    if (v23 && (BYTE8(v23) & 1) != 0)
    {
      (*(*v23 + 40))();
    }

    v5 = a3;
    v7 = *(v6 + 320);
    if (v7 > a3)
    {
      v20 = (*(v6 + 336) + 32 * a3);
      *v20 = 0;
      v20[2] = 0;
      if (!v11)
      {
        re::introspectionReleasePointer(v10, *(v6 + 208), *(v6 + 168), v8);
      }

      return 0;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_42:
    {
      *(v11 + 408) = re::introspect_char(0, v22);
    }
  }

  if (!a2)
  {
  }

  LODWORD(v23) = 0;
  if ((*(**(v6 + 144) + 16))(*(v6 + 144), &v23, 4) != 4)
  {
    return 0;
  }

  v12 = v23;
  if ((*(**(v6 + 144) + 32))(*(v6 + 144)) < v12)
  {
    (*(**(v6 + 144) + 32))(*(v6 + 144));
    return 0;
  }

  if ((v23 + 1) << 31 >> 31 != v23 + 1)
  {
    return 0;
  }

  v10 = (*(**(v6 + 208) + 32))(*(v6 + 208));
  v21 = v23;
  if ((*(**(v6 + 144) + 16))(*(v6 + 144), v10, v23) != v21)
  {
    (*(**(v6 + 208) + 40))(*(v6 + 208), v10);
    return 0;
  }

  *(v10 + v23) = 0;
LABEL_20:
  v14 = v5[3];
  v15 = *v14;
  v16 = **v14;
  if (v16 != v10 && v16 != 0)
  {
    re::introspectionReleasePointer(v16, *(v6 + 208), *(v6 + 168), *v5);
    *v15 = 0;
    v15 = *v5[3];
  }

  *v15 = v10;
  return 1;
}

uint64_t anonymous namespace::BinaryDeserializer::readPointerPolymorphic(void *,re::IntrospectionStructure const&,re::IntrospectionPolymorphicTable const*,re::IntrospectionPolymorphicTable const*,void *,int,re::IntrospectionBase const*,BOOL)::{lambda(anonymous namespace::BinaryDeserializer::PointerMapEntry *,unsigned long)#1}::operator()(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = (*(**(*a1 + 144) + 24))(*(*a1 + 144));
  v43[0] = 0;
  if ((*(**(v6 + 18) + 16))(*(v6 + 18), v43, 8) != 8)
  {
    return 0;
  }

  v8 = **(a1 + 8);
  v9 = *v8;
  if (!v9)
  {
LABEL_6:
    return 0;
  }

  v10 = *(v8 + 1);
  while (*(v10 + 24) != v43[0])
  {
    v10 += 40;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  v12 = **(a1 + 16);
  v13 = v10;
  if (v8 == v12)
  {
LABEL_25:
    v23 = *(v10 + 8);
    if (v23 && (v24 = *(v13 + 8)) != 0)
    {
      v25 = re::introspectionAllocPointer(*(v6 + 26), *(v6 + 21), *(v13 + 8));
      v26 = v25;
      v27 = *(a1 + 24);
      if (*(v27 + 16) == 8)
      {
        if (*(v27 + 88))
        {
          v28 = v25;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      if (a2)
      {
        *a2 = v28;
        a2[2] = v13;
      }

      else
      {
        a3 = *(v6 + 40);
      }

      {
        v36 = v26 - *(v13 + 32);
        v37 = v36;
        if (**(a1 + 32) == 1)
        {
          v37 = **(a1 + 40);
        }

        memcpy(&v37[**(a1 + 48)], (v13 + 24), *(**(a1 + 56) + 20));
        ***(a1 + 64) = v36;
        return 1;
      }

      re::getPrettyTypeName(v23, buf);
      if (buf[8])
      {
        v38 = v48;
      }

      else
      {
        v38 = &buf[9];
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      v39 = *(v6 + 40);
      if (v39 <= a3)
      {
        v43[1] = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v44 = 136315906;
        *&v44[4] = "operator[]";
        *&v44[12] = 1024;
        *&v44[14] = 789;
        *&v44[18] = 2048;
        *&v44[20] = a3;
        v45 = 2048;
        v46 = v39;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v40 = (*(v6 + 42) + 32 * a3);
      *v40 = 0;
      v40[2] = 0;
      re::introspectionReleasePointer(v26, *(v6 + 26), *(v6 + 21), v24);
    }

    else
    {
    }

    return 0;
  }

  v14 = *&buf[12];
  if (*&buf[12] == 0x7FFFFFFF)
  {
    v41 = v7;
    v42 = a3;
    LODWORD(v49) = 0;
    *buf = 0u;
    v48 = 0u;
    *(&v49 + 4) = 0x7FFFFFFFLL;
    v15 = *v8;
    if (v15)
    {
      v16 = 0;
      for (i = 0; i < v15; ++i)
      {
        v18 = *(v8 + 1);
        IntrospectionPolymorphicTypeByName = re::getIntrospectionPolymorphicTypeByName(v12, *(v18 + v16));
        if (IntrospectionPolymorphicTypeByName)
        {
          re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(buf, (v18 + v16 + 24), IntrospectionPolymorphicTypeByName + 3);
          v15 = *v8;
        }

        v16 += 40;
      }
    }

    memset(v44, 0, 24);
    if (*&v44[12] == 0x7FFFFFFF)
    {
      *(v20 + 8) = v8;
      re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v20 + 16, buf);
      ++*(v6 + 34);
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(buf);
    v14 = *&buf[12];
    v7 = v41;
    a3 = v42;
  }

  v21 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(*(v6 + 14) + 72 * v14 + 16, (v10 + 24));
  if (v21)
  {
    v22 = *v12;
    if (v22)
    {
      v13 = *(v12 + 1);
      while (*(v13 + 24) != *v21)
      {
        v13 += 40;
        if (!--v22)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      v13 = 0;
    }

    goto LABEL_25;
  }

  v29 = *re::foundationSerializationLogObjects(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = *v10;
    *buf = 136315138;
    *&buf[4] = v30;
    _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_INFO, "Binary Deserialization; unknown polymorphic type '%s'.", buf, 0xCu);
  }

  v31 = *(v6 + 21);
  if (!v31 || (v32 = *(v31 + 32)) == 0 || (v33 = v32(*(v10 + 8)), !v33))
  {
    return 0;
  }

  v34 = *re::foundationSerializationLogObjects(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *v10;
    *buf = 136315138;
    *&buf[4] = v35;
    _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "Binary Deserialization; failed to find stream polymorphic type '%s'. Skipping unknown type.", buf, 0xCu);
  }
}

uint64_t anonymous namespace::BinaryDeserializer::skip(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionBase *a2)
{
  switch(*(a2 + 4))
  {
    case 0:
      v8 = *(a2 + 5);
      if ((*(**(this + 18) + 48))(*(this + 18), v8) == v8)
      {
        return 1;
      }

      return 0;
    case 1:
      v11 = *(a2 + 6);
      if (*(v11 + 16) != 8)
      {
        goto LABEL_30;
      }

      v12 = *(v11 + 56);
      if (!v12)
      {
        goto LABEL_30;
      }

      v13 = *(v11 + 64);
      do
      {
        if (**v13 == 2)
        {
          v30 = *(*v13 + 8);
        }

        v13 += 8;
        --v12;
      }

      while (v12);
LABEL_30:
      v14 = *(this + 18);
      LOBYTE(v35) = 0;
      if ((*(*v14 + 16))(v14, &v35, 1) != 1)
      {
        return 0;
      }

      if (v35 == 82)
      {
        LODWORD(v35) = 0;
        if ((*(**(this + 18) + 16))(*(this + 18), &v35, 4) == 4)
        {
          if (*(this + 40) > v35)
          {
            return 1;
          }
        }

        else
        {
        }

        return 0;
      }

      if (v35 == 78)
      {
        return 1;
      }

      if (v35 != 73)
      {
        return 0;
      }

      v15 = (*(**(this + 18) + 24))(*(this + 18));
      if (re::introspect<char>(0) != v11)
      {
        {
          return 1;
        }

        re::getPrettyTypeName(v11, &v35);
        goto LABEL_88;
      }

      LODWORD(v35) = 0;
      if ((*(**(this + 18) + 16))(*(this + 18), &v35, 4) != 4)
      {
        return 0;
      }

      v31 = v35;
      v32 = (*(**(this + 18) + 32))(*(this + 18));
      v33 = v35;
      if (v32 < v31)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      return (*(**(this + 18) + 48))(*(this + 18), v35) == v33;
    case 2:
      if (!*(a2 + 16))
      {
        return 1;
      }

      v9 = 0;
      v10 = *(a2 + 6);
      {
        ++v9;
        result = 1;
        if (v9 >= *(a2 + 16))
        {
          return result;
        }
      }

      re::getPrettyTypeName(a2, &v35);
      goto LABEL_88;
    case 3:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      v34 = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v34, 4) != 4)
      {
        return 0;
      }

      v7 = v34;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v7)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if (!v34)
      {
        return 1;
      }

      v25 = 0;
      v26 = *(a2 + 6);
      {
        if (++v25 >= v34)
        {
          return 1;
        }
      }

      goto LABEL_87;
    case 4:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      v34 = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v34, 4) != 4)
      {
        return 0;
      }

      v5 = v34;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v5)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if (!v34)
      {
        return 1;
      }

      v21 = 0;
      v22 = *(a2 + 6);
      {
        if (++v21 >= v34)
        {
          return 1;
        }
      }

      goto LABEL_87;
    case 5:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      v34 = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v34, 4) != 4)
      {
        return 0;
      }

      v6 = v34;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v6)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if (!v34)
      {
        return 1;
      }

      v23 = 0;
      v24 = *(a2 + 6);
      {
        if (++v23 >= v34)
        {
          return 1;
        }
      }

LABEL_87:
      re::getPrettyTypeName(a2, &v35);
LABEL_88:
      if (v35)
      {
        if (v36)
        {
          (*(*v35 + 40))();
        }
      }

      return 0;
    case 6:
    case 0xA:
    case 0xB:

    case 7:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      LODWORD(v35) = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v35, 4) != 4)
      {
        return 0;
      }

      v16 = v35;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v16)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if (!v35)
      {
        return 1;
      }

      v27 = 0;
      v28 = *(a2 + 6);
      v29 = *(a2 + 8);
      while (2)
      {
        {
          {
            if (++v27 >= v35)
            {
              return 1;
            }

            continue;
          }
        }

        else
        {
        }

        break;
      }

      return 0;
    case 8:
      if (!*(a2 + 14))
      {
        return 1;
      }

      v17 = 0;
      break;
    case 9:
      v20 = *(a2 + 5);
      if ((*(**(this + 18) + 48))(*(this + 18), v20) == v20)
      {
        return 1;
      }

      return 0;
    case 0xD:
      LOBYTE(v35) = 0;
      if ((*(**(this + 18) + 16))(*(this + 18), &v35, 1) != 1)
      {
        return 0;
      }

      if (v35 != 1)
      {
        return 1;
      }

    default:
      re::getPrettyTypeName(a2, &v35);
      goto LABEL_88;
  }

  while (1)
  {
    v18 = *(*(a2 + 8) + 8 * v17);
    if (*v18 != 1)
    {
      goto LABEL_53;
    }

    v19 = *(v18 + 40);
    if (v19 > 1)
    {
      break;
    }

    if (!v19)
    {
      goto LABEL_50;
    }

    if (v19 != 1)
    {
      goto LABEL_102;
    }

    {
LABEL_98:
      return 0;
    }

LABEL_53:
    if (++v17 >= *(a2 + 14))
    {
      return 1;
    }
  }

  if (v19 == 2)
  {
    {
      goto LABEL_98;
    }

    goto LABEL_53;
  }

  if (v19 == 3)
  {
LABEL_50:
    {
      return 0;
    }

    goto LABEL_53;
  }

LABEL_102:
  return 0;
}

uint64_t anonymous namespace::BinaryDeserializer::skipDynamicString(_anonymous_namespace_::BinaryDeserializer *this)
{
  *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
  v6 = 0;
  if ((*(**(this + 18) + 16))(*(this + 18), &v6, 4) == 4)
  {
    v2 = v6;
    v3 = (*(**(this + 18) + 32))(*(this + 18));
    v4 = v6;
    if (v3 >= v2)
    {
      if (!v6 || (*(**(this + 18) + 48))(*(this + 18), v6) == v4)
      {
        return 1;
      }
    }

    else
    {
      (*(**(this + 18) + 32))(*(this + 18));
    }
  }

  else
  {
  }

  return 0;
}

uint64_t anonymous namespace::BinaryDeserializer::skipPointerPolymorphic(_anonymous_namespace_::BinaryDeserializer *a1, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 18);
  LOBYTE(v11) = 0;
  if ((*(*v4 + 16))(v4, &v11, 1) != 1)
  {
    return 0;
  }

  if (v11 == 82)
  {
    LODWORD(v11) = 0;
    if ((*(**(a1 + 18) + 16))(*(a1 + 18), &v11, 4) == 4)
    {
      if (*(a1 + 40) > v11)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  if (v11 == 78)
  {
    return 1;
  }

  if (v11 != 73)
  {
    return 0;
  }

  v14 = 0;
  v5 = (*(**(a1 + 18) + 24))(*(a1 + 18));
  if ((*(**(a1 + 18) + 16))(*(a1 + 18), &v14, 8) != 8)
  {
    return 0;
  }

  v6 = *a2;
  if (!v6)
  {
LABEL_11:
    return 0;
  }

  v7 = *(a2 + 1);
  while (*(v7 + 24) != v14)
  {
    v7 += 40;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  v9 = *(v7 + 8);
  if (!v9)
  {
    return 0;
  }

  {
    re::getPrettyTypeName(v9, &v11);
    if (v12)
    {
      v10 = *&v13[7];
    }

    else
    {
      v10 = v13;
    }

    if (v11)
    {
      if (v12)
      {
        (*(*v11 + 40))();
      }
    }

    return 0;
  }

  return 1;
}

uint64_t anonymous namespace::BinaryDeserializer::skipArrayMember(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionMember *a2)
{
  *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
  v18 = 1;
  if ((*(**(this + 18) + 16))(*(this + 18), &v18, 4) != 4)
  {
    return 0;
  }

  v4 = v18;
  if ((*(**(this + 18) + 32))(*(this + 18)) < v4)
  {
    (*(**(this + 18) + 32))(*(this + 18));
    return 0;
  }

  v5 = *(a2 + 2);
  if (!v5 || *(v5 + 16) != 1)
  {
    return 0;
  }

  re::IntrospectionCStyleArray::IntrospectionCStyleArray(&v15, *(v5 + 48), v18);
  ArcSharedObject::ArcSharedObject(&v8, 0);
  v9[1] = 0x800000001;
  v10 = 8;
  v11 = 0;
  v12 = 0;
  v13 = 0xFFFFFFFFLL;
  v8 = &unk_1F5CBD2C0;
  v14[0] = &v15;
  v14[1] = 0;
  v8 = &unk_1F5CBD2C0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(v14);
  v8 = &unk_1F5CCF868;
  objc_destructInstance(v9);
  v15 = &unk_1F5CB0038;
  re::SerializedReference<re::IntrospectionBase const*>::reset(&v17);
  v15 = &unk_1F5CCF868;
  objc_destructInstance(&v16);
  return v6;
}

uint64_t anonymous namespace::BinaryDeserializer::skipPolymorphicMember(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionMember *a2)
{
  v2 = *(a2 + 2);
  if (*(v2 + 16) != 1)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  if (*(v3 + 16) != 8)
  {
    return 0;
  }

  v4 = *(v3 + 64);
  v5 = *v4;
  if (**v4 != 2)
  {
    v6 = (v4 + 1);
    do
    {
      v7 = *v6++;
      v5 = v7;
    }

    while (*v7 != 2);
  }

  v8 = *(v5 + 1);
}

BOOL anonymous namespace::BinaryDeserializer::readLinearArray(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionBase *a2, const re::IntrospectionBase *a3, unint64_t a4, char *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (a4)
    {
      v10 = 0;
      {
        if (a4 == ++v10)
        {
          return 1;
        }
      }

      re::getPrettyTypeName(a2, buf);
      if (buf[8])
      {
        v14 = v23;
      }

      else
      {
        v14 = &buf[9];
      }

      if (*buf)
      {
        if (buf[8])
        {
          (*(**buf + 40))();
        }
      }

      return 0;
    }

    return 1;
  }

  if (a2 == a3)
  {
    v15 = *(a3 + 5);
    v16 = v15 < 0;
    if (v15 >= 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = -v15;
    }

    v18 = (v17 * a4) >> 64;
    v19 = v17 * a4;
    if (v15 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = -v19;
    }

    v21 = v18 != 0;
    if (!v19)
    {
      v16 = 0;
    }

    if (v21 || v16)
    {
    }

    else
    {
      if ((*(**(this + 18) + 16))(*(this + 18), a5, v20) == v20)
      {
        return 1;
      }
    }
  }

  else
  {
    v12 = *re::foundationSerializationLogObjects(this);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v13 = *(a2 + 6);
    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_debug_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEBUG, "Binary Deserialization; array item types don't match '%s'.", buf, 0xCu);
  }

  return 0;
}

uint64_t std::__function::__func<anonymous namespace::BinaryDeserializer::readHashTable(re::IntrospectionBase const&,re::IntrospectionBase const&,void *)::{lambda(unsigned char *)#1},std::allocator<anonymous namespace::BinaryDeserializer::readHashTable(re::IntrospectionBase const&,re::IntrospectionBase const&,void *)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17F60;
  a2[1] = v2;
  return result;
}

BOOL anonymous namespace::BinaryDeserializer::readStructureNoVersioning(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionBase *a2, const re::IntrospectionBase *a3, char *a4)
{
  v106[3] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 14);
  result = 1;
  if (!v5)
  {
    return result;
  }

  v9 = 0;
  v83 = this;
LABEL_3:
  v10 = *(*(a2 + 8) + 8 * v9);
  if (*v10 != 1)
  {
    goto LABEL_101;
  }

  if (a2 == a3)
  {
    v49 = v9;
LABEL_58:
    v50 = *(*(a3 + 8) + 8 * v49);
    v51 = *(v10 + 40);
    if (v51 != *(v50 + 40))
    {
      return 0;
    }

    v52 = *(v50 + 36);
    if (v51 > 1)
    {
      if (v51 == 2)
      {
        v64 = *(v10 + 16);
        if (*(v64 + 16) == 1 && (v65 = *(v50 + 16), *(v65 + 16) == 1))
        {
          v66 = *(v64 + 48);
          if (*(v66 + 16) == 8 && (v67 = *(v65 + 48), *(v67 + 16) == 8))
          {
            v68 = *(v66 + 56);
            if (v68)
            {
              v69 = *(v66 + 64);
              while (1)
              {
                v70 = *v69;
                if (**v69 == 2)
                {
                  break;
                }

                ++v69;
                if (!--v68)
                {
                  v70 = 0;
                  break;
                }
              }
            }

            else
            {
              v70 = 0;
            }

            v71 = *(v67 + 64);
            v72 = *v71;
            if (**v71 != 2)
            {
              v73 = (v71 + 1);
              do
              {
                v74 = *v73++;
                v72 = v74;
              }

              while (*v74 != 2);
            }

            {
              goto LABEL_101;
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_116:
        return 0;
      }

      if (v51 != 3)
      {
        goto LABEL_113;
      }
    }

    else if (v51)
    {
      if (v51 != 1)
      {
        goto LABEL_113;
      }

      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      v53 = *(v50 + 36);
      v102 = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v102, 4) == 4)
      {
        v54 = v102;
        v55 = (*(**(this + 18) + 32))(*(this + 18));
        v56 = v102;
        if (v55 < v54)
        {
          (*(**(this + 18) + 32))(*(this + 18));
        }

        else
        {
          *buf = v102;
          if (*(v50 + 40) == 1 && (v57 = *(v50 + 48)) != 0)
          {
            memcpy(&a4[*(v50 + 64)], buf, *(v57 + 20));
            v58 = *(v10 + 16);
            if (v58 && *(v58 + 16) == 1)
            {
              v59 = *(v50 + 16);
              re::IntrospectionCStyleArray::IntrospectionCStyleArray(buf, *(v58 + 48), v56);
              re::IntrospectionCStyleArray::IntrospectionCStyleArray(&v99, *(v59 + 48), v102);
              ArcSharedObject::ArcSharedObject(&v92, 0);
              v93[1] = 0x800000001;
              v94 = 8;
              v95 = 0;
              v96 = 0;
              v97 = 0xFFFFFFFFLL;
              v92 = &unk_1F5CBD2C0;
              v98[0] = buf;
              v98[1] = 0;
              ArcSharedObject::ArcSharedObject(&v85, 0);
              v86[1] = 0x800000001;
              v87 = 8;
              v88 = 0;
              v89 = 0;
              v90 = 0xFFFFFFFFLL;
              v85 = &unk_1F5CBD2C0;
              v91[0] = &v99;
              v91[1] = 0;
              v61 = *(this + 40);
              if (v61)
              {
                v62 = 32 * v61;
                v63 = (*(v83 + 42) + 8);
                do
                {
                  if (*v63 == &v99)
                  {
                    *v63 = 0;
                  }

                  v63 += 4;
                  v62 -= 32;
                }

                while (v62);
              }

              if (v60)
              {
                v85 = &unk_1F5CBD2C0;
                re::SerializedReference<re::IntrospectionBase const*>::reset(v91);
                v85 = &unk_1F5CCF868;
                objc_destructInstance(v86);
                v92 = &unk_1F5CBD2C0;
                re::SerializedReference<re::IntrospectionBase const*>::reset(v98);
                v92 = &unk_1F5CCF868;
                objc_destructInstance(v93);
                v99 = &unk_1F5CB0038;
                re::SerializedReference<re::IntrospectionBase const*>::reset(&v101);
                v99 = &unk_1F5CCF868;
                objc_destructInstance(v100);
                *buf = &unk_1F5CB0038;
                re::SerializedReference<re::IntrospectionBase const*>::reset(v106);
                *buf = &unk_1F5CCF868;
                objc_destructInstance(&buf[8]);
                this = v83;
                goto LABEL_101;
              }

              this = v83;
              re::IntrospectionPointer::~IntrospectionPointer(&v85);
              re::IntrospectionPointer::~IntrospectionPointer(&v92);
              re::IntrospectionCStyleArray::~IntrospectionCStyleArray(&v99);
              re::IntrospectionCStyleArray::~IntrospectionCStyleArray(buf);
            }

            else
            {
            }
          }

          else
          {
          }
        }
      }

      else
      {
      }

      goto LABEL_116;
    }

    {
      goto LABEL_101;
    }

    return 0;
  }

  v12 = *&buf[12];
  if (*&buf[12] != 0x7FFFFFFF)
  {
    goto LABEL_43;
  }

  v82 = v10;
  v13 = strlen(*(a2 + 6));
  v14 = strlen(*(a3 + 6));
  if (v13 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v16 = strncmp(*(a2 + 6), *(a3 + 6), v15);
  if (!v16)
  {
    v17 = 0;
    v104 = 0;
    memset(buf, 0, sizeof(buf));
    v105 = 0x7FFFFFFFLL;
    while (1)
    {
      v18 = *(*(a2 + 8) + 8 * v17);
      if (*v18 != 1)
      {
        goto LABEL_30;
      }

      v19 = *(a3 + 14);
      if (!v19)
      {
        goto LABEL_30;
      }

      v20 = (v18 + 2);
      v21 = *(a3 + 8);
LABEL_14:
      v22 = 0;
      v23 = *v20;
      while (1)
      {
        v24 = *(v21 + 8 * v22);
        if (*v24 == 1)
        {
          break;
        }

        if (*v24 == 5 && !strcmp(*(v24 + 8), v23))
        {
          v20 = (v24 + 16);
          goto LABEL_14;
        }

LABEL_20:
        if (v19 == ++v22)
        {
          goto LABEL_30;
        }
      }

      if (strcmp(*(v24 + 8), v23))
      {
        goto LABEL_20;
      }

      v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
      v26 = v25 ^ (v25 >> 31);
      if (!*buf)
      {
        LODWORD(v27) = 0;
LABEL_28:
        v29 = re::HashTable<int,int,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(buf, v27, v26);
        *(v29 + 4) = v17;
        *(v29 + 8) = v22;
        ++HIDWORD(v105);
        goto LABEL_29;
      }

      v27 = v26 % *&buf[24];
      v28 = *(*&buf[8] + 4 * v27);
      if (v28 == 0x7FFFFFFF)
      {
        goto LABEL_28;
      }

      while (v17 != *(*&buf[16] + 24 * v28 + 4))
      {
        LODWORD(v28) = *(*&buf[16] + 24 * v28) & 0x7FFFFFFF;
        if (v28 == 0x7FFFFFFF)
        {
          goto LABEL_28;
        }
      }

LABEL_29:
      v5 = *(a2 + 14);
LABEL_30:
      if (++v17 >= v5)
      {
        v99 = 0;
        v100[0] = 0;
        v100[1] = 0;
        this = v83;
        if (HIDWORD(v100[0]) == 0x7FFFFFFF)
        {
          *(v30 + 8) = a2;
          *(v30 + 16) = 0u;
          v31 = v30 + 16;
          *(v30 + 32) = 0u;
          *(v30 + 48) = 0;
          *(v30 + 52) = 0x7FFFFFFFLL;
          if (*buf)
          {
            v32 = v30;
            v33 = *&buf[28] <= 3u ? 3 : *&buf[28];
            re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v30 + 16, *buf, v33);
            v34 = v104;
            if (v104)
            {
              v35 = *&buf[16] + 8;
              do
              {
                if ((*(v35 - 8) & 0x80000000) != 0)
                {
                  v36 = re::HashTable<int,int,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(v31, *(v35 + 8) % *(v32 + 40), *(v35 + 8));
                  *(v36 + 4) = *(v35 - 4);
                  *(v36 + 8) = *v35;
                }

                v35 += 24;
                --v34;
              }

              while (v34);
            }
          }

          this = v83;
          ++*(v83 + 10);
        }

        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(buf);
        v12 = *&buf[12];
        v10 = v82;
LABEL_43:
        v37 = *(this + 2) + 72 * v12;
        v39 = *(v37 + 16);
        v38 = v37 + 16;
        if (!v39 || (v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27)), v41 = *(*(v38 + 8) + 4 * ((v40 ^ (v40 >> 31)) % *(v38 + 24))), v41 == 0x7FFFFFFF))
        {
LABEL_48:
          v43 = *(*(a2 + 8) + 8 * v9);
          v44 = *re::foundationSerializationLogObjects(v11);
          v11 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
          if (v11)
          {
            v45 = *(v43 + 8);
            *buf = 136315138;
            *&buf[4] = v45;
            _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_INFO, "Binary Deserialization; unknown member '%s'.", buf, 0xCu);
          }

          goto LABEL_50;
        }

        v42 = *(v38 + 16);
        while (*(v42 + 24 * v41 + 4) != v9)
        {
          LODWORD(v41) = *(v42 + 24 * v41) & 0x7FFFFFFF;
          if (v41 == 0x7FFFFFFF)
          {
            goto LABEL_48;
          }
        }

        v49 = *(v42 + 24 * v41 + 8);
        if (v49 != -1)
        {
          goto LABEL_58;
        }

LABEL_50:
        v46 = *re::foundationSerializationLogObjects(v11);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = *(v10 + 8);
          *buf = 136315138;
          *&buf[4] = v47;
          _os_log_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_INFO, "Binary Deserialization; skipping unknown member '%s'.", buf, 0xCu);
        }

        v48 = *(v10 + 40);
        if (v48 > 1)
        {
          if (v48 == 2)
          {
            {
              goto LABEL_101;
            }

LABEL_108:
            return 0;
          }

          if (v48 == 3)
          {
LABEL_77:
            {
              goto LABEL_101;
            }

            return 0;
          }

LABEL_113:
          return 0;
        }

        if (!v48)
        {
          goto LABEL_77;
        }

        if (v48 != 1)
        {
          goto LABEL_113;
        }

        {
          goto LABEL_108;
        }

LABEL_101:
        ++v9;
        v5 = *(a2 + 14);
        if (v9 >= v5)
        {
          return 1;
        }

        goto LABEL_3;
      }
    }
  }

  v75 = *re::foundationSerializationLogObjects(v16);
  v76 = os_log_type_enabled(v75, OS_LOG_TYPE_INFO);
  if (v76)
  {
    v77 = *(a2 + 6);
    v78 = *(a3 + 6);
    *buf = 136315394;
    *&buf[4] = v77;
    *&buf[12] = 2080;
    *&buf[14] = v78;
    _os_log_impl(&dword_1E1C61000, v75, OS_LOG_TYPE_INFO, "Binary Deserialization; structure name changed '%s' and '%s'.", buf, 0x16u);
  }

  v79 = *re::foundationSerializationLogObjects(v76);
  result = os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v80 = *(v10 + 8);
    *buf = 136315138;
    *&buf[4] = v80;
    _os_log_debug_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_DEBUG, "Binary Deserialization; failed to read member '%s'.", buf, 0xCu);
    return 0;
  }

  return result;
}

uint64_t re::HashTable<int,int,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 8;
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = re::HashTable<int,int,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24));
                *(v18 + 4) = *(v17 - 4);
                *(v18 + 8) = *v17;
              }

              v17 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 24 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 16) = a3;
  ++*(a1 + 28);
  return v19 + 24 * v5;
}

uint64_t re::HashTable<re::IntrospectionStructure const*,anonymous namespace::BinaryDeserializer::StructureVersionData,re::Hash<re::IntrospectionStructure const*>,re::EqualTo<re::IntrospectionStructure const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v27, v9, v8);
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
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                *(v18 + 8) = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 32) = 0u;
                *(v18 + 52) = 0x7FFFFFFFLL;
                *(v18 + 16) = *(v17 - 16);
                *(v17 - 16) = 0;
                v19 = *(v18 + 24);
                *(v18 + 24) = *(v17 - 8);
                *(v17 - 8) = v19;
                v20 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v20;
                *(v18 + 40) = *(v17 + 8);
                *(v17 + 8) = 0;
                LODWORD(v20) = *(v18 + 44);
                *(v18 + 44) = *(v17 + 12);
                *(v17 + 12) = v20;
                LODWORD(v20) = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v20;
                LODWORD(v20) = *(v18 + 52);
                *(v18 + 52) = *(v17 + 20);
                *(v17 + 20) = v20;
                ++*(v18 + 56);
              }

              v17 += 72;
              --v16;
            }

            while (v16);
          }
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
    v22 = *(v21 + 72 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 72 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 72 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 64) = a3;
  ++*(a1 + 28);
  return v21 + 72 * v5;
}

uint64_t *re::HashTable<re::IntrospectionStructure const*,anonymous namespace::BinaryDeserializer::StructureVersionData,re::Hash<re::IntrospectionStructure const*>,re::EqualTo<re::IntrospectionStructure const*>,true,false>::~HashTable(uint64_t *a1)
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
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

unint64_t anonymous namespace::BinaryDeserializer::hexConvert(_anonymous_namespace_::BinaryDeserializer *this, char *a2, uint64_t a3, const char *a4)
{
  v4 = 0;
  if (a2 >= 4 && a4)
  {
    v4 = 0;
    for (i = 0; i < a4; ++i)
    {
      v6 = this + v4;
      v6[2] = 32;
      v7 = v4 + 6;
      v4 += 3;
      if (v7 >= a2)
      {
        break;
      }
    }
  }

  v8 = v4 != 0;
  v9 = v4 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 < a2)
  {
    *(this + v9) = 0;
  }

  return v9;
}

void re::deserializeJsonIntoBuffer(uint64_t a1@<X0>, re **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v10 = a5;
  v84 = 0;
  v83[0] = &unk_1F5D17FA8;
  v83[1] = a1;
  v83[2] = a5;
  memset(&v83[3], 0, 24);
  *&v85[0].var0 = 0xD037281FECA61F36;
  v85[0].var1 = "JSON-StreamAdaptor-DeserializerV1";
  v40 = &unk_1F5D18050;
  v14 = re::StringID::StringID(&v41, v85);
  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v50[0] = 0;
  v52 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47[0] = 0;
  v54 = 15;
  v56 = 1024;
  v55 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3C70, memory_order_acquire) & 1) == 0)
  {
    v14 = __cxa_guard_acquire(&qword_1EE1C3C70);
    if (v14)
    {
      re::Defaults::intValue("maxSerializationDepth", v30, &v33);
      if (v33)
      {
        v31 = SDWORD1(v33);
      }

      else
      {
        v31 = 0;
      }

      _MergedGlobals_554 = v31;
      __cxa_guard_release(&qword_1EE1C3C70);
    }
  }

  if (_MergedGlobals_554)
  {
    v56 = _MergedGlobals_554;
  }

  v59[4] = 0;
  v60 = 0;
  v57 = 0u;
  v58 = 0u;
  memset(v59, 0, 28);
  v64 = 0u;
  v65 = 0u;
  v66 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v67 = 0x7FFFFFFFLL;
  v40 = &unk_1F5D17FE8;
  v68 = 1;
  memset(v69, 0, sizeof(v69));
  v70 = 0;
  v71 = 0x7FFFFFFFLL;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v82 = 0;
  v76 = 0u;
  v77 = 0u;
  v78 = 0;
  v79 = 0u;
  v80 = 0u;
  v81 = 0;
  if (*&v85[0].var0)
  {
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&v39);
  re::TypeRegistry::typeInfo(*a2, a2, v85);
  re::TypeInfo::TypeInfo(&v37, &v85[0].var1);
  if (v38 != 8 || (v15 = re::TypeInfo::name(&v37), *v15 >> 1 == 94623636) && ((v16 = v15[1], v16 == "char*") || !strcmp(v16, "char*")) || (v17 = re::TypeInfo::name(&v37), *v17 >> 1 == 0x134375A94D9F7110) && ((v18 = v17[1], v18 == "DynamicString") || !strcmp(v18, "DynamicString")))
  {
LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v19 = re::TypeInfo::name(&v37);
  if (*v19 >> 1 == 0x22C6ED80D0CLL)
  {
    v20 = v19[1];
    if (v20 != "StringID")
    {
      v21 = strcmp(v20, "StringID") != 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v21 = 1;
LABEL_17:
  v61 = a4;
  v23 = v62;
  if (*(v62 + 6) != v63)
  {
  }

  v42 = v83;
  v43 = 0;
  v44 = 0;
  if (!v10)
  {
  }

  v45 = v10;
  if (!a6)
  {
  }

  v46 = a6;
  *&v85[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v47, v85);
  if (v85[0].var0 == 1 && v85[1].var1 && (*&v85[2].var0 & 1) != 0)
  {
    (*(*v85[1].var1 + 40))(v85[1].var1, v85[2].var1);
  }

  v50[0] = v45;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v50, 0x40uLL);
  ++v52;
  *&v85[0].var0 = 0;
  memset(&v85[0].var0 + 1, 0, 44);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v59[0] = v46;
  re::DynamicArray<char>::setCapacity(v59, 0);
  ++LODWORD(v59[3]);
  v25 = (*(*v45 + 32))(v45, 72, 8);
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  *(v25 + 40) = 256;
  *(v25 + 48) = 0;
  *(v25 + 56) = 0;
  *(v25 + 64) = 2;
  *(&v58 + 1) = v25;
  v26 = (*(*v45 + 32))(v45, 104, 8);
  *&v58 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::GenericDocument(v26, 0, 1024, 0);
  *&v85[0].var0 = v42;
  v85[0].var1 = 0;
  v85[1].var0 = 0;
  v85[1].var1 = 0;
  *&v85[2].var0 = 0;
  v27 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::ParseStream<440u,rapidjson::UTF8<char>,re::internal::RapidJSONInputStream>(v58, v85);
  v28 = *(v27 + 88);
  if (v28)
  {
    v29 = v28 > 0x11 ? "Unknown error." : *(off_1E8721BB0 + (((v28 << 32) - 0x100000000) >> 29));
    re::DynamicString::format("Failed to deserialize JSON: %s (Offset %zu)", &v33, v29, *(v27 + 96));
    if (v33)
    {
      if (BYTE8(v33))
      {
        (*(*v33 + 40))();
      }
    }
  }

  if (v85[1].var1 < v85[1].var0)
  {
    (*(**&v85[0].var0 + 24))(*&v85[0].var0, (*&v85[1].var0 - LODWORD(v85[1].var1)));
  }

  v40[6](&v40);
  if (a7)
  {
    LOBYTE(v60) = 1;
    if ((a7 & 2) == 0)
    {
LABEL_40:
      if (v21)
      {
        goto LABEL_41;
      }

      goto LABEL_45;
    }
  }

  else if ((a7 & 2) == 0)
  {
    goto LABEL_40;
  }

  HIBYTE(v60) = 1;
  if (v21)
  {
LABEL_41:
    if ((v47[0] & 1) == 0)
    {
      (v40[9])(&v40, "object", 0, a3, &v37, &v37, 0);
    }

    goto LABEL_49;
  }

LABEL_45:
  {
    *&v85[0].var0 = v47[0];
    if (v47[0] == 1)
    {
      *&v85[0].var1 = v48;
      re::DynamicString::DynamicString(&v85[1].var1, v49);
    }

    v33 = *&v85[0].var1;
    goto LABEL_55;
  }

  if ((v47[0] & 1) == 0)
  {
    (v40[9])(&v40, "object", 0, a3, &v37, &v37, 0);
    if ((v47[0] & 1) == 0)
    {
      ++*(v53 + 48 * v51 - 16);
    }
  }

LABEL_49:
  v40[7](&v40);
  if (v47[0] != 1)
  {
    *a8 = 1;
    goto LABEL_59;
  }

  *&v85[0].var0 = v47[0];
  *&v85[0].var1 = v48;
  re::DynamicString::DynamicString(&v85[1].var1, v49);
  v33 = *&v85[0].var1;
LABEL_55:
  re::DynamicString::DynamicString(&v34, &v85[1].var1);
  *a8 = 0;
  *(a8 + 8) = v33;
  *(a8 + 24) = v34;
  *(a8 + 48) = v36;
  *(a8 + 32) = v35;
  v36 = 0;
  v34 = 0;
  v35 = 0uLL;
  if (v85[0].var0 == 1 && v85[1].var1 && (*&v85[2].var0 & 1) != 0)
  {
    (*(*v85[1].var1 + 40))(v85[1].var1, v85[2].var1);
  }

LABEL_59:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v39);
  v40 = &unk_1F5D17FE8;
  if (*(&v79 + 1))
  {
    if (v82)
    {
      (*(**(&v79 + 1) + 40))();
    }

    v82 = 0;
    v80 = 0uLL;
    *(&v79 + 1) = 0;
    ++v81;
  }

  if (*(&v76 + 1))
  {
    if (v79)
    {
      (*(**(&v76 + 1) + 40))();
    }

    *&v79 = 0;
    v77 = 0uLL;
    *(&v76 + 1) = 0;
    ++v78;
  }

  if (v72)
  {
    if (v76)
    {
      (*(*v72 + 40))();
    }

    *&v76 = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    ++v75;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v69);
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
{
  a1[34] = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  (*(*a1 + 8))(a1);
  re::TypeRegistry::typeID(a1[34], (a1 + 1), &v13);
  if (v13)
  {
    v3 = a1[34];
    v9 = v13;
    re::TypeRegistry::attributesByAttributeType(v3, &v9, &v10);
    if (v11)
    {
      v4 = 48 * v11;
      v5 = (v12 + 40);
      do
      {
        v8 = *(v5 - 3);
        v6 = *v5;
        v5 += 6;
        v4 -= 48;
      }

      while (v4);
    }

    if (v10 && v12)
    {
      (*(*v10 + 40))();
    }
  }

  result = (*(*a1 + 4))(a1);
  *(a1 + 70) = *(a1[34] + 6);
  return result;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(uint64_t a1, char *a2, int a3)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v14 = v3;
  v15 = v4;
  if (result)
  {
    if (*(result + 11) == 3)
    {
      LOBYTE(v9) = 2;
      DWORD1(v9) = a3;
      *(&v9 + 1) = a2;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = result;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(v1 + 16) + 48 * *(v1 + 14);
    ++*(v2 - 16);
  }

  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D17FE8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
}

void anonymous namespace::LegacyInputStreamAdaptor::~LegacyInputStreamAdaptor(_anonymous_namespace_::LegacyInputStreamAdaptor *this)
{
  *this = &unk_1F5D17FA8;
  if (*(this + 3))
  {
    (*(**(this + 2) + 40))(*(this + 2));
    *(this + 3) = 0;
    *(this + 10) = 0;
  }
}

{

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::LegacyInputStreamAdaptor::Next(_anonymous_namespace_::LegacyInputStreamAdaptor *this, const void **a2, int *a3)
{
  if (*(this + 48))
  {
    return 0;
  }

  v7 = *(this + 3);
  if (!v7)
  {
    v7 = (*(**(this + 2) + 32))(*(this + 2), 256, 0);
    *(this + 3) = v7;
  }

  v8 = *(this + 11);
  if (v8 >= 1)
  {
    *a2 = (v7 + *(this + 10) - v8);
    *a3 = v8;
    *(this + 11) = 0;
    return 1;
  }

  v9 = (*(**(this + 1) + 16))(*(this + 1), v7, 256);
  *(this + 10) = v9;
  if (v9 > 0)
  {
    v10 = *(this + 3);
    *(this + 4) += v9 & 0x7FFFFFFF;
    *a3 = v9;
    *a2 = v10;
    return 1;
  }

  if (v9 < 0)
  {
    *(this + 48) = 1;
  }

  (*(**(this + 2) + 40))(*(this + 2), *(this + 3));
  result = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  return result;
}

BOOL anonymous namespace::LegacyInputStreamAdaptor::Skip(_anonymous_namespace_::LegacyInputStreamAdaptor *this, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 48))
  {
    return 0;
  }

  v4 = *(this + 11);
  if (v4 >= a2)
  {
    *(this + 11) = v4 - a2;
    return 1;
  }

  else
  {
    v5 = 0;
    v6 = a2 - v4;
    *(this + 11) = 0;
    do
    {
      v7 = v5;
      v8 = __OFSUB__(v6, v5);
      v9 = v6 - v5;
      if ((v9 < 0) ^ v8 | (v9 == 0))
      {
        break;
      }

      if (v9 >= 256)
      {
        v9 = 256;
      }

      v10 = (*(**(this + 1) + 16))(*(this + 1), v11, v9);
      v5 = v7 + v10;
    }

    while (v10 > 0);
    *(this + 4) += v7;
    return v6 == v7;
  }
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D18050;
  re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D17FE8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 1;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::internal::SharedObjectGraph::markAndSweep((a1 + 336), *(a1 + 48), *(a1 + 264));
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v19 = *(a1 + 272);
  v27 = 0x258C98EAAF29A10ALL;
  v28 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(v19, &v27, &v31);
  if (v27)
  {
    if (v27)
    {
    }
  }

  if (v31)
  {
    v21 = *(a1 + 272);
    v26 = v31;
    re::TypeRegistry::attributesByAttributeType(v21, &v26, &v27);
    if (v29)
    {
      v22 = 48 * v29;
      v23 = (v30 + 16);
      do
      {
        v24 = *v23;
        v23 += 3;
        v25 = v24;
        v22 -= 48;
      }

      while (v22);
    }

    if (v27)
    {
      if (v30)
      {
        (*(*v27 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 488);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v25 = *a5;
    *(&v25 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v15, &v25);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 336) == 1)
    {
      --*(a1 + 488);
      ++*(a1 + 496);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    return 0;
  }

  return result;
}

void *re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      if (*this == *(a1 + 272))
      {
        if (v12 != 0x7FFFFFFF)
        {
          return *(*(a1 + 304) + 24 * v12 + 16);
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
        result = _os_crash();
        __break(1u);
        return result;
      }

      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
      _os_crash();
      __break(1u);
      goto LABEL_9;
    }
  }

  return v7;
}

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    return 0;
  }
}

unsigned int *(*re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  if (*a2 == *(a1 + 272))
  {
    v9 = v2;
    v10 = v3;
    if (v8 != 0x7FFFFFFF)
    {
      return *(*(a1 + 304) + 24 * v8 + 16);
    }
  }

  return v4;
}

_anonymous_namespace_ *re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::close(_anonymous_namespace_ *result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 23);
    if (v2)
    {
      v3 = *(result + 3);
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(*(result + 23));
      (*(*v3 + 40))(v3, v2);
    }

    *(v1 + 23) = 0;
    v4 = *(v1 + 22);
    if (v4)
    {
      v5 = *(v1 + 3);
      rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::~GenericDocument(*(v1 + 22));
      (*(*v5 + 40))(v5, v4);
      *(v1 + 22) = 0;
    }

    re::DynamicArray<unsigned long>::deinit(v1 + 192);
    if ((*(v1 + 40) & 1) == 0)
    {
    }

    result = re::DynamicArray<unsigned long>::deinit(v1 + 96);
    if (*(v1 + 4) >= 1)
    {
      result = (*(**v1 + 24))();
      *(v1 + 1) = 0;
      *(v1 + 4) = 0;
    }

    *v1 = 0;
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

_anonymous_namespace_ *re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::popState(_anonymous_namespace_ *result, int a2)
{
  v3 = result;
  v4 = *(result + 14);
  if (!v4)
  {
    result = v5;
    if (v5 && (v6 & 1) != 0)
    {
      result = (*(*v5 + 40))();
    }

    v4 = *(v3 + 112);
  }

  if (*(*(v3 + 128) + 48 * v4 - 48) != a2)
  {
    result = v5;
    if (v5 && (v6 & 1) != 0)
    {
      result = (*(*v5 + 40))();
    }

    v4 = *(v3 + 112);
  }

  *(v3 + 112) = v4 - 1;
  ++*(v3 + 120);
  return result;
}

uint64_t re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::setError(uint64_t a1, uint64_t *a2)
{
  *&v8 = 400;
  *(&v8 + 1) = re::FoundationErrorCategory(void)::instance;
  v3 = a2[2];
  v2 = a2[3];
  v11 = v3;
  v12 = v2;
  v5 = a2[1];
  v9 = *a2;
  v4 = v9;
  v10 = v5;
  a2[2] = 0;
  a2[3] = 0;
  *a2 = 0;
  a2[1] = 0;
  result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v8);
  if (v4 && (v5 & 1) != 0)
  {
    v7 = *(*v4 + 40);

    return v7(v4, v3);
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  re::DynamicString::setCapacity(&v31, 0);
  v30 = &a9;
  re::DynamicString::vassignf(&v31, a3, &a9);
  if (v19)
  {
    v12 = *&v20[7];
  }

  else
  {
    v12 = v20;
  }

  if (v32)
  {
    v13 = v33;
  }

  else
  {
    v13 = &v32 + 1;
  }

  re::DynamicString::format("Failed to %s %s. Reason: %s", &v21, "deserialize", v12, v13);
  *&v25 = 400;
  *(&v25 + 1) = re::FoundationErrorCategory(void)::instance;
  v14 = v23;
  v28 = v23;
  v29 = v24;
  v15 = v21;
  v16 = v22;
  v26 = v21;
  v27 = v22;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1 + 24, &v25);
  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))(v15, v14);
  }

  if (v18 && (v19 & 1) != 0)
  {
    (*(*v18 + 40))();
  }

  result = v31;
  if (v31)
  {
    if (v32)
    {
      return (*(*v31 + 40))();
    }
  }

  return result;
}

void *re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::combineLabels(_anonymous_namespace_ *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  result = re::DynamicString::setCapacity(a1, 0);
  if (a2 >= 2)
  {
    v9 = a2 - 1;
    v10 = a3 + 48;
    do
    {
      v11 = *(v10 - 48);
      v12 = v11 > 0xA;
      v13 = (1 << v11) & 0x608;
      if (v12 || v13 == 0)
      {
        v15 = *(v10 + 8);
        if (v15 && *v15)
        {
          __src = 47;
          re::DynamicString::append(a1, &__src, 1uLL);
          v16 = strlen(*(v10 + 8));
          result = re::DynamicString::append(a1, *(v10 + 8), v16);
        }

        if (*v10 == 5)
        {
          result = re::DynamicString::appendf(a1, "/%lld", *(v10 + 32));
        }
      }

      v10 += 48;
      --v9;
    }

    while (v9);
  }

  if (a4 && *a4)
  {
    v19 = 47;
    re::DynamicString::append(a1, &v19, 1uLL);
    v17 = strlen(a4);

    return re::DynamicString::append(a1, a4, v17);
  }

  return result;
}

unsigned int *re::serializeType<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t *a4, re *this, re::TypeInfo *a6, uint64_t a7, uint64_t a8)
{
  v10 = this;
  v236 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_18;
  }

  if (*this == *a6)
  {
    v15 = **(this + 2);
    v16 = **(a6 + 2);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_18;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_18;
  }

  if (*(v10 + 12) != *(a6 + 12))
  {
    goto LABEL_285;
  }

  v19 = re::DataArray<re::TextureAtlasTile>::tryGet(*v10 + 96, **(v10 + 16));
  if (v19)
  {
    v20 = *(v19 + 16);
  }

  else
  {
    v20 = -1;
  }

  v21 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
  if (v21)
  {
    v22 = *(v21 + 16);
  }

  else
  {
    v22 = -1;
  }

  if (v20 != v22)
  {
    v30 = re::TypeInfo::name(v10);
    v31 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v30, v31))
    {
      v46 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      re::TypeInfo::name(v10);
      re::DataArray<re::TextureAtlasTile>::tryGet(*v10 + 96, **(v10 + 16));
      LOBYTE(v215) = v46;
      v24 = "Type name changed: Serialized type %s version %u, runtime type %s version %u.";
      goto LABEL_218;
    }

    v32 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v32)
    {
      v33 = *(v32 + 16);
    }

    else
    {
      v33 = -1;
    }

    re::TypeInfo::atVersion(v10, v33, &v219);
    if ((v219 & 1) == 0)
    {
      v62 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      LOBYTE(v215) = v62;
      v24 = "Unknown serialized type %s version %u. No matching runtime type found.";
      goto LABEL_218;
    }

    if (a7)
    {
      Instance = 0;
    }

    else
    {
      Instance = re::TypeInfo::createInstance(&v220, *(a1 + 48), *(a1 + 264));
    }

    if (*(a1 + 64) & 1) != 0 || ((*(*a1 + 72))(a1, a2, a3, Instance, &v220, a6, a7), (*(a1 + 64)))
    {
      if (!Instance)
      {
        goto LABEL_286;
      }

      v121 = *(a1 + 48);
      v122 = *(a1 + 264);
      v123 = &v220;
      v124 = Instance;
      goto LABEL_207;
    }

    if (a7 & 1) != 0 || (re::TypeInfo::TypeInfo(&Tag, &v220), re::internal::upgradeObject(Instance, &Tag, a4, v10, *(a1 + 48), *(a1 + 264), buf), (buf[0]))
    {
      LOBYTE(v10) = 1;
      return (v10 & 1);
    }

    if (v231)
    {
      LOBYTE(v187) = v232;
    }

    else
    {
      v187 = &v231 + 1;
    }

    if ((buf[0] & 1) != 0 || !v230 || (v231 & 1) == 0)
    {
      goto LABEL_286;
    }

    v165 = *(*v230 + 40);
LABEL_326:
    v165();
    goto LABEL_286;
  }

LABEL_18:
  v23 = *(v10 + 12);
  if (v23 > 4)
  {
    if (*(v10 + 12) > 6u)
    {
      if (v23 == 7)
      {
        if (v10 != a6)
        {
          if (*v10 == *a6)
          {
            v104 = **(v10 + 16);
            v105 = **(a6 + 2);
            if (v104 != v105)
            {
              goto LABEL_285;
            }

            v18 = WORD1(v104) == WORD1(v105);
            v106 = (v105 ^ v104) & 0xFFFFFF00000000;
            if (!v18 || v106 != 0)
            {
              goto LABEL_285;
            }
          }

          else if (!re::areSameTranslatedVersion(v10, a6, a3))
          {
            goto LABEL_285;
          }
        }

        if (a7)
        {
          if (v38)
          {
            v219 = 0;
            if (v219 < *(*(a6 + 2) + 96))
            {
              re::TypeInfo::unionMember(a6, v219, buf);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, "value", 0, 0, buf, buf, 1);
              }
            }

            goto LABEL_334;
          }
        }

        else if (v38)
        {
          re::TypeInfo::TypeInfo(buf, v10);
          Tag = re::UnionAccessor::readTag(buf, a4);
          v60 = Tag;
          re::UnionAccessor::reset(buf, a4, Tag, *(a1 + 48));
          if (v60 < *(*(v10 + 16) + 96))
          {
            re::TypeInfo::unionMember(v10, v60, &v219);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, "value", 0, a4, &v219, &v219, 0);
            }
          }

          goto LABEL_334;
        }

        goto LABEL_286;
      }

      if (v23 != 8)
      {
        if (v23 == 9)
        {
          v215 = re::TypeInfo::name(v10)[1];
          v24 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_218:
          v125 = a1;
          v126 = a2;
LABEL_254:
          goto LABEL_286;
        }

LABEL_78:
        LOBYTE(v215) = *(v10 + 12);
        v24 = "Invalid type category. Value = %d";
        goto LABEL_218;
      }

      if (a7)
      {
        if (*(*(v10 + 16) + 49))
        {
          v67 = *(a1 + 272);
          Tag = 0x2686EB529B3EE220;
          v228 = "DynamicString";
          re::TypeRegistry::typeInfo(v67, &Tag, buf);
          re::TypeInfo::TypeInfo(&v219, &buf[8]);
          re::StringID::destroyString(&Tag);
          v44 = &v219;
          v45 = &v219;
          v42 = a1;
          v43 = a2;
          goto LABEL_124;
        }

        v40 = re::TypeInfo::name(v10);
        *buf = 0x134375A94D9F7110;
        *&buf[8] = "DynamicString";
        if (re::StringID::operator==(v40, buf))
        {
          v42 = a1;
          v43 = a2;
          v44 = v10;
          v45 = v10;
LABEL_124:
          goto LABEL_393;
        }

        v47 = *(v10 + 12) == 8;
      }

      else
      {
        v47 = 1;
      }

      v48 = *(v10 + 16);
      v49 = *(v48 + 48);
      if ((v49 & 0x10) == 0 && v47)
      {
        v50 = *(v48 + 168);
        if (v50)
        {
          v51 = *v10;
          v52 = *a6;
          *buf = &unk_1F5D180B8;
          *&buf[8] = a1;
          *&buf[16] = v51;
          v230 = v52;
          v231 = 0;
          v232 = 0;
          v233 = 1;
          v234 = 0;
          v235 = 0;
          v219 = a2;
          LODWORD(v220) = a3;
          v221 = 0;
          v222 = 0;
          v223 = 0;
          v50(buf, a4, v53);
          LOBYTE(v10) = *(a1 + 64) ^ 1;
          return (v10 & 1);
        }
      }

      if ((v49 & 4) == 0)
      {
        {
          v54 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
          if (v54 && *(v54 + 22) == 3 && *v54 && (v55 = *(v54 + 8), (*(v55 + 46) & 0x40) != 0) && ((*(v55 + 22) & 0x1000) != 0 ? (v56 = *(v54 + 8)) : (v56 = *(v55 + 8)), !strcmp(v56, "@version")))
          {
            v57 = *(v55 + 24);
          }

          else
          {
            v57 = 1;
          }

          v58 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
          if (v58)
          {
            v59 = *(v58 + 16);
          }

          else
          {
            v59 = -1;
          }

          if (v57 == v59)
          {
LABEL_334:
            if (*(a1 + 64))
            {
              goto LABEL_286;
            }

            v166 = *(a1 + 152) + 48 * *(a1 + 136);
            ++*(v166 - 16);
LABEL_393:
            LOBYTE(v10) = *(a1 + 64) ^ 1;
            return (v10 & 1);
          }

          if (*v10 == *a6 && (v167 = **(v10 + 16), v168 = **(a6 + 2), v167 == v168) && WORD1(v167) == WORD1(v168) && ((v168 ^ v167) & 0xFFFFFF00000000) == 0)
          {
            re::TypeInfo::atVersion(v10, v57, &v219);
            if (v219)
            {
              if (a7)
              {
                v203 = 0;
              }

              else
              {
                v203 = re::TypeInfo::createInstance(&v220, *(a1 + 48), *(a1 + 264));
              }

              v208 = *(a1 + 64);
              if (v208 == 1)
              {
                if (v203)
                {
                  re::TypeInfo::releaseInstance(&v220, v203, *(a1 + 48), *(a1 + 264));
                }
              }

              else if ((a7 & 1) == 0)
              {
                re::TypeInfo::TypeInfo(&Tag, &v220);
                re::internal::upgradeObject(v203, &Tag, a4, v10, *(a1 + 48), *(a1 + 264), buf);
                if ((buf[0] & 1) == 0)
                {
                  if (v231)
                  {
                    LOBYTE(v214) = v232;
                  }

                  else
                  {
                    v214 = &v231 + 1;
                  }

                  if (buf[0] & 1) == 0 && v230 && (v231)
                  {
                    (*(*v230 + 40))();
                  }
                }
              }

              LOBYTE(v10) = v208 ^ 1;
              return (v10 & 1);
            }

            v215 = re::TypeInfo::name(v10)[1];
            v24 = "Unknown serialized type %s version %u. No matching runtime type found.";
          }

          else
          {
            v169 = re::TypeInfo::name(a6)[1];
            re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
            LOBYTE(v215) = v169;
            v24 = "Type %s version %u expected in JSON. Actual version found in JSON: %u";
          }

LABEL_253:
          v125 = a1;
          v126 = 0;
          goto LABEL_254;
        }

LABEL_286:
        LOBYTE(v10) = 0;
        return (v10 & 1);
      }

      re::TypeMemberCollection::TypeMemberCollection(buf, *v10, v48);
      re::TypeMemberCollection::operator[](buf, 0, &v219);
      v119 = *(v221 + 24);
      re::TypeMemberInfo::memberType(&v219, &Tag);
      if (re::areSameVersion(v10, a6, v120))
      {
        if (*(a1 + 64))
        {
          goto LABEL_286;
        }

        v29 = (*(*a1 + 72))(a1, a2, a3, a4 + v119, &Tag, &Tag, a7);
LABEL_413:
        LOBYTE(v10) = v29;
        return (v10 & 1);
      }

      v154 = *(a6 + 2);
      if (*(v154 + 96) == 1)
      {
        re::TypeMemberCollection::TypeMemberCollection(buf, *a6, v154);
        re::TypeMemberCollection::operator[](buf, 0, v224);
        re::TypeMemberInfo::memberType(v224, v225);
        if (*(a1 + 64))
        {
          goto LABEL_286;
        }

        v29 = (*(*a1 + 72))(a1, a2, a3, a4 + v119, &Tag, v225, a7);
        goto LABEL_413;
      }

LABEL_285:
      goto LABEL_286;
    }

    if (v23 != 5)
    {
      if (v23 != 6)
      {
        goto LABEL_78;
      }

      re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v219, &buf[8]);
      v27 = re::TypeInfo::name(&v219);
      v28 = BYTE4(v220);
      if (BYTE4(v220) == 1)
      {
        if (re::TypeInfo::isInteger(&v219))
        {
          *buf = 0x303EE88E58DLL;
          *&buf[8] = "uint64_t";
          if (re::StringID::operator==(v27, buf))
          {
            goto LABEL_413;
          }

          Tag = 3393056694;
          v228 = "size_t";
          v127 = re::StringID::operator==(v27, &Tag);
          if (v127)
          {
            goto LABEL_412;
          }

          *buf = 0x303EE8780EELL;
          *&buf[8] = "uint32_t";
          v128 = re::StringID::operator==(v27, buf);
          if (v128)
          {
            goto LABEL_412;
          }

          *buf = 0x303EE86A734;
          *&buf[8] = "uint16_t";
          v129 = re::StringID::operator==(v27, buf);
          if (v129)
          {
            goto LABEL_412;
          }

          *buf = 0x18E6A9A093;
          *&buf[8] = "uint8_t";
          v130 = re::StringID::operator==(v27, buf);
          if (v130)
          {
            goto LABEL_412;
          }

          *buf = 0x16749F63A2;
          *&buf[8] = "int64_t";
          if (re::StringID::operator==(v27, buf))
          {
            goto LABEL_413;
          }

          Tag = 3327612;
          v228 = "long";
          v205 = re::StringID::operator==(v27, &Tag);
          {
LABEL_412:
            v29 = v64(a1, a2, a3, a4, v10, a6, a7);
            goto LABEL_413;
          }

LABEL_119:
          if (v10 != a6)
          {
            if (*v10 == *a6)
            {
              v134 = **(v10 + 16);
              v135 = **(a6 + 2);
              if (v134 == v135 && WORD1(v134) == WORD1(v135) && ((v135 ^ v134) & 0xFFFFFF00000000) == 0)
              {
                goto LABEL_244;
              }
            }

            else if (re::areSameTranslatedVersion(v10, a6, v26))
            {
              goto LABEL_244;
            }

            if (*(v10 + 12) != *(a6 + 12))
            {
              goto LABEL_285;
            }
          }

LABEL_244:
          if (a7)
          {
            v136 = *(a1 + 272);
            re::TypeInfo::referencedType(a6, &v219);
            re::internal::translateType(v136, &v219, buf);
            v137 = *(a1 + 272);
            re::TypeInfo::dictionaryValueType(a6, &Tag);
            re::internal::translateType(v137, &Tag, &v219);
            v138 = (*(*a1 + 80))(a1, buf);
            if (v138)
            {
              v139 = v138;
              v10 = (*(*a1 + 80))(a1, &v219);
              if (v10)
              {
                Tag = 0;
                {
                  goto LABEL_286;
                }

                for (i = Tag; i; --i)
                {
                  v139(a1, "key", 0, 0, buf, buf, 1);
                  (v10)(a1, "value", 0, 0, &v219, &v219, 1);
                }

LABEL_263:
                goto LABEL_393;
              }

LABEL_264:
              v148 = re::TypeInfo::name(&v219);
              return (v10 & 1);
            }

            goto LABEL_251;
          }

          re::TypeInfo::referencedType(v10, &v219);
          re::TypeInfo::dictionaryValueType(v10, &Tag);
          re::TypeInfo::referencedType(a6, v225);
          re::TypeInfo::dictionaryValueType(a6, v224);
          re::TypeInfo::TypeInfo(v217, v10);
          v10 = (*(*a1 + 80))(a1, &v219);
          if (!v10)
          {
            goto LABEL_264;
          }

          v141 = (*(*a1 + 80))(a1, &Tag);
          if (!v141)
          {
            p_Tag = &Tag;
            goto LABEL_252;
          }

          v142 = v141;
          v216 = (*(v218 + 96))(a4);
          {
            goto LABEL_286;
          }

          v143 = *(a1 + 48);
          v144 = *(v218 + 104);
          re::TypeInfo::TypeInfo(buf, v217);
          v144(a4, buf, v143);
          v145 = v216;
          if (!v216)
          {
            goto LABEL_263;
          }

          v146 = re::TypeInfo::createInstance(&v219, *(a1 + 48), *(a1 + 264));
          while (1)
          {
            (v10)(a1, "key", 0, v146, &v219, v225, 0);
            v121 = *(a1 + 48);
            if (*(a1 + 64) == 1)
            {
              break;
            }

            v147 = (*(v218 + 112))(a4, v217, v121, v146);
            v142(a1, "value", 0, v147, &Tag, v224, 0);
            if (!--v145)
            {
              re::TypeInfo::releaseInstance(&v219, v146, *(a1 + 48), *(a1 + 264));
              goto LABEL_263;
            }
          }

          v122 = *(a1 + 264);
          v123 = &v219;
          v124 = v146;
LABEL_207:
          re::TypeInfo::releaseInstance(v123, v124, v121, v122);
          goto LABEL_286;
        }

        v28 = BYTE4(v220);
      }

      if (v28 == 8)
      {
        if (*v27 >> 1 == 0x134375A94D9F7110)
        {
          v63 = v27[1];
          if (v63 == "DynamicString")
          {
            goto LABEL_412;
          }

          v65 = strcmp(v63, "DynamicString");
          if (!v65)
          {
            goto LABEL_412;
          }
        }

        *buf = 0x22C6ED80D0CLL;
        *&buf[8] = "StringID";
        v66 = re::StringID::operator==(v27, buf);
        if (v66)
        {
          goto LABEL_412;
        }
      }

      goto LABEL_119;
    }

    if (v10 != a6)
    {
      if (*v10 == *a6)
      {
        v108 = **(v10 + 16);
        v109 = **(a6 + 2);
        if (v108 == v109 && WORD1(v108) == WORD1(v109) && ((v109 ^ v108) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_185;
        }

        v39 = 5;
      }

      else
      {
        if (re::areSameTranslatedVersion(v10, a6, a3))
        {
          goto LABEL_185;
        }

        v39 = *(v10 + 12);
      }

      if (v39 != *(a6 + 12))
      {
        goto LABEL_285;
      }
    }

LABEL_185:
    if (a7)
    {
      v110 = *(a1 + 272);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::internal::translateType(v110, &Tag, &v219);
      v111 = (*(*a1 + 80))(a1, &v219);
      if (v111)
      {
        v112 = v111;
        *buf = 0;
        LOBYTE(v10) = 0;
        {
          return (v10 & 1);
        }

        for (j = *buf; j; --j)
        {
          v112(a1, 0, 0, 0, &v219, &v219, 1);
        }

LABEL_392:
        goto LABEL_393;
      }

LABEL_196:
      p_Tag = &v219;
LABEL_252:
      v215 = re::TypeInfo::name(p_Tag)[1];
      v24 = "Failed to resolve serialize function for type %s";
      goto LABEL_253;
    }

    re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
    re::TypeInfo::TypeInfo(&v219, &buf[8]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
    re::TypeInfo::TypeInfo(&Tag, &buf[8]);
    re::TypeInfo::TypeInfo(v225, v10);
    v114 = (*(*a1 + 80))(a1, &v219);
    if (!v114)
    {
      goto LABEL_196;
    }

    v115 = v114;
    v116 = (*(v226 + 88))(a4);
    v224[0] = v116;
    LOBYTE(v10) = 0;
    {
      return (v10 & 1);
    }

    v117 = v224[0];
    if (v116 != v224[0])
    {
      re::TypeInfo::referencedType(v225, buf);
      v93 = *(*&buf[16] + 8);
      if (!is_mul_ok(v93, v117))
      {
LABEL_195:
        LOBYTE(v215) = v93;
        v24 = "Size overflow during deserialization. Element size = %zu, count = %zu";
        goto LABEL_253;
      }

      v170 = *(a1 + 48);
      v171 = *(v226 + 96);
      re::TypeInfo::TypeInfo(buf, v225);
      v171(a4, buf, v170, v117);
    }

    if (*(v226 + 104))
    {
      if (v117)
      {
        for (k = 0; k != v117; ++k)
        {
          v173 = (*(v226 + 104))(a4, k);
          v115(a1, 0, 0, v173, &v219, &Tag, 0);
        }
      }
    }

    else
    {
      v174 = *(v226 + 112);
      if (!v174 || !*(v226 + 120) || !*(v226 + 128))
      {
        re::TypeInfo::TypeInfo(buf, v225);
        v215 = re::TypeInfo::name(buf)[1];
        v24 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_218;
      }

      v175 = v174(a4, *(a1 + 56));
      v176 = (*(v226 + 120))();
      if (v176)
      {
        v177 = v176;
        do
        {
          v115(a1, 0, 0, v177, &v219, &Tag, 0);
          v177 = (*(v226 + 120))(v175);
        }

        while (v177);
      }

      (*(v226 + 128))(v175, *(a1 + 56));
    }

    goto LABEL_392;
  }

  if (*(v10 + 12) > 2u)
  {
    if (v23 != 3)
    {
      if (v23 != 4)
      {
        goto LABEL_78;
      }

      if (v10 != a6)
      {
        if (*v10 == *a6)
        {
          v73 = **(v10 + 16);
          v74 = **(a6 + 2);
          if (v73 == v74)
          {
            v18 = WORD1(v73) == WORD1(v74);
            v75 = (v74 ^ v73) & 0xFFFFFF00000000;
            if (v18 && v75 == 0)
            {
              goto LABEL_141;
            }
          }
        }

        else if (re::areSameTranslatedVersion(v10, a6, a3))
        {
          goto LABEL_141;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_285;
        }

        v77 = *(v10 + 16);
        v78 = *(a6 + 2);
        v79 = *(v78 + 92) & 0xFFFFFF;
        if ((*(v77 + 92) & 0xFFFFFF) != 0)
        {
          if (!v79)
          {
            goto LABEL_285;
          }
        }

        else if (v79 || *(v77 + 96) != *(v78 + 96))
        {
          goto LABEL_285;
        }
      }

LABEL_141:
      if (a7)
      {
        v80 = *(a1 + 272);
        re::TypeInfo::referencedType(a6, &v219);
        re::internal::translateType(v80, &v219, buf);
        v81 = (*(*a1 + 80))(a1, buf);
        if (!v81)
        {
LABEL_251:
          p_Tag = buf;
          goto LABEL_252;
        }

        v82 = v81;
        v83 = *(a6 + 2);
        v84 = *(v83 + 92) & 0xFFFFFF;
        if (v84)
        {
          v85 = 0;
          v86 = 8;
        }

        else
        {
          v85 = *(v83 + 96);
          v86 = 4;
        }

        v219 = v85;
        {
          goto LABEL_286;
        }

        v160 = v219;
        if (v84)
        {
          v161 = v219 == 0;
        }

        else
        {
          v161 = 1;
        }

        v162 = v161;
        if (v161)
        {
          if (!v219)
          {
            goto LABEL_392;
          }
        }

        else
        {
          v224[0] = 0;
          v224[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v224);
        }

        do
        {
          v82(a1, 0, 0, 0, buf, buf, 1);
          --v160;
        }

        while (v160);
        if (v162)
        {
          goto LABEL_392;
        }
      }

      else
      {
        re::TypeInfo::referencedType(v10, &v219);
        re::TypeInfo::referencedType(a6, &Tag);
        re::TypeInfo::TypeInfo(v225, v10);
        v87 = (*(*a1 + 80))(a1, &v219);
        if (!v87)
        {
          goto LABEL_196;
        }

        v88 = v87;
        v89 = re::ArrayAccessor::size(v225, a4);
        v216 = v89;
        v90 = *(*(v10 + 16) + 92) & 0xFFFFFF;
        if (v90)
        {
          v91 = 8;
        }

        else
        {
          v91 = 4;
        }

        {
          goto LABEL_286;
        }

        v92 = v216;
        if (v89 != v216)
        {
          if ((*(v226 + 92) & 0xFFFFFF) == 0)
          {
            LOBYTE(v215) = v89;
            v24 = "Invalid array size. Expected size = %zu, actual size = %zu";
            goto LABEL_253;
          }

          re::TypeInfo::referencedType(v225, buf);
          v93 = *(*&buf[16] + 8);
          if (!is_mul_ok(v93, v92))
          {
            goto LABEL_195;
          }

          re::ArrayAccessor::reset(v225, a4, *(a1 + 48), v92);
        }

        if (v90)
        {
          v188 = v92 == 0;
        }

        else
        {
          v188 = 1;
        }

        v189 = v188;
        if (v188)
        {
          if (!v92)
          {
            goto LABEL_392;
          }
        }

        else
        {
          v190 = *a4;
          v217[0] = 0;
          v217[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v190, v217);
        }

        v191 = 0;
        do
        {
          v192 = re::ArrayAccessor::elementAt(v225, a4, v191);
          v88(a1, 0, 0, v192, &v219, &Tag, 0);
          ++v191;
        }

        while (v92 != v191);
        if (v189)
        {
          goto LABEL_392;
        }
      }

      (*(*a1 + 24))(a1);
      goto LABEL_392;
    }

    if (v10 != a6)
    {
      if (*v10 == *a6)
      {
        v98 = **(v10 + 16);
        v99 = **(a6 + 2);
        if (v98 == v99 && WORD1(v98) == WORD1(v99) && ((v99 ^ v98) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_166;
        }

        v37 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(v10, a6, a3))
        {
          goto LABEL_166;
        }

        v37 = *(v10 + 12);
      }

      if (v37 != *(a6 + 12))
      {
        goto LABEL_285;
      }
    }

LABEL_166:
    if (a7)
    {
      LOBYTE(Tag) = 0;
      if (Tag == 1)
      {
        v100 = *(a1 + 272);
        re::TypeInfo::referencedType(a6, &v219);
        re::internal::translateType(v100, &v219, buf);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, 0, buf, buf, 1);
        }
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(*v10, *(*(v10 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v219, &buf[8]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::TypeInfo::TypeInfo(buf, v10);
      v225[0] = (*(*&buf[16] + 88))(a4) != 0;
      if (v225[0])
      {
        v102 = re::TypeInfo::createInstance(&v219, *(a1 + 48), *(a1 + 264));
        (*(*&buf[16] + 96))(a4, v102);
        re::TypeInfo::releaseInstance(&v219, v102, *(a1 + 48), *(a1 + 264));
        v103 = (*(*&buf[16] + 88))(a4);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, v103, &v219, &Tag, 0);
        }
      }

      else
      {
        (*(*&buf[16] + 96))(a4, 0, v101);
      }
    }

    goto LABEL_393;
  }

  if (v23 != 1)
  {
    if (v23 != 2)
    {
      goto LABEL_78;
    }

    if (v10 == a6)
    {
      goto LABEL_230;
    }

    if (*v10 == *a6)
    {
      v68 = **(v10 + 16);
      v69 = **(a6 + 2);
      if (v68 == v69 && WORD1(v68) == WORD1(v69) && ((v69 ^ v68) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_131;
      }

      v25 = 2;
    }

    else
    {
      if (re::areSameTranslatedVersion(v10, a6, a3))
      {
        goto LABEL_131;
      }

      v25 = *(v10 + 12);
    }

    if (v25 != *(a6 + 12))
    {
      goto LABEL_285;
    }

    v70 = re::TypeInfo::name(v10);
    v71 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v70, v71))
    {
      goto LABEL_285;
    }

LABEL_131:
    if (*v10 != *a6)
    {
      v72 = re::areSameTranslatedVersion(v10, a6, a3);
      goto LABEL_231;
    }

    v131 = **(v10 + 16);
    v132 = **(a6 + 2);
    if (v131 != v132 || WORD1(v131) != WORD1(v132) || ((v132 ^ v131) & 0xFFFFFF00000000) != 0)
    {
      v72 = 0;
      goto LABEL_231;
    }

LABEL_230:
    v72 = 1;
LABEL_231:
    if (a7)
    {
      *buf = 0;
      {
        if (*buf)
        {
        }

        goto LABEL_393;
      }

      goto LABEL_286;
    }

    Tag = 0;
    {
      goto LABEL_286;
    }

    v133 = Tag;
    if (!Tag)
    {
      v24 = "Failed to read enum constant. String is empty.";
      goto LABEL_253;
    }

    if (Tag >= 0x401)
    {
      LOBYTE(v215) = Tag;
      v24 = "Failed to read enum constant. String is too long. Length: %zu";
      goto LABEL_253;
    }

    v163 = (*(**(a1 + 56) + 32))(*(a1 + 56), Tag + 1, 0);
    v163[v133] = 0;
    if (*(a1 + 64) == 1)
    {
      goto LABEL_325;
    }

    v178 = *v163;
    if (*v163)
    {
      v179 = v163[1];
      if (v179)
      {
        v180 = (v163 + 2);
        do
        {
          v178 = 31 * v178 + v179;
          v181 = *v180++;
          v179 = v181;
        }

        while (v181);
      }
    }

    *buf = 2 * v178;
    *&buf[8] = v163;
    EnumConstantIndex = re::internal::getEnumConstantIndex(a6, buf, v164);
    re::StringID::destroyString(buf);
    if ((EnumConstantIndex & 0x80000000) != 0)
    {
      v193 = *re::foundationSerializationLogObjects(v183);
      if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
      {
        v194 = v193;
        v195 = re::TypeInfo::name(a6)[1];
        *buf = 136315394;
        *&buf[4] = v163;
        *&buf[12] = 2080;
        *&buf[14] = v195;
        _os_log_impl(&dword_1E1C61000, v194, OS_LOG_TYPE_INFO, "String %s is not a valid enum constant of type %s - skipping.", buf, 0x16u);
      }

      v196 = 0;
    }

    else if (v72)
    {
      *buf = re::TypeInfo::enumConstants(v10);
      *&buf[8] = v184;
      v185 = EnumConstantIndex - v184;
      if (EnumConstantIndex >= v184)
      {
        v219 = re::TypeInfo::renamedEnumConstants(v10);
        v220 = v204;
        v186 = re::Slice<re::EnumConstant>::operator[](&v219, v185);
      }

      else
      {
        v186 = re::Slice<re::EnumConstant>::operator[](buf, EnumConstantIndex);
      }

      v196 = v186;
    }

    else
    {
      v197 = *(*a6 + 856);
      if (!v197 || (v196 = re::internal::TypeTranslationTable::translateSerializedEnum(v197, a6, EnumConstantIndex, v10)) == 0)
      {
        re::TypeInfo::name(v10);
LABEL_325:
        v165 = *(**(a1 + 56) + 40);
        goto LABEL_326;
      }
    }

    (*(**(a1 + 56) + 40))(*(a1 + 56), v163);
    if (v196)
    {
      memcpy(a4, v196, *(*(v10 + 16) + 8));
    }

    goto LABEL_393;
  }

  if (v10 != a6)
  {
    if (*v10 == *a6)
    {
      v94 = **(v10 + 16);
      v95 = **(a6 + 2);
      if (v94 != v95)
      {
        goto LABEL_285;
      }

      v18 = WORD1(v94) == WORD1(v95);
      v96 = (v95 ^ v94) & 0xFFFFFF00000000;
      if (!v18 || v96 != 0)
      {
        goto LABEL_285;
      }
    }

    else if (!re::areSameTranslatedVersion(v10, a6, a3))
    {
      goto LABEL_285;
    }
  }

  v34 = re::TypeInfo::name(v10);
  v35 = *v34 >> 1;
  if (v35 > 0x16749DFF02)
  {
    if (*v34 >> 1 > 0x303EE88E58CLL)
    {
      if (*v34 >> 1 > 0x2A8CEB1C43F60843)
      {
        if (v35 == 0x2A8CEB1C43F60844)
        {
LABEL_315:
        }

        if (v35 != 0x3AFE951B1F1F3391)
        {
          if (v35 != 0x412A40E9CB79BA35)
          {
            goto LABEL_360;
          }

          goto LABEL_309;
        }

LABEL_312:
      }

      if (v35 == 0x303EE88E58DLL)
      {
        goto LABEL_309;
      }

      if (v35 != 0x2710786C3AC82DA1)
      {
        goto LABEL_360;
      }
    }

    else
    {
      if (*v34 >> 1 <= 0x18E6A9A092)
      {
        if (v35 != 0x16749DFF03)
        {
          if (v35 != 0x16749F63A2)
          {
            goto LABEL_360;
          }

LABEL_296:
        }

        goto LABEL_318;
      }

      if (v35 != 0x18E6A9A093)
      {
        if (v35 != 0x303EE86A734)
        {
          if (v35 != 0x303EE8780EELL)
          {
            goto LABEL_360;
          }

          goto LABEL_315;
        }

        goto LABEL_312;
      }
    }
  }

  if (*v34 >> 1 > 0x685847B)
  {
    if (*v34 >> 1 <= 0xB9708BDD)
    {
      if (v35 != 109413500)
      {
        if (v35 != 2969009105)
        {
          goto LABEL_360;
        }
      }

LABEL_321:
    }

    if (v35 == 3111160798)
    {
    }

    if (v35 != 3393056694)
    {
      if (v35 != 0x16749D2549)
      {
        goto LABEL_360;
      }

      goto LABEL_321;
    }

LABEL_309:
  }

  if (*v34 >> 1 <= 0x2E9355)
  {
    if (v35 != 104431)
    {
      if (v35 != 3029738)
      {
        goto LABEL_360;
      }
    }

LABEL_318:
  }

  if (v35 != 3052374)
  {
    if (v35 != 3327612)
    {
      if (v35 == 97526364)
      {
      }

LABEL_360:
      v215 = re::TypeInfo::name(v10)[1];
      v24 = "Unsupported basic type %s.";
      goto LABEL_218;
    }

    goto LABEL_296;
  }
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::findEntry<re::internal::SerializeFuncKey>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *a2;
  LODWORD(v4) = 0x7FFFFFFF;
  if (!*a2)
  {
    v5 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v3 = a3 % *(a2 + 24);
  v5 = *(*(a2 + 8) + 4 * v3);
  if (v5 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v6 = *(a2 + 16);
  if (*(v6 + 24 * v5 + 4) == a3)
  {
    LODWORD(v4) = *(*(a2 + 8) + 4 * v3);
LABEL_5:
    v5 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v4 = *(v6 + 24 * v5) & 0x7FFFFFFF;
  if (v4 == 0x7FFFFFFF)
  {
    LODWORD(v4) = 0x7FFFFFFF;
  }

  else if (*(v6 + 24 * v4 + 4) != a3)
  {
    LODWORD(v7) = *(v6 + 24 * v5) & 0x7FFFFFFF;
    while (1)
    {
      v5 = v7;
      v7 = *(v6 + 24 * v4) & 0x7FFFFFFF;
      LODWORD(v4) = 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        break;
      }

      v4 = v7;
      if (*(v6 + 24 * v7 + 4) == a3)
      {
        LODWORD(v4) = v7;
        break;
      }
    }
  }

LABEL_7:
  *result = a3;
  *(result + 8) = v3;
  *(result + 12) = v4;
  *(result + 16) = v5;
  return result;
}

uint64_t re::internal::setTypeMismatchError<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, re::TypeInfo *this, re::TypeInfo *a4)
{
  v7 = re::TypeInfo::name(this)[1];
  re::TypeInfo::name(a4);
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(uint64_t a1, char *a2, BOOL *a3, char a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (result)
  {
    v9 = *(result + 11);
    if ((v9 & 8) != 0)
    {
      v12 = v9 == 10;
    }

    else
    {
      if ((v9 & 0x400) == 0 || *(a1 + 233) != 1 || ((v9 & 0x1000) != 0 ? (v10 = result) : (v10 = *(result + 1)), (v11 = strcasecmp(v10, "true"), v12 = v11 == 0, v11) && (v11 = strcasecmp(v10, "false"), v11)))
      {
        return 0;
      }

      v14 = *re::foundationSerializationLogObjects(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = v10;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as BOOLean in Bool/String Compatibility Mode", &v15, 0xCu);
      }
    }

    if ((a4 & 1) == 0)
    {
      *a3 = v12;
    }

    v13 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v13 - 16);
    return 1;
  }

  return result;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(uint64_t a1, char *a2, _BYTE *a3, char a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (result)
  {
    if ((*(result + 11) & 0x400) != 0 || ((*(result + 11) & 0x1000) != 0 ? (v9 = 21 - *(result + 21)) : (v9 = *result), v9 != 1))
    {
      if ((a4 & 1) == 0)
      {
        if ((*(result + 11) & 0x1000) != 0)
        {
          v10 = result;
        }

        else
        {
          v10 = *(result + 1);
        }

        *a3 = *v10;
      }

      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v11 - 16);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI8(uint64_t a1, char *a2, _BYTE *a3, char a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x20) != 0)
  {
    v11 = *result;
    if (v11 != v11)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_39;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v10 = 21 - *(result + 21);
  }

  else
  {
    v10 = *result;
  }

  v13 = &v9[v10];
  if (v10)
  {
    v14 = *v9 == 45;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v10 == v14)
  {
    v16 = &v9[v14];
  }

  else
  {
    v18 = v10 - v14;
    v16 = &v9[v14];
    while (*v16 == 48)
    {
      ++v16;
      if (!--v18)
      {
        goto LABEL_34;
      }
    }
  }

  if (v16 == v13)
  {
LABEL_34:
    v16 = &v9[v10];
LABEL_35:
    if (v16 == &v9[v14])
    {
LABEL_39:
      return 0;
    }

    v17 = 0;
    LOBYTE(v11) = 0;
    if (!v14)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (*v16 - 48 >= 0xA)
  {
    goto LABEL_35;
  }

  v16 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v16, v13, buf, &v20);
  if (v16 != v13 && *v16 - 48 <= 9 || *buf > 0xFFu || 255 - *buf < v20)
  {
    goto LABEL_39;
  }

  v17 = v20 + *buf;
  if (!v15)
  {
    if ((v17 & 0x80) != 0)
    {
      goto LABEL_39;
    }

    LOBYTE(v11) = v20 + buf[0];
    goto LABEL_38;
  }

  if ((v20 + buf[0]) > 0x80u)
  {
    goto LABEL_39;
  }

LABEL_37:
  v11 = -v17;
LABEL_38:
  if (v13 != v16)
  {
    goto LABEL_39;
  }

  v19 = *re::foundationSerializationLogObjects(v16);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = v9;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI16(uint64_t a1, char *a2, _WORD *a3, char a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x20) != 0)
  {
    v11 = *result;
    if (v11 != v11)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_39;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v10 = 21 - *(result + 21);
  }

  else
  {
    v10 = *result;
  }

  v13 = &v9[v10];
  if (v10)
  {
    v14 = *v9 == 45;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v10 == v14)
  {
    v16 = &v9[v14];
  }

  else
  {
    v18 = v10 - v14;
    v16 = &v9[v14];
    while (*v16 == 48)
    {
      ++v16;
      if (!--v18)
      {
        goto LABEL_34;
      }
    }
  }

  if (v16 == v13)
  {
LABEL_34:
    v16 = &v9[v10];
LABEL_35:
    if (v16 == &v9[v14])
    {
LABEL_39:
      return 0;
    }

    v17 = 0;
    LOWORD(v11) = 0;
    if (!v14)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (*v16 - 48 >= 0xA)
  {
    goto LABEL_35;
  }

  v16 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v16, v13, buf, &v20);
  if (v16 != v13 && *v16 - 48 <= 9 || *&buf[2] || 0xFFFF - *buf < v20)
  {
    goto LABEL_39;
  }

  v17 = v20 + *buf;
  if (!v15)
  {
    if ((v17 & 0x8000) != 0)
    {
      goto LABEL_39;
    }

    LOWORD(v11) = v20 + *buf;
    goto LABEL_38;
  }

  if ((v20 + *buf) > 0x8000u)
  {
    goto LABEL_39;
  }

LABEL_37:
  v11 = -v17;
LABEL_38:
  if (v13 != v16)
  {
    goto LABEL_39;
  }

  v19 = *re::foundationSerializationLogObjects(v16);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = v9;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI32(uint64_t a1, char *a2, unsigned int *a3, char a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x20) != 0)
  {
    v11 = *result;
    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_37;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v10 = 21 - *(result + 21);
  }

  else
  {
    v10 = *result;
  }

  v13 = &v9[v10];
  if (v10)
  {
    v14 = *v9 == 45;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v10 == v14)
  {
    v16 = &v9[v14];
  }

  else
  {
    v17 = v10 - v14;
    v16 = &v9[v14];
    while (*v16 == 48)
    {
      ++v16;
      if (!--v17)
      {
        goto LABEL_32;
      }
    }
  }

  if (v16 == v13)
  {
LABEL_32:
    v16 = &v9[v10];
LABEL_33:
    if (v16 == &v9[v14])
    {
LABEL_37:
      return 0;
    }

    v11 = 0;
    if (!v14)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (*v16 - 48 >= 0xA)
  {
    goto LABEL_33;
  }

  v16 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v16, v13, buf, &v19);
  if (v16 != v13 && *v16 - 48 <= 9 || __CFADD__(*buf, v19))
  {
    goto LABEL_37;
  }

  v11 = *buf + v19;
  if (!v15)
  {
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v11 > 0x80000000)
  {
    goto LABEL_37;
  }

LABEL_35:
  v11 = -v11;
LABEL_36:
  if (v13 != v16)
  {
    goto LABEL_37;
  }

  v18 = *re::foundationSerializationLogObjects(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = v9;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI64(uint64_t a1, char *a2, unint64_t *a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x80) != 0)
  {
    v11 = *result;
    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_37;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v10 = 21 - *(result + 21);
  }

  else
  {
    v10 = *result;
  }

  v13 = &v9[v10];
  if (v10)
  {
    v14 = *v9 == 45;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v10 == v14)
  {
    v16 = &v9[v14];
  }

  else
  {
    v17 = v10 - v14;
    v16 = &v9[v14];
    while (*v16 == 48)
    {
      ++v16;
      if (!--v17)
      {
        goto LABEL_32;
      }
    }
  }

  if (v16 == v13)
  {
LABEL_32:
    v16 = &v9[v10];
LABEL_33:
    if (v16 == &v9[v14])
    {
LABEL_37:
      return 0;
    }

    v11 = 0;
    if (!v14)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (*v16 - 48 >= 0xA)
  {
    goto LABEL_33;
  }

  v16 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v16, v13, buf, &v19);
  if (v16 != v13 && *v16 - 48 <= 9 || __CFADD__(*buf, v19))
  {
    goto LABEL_37;
  }

  v11 = *buf + v19;
  if (!v15)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v11 > 0x8000000000000000)
  {
    goto LABEL_37;
  }

LABEL_35:
  v11 = -v11;
LABEL_36:
  if (v13 != v16)
  {
    goto LABEL_37;
  }

  v18 = *re::foundationSerializationLogObjects(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU8(uint64_t a1, char *a2, _BYTE *a3, char a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x40) != 0)
  {
    v11 = *result;
    if (*result > 0xFF)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_33;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    LODWORD(v10) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v10) = *result;
  }

  v13 = &v9[v10];
  v14 = v9;
  if (v10)
  {
    v10 = v10;
    v14 = v9;
    while (*v14 == 48)
    {
      ++v14;
      if (!--v10)
      {
        goto LABEL_29;
      }
    }
  }

  if (v14 == v13)
  {
LABEL_29:
    v14 = v13;
    goto LABEL_30;
  }

  if (*v14 - 48 >= 0xA)
  {
LABEL_30:
    if (v14 == v9)
    {
LABEL_33:
      return 0;
    }

    LOBYTE(v11) = 0;
    goto LABEL_32;
  }

  v14 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v14, v13, buf, &v16);
  if (v14 != v13 && *v14 - 48 <= 9 || *buf > 0xFFu || 255 - *buf < v16)
  {
    goto LABEL_33;
  }

  LOBYTE(v11) = v16 + buf[0];
LABEL_32:
  if (v13 != v14)
  {
    goto LABEL_33;
  }

  v15 = *re::foundationSerializationLogObjects(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = v9;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU16(uint64_t a1, char *a2, _WORD *a3, char a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x40) != 0)
  {
    v11 = *result;
    if (HIWORD(*result))
    {
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_33;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    LODWORD(v10) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v10) = *result;
  }

  v13 = &v9[v10];
  v14 = v9;
  if (v10)
  {
    v10 = v10;
    v14 = v9;
    while (*v14 == 48)
    {
      ++v14;
      if (!--v10)
      {
        goto LABEL_29;
      }
    }
  }

  if (v14 == v13)
  {
LABEL_29:
    v14 = v13;
    goto LABEL_30;
  }

  if (*v14 - 48 >= 0xA)
  {
LABEL_30:
    if (v14 == v9)
    {
LABEL_33:
      return 0;
    }

    LOWORD(v11) = 0;
    goto LABEL_32;
  }

  v14 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v14, v13, buf, &v16);
  if (v14 != v13 && *v14 - 48 <= 9 || *&buf[2] || 0xFFFF - *buf < v16)
  {
    goto LABEL_33;
  }

  LOWORD(v11) = v16 + *buf;
LABEL_32:
  if (v13 != v14)
  {
    goto LABEL_33;
  }

  v15 = *re::foundationSerializationLogObjects(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = v9;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU32(uint64_t a1, char *a2, _DWORD *a3, char a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x40) != 0)
  {
    v11 = *result;
    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_31;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    LODWORD(v10) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v10) = *result;
  }

  v13 = &v9[v10];
  v14 = v9;
  if (v10)
  {
    v10 = v10;
    v14 = v9;
    while (*v14 == 48)
    {
      ++v14;
      if (!--v10)
      {
        goto LABEL_27;
      }
    }
  }

  if (v14 == v13)
  {
LABEL_27:
    v14 = v13;
    goto LABEL_28;
  }

  if (*v14 - 48 >= 0xA)
  {
LABEL_28:
    if (v14 == v9)
    {
LABEL_31:
      return 0;
    }

    v11 = 0;
    goto LABEL_30;
  }

  v14 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v14, v13, buf, &v16);
  if (v14 != v13 && *v14 - 48 <= 9 || __CFADD__(*buf, v16))
  {
    goto LABEL_31;
  }

  v11 = *buf + v16;
LABEL_30:
  if (v13 != v14)
  {
    goto LABEL_31;
  }

  v15 = *re::foundationSerializationLogObjects(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = v9;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU64(uint64_t a1, char *a2, void *a3, char a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x100) != 0)
  {
    v11 = *result;
    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_31;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    LODWORD(v10) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v10) = *result;
  }

  v13 = &v9[v10];
  v14 = v9;
  if (v10)
  {
    v10 = v10;
    v14 = v9;
    while (*v14 == 48)
    {
      ++v14;
      if (!--v10)
      {
        goto LABEL_27;
      }
    }
  }

  if (v14 == v13)
  {
LABEL_27:
    v14 = v13;
    goto LABEL_28;
  }

  if (*v14 - 48 >= 0xA)
  {
LABEL_28:
    if (v14 == v9)
    {
LABEL_31:
      return 0;
    }

    v11 = 0;
    goto LABEL_30;
  }

  v14 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v14, v13, buf, &v16);
  if (v14 != v13 && *v14 - 48 <= 9 || __CFADD__(*buf, v16))
  {
    goto LABEL_31;
  }

  v11 = *buf + v16;
LABEL_30:
  if (v13 != v14)
  {
    goto LABEL_31;
  }

  v15 = *re::foundationSerializationLogObjects(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeFloat(uint64_t a1, char *a2, float *a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v10 = *(result + 11);
  if ((v10 & 0x400) != 0)
  {
    if ((*(result + 11) & 0x1000) != 0)
    {
      v12 = result;
    }

    else
    {
      v12 = *(result + 1);
    }

    if ((*(result + 11) & 0x1000) != 0)
    {
      v13 = 21 - *(result + 21);
    }

    else
    {
      v13 = *result;
    }

    if (v13 == 9)
    {
      if (!strcasecmp(v12, "-Infinity"))
      {
        *&v14 = -INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 8)
    {
      if (!strcasecmp(v12, "Infinity"))
      {
        *&v14 = INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 3 && !strcasecmp(v12, "NaN"))
    {
      *&v14 = NAN;
LABEL_34:
      Double = *&v14;
      goto LABEL_35;
    }

    if (*(a1 + 232) == 1)
    {
      *v20 = 0;
      v16 = strtof(v12, v20);
      v17 = *v20 != &v12[v13] || v16 == INFINITY;
      Double = v17 ? INFINITY : v16;
      if (Double != INFINITY)
      {
        v18 = *re::foundationSerializationLogObjects(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 136315138;
          *&v20[4] = v12;
          _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", v20, 0xCu);
        }

        goto LABEL_35;
      }
    }

    goto LABEL_30;
  }

  if ((v10 & 0x10) == 0)
  {
LABEL_30:
    return 0;
  }

  Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v9);
LABEL_35:
  if ((a4 & 1) == 0)
  {
    *a3 = Double;
  }

  v19 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v19 - 16);
  return 1;
}
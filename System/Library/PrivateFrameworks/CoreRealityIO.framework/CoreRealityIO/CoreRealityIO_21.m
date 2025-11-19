BOOL realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfMatrix3d,0>(realityio *a1, uint64_t a2, unint64_t a3)
{
  if (!is_mul_ok(a3, 0x48uLL))
  {
    v3 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v5 = "Read size overflowed";
    v6 = &v10;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    return 0;
  }

  v8 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v3 = *(realityio::logObjects(v8) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v5 = "Failed to read";
    v6 = &v9;
    goto LABEL_7;
  }

  return 1;
}

BOOL realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfMatrix4d,0>(realityio *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 57)
  {
    v3 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v5 = "Read size overflowed";
    v6 = &v10;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    return 0;
  }

  v8 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v3 = *(realityio::logObjects(v8) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v5 = "Failed to read";
    v6 = &v9;
    goto LABEL_7;
  }

  return 1;
}

BOOL realityio::replication::details::readVector<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(realityio *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v27, 1uLL);
  if (!result)
  {
    goto LABEL_28;
  }

  v7 = v27;
  if (v27 > 0x7A120)
  {
    v8 = *(realityio::logObjects(result) + 40);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      buf = 134217984;
      buf_4 = 500000;
      _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      result = 0;
    }

    goto LABEL_28;
  }

  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = (v10 - *a3) >> 3;
  if (v27 <= v11)
  {
    if (v27 >= v11)
    {
      goto LABEL_21;
    }

    v16 = &v9[v27];
    while (v10 != v16)
    {
      v18 = *--v10;
      v17 = v18;
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  else
  {
    v12 = v27 - v11;
    v13 = *(a3 + 16);
    if (v12 > (v13 - v10) >> 3)
    {
      v14 = v13 - v9;
      if (v14 >> 2 > v27)
      {
        v7 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v7;
      }

      v30 = a3;
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(a3, v15);
    }

    bzero(*(a3 + 8), 8 * v12);
    v16 = &v10[v12];
  }

  *(a3 + 8) = v16;
LABEL_21:
  v19 = v27;
  if (v27)
  {
    v20 = *a3;
    result = realityio::replication::read(a1, v6, v20);
    if (result)
    {
      v22 = v20 + 1;
      v23 = 1;
      do
      {
        v24 = v23;
        if (v19 == v23)
        {
          break;
        }

        v25 = realityio::replication::read(a1, v21, v22);
        v23 = v24 + 1;
        ++v22;
      }

      while (v25);
      result = v24 >= v19;
    }
  }

  else
  {
    result = 1;
  }

LABEL_28:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475E82D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfToken>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>::_Hash(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 2) - v3;
  if (v5)
  {
    v6 = v5 >> 3;
    do
    {
      v7 = *v3++;
      v2 = (v7 & 0xFFFFFFFFFFFFFFF8) + (((v7 & 0xFFFFFFFFFFFFFFF8) + v2 + ((v7 & 0xFFFFFFFFFFFFFFF8) + v2) * ((v7 & 0xFFFFFFFFFFFFFFF8) + v2)) >> 1);
      --v6;
    }

    while (v6);
  }

  v8 = v1[7];
  v9 = *(*a1 + 5) - v4;
  if (v9)
  {
    v10 = v9 >> 3;
    do
    {
      v11 = *v4++;
      v2 = (v11 & 0xFFFFFFFFFFFFFFF8) + (((v11 & 0xFFFFFFFFFFFFFFF8) + v2 + ((v11 & 0xFFFFFFFFFFFFFFF8) + v2) * ((v11 & 0xFFFFFFFFFFFFFFF8) + v2)) >> 1);
      --v10;
    }

    while (v10);
  }

  v12 = v1[10];
  v13 = v1[8] - v8;
  if (v13)
  {
    v14 = v13 >> 3;
    do
    {
      v15 = *v8++;
      v2 = (v15 & 0xFFFFFFFFFFFFFFF8) + (((v15 & 0xFFFFFFFFFFFFFFF8) + v2 + ((v15 & 0xFFFFFFFFFFFFFFF8) + v2) * ((v15 & 0xFFFFFFFFFFFFFFF8) + v2)) >> 1);
      --v14;
    }

    while (v14);
  }

  v16 = v1[13];
  v17 = v1[14];
  v18 = v1[11] - v12;
  if (v18)
  {
    v19 = v18 >> 3;
    do
    {
      v20 = *v12++;
      v2 = (v20 & 0xFFFFFFFFFFFFFFF8) + (((v20 & 0xFFFFFFFFFFFFFFF8) + v2 + ((v20 & 0xFFFFFFFFFFFFFFF8) + v2) * ((v20 & 0xFFFFFFFFFFFFFFF8) + v2)) >> 1);
      --v19;
    }

    while (v19);
  }

  v22 = v1[16];
  v21 = v1[17];
  if (v17 != v16)
  {
    v23 = v17 - v16;
    do
    {
      v24 = *v16++;
      v2 = (v24 & 0xFFFFFFFFFFFFFFF8) + (((v24 & 0xFFFFFFFFFFFFFFF8) + v2 + ((v24 & 0xFFFFFFFFFFFFFFF8) + v2) * ((v24 & 0xFFFFFFFFFFFFFFF8) + v2)) >> 1);
      --v23;
    }

    while (v23);
  }

  v25 = v21 - v22;
  if (v25)
  {
    v26 = v25 >> 3;
    do
    {
      v27 = *v22++;
      v2 = (v27 & 0xFFFFFFFFFFFFFFF8) + (((v27 & 0xFFFFFFFFFFFFFFF8) + v2 + ((v27 & 0xFFFFFFFFFFFFFFF8) + v2) * ((v27 & 0xFFFFFFFFFFFFFFF8) + v2)) >> 1);
      --v26;
    }

    while (v26);
  }

  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::operator==();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 152));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (result + 128);
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 13;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 10;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 7;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 4;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 1;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v2);
      return MEMORY[0x24C1A91B0](v1, 0x1020C40D6643E80);
    }
  }

  return result;
}

BOOL realityio::replication::details::readVector<std::vector<std::string>>(realityio *a1, uint64_t a2, std::vector<std::string> *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  __sz = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &__sz, 1uLL);
  if (result)
  {
    if (__sz <= 0x7A120)
    {
      std::vector<std::string>::resize(a3, __sz);
      v8 = __sz;
      if (__sz)
      {
        begin = a3->__begin_;
        result = realityio::replication::read(a1, v7, begin);
        if (result)
        {
          v11 = begin + 1;
          v12 = 1;
          do
          {
            v13 = v12;
            if (v8 == v12)
            {
              break;
            }

            v14 = realityio::replication::read(a1, v10, v11);
            v12 = v13 + 1;
            ++v11;
          }

          while (v14);
          result = v13 >= v8;
        }
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      v6 = *(realityio::logObjects(result) + 40);
      result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 134217984;
        v18 = 500000;
        _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
        result = 0;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>::_Hash(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  v4 = *(*a1 + 2);
  v7 = 1;
  v6 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendContiguous<std::string>(&v6, v3, 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendContiguous<std::string>(&v6, *(v1 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 40) - *(v1 + 32)) >> 3));
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendContiguous<std::string>(&v6, *(v1 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 64) - *(v1 + 56)) >> 3));
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendContiguous<std::string>(&v6, *(v1 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 88) - *(v1 + 80)) >> 3));
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendContiguous<std::string>(&v6, *(v1 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 112) - *(v1 + 104)) >> 3));
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendContiguous<std::string>(&v6, *(v1 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 136) - *(v1 + 128)) >> 3));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v6));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::operator==();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 152));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (result + 128);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 13;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 10;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 7;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 4;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 1;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
      return MEMORY[0x24C1A91B0](v1, 0x1020C40D6643E80);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 32, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 56, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 104, *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 128, *(a2 + 128), *(a2 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 136) - *(a2 + 128)) >> 3));
  return a1;
}

void sub_2475E8D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::~SdfListOp(void **a1)
{
  v3 = a1 + 16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

BOOL realityio::replication::details::readVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(realityio *a1, uint64_t a2, void **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v16, 1uLL);
  if (result)
  {
    if (v16 <= 0x7A120)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::resize(a3, v16);
      v8 = v16;
      if (v16)
      {
        v9 = *a3;
        result = realityio::replication::read(a1, v7, v9);
        if (result)
        {
          v11 = v9 + 8;
          v12 = 1;
          do
          {
            v13 = v12;
            if (v8 == v12)
            {
              break;
            }

            v14 = realityio::replication::read(a1, v10, v11);
            v12 = v13 + 1;
            v11 += 8;
          }

          while (v14);
          result = v13 >= v8;
        }
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      v6 = *(realityio::logObjects(result) + 40);
      result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 134217984;
        v18 = 500000;
        _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
        result = 0;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL realityio::replication::details::readVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>>(realityio *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v6 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v29, 1uLL);
  if (!v6)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  if (v29 > 0x7A120)
  {
    v8 = *(realityio::logObjects(v6) + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
      *(__p.__r_.__value_.__r.__words + 4) = 500000;
      _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &__p, 0xCu);
    }

    goto LABEL_5;
  }

  v12 = *a3;
  v13 = a3[1];
  v14 = v13 - *a3;
  v15 = 0x6DB6DB6DB6DB6DB7 * (v14 >> 3);
  v16 = v29 - v15;
  if (v29 <= v15)
  {
    if (v29 < v15)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__base_destruct_at_end[abi:ne200100](a3, v12 + 56 * v29);
    }
  }

  else
  {
    v17 = a3[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v17 - v13) >> 3) < v16)
    {
      v18 = 0x6DB6DB6DB6DB6DB7 * ((v17 - v12) >> 3);
      v19 = 2 * v18;
      if (2 * v18 <= v29)
      {
        v19 = v29;
      }

      if (v18 >= 0x249249249249249)
      {
        v20 = 0x492492492492492;
      }

      else
      {
        v20 = v19;
      }

      v35 = a3;
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>>(a3, v20);
    }

    v21 = v13 + 56 * v16;
    v22 = 56 * v29 - 8 * (v14 >> 3);
    do
    {
      std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference>(v13);
      v13 += 56;
      v22 -= 56;
    }

    while (v22);
    a3[1] = v21;
  }

  if (v29)
  {
    v23 = v29 - 1;
    v24 = *a3 + 48;
    do
    {
      memset(&__p, 0, sizeof(__p));
      if (realityio::replication::read(a1, v7, &__p))
      {
        pxrInternal__aapl__pxrReserved__::SdfReference::SetAssetPath(v24 - 48);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        if (realityio::replication::read(a1, v25, &v32) && (pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v24 - 24, &v32), pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v24 - 20, &v33), pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v31, 0.0, 1.0), realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, &v31, 1uLL)))
        {
          *(v24 - 16) = v31;
          v30 = 0;
          v9 = realityio::replication::details::readMap<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1, a2);
          if (v9)
          {
            pxrInternal__aapl__pxrReserved__::VtDictionary::operator=();
          }

          v26 = v30;
          v30 = 0;
          if (v26)
          {
            std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v26, *(v26 + 8));
            MEMORY[0x24C1A91B0](v26, 0x1020C4062D53EE8);
          }
        }

        else
        {
          v9 = 0;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
      }

      else
      {
        v9 = 0;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v28 = v23-- != 0;
      v24 += 56;
    }

    while (v9 && v28);
  }

  else
  {
    v9 = 1;
  }

LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference>(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v4, 0.0, 1.0);
  v3 = 0;
  MEMORY[0x24C1A4E70](a1, __p, &v5, v4, &v3);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v2, *(v2 + 8));
    MEMORY[0x24C1A91B0](v2, 0x1020C4062D53EE8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2475E94B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a10);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::SdfReference*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 28;
    do
    {
      v9 = *(v8 - 28);
      *(v4 + 16) = *(v8 - 12);
      *v4 = v9;
      *(v8 - 12) = 0;
      *(v8 - 20) = 0;
      *(v8 - 28) = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 24), (v8 - 4));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 28), v8);
      *(v4 + 32) = *(v8 + 4);
      v10 = *(v8 + 20);
      *(v8 + 20) = 0;
      *(v4 + 48) = v10;
      v4 = v16 + 56;
      v16 += 56;
      v11 = v8 + 28;
      v8 += 56;
    }

    while (v11 != a3);
    v14 = 1;
    do
    {
      std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference,0>(a1, v6);
      v6 += 56;
    }

    while (v6 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::SdfReference*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a2 + 48) = 0;
  if (v3)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v3, *(v3 + 8));
    MEMORY[0x24C1A91B0](v3, 0x1020C4062D53EE8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::SdfReference*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::SdfReference*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::SdfReference*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfReference>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfReference>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfReference>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 56;
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference,0>(v5, v4 - 56);
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference,0>(a1, i))
  {
    i -= 56;
  }

  *(a1 + 8) = a2;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>::_Hash(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  v4 = *(*a1 + 2) - v3;
  if (v4)
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 3);
    do
    {
      --v5;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>(&v28, v3, (v3 + 24), (v3 + 32), (v3 + 48));
      v6 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v6 + ((v6 + v2 + (v6 + v2) * (v6 + v2)) >> 1);
      v3 += 56;
    }

    while (v5);
  }

  v7 = v1[4];
  v8 = v1[5] - v7;
  if (v8)
  {
    v9 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
    do
    {
      --v9;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>(&v28, v7, (v7 + 24), (v7 + 32), (v7 + 48));
      v10 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v10 + ((v10 + v2 + (v10 + v2) * (v10 + v2)) >> 1);
      v7 += 56;
    }

    while (v9);
  }

  v11 = v1[7];
  v12 = v1[8] - v11;
  if (v12)
  {
    v13 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
    do
    {
      --v13;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>(&v28, v11, (v11 + 24), (v11 + 32), (v11 + 48));
      v14 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v14 + ((v14 + v2 + (v14 + v2) * (v14 + v2)) >> 1);
      v11 += 56;
    }

    while (v13);
  }

  v15 = v1[10];
  v16 = v1[11] - v15;
  if (v16)
  {
    v17 = 0x6DB6DB6DB6DB6DB7 * (v16 >> 3);
    do
    {
      --v17;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>(&v28, v15, (v15 + 24), (v15 + 32), (v15 + 48));
      v18 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v18 + ((v18 + v2 + (v18 + v2) * (v18 + v2)) >> 1);
      v15 += 56;
    }

    while (v17);
  }

  v19 = v1[13];
  v20 = v1[14] - v19;
  if (v20)
  {
    v21 = 0x6DB6DB6DB6DB6DB7 * (v20 >> 3);
    do
    {
      --v21;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>(&v28, v19, (v19 + 24), (v19 + 32), (v19 + 48));
      v22 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v22 + ((v22 + v2 + (v22 + v2) * (v22 + v2)) >> 1);
      v19 += 56;
    }

    while (v21);
  }

  v23 = v1[16];
  v24 = v1[17] - v23;
  if (v24)
  {
    v25 = 0x6DB6DB6DB6DB6DB7 * (v24 >> 3);
    do
    {
      --v25;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>(&v28, v23, (v23 + 24), (v23 + 32), (v23 + 48));
      v26 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v26 + ((v26 + v2 + (v26 + v2) * (v26 + v2)) >> 1);
      v23 += 56;
    }

    while (v25);
  }

  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::operator==();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 152));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (result + 128);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 13;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 10;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 7;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 4;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 1;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v2);
      return MEMORY[0x24C1A91B0](v1, 0x1020C40D6643E80);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SdfListOp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference*,pxrInternal__aapl__pxrReserved__::SdfReference*>(a1 + 8, *(a2 + 8), *(a2 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference*,pxrInternal__aapl__pxrReserved__::SdfReference*>(a1 + 32, *(a2 + 32), *(a2 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference*,pxrInternal__aapl__pxrReserved__::SdfReference*>(a1 + 56, *(a2 + 56), *(a2 + 64), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference*,pxrInternal__aapl__pxrReserved__::SdfReference*>(a1 + 80, *(a2 + 80), *(a2 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference*,pxrInternal__aapl__pxrReserved__::SdfReference*>(a1 + 104, *(a2 + 104), *(a2 + 112), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference*,pxrInternal__aapl__pxrReserved__::SdfReference*>(a1 + 128, *(a2 + 128), *(a2 + 136), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 136) - *(a2 + 128)) >> 3));
  return a1;
}

void sub_2475E9EC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfReference*,pxrInternal__aapl__pxrReserved__::SdfReference*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>>(result, a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void **pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::~SdfListOp(void **a1)
{
  v3 = a1 + 16;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 13;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 10;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 7;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 4;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 1;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

BOOL realityio::replication::details::readVector<std::vector<int>>(realityio *a1, std::vector<unsigned int> *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  __sz = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &__sz, 1uLL);
  if (result)
  {
    if (__sz <= 0x7A120)
    {
      std::vector<int>::resize(a2, __sz);
      result = realityio::replication::details::readBuffer<int,0>(a1, a2->__begin_, __sz);
    }

    else
    {
      v5 = *(realityio::logObjects(result) + 40);
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 134217984;
        v9 = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
        result = 0;
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>::_Hash(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  v4 = *(*a1 + 2);
  v12 = 1;
  v11 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, v3);
  v5 = *(v1 + 40);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 32));
  v6 = *(v1 + 64);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 56));
  v7 = *(v1 + 88);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 80));
  v8 = *(v1 + 112);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 104));
  v9 = *(v1 + 136);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 128));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v11));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::operator==();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 152));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = *(result + 128);
      if (v2)
      {
        v1[17] = v2;
        operator delete(v2);
      }

      v3 = v1[13];
      if (v3)
      {
        v1[14] = v3;
        operator delete(v3);
      }

      v4 = v1[10];
      if (v4)
      {
        v1[11] = v4;
        operator delete(v4);
      }

      v5 = v1[7];
      if (v5)
      {
        v1[8] = v5;
        operator delete(v5);
      }

      v6 = v1[4];
      if (v6)
      {
        v1[5] = v6;
        operator delete(v6);
      }

      v7 = v1[1];
      if (v7)
      {
        v1[2] = v7;
        operator delete(v7);
      }

      JUMPOUT(0x24C1A91B0);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SdfListOp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  return a1;
}

void sub_2475EA6F8(_Unwind_Exception *exception_object)
{
  v8 = *v6;
  if (*v6)
  {
    v1[14] = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    v1[11] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v1[8] = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    v1[5] = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    v1[2] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2475EA7D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<int>::~SdfListOp(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    a1[8] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
  }

  v7 = a1[1];
  if (v7)
  {
    a1[2] = v7;
    operator delete(v7);
  }

  return a1;
}

BOOL realityio::replication::details::readVector<std::vector<long long>>(realityio *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v16, 1uLL);
  if (!result)
  {
    goto LABEL_18;
  }

  v5 = v16;
  if (v16 <= 0x7A120)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = (v8 - *a2) >> 3;
    if (v16 <= v9)
    {
      if (v16 >= v9)
      {
LABEL_17:
        result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, v7, v16);
        goto LABEL_18;
      }

      v14 = v7 + 8 * v16;
    }

    else
    {
      v10 = v16 - v9;
      v11 = *(a2 + 16);
      if (v10 > (v11 - v8) >> 3)
      {
        v12 = v11 - v7;
        if (v12 >> 2 > v16)
        {
          v5 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v5;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v13);
      }

      bzero(*(a2 + 8), 8 * v10);
      v14 = v8 + 8 * v10;
    }

    *(a2 + 8) = v14;
    goto LABEL_17;
  }

  v6 = *(realityio::logObjects(result) + 40);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 134217984;
    v18 = 500000;
    _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
    result = 0;
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>::_Hash(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  v4 = *(*a1 + 2);
  v12 = 1;
  v11 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, v3);
  v5 = *(v1 + 40);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 32));
  v6 = *(v1 + 64);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 56));
  v7 = *(v1 + 88);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 80));
  v8 = *(v1 + 112);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 104));
  v9 = *(v1 + 136);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 128));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v11));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::operator==();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 152));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SdfListOp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  return a1;
}

void sub_2475EAE80(_Unwind_Exception *exception_object)
{
  v8 = *v6;
  if (*v6)
  {
    v1[14] = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    v1[11] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v1[8] = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    v1[5] = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    v1[2] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2475EAF78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>::_Hash(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  v4 = *(*a1 + 2);
  v12 = 1;
  v11 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, v3);
  v5 = *(v1 + 40);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 32));
  v6 = *(v1 + 64);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 56));
  v7 = *(v1 + 88);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 80));
  v8 = *(v1 + 112);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 104));
  v9 = *(v1 + 136);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 128));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v11));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::operator==();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 152));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SdfListOp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  return a1;
}

void sub_2475EB398(_Unwind_Exception *exception_object)
{
  v8 = *v6;
  if (*v6)
  {
    v1[14] = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    v1[11] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v1[8] = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    v1[5] = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    v1[2] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::replication::details::readVector<std::vector<unsigned long long>>(realityio *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v16, 1uLL);
  if (!result)
  {
    goto LABEL_18;
  }

  v5 = v16;
  if (v16 <= 0x7A120)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = (v8 - *a2) >> 3;
    if (v16 <= v9)
    {
      if (v16 >= v9)
      {
LABEL_17:
        result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, v7, v16);
        goto LABEL_18;
      }

      v14 = v7 + 8 * v16;
    }

    else
    {
      v10 = v16 - v9;
      v11 = *(a2 + 16);
      if (v10 > (v11 - v8) >> 3)
      {
        v12 = v11 - v7;
        if (v12 >> 2 > v16)
        {
          v5 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v5;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v13);
      }

      bzero(*(a2 + 8), 8 * v10);
      v14 = v8 + 8 * v10;
    }

    *(a2 + 8) = v14;
    goto LABEL_17;
  }

  v6 = *(realityio::logObjects(result) + 40);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 134217984;
    v18 = 500000;
    _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
    result = 0;
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>::_Hash(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  v4 = *(*a1 + 2);
  v12 = 1;
  v11 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, v3);
  v5 = *(v1 + 40);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 32));
  v6 = *(v1 + 64);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 56));
  v7 = *(v1 + 88);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 80));
  v8 = *(v1 + 112);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 104));
  v9 = *(v1 + 136);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v11, *(v1 + 128));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v11));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::operator==();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 152));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SdfListOp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  return a1;
}

void sub_2475EB9D8(_Unwind_Exception *exception_object)
{
  v8 = *v6;
  if (*v6)
  {
    v1[14] = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    v1[11] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v1[8] = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    v1[5] = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    v1[2] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2475EBAD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>::_DecrementIfValid(result);
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>::_Equal(uint64_t **a1, uint64_t ***a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = **a2;
  if (v2 - v3 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    v7 = v6 ^ *(v5 - 8);
    result = v7 < 8;
    v9 = v7 > 7 || v5 == v2;
    v5 += 8;
  }

  while (!v9);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>::_EqualPtr(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *a2;
  if (v2 - v3 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    v7 = v6 ^ *(v5 - 8);
    result = v7 < 8;
    v9 = v7 > 7 || v5 == v2;
    v5 += 8;
  }

  while (!v9);
  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v2);
      return MEMORY[0x24C1A91B0](v1, 0x1020C4055CCDE27);
    }
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfHash::operator()<std::vector<pxrInternal__aapl__pxrReserved__::TfToken> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 3;
    do
    {
      v7 = *v2++;
      v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      if (v5)
      {
        v8 += (v8 + v4 + (v8 + v4) * (v8 + v4)) >> 1;
      }

      v5 = 1;
      v4 = v8;
      --v6;
    }

    while (v6);
    v9 = 0x9E3779B97F4A7C55 * v8;
  }

  else
  {
    v9 = 0;
  }

  return bswap64(v9);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::vector<pxrInternal__aapl__pxrReserved__::TfToken> const&>();
  }

  return *a1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfSpecifier,pxrInternal__aapl__pxrReserved__::SdfSpecifier,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfSpecifier>>::_GetProxiedAsVtValue@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfSpecifier>(void)::ti + 3;
  *a2 = *result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtStreamOut<pxrInternal__aapl__pxrReserved__::SdfSpecifier>(unsigned int *a1, void *a2)
{
  v3 = *a1;
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName();
  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_2475EC168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPermission,pxrInternal__aapl__pxrReserved__::SdfPermission,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPermission>>::_StreamOut(unsigned int *a1, void *a2)
{
  v3 = *a1;
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName();
  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_2475EC278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPermission,pxrInternal__aapl__pxrReserved__::SdfPermission,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPermission>>::_GetProxiedAsVtValue@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPermission>(void)::ti + 3;
  *a2 = *result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfVariability,pxrInternal__aapl__pxrReserved__::SdfVariability,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfVariability>>::_StreamOut(unsigned int *a1, void *a2)
{
  v3 = *a1;
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName();
  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_2475EC43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfVariability,pxrInternal__aapl__pxrReserved__::SdfVariability,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfVariability>>::_GetProxiedAsVtValue@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfVariability>(void)::ti + 3;
  *a2 = *result;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<std::string,std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<std::string,std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<std::string,std::string>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<std::string,std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<std::string,std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<std::string,std::string>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<std::string,std::string>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<std::string,std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<std::string,std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<std::string,std::string>>>::_Hash(void **a1)
{
  v1 = *a1;
  v20 = 0;
  v21 = 0;
  v4 = *v1;
  v2 = v1 + 1;
  v3 = v4;
  if (v4 == v2)
  {
    v18 = 0;
  }

  else
  {
    do
    {
      v5 = v3[1];
      v6 = v3;
      if (v5)
      {
        do
        {
          v7 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v6[2];
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (!v8);
      }

      v9 = *(v3 + 55);
      if (v9 >= 0)
      {
        v10 = (v3 + 4);
      }

      else
      {
        v10 = v3[4];
      }

      if (v9 >= 0)
      {
        v11 = *(v3 + 55);
      }

      else
      {
        v11 = v3[5];
      }

      pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v20, v10);
      v14 = v3[7];
      v13 = (v3 + 7);
      v12 = v14;
      v15 = v13[23];
      if (v15 >= 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = v12;
      }

      if (v15 >= 0)
      {
        v17 = *(v13 + 23);
      }

      else
      {
        v17 = *(v13 + 1);
      }

      pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v20, v16);
      v3 = v7;
    }

    while (v7 != v2);
    v18 = 0x9E3779B97F4A7C55 * v20;
  }

  return bswap64(v18);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<std::string,std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<std::string,std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<std::string,std::string>>>::_Equal(void ***a1, void ***a2)
{
  if ((*a1)[2] == (*a2)[2])
  {
    return std::equal[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(**a1, *a1 + 1, **a2);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<std::string,std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<std::string,std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<std::string,std::string>>>::_EqualPtr(void ***a1, void **a2)
{
  if ((*a1)[2] == a2[2])
  {
    return std::equal[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(**a1, *a1 + 1, *a2);
  }

  else
  {
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<std::string,std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<std::string,std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<std::string,std::string>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 24));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<std::string,std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<std::string,std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<std::string,std::string>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::map<std::string,std::string>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<std::string,std::string>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<std::string,std::string>>>::_DecrementIfValid(uint64_t result)
{
  if (result && atomic_fetch_add_explicit((result + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(result, *(result + 8));

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t std::equal[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a1;
  while (1)
  {
    v7 = *(v6 + 55);
    if (v7 >= 0)
    {
      v8 = *(v6 + 55);
    }

    else
    {
      v8 = v6[5];
    }

    v9 = *(a3 + 55);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = a3[5];
    }

    if (v8 != v9)
    {
      break;
    }

    v11 = v7 >= 0 ? v6 + 4 : v6[4];
    v12 = v10 >= 0 ? a3 + 4 : a3[4];
    if (memcmp(v11, v12, v8))
    {
      break;
    }

    v13 = *(v6 + 79);
    if (v13 >= 0)
    {
      v14 = *(v6 + 79);
    }

    else
    {
      v14 = v6[8];
    }

    v15 = *(a3 + 79);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = a3[8];
    }

    if (v14 != v15)
    {
      break;
    }

    v17 = v13 >= 0 ? v6 + 7 : v6[7];
    v18 = v16 >= 0 ? a3 + 7 : a3[7];
    if (memcmp(v17, v18, v14))
    {
      break;
    }

    v19 = v6[1];
    v20 = v6;
    if (v19)
    {
      do
      {
        v6 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v6 = v20[2];
        v21 = *v6 == v20;
        v20 = v6;
      }

      while (!v21);
    }

    v22 = a3[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v23 = a3[2];
        v21 = *v23 == a3;
        a3 = v23;
      }

      while (!v21);
    }

    a3 = v23;
    if (v6 == a2)
    {
      return 1;
    }
  }

  return 0;
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, v3, v5 + 4);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, void *a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(void *a1, void *a2, uint64_t *a3, void *a4, const void **a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2 || std::__map_value_compare<std::string,std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::less<std::string>,true>::operator()[abi:ne200100](a5, a2 + 4))
  {
    v11 = *a2;
    if (*a1 == a2)
    {
      v13 = a2;
LABEL_17:
      if (v11)
      {
        *a3 = v13;
        return (v13 + 1);
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v11)
    {
      v12 = *a2;
      do
      {
        v13 = v12;
        v12 = v12[1];
      }

      while (v12);
    }

    else
    {
      v16 = a2;
      do
      {
        v13 = v16[2];
        v17 = *v13 == v16;
        v16 = v13;
      }

      while (v17);
    }

    if (std::__map_value_compare<std::string,std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::less<std::string>,true>::operator()[abi:ne200100](v13 + 4, a5))
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::less<std::string>,true>::operator()[abi:ne200100](a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v14 = a2[1];
    if (v14)
    {
      v15 = a2[1];
      do
      {
        a4 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      v18 = a2;
      do
      {
        a4 = v18[2];
        v17 = *a4 == v18;
        v18 = a4;
      }

      while (!v17);
    }

    if (a4 == v9 || std::__map_value_compare<std::string,std::__value_type<std::string,realityio::LiveSessionPrimDescriptor>,std::less<std::string>,true>::operator()[abi:ne200100](a5, a4 + 4))
    {
      if (v14)
      {
        *a3 = a4;
      }

      else
      {
        *a3 = a2;
        return (a2 + 1);
      }

      return a4;
    }
  }

  return std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, a3, a5);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPayload,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfPayload>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPayload>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPayload,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfPayload>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPayload>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfPayload>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPayload,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfPayload>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPayload>>::_Hash(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(&v3, v1, (v1 + 24), (v1 + 32));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPayload,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfPayload>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPayload>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 48));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPayload,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfPayload>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPayload>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPayload>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPayload>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfPayload>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 48), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v1 + 24);
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      JUMPOUT(0x24C1A91B0);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, const char *a2, unsigned int *a3, pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a4)
{
  v7 = *(a2 + 1);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, a2);
  v9 = *a3;
  v8 = a3[1];
  if (*(a1 + 8))
  {
    v9 += (*a1 + v9 + (*a1 + v9) * (*a1 + v9)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8 + ((v9 + v8 + (v9 + v8) * (v9 + v8)) >> 1);
  result = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetHash(a4);
  if (*(a1 + 8))
  {
    result += (*a1 + result + (*a1 + result) * (*a1 + result)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = result;
  return result;
}

std::string *pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfPayload>::_Counted(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&this[1], a2 + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this[1].__r_.__value_.__r.__words + 1, a2 + 7);
  *&this[1].__r_.__value_.__r.__words[1] = a2[2];
  atomic_store(0, &this[2]);
  return this;
}

void pxrInternal__aapl__pxrReserved__::SdfPayload::~SdfPayload(void **this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 3));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<double>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<double>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<double>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<double>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<double>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<double>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<double>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<double>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<double>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<double>>>::_Hash(double ***a1)
{
  v1 = **a1;
  v2 = (*a1)[1] - v1;
  if (v2)
  {
    v3 = 0.0;
    v4 = 0;
    v5 = v2 >> 3;
    do
    {
      v6 = *v1++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      v8 = v7;
      if (v4)
      {
        *&v8 = *&v7 + ((*&v3 + *&v7 + (*&v3 + *&v7) * (*&v3 + *&v7)) >> 1);
      }

      v4 = 1;
      v3 = v8;
      --v5;
    }

    while (v5);
    v9 = 0x9E3779B97F4A7C55 * *&v8;
  }

  else
  {
    v9 = 0;
  }

  return bswap64(v9);
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<double>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<double>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<double>>>::_Equal(uint64_t **a1, double ***a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = **a2;
  if (v2 - v3 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<double>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<double>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<double>>>::_EqualPtr(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *a2;
  if (v2 - v3 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<double>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<double>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<double>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 24));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<double>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<double>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<double>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<double>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<double>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<double>>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = *result;
      if (*v1)
      {
        v1[1] = v2;
        operator delete(v2);
      }

      JUMPOUT(0x24C1A91B0);
    }
  }

  return result;
}

void std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2475ED63C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>::_Hash(pxrInternal__aapl__pxrReserved__::SdfLayerOffset ***a1)
{
  v1 = **a1;
  v2 = (*a1)[1] - v1;
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v2 >> 4;
    do
    {
      Hash = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetHash(v1);
      if (v4)
      {
        Hash += (Hash + v3 + (Hash + v3) * (Hash + v3)) >> 1;
      }

      v1 = (v1 + 16);
      v4 = 1;
      v3 = Hash;
      --v5;
    }

    while (v5);
    v2 = 0x9E3779B97F4A7C55 * Hash;
  }

  return bswap64(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>::_Equal(uint64_t **a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = **a2;
  if (v3 - v2 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==();
    if (!result)
    {
      break;
    }

    v2 += 16;
    v4 += 16;
  }

  while (v2 != v3);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>::_EqualPtr(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = *a2;
  if (v3 - v2 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==();
    if (!result)
    {
      break;
    }

    v2 += 16;
    v4 += 16;
  }

  while (v2 != v3);
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 24));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = *result;
      if (*v1)
      {
        v1[1] = v2;
        operator delete(v2);
      }

      JUMPOUT(0x24C1A91B0);
    }
  }

  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2475EDB60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<std::string>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<std::string>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<std::string>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<std::string>>>::_Hash(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendContiguous<std::string>(&v3, *v1, 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 8) - *v1) >> 3));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<std::string>>>::_Equal(const void ****a1, const void ****a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = **a2;
  if (v3 - v2 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = std::equal_to<std::string>::operator()[abi:ne200100](&v6, v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 3;
    v4 += 3;
  }

  while (v2 != v3);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<std::string>>>::_EqualPtr(const void ****a1, uint64_t a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = *a2;
  if (v3 - v2 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = std::equal_to<std::string>::operator()[abi:ne200100](&v6, v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 3;
    v4 += 3;
  }

  while (v2 != v3);
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<std::string>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 24));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<std::string>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<std::string>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<std::string>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<std::string>>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = result;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
      return MEMORY[0x24C1A91B0](v1, 0x1020C4055CCDE27);
    }
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::_DecrementIfValid(0);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  JUMPOUT(0x24C1A7C50);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 16));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_PlaceCopy();
}

atomic_uint *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::_DecrementIfValid(atomic_uint *result)
{
  if (result && atomic_fetch_add_explicit(result + 4, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v2 = v1;
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::replication::details::readVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(realityio *a1, uint64_t a2, uint64_t *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v23, 1uLL);
  if (result)
  {
    if (v23 <= 0x7A120)
    {
      v8 = *a3;
      v9 = a3[1];
      v10 = (v9 - *a3) >> 4;
      if (v23 <= v10)
      {
        if (v23 < v10)
        {
          v15 = (v8 + 16 * v23);
          while (v9 != v15)
          {
            v9 = (v9 - 16);
            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v9);
          }

          a3[1] = v15;
        }
      }

      else
      {
        v11 = a3[2];
        if (v23 - v10 > (v11 - v9) >> 4)
        {
          v12 = v11 - v8;
          v13 = v12 >> 3;
          if (v12 >> 3 <= v23)
          {
            v13 = v23;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF0)
          {
            v14 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          v26 = a3;
          std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(v14);
        }

        v16 = v9 + 16 * (v23 - v10);
        v17 = 16 * v23 - 16 * v10;
        do
        {
          pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v9);
          v9 = (v9 + 16);
          v17 -= 16;
        }

        while (v17);
        a3[1] = v16;
      }

      if (v23)
      {
        v18 = *a3;
        v19 = v23 - 1;
        do
        {
          result = realityio::replication::read(a1, a2, v18);
          v21 = v19-- != 0;
          v18 += 16;
        }

        while ((result & v21 & 1) != 0);
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      v7 = *(realityio::logObjects(result) + 40);
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (result)
      {
        buf = 134217984;
        buf_4 = 500000;
        _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
        result = 0;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475EE6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>::_Hash(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  v4 = v1[2] - v3;
  if (v4)
  {
    v5 = v4 >> 4;
    do
    {
      --v5;
      v6 = (v3 + 16);
      Hash = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(v3);
      v2 = Hash + ((Hash + v2 + (Hash + v2) * (Hash + v2)) >> 1);
      v3 = v6;
    }

    while (v5);
  }

  v8 = v1[4];
  v9 = v1[5] - v8;
  if (v9)
  {
    v10 = v9 >> 4;
    do
    {
      --v10;
      v11 = (v8 + 16);
      v12 = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(v8);
      v2 = v12 + ((v12 + v2 + (v12 + v2) * (v12 + v2)) >> 1);
      v8 = v11;
    }

    while (v10);
  }

  v13 = v1[7];
  v14 = v1[8] - v13;
  if (v14)
  {
    v15 = v14 >> 4;
    do
    {
      --v15;
      v16 = (v13 + 16);
      v17 = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(v13);
      v2 = v17 + ((v17 + v2 + (v17 + v2) * (v17 + v2)) >> 1);
      v13 = v16;
    }

    while (v15);
  }

  v18 = v1[10];
  v19 = v1[11] - v18;
  if (v19)
  {
    v20 = v19 >> 4;
    do
    {
      --v20;
      v21 = (v18 + 16);
      v22 = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(v18);
      v2 = v22 + ((v22 + v2 + (v22 + v2) * (v22 + v2)) >> 1);
      v18 = v21;
    }

    while (v20);
  }

  v23 = v1[13];
  v24 = v1[14] - v23;
  if (v24)
  {
    v25 = v24 >> 4;
    do
    {
      --v25;
      v26 = (v23 + 16);
      v27 = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(v23);
      v2 = v27 + ((v27 + v2 + (v27 + v2) * (v27 + v2)) >> 1);
      v23 = v26;
    }

    while (v25);
  }

  v28 = v1[16];
  v29 = v1[17] - v28;
  if (v29)
  {
    v30 = v29 >> 4;
    do
    {
      --v30;
      v31 = (v28 + 16);
      v32 = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(v28);
      v2 = v32 + ((v32 + v2 + (v32 + v2) * (v32 + v2)) >> 1);
      v28 = v31;
    }

    while (v30);
  }

  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::operator==();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 152));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (result + 128);
      std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 13;
      std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 10;
      std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 7;
      std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 4;
      std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 1;
      std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v2);

      JUMPOUT(0x24C1A91B0);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SdfListOp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*,pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 4);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*,pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*,pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*,pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 4);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*,pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*,pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 4);
  return a1;
}

void sub_2475EEC9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*,pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void **pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::~SdfListOp(void **a1)
{
  v3 = a1 + 16;
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 13;
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 10;
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 7;
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 4;
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 1;
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

BOOL realityio::replication::details::readVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>(realityio *a1, uint64_t a2, uint64_t *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v27, 1uLL);
  if (result)
  {
    if (v27 <= 0x7A120)
    {
      v8 = *a3;
      v9 = a3[1];
      v10 = v9 - *a3;
      v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 4);
      v12 = v27 - v11;
      if (v27 <= v11)
      {
        if (v27 < v11)
        {
          v17 = v8 + 48 * v27;
          while (v9 != v17)
          {
            v9 -= 48;
            std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPayload>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload,0>(v9);
          }

          a3[1] = v17;
        }
      }

      else
      {
        v13 = a3[2];
        if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 4) < v12)
        {
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 4);
          v15 = 2 * v14;
          if (2 * v14 <= v27)
          {
            v15 = v27;
          }

          if (v14 >= 0x2AAAAAAAAAAAAAALL)
          {
            v16 = 0x555555555555555;
          }

          else
          {
            v16 = v15;
          }

          v30 = a3;
          std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPayload>>(v16);
        }

        v18 = v9 + 48 * v12;
        v19 = 48 * v27 - 16 * (v10 >> 4);
        do
        {
          std::allocator<pxrInternal__aapl__pxrReserved__::SdfPayload>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload>(v9);
          v9 += 48;
          v19 -= 48;
        }

        while (v19);
        a3[1] = v18;
      }

      v20 = v27;
      if (v27)
      {
        v21 = *a3;
        result = realityio::replication::read(a1, a2, v21);
        if (result)
        {
          v22 = v21 + 48;
          v23 = 1;
          do
          {
            v24 = v23;
            if (v20 == v23)
            {
              break;
            }

            v25 = realityio::replication::read(a1, a2, v22);
            v23 = v24 + 1;
            v22 += 48;
          }

          while (v25);
          result = v24 >= v20;
        }
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      v7 = *(realityio::logObjects(result) + 40);
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (result)
      {
        buf = 134217984;
        buf_4 = 500000;
        _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
        result = 0;
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475EF214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPayload>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<pxrInternal__aapl__pxrReserved__::SdfPayload>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload>(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v2, 0.0, 1.0);
  MEMORY[0x24C1A4C40](a1, __p, &v3, v2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2475EF2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPayload>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPayload>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPayload>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPayload>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPayload>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>::_Hash(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  v4 = *(*a1 + 2) - v3;
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4);
    do
    {
      --v5;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(&v28, v3, (v3 + 24), (v3 + 32));
      v6 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v6 + ((v6 + v2 + (v6 + v2) * (v6 + v2)) >> 1);
      v3 += 48;
    }

    while (v5);
  }

  v7 = v1[4];
  v8 = v1[5] - v7;
  if (v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
    do
    {
      --v9;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(&v28, v7, (v7 + 24), (v7 + 32));
      v10 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v10 + ((v10 + v2 + (v10 + v2) * (v10 + v2)) >> 1);
      v7 += 48;
    }

    while (v9);
  }

  v11 = v1[7];
  v12 = v1[8] - v11;
  if (v12)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
    do
    {
      --v13;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(&v28, v11, (v11 + 24), (v11 + 32));
      v14 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v14 + ((v14 + v2 + (v14 + v2) * (v14 + v2)) >> 1);
      v11 += 48;
    }

    while (v13);
  }

  v15 = v1[10];
  v16 = v1[11] - v15;
  if (v16)
  {
    v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 4);
    do
    {
      --v17;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(&v28, v15, (v15 + 24), (v15 + 32));
      v18 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v18 + ((v18 + v2 + (v18 + v2) * (v18 + v2)) >> 1);
      v15 += 48;
    }

    while (v17);
  }

  v19 = v1[13];
  v20 = v1[14] - v19;
  if (v20)
  {
    v21 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 4);
    do
    {
      --v21;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(&v28, v19, (v19 + 24), (v19 + 32));
      v22 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v22 + ((v22 + v2 + (v22 + v2) * (v22 + v2)) >> 1);
      v19 += 48;
    }

    while (v21);
  }

  v23 = v1[16];
  v24 = v1[17] - v23;
  if (v24)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 4);
    do
    {
      --v25;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(&v28, v23, (v23 + 24), (v23 + 32));
      v26 = bswap64(0x9E3779B97F4A7C55 * v28);
      v2 = v26 + ((v26 + v2 + (v26 + v2) * (v26 + v2)) >> 1);
      v23 += 48;
    }

    while (v25);
  }

  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::operator==();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 152));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (result + 128);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 13;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 10;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 7;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 4;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = v1 + 1;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v2);

      JUMPOUT(0x24C1A91B0);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SdfListOp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload*,pxrInternal__aapl__pxrReserved__::SdfPayload*>(a1 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload*,pxrInternal__aapl__pxrReserved__::SdfPayload*>(a1 + 32, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 4));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload*,pxrInternal__aapl__pxrReserved__::SdfPayload*>(a1 + 56, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 4));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload*,pxrInternal__aapl__pxrReserved__::SdfPayload*>(a1 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 4));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload*,pxrInternal__aapl__pxrReserved__::SdfPayload*>(a1 + 104, *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 4));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload*,pxrInternal__aapl__pxrReserved__::SdfPayload*>(a1 + 128, *(a2 + 128), *(a2 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 136) - *(a2 + 128)) >> 4));
  return a1;
}

void sub_2475EFAE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPayload*,pxrInternal__aapl__pxrReserved__::SdfPayload*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPayload>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void **pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::~SdfListOp(void **a1)
{
  v3 = a1 + 16;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 13;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 10;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 7;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 4;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 1;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfTimeCode,pxrInternal__aapl__pxrReserved__::SdfTimeCode,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfTimeCode>>::_Hash(double *a1)
{
  v1 = 0x9E3779B97F4A7C55 * *a1;
  if (*a1 == 0.0)
  {
    v1 = 0;
  }

  return bswap64(v1);
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfTimeCode,pxrInternal__aapl__pxrReserved__::SdfTimeCode,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfTimeCode>>::_GetProxiedAsVtValue@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfTimeCode>(void)::ti + 1;
  return result;
}

void RIOPxrUsdNoticeObjectsChangedAddNoticeCallback(void *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = a1;
  operator new();
}

void sub_2475F0460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v12 = *(v8 + 88);
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v12 + 8))(v12);
    }
  }

  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const*,void * const*)>::~__value_func[abi:ne200100](v8 + 48);
  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&)>::~__value_func[abi:ne200100](v10);
  pxrInternal__aapl__pxrReserved__::TfWeakBase::~TfWeakBase(v9, v13);
  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&)>::~__value_func[abi:ne200100](va);
  MEMORY[0x24C1A91B0](v8, 0x10E1C400AF9B268);

  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdNoticeObjectsChangedCopyChangedInfoOnlyPaths(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    ChangedInfoOnlyPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedInfoOnlyPaths(a1);
    v4 = ChangedInfoOnlyPaths + 1;
    v5 = *ChangedInfoOnlyPaths;
    if (*ChangedInfoOnlyPaths != ChangedInfoOnlyPaths + 1)
    {
      do
      {
        v10 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v5 + 8);
        CFArrayAppendValue(Mutable, v10);
        realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v10);
        v6 = v5[1];
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
            v7 = v5[2];
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
    }
  }

  return Mutable;
}

void sub_2475F0678(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdNoticeObjectsChangedCopyResyncedPaths(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    ResyncedPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetResyncedPaths(a1);
    v4 = ResyncedPaths + 1;
    v5 = *ResyncedPaths;
    if (*ResyncedPaths != ResyncedPaths + 1)
    {
      do
      {
        v10 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v5 + 8);
        CFArrayAppendValue(Mutable, v10);
        realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v10);
        v6 = v5[1];
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
            v7 = v5[2];
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
    }
  }

  return Mutable;
}

void sub_2475F074C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdNoticeObjectsChangedCopyChangedFields(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1 && a2 && (pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::HasChangedFields(a1, (a2 + 16)) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedFields(value, a1, (a2 + 16));
    v5 = value[0];
    v6 = value[1];
    while (v5 != v6)
    {
      v15 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v5);
      CFArrayAppendValue(Mutable, v15);
      realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v15);
      ++v5;
    }

    v15 = value;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v15);
  }

  else
  {
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 16));
    v8 = *(String + 23);
    if (v8 < 0)
    {
      if (*(String + 8) != 1)
      {
        return Mutable;
      }

      String = *String;
    }

    else if (v8 != 1)
    {
      return Mutable;
    }

    if (*String == 47)
    {
      ResyncedPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetResyncedPaths(a1);
      if (ResyncedPaths)
      {
        if (ResyncedPaths[2] == 1)
        {
          v10 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((*ResyncedPaths + 32));
          v11 = *(v10 + 23);
          if (v11 < 0)
          {
            if (*(v10 + 8) != 1)
            {
              return Mutable;
            }

            v10 = *v10;
          }

          else if (v11 != 1)
          {
            return Mutable;
          }

          if (*v10 == 47)
          {
            MEMORY[0x24C1A5DE0](&v15, "defaultPrim");
            v13 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v15);
            value[0] = v13;
            if ((v15 & 7) != 0)
            {
              atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              v13 = value[0];
            }

            CFArrayAppendValue(Mutable, v13);
            realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(value);
          }
        }
      }
    }
  }

  return Mutable;
}

uint64_t RIOPxrUsdNoticeObjectsChangedHasChangedFields(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::HasChangedFields(a1, (a2 + 16));
  }

  else
  {
    return 0;
  }
}

void *RIOPxrUsdNoticeObjectsChangedCopyStagePointer(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277CBECE8];
    if (RIOPxrTfWeakPtrGetTypeID::onceToken != -1)
    {
      dispatch_once(&RIOPxrTfWeakPtrGetTypeID::onceToken, &__block_literal_global_31);
    }

    result = _CFRuntimeCreateInstance();
    if (result)
    {
      v4 = v1[1];
      v3 = v1[2];
      result[2] = &unk_2859538B0;
      result[3] = v4;
      result[4] = v3;
      if (v3)
      {
        atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
      }
    }
  }

  return result;
}

void *RIOPxrUsdNoticeObjectsChangedStagePointer(void *result)
{
  if (result)
  {
    return RIOPxrUsdStageCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&>(result + 1);
  }

  return result;
}

void *RIOPxrUsdNoticeObjectsChangedCopyStageRef(void *result)
{
  if (result)
  {
    return RIOPxrUsdStageCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&>(result + 1);
  }

  return result;
}

void *RIOPxrUsdStageCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&>(uint64_t *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrUsdStageGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdStageGetTypeID::onceToken, &__block_literal_global_23);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (!a1[1] || ((v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(a1 + 1), v5 = *a1, *(v4 + 14) == 1) ? (v6 = v5 == 0) : (v6 = 1), v6 || (pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::AddRefIfNonzero() & 1) == 0))
    {
      v5 = 0;
    }

    Instance[3] = 0;
    Instance[4] = 0;
    Instance[2] = v5;
  }

  return Instance;
}

void std::__function::__func<RIOPxrUsdNoticeObjectsChangedAddNoticeCallback::$_0,std::allocator<RIOPxrUsdNoticeObjectsChangedAddNoticeCallback::$_0>,void ()(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<RIOPxrUsdNoticeObjectsChangedAddNoticeCallback::$_0,std::allocator<RIOPxrUsdNoticeObjectsChangedAddNoticeCallback::$_0>,void ()(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_285953728;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RIOPxrUsdNoticeObjectsChangedAddNoticeCallback::$_0,std::allocator<RIOPxrUsdNoticeObjectsChangedAddNoticeCallback::$_0>,void ()(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RIOPxrUsdNoticeObjectsChangedAddNoticeCallback::$_0,std::allocator<RIOPxrUsdNoticeObjectsChangedAddNoticeCallback::$_0>,void ()(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

unint64_t realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>::didReceiveNotice(uint64_t a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfNotice::Key::IsValid((a1 + 80));
  if (result)
  {
    result = *(a1 + 40);
    if (result)
    {
      v3 = *(*result + 48);

      return v3();
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfWeakBase::~TfWeakBase(pxrInternal__aapl__pxrReserved__::TfWeakBase *this, const void *a2)
{
  v2 = *this;
  if (*this)
  {
    *(v2 + 14) = 0;
    if (*(v2 + 13) == 1)
    {
      pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::Invoke2(v2, a2);
    }

    if (atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v2 + 8))(v2);
    }
  }
}

void realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>::~NoticeListener(void *a1)
{
  realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>::~NoticeListener(a1);

  JUMPOUT(0x24C1A91B0);
}

unint64_t realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>::cancel(uint64_t a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfNotice::Key::IsValid((a1 + 80));
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfNotice::Revoke();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>>,pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr,void (realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>::_Deliverer(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 36) = 0;
  *a1 = &unk_285953838;
  v6 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
  }

  (*(*a4 + 16))(a4, a1 + 56);
  *(a1 + 88) = *a3;
  return a1;
}

void sub_2475F0F5C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 6);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::~_DelivererBase(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>>,pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr,void (realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>::~_Deliverer(uint64_t a1)
{
  *a1 = &unk_285953838;
  (**(a1 + 56))();
  v2 = *(a1 + 48);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::~_DelivererBase(a1);
}

{
  *a1 = &unk_285953838;
  (**(a1 + 56))();
  v2 = *(a1 + 48);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::~_DelivererBase(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>>,pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr,void (realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::_SendToListenerImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a1[6];
  v8 = a1 + 6;
  if (!v9)
  {
    return 0;
  }

  v12 = v8 - 1;
  v13 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v8);
  v14 = *v12;
  v15 = *(v13 + 14) != 1 || v14 == 0;
  if (v15 || (pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::IsInvalid((a1 + 7)) & 1) != 0)
  {
    return 0;
  }

  if (*a7 != a7[1])
  {
    (*(*a1 + 40))(a1);
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>>::operator->(v12);
    pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::_BeginDelivery();
  }

  v17 = a1[11];
  v18 = a1[12];
  v19 = (v14 + (v18 >> 1));
  if (v18)
  {
    v17 = *(*v19 + v17);
  }

  v17(v19, a2);
  if (*a7 != a7[1])
  {
    pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::_EndDelivery();
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>>,pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr,void (realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetNoticeType(uint64_t a1, const std::type_info *a2)
{
  v2 = MEMORY[0x277D86688];
  v3 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D86688], a2);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v14);
  if (v14[0] == v3)
  {
    v14[0] = "tf/notice.h";
    v14[1] = "GetNoticeType";
    v14[2] = 614;
    v14[3] = "virtual TfType pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged, void *>>, pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr, void (realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged, void *>::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetNoticeType() const [Derived = pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged, void *>>, pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr, void (realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged, void *>::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>]";
    v15 = 0;
    v16 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled(&v10, (*(v2 + 8) & 0x7FFFFFFFFFFFFFFFLL), v4);
    v5 = std::string::insert(&v10, 0, "notice type ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v11, " undefined in the TfType system");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  return v3;
}

void sub_2475F13AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>>,pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr,void (realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::Delivers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 24))(a1);
  result = pxrInternal__aapl__pxrReserved__::TfType::IsA();
  if (result)
  {
    IsInvalid = pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::IsInvalid((a1 + 56));
    result = 0;
    if (a3)
    {
      if ((IsInvalid & 1) == 0)
      {
        return pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::GetWeakBase((a1 + 56)) == a3;
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>>,pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr,void (realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetSenderWeakBase(uint64_t a1)
{
  if (!pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::operator BOOL())
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::GetWeakBase((a1 + 56));
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>>::operator->(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3 || ((v4 = *(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14), result = *a1, v4 == 1) ? (v6 = result == 0) : (v6 = 1), v6))
  {
    v7 = strrchr[abi:ne200100]("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
    FunctionLite::substringFromPreviousDelim("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v7, 0x2F);
    return pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfNotice::Key::IsValid(pxrInternal__aapl__pxrReserved__::TfNotice::Key *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase>::operator pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase>::*)(void)const(this);
  v4 = v3 & 1 | v2;
  if (v4)
  {
    LOBYTE(v4) = *(pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase>::operator->(this) + 32);
  }

  return v4 & 1;
}

uint64_t (*pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase>::operator pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase>::*)(void)const(void *a1))(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return 0;
  }

  if ((*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14) & (*a1 != 0)) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase>::_FetchPointer;
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase>::operator->(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3 || ((v4 = *(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14), result = *a1, v4 == 1) ? (v6 = result == 0) : (v6 = 1), v6))
  {
    v7 = strrchr[abi:ne200100]("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
    FunctionLite::substringFromPreviousDelim("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v7, 0x2F);
    return pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase>::_FetchPointer(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return 0;
  }

  if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14))
  {
    return *a1;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const*,void * const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *realityio::NoticeListener<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged,void *>::~NoticeListener(void *a1)
{
  *a1 = &unk_2859537B8;
  if (pxrInternal__aapl__pxrReserved__::TfNotice::Key::IsValid((a1 + 10)))
  {
    pxrInternal__aapl__pxrReserved__::TfNotice::Revoke();
  }

  v2 = a1[11];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const*,void * const*)>::~__value_func[abi:ne200100]((a1 + 6));
  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&)>::~__value_func[abi:ne200100]((a1 + 2));
  pxrInternal__aapl__pxrReserved__::TfWeakBase::~TfWeakBase((a1 + 1), v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::_PointerHolder<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>>::~_PointerHolder(void *a1)
{
  pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::_PointerHolder<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>>::~_PointerHolder(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::_PointerHolder<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>>::Clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2859538B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::_PointerHolder<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>>::IsInvalid(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = (a1 + 16);
  v2 = v3;
  if (v3)
  {
    v2 = *(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v1) + 14) ^ 1;
  }

  return v2 & 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::_PointerHolder<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>>::GetTypeInfo(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator pxrInternal__aapl__pxrReserved__::UsdStage* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::*)(void)const((a1 + 8));
  if (!(v3 & 1 | v2))
  {
    v11[0] = "tf/weakPtrFacade.h";
    v11[1] = "TfTypeid";
    v11[2] = 203;
    v11[3] = "const std::type_info &pxrInternal__aapl__pxrReserved__::TfTypeid(const Derived &)";
    v12 = 0;
    v13 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled(__p, ("N32pxrInternal__aapl__pxrReserved__9TfWeakPtrINS_8UsdStageEEE" & 0x7FFFFFFFFFFFFFFFLL), v3);
    v8 = v10 >= 0 ? __p : __p[0];
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v11, "Called TfTypeid on invalid %s", v8);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!*(a1 + 16) || ((v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->((a1 + 16)), v5 = *(a1 + 8), *(v4 + 14) == 1) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    __cxa_bad_typeid();
  }

  return *(*v5 - 8);
}

void sub_2475F1AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::_PointerHolder<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>>::GetType(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = a1 + 16;
  if (!v3 || ((v2 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2), v5 = *(a1 + 8), *(v2 + 14) == 1) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {

    return MEMORY[0x282206888](v2);
  }

  else
  {
    v7 = *(*v5 - 8);

    return pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(v7, v4);
  }
}

char *pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::_PointerHolder<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>>::_GetMostDerivedPtr(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator pxrInternal__aapl__pxrReserved__::UsdStage* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::*)(void)const((a1 + 8));
  if (v3 & 1 | v2 && *(a1 + 16) && ((v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->((a1 + 16)), v5 = *(a1 + 8), *(v4 + 14) == 1) ? (v6 = v5 == 0) : (v6 = 1), !v6))
  {
    return v5 + *(*v5 - 16);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::_PointerHolder<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>>::~_PointerHolder(void *a1)
{
  *a1 = &unk_2859538B0;
  v2 = a1[2];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  return MEMORY[0x282205FF0](a1);
}

uint64_t RIOPxrUsdObjectGetTypeID()
{
  if (RIOPxrUsdObjectGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdObjectGetTypeID::onceToken, &__block_literal_global_14);
  }

  return RIOPxrUsdObjectGetTypeID::typeID;
}

void __RIOPxrUsdObjectGetTypeID_block_invoke()
{
  if (!RIOPxrUsdObjectGetTypeID::typeID)
  {
    RIOPxrUsdObjectGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(uint64_t a1, int *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  if (RIOPxrUsdObjectGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdObjectGetTypeID::onceToken, &__block_literal_global_14);
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    realityio::RIOPxrUsdObjectData::RIOPxrUsdObjectData(Instance + 16, a1, *a2);
  }

  return v6;
}

uint64_t RIOPxrUsdObjectCopyName(uint64_t a1)
{
  if (a1)
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName((a1 + 24));

    return RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(Name);
  }

  else
  {
    v3 = 0;
    result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v3);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t RIOPxrUsdObjectCopyPath(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath((a1 + 24), &v3);
  v1 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v3);
  return v1;
}

void sub_2475F1E70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdObjectIsValid(uint64_t result)
{
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((result + 24));
  }

  return result;
}

uint64_t UsdObjectCustomDataDictionarySetValue(const pxrInternal__aapl__pxrReserved__::UsdObject *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v6 = MEMORY[0x277D86540];
  v7 = atomic_load(MEMORY[0x277D86540]);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1, (v7 + 72));
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  v9 = atomic_load(v6);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1, (v9 + 72));
  return result;
}

void sub_2475F1FA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdObjectHasMetadataValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24));
      if (result)
      {
        if (a3)
        {
          v7 = *(a3 + 16);
          v9 = v7;
          if ((v7 & 7) != 0)
          {
            v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
            if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
            {
              v9 = v8;
            }
          }
        }

        else
        {
          v9 = 0;
        }

        result = pxrInternal__aapl__pxrReserved__::UsdObject::HasMetadataDictKey((a1 + 24), (a2 + 16), &v9);
        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }
    }
  }

  return result;
}

uint64_t RIOPxrUsdObjectClearMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      v7 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>((a1 + 24));
      std::recursive_mutex::lock(v7);
      if (a3)
      {
        v8 = *(a3 + 16);
        v11 = v8;
        if ((v8 & 7) != 0)
        {
          v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
          {
            v11 = v9;
          }
        }
      }

      else
      {
        v11 = 0;
      }

      v3 = pxrInternal__aapl__pxrReserved__::UsdObject::ClearMetadataByDictKey((a1 + 24), (a2 + 16), &v11);
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      std::recursive_mutex::unlock(v7);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_2475F2154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::recursive_mutex::unlock(v10);
  _Unwind_Resume(a1);
}

uint64_t realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>(realityio::UsdLayerMutexTracker *a1)
{
  v2 = realityio::UsdLayerMutexTracker::instance(a1);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v12, a1);
    v3 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v12);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v3);
    v5 = EditTarget[1];
    v10 = *EditTarget;
    v11 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    }

    v6 = v13;
    if (v13 && atomic_fetch_add_explicit((v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v7 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v10);
  v8 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  return v7;
}

void sub_2475F2288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrUsdObjectMetadataSetValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (a1 && a2 && a4)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      v9 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>((a1 + 24));
      std::recursive_mutex::lock(v9);
      if (a3)
      {
        v10 = *(a3 + 16);
        v13 = v10;
        if ((v10 & 7) != 0)
        {
          v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
          {
            v13 = v11;
          }
        }
      }

      else
      {
        v13 = 0;
      }

      v4 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadataByDictKey((a1 + 24), (a2 + 16), &v13, (a4 + 16));
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      std::recursive_mutex::unlock(v9);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void sub_2475F23C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::recursive_mutex::unlock(v10);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdObjectMetadataCopyValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      if (a3)
      {
        v7 = *(a3 + 16);
        v9 = v7;
        if ((v7 & 7) != 0)
        {
          v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
          {
            v9 = v8;
          }
        }
      }

      else
      {
        v9 = 0;
      }

      result = UsdObjectMetadataCopyValue((a1 + 24), (a2 + 16), &v9);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t UsdObjectMetadataCopyValue(const pxrInternal__aapl__pxrReserved__::UsdObject *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadataByDictKey(a1, a2, a3, v6))
  {
    v3 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue &>(v6);
  }

  else
  {
    v3 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_2475F2540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdObjectSetAllowedTokens(uint64_t a1, const __CFArray *a2)
{
  if (a1 && a2 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>((a1 + 24));
    std::recursive_mutex::lock(v4);
    if (atomic_load(MEMORY[0x277D86540]))
    {
      RIOPxrVtValueCreateWithTokenArray(a2);
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
  }

  return 0;
}

CFMutableArrayRef RIOPxrUsdObjectCopyAllowedTokens(CFMutableArrayRef result)
{
  if (result)
  {
    v1 = result;
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((result + 24)))
    {
      v2 = atomic_load(MEMORY[0x277D86540]);
      if (!v2)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
      }

      v4 = 0;
      v3 = UsdObjectMetadataCopyValue((v1 + 24), (v2 + 8), &v4);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      return RIOPxrVtValueCopyTokenArray(v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t RIOPxrUsdObjectClearColorSpace(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>((v1 + 24));
      std::recursive_mutex::lock(v2);
      v3 = atomic_load(MEMORY[0x277D86540]);
      if (!v3)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
      }

      v5 = 0;
      v1 = pxrInternal__aapl__pxrReserved__::UsdObject::ClearMetadataByDictKey((v1 + 24), (v3 + 40), &v5);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      std::recursive_mutex::unlock(v2);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t RIOPxrUsdObjectSetColorSpace(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v12[2] = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v5 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>((a1 + 24));
    std::recursive_mutex::lock(v5);
    v6 = atomic_load(MEMORY[0x277D86540]);
    if (!v6)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
    }

    v7 = *(a2 + 16);
    v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>(void)::ti + 1;
    v11 = 0;
    v12[0] = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12[0] = v8;
      }
    }

    v2 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadataByDictKey((a1 + 24), (v6 + 40), &v11, v12);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::recursive_mutex::unlock(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t RIOPxrUsdObjectCopyColorSpace(uint64_t result)
{
  if (result)
  {
    v1 = atomic_load(MEMORY[0x277D86540]);
    if (!v1)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
    }

    v3 = 0;
    v2 = UsdObjectMetadataCopyValue((result + 24), (v1 + 40), &v3);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    return RIOPxrVtValueCopyToken(v2);
  }

  return result;
}

uint64_t RIOPxrUsdObjectSetInheritPaths(uint64_t a1, const __CFArray *a2)
{
  if (a1 && a2 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>((a1 + 24));
    std::recursive_mutex::lock(v4);
    if (atomic_load(MEMORY[0x277D86540]))
    {
      RIOPxrVtValueCreateWithPathListOp(a2);
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
  }

  return 0;
}

CFMutableArrayRef RIOPxrUsdObjectCopyInheritPaths(CFMutableArrayRef result)
{
  if (result)
  {
    v1 = result;
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((result + 24)))
    {
      v2 = atomic_load(MEMORY[0x277D86540]);
      if (!v2)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
      }

      v4 = 0;
      v3 = UsdObjectMetadataCopyValue((v1 + 24), (v2 + 192), &v4);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      return RIOPxrVtValueCopyPathListOp(v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t RIOPxrUsdObjectCustomDataDictionarySetValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (a1 && a2 && a3 && a4)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      v9 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>((a1 + 24));
      std::recursive_mutex::lock(v9);
      v4 = UsdObjectCustomDataDictionarySetValue((a1 + 24), (a2 + 16), (a3 + 16), (a4 + 16));
      std::recursive_mutex::unlock(v9);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t RIOPxrUsdObjectCustomDataDictionaryClearValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      v6 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>((a1 + 24));
      std::recursive_mutex::lock(v6);
      v7 = MEMORY[0x277D86540];
      v8 = atomic_load(MEMORY[0x277D86540]);
      if (!v8)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1 + 24, (v8 + 72));
      if ((*(a3 + 16) & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      pxrInternal__aapl__pxrReserved__::VtDictionary::EraseValueAtPath();
      v10 = atomic_load(v7);
      if (!v10)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1 + 24, (v10 + 72));
      v3 = v11;
      std::recursive_mutex::unlock(v6);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_2475F2D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(va);
  std::recursive_mutex::unlock(v2);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdObjectCustomDataDictionaryCopyValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !a2 || !a3 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  return UsdObjectCustomDataDictionaryCopyValue((a1 + 24), (a2 + 16), (a3 + 16));
}

uint64_t UsdObjectCustomDataDictionaryCopyValue(const pxrInternal__aapl__pxrReserved__::UsdObject *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v5 = atomic_load(MEMORY[0x277D86540]);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1, (v5 + 72));
  if (!v6)
  {
    return 0;
  }

  if ((*a3 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  if (ValueAtPath)
  {
    return RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue &>(ValueAtPath);
  }

  else
  {
    return 0;
  }
}

void sub_2475F2F14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdObjectUiInfoDictionarySetValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      v7 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>((a1 + 24));
      std::recursive_mutex::lock(v7);
      MEMORY[0x24C1A5DE0](&v9, "ui");
      v3 = UsdObjectCustomDataDictionarySetValue((a1 + 24), &v9, (a2 + 16), (a3 + 16));
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      std::recursive_mutex::unlock(v7);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_2475F2FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::recursive_mutex::unlock(v10);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdObjectUiInfoDictionaryCopyValue(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      MEMORY[0x24C1A5DE0](&v5, "ui");
      result = UsdObjectCustomDataDictionaryCopyValue((a1 + 24), &v5, (a2 + 16));
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t RIOPxrUsdObjectAccessibilityInfoDictionarySetValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      v7 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>((a1 + 24));
      std::recursive_mutex::lock(v7);
      MEMORY[0x24C1A5DE0](&v9, "accessibility_info");
      v3 = UsdObjectCustomDataDictionarySetValue((a1 + 24), &v9, (a2 + 16), (a3 + 16));
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      std::recursive_mutex::unlock(v7);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_2475F3180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::recursive_mutex::unlock(v10);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdObjectAccessibilityInfoDictionaryCopyValue(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      v5 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdObject>((a1 + 24));
      std::recursive_mutex::lock(v5);
      MEMORY[0x24C1A5DE0](&v7, "accessibility_info");
      v2 = UsdObjectCustomDataDictionaryCopyValue((a1 + 24), &v7, (a2 + 16));
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      std::recursive_mutex::unlock(v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_2475F3260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::recursive_mutex::unlock(v10);
  _Unwind_Resume(a1);
}

__CFDictionary *RIOPxrVtValueCopyDictionary(uint64_t a1)
{
  Mutable = *(a1 + 24);
  if (Mutable)
  {
    if (strcmp((*(*(Mutable & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12VtDictionaryE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      {
        return 0;
      }

      Mutable = *(a1 + 24);
    }

    if ((Mutable & 4) != 0)
    {
      v3 = (*((Mutable & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    else
    {
      v3 = *(a1 + 16);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v14 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v3);
    v15 = v4;
    v5 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v3);
      v8 = v14;
      if (v15 == v7 && (!v7 || v14 == v6))
      {
        break;
      }

      if (RIOPxrTfTokenGetTypeID::onceToken != -1)
      {
        dispatch_once(&RIOPxrTfTokenGetTypeID::onceToken, &__block_literal_global_25);
      }

      Instance = _CFRuntimeCreateInstance();
      v10 = Instance;
      if (Instance)
      {
        MEMORY[0x24C1A5E00](Instance + 16, v8 + 32);
      }

      key = v10;
      v12 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue &>((v14 + 56));
      CFDictionaryAddValue(Mutable, key, v12);
      realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v12);
      realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&key);
      pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment(&v14);
    }
  }

  return Mutable;
}

void sub_2475F3440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

__CFDictionary *RIOPxrUsdObjectCopyMetadata(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetAllMetadata(v3, (v1 + 24));
      v1 = mappableToCfDictionary<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>>>>(v3);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v3, v3[1]);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

__CFDictionary *mappableToCfDictionary<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>>>>(void *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = *a1;
  v3 = a1 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    do
    {
      key = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v4 + 4);
      v10 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue &>((v4 + 5));
      CFDictionaryAddValue(Mutable, key, v10);
      realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v10);
      realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&key);
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

    while (v7 != v3);
  }

  return Mutable;
}

void sub_2475F35B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

__CFDictionary *RIOPxrUsdObjectCopyAuthoredMetadata(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetAllAuthoredMetadata(v3, (v1 + 24));
      v1 = mappableToCfDictionary<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>>>>(v3);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v3, v3[1]);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

__CFArray *RIOPxrUsdObjectCopyRegisteredMetadataKeys(uint64_t a1)
{
  if (a1 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v3 = *(a1 + 16) % 100;
    if (v3 == 22 || v3 == 12 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0)
    {
      v17 = 0uLL;
      v18 = 0;
      if (!atomic_load(off_278EA82C8))
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
      }

      pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetMetadataFields();
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__vdeallocate(&v17);
      v17 = v15;
      v18 = v16;
      v16 = 0;
      v15 = 0uLL;
      *&v13 = &v15;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v13);
    }

    else
    {
      v17 = 0uLL;
      v18 = 0;
      if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)) & 1) == 0)
      {
        goto LABEL_21;
      }

      PrimDefinition = pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrimDefinition(*(a1 + 32), v7);
      pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::UsdPrimDefinition(&v15, PrimDefinition);
      v9 = atomic_load(off_278EA82C0);
      if (!v9)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_CreateInstance();
      }

      if (&v15 == *(v9 + 112))
      {
        if (!atomic_load(off_278EA82C8))
        {
          pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
        }

        pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetMetadataFields();
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::ListMetadataFields(&v13, &v15);
      }

      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__vdeallocate(&v17);
      v17 = v13;
      v12 = v14;
      v14 = 0;
      v13 = 0uLL;
      v18 = v12;
      v19 = &v13;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v19);
      pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::~UsdPrimDefinition(&v15);
    }

    v6 = *(&v17 + 1);
    for (i = v17; i != v6; ++i)
    {
      *&v15 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(i);
      CFArrayAppendValue(Mutable, v15);
      realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v15);
    }

LABEL_21:
    *&v15 = &v17;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v15);
    return Mutable;
  }

  return 0;
}

void sub_2475F3884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::~UsdPrimDefinition(&a13);
  a13 = (v13 - 64);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrimDefinition(pxrInternal__aapl__pxrReserved__::UsdPrim *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  if (!this || (*(this + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(this, a2);
  }

  explicit = atomic_load_explicit((*(this + 3) + 56), memory_order_acquire);
  if (explicit)
  {
    return explicit;
  }

  return MEMORY[0x2822074D8]();
}

uint64_t _RIOPxrUsdObjectCFFinalize(void *a1)
{
  v2 = a1[6];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  result = a1[4];
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
  }

  return result;
}

unint64_t _RIOPxrUsdObjectCFHash(void *a1)
{
  v1 = bswap64(0x9E3779B97F4A7C55 * a1[4]);
  v2 = *(a1 + 10);
  v3 = *(a1 + 11);
  v4 = v1 + v2 + ((v1 + *(a1 + 6) + (v1 + *(a1 + 6)) * (v1 + *(a1 + 6))) >> 1);
  v5 = v3 + v2 + ((v4 + v4 * v4) >> 1);
  return bswap64(0x9E3779B97F4A7C55 * ((a1[6] & 0xFFFFFFFFFFFFFFF8) + (((a1[6] & 0xFFFFFFFFFFFFFFF8) + v3 + ((v5 + v5 * v5) >> 1) + ((a1[6] & 0xFFFFFFFFFFFFFFF8) + v3 + ((v5 + v5 * v5) >> 1)) * ((a1[6] & 0xFFFFFFFFFFFFFFF8) + v3 + ((v5 + v5 * v5) >> 1))) >> 1)));
}

pxrInternal__aapl__pxrReserved__::UsdPrimDefinition *pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::UsdPrimDefinition(pxrInternal__aapl__pxrReserved__::UsdPrimDefinition *this, const pxrInternal__aapl__pxrReserved__::UsdPrimDefinition *a2)
{
  *this = *a2;
  v4 = (this + 12);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 2, a2 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4, a2 + 3);
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = *(a2 + 12);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>>>::__rehash<true>(this + 16, *(a2 + 3));
  v15 = a2;
  for (i = *(a2 + 4); i; i = *i)
  {
    v6 = i[2];
    v7 = bswap64(0x9E3779B97F4A7C55 * (v6 & 0xFFFFFFFFFFFFFFF8));
    v8 = *(this + 24);
    if (!*&v8)
    {
      goto LABEL_18;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v7;
      if (v7 >= *&v8)
      {
        v10 = v7 % *&v8;
      }
    }

    else
    {
      v10 = v7 & (*&v8 - 1);
    }

    v11 = *(*(this + 2) + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    if ((v12[2] ^ v6) >= 8)
    {
      goto LABEL_17;
    }
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(this + 56, v15[7], v15[8], (v15[8] - v15[7]) >> 3);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(this + 80, v15[10], v15[11], (v15[11] - v15[10]) >> 3);
  *(this + 13) = v15[13];
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(this + 13);
  return this;
}

void sub_2475F3DF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>>>::~__hash_table(v3);
  pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath::~_LayerAndPath(v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>,void *>>>::operator()[abi:ne200100](char a1, void *a2)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 4));
    v3 = a2[2];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 4));
      v4 = v2[2];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::~UsdPrimDefinition(atomic_uint **this)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(this + 13);
  v2 = (this + 10);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 7);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::_LayerAndPath>>>::~__hash_table((this + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 1));
}

uint64_t realityio::RIOPxrUsdObjectData::RIOPxrUsdObjectData(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a3;
  *(a1 + 8) = *a2;
  v5 = *(a2 + 8);
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 24), (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 28), (a2 + 20));
  v6 = *(a2 + 24);
  *(a1 + 32) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<pxrInternal__aapl__pxrReserved__::VtDictionary>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v3 = *v2;

  JUMPOUT(0x24C1A8890);
}

void pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::VtDictionary>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v3 = *v2;

  JUMPOUT(0x24C1A6240);
}

__CFArray *RIOPxrUsdPropertyCopyPropertyStack(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::UsdProperty::GetPropertyStack();
    v3 = v28;
    v4 = v29;
    if (v28 != v29)
    {
      v5 = *MEMORY[0x277CBECE8];
      do
      {
        v6 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>::operator->(v3);
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(__p, v6);
        v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(__p);
        RealPath = pxrInternal__aapl__pxrReserved__::SdfLayer::GetRealPath(v7);
        if (*(RealPath + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v27, *RealPath, *(RealPath + 8));
        }

        else
        {
          v9 = *RealPath;
          v27.__r_.__value_.__r.__words[2] = *(RealPath + 16);
          *&v27.__r_.__value_.__l.__data_ = v9;
        }

        v10 = __p[1];
        if (__p[1] && atomic_fetch_add_explicit(__p[1] + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v10 + 8))(v10);
        }

        v11 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>::operator->(v3);
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(&v26, v11);
        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v19, 0.0, 1.0);
        v18 = 0;
        MEMORY[0x24C1A4E70](__p, &v27, &v26, v19, &v18);
        v12 = v18;
        v18 = 0;
        if (v12)
        {
          std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v12, *(v12 + 8));
          MEMORY[0x24C1A91B0](v12, 0x1020C4062D53EE8);
        }

        if (RIOPxrSdfReferenceGetTypeID::onceToken != -1)
        {
          dispatch_once(&RIOPxrSdfReferenceGetTypeID::onceToken, &__block_literal_global_0);
        }

        Instance = _CFRuntimeCreateInstance();
        v14 = Instance;
        if (Instance)
        {
          if (SHIBYTE(v21) < 0)
          {
            std::string::__init_copy_ctor_external((Instance + 16), __p[0], __p[1]);
          }

          else
          {
            v15 = v21;
            *(Instance + 16) = *__p;
            *(Instance + 32) = v15;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v14 + 40), &v22);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v14 + 44), &v23);
          *(v14 + 48) = v24;
          MEMORY[0x24C1A4F90](v14 + 64, &v25);
        }

        v19[0] = v14;
        CFArrayAppendValue(Mutable, v14);
        realityio::WrappedCFRef<RIOPxrSdfReference *>::~WrappedCFRef(v19);
        v16 = v25;
        v25 = 0;
        if (v16)
        {
          std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v16, *(v16 + 8));
          MEMORY[0x24C1A91B0](v16, 0x1020C4062D53EE8);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v22);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        v3 = (v3 + 8);
      }

      while (v3 != v4);
    }

    __p[0] = &v28;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  return Mutable;
}

void sub_2475F444C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v31 + 40));
  if (*(v31 + 39) < 0)
  {
    operator delete(*(v31 + 16));
  }

  pxrInternal__aapl__pxrReserved__::SdfReference::~SdfReference(&a16);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a23);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = &a31;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfSpec *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>::operator->(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v1 = a1;
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfPropertySpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled(__p, ("N32pxrInternal__aapl__pxrReserved__15SdfPropertySpecE" & 0x7FFFFFFFFFFFFFFFLL), v2);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v1;
}

void sub_2475F45E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrUsdPropertyCopyBaseName(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v1, (result + 24));
    result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v1);
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t RIOPxrUsdPropertyCopyNamespace(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdProperty::GetNamespace(&v1, (result + 24));
    result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v1);
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

__CFArray *RIOPxrUsdPropertyCopySplitName(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::UsdProperty::SplitName(v7, (a1 + 24));
    v3 = v7[0];
    v4 = v7[1];
    while (v3 != v4)
    {
      v5 = v3;
      if (*(v3 + 23) < 0)
      {
        v5 = *v3;
      }

      v8 = CFStringCreateWithCString(0, v5, 0x8000100u);
      CFArrayAppendValue(Mutable, v8);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v8);
      v3 += 24;
    }

    v8 = v7;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  return Mutable;
}

void sub_2475F4798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPropertyIsAuthored(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282206F88](result + 24);
  }

  return result;
}

uint64_t RIOPxrUsdPropertyIsAuthoredAt(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x282206FA0](result + 24, a2 + 16);
  }

  return result;
}

const void **realityio::WrappedCFRef<RIOPxrSdfReference *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void realityio::generateSkeletonDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE53140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53140))
  {
    operator new();
  }

  v3 = *algn_27EE53138;
  *a1 = qword_27EE53130;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2475F4D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  MEMORY[0x24C1A91B0](v29, 0x10A1C40F82F910ELL);
  *(v31 - 192) = &a28;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 192));
  MEMORY[0x24C1A91B0](v28, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v30, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE53140);
  _Unwind_Resume(a1);
}

void sub_2475F5188(_Unwind_Exception *a1)
{
  v5 = 8;
  while (1)
  {
    v6 = *(v3 + v5);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 -= 8;
    if (v5 == -8)
    {
      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A91B0](v1, v2);
      _Unwind_Resume(a1);
    }
  }
}

void realityio::generateTransformAnimationDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE53160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53160))
  {
    operator new();
  }

  v3 = *algn_27EE53158;
  *a1 = qword_27EE53150;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2475F56E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  v37 = *(v35 - 104);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  *(v35 - 216) = &a27;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v35 - 216));
  v38 = *(v35 - 120);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  *(v35 - 216) = &a19;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v35 - 216));
  v39 = 72;
  while (1)
  {
    v40 = *(v35 - 208 + v39);
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    v39 -= 16;
    if (v39 == -8)
    {
      if (a10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a10);
      }

      if (a12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a12);
      }

      if (a14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a14);
      }

      if (a16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a16);
      }

      if (a18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a18);
      }

      *(v35 - 208) = &a22;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v35 - 208));
      *(v35 - 208) = &a30;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v35 - 208));
      MEMORY[0x24C1A91B0](v34, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE53160);
      _Unwind_Resume(a1);
    }
  }
}

void sub_2475F5B80(_Unwind_Exception *a1)
{
  v5 = 8;
  while (1)
  {
    v6 = *(v3 + v5);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 -= 8;
    if (v5 == -8)
    {
      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A91B0](v1, v2);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t RIOBuilderOutputsDescriptorGetTypeID()
{
  if (RIOBuilderOutputsDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderOutputsDescriptorGetTypeID::onceToken, &__block_literal_global_15);
  }

  return RIOBuilderOutputsDescriptorGetTypeID::typeID;
}

void __RIOBuilderOutputsDescriptorGetTypeID_block_invoke()
{
  if (!RIOBuilderOutputsDescriptorGetTypeID::typeID)
  {
    RIOBuilderOutputsDescriptorGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

__CFArray *RIOBuilderOutputsDescriptorCopyOutputDescriptors(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      for (i = *(v3 + 56); i; i = *i)
      {
        v7 = RIOBuilderOutputDescriptorCreate<std::shared_ptr<realityio::OutputDescriptor const> const&>(i + 3);
        CFArrayAppendValue(Mutable, v7);
        realityio::WrappedCFRef<RIOBuilderOutputDescriptor *>::~WrappedCFRef(&v7);
      }
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return Mutable;
}

void sub_2475F5EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOBuilderOutputDescriptorCreate<std::shared_ptr<realityio::OutputDescriptor const> const&>(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOBuilderOutputDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderOutputDescriptorGetTypeID::onceToken, &__block_literal_global_22);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    v4 = a1[1];
    *(result + 16) = *a1;
    *(result + 24) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

__CFDictionary *RIOBuilderOutputsDescriptorCopyOutputDescriptorsByName(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      for (i = *(v4 + 56); i; i = *i)
      {
        if ((i[2] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = (i[2] & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Mutable);
        }

        if (*(EmptyString + 23) >= 0)
        {
          v8 = EmptyString;
        }

        else
        {
          v8 = *EmptyString;
        }

        key = CFStringCreateWithCString(0, v8, 0x8000100u);
        v10 = RIOBuilderOutputDescriptorCreate<std::shared_ptr<realityio::OutputDescriptor const> const&>(i + 3);
        CFDictionaryAddValue(v3, key, v10);
        realityio::WrappedCFRef<RIOBuilderOutputDescriptor *>::~WrappedCFRef(&v10);
        Mutable = realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&key);
      }
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v3;
}

void sub_2475F608C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void _RIOBuilderOutputsDescriptorCFFinalize(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

const void **realityio::WrappedCFRef<RIOBuilderOutputDescriptor *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void realityio::StageTimeCodeBuilder::StageTimeCodeBuilder(realityio::StageTimeCodeBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v6[44] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "StageTimeCodeBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kStageTimeCodeBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE53178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53178))
  {
    operator new();
  }

  v4[0] = _MergedGlobals_26;
  v4[1] = unk_27EE53170;
  if (unk_27EE53170)
  {
    atomic_fetch_add_explicit((unk_27EE53170 + 8), 1uLL, memory_order_relaxed);
  }

  realityio::EntityInputNoOutputStaticBuilder::EntityInputNoOutputStaticBuilder(this, a2, v6, __p, v4);
}

void sub_2475F66AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, std::__shared_weak_count *a46)
{
  v49 = *(v47 - 104);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  *(v47 - 184) = &a23;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v47 - 184));
  a23 = &a42;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v50 = 56;
  while (1)
  {
    v51 = *(v47 - 176 + v50);
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    v50 -= 16;
    if (v50 == -8)
    {
      if (a28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a28);
      }

      if ((a26 & 7) != 0)
      {
        atomic_fetch_add_explicit((a26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a32);
      }

      if ((a30 & 7) != 0)
      {
        atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a36);
      }

      if ((a34 & 7) != 0)
      {
        atomic_fetch_add_explicit((a34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a40);
      }

      if ((a38 & 7) != 0)
      {
        atomic_fetch_add_explicit((a38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A91B0](v46, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE53178);
      if (a16 < 0)
      {
        operator delete(__p);
      }

      if (a22 < 0)
      {
        operator delete(a17);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::StageTimeCodeBuilder::~StageTimeCodeBuilder(realityio::StageTimeCodeBuilder *this)
{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t RIOBuilderInputsDescriptorGetTypeID()
{
  if (RIOBuilderInputsDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderInputsDescriptorGetTypeID::onceToken, &__block_literal_global_16);
  }

  return RIOBuilderInputsDescriptorGetTypeID::typeID;
}

void __RIOBuilderInputsDescriptorGetTypeID_block_invoke()
{
  if (!RIOBuilderInputsDescriptorGetTypeID::typeID)
  {
    RIOBuilderInputsDescriptorGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

__CFArray *RIOBuilderInputsDescriptorCopyInputDescriptors(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      for (i = *(v3 + 16); i; i = *i)
      {
        v6 = i[3];
        v7 = i[4];
        while (v6 != v7)
        {
          v8 = v6[1];
          v11[0] = *v6;
          v11[1] = v8;
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v10 = RIOBuilderInputDescriptorCreate<std::shared_ptr<realityio::InputDescriptor const> &>(v11);
          CFArrayAppendValue(Mutable, v10);
          realityio::WrappedCFRef<RIOBuilderInputDescriptor *>::~WrappedCFRef(&v10);
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          v6 += 2;
        }
      }
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return Mutable;
}

void sub_2475F6E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOBuilderInputDescriptorCreate<std::shared_ptr<realityio::InputDescriptor const> &>(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOBuilderInputDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderInputDescriptorGetTypeID::onceToken, &__block_literal_global_28);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    v4 = a1[1];
    *(result + 16) = *a1;
    *(result + 24) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

__CFDictionary *RIOBuilderInputsDescriptorCopyInputDescriptorsByName(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = MEMORY[0x277CBF128];
        do
        {
          if ((v6[2] & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            EmptyString = (v6[2] & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Mutable);
          }

          if (*(EmptyString + 23) >= 0)
          {
            v9 = EmptyString;
          }

          else
          {
            v9 = *EmptyString;
          }

          key = CFStringCreateWithCString(0, v9, 0x8000100u);
          v10 = CFArrayCreateMutable(0, 0, v7);
          theArray = v10;
          v11 = v6[3];
          v12 = v6[4];
          if (v11 != v12)
          {
            do
            {
              v13 = v11[1];
              v16[0] = *v11;
              v16[1] = v13;
              if (v13)
              {
                atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v15 = RIOBuilderInputDescriptorCreate<std::shared_ptr<realityio::InputDescriptor const> &>(v16);
              CFArrayAppendValue(theArray, v15);
              realityio::WrappedCFRef<RIOBuilderInputDescriptor *>::~WrappedCFRef(&v15);
              if (v13)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v13);
              }

              v11 += 2;
            }

            while (v11 != v12);
            v10 = theArray;
          }

          CFDictionaryAddValue(v3, key, v10);
          realityio::WrappedCFRef<__CFArray *>::~WrappedCFRef(&theArray);
          Mutable = realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&key);
          v6 = *v6;
        }

        while (v6);
      }
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v3;
}

void sub_2475F7084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  realityio::WrappedCFRef<__CFArray *>::~WrappedCFRef(va);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void _RIOBuilderInputsDescriptorCFFinalize(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

const void **realityio::WrappedCFRef<RIOBuilderInputDescriptor *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<__CFArray *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t RIOPxrUsdPrimFlagsPredicateGetTypeID()
{
  if (qword_27EE53188 != -1)
  {
    dispatch_once(&qword_27EE53188, &__block_literal_global_17);
  }

  return _MergedGlobals_27;
}

void __RIOPxrUsdPrimFlagsPredicateGetTypeID_block_invoke()
{
  if (!_MergedGlobals_27)
  {
    _MergedGlobals_27 = _CFRuntimeRegisterClass();
  }
}

double RIOPxrUsdPrimFlagsPredicateCreate()
{
  v2 = 0uLL;
  v3 = 0;
  v1 = 0;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v2, &v1).n128_u64[0];
  return result;
}

__n128 RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(__n128 *a1, uint64_t *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  if (qword_27EE53188 != -1)
  {
    dispatch_once(&qword_27EE53188, &__block_literal_global_17);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v7 = *a2;
    result = *a1;
    v8 = a1[1].n128_u64[0];
    *(Instance + 16) = *a1;
    *(Instance + 32) = v8;
    *(Instance + 40) = v7;
  }

  return result;
}

double RIOPxrUsdPrimFlagsConjunctionPredicateCreate()
{
  v2 = 0uLL;
  v3 = 0;
  v1 = 1;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v2, &v1).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsDisjunctionPredicateCreate()
{
  v2 = 0uLL;
  v3 = 1;
  v1 = 2;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v2, &v1).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsPredicateCreateWithTerm(unint64_t a1, char a2)
{
  v2 = RIOPxrUsdTermToUsdTerm(a1, a2);
  v7 = 0;
  if (HIDWORD(v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << v2;
  }

  v6.n128_u64[0] = 1 << v2;
  v6.n128_u64[1] = v3;
  v5 = 0;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v6, &v5).n128_u64[0];
  return result;
}

unint64_t RIOPxrUsdTermToUsdTerm(unint64_t a1, char a2)
{
  v2 = a1;
  if (a1 < 9)
  {
    v2 = a1;
  }

  return v2 | ((a2 & 1) << 32);
}

double RIOPxrUsdPrimFlagsPredicateCreateTautology()
{
  v2 = 0uLL;
  v3 = 0;
  v1 = 0;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v2, &v1).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsPredicateCreateContradiction()
{
  v2 = 0uLL;
  v3 = 1;
  v1 = 0;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v2, &v1).n128_u64[0];
  return result;
}

void *RIOPxrUsdPrimFlagsPredicateCopyTraverseInstanceProxies(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x2000;
  }

  if (a2)
  {
    v7 = 0x2000;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277CBECE8];
  if (qword_27EE53188 != -1)
  {
    dispatch_once(&qword_27EE53188, &__block_literal_global_17);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    v10 = *(a1 + 40);
    result[2] = v4 & 0xFFFFFFFFFFFFDFFFLL | v6;
    result[3] = v3 & 0xFFFFFFFFFFFFDFFFLL | v7;
    result[4] = v5;
    result[5] = v10;
  }

  return result;
}

uint64_t RIOPxrUsdPrimFlagsPredicateIncludeInstanceProxiesInTraversal(uint64_t a1)
{
  if ((*(a1 + 17) & 0x20) != 0)
  {
    return 0;
  }

  else
  {
    return (*(a1 + 25) >> 5) & 1;
  }
}

uint64_t RIOPxrUsdPrimFlagsPredicateVerifyRIOPxrUsdPrim(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 + 24;
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x282207910](a1 + 16, v2);
}

double RIOPxrUsdPrimFlagsCreateConjunctionPredicateJoinWithTerm(uint64_t a1, unint64_t a2, char a3)
{
  v4 = RIOPxrUsdTermToUsdTerm(a2, a3);
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v5 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator&=(&v9, v4);
  v7 = *v5;
  v8 = v5[1].n128_u64[0];
  *&v9 = 1;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v7, &v9).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsCreateDisjunctionPredicateJoinWithTerm(uint64_t a1, unint64_t a2, char a3)
{
  v4 = RIOPxrUsdTermToUsdTerm(a2, a3);
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v5 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsDisjunction::operator|=(&v9, v4);
  v7 = *v5;
  v8 = v5[1].n128_u64[0];
  *&v9 = 2;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v7, &v9).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsConjunctionPredicateNegation()
{
  pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator!();
  v1 = 2;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v2, &v1).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsCreateConjunctionPredicateNegation()
{
  pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator!();
  v1 = 2;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v2, &v1).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsDisjunctionPredicateNegation()
{
  pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsDisjunction::operator!();
  v1 = 1;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v2, &v1).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsCreateDisjunctionPredicateNegation()
{
  pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsDisjunction::operator!();
  v1 = 1;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(&v2, &v1).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsDefaultPredicate(pxrInternal__aapl__pxrReserved__ *a1)
{
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(a1);
  v3 = 1;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(UsdPrimDefaultPredicate, &v3).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsCreateDefaultPredicate(pxrInternal__aapl__pxrReserved__ *a1)
{
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(a1);
  v3 = 1;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(UsdPrimDefaultPredicate, &v3).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsAllPrimsPredicate(pxrInternal__aapl__pxrReserved__ *a1)
{
  UsdPrimAllPrimsPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimAllPrimsPredicate(a1);
  v3 = 1;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(UsdPrimAllPrimsPredicate, &v3).n128_u64[0];
  return result;
}

double RIOPxrUsdPrimFlagsCreateAllPrimsPredicate(pxrInternal__aapl__pxrReserved__ *a1)
{
  UsdPrimAllPrimsPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimAllPrimsPredicate(a1);
  v3 = 1;
  *&result = RIOPxrUsdPrimFlagsPredicateCreate<pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate,RIOPxrUsdPrimFlagsPredicateType>(UsdPrimAllPrimsPredicate, &v3).n128_u64[0];
  return result;
}

uint64_t realityio::SpatialAudioFileAssetBuilder::kOutputName(realityio::SpatialAudioFileAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::SpatialAudioFileAssetBuilder::kOutputName(void)::kOutputName;
}

void sub_2475F78F4(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::SpatialAudioFileAssetBuilder::SpatialAudioFileAssetBuilder(realityio::SpatialAudioFileAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "SpatialAudioFileAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kSpatialAudioFileAssetBuilderIdentifier);
  realityio::generateSpatialAudioDirtyStageSubscription(&v4);
  v8[0] = &unk_285953C30;
  v8[3] = v8;
  v7[0] = &unk_285953CB0;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_2475F7A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24 - 56);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::SpatialAudioFileAssetBuilder::run(realityio::SpatialAudioFileAssetBuilder *this, realityio::Inputs *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = a2;
  v4 = (a2 + 32);
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v27, v5, v4);
  v7 = v28;
  if (!v28 || (v8 = *(v28 + 7), (v8 & 0x800) != 0))
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v28, v6);
    v8 = *(v7 + 7);
  }

  if (v8)
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
    v10 = realityio::Inputs::assetManager(a2);
    v25 = *(*(*(a2 + 5) + 16) + 16);
    v26 = v10;
    pxrInternal__aapl__pxrReserved__::UsdStage::GetEndTimeCode(v9);
    v11 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
    if (v11)
    {
      pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v32);
      realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>((v11 + 24), &v32, &v27, &v24);
      if (v36 < 0)
      {
        operator delete(v35);
      }

      if (v34 < 0)
      {
        operator delete(v32);
      }

      v12 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
      if (v12)
      {
        v13 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
        if (v13)
        {
          realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(&v27, (v12 + 104), &v32);
          if (v32)
          {
            v14 = v33;
          }

          else
          {
            v14 = *(v13 + 88);
          }

          if ((v14 & 7) != 0)
          {
            atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
          }

          if (v32 == 1)
          {
            if ((v33 & 7) != 0)
            {
              atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else if (v36 < 0)
          {
            operator delete(v35);
          }

          v15 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
          if (v15)
          {
            v16 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
            if (v16)
            {
              realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(&v27, v15, &v32);
              if (v32)
              {
                v17 = v33;
              }

              else
              {
                v17 = *(v16 + 120);
              }

              if ((v17 & 7) != 0)
              {
                atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
              }

              if (v32 == 1)
              {
                if ((v33 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }

              else if (v36 < 0)
              {
                operator delete(v35);
              }

              v18 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
              if (v18)
              {
                realityio::getAttributeValue<double>(&v27, (v18 + 128), &v32);
                if ((v32 & 1) == 0 && v36 < 0)
                {
                  operator delete(v35);
                }

                v19 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
                if (v19)
                {
                  realityio::getAttributeValue<double>(&v27, (v19 + 8), &v32);
                  if ((v32 & 1) == 0 && v36 < 0)
                  {
                    operator delete(v35);
                  }

                  REAudioFileAssetConfigurationCreate();
                  v32 = 0;
                  v20 = *(this + 35);
                  if (v20)
                  {
                    *(this + 35) = 0;
                    v32 = v20;
                  }

                  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v32);
                  v21 = *(v31 + 6);
                  operator new();
                }

                pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
              }

              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }

            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
          }

          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  (*(*this + 72))(this, a2);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v29);
  result = v28;
  if (v28)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v28);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475F7F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  if ((a4 & 7) != 0)
  {
    atomic_fetch_add_explicit((a4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(va);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va1);
  _Unwind_Resume(a1);
}

uint64_t realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdObject *a3@<X2>, std::string *a4@<X8>)
{
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(a3, a1, v8);
  if (v8[0])
  {
    if (SHIBYTE(v10) < 0)
    {
      std::string::__init_copy_ctor_external(a4, v9, *(&v9 + 1));
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = v9;
      a4->__r_.__value_.__r.__words[2] = v10;
    }

    if (SHIBYTE(v12) < 0)
    {
      std::string::__init_copy_ctor_external(a4 + 1, v11, *(&v11 + 1));
      return realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(v8);
    }

    *&a4[1].__r_.__value_.__l.__data_ = v11;
    v6 = v12;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a4, *a2, *(a2 + 8));
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *a2;
      a4->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }

    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a4 + 1, *(a2 + 24), *(a2 + 32));
      return realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(v8);
    }

    *&a4[1].__r_.__value_.__l.__data_ = *(a2 + 24);
    v6 = *(a2 + 40);
  }

  a4[1].__r_.__value_.__r.__words[2] = v6;
  return realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(v8);
}

void sub_2475F8124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

void realityio::SpatialAudioFileAssetBuilder::clear(realityio::SpatialAudioFileAssetBuilder *this, realityio::Inputs *a2)
{
  v15 = 0;
  v4 = *(this + 35);
  if (v4)
  {
    *(this + 35) = 0;
    v15 = v4;
  }

  v5 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v15);
  v7 = *(this + 2);
  v6 = *(this + 3);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = realityio::SpatialAudioFileAssetBuilder::kOutputName(v5);
  realityio::Outputs::getRawValue<REAsset *>(v7, v8, &v15);
  v10 = v15;
  if ((v15 & 1) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v7 = v14.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      if ((v15 & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v14 = __p;
      v7 = __p.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v10)
  {
    v12 = *(this + 2);
    v11 = *(this + 3);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = realityio::SpatialAudioFileAssetBuilder::kOutputName(v9);
    std::mutex::lock((v12 + 64));
    if (v12 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v12 + 40, v13))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v12 + 40), v13);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v12, v13);
    std::mutex::unlock((v12 + 64));
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else if (v2 < 0)
  {
    operator delete(v7);
  }
}

void sub_2475F82C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a15 & 1) == 0 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void realityio::SpatialAudioFileAssetBuilder::~SpatialAudioFileAssetBuilder(realityio::SpatialAudioFileAssetBuilder *this)
{
  *this = &unk_285953BB8;
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 35);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285953BB8;
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 35);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<realityio::SpatialAudioFileAssetBuilder::SpatialAudioFileAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::SpatialAudioFileAssetBuilder::SpatialAudioFileAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2475F8788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SpatialAudioFileAssetBuilder::SpatialAudioFileAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::SpatialAudioFileAssetBuilder::SpatialAudioFileAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(pxrInternal__aapl__pxrReserved__::UsdObject *this@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X0>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(&__p, a3);
      if ((*a3 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
          if (v8)
          {
            v9 = (v8 + 16);
            if (*(v8 + 39) < 0)
            {
              v9 = *v9;
            }
          }

          else
          {
            v9 = "";
          }

          v15 = *(a3 + 24);
          v14 = a3 + 24;
          v13 = v15;
          if (*(v14 + 23) >= 0)
          {
            v13 = v14;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v13;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v16);
      *(a3 + 8) = *buf;
      v11 = v22;
      *(a3 + 24) = *&buf[16];
      *(a3 + 32) = v11;
      *(a3 + 39) = *(&v22 + 7);
      LOBYTE(v11) = HIBYTE(v22);
      v22 = 0uLL;
      *&buf[16] = 0;
      *a3 = 0;
      *(a3 + 47) = v11;
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }

    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v19);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a3 + 8) = *buf;
    v10 = v22;
    *(a3 + 24) = *&buf[16];
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v22 + 7);
    LOBYTE(v10) = HIBYTE(v22);
    v22 = 0uLL;
    *&buf[16] = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if ((v19[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2475F8A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(v5);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2475F8C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v37 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v36))
      {
        v7 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v36);
        realityio::Ok<pxrInternal__aapl__pxrReserved__::SdfAssetPath const&,pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v7, &v28);
        *a3 = 1;
        *(a3 + 8) = v28;
        *(a3 + 32) = v29;
        *(a3 + 48) = v30;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v36);
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v36);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
        if (v35.__r_.__value_.__l.__size_)
        {
          v15 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v14);
          realityio::Ok<pxrInternal__aapl__pxrReserved__::SdfAssetPath const&,pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v15, &v28);
          *a3 = 1;
          *(a3 + 8) = v28;
          *(a3 + 32) = v29;
          *(a3 + 48) = v30;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v28, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = *&v28.__r_.__value_.__l.__data_;
          v26 = v29;
          *(a3 + 24) = *(&v28.__r_.__value_.__l + 2);
          *(a3 + 32) = v26;
          *(a3 + 39) = *(&v29 + 7);
          LOBYTE(v26) = HIBYTE(v29);
          v29 = 0uLL;
          v28.__r_.__value_.__r.__words[2] = 0;
          *a3 = 0;
          *(a3 + 47) = v26;
          if (SHIBYTE(v34) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v35);
        goto LABEL_38;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v28, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = *&v28.__r_.__value_.__l.__data_;
      v24 = v29;
      *(a3 + 24) = *(&v28.__r_.__value_.__l + 2);
      *(a3 + 32) = v24;
      *(a3 + 39) = *(&v29 + 7);
      LOBYTE(v24) = HIBYTE(v29);
      v29 = 0uLL;
      v28.__r_.__value_.__r.__words[2] = 0;
      *a3 = 0;
      *(a3 + 47) = v24;
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
LABEL_38:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v36);
        goto LABEL_39;
      }

      v23 = __p[0];
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      std::operator+<char>();
      v16 = std::string::append(&v32, ") at the given time: ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v31, *a2);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v31;
      }

      else
      {
        v18 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v35, v18, size);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v34 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v28, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = *&v28.__r_.__value_.__l.__data_;
      v22 = v29;
      *(a3 + 24) = *(&v28.__r_.__value_.__l + 2);
      *(a3 + 32) = v22;
      *(a3 + 39) = *(&v29 + 7);
      LOBYTE(v22) = HIBYTE(v29);
      v29 = 0uLL;
      v28.__r_.__value_.__r.__words[2] = 0;
      *a3 = 0;
      *(a3 + 47) = v22;
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v23 = v32.__r_.__value_.__r.__words[0];
    }

    operator delete(v23);
    goto LABEL_38;
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v8 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v28, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = *&v28.__r_.__value_.__l.__data_;
  v10 = v29;
  *(a3 + 24) = *(&v28.__r_.__value_.__l + 2);
  *(a3 + 32) = v10;
  *(a3 + 39) = *(&v29 + 7);
  LOBYTE(v10) = HIBYTE(v29);
  v29 = 0uLL;
  v28.__r_.__value_.__r.__words[2] = 0;
  *a3 = 0;
  *(a3 + 47) = v10;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_2475F9084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v26 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v26 - 56));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfAssetPathE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void realityio::Ok<pxrInternal__aapl__pxrReserved__::SdfAssetPath const&,pxrInternal__aapl__pxrReserved__::SdfAssetPath>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *&a2[1].__r_.__value_.__l.__data_ = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
  }
}

void sub_2475F9204(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      v2 = (a1 + 8);
LABEL_8:
      operator delete(*v2);
    }
  }

  else if (*(a1 + 47) < 0)
  {
    v2 = (a1 + 24);
    goto LABEL_8;
  }

  return a1;
}

__n128 std::__function::__func<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285953D30;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  v3 = **(a1 + 8);
  REEngineGetServiceLocator();
  AudioService = REServiceLocatorGetAudioService();
  pxrInternal__aapl__pxrReserved__::ArGetResolver(AudioService);
  v5 = *(a1 + 16) + 24;
  Extension = pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension();
  pxrInternal__aapl__pxrReserved__::ArGetResolver(Extension);
  v7 = *(a1 + 16);
  if (*(v7 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *(v7 + 24), *(v7 + 32));
  }

  else
  {
    v38 = *(v7 + 24);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v34)
  {
    (*(*v34 + 24))(&v38);
    v8 = *&v38.__r_.__value_.__l.__data_;
    cf = 0;
    v9 = (*(*v34 + 16))(v34);
    cf = CFDataCreate(0, v8, v9);
    v10 = *(a1 + 16);
    if (*(v10 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v10 + 24), *(v10 + 32));
    }

    else
    {
      __str = *(v10 + 24);
    }

    v11 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!*(&__str.__r_.__value_.__s + 23))
      {
        goto LABEL_22;
      }

      size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    v13 = size - 1;
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (__str.__r_.__value_.__s.__data_[v13] != 93)
      {
        goto LABEL_22;
      }

LABEL_19:
      std::string::basic_string(&v38, &__str, 0, v11 - 1, v45);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v38;
      goto LABEL_22;
    }

    if (*(__str.__r_.__value_.__r.__words[0] + v13) == 93)
    {
      v11 = __str.__r_.__value_.__l.__size_;
      goto LABEL_19;
    }

LABEL_22:
    v14 = **(a1 + 32);
    v15 = **(a1 + 40);
    v16 = REAudioFileAssetCreateWithMappedDataAndConfiguration();
    if (v2[35])
    {
      RERelease();
    }

    v2[35] = v16;
    v17 = cf;
    if (cf)
    {
      CFRelease(cf);
      v16 = v2[35];
    }

    cf = 0;
    if (v16)
    {
      REAssetSetMetadataString();
      if (*(*(*(**(a1 + 56) + 40) + 16) + 40))
      {
        realityio::LiveSceneManager::queueForDeferredAssetLoad();
      }

      v31 = v2[35];
      if (v31)
      {
        RERetain();
        v18 = *(**(a1 + 56) + 40);
        v38.__r_.__value_.__r.__words[0] = v31;
        if (v31)
        {
          RERetain();
        }
      }

      else
      {
        v24 = *(**(a1 + 56) + 40);
        v38.__r_.__value_.__r.__words[0] = 0;
      }

      v38.__r_.__value_.__l.__size_ = AudioService;
      v25 = **(a1 + 64);
      v38.__r_.__value_.__r.__words[2] = v25;
      if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v38.__r_.__value_.__r.__words[2] &= 0xFFFFFFFFFFFFFFF8;
      }

      v26 = *(a1 + 48);
      v39 = *v26;
      v27 = *(v26 + 1);
      v40 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v41, v26 + 4);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v42, v26 + 5);
      v28 = *(v26 + 3);
      v43 = v28;
      if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v43 &= 0xFFFFFFFFFFFFFFF8;
      }

      v29 = **(a1 + 72);
      v44 = v29;
      if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v44 &= 0xFFFFFFFFFFFFFFF8;
      }

      v46 = 0;
      operator new();
    }

    v19 = *(realityio::logObjects(v17) + 24);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(*(a1 + 48));
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(PrimPath);
      if (*(String + 23) >= 0)
      {
        v23 = String;
      }

      else
      {
        v23 = *String;
      }

      LODWORD(v38.__r_.__value_.__l.__data_) = 136315394;
      *(v38.__r_.__value_.__r.__words + 4) = p_str;
      WORD2(v38.__r_.__value_.__r.__words[1]) = 2080;
      *(&v38.__r_.__value_.__r.__words[1] + 6) = v23;
      _os_log_impl(&dword_247485000, v19, OS_LOG_TYPE_DEFAULT, "Could not find or parse audio file '%s' on prim '%s'", &v38, 0x16u);
    }

    (*(*v2 + 72))(v2, **(a1 + 56));
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&cf);
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v37 < 0)
  {
    operator delete(__p);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_2475F9AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, const void *a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&a23);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}::~(void *a1)
{
  v2 = a1[7];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[6];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  v4 = a1[4];
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  v5 = a1[2];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1);
}

void *std::__function::__func<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285953DA0;
  v2 = a1[8];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[7];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 6));
  v4 = a1[5];
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  v5 = a1[3];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 1);
  return a1;
}

void std::__function::__func<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285953DA0;
  v2 = a1[8];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[7];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 6));
  v4 = a1[5];
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  v5 = a1[3];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 1);

  JUMPOUT(0x24C1A91B0);
}

void *std::__function::__func<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[8];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[7];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 6));
  v4 = a1[5];
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  v5 = a1[3];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 1);
}

void std::__function::__func<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  v2 = a1[8];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[7];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 6));
  v4 = a1[5];
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  v5 = a1[3];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 1);

  operator delete(a1);
}

void std::__function::__func<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  REAudioFileAssetCompleteLoadWithService();
  v4 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v4 + 120) ^ a1[3]) <= 7)
  {
    v5 = a1[1];
LABEL_7:
    REAudioFileAssetSetInputMode();
    goto LABEL_18;
  }

  v6 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v6 + 10) ^ a1[3]) <= 7)
  {
    v7 = a1[1];
    goto LABEL_7;
  }

  v8 = *(realityio::logObjects(v6) + 24);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[3] & 0xFFFFFFFFFFFFFFF8;
    if (v9)
    {
      v10 = (v9 + 16);
      if (*(v9 + 39) < 0)
      {
        v10 = *v10;
      }
    }

    else
    {
      v10 = "";
    }

    PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath((a1 + 4));
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(PrimPath);
    if (*(String + 23) >= 0)
    {
      v13 = String;
    }

    else
    {
      v13 = *String;
    }

    v34 = 136315394;
    v35 = v10;
    v36 = 2080;
    v37 = v13;
    _os_log_impl(&dword_247485000, v8, OS_LOG_TYPE_DEFAULT, "invalid audio auralMode '%s' on prim path '%s'", &v34, 0x16u);
  }

LABEL_18:
  v14 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
  if (!v14)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v14 + 88) ^ a1[8]) <= 7)
  {
    goto LABEL_30;
  }

  v15 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
  if (!v15)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v15 + 96) ^ a1[8]) <= 7)
  {
    goto LABEL_30;
  }

  v16 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
  if (!v16)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v16 + 56) ^ a1[8]) <= 7)
  {
    goto LABEL_30;
  }

  v17 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
  if (!v17)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v17 + 64) ^ a1[8]) <= 7)
  {
    goto LABEL_30;
  }

  v18 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
  if (!v18)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v18 + 48) ^ a1[8]) > 7)
  {
    v20 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
    if (!v20)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    v21 = (*(v20 + 5) ^ a1[8]) < 8uLL;
    v22 = *(realityio::logObjects(v20) + 24);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v23)
      {
        v24 = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath((a1 + 4));
        v25 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v24);
        if (*(v25 + 23) >= 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = *v25;
        }

        v34 = 136315138;
        v35 = v26;
        _os_log_impl(&dword_247485000, v22, OS_LOG_TYPE_DEFAULT, "deprecated audio playbackMode 'loop' found on prim path '%s'", &v34, 0xCu);
      }

      v27 = a1[1];
      REAudioFileAssetSetLoopCount();
    }

    else
    {
      if (v23)
      {
        v28 = a1[8] & 0xFFFFFFFFFFFFFFF8;
        if (v28)
        {
          v29 = (v28 + 16);
          if (*(v28 + 39) < 0)
          {
            v29 = *v29;
          }
        }

        else
        {
          v29 = "";
        }

        v30 = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath((a1 + 4));
        v31 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v30);
        if (*(v31 + 23) >= 0)
        {
          v32 = v31;
        }

        else
        {
          v32 = *v31;
        }

        v34 = 136315394;
        v35 = v29;
        v36 = 2080;
        v37 = v32;
        _os_log_impl(&dword_247485000, v22, OS_LOG_TYPE_DEFAULT, "invalid audio playbackMode '%s' on prim path '%s'", &v34, 0x16u);
      }
    }
  }

  else
  {
LABEL_30:
    v19 = a1[1];
    REAudioFileAssetSetLoopCount();
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::SpatialAudioFileAssetBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}::(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    RERetain();
  }

  *(a1 + 8) = a2[1];
  v5 = a2[2];
  *(a1 + 16) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 24) = *(a2 + 6);
  v6 = a2[4];
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 40), a2 + 10);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 44), a2 + 11);
  v7 = a2[6];
  *(a1 + 48) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 48) &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = a2[7];
  *(a1 + 56) = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 56) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<REAsset *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285953E20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t *realityio::Inputs::prim@<X0>(realityio::Inputs *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = (this + 32);
  v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*this + 8));

  return pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(a2, v4, v3);
}

void realityio::Inputs::createStandardTextureAsset(std::string::size_type a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string::size_type *a5@<X8>)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a3, *(a3 + 8));
  }

  else
  {
    v10 = *a3;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    __p = *(a3 + 24);
  }

  realityio::TextureBuilder::createStandardTextureAsset(a1, a2, &v10, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_2475FA820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::Inputs::createCubeMapTextureAsset(std::string::size_type a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string::size_type *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v10);
  std::string::basic_string[abi:ne200100]<0>(&v14, "");
  v16 = 0;
  v17 = realityio::TextureSwizzleChannels::kDefault;
  v18 = 2;
  v19 = 0;
  v20 = 512;
  std::string::basic_string[abi:ne200100]<0>(&v21, "");
  v18 = 5;
  v16 = 4;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a3, *(a3 + 8));
  }

  else
  {
    v8 = *a3;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    __p = *(a3 + 24);
  }

  realityio::Inputs::createStandardTextureAsset(a1, a2, &v8, v10, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}
void sub_217FB7E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<short>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<short>::GetView(*(a1 + 16));
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<short>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<short>::GetView(v1);
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 2 * v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      v9 -= 2;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<short>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<short>::GetView(*(a1 + 16));
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<short>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<short>::GetView(*(a1 + 16));
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<short>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB8164(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<int>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<int>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<int>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB8404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<int>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<int>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DFED0;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB8514(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB8620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<int>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB8708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<int>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB87EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<int>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<int>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<int>::GetView(a1[2]);
  v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v8 = (v6 & 0x3FFFFFFFFFFFFFFFLL) != 0 ? View : 0;
  v9 = MIL::IRValueContiguousData<int>::GetView(*(v4 + 16));
  v11 = (v10 & 0x3FFFFFFFFFFFFFFFLL) != 0 ? v9 : 0;
  if (v7 != (v10 & 0x3FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FB8A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<int>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<int>::GetView(*(a1 + 16));
  if ((v2 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<int>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<int>::GetView(v1);
  if ((v7 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 4 * v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      v9 -= 4;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<int>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<int>::GetView(*(a1 + 16));
  if ((v3 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<int>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<int>::GetView(*(a1 + 16));
  if ((v3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<int>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB8D38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<long long>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<long long>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<long long>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB8FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<long long>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<long long>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DFF88;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB90E8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB91F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<long long>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB92DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<long long>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB93C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<long long>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<long long>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<long long>::GetView(a1[2]);
  v7 = v6 & 0x1FFFFFFFFFFFFFFFLL;
  v8 = (v6 & 0x1FFFFFFFFFFFFFFFLL) != 0 ? View : 0;
  v9 = MIL::IRValueContiguousData<long long>::GetView(*(v4 + 16));
  v11 = (v10 & 0x1FFFFFFFFFFFFFFFLL) != 0 ? v9 : 0;
  if (v7 != (v10 & 0x1FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FB95F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<long long>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<long long>::GetView(*(a1 + 16));
  if ((v2 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<long long>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<long long>::GetView(v1);
  if ((v7 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      v9 -= 8;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<long long>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<long long>::GetView(*(a1 + 16));
  if ((v3 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<long long>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<long long>::GetView(*(a1 + 16));
  if ((v3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<long long>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB990C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt1>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<MIL::UInt1>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<MIL::UInt1>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB9B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<MIL::UInt1>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0040;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 21)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB9C68(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB9D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB9E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB9F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt1>::Equals(uint64_t a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (result)
  {
    v4 = result;
    if (*(a1 + 8) != *(result + 8))
    {
      return 0;
    }

    MIL::IRTypedTensorValue<MIL::UInt1>::GetValues(a1);
    v6 = v5;
    v8 = v7;
    MIL::IRTypedTensorValue<MIL::UInt1>::GetValues(v4);
    if (v8 != v10)
    {
      return 0;
    }

    v11 = v9;
    (*(**(a1 + 16) + 40))(v21);
    (*(**(v4 + 16) + 40))(__p);
    v12 = v22;
    if ((v22 & 0x80u) == 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21[1];
    }

    v14 = v20;
    v15 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v14 = __p[1];
    }

    if (v13 == v14)
    {
      if ((v22 & 0x80u) == 0)
      {
        v16 = v21;
      }

      else
      {
        v16 = v21[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = memcmp(v16, v17, v13) != 0;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v12 & 0x80) != 0)
        {
          operator delete(v21[0]);
          if (v18)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        return CompareSubByteValues<MIL::UInt1>(v6, v8, v11);
      }
    }

    else
    {
      v18 = 1;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    v12 = v22;
    goto LABEL_22;
  }

  return result;
}

void sub_217FBA148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt1>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FBA2F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt2>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<MIL::UInt2>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<MIL::UInt2>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FBA544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<MIL::UInt2>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E00F8;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 19)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FBA654(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FBA760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBA848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBA92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt2>::Equals(uint64_t a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (result)
  {
    v4 = result;
    if (*(a1 + 8) != *(result + 8))
    {
      return 0;
    }

    MIL::IRTypedTensorValue<MIL::UInt2>::GetValues(a1);
    v6 = v5;
    v8 = v7;
    MIL::IRTypedTensorValue<MIL::UInt2>::GetValues(v4);
    if (v8 != v10)
    {
      return 0;
    }

    v11 = v9;
    (*(**(a1 + 16) + 40))(v21);
    (*(**(v4 + 16) + 40))(__p);
    v12 = v22;
    if ((v22 & 0x80u) == 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21[1];
    }

    v14 = v20;
    v15 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v14 = __p[1];
    }

    if (v13 == v14)
    {
      if ((v22 & 0x80u) == 0)
      {
        v16 = v21;
      }

      else
      {
        v16 = v21[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = memcmp(v16, v17, v13) != 0;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v12 & 0x80) != 0)
        {
          operator delete(v21[0]);
          if (v18)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        return CompareSubByteValues<MIL::UInt2>(v6, v8, v11);
      }
    }

    else
    {
      v18 = 1;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    v12 = v22;
    goto LABEL_22;
  }

  return result;
}

void sub_217FBAB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt2>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FBACE4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt3>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<MIL::UInt3>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<MIL::UInt3>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FBAF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<MIL::UInt3>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E01B0;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 22)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FBB040(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FBB14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBB234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBB318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt3>::Equals(uint64_t a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (result)
  {
    v4 = result;
    if (*(a1 + 8) != *(result + 8))
    {
      return 0;
    }

    MIL::IRTypedTensorValue<MIL::UInt3>::GetValues(a1);
    v6 = v5;
    v8 = v7;
    MIL::IRTypedTensorValue<MIL::UInt3>::GetValues(v4);
    if (v8 != v10)
    {
      return 0;
    }

    v11 = v9;
    (*(**(a1 + 16) + 40))(v21);
    (*(**(v4 + 16) + 40))(__p);
    v12 = v22;
    if ((v22 & 0x80u) == 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21[1];
    }

    v14 = v20;
    v15 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v14 = __p[1];
    }

    if (v13 == v14)
    {
      if ((v22 & 0x80u) == 0)
      {
        v16 = v21;
      }

      else
      {
        v16 = v21[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = memcmp(v16, v17, v13) != 0;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v12 & 0x80) != 0)
        {
          operator delete(v21[0]);
          if (v18)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        return CompareSubByteValues<MIL::UInt3>(v6, v8, v11);
      }
    }

    else
    {
      v18 = 1;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    v12 = v22;
    goto LABEL_22;
  }

  return result;
}

void sub_217FBB520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt3>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FBB6D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt4>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<MIL::UInt4>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<MIL::UInt4>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FBB91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<MIL::UInt4>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0268;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 20)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FBBA2C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FBBB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBBC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBBD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt4>::Equals(uint64_t a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (result)
  {
    v4 = result;
    if (*(a1 + 8) != *(result + 8))
    {
      return 0;
    }

    MIL::IRTypedTensorValue<MIL::UInt4>::GetValues(a1);
    v6 = v5;
    v8 = v7;
    MIL::IRTypedTensorValue<MIL::UInt4>::GetValues(v4);
    if (v8 != v10)
    {
      return 0;
    }

    v11 = v9;
    (*(**(a1 + 16) + 40))(v21);
    (*(**(v4 + 16) + 40))(__p);
    v12 = v22;
    if ((v22 & 0x80u) == 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21[1];
    }

    v14 = v20;
    v15 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v14 = __p[1];
    }

    if (v13 == v14)
    {
      if ((v22 & 0x80u) == 0)
      {
        v16 = v21;
      }

      else
      {
        v16 = v21[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = memcmp(v16, v17, v13) != 0;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v12 & 0x80) != 0)
        {
          operator delete(v21[0]);
          if (v18)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        return CompareSubByteValues<MIL::UInt4>(v6, v8, v11);
      }
    }

    else
    {
      v18 = 1;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    v12 = v22;
    goto LABEL_22;
  }

  return result;
}

void sub_217FBBF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt4>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FBC0BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt6>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<MIL::UInt6>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<MIL::UInt6>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FBC308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<MIL::UInt6>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0320;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FBC418(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FBC524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBC60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBC6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt6>::Equals(uint64_t a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (result)
  {
    v4 = result;
    if (*(a1 + 8) != *(result + 8))
    {
      return 0;
    }

    MIL::IRTypedTensorValue<MIL::UInt6>::GetValues(a1);
    v6 = v5;
    v8 = v7;
    MIL::IRTypedTensorValue<MIL::UInt6>::GetValues(v4);
    if (v8 != v10)
    {
      return 0;
    }

    v11 = v9;
    (*(**(a1 + 16) + 40))(v21);
    (*(**(v4 + 16) + 40))(__p);
    v12 = v22;
    if ((v22 & 0x80u) == 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21[1];
    }

    v14 = v20;
    v15 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v14 = __p[1];
    }

    if (v13 == v14)
    {
      if ((v22 & 0x80u) == 0)
      {
        v16 = v21;
      }

      else
      {
        v16 = v21[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = memcmp(v16, v17, v13) != 0;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v12 & 0x80) != 0)
        {
          operator delete(v21[0]);
          if (v18)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        return CompareSubByteValues<MIL::UInt6>(v6, v8, v11);
      }
    }

    else
    {
      v18 = 1;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    v12 = v22;
    goto LABEL_22;
  }

  return result;
}

void sub_217FBC8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt6>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FBCAA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<unsigned char>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<unsigned char>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<unsigned char>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FBCCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<unsigned char>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E03D8;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 14)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FBCE04(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FBCF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBCFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBD0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<unsigned char>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<unsigned char>::GetView(a1[2]);
  v7 = v6;
  v8 = v6 ? View : 0;
  v9 = MIL::IRValueContiguousData<unsigned char>::GetView(*(v4 + 16));
  v11 = v10 ? v9 : 0;
  if (v7 != v10)
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FBD310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t MIL::IRTypedTensorValue<unsigned char>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<unsigned char>::GetView(v1);
  if (v7)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      --v9;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<unsigned char>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FBD564(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<unsigned short>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<unsigned short>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<unsigned short>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FBD804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned short>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<unsigned short>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0490;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 15)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FBD914(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FBDA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned short>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBDB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned short>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBDBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned short>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<unsigned short>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<unsigned short>::GetView(a1[2]);
  v7 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? View : 0;
  v9 = MIL::IRValueContiguousData<unsigned short>::GetView(*(v4 + 16));
  v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v9 : 0;
  if (v7 != (v10 & 0x7FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FBDE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<unsigned short>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<unsigned short>::GetView(*(a1 + 16));
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<unsigned short>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<unsigned short>::GetView(v1);
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 2 * v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      v9 -= 2;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<unsigned short>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<unsigned short>::GetView(*(a1 + 16));
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<unsigned short>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<unsigned short>::GetView(*(a1 + 16));
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<unsigned short>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FBE138(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<unsigned int>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<unsigned int>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<unsigned int>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FBE3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned int>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<unsigned int>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0548;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 16)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FBE4E8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FBE5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned int>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBE6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned int>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBE7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned int>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<unsigned int>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<unsigned int>::GetView(a1[2]);
  v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v8 = (v6 & 0x3FFFFFFFFFFFFFFFLL) != 0 ? View : 0;
  v9 = MIL::IRValueContiguousData<unsigned int>::GetView(*(v4 + 16));
  v11 = (v10 & 0x3FFFFFFFFFFFFFFFLL) != 0 ? v9 : 0;
  if (v7 != (v10 & 0x3FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FBE9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<unsigned int>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<unsigned int>::GetView(*(a1 + 16));
  if ((v2 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<unsigned int>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<unsigned int>::GetView(v1);
  if ((v7 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 4 * v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      v9 -= 4;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<unsigned int>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<unsigned int>::GetView(*(a1 + 16));
  if ((v3 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<unsigned int>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<unsigned int>::GetView(*(a1 + 16));
  if ((v3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<unsigned int>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FBED0C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<unsigned long long>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<unsigned long long>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<unsigned long long>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FBEFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned long long>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<unsigned long long>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0600;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FBF0BC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FBF1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned long long>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBF2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned long long>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FBF394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<unsigned long long>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<unsigned long long>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<unsigned long long>::GetView(a1[2]);
  v7 = v6 & 0x1FFFFFFFFFFFFFFFLL;
  v8 = (v6 & 0x1FFFFFFFFFFFFFFFLL) != 0 ? View : 0;
  v9 = MIL::IRValueContiguousData<unsigned long long>::GetView(*(v4 + 16));
  v11 = (v10 & 0x1FFFFFFFFFFFFFFFLL) != 0 ? v9 : 0;
  if (v7 != (v10 & 0x1FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FBF5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<unsigned long long>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<unsigned long long>::GetView(*(a1 + 16));
  if ((v2 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<unsigned long long>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<unsigned long long>::GetView(v1);
  if ((v7 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      v9 -= 8;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<unsigned long long>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<unsigned long long>::GetView(*(a1 + 16));
  if ((v3 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<unsigned long long>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<unsigned long long>::GetView(*(a1 + 16));
  if ((v3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<unsigned long long>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FBF8E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTupleValue::~IRTupleValue(MIL::IRTupleValue *this)
{
  v1 = (this + 16);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  v1 = (this + 16);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  v2 = (this + 16);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x21CEAFEA0](this, 0xE1C406427F484);
}

void *MIL::IRTupleValue::IRTupleValue(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2829E06B8;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 1) = *a3;
  a1[4] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = (*(*a1[1] + 64))(a1[1]);
  if ((v4[1] - *v4) >> 3 != (a1[3] - a1[2]) >> 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v34 = (*(*a1[1] + 64))(a1[1]);
    std::to_string(&v50, (v34[1] - *v34) >> 3);
    v35 = std::string::insert(&v50, 0, "Cannot create a tuple value with ");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = std::string::append(&v51, " types from ");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v49, (a1[3] - a1[2]) >> 4);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v49;
    }

    else
    {
      v39 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v49.__r_.__value_.__l.__size_;
    }

    v41 = std::string::append(&v52, v39, size);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    v43 = std::string::append(&v53, " values.");
    v44 = *&v43->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v54);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = 0;
  for (i = 0; ; ++i)
  {
    v7 = (*(*a1[1] + 64))(a1[1]);
    v8 = v7[1] - *v7;
    v9 = a1[1];
    if (i >= v8 >> 3)
    {
      break;
    }

    v10 = *(*(*(*v9 + 64))(v9) + 8 * i);
    v11 = a1[2];
    if (a1[3] == v11)
    {
      v11 = 0;
    }

    v12 = (*(**(v11 + v5) + 32))(*(v11 + v5));
    if ((MIL::IsEqualOrStrongerType(v10, v12, v13) & 1) == 0)
    {
      v15 = i;
      v16 = __cxa_allocate_exception(0x10uLL);
      (*(*a1[1] + 56))(&v49);
      v17 = std::string::insert(&v49, 0, "Cannot create a tuple of type ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v50.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v50.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v50, " from value at index ");
      v20 = *&v19->__r_.__value_.__l.__data_;
      v51.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v51.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v48, v15);
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v48;
      }

      else
      {
        v21 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = v48.__r_.__value_.__l.__size_;
      }

      v23 = std::string::append(&v51, v21, v22);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v52.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v52.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      v25 = std::string::append(&v52, " of incompatible type ");
      v26 = *&v25->__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = a1[2];
      if (a1[3] == v27)
      {
        v27 = 0;
      }

      v28 = (*(**(v27 + v5) + 32))(*(v27 + v5));
      (*(*v28 + 56))(v46);
      if ((v47 & 0x80u) == 0)
      {
        v29 = v46;
      }

      else
      {
        v29 = v46[0];
      }

      if ((v47 & 0x80u) == 0)
      {
        v30 = v47;
      }

      else
      {
        v30 = v46[1];
      }

      v31 = std::string::append(&v53, v29, v30);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v54.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v54.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v16, &v54);
      __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v5 += 16;
  }

  if (!v9)
  {
    v45 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v45, "Type cannot be null");
    __cxa_throw(v45, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FBFF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v50 - 73) < 0)
  {
    operator delete(*(v50 - 96));
  }

  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((v48 & 1) == 0)
    {
LABEL_16:
      *(v50 - 96) = v49;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v50 - 96));
      _Unwind_Resume(a1);
    }
  }

  else if (!v48)
  {
    goto LABEL_16;
  }

  __cxa_free_exception(v47);
  goto LABEL_16;
}

uint64_t MIL::IRTupleValue::GetValues(MIL::IRTupleValue *this)
{
  if (*(this + 3) == *(this + 2))
  {
    return 0;
  }

  else
  {
    return *(this + 2);
  }
}

uint64_t MIL::IRTupleValue::Equals(MIL::IRTupleValue *this, const MIL::IRValue *a2)
{
  if (this == a2)
  {
    return 1;
  }

  result = (*(*a2 + 56))(a2);
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (*(this + 1) != *(result + 8))
  {
    return 0;
  }

  v5 = *(this + 2);
  if (*(this + 3) == v5)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(v4 + 16);
    if (v7 >= (*(v4 + 24) - v8) >> 4)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    result = (*(**(v5 + v6) + 16))(*(v5 + v6), *(v8 + v6));
    if ((result & 1) == 0)
    {
      break;
    }

    ++v7;
    v5 = *(this + 2);
    v6 += 16;
  }

  while (v7 < (*(this + 3) - v5) >> 4);
  return result;
}

uint64_t MIL::IRTupleValue::GetHash(MIL::IRTupleValue *this)
{
  v6 = 0;
  v1 = *(this + 2);
  v2 = *(this + 3);
  if (v1 == v2)
  {
    return 0;
  }

  do
  {
    v3 = *v1;
    v1 += 2;
    v4 = (*(*v3 + 24))(v3);
    MIL::Util::HashCombine(&v6, v4);
  }

  while (v1 != v2);
  return v6;
}

void sub_217FC03A4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRListValue::~IRListValue(MIL::IRListValue *this)
{
  v1 = (this + 16);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  v1 = (this + 16);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  v2 = (this + 16);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x21CEAFEA0](this, 0xE1C406427F484);
}

uint64_t MIL::IRListValue::IRListValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2829E0718;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 32) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *(a1 + 8);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if ((*(*v4 + 16))(v4) != (v6 - v5) >> 4)
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    v31 = (*(**(a1 + 8) + 16))(*(a1 + 8));
    std::to_string(&v41, v31);
    v32 = std::string::insert(&v41, 0, "Cannot create a list of length");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v42, " from a value list of length ");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v40, (*(a1 + 24) - *(a1 + 16)) >> 4);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v40;
    }

    else
    {
      v36 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    v38 = std::string::append(&v43, v36, size);
    v39 = *&v38->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v30, &v44);
    __cxa_throw(v30, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = MIL::IRValueType::AsListType(*(a1 + 8));
  v8 = (*(*v7 + 64))(v7);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24) - v9;
  if (v10)
  {
    v11 = *(a1 + 16);
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v8;
    v13 = v11 + v10;
    do
    {
      v14 = (*(**v9 + 32))();
      if ((MIL::IsEqualOrStrongerType(v12, v14, v15) & 1) == 0)
      {
        v17 = __cxa_allocate_exception(0x10uLL);
        v18 = v12;
        v19 = v17;
        (*(*v18 + 56))(&v41, v18);
        v20 = std::string::insert(&v41, 0, "Cannot initialize list value of element type ");
        v21 = *&v20->__r_.__value_.__l.__data_;
        v42.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
        *&v42.__r_.__value_.__l.__data_ = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        v22 = std::string::append(&v42, " from value with incompatible element type ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v43.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v43.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = (*(**v9 + 32))();
        (*(*v24 + 56))(&v40);
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v40;
        }

        else
        {
          v25 = v40.__r_.__value_.__r.__words[0];
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v26 = v40.__r_.__value_.__l.__size_;
        }

        v27 = std::string::append(&v43, v25, v26);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v44.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v44.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v19, &v44);
        __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v9 += 16;
    }

    while (v9 != v13);
  }

  return a1;
}

void sub_217FC08A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v36 - 57) < 0)
  {
    operator delete(*(v36 - 80));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v35 & 1) == 0)
    {
LABEL_14:
      *(v36 - 80) = v34;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v36 - 80));
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

uint64_t MIL::IRListValue::GetValues(MIL::IRListValue *this)
{
  if (*(this + 3) == *(this + 2))
  {
    return 0;
  }

  else
  {
    return *(this + 2);
  }
}

uint64_t MIL::IRListValue::GetElementType(MIL::IRValueType **this)
{
  v1 = *(*MIL::IRValueType::AsListType(this[1]) + 64);

  return v1();
}

uint64_t MIL::IRListValue::Equals(MIL::IRListValue *this, const MIL::IRValue *a2)
{
  if (this == a2)
  {
    return 1;
  }

  result = (*(*a2 + 48))(a2);
  if (result)
  {
    v4 = result;
    if (*(this + 1) == *(result + 8) && (v5 = *(this + 2), v6 = *(this + 3), v6 - v5 == *(result + 24) - *(result + 16)))
    {
      if (v6 == v5)
      {
        return 1;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        do
        {
          result = (*(**(v5 + v7) + 16))(*(v5 + v7), *(*(v4 + 16) + v7));
          if ((result & 1) == 0)
          {
            break;
          }

          ++v8;
          v5 = *(this + 2);
          v7 += 16;
        }

        while (v8 < (*(this + 3) - v5) >> 4);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MIL::IRListValue::GetHash(MIL::IRListValue *this)
{
  v6 = 0;
  v1 = *(this + 2);
  v2 = *(this + 3);
  if (v1 == v2)
  {
    return 0;
  }

  do
  {
    v3 = *v1;
    v1 += 2;
    v4 = (*(*v3 + 24))(v3);
    MIL::Util::HashCombine(&v6, v4);
  }

  while (v1 != v2);
  return v6;
}

void sub_217FC0C40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRDictionaryValue::~IRDictionaryValue(MIL::IRDictionaryValue *this)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 8);
}

{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 8);
}

{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 8);

  JUMPOUT(0x21CEAFEA0);
}

BOOL MIL::IRDictionaryValue::Equals(MIL::IRDictionaryValue *this, const MIL::IRValue *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v3 = (*(*a2 + 64))(a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = (*(**(this + 6) + 64))(*(this + 6));
  v6 = (*(**(this + 6) + 72))(*(this + 6));
  if (v5 != (*(**(v4 + 48) + 64))(*(v4 + 48)) || v6 != (*(**(v4 + 48) + 72))(*(v4 + 48)) || *(this + 4) != *(v4 + 32))
  {
    return 0;
  }

  v7 = (this + 24);
  do
  {
    v7 = *v7;
    v8 = v7 == 0;
    if (!v7)
    {
      break;
    }

    MIL::IRDictionaryValue::TryGetValueForKey(v4, v7[2], &v11);
    if (!v11)
    {
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      return 0;
    }

    v9 = (*(*v7[4] + 16))(v7[4]);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  while ((v9 & 1) != 0);
  return v8;
}

void sub_217FC0EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRDictionaryValue::TryGetValueForKey(MIL::IRDictionaryValue *this@<X0>, const MIL::IRValue *a2@<X1>, void *a3@<X8>)
{
  v4 = *(this + 3);
  if (v4)
  {
    while (1)
    {
      v6 = v4[3];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = v4[5];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = (*(*a2 + 16))(a2);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      if (v8)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    v9 = v4[5];
    *a3 = v4[4];
    a3[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_12:
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_217FC0FF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::pair<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>::~pair(&a9);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    *v9 = 0;
    v9[1] = 0;
    __cxa_end_catch();
    JUMPOUT(0x217FC0FD4);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRDictionaryValue::GetHash(MIL::IRDictionaryValue *this)
{
  v5 = 0;
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  do
  {
    v2 = (*(*v1[2] + 24))(v1[2]);
    MIL::Util::HashCombine(&v5, v2);
    v3 = (*(*v1[4] + 24))(v1[4]);
    MIL::Util::HashCombine(&v5, v3);
    v1 = *v1;
  }

  while (v1);
  return v5;
}

void MIL::IRDictionaryValue::GetValueForKey(MIL::IRDictionaryValue *this@<X0>, const MIL::IRValue *a2@<X1>, void *a3@<X8>)
{
  MIL::IRDictionaryValue::TryGetValueForKey(this, a2, a3);
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested key not present in IRDictionaryValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_217FC1144(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FC1244(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRDictionaryValue::IRDictionaryValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0778;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table((a1 + 1), a3);
  a1[6] = a2;
  v5 = a1 + 3;
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v6 = (*(*a1[6] + 64))(a1[6]);
    v7 = (*(*v5[2] + 32))(v5[2]);
    if ((MIL::IsEqualOrStrongerType(v6, v7, v8) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v25 = (*(*a1[6] + 64))(a1[6]);
      (*(*v25 + 56))(&v38);
      v26 = std::string::insert(&v38, 0, "Cannot initialize dict key of type ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v28 = std::string::append(&v39, " from value with incompatible type ");
      v29 = *&v28->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = (*(*v5[2] + 32))(v5[2]);
      (*(*v30 + 56))(&v35);
      if ((v37 & 0x80u) == 0)
      {
        v31 = &v35;
      }

      else
      {
        v31 = v35;
      }

      if ((v37 & 0x80u) == 0)
      {
        v32 = v37;
      }

      else
      {
        v32 = v36;
      }

      v33 = std::string::append(&v40, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v41.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v41.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v41);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v9 = (*(*a1[6] + 72))(a1[6]);
    v10 = (*(*v5[4] + 32))(v5[4]);
    if ((MIL::IsEqualOrStrongerType(v9, v10, v11) & 1) == 0)
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      v13 = (*(*a1[6] + 72))(a1[6]);
      (*(*v13 + 56))(&v38);
      v14 = std::string::insert(&v38, 0, "Cannot initialize dict value of type ");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = std::string::append(&v39, " from value with incompatible type ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = (*(*v5[4] + 32))(v5[4]);
      (*(*v18 + 56))(&v35);
      if ((v37 & 0x80u) == 0)
      {
        v19 = &v35;
      }

      else
      {
        v19 = v35;
      }

      if ((v37 & 0x80u) == 0)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      v21 = std::string::append(&v40, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v41.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v41.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v12, &v41);
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return a1;
}

void sub_217FC16B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v36 - 41) < 0)
  {
    operator delete(*(v36 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v35 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v33 + 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v34);
  goto LABEL_14;
}

uint64_t MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  v2 = *(*a1 + ((a2 >> 1) & 0x1FFFFFFFFFFFFFFFLL)) >> (4 * (a2 & 1));
  MIL::Int4::Int4(&v5, (v2 << 28 >> 31) & 0xF0 | v2 & 0xF);
  return v5;
}

uint64_t MIL::Util::Span<MIL::UInt6 const,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  v2 = (6 * a2) & 6;
  v3 = (*a1 + ((6 * a2) >> 3));
  v4 = (*v3 >> v2) & 0x3F;
  if (v2 >= 3)
  {
    v5 = (v2 + 13) & 0x10;
    v6 = xmmword_218583B80;
    v7 = xmmword_218583B90;
    v8 = xmmword_218583BA0;
    v9 = xmmword_218583BB0;
    v10 = xmmword_218583BC0;
    v11 = xmmword_218583BD0;
    v12 = xmmword_218583BE0;
    v13 = xmmword_218583BF0;
    v14 = xmmword_218583C00;
    v15 = xmmword_218583C10;
    v16 = xmmword_218583C20;
    v17 = 0uLL;
    v18 = xmmword_218583C30;
    v19.i64[0] = 0x100000001;
    v19.i64[1] = 0x100000001;
    v20 = vdupq_n_s64(v2 - 3);
    v21.i64[0] = 0x1000000010;
    v21.i64[1] = 0x1000000010;
    v22 = vdupq_n_s64(0x10uLL);
    do
    {
      v23 = v17;
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v17 = vorrq_s8(v17, vuzp1q_s8(vuzp1q_s16(vshlq_u32(v19, v9), vshlq_u32(v19, v8)), vuzp1q_s16(vshlq_u32(v19, v7), vshlq_u32(v19, v6))));
      v30 = v16;
      v15 = vaddq_s64(v15, v22);
      v31 = v18;
      v16 = vaddq_s64(v16, v22);
      v18 = vaddq_s64(v18, v22);
      v14 = vaddq_s64(v14, v22);
      v13 = vaddq_s64(v13, v22);
      v12 = vaddq_s64(v12, v22);
      v11 = vaddq_s64(v11, v22);
      v10 = vaddq_s64(v10, v22);
      v9 = vaddq_s32(v9, v21);
      v8 = vaddq_s32(v8, v21);
      v7 = vaddq_s32(v7, v21);
      v6 = vaddq_s32(v6, v21);
      v5 -= 16;
    }

    while (v5);
    v32 = vbslq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v31, v20), vcgtq_u64(v30, v20)), vuzp1q_s32(vcgtq_u64(v29, v20), vcgtq_u64(v28, v20))), vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v27, v20), vcgtq_u64(v26, v20)), vuzp1q_s32(vcgtq_u64(v25, v20), vcgtq_u64(v24, v20)))), v23, v17);
    *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v33 = v32.i64[0] | HIDWORD(v32.i64[0]) | ((v32.i64[0] | HIDWORD(v32.i64[0])) >> 16);
    v4 |= (v3[1] & (v33 | (v33 >> 8))) << (8 - v2);
  }

  MIL::UInt6::UInt6(&v36, v4);
  return v36;
}

uint64_t MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  MIL::UInt4::UInt4(&v4, (*(*a1 + ((a2 >> 1) & 0x1FFFFFFFFFFFFFFFLL)) >> (4 * (a2 & 1))) & 0xF);
  return v4;
}

uint64_t MIL::Util::Span<MIL::UInt3 const,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  v2 = (3 * a2) & 7;
  v3 = (*a1 + ((3 * a2) >> 3));
  v4 = (*v3 >> v2) & 7;
  if (v2 >= 6)
  {
    v5 = v2 - ((3 * a2) & 1) - 4;
    v6 = 0x100000000;
    v7 = 0;
    v8 = vdupq_n_s64(v2 - 6);
    v9 = xmmword_218583C30;
    v10 = vdupq_n_s64(2uLL);
    do
    {
      v11 = v7;
      v12 = v9;
      v7 = vorr_s8(v7, vshl_u32(0x100000001, v6));
      v9 = vaddq_s64(v9, v10);
      v6 = vadd_s32(v6, 0x200000002);
      v5 -= 2;
    }

    while (v5);
    v13 = vbsl_s8(vmovn_s64(vcgtq_u64(v12, v8)), v11, v7);
    v4 |= (v3[1] & (v13.i32[0] | v13.i32[1])) << (8 - v2);
  }

  MIL::UInt3::UInt3(&v16, v4);
  return v16;
}

uint64_t MIL::Util::Span<MIL::UInt2 const,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  MIL::UInt2::UInt2(&v4, (*(*a1 + ((a2 >> 2) & 0x1FFFFFFFFFFFFFFFLL)) >> (2 * (a2 & 3))) & 3);
  return v4;
}

uint64_t MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  MIL::UInt1::UInt1(&v4, (*(*a1 + (a2 >> 3)) >> (a2 & 7)) & 1);
  return v4;
}

BOOL CompareSubByteValues<MIL::Int4>(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = (a2 >> 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v6)
  {
    v7 = a1;
    v8 = a3;
    v9 = (a2 >> 1) & 0x1FFFFFFFFFFFFFFFLL;
    while (!MIL::operator!=(v7, v8))
    {
      ++v8;
      ++v7;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    v10 = 0;
    v11 = v4 & 1;
    do
    {
      result = v10 >= v11;
      if (v10 >= v11)
      {
        break;
      }

      v10 = 1;
    }

    while (((a3[v6] ^ a1[v6]) & 0xF) == 0);
  }

  return result;
}

uint64_t CompareSubByteValues<MIL::UInt1>(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = a2 >> 3;
  if (a2 < 8)
  {
LABEL_5:
    result = 1;
    if ((v4 & 7) != 0)
    {
      v11 = 0;
      v12 = a3[v6] ^ a1[v6];
      do
      {
        v13 = ((1 << v11) & v12) == 0;
        v14 = ((1 << v11) & v12) != 0 || (v4 & 7) - 1 == v11;
        ++v11;
      }

      while (!v14);
      return v13;
    }
  }

  else
  {
    v7 = a1;
    v8 = a3;
    v9 = a2 >> 3;
    while (!MIL::operator!=(v7, v8))
    {
      ++v8;
      ++v7;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return result;
}

BOOL CompareSubByteValues<MIL::UInt2>(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = (a2 >> 2) & 0x1FFFFFFFFFFFFFFFLL;
  if (v6)
  {
    v7 = a1;
    v8 = a3;
    v9 = (a2 >> 2) & 0x1FFFFFFFFFFFFFFFLL;
    while (!MIL::operator!=(v7, v8))
    {
      ++v8;
      ++v7;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    if ((v4 & 3) != 0)
    {
      v10 = 0;
      v11 = a3[v6] ^ a1[v6];
      do
      {
        result = ((3 << v10) & v11) == 0;
        v13 = ((3 << v10) & v11) != 0 || 2 * (v4 & 3) - 2 == v10;
        v10 += 2;
      }

      while (!v13);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL CompareSubByteValues<MIL::UInt3>(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = 3 * a2;
  v6 = (3 * a2) >> 3;
  if ((3 * a2) < 8)
  {
LABEL_8:
    if ((v5 & 7u) >= 3)
    {
      v11 = 0;
      v12 = a3[v6] ^ a1[v6];
      do
      {
        result = ((7 << v11) & v12) == 0;
        v13 = ((7 << v11) & v12) != 0 || 3 * ((v5 & 7u) / 3) - 3 == v11;
        v11 += 3;
      }

      while (!v13);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (3 * a2) >> 3;
    }

    v8 = a1;
    v9 = a3;
    while (!MIL::operator!=(v8, v9))
    {
      ++v9;
      ++v8;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  return result;
}

BOOL CompareSubByteValues<MIL::UInt4>(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = (a2 >> 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v6)
  {
    v7 = a1;
    v8 = a3;
    v9 = (a2 >> 1) & 0x1FFFFFFFFFFFFFFFLL;
    while (!MIL::operator!=(v7, v8))
    {
      ++v8;
      ++v7;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    v10 = 0;
    v11 = v4 & 1;
    do
    {
      result = v10 >= v11;
      if (v10 >= v11)
      {
        break;
      }

      v10 = 1;
    }

    while (((a3[v6] ^ a1[v6]) & 0xF) == 0);
  }

  return result;
}

BOOL CompareSubByteValues<MIL::UInt6>(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = (6 * a2) & 6;
  v6 = ((3 * a2) >> 2) & 0x1FFFFFFFFFFFFFFFLL;
  v7 = v5 != 6;
  if ((6 * a2) < 8)
  {
LABEL_8:
    if (v5 == 6)
    {
      return ((a3[v6] ^ a1[v6]) & 0x3F) == 0;
    }
  }

  else
  {
    if (v6 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = ((3 * a2) >> 2) & 0x1FFFFFFFFFFFFFFFLL;
    }

    v9 = a1;
    v10 = a3;
    while (!MIL::operator!=(v9, v10))
    {
      ++v10;
      ++v9;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<MIL::IRValue const> const,std::shared_ptr<MIL::IRValue const>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<MIL::IRValue const> const,std::shared_ptr<MIL::IRValue const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::pair<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<BOOL>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0820;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<BOOL>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0820;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<BOOL>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0820;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t MIL::IRValueContiguousData<BOOL>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

unint64_t MIL::IRValueContiguousData<BOOL>::OnDataReady(uint64_t a1, uint64_t a2, uint64_t a3)
{
  atomic_store(1u, (a1 + 56));
  return result;
}

uint64_t MIL::IRValueContiguousData<BOOL>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::GetView(a1);
  if (!v2)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::anonymous namespace::ValidateType(uint64_t a1, uint64_t a2)
{
  if (!(*(*a1 + 24))(a1))
  {
    goto LABEL_4;
  }

  v4 = (*(*a1 + 24))(a1);
  v5 = (*(*v4 + 88))(v4);
  if (v5 > 0x19)
  {
    goto LABEL_28;
  }

  if (((1 << v5) & 0x303DEFC) != 0)
  {
LABEL_4:
    result = (*(*a1 + 16))(a1);
    if (result == a2)
    {
      return result;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Tensor storage and type have different number of elements");
LABEL_27:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (((1 << v5) & 0xF82000) == 0)
  {
LABEL_28:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid data type in IsSubByteSizedDataType");
    goto LABEL_27;
  }

  result = (*(*a1 + 16))(a1);
  if (result)
  {
    v7 = (*(*a1 + 24))(a1);
    v8 = (*(*v7 + 88))(v7);
    if (v8 <= 20)
    {
      switch(v8)
      {
        case 13:
          goto LABEL_12;
        case 19:
          v9 = 4 * a2;
          v10 = v9 - 3;
          goto LABEL_23;
        case 20:
LABEL_12:
          v9 = 2 * a2;
          v10 = v9 - 1;
          goto LABEL_23;
      }

LABEL_29:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Cannot validate tensor storage for unknown sub-byte-sized data");
      goto LABEL_27;
    }

    switch(v8)
    {
      case 21:
        v9 = 8 * a2;
        v10 = v9 - 7;
        goto LABEL_23;
      case 22:
        v14 = 8 * a2;
        v9 = 8 * a2 / 3uLL;
        v12 = v9 - 3;
        v13 = v14 >= 9;
        break;
      case 23:
        v11 = 8 * a2;
        v9 = 8 * a2 / 6uLL;
        v12 = v9 - 2;
        v13 = v11 >= 0xC;
        break;
      default:
        goto LABEL_29;
    }

    if (v13)
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

LABEL_23:
    result = (*(*a1 + 16))(a1);
    if (result > v9 || result < v10)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Sub Byte tensor storage and type have different number of elements");
      goto LABEL_27;
    }
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<std::string>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0870;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<std::string>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0870;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<std::string>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0870;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<std::string>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<std::string>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<std::string>::GetView(a1);
  if (!(24 * v2))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::Bf16>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E08C0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::Bf16>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E08C0;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::Bf16>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E08C0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::Bf16>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<MIL::Bf16>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::Bf16>::GetView(a1);
  if (!(2 * v2))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp16>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0910;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp16>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0910;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp16>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0910;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp16>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp16>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::Fp16>::GetView(a1);
  if (!(2 * v2))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp8E5M2>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0960;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp8E5M2>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0960;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp8E5M2>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0960;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp8E5M2>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp8E5M2>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::Fp8E5M2>::GetView(a1);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E09B0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E09B0;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E09B0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::GetView(a1);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<float>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0A00;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<float>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0A00;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<float>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0A00;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<float>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<float>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<float>::GetView(a1);
  if (!(4 * v2))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<double>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0A50;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<double>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0A50;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<double>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0A50;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<double>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<double>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<double>::GetView(a1);
  if (!(8 * v2))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::Int4>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0AA0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::Int4>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0AA0;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::Int4>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0AA0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::Int4>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<MIL::Int4>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::Int4>::GetView(a1);
  if (!(((v2 >> 1) & 0x1FFFFFFFFFFFFFFFLL) + (v2 & 1)))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<signed char>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0AF0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<signed char>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0AF0;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<signed char>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0AF0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<signed char>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<signed char>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<signed char>::GetView(a1);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<short>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0B40;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<short>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0B40;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<short>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0B40;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<short>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<short>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<short>::GetView(a1);
  if (!(2 * v2))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<int>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0B90;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<int>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0B90;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<int>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0B90;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<int>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<int>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<int>::GetView(a1);
  if (!(4 * v2))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<long long>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0BE0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<long long>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0BE0;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<long long>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0BE0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<long long>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<long long>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<long long>::GetView(a1);
  if (!(8 * v2))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt1>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0C30;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt1>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0C30;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt1>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0C30;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt1>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt1>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::UInt1>::GetView(a1);
  if ((v2 & 7) != 0)
  {
    v3 = (v2 >> 3) + 1;
  }

  else
  {
    v3 = v2 >> 3;
  }

  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt2>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0C80;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt2>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0C80;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt2>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0C80;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt2>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt2>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::UInt2>::GetView(a1);
  if ((v2 & 3) != 0)
  {
    v3 = ((v2 >> 2) & 0x1FFFFFFFFFFFFFFFLL) + 1;
  }

  else
  {
    v3 = (v2 >> 2) & 0x1FFFFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt3>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0CD0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt3>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0CD0;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt3>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0CD0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt3>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt3>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::UInt3>::GetView(a1);
  if (((3 * v2) & 7) != 0)
  {
    v3 = ((3 * v2) >> 3) + 1;
  }

  else
  {
    v3 = (3 * v2) >> 3;
  }

  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt4>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0D20;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt4>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0D20;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt4>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0D20;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt4>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt4>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::UInt4>::GetView(a1);
  if (!(((v2 >> 1) & 0x1FFFFFFFFFFFFFFFLL) + (v2 & 1)))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt6>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0D70;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt6>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0D70;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt6>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0D70;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt6>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<MIL::UInt6>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::UInt6>::GetView(a1);
  if (((6 * v2) & 6) != 0)
  {
    v3 = (((3 * v2) >> 2) & 0x1FFFFFFFFFFFFFFFLL) + 1;
  }

  else
  {
    v3 = ((3 * v2) >> 2) & 0x1FFFFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<unsigned char>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0DC0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<unsigned char>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0DC0;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<unsigned char>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0DC0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<unsigned char>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<unsigned char>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<unsigned char>::GetView(a1);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<unsigned short>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0E10;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<unsigned short>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0E10;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<unsigned short>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0E10;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<unsigned short>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<unsigned short>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<unsigned short>::GetView(a1);
  if (!(2 * v2))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<unsigned int>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0E60;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<unsigned int>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0E60;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<unsigned int>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0E60;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<unsigned int>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<unsigned int>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<unsigned int>::GetView(a1);
  if (!(4 * v2))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueContiguousData<unsigned long long>::~IRValueContiguousData(uint64_t a1)
{
  *a1 = &unk_2829E0EB0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

uint64_t MIL::IRValueContiguousData<unsigned long long>::IRValueContiguousData(uint64_t result, uint64_t a2)
{
  *result = &unk_2829E0EB0;
  *(result + 8) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  return result;
}

uint64_t MIL::IRValueContiguousData<unsigned long long>::IRValueContiguousData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829E0EB0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t MIL::IRValueContiguousData<unsigned long long>::GetView(uint64_t a1)
{
  v2 = (a1 + 56);
  v4 = (*(*a1 + 56))(a1);
  v5 = atomic_load(v2);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, (a1 + 56));
  }

  return v4;
}

uint64_t MIL::IRValueContiguousData<unsigned long long>::GetByteView(uint64_t a1)
{
  result = MIL::IRValueContiguousData<unsigned long long>::GetView(a1);
  if (!(8 * v2))
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRValueVectorData<unsigned char>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E0F00;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0DC0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<unsigned char>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<unsigned char>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<unsigned char>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E0F00;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC4D5C(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<unsigned char>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<unsigned short>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E0F50;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0E10;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<unsigned short>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<unsigned short>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<unsigned short>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E0F50;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC4F24(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<unsigned short>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<unsigned int>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E0FA0;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0E60;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<unsigned int>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<unsigned int>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<unsigned int>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E0FA0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC50F0(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<unsigned int>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<unsigned long long>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E0FF0;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0EB0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<unsigned long long>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<unsigned long long>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<unsigned long long>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E0FF0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC52BC(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<unsigned long long>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<signed char>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E1040;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0AF0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<signed char>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<signed char>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<signed char>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1040;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC5484(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<signed char>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<short>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E1090;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0B40;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<short>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<short>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<short>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1090;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC564C(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<short>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<int>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E10E0;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0B90;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<int>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<int>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<int>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E10E0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC5818(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<int>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<long long>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E1130;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0BE0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<long long>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<long long>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<long long>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1130;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC59E4(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<long long>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<MIL::Bf16>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E1180;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E08C0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<MIL::Bf16>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<MIL::Bf16>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<MIL::Bf16>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1180;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC5BB0(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<MIL::Bf16>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<MIL::Fp16>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E11D0;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0910;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<MIL::Fp16>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<MIL::Fp16>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<MIL::Fp16>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E11D0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC5D7C(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<MIL::Fp16>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<MIL::Fp8E4M3FN>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E1220;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E09B0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<MIL::Fp8E4M3FN>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<MIL::Fp8E4M3FN>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<MIL::Fp8E4M3FN>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1220;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC5F44(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<MIL::Fp8E4M3FN>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<MIL::Fp8E5M2>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E1270;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0960;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<MIL::Fp8E5M2>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<MIL::Fp8E5M2>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<MIL::Fp8E5M2>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1270;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC6108(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<MIL::Fp8E5M2>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<float>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E12C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0A00;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<float>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<float>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<float>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E12C0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC62D0(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<float>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<double>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E1310;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2829E0A50;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<double>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<double>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<double>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1310;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC649C(_Unwind_Exception *exception_object)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueVectorData<double>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueVectorData<std::string>::~IRValueVectorData(uint64_t a1)
{
  *a1 = &unk_2829E1360;
  v3 = (a1 + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  *a1 = &unk_2829E0870;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueVectorData<std::string>::~IRValueVectorData(uint64_t a1)
{
  MIL::IRValueVectorData<std::string>::~IRValueVectorData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueVectorData<std::string>::IRValueVectorData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1360;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC6668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  a10 = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  *v10 = &unk_2829E0870;
  if (*(v10 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueVectorData<std::string>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t MIL::IRValueUnownedData<BOOL>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0820;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<BOOL>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0820;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<BOOL>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E13B0;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC681C(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0820;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<std::string>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0870;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<std::string>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0870;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<std::string>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1400;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC69B0(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0870;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<MIL::Bf16>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E08C0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<MIL::Bf16>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E08C0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<MIL::Bf16>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1450;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC6B44(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E08C0;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<MIL::Fp16>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0910;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<MIL::Fp16>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0910;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<MIL::Fp16>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E14A0;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC6CD8(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0910;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<MIL::Fp8E5M2>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0960;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<MIL::Fp8E5M2>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0960;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<MIL::Fp8E5M2>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E14F0;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC6E6C(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0960;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<MIL::Fp8E4M3FN>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E09B0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<MIL::Fp8E4M3FN>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E09B0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<MIL::Fp8E4M3FN>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1540;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC7000(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E09B0;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<float>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0A00;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<float>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0A00;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<float>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1590;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC7194(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0A00;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<double>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0A50;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<double>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0A50;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<double>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E15E0;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC7328(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0A50;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<MIL::Int4>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0AA0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<MIL::Int4>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0AA0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<MIL::Int4>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1630;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC74BC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0AA0;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<signed char>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0AF0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<signed char>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0AF0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<signed char>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1680;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC7650(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0AF0;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<short>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0B40;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<short>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0B40;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<short>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E16D0;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC77E4(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0B40;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<int>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0B90;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<int>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0B90;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<int>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1720;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC7978(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0B90;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<long long>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0BE0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<long long>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0BE0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<long long>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1770;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC7B0C(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0BE0;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<MIL::UInt1>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0C30;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<MIL::UInt1>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0C30;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<MIL::UInt1>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E17C0;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC7CA0(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0C30;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<MIL::UInt2>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0C80;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<MIL::UInt2>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0C80;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<MIL::UInt2>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1810;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC7E34(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0C80;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<MIL::UInt3>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0CD0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<MIL::UInt3>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0CD0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<MIL::UInt3>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1860;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC7FC8(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0CD0;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<MIL::UInt4>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0D20;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<MIL::UInt4>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0D20;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<MIL::UInt4>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E18B0;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC815C(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0D20;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<MIL::UInt6>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0D70;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<MIL::UInt6>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0D70;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<MIL::UInt6>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1900;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC82F0(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0D70;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<unsigned char>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0DC0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<unsigned char>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0DC0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<unsigned char>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1950;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC8484(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0DC0;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<unsigned short>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0E10;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<unsigned short>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0E10;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<unsigned short>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E19A0;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC8618(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0E10;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<unsigned int>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0E60;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<unsigned int>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0E60;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<unsigned int>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E19F0;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC87AC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0E60;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueUnownedData<unsigned long long>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0EB0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueUnownedData<unsigned long long>::~IRValueUnownedData(uint64_t a1)
{
  *a1 = &unk_2829E0EB0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueUnownedData<unsigned long long>::IRValueUnownedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *a1 = &unk_2829E1A40;
  *(a1 + 80) = a4;
  atomic_store(1u, (a1 + 56));
  return a1;
}

void sub_217FC8940(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2829E0EB0;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueLegacyStorageData<float>::~IRValueLegacyStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1A90;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0A00;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueLegacyStorageData<float>::~IRValueLegacyStorageData(uint64_t a1)
{
  MIL::IRValueLegacyStorageData<float>::~IRValueLegacyStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueLegacyStorageData<float>::IRValueLegacyStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *a1 = &unk_2829E0A00;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1A90;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "identifier");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v7;
  UnknownLocationImpl::~UnknownLocationImpl(*(a1 + 72));
  v9 = v8;
  std::string::basic_string[abi:ne200100]<0>(v23, "path");
  v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v23);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v10[5], &__p);
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = *(v9 + 23);
  }

  else
  {
    v12 = v9[1];
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v12 == size)
  {
    if (v11 >= 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = *v9;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v17 = memcmp(v15, p_p, v12) == 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_20:
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (!v17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v21 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v22 = MEMORY[0x277D82750];
    goto LABEL_28;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v21 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v22 = MEMORY[0x277D82760];
LABEL_28:
    __cxa_throw(exception, v22, v21);
  }

  UnknownLocationImpl::~UnknownLocationImpl(*(a1 + 72));
  return a1;
}

void sub_217FC8C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::anonymous namespace::ValidateAndExtractProperty<unsigned long long>(const void **a1, void *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, a1);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v7);
    exception->__vftable = (MEMORY[0x277D828C8] + 16);
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  v3 = MIL::IRValue::TryGetScalar<unsigned long long>(v2[5]);
  if (!v3)
  {
    v6 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(v6, &v7);
    __cxa_throw(v6, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *v3;
}

void sub_217FC8E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::anonymous namespace::EnsureFileExists(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = stat(a1, &v4);
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v3);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FC8EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t MIL::IRValueLegacyStorageData<MIL::Fp16>::~IRValueLegacyStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1AE0;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0910;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueLegacyStorageData<MIL::Fp16>::~IRValueLegacyStorageData(uint64_t a1)
{
  MIL::IRValueLegacyStorageData<MIL::Fp16>::~IRValueLegacyStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueLegacyStorageData<MIL::Fp16>::IRValueLegacyStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *a1 = &unk_2829E0910;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1AE0;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "identifier");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v7;
  UnknownLocationImpl::~UnknownLocationImpl(*(a1 + 72));
  v9 = v8;
  std::string::basic_string[abi:ne200100]<0>(v23, "path");
  v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v23);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v10[5], &__p);
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = *(v9 + 23);
  }

  else
  {
    v12 = v9[1];
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v12 == size)
  {
    if (v11 >= 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = *v9;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v17 = memcmp(v15, p_p, v12) == 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_20:
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (!v17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v21 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v22 = MEMORY[0x277D82750];
    goto LABEL_28;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v21 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v22 = MEMORY[0x277D82760];
LABEL_28:
    __cxa_throw(exception, v22, v21);
  }

  UnknownLocationImpl::~UnknownLocationImpl(*(a1 + 72));
  return a1;
}

void sub_217FC9228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<MIL::Int4>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1B30;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0AA0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::Int4>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::Int4>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::Int4>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0AA0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1B30;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FC95B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

void MIL::IRValueStorageData<MIL::Int4>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  MIL::Blob::StorageReader::GetDataView<MIL::Int4>(v2, v1);
}

uint64_t MIL::IRValueStorageData<signed char>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1B80;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0AF0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<signed char>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<signed char>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<signed char>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0AF0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1B80;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FC99C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<signed char>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<signed char>(v2, v1);
}

uint64_t MIL::IRValueStorageData<unsigned char>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1BD0;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0DC0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<unsigned char>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<unsigned char>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<unsigned char>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0DC0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1BD0;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FC9DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<float>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1C20;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0A00;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<float>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<float>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<float>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0A00;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1C20;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCA150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<float>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<float>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::Fp16>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1C70;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0910;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::Fp16>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::Fp16>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::Fp16>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0910;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1C70;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}
uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 3) + 1;
    if (v14 >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v15 = a2 - v13;
    v16 = v7 - v13;
    v17 = v16 >> 2;
    if (v16 >> 2 <= v14)
    {
      v17 = ((v6 - *a1) >> 3) + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v19 = v15 >> 3;
    v32 = a1;
    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(a1, v18);
    }

    v29 = 0;
    v30 = 8 * v19;
    v31 = (8 * v19);
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(&v29, a3);
    v21 = v30;
    memcpy(v31, v4, a1[1] - v4);
    v22 = *a1;
    v23 = v30;
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v24 = v4 - v22;
    v25 = (v23 - (v4 - v22));
    memcpy(v25, v22, v24);
    v26 = *a1;
    *a1 = v25;
    v27 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(&v29);
    return v21;
  }

  else if (a2 == v6)
  {
    v20 = *a3;
    *a3 = 0;
    *v6 = v20;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = v6 - 1;
    v9 = a1[1];
    if (v6 >= 8)
    {
      v10 = *v8;
      *v8 = 0;
      *v6 = v10;
      v9 = v6 + 1;
    }

    a1[1] = v9;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v4, v8, v6);
    v11 = *a3;
    *a3 = 0;
    v12 = *v4;
    *v4 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  return v4;
}

void sub_213C62380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<llvm::ErrorList>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 8);
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x21604C990](v2, 0xA1C4030951706);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v6 = *result;
    v5 = result[1];
    if (v5 <= *v3)
    {
      v9 = v4 - v6;
      v8 = v9 == 0;
      v10 = v9 >> 2;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(v3[4], v11);
    }

    v7 = (((v5 - *v3) >> 3) + 1 + ((((v5 - *v3) >> 3) + 1) >> 63)) >> 1;
    result = std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v5, v4, &v5[-v7]);
    v3[1] -= 8 * v7;
  }

  v12 = *a2;
  *a2 = 0;
  *v4 = v12;
  v3[2] = (v4 + 1);
  return result;
}

void *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(void *a1, void *a2, void *a3)
{
  if (a2 != a1)
  {
    v6 = a2;
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      v10 = *--a3;
      v9 = v10;
      *a3 = v7;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

    while (v6 != a1);
  }

  return a2;
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *llvm::ErrorList::ErrorList(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = MEMORY[0x277D82258] + 16;
  a1[1] = 0;
  v5 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](a1 + 1, a2);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](v5, a3);
  return a1;
}

void sub_213C62730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void llvm::ErrorHandlerTraits<void (&)(llvm::ErrorInfoBase &)>::apply<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  (*(**a2 + 24))(__p, *a2);
  v5 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(v4, __p, 1);
  v6 = *v4 + 24 * *(v4 + 8);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  ++*(v4 + 8);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  *a3 = 0;
}

void sub_213C628BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 + a3 > *(a1 + 12))
  {
    v5 = *a1 + 24 * v3;
    if (*a1 > a2 || v5 <= a2)
    {
      llvm::SmallVectorTemplateBase<std::string,false>::grow();
    }

    v7 = a2 - *a1;
    llvm::SmallVectorTemplateBase<std::string,false>::grow();
  }

  return a2;
}

std::string *llvm::detail::join_impl<std::string *>@<X0>(std::string *result@<X0>, std::string *a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (result != a2)
  {
    v8 = result;
    v10 = (0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 3) - 1) * a4;
    v11 = result;
    do
    {
      size = SHIBYTE(v11->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = v11->__r_.__value_.__l.__size_;
      }

      v10 += size;
      ++v11;
    }

    while (v11 != a2);
    std::string::reserve(a5, v10);
    v13 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
    if (v13 >= 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = v8->__r_.__value_.__r.__words[0];
    }

    if (v13 >= 0)
    {
      v15 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v8->__r_.__value_.__l.__size_;
    }

    result = std::string::append(a5, v14, v15);
    for (i = v8 + 1; i != a2; ++i)
    {
      std::string::append(a5, a3, a4);
      v17 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
      if (v17 >= 0)
      {
        v18 = i;
      }

      else
      {
        v18 = i->__r_.__value_.__r.__words[0];
      }

      if (v17 >= 0)
      {
        v19 = HIBYTE(i->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = i->__r_.__value_.__l.__size_;
      }

      result = std::string::append(a5, v18, v19);
    }
  }

  return result;
}

void sub_213C62AAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<void>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = *(v5 + 8) - *(v5 + 12) + *(v5 + 10) - a3 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5, a2, v6, 0);
  }

  return result;
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(void *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void *flatbuffers::FlatBufferBuilder::TrackField(void *this, uint64_t a2, unsigned int a3)
{
  v5 = this;
  v6 = this[7];
  if (this[6] - v6 <= 7uLL)
  {
    this = flatbuffers::vector_downward::reallocate(this, 8uLL);
    v6 = v5[7];
  }

  *v6 = a3 | (a2 << 32);
  v5[7] += 8;
  ++*(v5 + 16);
  v7 = *(v5 + 34);
  if (v7 <= a2)
  {
    LOWORD(v7) = a2;
  }

  *(v5 + 34) = v7;
  return this;
}

void *flatbuffers::FlatBufferBuilder::Align(flatbuffers::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return flatbuffers::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

void *flatbuffers::vector_downward::fill(void *this, unint64_t a2)
{
  v3 = this;
  v4 = this[6];
  if (v4 - this[7] >= a2)
  {
    this[6] = v4 - a2;
    if (!a2)
    {
      return this;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(this, a2);
    v3[6] -= a2;
  }

  v5 = 0;
  do
  {
    *(v3[6] + v5++) = 0;
  }

  while (a2 != v5);
  return this;
}

uint64_t flatbuffers::vector_downward::reallocate(flatbuffers::vector_downward *this, unint64_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = v3 - *(this + 6) + v4;
  v6 = *(this + 7) - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (*(this + 3) + v3 + v7 - 1) & -*(this + 3);
  *(this + 4) = v8;
  v9 = *this;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_282634730;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3, v8, v5, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_282634730;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = result + *(this + 4) - v5;
  *(this + 5) = result;
  *(this + 6) = v11;
  *(this + 7) = result + v6;
  return result;
}

char *flatbuffers::Allocator::reallocate_downward(flatbuffers::Allocator *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x21604C970);
  }
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = *(v5 + 6);
    if ((v6 - *(v5 + 7)) <= 0xB)
    {
      flatbuffers::vector_downward::reallocate(v5, 0xCuLL);
      v6 = *(v5 + 6);
    }

    *(v5 + 6) = v6 - 12;
    v7 = *a3;
    *(v6 - 4) = *(a3 + 2);
    *(v6 - 12) = v7;
    v8 = *(v5 + 8) - *(v5 + 12) + *(v5 + 10);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v8);
  }

  return result;
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(void *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(uint64_t a1, char a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    flatbuffers::vector_downward::reallocate(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::EndTable(flatbuffers::FlatBufferBuilder *this, __int16 a2)
{
  v4 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
  if ((*(this + 34) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 34) + 2);
  }

  *(this + 34) = v5;
  v6 = *(this + 6);
  if (v6 - *(this + 7) < v5)
  {
    flatbuffers::vector_downward::reallocate(this, v5);
    v6 = *(this + 6);
  }

  *(this + 6) = v6 - v5;
  bzero((v6 - v5), v5);
  v7 = v4 - a2;
  v9 = *(this + 6);
  v8 = *(this + 7);
  v9[1] = v7;
  *v9 = *(this + 34);
  v10 = *(this + 16);
  v11 = (v8 - 8 * v10);
  if (v10)
  {
    v12 = v8 - 8 * v10;
    do
    {
      v13 = (v4 - *v12);
      *(v9 + *(v12 + 4)) = v4 - *v12;
      v12 += 8;
    }

    while (v12 < v8);
  }

  *(this + 7) = v11;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v14 = *(this + 4);
  v15 = *(this + 5);
  v16 = v14 - v9 + v15;
  if (*(this + 81) == 1 && v15 < v11)
  {
    v18 = *v9;
    v19 = v15 + v14;
    v20 = *(this + 5);
    while (1)
    {
      v21 = *v20;
      if (v18 == *(v19 - v21) && !memcmp((v19 - v21), v9, v18))
      {
        break;
      }

      if (++v20 >= v11)
      {
        v16 = v14 - v9 + v15;
        goto LABEL_19;
      }
    }

    v9 = (v9 + (v14 - v9 + v15 - v4));
    *(this + 6) = v9;
    v16 = v21;
  }

LABEL_19:
  if (v16 == v14 + v15 - v9)
  {
    if ((v9 - v11) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v11 = *(this + 7);
      v14 = *(this + 4);
      v15 = *(this + 5);
    }

    *v11 = v16;
    *(this + 7) = v11 + 4;
  }

  *(v15 + v14 - v4) = v16 - v4;
  *(this + 70) = 0;
  return v4;
}

uint64_t flatbuffers::FlatBufferBuilder::Finish(flatbuffers::FlatBufferBuilder *this, int a2, const char *a3, int a4)
{
  *(this + 7) = *(this + 5);
  v8 = 4;
  if (a4)
  {
    v8 = 8;
  }

  flatbuffers::FlatBufferBuilder::PreAlign(this, v8 + 4 * (a3 != 0), *(this + 9));
  if (a3)
  {
    v9 = *(this + 6);
    if ((v9 - *(this + 7)) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v9 = *(this + 6);
    }

    *(this + 6) = v9 - 4;
    *(v9 - 4) = *a3;
  }

  flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
  result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10) - a2 + 4);
  if (a4)
  {
    result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10));
  }

  *(this + 71) = 1;
  return result;
}

void *flatbuffers::FlatBufferBuilder::PreAlign(flatbuffers::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return flatbuffers::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

void *flatbuffers::vector_downward::push(void *this, const unsigned __int8 *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = this[6];
    if (v6 - this[7] < a3)
    {
      flatbuffers::vector_downward::reallocate(this, a3);
      v6 = v5[6];
    }

    v5[6] = v6 - a3;

    return memcpy((v6 - a3), __src, a3);
  }

  return this;
}

void flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(flatbuffers::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(*(this + 11), *(v2 + 8));
    MEMORY[0x21604C990](v2, 0x1060C40C2B13FB5);
  }

  flatbuffers::vector_downward::~vector_downward(this);
}

void flatbuffers::vector_downward::~vector_downward(flatbuffers::vector_downward *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      v4 = *(this + 4);
      (*(*v3 + 24))(v3);
    }

    else
    {
      MEMORY[0x21604C970](v2, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

uint64_t llvm::detail::scope_exit<MTLCompilerPluginInterface::airntEmitPipelineImage(void *,llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,AIRFunctionScript const*,char **,unsigned long *,char **,unsigned long *,char **)::{lambda(void)#1}>::~scope_exit(uint64_t a1)
{
  if (*(a1 + 8) == 1 && **a1)
  {
    v2 = MEMORY[0x21604BFC0]();
    MEMORY[0x21604C990](v2, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_28;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_28;
    }

LABEL_27:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || v7[4] != a2[2] || v7[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v7;
}

void llvm::SMDiagnostic::~SMDiagnostic(llvm::SMDiagnostic *this)
{
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(this + 128);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void fatalErrorHandler(void *a1, char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__str, a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = p_str;
    _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "LLVM ERROR: %s", buf, 0xCu);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Cannot select:");
  v8 = 10;
  std::string::basic_string[abi:ne200100]<0>(&v9, "unable to lower arguments");
  v10 = 10;
  std::string::basic_string[abi:ne200100]<0>(v11, "unable to translate");
  v12 = 21;
  std::string::basic_string[abi:ne200100]<0>(v13, "cannot select");
  v14 = 21;
  std::string::basic_string[abi:ne200100]<0>(v15, "unable to legalize");
  v16 = 21;
  memset(v5, 0, sizeof(v5));
  v3 = v5;
  LOBYTE(v4) = 0;
  operator new();
}

void sub_213C63DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  a24 = &a13;
  std::vector<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void std::vector<char *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_213C64200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 33) < 0)
  {
    operator delete(*(v33 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::logCompilerFailure(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a3;
  if (a3 <= 7 || ((v6 = *a2, v28 = 8, !v6) ? (v7 = 0) : (v7 = DeserialContext::stringFromSerializedData(&v26)), (v8 = [gReplayLogDirectory stringByAppendingString:v7], v27 > v28) ? (v9 = v27 - v28 > 7) : (v9 = 0), !v9))
  {
LABEL_30:
    abort();
  }

  v10 = v26;
  v11 = *(v26 + v28);
  v12 = v28 + 8;
  v28 += 8;
  if (v11)
  {
    if (v12 >= v27)
    {
      goto LABEL_30;
    }

    v28 = v11 + v12;
    if (v11 + v12 > v27)
    {
      goto LABEL_30;
    }

    v13 = v8;
    v25 = 0;
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v14 createDirectoryAtPath:gReplayLogDirectory withIntermediateDirectories:1 attributes:0 error:&v25])
    {
      v15 = fopen([v13 UTF8String], "wb");
      if (v15)
      {
        v16 = v15;
        v17 = fwrite(v10 + v12, 1uLL, v11, v15);
        fclose(v16);
        if (v17 == v11)
        {
          v18 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
          *v18 = 1;
          return (*(a4 + 16))(a4, 0, v18, 1, 0);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          MTLCompilerObject::logCompilerFailure(v13);
        }

        MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Failed to write log file (wrote %llu bytes, expected %llu bytes): %s", v17, v11, [v13 UTF8String]);
        v21 = *(a1 + 64);
        goto LABEL_25;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MTLCompilerObject::logCompilerFailure(v13);
      }

      v24 = (a1 + 64);
      [v13 UTF8String];
      MTLCompilerErrorObject::setFormattedErrorMessage(v24, "Failure to create log file: %s");
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MTLCompilerObject::logCompilerFailure(&v25);
      }

      v24 = (a1 + 64);
      [objc_msgSend(v25 "localizedDescription")];
      MTLCompilerErrorObject::setFormattedErrorMessage(v24, "Failure to create log directory: %s");
    }

    v21 = *v24;
LABEL_25:
    v20 = *(a4 + 16);
    v22 = a4;
    v23 = 2;
    return v20(v22, v23, 0, 0, v21);
  }

  v20 = *(a4 + 16);
  v21 = "MTLCompilerService received an empty replay block to log";
  v22 = a4;
  v23 = 1;
  return v20(v22, v23, 0, 0, v21);
}

uint64_t MTLCompilerObject::generateMachO(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v130 = *MEMORY[0x277D85DE8];
  v122 = 0u;
  v123 = 0u;
  v124 = 1065353216;
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  if (*(a2 + 22))
  {
    v106 = a2 + a2[4];
    DynamicLibraryWriter = MTLGPUArchiverFromId();
  }

  else
  {
    v5 = a2[5];
    if (*(a2 + 128))
    {
      DynamicLibraryWriter = MTLGPUArchiverCreateDynamicLibraryWriter();
    }

    else
    {
      DynamicLibraryWriter = MTLGPUArchiverCreateExecutableWriter();
    }

    MTLGPUArchiverToId();
  }

  if (!DynamicLibraryWriter)
  {
    __p = 0;
    if (!MTLGPUArchiverDeleteWithId())
    {
      std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
      logMachOError((a1 + 80), __p);
      if (SBYTE7(v125[1]) < 0)
      {
        operator delete(*&v125[0]);
      }

      free(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
    logMachOError((a1 + 80), v121);
    if (SBYTE7(v125[1]) < 0)
    {
      operator delete(*&v125[0]);
    }

    (*(a4 + 16))(a4, 2, 0, 0, v121);
    free(v121);
    goto LABEL_206;
  }

  v6 = *(a2 + 30);
  v121 = 0;
  v7 = *a2;
  if (!MTLGPUArchiverAddTool())
  {
    __p = 0;
    if (!MTLGPUArchiverDeleteWithId())
    {
      std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
      logMachOError((a1 + 80), __p);
      if (SBYTE7(v125[1]) < 0)
      {
        operator delete(*&v125[0]);
      }

      free(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
    logMachOError((a1 + 80), v121);
    if (SBYTE7(v125[1]) < 0)
    {
      operator delete(*&v125[0]);
    }

    goto LABEL_146;
  }

  if (*(a2 + 29))
  {
    v8 = a2[9];
    if (!LLVMCreateMemoryBufferWithMemoryRange())
    {
      v117 = 0;
      if (!MTLGPUArchiverDeleteWithId())
      {
        std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
        logMachOError((a1 + 80), v117);
        if (SBYTE7(v125[1]) < 0)
        {
          operator delete(*&v125[0]);
        }

        free(v117);
      }

      strcpy(v125, "Unable to store metal script");
      std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
      logMachOError((a1 + 80), v125);
      if (v116 < 0)
      {
        operator delete(__p);
      }

      (*(a4 + 16))(a4, 2, 0, 0, v121);
      MTLGPUArchiverDestroy();
      goto LABEL_206;
    }

    v9 = MTLGPUArchiverAddDescriptor();
    LLVMDisposeMemoryBuffer();
    if (!v9)
    {
      __p = 0;
      if (!MTLGPUArchiverDeleteWithId())
      {
        std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
        logMachOError((a1 + 80), __p);
        if (SBYTE7(v125[1]) < 0)
        {
          operator delete(*&v125[0]);
        }

        free(__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
      logMachOError((a1 + 80), v121);
      if (SBYTE7(v125[1]) < 0)
      {
        operator delete(*&v125[0]);
      }

LABEL_146:
      (*(a4 + 16))(a4, 2, 0, 0, v121);
      free(v121);
      MTLGPUArchiverDestroy();
      goto LABEL_206;
    }
  }

  v112 = a2;
  if (!*(a2 + 27))
  {
LABEL_22:
    v18 = v112;
    v108 = malloc_type_malloc(8 * v112[1], 0x2004093837F09uLL);
    v105 = malloc_type_malloc(8 * v112[1], 0x10040436913F5uLL);
    if (v112[1])
    {
      v109 = 0;
      v19 = 0;
      do
      {
        v20 = &v112[13 * v19 + 17];
        v21 = v18 + *(v20 + 16);
        v22 = strncmp((v21 + 4), "AIRC", 4uLL);
        v23 = strncmp((v21 + 4), "AIRS", 4uLL);
        if (*(v18 + 128) == 1)
        {
          *&v125[0] = 0;
          BYTE8(v125[0]) = 0;
          v126 = 0x1000000000000;
          v125[1] = xmmword_213C7D4D0;
          memset(&v125[2], 0, 32);
          v127 = 1;
          v128 = 256;
          v129 = 0;
          __p = 0x100000000;
          v115 = 0;
          flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(v125, 4, &__p);
          v24 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(v125, 2);
          flatbuffers::FlatBufferBuilder::TrackField(v125, 6, v24);
          v25 = flatbuffers::FlatBufferBuilder::EndTable(v125, 0);
          flatbuffers::FlatBufferBuilder::Finish(v125, v25, "AIRD", 0);
          v26 = LLVMCreateMemoryBufferWithMemoryRangeCopy();
          flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(v125);
        }

        else if (*(v20 + 24))
        {
          v26 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v26 = 0;
        }

        if (*(v20 + 40))
        {
          v27 = *(v20 + 32);
          v28 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v28 = 0;
        }

        if (*(v20 + 56))
        {
          v29 = *(v20 + 48);
          v30 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v30 = 0;
        }

        v31 = *v20;
        if (*v20)
        {
          v32 = v112 + *(v20 + 64);
          v33 = v112 + *(v20 + 72);
        }

        v121 = 0;
        if (v22)
        {
          v34 = v23 == 0;
        }

        else
        {
          v34 = 1;
        }

        v35 = v34;
        v110 = v35;
        if (!v34)
        {
          v36 = *v112;
        }

        v37 = MTLGPUArchiverAddUnit();
        if (v37)
        {
          if (v22 && *(v20 + 8))
          {
            v38 = 0;
            LOBYTE(v39) = 1;
            v40 = v112;
            do
            {
              std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::find<MTLUINT256_t>(&v122, (v40 + *(v20 + 96)));
              v39 = v39 && MTLGPUArchiverAddLinkedModulesWithReferences() != 0;
              ++v38;
              v40 += 4;
            }

            while (v38 < *(v20 + 8));
          }

          else
          {
            v39 = 1;
          }

          if (((v110 | !v39) & 1) == 0)
          {
            v108[v109] = v37;
            if (v31)
            {
              v39 = MTLGPUArchiverSetUnitHash() != 0;
            }

            ++v109;
            if (*(v20 + 88))
            {
              v41 = (v112 + *(v20 + 80));
              if (v41[5])
              {
                if (v41[7])
                {
                  v42 = v41[4];
                  LLVMCreateMemoryBufferWithMemoryRange();
                  v44 = v41[6];
                  v43 = v41[7];
                  LLVMCreateMemoryBufferWithMemoryRange();
                  if (v39)
                  {
                    LOBYTE(v39) = MTLGPUArchiverSetUnitReflection() != 0;
                  }

                  LLVMDisposeMemoryBuffer();
                  LLVMDisposeMemoryBuffer();
                }
              }
            }
          }
        }

        else
        {
          LOBYTE(v39) = 1;
        }

        if (v26)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v28)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v30)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v37)
        {
          v45 = v39;
        }

        else
        {
          v45 = 0;
        }

        if (!v45)
        {
          v46 = v121;
          std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
          logMachOError((a1 + 80), v46);
          if (SBYTE7(v125[1]) < 0)
          {
            operator delete(*&v125[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v118, &v121);
        }

        ++v19;
        v18 = v112;
      }

      while (v19 < v112[1]);
    }

    v47 = *(v18 + 25);
    v48 = v18[7];
    v121 = 0;
    if (v47 < 0x40)
    {
LABEL_127:
      free(v108);
      free(v105);
      if (*(v112 + 128) == 1)
      {
        v121 = 0;
        v78 = v112[8];
        v79 = MTLGPUArchiverSetInstallName();
        v80 = v79 != 0;
        if (!v79)
        {
          v81 = v121;
          if (v121)
          {
            std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
            logMachOError((a1 + 80), v81);
            if (SBYTE7(v125[1]) < 0)
            {
              operator delete(*&v125[0]);
            }

            std::vector<char *>::push_back[abi:ne200100](&v118, &v121);
            v80 = 0;
          }
        }
      }

      else
      {
        v80 = 1;
      }

      for (i = v123; i; i = *i)
      {
        v83 = i[6];
        MTLGPUArchiverUnitRefDestroy();
      }

      v121 = 0;
      if (!v80)
      {
        goto LABEL_189;
      }

      v84 = MTLGPUArchiverPackUnits();
      if (!v84)
      {
        v85 = v121;
        if (v121)
        {
          std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
          logMachOError((a1 + 80), v85);
          if (SBYTE7(v125[1]) < 0)
          {
            operator delete(*&v125[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v118, &v121);
        }
      }

      if (!v84)
      {
        goto LABEL_189;
      }

      v86 = *(v112 + 6);
      v87 = *(v112 + 129);
      if (!v87)
      {
        v89 = v112[6];
        sandbox_extension_consume();
      }

      v90 = MTLGPUArchiverBuildToFD();
      if (!v90)
      {
        v91 = v121;
        std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
        logMachOError((a1 + 80), v91);
        if (SBYTE7(v125[1]) < 0)
        {
          operator delete(*&v125[0]);
        }

        std::vector<char *>::push_back[abi:ne200100](&v118, &v121);
      }

      if ((v87 & 1) == 0)
      {
        sandbox_extension_release();
      }

      if (v90)
      {
        *&v125[0] = 0;
        (*(a4 + 16))(a4, 0, v125, 8, 0);
      }

      else
      {
LABEL_189:
        __p = 0;
        if (!MTLGPUArchiverDeleteWithId())
        {
          v92 = __p;
          std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
          logMachOError((a1 + 80), v92);
          if (SBYTE7(v125[1]) < 0)
          {
            operator delete(*&v125[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v118, &__p);
        }

        v93 = v118;
        if (v119 == v118)
        {
          v95 = 25;
        }

        else
        {
          if (((v119 - v118) >> 3) <= 1)
          {
            v94 = 1;
          }

          else
          {
            v94 = (v119 - v118) >> 3;
          }

          v95 = 25;
          do
          {
            v96 = *v93++;
            v95 += strlen(v96) + 1;
            --v94;
          }

          while (v94);
        }

        v97 = malloc_type_malloc(v95, 0x100004077774924uLL);
        qmemcpy(v97, "Failed to generate machO:", 25);
        v98 = v97 + 25;
        v99 = v118;
        if (v119 != v118)
        {
          v100 = 0;
          do
          {
            v101 = v99[v100];
            v102 = strlen(v101);
            memcpy(v98, v101, v102);
            v98 += v102;
            free(*(v118 + v100));
            *v98 = 10;
            ++v100;
            v99 = v118;
          }

          while (v100 < (v119 - v118) >> 3);
        }

        *v98 = 0;
        (*(a4 + 16))(a4, 2, 0, 0, v97);
        free(v97);
      }

      MTLGPUArchiverDestroy();
      goto LABEL_206;
    }

    v49 = 0;
    v50 = v112 + v48;
    v51 = v47 >> 6 << 6;
    v52 = 1;
    while (1)
    {
      v53 = *(v50 + v49);
      if (v53 > 1)
      {
        if (v53 == 2)
        {
          goto LABEL_107;
        }

        if (v53 != 3)
        {
LABEL_99:
          v121 = 0;
LABEL_123:
          v77 = v121;
          std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
          logMachOError((a1 + 80), v77);
          if (SBYTE7(v125[1]) < 0)
          {
            operator delete(*&v125[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v118, &v121);
          v52 = 0;
          goto LABEL_126;
        }

        v54 = malloc_type_malloc(0x18uLL, 0x2004093837F09uLL);
        v55 = v54;
        v56 = *(v50 + v49 + 32);
        v57 = (v50 + v49 + 16);
        if ((v56 & 2) != 0)
        {
LABEL_90:
          v59 = *v57;
        }

        else
        {
          v58 = *v57;
          if (v58 != -1)
          {
            v57 = &v108[v58];
            goto LABEL_90;
          }

          v59 = 0;
        }

        v54[1] = v59;
        v60 = (v50 + v49 + 24);
        if (v56)
        {
LABEL_94:
          v62 = *v60;
        }

        else
        {
          v61 = *v60;
          if (v61 != -1)
          {
            v60 = &v108[v61];
            goto LABEL_94;
          }

          v62 = 0;
        }

        v54[2] = v62;
        v63 = (v50 + v49 + 8);
        if ((v56 & 4) == 0)
        {
          v64 = *v63;
          if (v64 == -1)
          {
            goto LABEL_111;
          }

          v63 = &v108[v64];
        }

        v65 = *v63;
LABEL_112:
        *v55 = v65;
        goto LABEL_119;
      }

      if (v53)
      {
        if (v53 != 1)
        {
          goto LABEL_99;
        }

LABEL_107:
        v55 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
        v74 = (v50 + v49 + 8);
        if ((*(v50 + v49 + 32) & 2) != 0)
        {
LABEL_110:
          v65 = *v74;
        }

        else
        {
          v75 = *v74;
          if (v75 != -1)
          {
            v74 = &v108[v75];
            goto LABEL_110;
          }

LABEL_111:
          v65 = 0;
        }

        goto LABEL_112;
      }

      v66 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
      v55 = v66;
      v67 = *(v50 + v49 + 32);
      v68 = (v50 + v49 + 8);
      if ((v67 & 2) == 0)
      {
        v69 = *v68;
        if (v69 == -1)
        {
          v70 = 0;
          goto LABEL_104;
        }

        v68 = &v108[v69];
      }

      v70 = *v68;
LABEL_104:
      *v66 = v70;
      v71 = v50 + v49;
      if (v67)
      {
        v73 = *(v71 + 16);
      }

      else
      {
        v72 = *(v71 + 16);
        if (v72 == -1)
        {
          v73 = 0;
        }

        else
        {
          v73 = v108[v72];
        }
      }

      v66[1] = v73;
LABEL_119:
      v121 = 0;
      if ((v52 & 1) == 0)
      {
        free(v55);
        goto LABEL_123;
      }

      v76 = MTLGPUArchiverAddPipeline();
      free(v55);
      if (!v76)
      {
        goto LABEL_123;
      }

      v52 = 1;
LABEL_126:
      v49 += 64;
      if (v51 == v49)
      {
        goto LABEL_127;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = v112 + v112[10];
  v13 = *(v112 + 26);
  while (1)
  {
    if (v11 >= v13 || (v14 = v11 + 32, v13 < v11 + 32) || (v15 = *(v12 + v11 + 16), v125[0] = *(v12 + v11), v125[1] = v15, v13 <= v14) || v13 - v14 <= 3 || v11 + 36 >= v13 || (v11 += 36 + *(v12 + v14), v11 > v13))
    {
      abort();
    }

    LLVMCreateMemoryBufferWithMemoryRange();
    v117 = 0;
    v16 = MTLGPUArchiverAddUnit();
    LLVMDisposeMemoryBuffer();
    if (!v16)
    {
      break;
    }

    v17 = MTLGPUArchiverUnitRefCreateWithUnitId();
    __p = v125;
    std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&v122, v125)[6] = v17;
    if (++v10 >= *(v112 + 27))
    {
      goto LABEL_22;
    }
  }

  if (!MTLGPUArchiverDeleteWithId())
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
    logMachOError((a1 + 80), 0);
    if (v116 < 0)
    {
      operator delete(__p);
    }

    free(0);
  }

  v88 = v117;
  std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
  logMachOError((a1 + 80), v88);
  if (v116 < 0)
  {
    operator delete(__p);
  }

  (*(a4 + 16))(a4, 2, 0, 0, v117);
  free(v117);
  MTLGPUArchiverDestroy();
LABEL_206:
  if (v118)
  {
    v119 = v118;
    operator delete(v118);
  }

  result = std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&v122);
  v104 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_213C65570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (*(v36 - 185) < 0)
  {
    operator delete(*(v36 - 208));
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&a36);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::generateBinaryArchiveID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  v21 = 0;
  *(a2 + 16);
  if (MTLGPUArchiverCreateExecutableWriter())
  {
    v7 = MTLGPUArchiverToId();
    if (v7)
    {
      v8 = v7;
      v9 = strlen(v7);
      (*(a4 + 16))(a4, 0, v8, v9 + 1, 0);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MTLGenerateBinaryArchiveID");
      logMachOError((a1 + 80), "Failed to create binary archive ID");
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }

      (*(a4 + 16))(a4, 2, 0, 0, "Failed to generate Binary archive ID");
    }

    MTLGPUArchiverDestroy();
  }

  else
  {
    v10 = v21;
    std::string::basic_string[abi:ne200100]<0>(__p, "MTLGenerateBinaryArchiveID");
    logMachOError((a1 + 80), v10);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(&v18, "Failed to generate Binary archive ID: ");
    std::string::basic_string[abi:ne200100]<0>(v16, v21);
    if ((v17 & 0x80u) == 0)
    {
      v11 = v16;
    }

    else
    {
      v11 = v16[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v12 = v17;
    }

    else
    {
      v12 = v16[1];
    }

    v13 = std::string::append(&v18, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v20 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (v20 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    (*(a4 + 16))(a4, 2, 0, 0, v15);
    free(v21);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_213C658B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::find_if[abi:ne200100]<std::__wrap_iter<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo *>,fatalErrorHandler(void *,char const*,BOOL)::$_0>(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v6 = *(a3 + 23);
    while (1)
    {
      v7 = *(v3 + 23);
      v8 = v7 >= 0 ? *(v3 + 23) : *(v3 + 8);
      if ((v6 & 0x80) != 0)
      {
        if (v8 == -1)
        {
LABEL_26:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v10 = *a3;
        v9 = a3[1] >= v8 ? v8 : a3[1];
      }

      else
      {
        if (v8 == -1)
        {
          goto LABEL_26;
        }

        v9 = v6 >= v8 ? v8 : v6;
        v10 = a3;
      }

      v11 = v7 >= 0 ? v3 : *v3;
      if (!memcmp(v10, v11, v9) && v9 == v8)
      {
        break;
      }

      v3 += 32;
      if (v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void *std::vector<fatalErrorHandler(void *,char const*,BOOL)::AllowHashInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::AllowHashInfo>>::vector[abi:ne200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_213C65A54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>,fatalErrorHandler(void *,char const*,BOOL)::CollectInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::vector<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *llvm::SmallVectorImpl<char>::append<char const*,void>(void *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[1];
  if (result[2] < (v5 + a3 - __src))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + v5), __src, v4);
    v5 = v3[1];
  }

  v3[1] = v5 + v4;
  return result;
}

void *llvm::SmallVectorTemplateBase<char,true>::push_back(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*result + v2) = a2;
  ++result[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<llvm::Module *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_213C65D88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<ImageFilterFunctionInfoSPI>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<ImageFilterFunctionInfoSPI>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<ImageFilterFunctionInfoSPI>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionInfoSPI>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionInfoSPI>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ImageFilterFunctionInfoSPI>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ImageFilterFunctionInfoSPI>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ImageFilterFunctionInfoSPI>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void *std::vector<llvm::Function *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_213C65FA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionArgumentInfoSPI>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<ImageFilterFunctionArgumentInfoSPI>::__assign_with_size[abi:ne200100]<ImageFilterFunctionArgumentInfoSPI*,ImageFilterFunctionArgumentInfoSPI*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ImageFilterFunctionArgumentInfoSPI>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<ImageFilterFunctionArgumentInfoSPI>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionArgumentInfoSPI>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

uint64_t DeserialContext::stringFromSerializedData(DeserialContext *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  v3 = v1 - v2;
  if (v1 <= v2 || (v5 = *this, v6 = strnlen((*this + v2), v1 - v2), v6 == v3))
  {
    abort();
  }

  v7 = v6;
  result = [MEMORY[0x277CCACA8] stringWithCString:v5 + v2 encoding:4];
  *(this + 2) += v7 + 1;
  return result;
}

void logMachOError(uint64_t *a1, const std::string::value_type *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_213C7E907);
  if (a2 && *a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, " - ");
    v4 = std::string::append(&v8, a2);
    v5 = v4->__r_.__value_.__r.__words[0];
    v12[0] = v4->__r_.__value_.__l.__size_;
    *(v12 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
    v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (v11 < 0)
    {
      operator delete(__p);
    }

    __p = v5;
    *v10 = v12[0];
    *&v10[7] = *(v12 + 7);
    v11 = v6;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    logMachOError(a1);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_213C66364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_28;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_28;
    }

LABEL_27:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || v7[4] != a2[2] || v7[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::find<MTLUINT256_t>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == *a2 && result[3] == a2[1] && result[4] == a2[2] && result[5] == a2[3])
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 3);
      *(a4 + 32) = *(v6 + 8);
      *(a4 + 24) = v8;
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<FunctionConstantDesc>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<FunctionConstantDesc>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<FunctionConstantDesc>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<FunctionConstantDesc>::__emplace_back_slow_path<FunctionConstantDesc>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 3);
  *(v7 + 32) = *(a2 + 8);
  *(v7 + 24) = v9;
  *&v18 = 40 * v2 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(&v16);
  return v15;
}

void sub_213C66A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 136;
      std::allocator<FunctionDesc>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void *std::vector<MTLTagType>::emplace_back<MTLTagType>(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

uint64_t std::vector<FunctionDesc>::__emplace_back_slow_path<FunctionDesc const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionDesc>>(a1, v6);
  }

  v7 = 136 * v2;
  v18 = 0;
  v19 = v7;
  v20 = 136 * v2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 16) = v8;
  *v7 = *a2;
  v11 = 136 * v2;
  *(v11 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  std::vector<FunctionConstantDesc>::__init_with_size[abi:ne200100]<FunctionConstantDesc*,FunctionConstantDesc*>(v11 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  std::vector<MTLTagType>::__init_with_size[abi:ne200100]<MTLTagType*,MTLTagType*>(v7 + 96, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  *(v7 + 120) = *(a2 + 120);
  *&v20 = v20 + 136;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionDesc>,FunctionDesc*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<FunctionDesc>::~__split_buffer(&v18);
  return v17;
}

void sub_213C66CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v4 - 40) = v3;
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100]((v4 - 40));
  std::__split_buffer<FunctionDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<FunctionConstantDesc>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*,FunctionConstantDesc*,FunctionConstantDesc*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v9 = *(v6 + 3);
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(v6 + 8);
      v4[1].__r_.__value_.__r.__words[0] = v9;
      v6 = (v6 + 40);
      v4 = (v8 + 40);
      v14 = (v8 + 40);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void std::vector<CompileTimeData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CompileTimeData>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CompileTimeData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<MTLArgumentData>::__append(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (0x8E38E38E38E38E39 * ((v2 - v3) >> 5) < a2)
  {
    v4 = 0x8E38E38E38E38E39 * ((v3 - *result) >> 5);
    if (v4 + a2 <= 0xE38E38E38E38E3)
    {
      v5 = 0x8E38E38E38E38E39 * ((v2 - *result) >> 5);
      v6 = 2 * v5;
      if (2 * v5 <= v4 + a2)
      {
        v6 = v4 + a2;
      }

      if (v5 >= 0x71C71C71C71C71)
      {
        v7 = 0xE38E38E38E38E3;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(result, v7);
      }

      MTLArgumentData::MTLArgumentData((288 * v4));
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    MTLArgumentData::MTLArgumentData(v3);
  }

  result[1] = v3;
  return result;
}

void sub_213C67034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<llvm::MemoryBuffer>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<llvm::MemoryBuffer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<llvm::MemoryBuffer>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>>>::__emplace_unique_key_args<std::string,std::string,LLVMOpaqueMemoryBuffer *&>(void *a1, const void **a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,llvm::StringRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,llvm::StringRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,llvm::StringRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,llvm::StringRef>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_213C67674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_213C6773C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_282634780;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::operator()(uint64_t a1, void *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 8);
  v8 = MTLCompilerObject::serializeFragmentPackingInfo(*a2, *a3, *a4, *a5, a6, a7, v7 + 40);
  v9 = *(v7 + 32);
  *(v7 + 32) = v8;
  if (v9)
  {

    free(v9);
  }
}

uint64_t std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2826347C8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::operator()(uint64_t a1, void *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, uint64_t a7)
{
  v7 = *(a1 + 8);
  v8 = MTLCompilerObject::serializeFragmentLinkingInfo(*a2, *a3, *a4, *a5, *a6, a7, v7 + 40);
  v9 = *(v7 + 32);
  *(v7 + 32) = v8;
  if (v9)
  {

    free(v9);
  }
}

uint64_t std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id MTLDeserializePluginDataDictionary(const unsigned __int8 *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:*a1];
  if (*a1)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = &a1[v4];
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v5 + 2 length:*v5 encoding:4 freeWhenDone:0];
      v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v5 + *v5 + 4 length:v5[1] freeWhenDone:0];
      [v2 setObject:v7 forKey:v6];

      v4 += *v5 + v5[1] + 4;
      ++v3;
    }

    while (v3 < *a1);
  }

  return v2;
}

uint64_t Air::CloneFunctionOptions<Air::FunctionOptions>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = Air::CloneShaderValidationConfiguration<Air::ShaderValidationConfiguration>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 70) = 1;
  v9 = (a2 + v5);
  if (*v9 >= 0x15u && (v10 = v9[10]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 20, v11, 0);
  v15 = (a2 - *a2);
  if (*v15 >= 7u && (v16 = v15[3]) != 0)
  {
    v17 = *(a2 + v16);
  }

  else
  {
    v17 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v17, 0);
  v18 = (a2 - *a2);
  if (*v18 >= 0x17u && (v19 = v18[11]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 22, v20, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  v21 = (a2 - *a2);
  v23 = *v21 >= 0x13u && (v22 = v21[9]) != 0 && *(a2 + v22) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v23, 0);
  v24 = (a2 - *a2);
  v26 = *v24 >= 0x11u && (v25 = v24[8]) != 0 && *(a2 + v25) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v26, 0);
  v27 = (a2 - *a2);
  v29 = *v27 >= 0xFu && (v28 = v27[7]) != 0 && *(a2 + v28) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v29, 0);
  v30 = (a2 - *a2);
  v32 = *v30 >= 0xDu && (v31 = v30[6]) != 0 && *(a2 + v31) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v32, 0);
  v33 = (a2 - *a2);
  v35 = *v33 >= 0xBu && (v34 = v33[5]) != 0 && *(a2 + v34) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v35, 0);
  v36 = (a2 - *a2);
  if (*v36 >= 5u && (v37 = v36[2]) != 0)
  {
    v38 = *(a2 + v37);
    if (v38 >= 3)
    {
      abort();
    }
  }

  else
  {
    v38 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v38, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t Air::CloneLinkedFunctions<Air::LinkedFunctions>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v17 = (a2 + v7 + *(a2 + v7));
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air13FunctionGroupEEEZNS3_20CloneLinkedFunctionsINS3_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 7u && *(a2 + v5 + 6))
  {
    v17 = (a2 + *(a2 + v5 + 6) + *(a2 + *(a2 + v5 + 6)));
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (a2 + v5);
  if (*v10 >= 5u && (v11 = v10[2]) != 0)
  {
    v17 = (a2 + v11 + *(a2 + v11));
    v12 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v12);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneVertexFunctionDescriptorINS3_24VertexFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39VertexFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C680D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneVertexDescriptor<Air::VertexDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v16 = (a2 + v7 + *(a2 + v7));
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a2 + v5);
  if (*v9 >= 5u && (v10 = v9[2]) != 0)
  {
    v16 = (a2 + v10 + *(a2 + v10));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v11);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t Air::CloneShaderValidationConfiguration<Air::ShaderValidationConfiguration>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  v6 = *v4 >= 0xDu && (v5 = v4[6]) != 0 && *(a2 + v5) != 0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v6, 0);
  v10 = (a2 - *a2);
  v12 = *v10 >= 0xBu && (v11 = v10[5]) != 0 && *(a2 + v11) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v12, 0);
  v13 = (a2 - *a2);
  v15 = *v13 >= 9u && (v14 = v13[4]) != 0 && *(a2 + v14) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v15, 0);
  v16 = (a2 - *a2);
  v18 = *v16 >= 7u && (v17 = v16[3]) != 0 && *(a2 + v17) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v18, 0);
  v19 = (a2 - *a2);
  v21 = *v19 >= 5u && (v20 = v19[2]) != 0 && *(a2 + v20) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v21, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(uint64_t a1, uint64_t a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air13FunctionGroupEEEZNS3_20CloneLinkedFunctionsINS3_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::FunctionGroup>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneFunctionGroup<Air::FunctionGroup>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionGroup>,std::allocator<flatbuffers::Offset<Air::FunctionGroup>>>(std::vector<flatbuffers::Offset<Air::FunctionGroup>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C68550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_213C68638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_213C68720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<Air::FunctionGroup>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_213C6879C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneFunctionGroup<Air::FunctionGroup>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 7u && (v7 = *(v6 + 3)) != 0)
  {
    v16 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air18CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = &a2[v5];
  if (*v9 >= 5u && (v10 = *(v9 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v10 + 4 + *&a2[v10]], *&a2[v10 + *&a2[v10]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air18CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_213C6899C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_213C68A18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(flatbuffers::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  if (a3)
  {
    v7 = a2 - 4;
    v8 = a3;
    do
    {
      v9 = v8 - 1;
      flatbuffers::FlatBufferBuilder::PushElement<flatbuffers::String>(a1, *(v7 + 4 * v8));
      v8 = v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<flatbuffers::String>(flatbuffers::FlatBufferBuilder *a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 8) - *(a1 + 12) + *(a1 + 10) - a2 + 4;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v4);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateString(flatbuffers::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  flatbuffers::vector_downward::fill(this, 1uLL);
  flatbuffers::vector_downward::push(this, a2, a3);
  flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

void *std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_213C68BFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v3 = *(a1 + 40);
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
    if (v6 >= 3)
    {
      abort();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v6, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v7 + v3);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Air::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C68D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Air::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Air::AttributeDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C68E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_213C68ED0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v6, 0);
  v10 = (a2 - *a2);
  if (*v10 >= 7u && (v11 = v10[3]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 1;
  }

  v13 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v12, 1);
  v14 = (a2 - *a2);
  if (*v14 >= 5u)
  {
    v15 = v14[2];
    if (v15)
    {
      v13 = *(a2 + v15);
      if (v13 >= 9)
      {
        abort();
      }
    }

    else
    {
      v13 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v13, 1);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

void *std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_213C69060(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 7u && (v5 = v4[3]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v6, 0);
  v10 = (a2 - *a2);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, v12, 0);
  v13 = (a2 - *a2);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v15 = *(a2 + v14);
    if (v15 >= 0x38 || ((0xFFE7FFFFFFFFFFuLL >> v15) & 1) == 0)
    {
      abort();
    }

    v16 = byte_213C7D580[v15];
  }

  else
  {
    v16 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v16, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C69270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air33FragmentColorAttachmentDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneFragmentColorAttachmentDescriptor<Air::FragmentColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C69354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::ClonePixelFormat<Air::PixelFormat>(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 53:
    case 54:
    case 55:
    case 60:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
    case 84:
    case 85:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 103:
    case 104:
    case 105:
    case 110:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 123:
    case 124:
    case 125:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
    case 150:
    case 151:
    case 152:
    case 153:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 172:
    case 174:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 240:
    case 241:
    case 250:
    case 252:
    case 253:
    case 255:
    case 260:
    case 261:
    case 262:
    case 263:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 313:
    case 314:
    case 315:
    case 323:
    case 324:
    case 325:
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
    case 505:
    case 506:
    case 507:
    case 508:
    case 509:
    case 510:
    case 520:
    case 521:
    case 522:
    case 523:
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 540:
    case 541:
    case 542:
    case 543:
    case 544:
    case 545:
    case 546:
    case 547:
    case 548:
    case 550:
    case 551:
    case 552:
    case 553:
    case 554:
    case 555:
    case 556:
    case 560:
    case 562:
    case 563:
    case 564:
    case 565:
    case 566:
    case 567:
    case 568:
    case 569:
    case 570:
    case 571:
    case 572:
    case 573:
    case 574:
    case 575:
    case 576:
    case 577:
    case 578:
    case 579:
    case 580:
    case 581:
    case 582:
    case 583:
    case 584:
    case 585:
    case 586:
    case 587:
    case 588:
    case 589:
    case 590:
    case 591:
    case 592:
    case 593:
    case 594:
    case 595:
    case 596:
    case 597:
    case 598:
    case 599:
    case 600:
    case 601:
    case 602:
    case 603:
    case 604:
    case 605:
    case 606:
    case 607:
    case 608:
    case 609:
    case 610:
    case 611:
    case 612:
    case 613:
    case 615:
    case 616:
    case 617:
    case 618:
    case 619:
    case 620:
    case 621:
    case 622:
    case 623:
    case 624:
    case 625:
    case 626:
    case 627:
    case 628:
    case 629:
    case 630:
    case 631:
    case 632:
    case 633:
    case 634:
    case 635:
    case 636:
    case 637:
    case 638:
    case 639:
    case 640:
    case 641:
    case 642:
    case 643:
    case 644:
    case 645:
    case 646:
    case 647:
    case 648:
    case 649:
    case 650:
    case 651:
    case 652:
      return result;
    default:
      abort();
  }
}

void *std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_213C69410(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneFragmentColorAttachmentDescriptor<Air::FragmentColorAttachmentDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = Air::ClonePixelFormat<Air::PixelFormat>(v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);
  v11 = (a2 - *a2);
  if (*v11 >= 0x15u && (v12 = v11[10]) != 0)
  {
    v13 = *(a2 + v12);
    if (v13 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v13, 1);
  v15 = (a2 - *a2);
  if (*v15 >= 0x13u)
  {
    v16 = v15[9];
    if (v16)
    {
      v14 = *(a2 + v16);
      if (v14 >= 0x14)
      {
LABEL_36:
        abort();
      }
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v14, 1);
  v17 = (a2 - *a2);
  if (*v17 >= 0x11u && (v18 = v17[8]) != 0)
  {
    v19 = *(a2 + v18);
    if (v19 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v19 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v19, 0);
  v20 = (a2 - *a2);
  if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
  {
    v22 = *(a2 + v21);
    if (v22 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v22 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v22, 0);
  v23 = (a2 - *a2);
  if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
  {
    v25 = *(a2 + v24);
    if (v25 >= 6)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v25 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v25, 0);
  v26 = (a2 - *a2);
  if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
  {
    v28 = *(a2 + v27);
    if (v28 >= 6)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v28 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v28, 0);
  v29 = (a2 - *a2);
  if (*v29 >= 9u && (v30 = v29[4]) != 0)
  {
    v31 = *(a2 + v30);
    if (v31 >= 3)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v31 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v31, 0);
  v32 = (a2 - *a2);
  if (*v32 >= 7u && (v33 = v32[3]) != 0)
  {
    v34 = *(a2 + v33);
  }

  else
  {
    v34 = 15;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v34, 15);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(void *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(uint64_t a1, __int16 a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 1)
  {
    flatbuffers::vector_downward::reallocate(a1, 2uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 2) = a2;
  v5 = v4 - 2;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void *flatbuffers::FlatBufferBuilder::AddElement<float>(void *result, uint64_t a2, float a3, float a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<float>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<float>(uint64_t a1, float a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_213C69904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_30CloneComputeFunctionDescriptorINS3_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C699E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneStageInputOutputDescriptor<Air::StageInputOutputDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v20 = (a2 + v7 + *(a2 + v7));
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v20, &v20, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 5u && *(a2 + v5 + 4))
  {
    v20 = (a2 + *(a2 + v5 + 4) + *(a2 + *(a2 + v5 + 4)));
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v20, &v20, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 70) = 1;
  v10 = (a2 + v5);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, v12, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v9);
  }

  v16 = (a2 - *a2);
  if (*v16 >= 0xBu && (v17 = v16[5]) != 0)
  {
    v18 = *(a2 + v17);
    if (v18 >= 2)
    {
      abort();
    }
  }

  else
  {
    v18 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v18, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

void *std::vector<unsigned long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_213C69C10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 70) = 1;
  v6 = 8 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 8 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 8uLL);
  flatbuffers::vector_downward::push(a1, a2, v6);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Air::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C69D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Air::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Air::AttributeDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C69E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_213C69F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C69FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air29TileColorAttachmentDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneTileColorAttachmentDescriptor<Air::TileColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C6A0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_213C6A154(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneTileColorAttachmentDescriptor<Air::TileColorAttachmentDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = (a2 - *a2);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = *(a2 + v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 - v3;
  v10 = Air::ClonePixelFormat<Air::PixelFormat>(v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 + v4);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_213C6A2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneObjectFunctionDescriptorINS3_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C6A380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_213C6A43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneMeshFunctionDescriptorINS3_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C6A51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *OUTLINED_FUNCTION_0_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

void OUTLINED_FUNCTION_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    v4 = *a3;
  }
}

void __cxx_global_array_dtor()
{
  v0 = &byte_2811301CF;
  v1 = -48;
  v2 = &byte_2811301CF;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void __cxx_global_array_dtor_147()
{
  v0 = &byte_28113019F;
  v1 = -48;
  v2 = &byte_28113019F;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void MTLInternalDataBindingPass::~MTLInternalDataBindingPass(MTLInternalDataBindingPass *this)
{
  *this = &unk_282633520;
  v1 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v1);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v2 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

BOOL MTLInternalDataBindingPass::runOnModule(MTLBoundsCheck **this, llvm::Module *a2)
{
  v92[20] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  EntryFunction = MetalModulePass::getEntryFunction(this);
  if (!EntryFunction || (v6 = EntryFunction, MTLBoundsCheck::isLibraryModule(this[6], v5)))
  {
    i = 0;
    goto LABEL_81;
  }

  v65 = a2;
  v90 = v92;
  v91 = 0x400000000;
  MTLInternalDataBindingPass::populateGlobalValues(this, v7);
  v9 = a2;
  v10 = a2 + 8;
  v11 = *(v9 + 2);
  if (v11 != (v9 + 8))
  {
    do
    {
      if (v11)
      {
        v12 = (v11 - 56);
      }

      else
      {
        v12 = 0;
      }

      if ((v12[33] & 0x1C) != 0 && *(*v12 + 8) == 15)
      {
        Metadata = llvm::Value::getMetadata();
        if (Metadata)
        {
          llvm::Value::setMetadata();
          LOBYTE(v75[0]) = 0;
          v76 = 0;
          v73 = v12;
          v14 = (Metadata - 8 * *(Metadata + 8));
          v74 = *v14;
          v15 = v14[1];
          if (v15)
          {
            v75[0] = llvm::MDString::getString(v15);
            v75[1] = v16;
            if ((v76 & 1) == 0)
            {
              v76 = 1;
            }
          }

          llvm::SmallVectorImpl<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo>::emplace_back<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo&>(&v90, &v73);
        }
      }

      v11 = *(v11 + 8);
    }

    while (v11 != v10);
  }

  v17 = this[5];
  v73 = v75;
  v74 = 0x200000000;
  v79 = v17;
  v80 = &v88;
  v81 = &v89;
  v82 = 0;
  v83 = 0;
  v84 = 512;
  v85 = 7;
  v77 = 0;
  v78 = 0;
  v86 = 0;
  v87 = 0;
  v88 = MEMORY[0x277D821C8] + 16;
  v89 = MEMORY[0x277D82210] + 16;
  v18 = *(v6 + 80);
  if (v18)
  {
    v19 = (v18 - 24);
  }

  else
  {
    v19 = 0;
  }

  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v19);
  if (FirstInsertionPt)
  {
    v21 = (FirstInsertionPt - 24);
  }

  else
  {
    v21 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint(&v73, v21);
  llvm::Function::addFnAttr();
  BufferIntrinsicFunction = MTLInternalDataBindingPass::getBufferIntrinsicFunction(this, this[6]);
  v24 = BufferIntrinsicFunction;
  if (BufferIntrinsicFunction)
  {
    v25 = *(BufferIntrinsicFunction + 24);
  }

  else
  {
    v25 = 0;
  }

  llvm::Type::getInt32Ty(v79, v23);
  __dst = llvm::ConstantInt::get();
  v69 = 257;
  v26 = llvm::IRBuilderBase::CreateCall(&v73, v25, v24, &__dst, 1, v68, 0);
  v27 = this[9];
  v28 = llvm::PointerType::get();
  v69 = 257;
  BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(&v73, v26, v28, v68);
  i = v91 != 0;
  if (!v91)
  {
    goto LABEL_77;
  }

  v29 = v90;
  v67 = (v90 + 40 * v91);
  do
  {
    v31 = *v29;
    v30 = v29[1];
    v32 = *(*v29 + 3);
    Name = llvm::Value::getName(*v29);
    if (!Name)
    {
      __dst = 0;
      v71 = 0;
      v72 = 0;
LABEL_47:
      v39 = *((v30 - *(v30 + 2))[2] + 128);
      v40 = (v39 + 24);
      if (*(v39 + 32) >= 0x41u)
      {
        v40 = *v40;
      }

      v41 = *v40;
      v42 = v32[8];
      if (v42 != 15)
      {
        v32 = llvm::PointerType::get();
        v42 = v32[8];
      }

      v44 = this[9];
      v43 = this[10];
      if (v42 == 15)
      {
        v45 = llvm::ConstantInt::get();
        v69 = 257;
        GEP = llvm::IRBuilderBase::CreateGEP(&v73, v44, BitOrPointerCast, v45, v68);
        v47 = this[9];
        v69 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(&v73, v47, GEP, 0, 0, v68);
        v69 = 260;
        v68[0] = &__dst;
        llvm::Value::setName();
        v49 = *(v31 + 24);
        v69 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(&v73, 48, AlignedLoad, v49, v68);
        llvm::IRBuilderBase::CreateAlignedStore(&v73, Cast, v31, 0);
      }

      else
      {
        v51 = llvm::ConstantInt::get();
        v69 = 257;
        v52 = llvm::IRBuilderBase::CreateGEP(&v73, v44, BitOrPointerCast, v51, v68);
        v69 = 260;
        v68[0] = &__dst;
        llvm::Value::setName();
        v69 = 257;
        v53 = llvm::IRBuilderBase::CreateBitOrPointerCast(&v73, v52, v32, v68);
        v54 = this[9];
        if (v32 == v54 || v32 == this[10])
        {
          v69 = 257;
          v53 = llvm::IRBuilderBase::CreateAlignedLoad(&v73, v54, v53, 0, 0, v68);
        }

        v69 = 260;
        v68[0] = &__dst;
        llvm::Value::setName();
        llvm::IRBuilderBase::CreateAlignedStore(&v73, v53, v31, 0);
      }

      goto LABEL_57;
    }

    v35 = v33;
    if (v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v33 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v72) = v33;
    if (v33)
    {
      memmove(&__dst, Name, v33);
    }

    *(&__dst + v35) = 0;
    if ((SHIBYTE(v72) & 0x80000000) == 0 || v71 != 26)
    {
      goto LABEL_47;
    }

    v36 = *__dst == 0x626F6C672E6C746DLL && __dst[1] == 0x74736E6F635F6C61;
    v37 = v36 && __dst[2] == 0x6261745F73746E61;
    if (!v37 || *(__dst + 12) != 25964)
    {
      goto LABEL_47;
    }

LABEL_57:
    if (SHIBYTE(v72) < 0)
    {
      operator delete(__dst);
    }

    v29 += 5;
  }

  while (v29 != v67);
  v55 = *(v65 + 4);
  for (i = 1; v55 != (v65 + 24); v55 = v55[1])
  {
    if (v55)
    {
      v56 = (v55 - 7);
    }

    else
    {
      v56 = 0;
    }

    if ((llvm::GlobalValue::isDeclaration(v56) & 1) == 0)
    {
      v57 = *(v56 + 3);
      v58 = *(v57 + 12);
      if (v58 != 1)
      {
        v59 = *(v57 + 16) + 8;
        v60 = 8 * v58 - 8;
        while (1)
        {
          if (*(*v59 + 8) == 15)
          {
            v62 = *(this[4] + 20);
            v61 = *(*v59 + 8);
            if (MTLBoundsCheck::checkAddressSpace((v61 >> 8)) | ((v61 & 0xFFFFFF00) == 768) & BYTE3(v62))
            {
              break;
            }
          }

          v59 += 8;
          v60 -= 8;
          if (!v60)
          {
            goto LABEL_76;
          }
        }

        if ((*(this[4] + 20) & 2) != 0)
        {
          if (llvm::Function::onlyReadsMemory(v56))
          {
            llvm::Function::removeFnAttr();
          }

          if (llvm::Function::hasFnAttribute())
          {
            llvm::Function::removeFnAttr();
          }
        }
      }
    }

LABEL_76:
    ;
  }

LABEL_77:
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v89);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v88);
  if (v73 != v75)
  {
    free(v73);
  }

  if (v90 != v92)
  {
    free(v90);
  }

LABEL_81:
  v63 = *MEMORY[0x277D85DE8];
  return i;
}

void sub_213C6AF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a29);
  if (a46 != v46)
  {
    free(a46);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLInternalDataBindingPass::populateGlobalValues(MTLBoundsCheck **this, llvm::Module *a2)
{
  result = MTLBoundsCheck::isLibraryModule(this[6], a2);
  if ((result & 1) == 0)
  {
    v4 = this[8];
    v5 = *(*(v4 + 9) + 20);
    if ((v5 & 0x800000) != 0)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(v4);
      MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(this[8]);
      v6 = this[8];
      if ((*(*(v6 + 9) + 20) & 0x200000001) != 0)
      {
        MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(v6);
        MTLBoundsCheck::SharedPassData::getOrInsertTextureUsageTableGV(this[8]);
      }
    }

    else if ((v5 & 0x10000) != 0)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsTableGV(v4);
    }

    MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(this[8]);
    MTLBoundsCheck::SharedPassData::getOrInsertTextureTypeTableGV(this[8]);
    MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupTableGV(this[8]);
    v7 = this[8];

    return MTLBoundsCheck::SharedPassData::getOrInsertReportCounterGV(v7);
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo>::emplace_back<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,true>::growAndEmplaceBack<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo&>(a1, a2);
  }

  v3 = *a1 + 40 * v2;
  v4 = *a2;
  v5 = *(a2 + 16);
  *(v3 + 32) = *(a2 + 32);
  *v3 = v4;
  *(v3 + 16) = v5;
  LODWORD(v3) = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 40 * v3 - 40;
}

uint64_t MTLInternalDataBindingPass::getBufferIntrinsicFunction(MTLInternalDataBindingPass *this, llvm::Type **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  llvm::Type::getInt64Ty(*a2, a2);
  llvm::Type::getInt32Ty(v3, v4);
  v5 = llvm::FunctionType::get();
  v8 = "air.get_dispatch_private_buffer";
  v9 = 259;
  result = llvm::Function::Create(v5, 0, &v8, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,true>::growAndEmplaceBack<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v3;
  v10 = *(a2 + 32);
  v4 = llvm::SmallVectorTemplateCommon<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,true>>(a1, v9, 1);
  v5 = *a1 + 40 * *(a1 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 16);
  *v5 = *v4;
  *(v5 + 16) = v7;
  *(v5 + 32) = v6;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 40 * v5 - 40;
}

unint64_t llvm::SmallVectorTemplateCommon<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 + a3 > *(a1 + 12))
  {
    v5 = *a1 + 40 * v3;
    if (*a1 > a2 || v5 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = a2 - *a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

void StitchingReflection::initializeMetadataTypeMapMap(StitchingReflection *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v363.__r_.__value_.__l.__size_ = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__s, "air.void_type");
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = __s;
  }

  v81 = xmmword_213C7D5C0;
  v82 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v78, "air.BOOL_type");
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v83, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v83 = v78;
  }

  v84 = xmmword_213C7D5D0;
  v85 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v77, "air.char_type");
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v86 = v77;
  }

  v87 = xmmword_213C7D5E0;
  v88 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v76, "air.uchar_type");
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = v76;
  }

  v90 = xmmword_213C7D5F0;
  v91 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v75, "air.short_type");
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v92, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v92 = v75;
  }

  v93 = xmmword_213C7D600;
  v94 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v74, "air.ushort_type");
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    v95 = v74;
  }

  v96 = 41;
  v97 = 0;
  v98 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v73, "air.int_type");
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = v73;
  }

  v100 = 29;
  v101 = 0;
  v102 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v72, "air.uint_type");
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v103, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v103 = v72;
  }

  v104 = 33;
  v105 = 0;
  v106 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v71, "air.long_type");
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v107, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v71;
  }

  v108 = 81;
  v109 = 0;
  v110 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v70, "air.ulong_type");
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v111 = v70;
  }

  v112 = 85;
  v113 = 0;
  v114 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v69, "air.half_type");
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v115 = v69;
  }

  v116 = 16;
  v117 = 0;
  v118 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v68, "air.float_type");
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v119, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v119 = v68;
  }

  v120 = 3;
  v121 = 0;
  v122 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v67, "air.double_type");
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v123 = v67;
  }

  v124 = 89;
  v125 = 0;
  v126 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v66, "air.bfloat_type");
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v127, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v127 = v66;
  }

  v128 = 121;
  v129 = 0;
  v130 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v65, "air.matrix_type");
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v65;
  }

  v132 = 136;
  v133 = 0;
  v134 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v64, "air.pointer_type");
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v135 = v64;
  }

  v136 = 60;
  v137 = 0;
  v138 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v63, "air.lvalue_reference_type");
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v63;
  }

  v140 = 60;
  v141 = 0;
  v142 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v62, "air.rvalue_reference_type");
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v143, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v143 = v62;
  }

  v144 = 60;
  v145 = 0;
  v146 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v61, "air.array_type");
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v147, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    v147 = v61;
  }

  v148 = 2;
  v149 = 0;
  v150 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v60, "air.struct_type");
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v151, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v151 = v60;
  }

  v152 = 1;
  v153 = 0;
  v154 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v59, "air.sampler_type");
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v155, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v155 = v59;
  }

  v156 = 59;
  v157 = 0;
  v158 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v58, "air.instance_acceleration_structure_type");
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v159 = v58;
  }

  v160 = 118;
  v161 = 0;
  v162 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v57, "air.primitive_acceleration_structure_type");
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v163, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v163 = v57;
  }

  v164 = 117;
  v165 = 0;
  v166 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v56, "air.texture_1d_type");
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v56;
  }

  v168 = 58;
  v169 = 0;
  v170 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v55, "air.texture_1d_array_type");
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v171, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v171 = v55;
  }

  v172 = 58;
  v173 = 1;
  v174 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v54, "air.texture_2d_type");
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v175, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    v175 = v54;
  }

  v176 = 58;
  v177 = 2;
  v178 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v53, "air.texture_2d_array_type");
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v179, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v179 = v53;
  }

  v180 = 58;
  v181 = 3;
  v182 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v52, "air.texture_3d_type");
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v183, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v183 = v52;
  }

  v184 = 58;
  v185 = 7;
  v186 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v51, "air.texture_cube_type");
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v187, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v187 = v51;
  }

  v188 = 58;
  v189 = 5;
  v190 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v50, "air.texture_cube_array_type");
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v191, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v191 = v50;
  }

  v192 = 58;
  v193 = 6;
  v194 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v49, "air.texture_2d_ms_type");
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v195, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v195 = v49;
  }

  v196 = 58;
  v197 = 4;
  v198 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v48, "air.texture_2d_ms_array_type");
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v199, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v199 = v48;
  }

  v200 = 58;
  v201 = 8;
  v202 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v47, "air.texture_buffer_1d_type");
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v203, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v203 = v47;
  }

  v204 = 58;
  v205 = 9;
  v206 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v46, "air.depth_2d_type");
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v207, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
  }

  else
  {
    v207 = v46;
  }

  v208 = 58;
  v209 = 2;
  v210 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v45, "air.depth_2d_array_type");
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v45;
  }

  v212 = 58;
  v213 = 3;
  v214 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v44, "air.depth_cube_type");
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v215, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v215 = v44;
  }

  v216 = 58;
  v217 = 5;
  v218 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v43, "air.depth_cube_array_type");
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v219, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v219 = v43;
  }

  v220 = 58;
  v221 = 6;
  v222 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v42, "air.depth_2d_ms_type");
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v223, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v223 = v42;
  }

  v224 = 58;
  v225 = 4;
  v226 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v41, "air.depth_2d_ms_array_type");
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v227, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v227 = v41;
  }

  v228 = 58;
  v229 = 8;
  v230 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v40, "air.r8unorm_type");
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v231, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v231 = v40;
  }

  v232 = 62;
  v233 = 0;
  v234 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v39, "air.r8snorm_type");
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v39;
  }

  v236 = 63;
  v237 = 0;
  v238 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v38, "air.r16unorm_type");
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v239, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v239 = v38;
  }

  v240 = 64;
  v241 = 0;
  v242 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v37, "air.r16snorm_type");
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v243, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v243 = v37;
  }

  v244 = 65;
  v245 = 0;
  v246 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v36, "air.rg8unorm_type");
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v247, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    v247 = v36;
  }

  v248 = 66;
  v249 = 0;
  v250 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v35, "air.rg8snorm_type");
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v251, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v251 = v35;
  }

  v252 = 67;
  v253 = 0;
  v254 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v34, "air.rg16unorm_type");
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v255, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v255 = v34;
  }

  v256 = 68;
  v257 = 0;
  v258 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v33, "air.rg16snorm_type");
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v259, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v259 = v33;
  }

  v260 = 69;
  v261 = 0;
  v262 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v32, "air.rgba8unorm_type");
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v263, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v263 = v32;
  }

  v264 = 70;
  v265 = 0;
  v266 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v31, "air.rgba8snorm_type");
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v267, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v267 = v31;
  }

  v268 = 72;
  v269 = 0;
  v270 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v30, "air.rgba16unorm_type");
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v271, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v271 = v30;
  }

  v272 = 73;
  v273 = 0;
  v274 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v29, "air.rgba16snorm_type");
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v275, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v275 = v29;
  }

  v276 = 74;
  v277 = 0;
  v278 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v28, "air.srgba8unorm_type");
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v279, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v279 = v28;
  }

  v280 = 71;
  v281 = 0;
  v282 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v27, "air.rgb10a2_type");
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v283, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v283 = v27;
  }

  v284 = 75;
  v285 = 0;
  v286 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v26, "air.rg11b10f_type");
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v287, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v287 = v26;
  }

  v288 = 92;
  v289 = 0;
  v290 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v25, "air.rgb9e5_type");
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v291, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v291 = v25;
  }

  v292 = 77;
  v293 = 0;
  v294 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v24, "air.visible_function_table_type");
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v295, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v295 = v24;
  }

  v296 = 115;
  v297 = 0;
  v298 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v23, "air.intersection_function_table_type");
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v299, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v299 = v23;
  }

  v300 = 116;
  v301 = 0;
  v302 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v22, "air.vector_type");
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v303, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v303 = v22;
  }

  v304 = 137;
  v305 = 0;
  v306 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v21, "air.packed_vector_type");
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v307, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v307 = v21;
  }

  v308 = 137;
  v309 = 0;
  v310 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v20, "air.imageblock_type");
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v311, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v311 = v20;
  }

  v312 = 138;
  v313 = 0;
  v314 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v19, "air.opaque_type");
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v315, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v315 = v19;
  }

  v316 = 0u;
  v317 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v18, "air.llong_type");
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v318, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v318 = v18;
  }

  v319 = 0u;
  v320 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v17, "air.ullong_type");
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v321, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v321 = v17;
  }

  v322 = 0u;
  v323 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v16, "air.function_type");
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v324, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v324 = v16;
  }

  v325 = 0u;
  v326 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v15, "air.enum_type");
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v327, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v327 = v15;
  }

  v328 = 0u;
  v329 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v14, "air.union_type");
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v330, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v330 = v14;
  }

  v331 = 0u;
  v332 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v13, "air.command_buffer_type");
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v333, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v333 = v13;
  }

  v334 = 0u;
  v335 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v12, "air.compute_pipeline_state_type");
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v336, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v336 = v12;
  }

  v337 = 0u;
  v338 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v11, "air.render_pipeline_state_type");
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v339, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v339 = v11;
  }

  v340 = 0u;
  v341 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "air.mesh_grid_properties_type");
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v342, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    v342 = v10;
  }

  v343 = 0u;
  v344 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v9, "air.patch_control_point_type");
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v345, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v345 = v9;
  }

  v346 = 0u;
  v347 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v8, "air.interpolant_type");
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v348, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    v348 = v8;
  }

  v349 = 0u;
  v350 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v7, "air.bounds_checked_buffer_type");
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v351, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v351 = v7;
  }

  v352 = 0u;
  v353 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "air.mesh_type");
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v354, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    v354 = v6;
  }

  v355 = 0u;
  v356 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "air.array_of_type");
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v357, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
  }

  else
  {
    v357 = v5;
  }

  v358 = 0u;
  v359 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "air.array_ref_of_type");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v360, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v360 = __p;
  }

  v361 = 0u;
  v362 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__assign_unique<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const*>((v1 + 312), &__str, &v363);
  v2 = 456;
  do
  {
    if (SHIBYTE(v78.__r_.__value_.__r.__words[v2 + 2]) < 0)
    {
      operator delete(*(&v78.__r_.__value_.__l.__data_ + v2 * 8));
    }

    v2 -= 6;
  }

  while (v2 * 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_213C6D130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (a88 < 0)
  {
    operator delete(a87);
  }

  if (a90 < 0)
  {
    operator delete(a89);
  }

  if (a92 < 0)
  {
    operator delete(a91);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a93);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(STACK[0x378]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(STACK[0x408]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(STACK[0x528]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(STACK[0x558]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(STACK[0x570]);
  }

  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(STACK[0x588]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(STACK[0x5E8]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(STACK[0x648]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(STACK[0x660]);
  }

  if (SLOBYTE(STACK[0x68F]) < 0)
  {
    operator delete(STACK[0x678]);
  }

  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  if (SLOBYTE(STACK[0x6BF]) < 0)
  {
    operator delete(STACK[0x6A8]);
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  if (SLOBYTE(STACK[0x6EF]) < 0)
  {
    operator delete(STACK[0x6D8]);
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  while (v93 != &STACK[0x720])
  {
    v95 = *(v93 - 25);
    v93 -= 6;
    if (v95 < 0)
    {
      operator delete(*v93);
    }
  }

  _Unwind_Resume(a1);
}

void StitchingReflection::StitchingReflection(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  MTLArgumentData::MTLArgumentData((a1 + 3));
}

void sub_213C6DDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(a9);
  MTLArgumentData::~MTLArgumentData((v19 + 3));
  a19 = v19;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void StitchingReflection::getReflectionFromStitchingMetadata(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  StitchingReflection::stitchingArgumentTypeFromNode(a1, a2, &v10);
  v8 = v10.n128_u32[0];
  if (v10.n128_i64[0] <= 57)
  {
    if (v10.n128_i64[0] > 32)
    {
      if (v10.n128_i64[0] > 44)
      {
        if (v10.n128_u64[0] != 45 && v10.n128_u64[0] != 49 && v10.n128_u64[0] != 53)
        {
          goto LABEL_38;
        }
      }

      else if (v10.n128_u64[0] != 33 && v10.n128_u64[0] != 37 && v10.n128_u64[0] != 41)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    if (v10.n128_i64[0] > 2)
    {
      if (v10.n128_u64[0] != 3 && v10.n128_u64[0] != 16 && v10.n128_u64[0] != 29)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    if (v10.n128_u64[0] == 1)
    {
      StitchingReflection::initStructType(a1, a2, a3, a4);
      goto LABEL_12;
    }

    if (v10.n128_u64[0] == 2)
    {
      StitchingReflection::initArrayType(a1, a2, a4);
      goto LABEL_12;
    }

LABEL_38:
    v9 = v13;
    *a4 = v12;
    *(a4 + 16) = v9;
    *(a4 + 32) = v14;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    *(a4 + 48) = 0;
    v16 = 0;
    v15 = 0uLL;
    goto LABEL_12;
  }

  if (v10.n128_i64[0] > 135)
  {
    switch(v10.n128_u64[0])
    {
      case 0x88uLL:
        StitchingReflection::initMatrixType(a1, a2, a4);
        goto LABEL_12;
      case 0x89uLL:
        StitchingReflection::initVectorType(a1, a2, a4);
        goto LABEL_12;
      case 0x8AuLL:
        StitchingReflection::initImageBlockType(a1, a2, a4);
        goto LABEL_12;
    }

    goto LABEL_38;
  }

  if (v10.n128_u64[0] - 59 > 0x3E)
  {
LABEL_32:
    if (v10.n128_u64[0] == 58)
    {
      StitchingReflection::initTextureType(a1, a2, v10.n128_i32[2], v11, a4);
      goto LABEL_12;
    }

    goto LABEL_38;
  }

  if (((1 << (v10.n128_u8[0] - 59)) & 0x4000000044400004) == 0)
  {
    if (v10.n128_u64[0] == 59)
    {
      *(a4 + 64) = 0;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *a4 = 59;
      goto LABEL_12;
    }

    if (v10.n128_u64[0] == 60)
    {
      StitchingReflection::initPointerType(a1, a2, a4);
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_11:
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *a4 = v8;
LABEL_12:
  v10.n128_u64[0] = &v15;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v10);
}

void sub_213C6E080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a10 = &a19;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double StitchingReflection::initScalarType@<D0>(MTLDataType a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = a1;
  return result;
}

uint64_t StitchingReflection::getMatrixType(uint64_t a1, uint64_t a2)
{
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), &v24);
  v3 = a2 - 8 * *(a2 + 8);
  v4 = *(*(v3 + 40) + 128);
  if (*(v4 + 16) == 16)
  {
    v5 = (v4 + 24);
    if (*(v4 + 32) >= 0x41u)
    {
      v5 = *v5;
    }

    v6 = *v5;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(*(v3 + 48) + 128);
  if (*(v7 + 16) == 16)
  {
    v8 = (v7 + 24);
    if (*(v7 + 32) >= 0x41u)
    {
      v8 = *v8;
    }

    v9 = *v8;
  }

  else
  {
    v9 = -1;
  }

  if (v24.n128_u64[0] == 121)
  {
    v18 = v9 - 2;
    v19 = v9 + 131;
    if ((v9 - 2) >= 3)
    {
      v19 = 0;
    }

    v20 = v9 | 0x80;
    if (v18 >= 3)
    {
      v20 = 0;
    }

    v21 = v9 + 125;
    if (v18 >= 3)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    if (v6 != 2)
    {
      v22 = 0;
    }

    if (v6 == 3)
    {
      v22 = v20;
    }

    if (v6 == 4)
    {
      return v19;
    }

    else
    {
      return v22;
    }
  }

  else
  {
    v10 = v9 - 2;
    v11 = v9 | 0x18;
    if ((v9 - 2) >= 3)
    {
      v11 = 0;
    }

    v12 = v9 + 21;
    if (v10 >= 3)
    {
      v12 = 0;
    }

    v13 = v9 + 18;
    if (v10 >= 3)
    {
      v13 = 0;
    }

    if (v6 != 2)
    {
      v13 = 0;
    }

    if (v6 != 3)
    {
      v12 = v13;
    }

    if (v6 != 4)
    {
      v11 = v12;
    }

    v14 = v9 + 11;
    if (v10 >= 3)
    {
      v14 = 0;
    }

    v15 = v9 | 8;
    if (v10 >= 3)
    {
      v15 = 0;
    }

    v16 = v9 + 5;
    if (v10 >= 3)
    {
      v16 = 0;
    }

    if (v6 != 2)
    {
      v16 = 0;
    }

    if (v6 == 3)
    {
      v16 = v15;
    }

    if (v6 == 4)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    if (v24.n128_u64[0] != 3)
    {
      v17 = 0;
    }

    if (v24.n128_u64[0] == 16)
    {
      return v11;
    }
  }

  return v17;
}

__n128 StitchingReflection::stitchingArgumentTypeFromNode@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v10[0] = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8)));
  v10[1] = v5;
  llvm::StringRef::str(v10, __p);
  v6 = std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::find<std::string>((a1 + 312), __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  result = *(v6 + 5);
  *a3 = result;
  a3[1].n128_u64[0] = v6[7];
  return result;
}

uint64_t StitchingReflection::getVectorType(uint64_t a1, uint64_t a2)
{
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), &v20);
  v3 = *(*(a2 - 8 * *(a2 + 8) + 40) + 128);
  if (*(v3 + 16) == 16)
  {
    v4 = (v3 + 24);
    if (*(v3 + 32) >= 0x41u)
    {
      v4 = *v4;
    }

    v5 = *v4;
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 - 2;
  if (v20.n128_i64[0] > 44)
  {
    v7 = v5 | 0x50;
    if (v6 >= 3)
    {
      v7 = 0;
    }

    v14 = v5 + 84;
    if (v6 >= 3)
    {
      v14 = 0;
    }

    v15 = v5 | 0x78;
    if (v6 >= 3)
    {
      v15 = 0;
    }

    if (v20.n128_u64[0] != 121)
    {
      v15 = 0;
    }

    if (v20.n128_u64[0] != 85)
    {
      v14 = v15;
    }

    if (v20.n128_u64[0] != 81)
    {
      v7 = v14;
    }

    v16 = v5 + 44;
    if (v6 >= 3)
    {
      v16 = 0;
    }

    v17 = v5 | 0x30;
    if (v6 >= 3)
    {
      v17 = 0;
    }

    v12 = v5 + 52;
    if (v6 >= 3)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] != 53)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] == 49)
    {
      v12 = v17;
    }

    if (v20.n128_u64[0] == 45)
    {
      v12 = v16;
    }

    v13 = v20.n128_u64[0] <= 80;
  }

  else
  {
    v7 = v5 | 0x20;
    if (v6 >= 3)
    {
      v7 = 0;
    }

    v8 = v5 + 36;
    if (v6 >= 3)
    {
      v8 = 0;
    }

    v9 = v5 | 0x28;
    if (v6 >= 3)
    {
      v9 = 0;
    }

    if (v20.n128_u64[0] != 41)
    {
      v9 = 0;
    }

    if (v20.n128_u64[0] != 37)
    {
      v8 = v9;
    }

    if (v20.n128_u64[0] != 33)
    {
      v7 = v8;
    }

    v10 = v5 + 2;
    if (v6 >= 3)
    {
      v10 = 0;
    }

    v11 = v5 + 15;
    if (v6 >= 3)
    {
      v11 = 0;
    }

    v12 = v5 + 28;
    if (v6 >= 3)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] != 29)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] == 16)
    {
      v12 = v11;
    }

    if (v20.n128_u64[0] == 3)
    {
      v12 = v10;
    }

    v13 = v20.n128_u64[0] <= 32;
  }

  if (v13)
  {
    return v12;
  }

  else
  {
    return v7;
  }
}

uint64_t StitchingReflection::getAccessType(uint64_t a1, uint64_t a2)
{
  String = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 40));
  if (v3 == 5)
  {
    return 2 * (memcmp(String, "write", 5uLL) == 0);
  }

  if (v3 == 10)
  {
    return memcmp(String, "read_write", 0xAuLL) == 0;
  }

  return 0;
}

unint64_t StitchingReflection::getTypeInfoDescriptor(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - 8 * *(a2 + 8));
  v3 = *(v2[1] + 128);
  if (*(v3 + 16) == 16)
  {
    v4 = (v3 + 24);
    if (*(v3 + 32) >= 0x41u)
    {
      v4 = *v4;
    }

    v5 = *v4;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v6 = *(v2[2] + 128);
  if (*(v6 + 16) == 16)
  {
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    v8 = *v7 << 32;
  }

  else
  {
    v8 = 0xFFFFFFFF00000000;
  }

  v9 = v2[3];
  if (v9)
  {
    v10 = llvm::MDNode::classof(v9);
    v11 = v2[3];
    if (v10 && v11 != 0)
    {
      v14 = *(v11 - 8 * *(v11 + 8));
      v15 = *(*(v14 - 8 * *(v14 + 8) + 8) + 128);
      if (*(v15 + 16) == 16)
      {
        v16 = (v15 + 24);
        if (*(v15 + 32) >= 0x41u)
        {
          v16 = *v16;
        }

        v17 = *v16;
      }
    }
  }

  return v8 | v5;
}

void StitchingReflection::traverseStruct(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v4 = a2 - 8 * *(a2 + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    v8 = llvm::MDNode::classof(v5);
    v54 = *(v4 + 40);
    if (v8 && *(v4 + 40) != 0)
    {
      v53 = *(v54 + 8);
      if (v53)
      {
        v10 = 0;
        v52 = a4;
        do
        {
          v69 = 0;
          v68 = 0u;
          memset(v67, 0, sizeof(v67));
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v73 = xmmword_213C7D190;
          memset(v74, 0, sizeof(v74));
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v11 = *(v54 - 8 * *(v54 + 8) + 8 * v10);
          v66 = 0;
          v64 = 0u;
          __p = 0u;
          v12 = *(v11 + 8);
          v13 = (v11 - 8 * v12);
          v14 = *(v13[1] + 128);
          if (*(v14 + 16) == 16)
          {
            v15 = (v14 + 24);
            if (*(v14 + 32) >= 0x41u)
            {
              v15 = *v15;
            }

            v16 = *v15;
          }

          else
          {
            v16 = -1;
          }

          v61 = v16;
          v17 = *(v13[2] + 128);
          if (*(v17 + 16) == 16)
          {
            v18 = (v17 + 24);
            if (*(v17 + 32) >= 0x41u)
            {
              v18 = *v18;
            }

            v19 = *v18;
          }

          else
          {
            v19 = -1;
          }

          v62 = v19;
          v63 = v13[3];
          v20 = v13[4];
          if (v20)
          {
            String = llvm::MDString::getString(v20);
            v23 = -*(v11 + 8);
          }

          else
          {
            v22 = 0;
            v23 = -v12;
            String = &unk_213C7E907;
          }

          *&v64 = String;
          *(&v64 + 1) = v22;
          v24 = v11 + 8 * v23;
          v25 = *(v24 + 40);
          if (v25)
          {
            v26 = llvm::MDNode::classof(v25);
            v27 = *(v24 + 40);
            v28 = v27 ? v26 : 0;
            if (v28 == 1)
            {
              v29 = *(v27 + 8);
              std::vector<AttributeDescriptor>::reserve(&__p, v29);
              v30 = v27;
              if (v29)
              {
                do
                {
                  v31 = *(v30 - 8 * *(v27 + 8));
                  v32 = llvm::MDString::getString(*(v31 - 8 * *(v31 + 8)));
                  if (v33 == 22 && (*v32 == 0x646E65722E726961 ? (v34 = v32[1] == 0x65677261745F7265) : (v34 = 0), v34 ? (v35 = *(v32 + 14) == 0x727474615F746567) : (v35 = 0), v35))
                  {
                    v44 = *(*(v31 - 8 * *(v31 + 8) + 8) + 128);
                    if (*(v44 + 16) == 16)
                    {
                      v45 = (v44 + 24);
                      if (*(v44 + 32) >= 0x41u)
                      {
                        v45 = *v45;
                      }

                      v37 = *v45;
                    }

                    else
                    {
                      v37 = -1;
                    }

                    v36 = 10;
                  }

                  else
                  {
                    v36 = 0;
                    v37 = 0;
                  }

                  v38 = *(&__p + 1);
                  if (*(&__p + 1) >= v66)
                  {
                    v40 = (*(&__p + 1) - __p) >> 5;
                    v41 = v40 + 1;
                    if ((v40 + 1) >> 59)
                    {
                      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                    }

                    v42 = v66 - __p;
                    if ((v66 - __p) >> 4 > v41)
                    {
                      v41 = v42 >> 4;
                    }

                    if (v42 >= 0x7FFFFFFFFFFFFFE0)
                    {
                      v43 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v43 = v41;
                    }

                    if (v43)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(&__p, v43);
                    }

                    v46 = 32 * v40;
                    *v46 = v36;
                    *(v46 + 2) = 0;
                    *(v46 + 4) = v37;
                    *(v46 + 16) = 0;
                    *(v46 + 24) = 0;
                    *(v46 + 8) = 0;
                    v39 = 32 * v40 + 32;
                    v47 = (32 * v40 - (*(&__p + 1) - __p));
                    memcpy(v47, __p, *(&__p + 1) - __p);
                    v48 = __p;
                    *&__p = v47;
                    *(&__p + 1) = v39;
                    v66 = 0;
                    if (v48)
                    {
                      operator delete(v48);
                    }
                  }

                  else
                  {
                    **(&__p + 1) = v36;
                    *(v38 + 2) = 0;
                    *(v38 + 4) = v37;
                    *(v38 + 16) = 0;
                    *(v38 + 24) = 0;
                    v39 = v38 + 32;
                    *(v38 + 8) = 0;
                  }

                  *(&__p + 1) = v39;
                  v30 += 8;
                  --v29;
                }

                while (v29);
              }
            }
          }

          v67[0] = v64;
          LODWORD(v68) = v61;
          for (i = __p; i != *(&__p + 1); i += 32)
          {
            if (*i == 10)
            {
              LODWORD(v73) = *(i + 4);
            }
          }

          StitchingReflection::getReflectionFromStitchingMetadata(&v56, a1, v63, v52);
          if (v52)
          {
            DWORD1(v57) = HIDWORD(v56);
            HIDWORD(v56) = v56;
            LODWORD(v56) = 60;
          }

          v75 = v56;
          v76 = v57;
          v77 = v58;
          std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(&v74[1], v59, v60, 0x2E8BA2E8BA2E8BA3 * ((v60 - v59) >> 4));
          v50 = a3[1];
          if (v50 >= a3[2])
          {
            v51 = std::vector<MTLStructMemberInfo>::__emplace_back_slow_path<MTLStructMemberInfo const&>(a3, v67);
          }

          else
          {
            std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(a3, a3[1], v67);
            v51 = v50 + 176;
            a3[1] = v50 + 176;
          }

          a3[1] = v51;
          v78 = &v59;
          std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v78);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          *&v56 = &v74[1];
          std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v56);
          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }

          ++v10;
        }

        while (v10 != v53);
      }
    }
  }
}

void sub_213C6EA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  MTLStructMemberInfo::~MTLStructMemberInfo(&a35);
  _Unwind_Resume(a1);
}

unint64_t StitchingReflection::initMatrixType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  MatrixType = StitchingReflection::getMatrixType(a1, a2);
  *a3 = MatrixType;
  result = StitchingReflection::getTypeInfoDescriptor(MatrixType, a2);
  *(a3 + 4) = result;
  return result;
}

void sub_213C6EB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

unint64_t StitchingReflection::initVectorType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  VectorType = StitchingReflection::getVectorType(a1, a2);
  *a3 = VectorType;
  result = StitchingReflection::getTypeInfoDescriptor(VectorType, a2);
  *(a3 + 4) = result;
  return result;
}

void sub_213C6EBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double StitchingReflection::initSamplerType@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 59;
  return result;
}

uint64_t StitchingReflection::initTextureType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 58;
  *(a5 + 16) = (a4 << 16) | a3;
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), v9);
  *(a5 + 12) = v9[0].n128_u32[0];
  result = StitchingReflection::getAccessType(v7, a2);
  *(a5 + 24) = result;
  return result;
}

void sub_213C6EC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = (v12 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void StitchingReflection::initPointerType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 60;
  v5 = *(a2 - 8 * *(a2 + 8) + 32);
  StitchingReflection::getTypeInfoDescriptor(a1, v5);
  *(a3 + 24) = v6;
  StitchingReflection::getReflectionFromStitchingMetadata(&v8, a1, v5, 0);
  *(a3 + 4) = v9;
  v7 = v8;
  *(a3 + 12) = v8;
  *(a3 + 20) = v10;
  if (v7 == 1)
  {
    *(a3 + 32) = v11;
    if (&v8 != a3)
    {
      std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a3 + 48), v12, v13, 0x2E8BA2E8BA2E8BA3 * ((v13 - v12) >> 4));
    }
  }

  v14 = &v12;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_213C6ED68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v11 - 40) = v10;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100]((v11 - 40));
  a9 = (v9 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void StitchingReflection::initStructType(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  v8 = (a4 + 48);
  *(a4 + 64) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *a4 = 1;
  *(a4 + 4) = StitchingReflection::getTypeInfoDescriptor(a1, a2);
  v9 = *(a2 - 8 * *(a2 + 8) + 32);
  if (v9)
  {
    String = llvm::MDString::getString(v9);
  }

  else
  {
    v11 = 0;
    String = &unk_213C7E907;
  }

  *(a4 + 32) = String;
  *(a4 + 40) = v11;
  std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo const*,MTLStructMemberInfo const*>(v8, 0, 0, 0);
  StitchingReflection::traverseStruct(a1, a2, v8, a3);
}

void sub_213C6EE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StitchingReflection::initArrayType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 2;
  *(a3 + 4) = StitchingReflection::getTypeInfoDescriptor(a1, a2);
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), v9);
  *(a3 + 12) = v9[0].n128_u32[0];
  v6 = *(*(a2 - 8 * *(a2 + 8) + 40) + 128);
  if (*(v6 + 16) == 16)
  {
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    v8 = *v7;
  }

  else
  {
    v8 = -1;
  }

  *(a3 + 28) = v8;
}

void sub_213C6EF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = (v12 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *StitchingReflection::initImageBlockType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = StitchingReflection::getReflectionFromStitchingMetadata(a3, a1, *(a2 - 8 * *(a2 + 8) + 40), 1);
  *a3 = 138;
  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_4(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_8(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_11(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_12(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = (*(v4 + 24) + v3);
  *(v4 + 24) = v6;
  if (!v3 || v2[v3 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_16(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = (*(v4 + 24) + v3);
  *(v4 + 24) = v6;
  if (!v3 || v2[v3 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

void std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 176)
  {
    v6 = (i - 72);
    std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 = *(i - 112);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  *(a1 + 8) = a2;
}

void *std::vector<AttributeDescriptor>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void StitchingReflection::~StitchingReflection(StitchingReflection *this)
{
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(this + 312);
  v5 = (this + 224);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t serializeStitchingTypeInfo(unsigned int *a1, uint64_t a2)
{
  v7 = (a2 + 16);
  (*(a2 + 16))(a2, *a1);
  (*v7)(a2, a1[1]);
  (*v7)(a2, a1[2]);
  (*v7)(a2, a1[3]);
  (*v7)(a2, a1[4]);
  (*v7)(a2, a1[5]);
  (*v7)(a2, a1[6]);
  v4 = a1[7];
  v5 = *v7;

  return v5(a2, v4);
}

uint64_t serializeStitchingStructInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a2;
  v15[1] = a3;
  (*(a5 + 16))(a5, v15);
  v8 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  result = (*(a4 + 16))(a4, v8);
  if (v8)
  {
    v10 = 0;
    v11 = 176 * v8;
    do
    {
      v12 = *a1 + v10;
      (*(a5 + 16))(a5, v12);
      (*(a4 + 16))(a4, *(v12 + 32));
      (*(a4 + 16))(a4, *(v12 + 76));
      v13 = *(v12 + 144);
      v14[0] = *(v12 + 128);
      v14[1] = v13;
      v14[2] = *(v12 + 160);
      result = serializeStitchingTypeInfo(v14, a4);
      if (LODWORD(v14[0]) == 1 || LODWORD(v14[0]) == 138 || LODWORD(v14[0]) == 60 && HIDWORD(v14[0]) == 1)
      {
        result = serializeStitchingStructInfo(v12 + 104, *(v12 + 16), *(v12 + 24), a4, a5);
      }

      v10 += 176;
    }

    while (v11 != v10);
  }

  return result;
}

uint64_t getStructIndirectArgumentIndexStride(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 0;
  }

  v2 = *(v1 - 104);
  if (*(v1 - 80))
  {
    StructIndirectArgumentIndexStride = getStructIndirectArgumentIndexStride(v1 - 72);
  }

  else
  {
    v5 = *(v1 - 120);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6 <= 1)
      {
        StructIndirectArgumentIndexStride = 1;
      }

      else
      {
        StructIndirectArgumentIndexStride = v6;
      }
    }

    else
    {
      StructIndirectArgumentIndexStride = 1;
    }
  }

  v7 = *(v1 - 136);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  return v2 + v7 * StructIndirectArgumentIndexStride;
}

void *std::vector<MTLArgumentData>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0xE38E38E38E38E4)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_213C6F650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<MTLArgumentData>::__emplace_back_slow_path<>(void *a1)
{
  v1 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
  v2 = v1 + 1;
  if (v1 + 1 <= 0xE38E38E38E38E3)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5) > v2)
    {
      v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 5) >= 0x71C71C71C71C71)
    {
      v3 = 0xE38E38E38E38E3;
    }

    else
    {
      v3 = v2;
    }

    v5 = a1;
    if (v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v3);
    }

    v4 = 288 * v1;
    MTLArgumentData::MTLArgumentData((288 * v1));
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void sub_213C6F788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__assign_unique<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const*>(uint64_t *a1, std::string *__str, std::string *a3)
{
  v4 = __str;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = __str == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), v4);
        *(v8 + 40) = *&v4[1].__r_.__value_.__l.__data_;
        *(v8 + 56) = v4[1].__r_.__value_.__s.__data_[16];
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique(a1, v8);
        v4 += 2;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(a1, v10);
  }

  while (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>(a1, &v4->__r_.__value_.__l.__data_);
    v4 += 2;
  }
}

void sub_213C6F87C(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
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

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__construct_node_hash<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>();
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

void sub_213C6FD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_213C6FE1C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<MTLStructMemberInfo>::__vdeallocate(a1);
    if (a4 <= 0x1745D1745D1745DLL)
    {
      v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
      {
        v10 = 0x1745D1745D1745DLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v14, a2, a3, v8);
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, v13);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v15, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*,MTLStructMemberInfo*,MTLStructMemberInfo*>(a1, (a2 + v11), a3, a1[1], v12);
  }
}

void std::vector<MTLStructMemberInfo>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 14;
    do
    {
      v8 = *(v7 - 7);
      v9 = *(v7 - 6);
      v10 = *(v7 - 5);
      *(a4 + 48) = *(v7 - 16);
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
      *a4 = v8;
      v12 = *(v7 - 7);
      v11 = *(v7 - 6);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(a4 + 64);
      *(a4 + 56) = v12;
      *(a4 + 64) = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v14 = v7 - 14;
      v15 = *(v7 - 5);
      *(a4 + 88) = *(v7 - 3);
      *(a4 + 72) = v15;
      if (a4 != v7 - 14)
      {
        v16 = *(v7 - 1);
        v17 = *v7;
        std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(a4 + 104);
      }

      v18 = *(v7 + 1);
      v19 = *(v7 + 3);
      *(a4 + 144) = *(v7 + 2);
      *(a4 + 160) = v19;
      *(a4 + 128) = v18;
      a4 += 176;
      v7 += 22;
    }

    while (v14 + 22 != a3);
    return a3;
  }

  return result;
}

__n128 std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[2];
  *(a2 + 16) = a3[1];
  *(a2 + 32) = v6;
  *a2 = v5;
  v7 = a3[3];
  v8 = a3[4];
  v9 = a3[6];
  *(a2 + 80) = a3[5];
  *(a2 + 96) = v9;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  v11 = *(a3 + 14);
  v10 = *(a3 + 15);
  *(a2 + 120) = v10;
  *(a2 + 112) = v11;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a3 + 16);
  v12 = *(a3 + 17);
  *(a2 + 136) = v12;
  *(a2 + 128) = v13;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a3 + 19);
  *(a2 + 144) = *(a3 + 18);
  *(a2 + 152) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a3[10];
  v16 = a3[11];
  v17 = *(a3 + 24);
  *(a2 + 200) = 0;
  *(a2 + 192) = v17;
  *(a2 + 176) = v16;
  *(a2 + 160) = v15;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(a2 + 200, *(a3 + 25), *(a3 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 26) - *(a3 + 25)) >> 4));
  result = a3[14];
  v19 = a3[15];
  v20 = a3[17];
  *(a2 + 256) = a3[16];
  *(a2 + 272) = v20;
  *(a2 + 224) = result;
  *(a2 + 240) = v19;
  return result;
}

void sub_213C701BC(_Unwind_Exception *a1)
{
  v5 = *(v1 + 152);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(v3, v2);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  *(a2 + 48) = *(a3 + 12);
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *a2 = v5;
  v8 = *(a3 + 8);
  *(a2 + 56) = *(a3 + 7);
  *(a2 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a3 + 72);
  v10 = *(a3 + 88);
  *(a2 + 104) = 0;
  *(a2 + 72) = v9;
  *(a2 + 88) = v10;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(a2 + 104, *(a3 + 13), *(a3 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 14) - *(a3 + 13)) >> 4));
  result = a3[8];
  v12 = a3[10];
  *(a2 + 144) = a3[9];
  *(a2 + 160) = v12;
  *(a2 + 128) = result;
  return result;
}

void sub_213C70280(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<MTLStructMemberInfo>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 176;
    std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(v4, i - 176);
  }
}

void std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo const*,MTLStructMemberInfo const*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<MTLStructMemberInfo>::__vdeallocate(a1);
    if (a4 <= 0x1745D1745D1745DLL)
    {
      v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
      {
        v10 = 0x1745D1745D1745DLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v14, a2, a3, v8);
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v13, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo const*,MTLStructMemberInfo const*,MTLStructMemberInfo*>(a1, (a2 + v11), a3, a1[1]);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo const*,MTLStructMemberInfo const*,MTLStructMemberInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(a1, v4, v6);
      v6 += 11;
      v4 = v12 + 176;
      v12 += 176;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::vector<MTLArgumentData>::__init_with_size[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLArgumentData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_213C70550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<MTLArgumentData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(a1, v4, v6);
      v6 += 18;
      v4 = v12 + 288;
      v12 += 288;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::vector<MTLArgumentData>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLArgumentData const*>,std::__wrap_iter<MTLArgumentData const*>>(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 5)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 5)) >= a5)
      {
        v18 = 9 * a5;
        std::vector<MTLArgumentData>::__move_range(a1, a2, a1[1], a2 + 288 * a5);
        v17 = &v7[2 * v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<MTLArgumentData>::__move_range(a1, v5, v10, v5 + 288 * a5);
        v17 = v7 + v16;
      }

      std::__copy_impl::operator()[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 5);
    if (v12 > 0xE38E38E38E38E3)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 5);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x71C71C71C71C71)
    {
      v15 = 0xE38E38E38E38E3;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v15);
    }

    v19 = 32 * (v13 >> 5);
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = v19 + 288 * a5;
    v21 = 288 * a5;
    do
    {
      std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(v26, v19, v7);
      v19 += 288;
      v7 += 18;
      v21 -= 288;
    }

    while (v21);
    v24 = v20;
    v5 = std::vector<MTLArgumentData>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<MTLArgumentData>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<MTLArgumentData>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = *(v9 + 32);
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 32) = v11;
      *v8 = v10;
      v12 = *(v9 + 48);
      v13 = *(v9 + 64);
      v14 = *(v9 + 96);
      *(v8 + 80) = *(v9 + 80);
      *(v8 + 96) = v14;
      *(v8 + 48) = v12;
      *(v8 + 64) = v13;
      *(v8 + 112) = *(v9 + 112);
      *(v9 + 112) = 0;
      *(v9 + 120) = 0;
      *(v8 + 128) = *(v9 + 128);
      *(v9 + 128) = 0;
      *(v9 + 136) = 0;
      *(v8 + 144) = *(v9 + 144);
      *(v9 + 144) = 0;
      *(v9 + 152) = 0;
      v15 = *(v9 + 176);
      v16 = *(v9 + 192);
      *(v8 + 160) = *(v9 + 160);
      *(v8 + 176) = v15;
      *(v8 + 192) = v16;
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 216) = 0;
      *(v8 + 200) = *(v9 + 200);
      *(v8 + 216) = *(v9 + 216);
      *(v9 + 200) = 0;
      *(v9 + 208) = 0;
      *(v9 + 216) = 0;
      v17 = *(v9 + 224);
      v18 = *(v9 + 240);
      v19 = *(v9 + 272);
      *(v8 + 256) = *(v9 + 256);
      *(v8 + 272) = v19;
      *(v8 + 224) = v17;
      *(v8 + 240) = v18;
      v9 += 288;
      v8 += 288;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<MTLArgumentData *,MTLArgumentData *,MTLArgumentData *>(&v21, a2, v7, v6);
}

uint64_t std::vector<MTLArgumentData>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<MTLArgumentData *,MTLArgumentData *,MTLArgumentData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = (a4 + v7 - 288);
      v11 = *(a3 + v7 - 240);
      v12 = *(a3 + v7 - 224);
      v13 = *(a3 + v7 - 192);
      *(v9 - 208) = *(a3 + v7 - 208);
      *(v9 - 192) = v13;
      *(v9 - 240) = v11;
      *(v9 - 224) = v12;
      v14 = *(a3 + v7 - 288);
      v15 = *(a3 + v7 - 272);
      *(v9 - 256) = *(a3 + v7 - 256);
      *v10 = v14;
      v10[1] = v15;
      v16 = *(a3 + v7 - 176);
      *(v8 - 176) = 0;
      *(v8 - 168) = 0;
      v17 = *(a4 + v7 - 168);
      *(v9 - 176) = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v18 = *(v8 - 160);
      *(v8 - 160) = 0;
      *(v8 - 152) = 0;
      v19 = *(v9 - 152);
      *(v9 - 160) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v20 = a4 + v7;
      v21 = a3 + v7;
      v22 = *(a3 + v7 - 144);
      *(v21 - 144) = 0;
      *(v21 - 136) = 0;
      v23 = *(a4 + v7 - 136);
      *(a4 + v7 - 144) = v22;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v24 = *(v21 - 128);
      v25 = *(v21 - 112);
      *(v20 - 96) = *(v21 - 96);
      *(v20 - 128) = v24;
      *(v20 - 112) = v25;
      std::vector<MTLStructMemberInfo>::__vdeallocate((v20 - 88));
      *(v20 - 88) = *(v21 - 88);
      *(v20 - 72) = *(v21 - 72);
      *(v21 - 88) = 0;
      *(v21 - 80) = 0;
      *(v21 - 72) = 0;
      v26 = *(v21 - 64);
      v27 = *(v21 - 48);
      v28 = *(v21 - 16);
      *(v20 - 32) = *(v21 - 32);
      *(v20 - 16) = v28;
      *(v20 - 64) = v26;
      *(v20 - 48) = v27;
      v7 -= 288;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 208;
    do
    {
      v8 = *(v7 - 208);
      v9 = *(v7 - 176);
      *(a4 + 16) = *(v7 - 192);
      *(a4 + 32) = v9;
      *a4 = v8;
      v10 = *(v7 - 160);
      v11 = *(v7 - 144);
      v12 = *(v7 - 112);
      *(a4 + 80) = *(v7 - 128);
      *(a4 + 96) = v12;
      *(a4 + 48) = v10;
      *(a4 + 64) = v11;
      v14 = *(v7 - 96);
      v13 = *(v7 - 88);
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(a4 + 120);
      *(a4 + 112) = v14;
      *(a4 + 120) = v13;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v16 = v7 - 208;
      v18 = *(v7 - 80);
      v17 = *(v7 - 72);
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = *(a4 + 136);
      *(a4 + 128) = v18;
      *(a4 + 136) = v17;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v21 = *(v7 - 64);
      v20 = *(v7 - 56);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v22 = *(a4 + 152);
      *(a4 + 144) = v21;
      *(a4 + 152) = v20;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v23 = *(v7 - 48);
      v24 = *(v7 - 32);
      *(a4 + 192) = *(v7 - 16);
      *(a4 + 160) = v23;
      *(a4 + 176) = v24;
      if (a4 != v16)
      {
        std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a4 + 200), *(v7 - 8), *v7, 0x2E8BA2E8BA2E8BA3 * ((*v7 - *(v7 - 8)) >> 4));
      }

      v25 = *(v7 + 16);
      v26 = *(v7 + 32);
      v27 = *(v7 + 64);
      *(a4 + 256) = *(v7 + 48);
      *(a4 + 272) = v27;
      *(a4 + 224) = v25;
      *(a4 + 240) = v26;
      a4 += 288;
      v7 += 288;
    }

    while (v16 + 288 != a3);
    return a3;
  }

  return result;
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to fstat %s: %s", v3, 0x16u);
}

{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "mmap failed for %s: %s, falling back to LLVM file loading", v3, 0x16u);
}

{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to open %s: %s", v3, 0x16u);
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *a2;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibraryModules()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void rtLibPathInBundle(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 bundlePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  [a2 bundlePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MTLCompilerSharedMemoryInterface::getRuntimeLibraryModules(uint8_t *buf, uint64_t a2, void *a3, void *a4)
{
  if (*(a2 + 47) < 0)
  {
    a3 = *a3;
  }

  *buf = 136315138;
  *a4 = a3;
  _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Runtime library %s was not mapped", buf, 0xCu);
}

void llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::scc_iterator(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 64) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 40) = v6;

    operator delete(v6);
  }
}

uint64_t OGLCodeGenService::OGLCodeGenService()
{
  v0 = *MEMORY[0x277D85DF8];
  v1 = dlerror();
  return fprintf(v0, "OGLCodeGenService: ERROR: %s\n", v1);
}

uint64_t ConstantGlobalToArgPass::serializeConstantValue(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return MEMORY[0x21604C970](result, 0x1000C8000313F17);
  }

  return result;
}

void MTLCompilerObject::downgradeAndLoadModuleRequest()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    dword_281130290 = 0;
    xmmword_281130270 = 0u;
    unk_281130280 = 0u;
    unk_2811302A8 = 0u;
    unk_2811302B8 = 0u;
    unk_2811302C8 = 0u;
    __cxa_guard_release(&_MergedGlobals);
  }
}

{
  if (__cxa_guard_acquire(&qword_281130248))
  {
    qword_281130340 = &unk_281130350;
    qword_281130348 = 0x400000000;
    qword_2811303B0 = &unk_2811303C0;
    qword_2811303B8 = 0x1000000000;
    qword_2811304C0 = &unk_2811304D0;
    qword_2811304C8 = 0x1000000000;
    qword_281130590 = &qword_2811305A0;
    qword_281130598 = 0;
    qword_2811305A0 = &unk_2811305B8;
    xmmword_2811305A8 = 0u;
    v0 = OUTLINED_FUNCTION_1_0();
    __cxa_atexit(v0, v1, v2);
    __cxa_guard_release(&qword_281130248);
  }
}

void fatalDiagnosticHandler(uint64_t *a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  v3 = 136315138;
  v4 = v1;
  _os_log_fault_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "LLVM ERROR: %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void MTLCompilerObject::addDebugInstrumentationToModule()
{
  if (__cxa_guard_acquire(&qword_281130250))
  {
    LODWORD(xmmword_2811302F8) = 0;
    unk_2811302E8 = 0u;
    xmmword_2811302D8 = 0u;
    xmmword_281130310 = 0u;
    unk_281130320 = 0u;
    unk_281130330 = 0u;

    __cxa_guard_release(&qword_281130250);
  }
}

{
  if (__cxa_guard_acquire(&qword_281130258))
  {
    qword_2811305D0 = &unk_2811305E0;
    qword_2811305D8 = 0x400000000;
    qword_281130640 = &unk_281130650;
    qword_281130648 = 0x1000000000;
    qword_281130750 = &unk_281130760;
    qword_281130758 = 0x1000000000;
    qword_281130820 = &qword_281130830;
    qword_281130828 = 0;
    qword_281130830 = &qword_281130848;
    xmmword_281130838 = 0u;
    v0 = OUTLINED_FUNCTION_1_0();
    __cxa_atexit(v0, &qword_2811305D0, v1);

    __cxa_guard_release(&qword_281130258);
  }
}

void logCompileError(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3(v1, v2, v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

void MTLCompilerPluginInterface::init()
{
  operator delete(*MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes);
}

{
  operator delete(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPluginSuffixes);
}

void MTLCompilerPluginInterface::init(uint64_t a1, uint64_t a2, uint8_t *buf)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to dlopen compiler plugin at %s, dlerror %s", buf, 0x16u);
}

void MTLCompilerPluginInterface::init(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_fault_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Compiler plugin %s is not registered with the MTLCompilerObject", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *a2;
  if (*a2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t llvm::ErrorList::join(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_4(v4);
    (*(v6 + 8))(v5);
  }

  return MEMORY[0x21604C990](a2, 0xA1C4030951706);
}

void MTLCompilerObject::logCompilerFailure(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [objc_msgSend(*a1 "localizedDescription")];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void MTLCompilerObject::logCompilerFailure(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void logMachOError(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3(v1, v2, v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::AllocaInst::AllocaInst()
{
  return MEMORY[0x2821F1840]();
}

{
  return MEMORY[0x2821F1850]();
}

uint64_t llvm::BranchInst::BranchInst()
{
  return MEMORY[0x2821F1898]();
}

{
  return MEMORY[0x2821F18A0]();
}

{
  return MEMORY[0x2821F18A8]();
}

uint64_t llvm::StructType::create()
{
  return MEMORY[0x2821F19B0]();
}

{
  return MEMORY[0x2821F19C0]();
}

{
  return MEMORY[0x2821F19C8]();
}

uint64_t llvm::AttrBuilder::addAttribute()
{
  return MEMORY[0x2821F1AB8]();
}

{
  return MEMORY[0x2821F1AC0]();
}

uint64_t llvm::ConstantInt::get()
{
  return MEMORY[0x2821F1B60]();
}

{
  return MEMORY[0x2821F1B70]();
}

uint64_t llvm::Instruction::setMetadata()
{
  return MEMORY[0x2821F1C38]();
}

{
  return MEMORY[0x2821F1C40]();
}

uint64_t llvm::FunctionType::get()
{
  return MEMORY[0x2821F2050]();
}

{
  return MEMORY[0x2821F2058]();
}

void llvm::SmallVectorBase<unsigned int>::mallocForGrow()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned int>::grow_pod()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod()
{
    ;
  }
}

uint64_t llvm::ConstantDataVector::get()
{
  return MEMORY[0x2821F2B48]();
}

{
  return MEMORY[0x2821F2B50]();
}

{
  return MEMORY[0x2821F2B58]();
}

{
  return MEMORY[0x2821F2B60]();
}

uint64_t llvm::ConstantDataVector::getFP()
{
  return MEMORY[0x2821F2B68]();
}

{
  return MEMORY[0x2821F2B70]();
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::Function>::addNodeToList()
{
    ;
  }
}

uint64_t llvm::User::operator new(llvm::User *this)
{
  return MEMORY[0x2821F3B08](this);
}

{
  return MEMORY[0x2821F3B10](this);
}

{
  return MEMORY[0x2821F3B18](this);
}

uint64_t llvm::Value::setMetadata()
{
  return MEMORY[0x2821F3E18]();
}

{
  return MEMORY[0x2821F3E20]();
}

uint64_t llvm::Module::getOrInsertFunction()
{
  return MEMORY[0x2821F3FC0]();
}

{
  return MEMORY[0x2821F3FC8]();
}

uint64_t llvm::Function::addFnAttr()
{
  return MEMORY[0x2821F45E0]();
}

{
  return MEMORY[0x2821F45E8]();
}

{
  return MEMORY[0x2821F45F0]();
}

uint64_t llvm::Function::hasFnAttribute()
{
  return MEMORY[0x2821F5A00]();
}

{
  return MEMORY[0x2821F5A08]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}
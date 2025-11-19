uint64_t llvm::APInt::flipAllBits(uint64_t this)
{
  if (*(this + 8) > 0x40u)
  {
    return llvm::APInt::flipAllBitsSlowCase(this);
  }

  *this = ~*this;
  return llvm::APInt::clearUnusedBits(this);
}

void *llvm::APFloat::APFloat(void *a1, uint64_t a2, void *a3)
{
  v6 = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(&v6, a2);
  llvm::APFloat::Storage::Storage(a1, &v6, a3);
  if ((v6[2] - 64) <= 0xFFFFFF7F && v7)
  {
    MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  return a1;
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::operator=(llvm::detail::IEEEFloat *result, llvm::detail::DoubleAPFloat *a2)
{
  v3 = *a2;
  if (*result == &llvm::semPPCDoubleDouble)
  {
    if (v3 == &llvm::semPPCDoubleDouble)
    {
      return llvm::detail::DoubleAPFloat::operator=(result, a2);
    }
  }

  else if (v3 != &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::IEEEFloat::operator=(result, a2);
  }

  if (result != a2)
  {
    llvm::APFloat::Storage::~Storage(result);
    return llvm::APFloat::Storage::Storage(v4, a2);
  }

  return result;
}

uint64_t llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v2, &v3);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 8))(v2);
  }

  return result;
}

uint64_t llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
    {
      *a2 = 0;
      v4 = v3[1];
      v5 = v3[2];
      if (v4 != v5)
      {
        v6 = 0;
        do
        {
          v10 = v6;
          v7 = *v4;
          *v4 = 0;
          if ((*(*v7 + 48))(v7, &llvm::ErrorInfoBase::ID))
          {
            (*(*v7 + 8))(v7);
            v7 = 0;
          }

          v9 = v7;
          llvm::ErrorList::join(&v10, &v9, &v11);
          v6 = v11;
          *a2 = v11;
          v11 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          ++v4;
        }

        while (v4 != v5);
      }

      return (*(*v3 + 8))(v3);
    }

    else
    {
      v8 = v3;
      llvm::handleErrorImpl<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v8, a2);
      result = v8;
      v8 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t *llvm::ErrorList::join@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X8>)
{
  result = *a1;
  v7 = *a2;
  if (!result)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    if ((*(*result + 48))(result, &llvm::ErrorList::ID))
    {
      v8 = *a1;
      if (*a2)
      {
        v9 = (*(**a2 + 48))(*a2, &llvm::ErrorList::ID);
        v10 = *a2;
        if (v9)
        {
          *a2 = 0;
          v11 = v10[1];
          v12 = v10[2];
          if (v11 == v12)
          {
            goto LABEL_9;
          }

          do
          {
            result = std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](v8 + 1, v11++);
          }

          while (v11 != v12);
          if (v10)
          {
LABEL_9:
            result = (*(*v10 + 8))(v10);
          }

LABEL_21:
          *a3 = *a1;
          goto LABEL_22;
        }
      }

      else
      {
        v10 = 0;
      }

      v15 = v10;
      *a2 = 0;
      std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](v8 + 1, &v15);
      result = v15;
      v15 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      goto LABEL_21;
    }

    if (!*a2 || !(*(**a2 + 48))(*a2, &llvm::ErrorList::ID))
    {
      operator new();
    }

    v13 = (*a2 + 1);
    v14 = *v13;
    v15 = *a1;
    *a1 = 0;
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(v13, v14, &v15);
    result = v15;
    v15 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v7 = *a2;
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return result;
  }

  *a3 = result;
LABEL_22:
  *a1 = 0;
  return result;
}

uint64_t llvm::handleErrorImpl<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(**a1 + 48))(*a1, &llvm::ErrorInfoBase::ID);
  result = *a1;
  *a1 = 0;
  if (v4)
  {
    *a2 = 0;
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::ErrorInfoBase>>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

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
      std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::ErrorInfoBase>>>(a1, v18);
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
    std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v4, v8, v6);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::ErrorInfoBase>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:nn200100](void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::ErrorInfoBase>>>(v3[4], v11);
    }

    v7 = (((v5 - *v3) >> 3) + 1 + ((((v5 - *v3) >> 3) + 1) >> 63)) >> 1;
    result = std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v5, v4, &v5[-v7]);
    v3[1] -= 8 * v7;
  }

  v12 = *a2;
  *a2 = 0;
  *v4 = v12;
  v3[2] = (v4 + 1);
  return result;
}

void *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(void *a1, void *a2, void *a3)
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

uint64_t *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
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

_BYTE *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(uint64_t a1, uint64_t *a2, _BYTE *__dst, unint64_t a4, char a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v9, v10, v14);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 1 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 1 - v8);
      a1 += 1 - v8;
    }
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _BYTE *a3, char *a4, char *a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned int,int,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _BYTE *a3, char *a4, char *a5, int *a6, int *a7, uint64_t *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<int,llvm::hash_code>(a1, v17, v14, a4, a7, a8);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<int,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, uint64_t *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<int>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

_DWORD *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<int>(uint64_t a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v9, v10, v14);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 4 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 4 - v8);
      a1 += 4 - v8;
    }
  }

  return a1;
}

void llvm::SmallVectorImpl<unsigned long long>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 8 * v2), 8 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t llvm::APInt::initFromArray(llvm::APInt *this, void *a2)
{
  if (*(this + 2) > 0x40u)
  {
    operator new[]();
  }

  *this = *a2;

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::reallocate(uint64_t this, unsigned int a2)
{
  v3 = this;
  v4 = *(this + 8);
  if ((a2 + 63) >> 6 == (v4 + 63) >> 6)
  {
    *(this + 8) = a2;
  }

  else
  {
    if (v4 >= 0x41)
    {
      this = *this;
      if (*v3)
      {
        this = MEMORY[0x25F891010]();
      }
    }

    *(v3 + 8) = a2;
    if (a2 >= 0x41)
    {
      operator new[]();
    }
  }

  return this;
}

const llvm::APInt *llvm::APInt::assignSlowCase(const llvm::APInt *this, const llvm::APInt *a2)
{
  if (this != a2)
  {
    v3 = this;
    this = llvm::APInt::reallocate(this, *(a2 + 2));
    v4 = *(v3 + 2);
    if (v4 > 0x40)
    {
      v5 = *v3;
      v6 = *a2;

      return memcpy(v5, v6, ((v4 + 63) >> 3) & 0x3FFFFFF8);
    }

    else
    {
      *v3 = *a2;
    }
  }

  return this;
}

uint64_t llvm::APInt::operator++(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 > 0x40)
  {
    v2 = *this;
    v3 = **this;
    **this = v3 + 1;
    if (v3 == -1)
    {
      v4 = (v1 + 63) >> 6;
      v5 = v2 + 1;
      v6 = v4 - 1;
      do
      {
        if (!v6)
        {
          break;
        }

        --v6;
      }

      while (__CFADD__((*v5++)++, 1));
    }
  }

  else
  {
    ++*this;
  }

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::operator+=(uint64_t this, void **a2)
{
  v2 = *(this + 8);
  if (v2 > 0x40)
  {
    v3 = 0;
    v4 = *this;
    v5 = *a2;
    v6 = (v2 + 63) >> 6;
    do
    {
      v7 = *v5++;
      v8 = v7 + *v4;
      v9 = __CFADD__(v7, *v4);
      v10 = (v8 + 1) <= *v4;
      if (v3)
      {
        ++v8;
        v3 = v10;
      }

      else
      {
        v3 = v9;
      }

      *v4++ = v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    *this += *a2;
  }

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::operator+=(uint64_t this, unint64_t a2)
{
  v2 = *(this + 8);
  if (v2 > 0x40)
  {
    v3 = *this;
    v4 = ((v2 + 63) >> 6) - 1;
    do
    {
      v5 = *v3 + a2;
      *v3++ = v5;
      v6 = v5 >= a2 || v4-- == 0;
      a2 = 1;
    }

    while (!v6);
  }

  else
  {
    *this += a2;
  }

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::operator-=(uint64_t this, void **a2)
{
  v2 = *(this + 8);
  if (v2 > 0x40)
  {
    v3 = 0;
    v4 = *this;
    v5 = *a2;
    v6 = (v2 + 63) >> 6;
    do
    {
      v7 = *v5++;
      v8 = *v4 - v7;
      v9 = *v4 < v7;
      v10 = *v4 + ~v7;
      if (v3)
      {
        v3 = v10 >= *v4;
      }

      else
      {
        v10 = v8;
        v3 = v9;
      }

      *v4++ = v10;
      --v6;
    }

    while (v6);
  }

  else
  {
    *this -= *a2;
  }

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::operator-=(uint64_t this, unint64_t a2)
{
  v2 = *(this + 8);
  if (v2 > 0x40)
  {
    v3 = *this;
    v4 = ((v2 + 63) >> 6) - 1;
    do
    {
      v5 = *v3 >= a2 || v4-- == 0;
      *v3++ -= a2;
      a2 = 1;
    }

    while (!v5);
  }

  else
  {
    *this -= a2;
  }

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::operator*@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  if (v4 > 0x40)
  {
    operator new[]();
  }

  v5 = *a2 * *a1;
  *(a3 + 8) = v4;
  *a3 = v5;

  return llvm::APInt::clearUnusedBits(a3);
}

uint64_t llvm::APInt::tcMultiply(llvm::APInt *this, unint64_t *a2, const unint64_t **a3, const unint64_t *a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = 0;
  LODWORD(v8) = 0;
  v9 = a4;
  do
  {
    v10 = *a3++;
    v11 = v7 - 1;
    v8 = llvm::APInt::tcMultiplyPart(this, a2, v10, 0, v9, v9 + v7, v7 != 0) | v8;
    this = (this + 8);
    v7 = v11;
  }

  while (v9 + v11);
  return v8;
}

uint64_t llvm::APInt::operator*=(uint64_t a1, void *a2)
{
  llvm::APInt::operator*(a1, a2, &v4);
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    MEMORY[0x25F891010](*a1, 0x1000C8000313F17);
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return a1;
}

uint64_t llvm::APInt::tcMultiplyPart(llvm::APInt *this, unint64_t *a2, const unint64_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a5 >= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (v7)
  {
    v8 = a2;
    v9 = this;
    do
    {
      v10 = 0;
      v12 = *v8++;
      v11 = v12;
      if (a3 && v11)
      {
        v13 = v11;
        v14 = v11 * a3;
        v15 = HIDWORD(v11);
        v16 = v13 * HIDWORD(a3);
        v17 = HIDWORD(v16) + v15 * HIDWORD(a3);
        v18 = v15 * a3;
        v19 = ((v16 + v18) << 32) + v13 * a3;
        v20 = v19 + a4;
        v10 = (__PAIR128__((__PAIR128__(v17, v14) + __PAIR128__(HIDWORD(v18), v16 << 32)) >> 64, v19) + __PAIR128__(v19 < v14 + (v16 << 32), a4)) >> 64;
        a4 = v20;
      }

      if (a7)
      {
        if (__CFADD__(a4, *v9))
        {
          ++v10;
        }

        a4 += *v9;
      }

      *v9 = a4;
      v9 = (v9 + 8);
      a4 = v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = a4;
  }

  if (a5 < a6)
  {
    v21 = 0;
    *(this + a5) = v10;
    return v21;
  }

  if (v10)
  {
    return 1;
  }

  v21 = 0;
  if (a3 && a6 < a5)
  {
    v23 = &a2[a6];
    v24 = a5 - a6;
    while (!*v23++)
    {
      if (!--v24)
      {
        return 0;
      }
    }

    return 1;
  }

  return v21;
}

uint64_t llvm::APInt::compare(llvm::APInt *this, const llvm::APInt *a2)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v4 = ((v2 + 63) >> 3) & 0x3FFFFFF8;
    do
    {
      if (!v4)
      {
        return 0;
      }

      v5 = *(*this - 8 + v4);
      v6 = *(*a2 - 8 + v4);
      v4 -= 8;
    }

    while (v5 == v6);
    if (v5 > v6)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (*this < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *this > *a2;
  }
}

uint64_t llvm::APInt::compareSigned(llvm::APInt *this, const llvm::APInt *a2)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v10 = *(*this + 8 * ((v2 - 1) >> 6)) & (1 << (v2 - 1));
    v11 = *(a2 + 2);
    v12 = v11 - 1;
    if (v11 >= 0x41)
    {
      v13 = (*a2 + 8 * (v12 >> 6));
    }

    else
    {
      v13 = a2;
    }

    if ((v10 != 0) == ((*v13 >> v12) & 1))
    {
      v14 = ((v2 + 63) >> 3) & 0x3FFFFFF8;
      do
      {
        if (!v14)
        {
          return 0;
        }

        v15 = *(*this - 8 + v14);
        v16 = *(*a2 - 8 + v14);
        v14 -= 8;
      }

      while (v15 == v16);
      if (v15 > v16)
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v10)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v3 = -v2;
    v4 = v2 == 0;
    if (v2)
    {
      v5 = (*this << -v2) >> -v2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (*a2 << v3) >> v3;
    if (v4)
    {
      v6 = 0;
    }

    v7 = v5 < v6;
    v8 = v5 > v6;
    if (v7)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v8;
    }
  }
}

void *llvm::APInt::setBitsSlowCase(void *this, unsigned int a2, unsigned int a3)
{
  v3 = a2 >> 6;
  v4 = a3 >> 6;
  v5 = -1 << a2;
  if ((a3 & 0x3F) != 0)
  {
    v6 = 0xFFFFFFFFFFFFFFFFLL >> -(a3 & 0x3F);
    if (v4 == v3)
    {
      v5 &= v6;
    }

    else
    {
      *(*this + 8 * v4) |= v6;
    }
  }

  *(*this + 8 * v3) |= v5;
  v7 = v3 + 1;
  if (v7 < v4)
  {
    do
    {
      *(*this + 8 * v7++) = -1;
    }

    while (v4 != v7);
  }

  return this;
}

uint64_t llvm::APInt::flipAllBitsSlowCase(uint64_t this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = *this;
    v3 = (v1 + 63) >> 6;
    do
    {
      *v2 = ~*v2;
      ++v2;
      --v3;
    }

    while (v3);
  }

  return llvm::APInt::clearUnusedBits(this);
}

const llvm::APInt *llvm::APInt::zext@<X0>(const llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 > 0x40)
  {
    if (*(this + 2) != a2)
    {
      operator new[]();
    }

    return llvm::APInt::APInt(a3, this);
  }

  else
  {
    v4 = *this;
    *(a3 + 8) = a2;
    *a3 = v4;
  }

  return this;
}

llvm::APInt *llvm::APInt::operator=(llvm::APInt *this, const llvm::APInt *a2)
{
  if (*(this + 2) > 0x40u || *(a2 + 2) > 0x40u)
  {
    llvm::APInt::assignSlowCase(this, a2);
  }

  else
  {
    *this = *a2;
    *(this + 2) = *(a2 + 2);
  }

  return this;
}

uint64_t llvm::APInt::extractBits@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, llvm::APInt *a4@<X8>)
{
  v5 = *(this + 2);
  if (v5 <= 0x40)
  {
    v6 = *this >> a3;
LABEL_5:
    *(a4 + 2) = a2;
    if (a2 > 0x40)
    {
      operator new[]();
    }

    *a4 = v6;

    return llvm::APInt::clearUnusedBits(a4);
  }

  v7 = a3 & 0x3F;
  v8 = a3 >> 6;
  if ((a2 + a3 - 1) >> 6 == a3 >> 6)
  {
    v6 = *(*this + 8 * v8) >> v7;
    goto LABEL_5;
  }

  if ((a3 & 0x3F) != 0)
  {
    v19 = a2;
    if (a2 >= 0x41)
    {
      operator new[]();
    }

    v18 = 0;
    v10 = &v18;
    if (a2)
    {
      v12 = (v5 + 63) >> 6;
      v13 = (*this + 8 * v8 + 8);
      v14 = v8 + 1;
      v15 = (a2 + 63) >> 6;
      do
      {
        if (v14 >= v12)
        {
          v16 = 0;
        }

        else
        {
          v16 = *v13;
        }

        *v10++ = (v16 << (64 - v7)) | (*(v13++ - 1) >> v7);
        ++v14;
        --v15;
      }

      while (v15);
      v17 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    }

    else
    {
      v17 = 0;
    }

    v18 &= v17;
    result = llvm::APInt::APInt(a4, &v18);
    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        return MEMORY[0x25F891010](v18, 0x1000C8000313F17);
      }
    }
  }

  else
  {
    v11 = (*this + 8 * v8);
    *(a4 + 2) = a2;

    return llvm::APInt::initFromArray(a4, v11);
  }

  return result;
}

uint64_t llvm::APInt::APInt(uint64_t this, const llvm::APInt *a2)
{
  v2 = *(a2 + 2);
  *(this + 8) = v2;
  if (v2 > 0x40)
  {
    operator new[]();
  }

  *this = *a2;
  return this;
}

unint64_t llvm::hash_value(llvm::hashing::detail::hash_state **this, const llvm::APInt *a2, uint64_t a3, unint64_t *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = (this + 1);
  v4 = *(this + 2);
  if (v4 > 0x40)
  {
    v8 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long>(*this, *this + (((v4 + 63) >> 3) & 0x3FFFFFF8), a3, a4);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v16 = 0;
    v17 = 0xFF51AFD7ED558CCDLL;
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::hash_code>(&v9, 0, &v9, &v13, v5, &v8);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v16 = 0;
    v17 = 0xFF51AFD7ED558CCDLL;
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,unsigned long long>(&v9, 0, &v9, &v13, v5, this);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::APInt::operator==(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2 > 0x40)
  {
    return memcmp(*a1, *a2, ((v2 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  else
  {
    return *a1 == *a2;
  }
}

void *llvm::APInt::getLowBitsSet@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = this;
  if (this >= 0x41)
  {
    operator new[]();
  }

  *a3 = 0;

  return llvm::APInt::setBits(a3, 0, a2);
}

uint64_t llvm::APInt::countLeadingZerosSlowCase(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = 0;
    v3 = ((v1 + 63) >> 6) + 1;
    while (1)
    {
      v4 = *(*this + 8 * (v3 - 2));
      if (v4)
      {
        break;
      }

      v2 += 64;
      if (--v3 <= 1)
      {
        goto LABEL_8;
      }
    }

    v2 += __clz(v4);
  }

  else
  {
    v2 = 0;
  }

LABEL_8:
  if ((v1 & 0x3F) != 0)
  {
    v5 = v1 | 0xFFFFFFC0;
  }

  else
  {
    v5 = 0;
  }

  return (v2 + v5);
}

unint64_t llvm::APInt::countLeadingOnesSlowCase(llvm::APInt *this)
{
  v1 = *(this + 2);
  if ((v1 & 0x3F) != 0)
  {
    v2 = *(this + 2) & 0x3F;
  }

  else
  {
    v2 = 64;
  }

  if ((v1 & 0x3F) != 0)
  {
    v3 = 64 - (v1 & 0x3F);
  }

  else
  {
    v3 = 0;
  }

  v4 = *this;
  result = __clz(~(*(*this + (((v1 + 63) >> 3) & 0x3FFFFFF8) - 8) << v3));
  if (v1 >= 0x41 && v2 == result)
  {
    v7 = ((v1 + 63) >> 6) - 1;
    LODWORD(result) = v2;
    while (1)
    {
      v8 = *(v4 + 8 * --v7);
      if (v8 != -1)
      {
        break;
      }

      result = (result + 64);
      if (v7 <= 0)
      {
        return result;
      }
    }

    return __clz(~v8) + result;
  }

  return result;
}

uint64_t llvm::APInt::countTrailingZerosSlowCase(unint64_t **this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = 0;
    v3 = (v1 + 63) >> 6;
    v4 = *this;
    v5 = v3 << 6;
    while (!*v4)
    {
      ++v4;
      v2 -= 64;
      if (!--v3)
      {
        goto LABEL_8;
      }
    }

    v5 = __clz(__rbit64(*v4)) - v2;
  }

  else
  {
    v5 = 0;
  }

LABEL_8:
  if (v1 >= v5)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t llvm::APInt::countTrailingOnesSlowCase(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (v1 + 63) >> 6;
  v4 = *this;
  result = (v3 << 6);
  while (*v4 == -1)
  {
    ++v4;
    v2 -= 64;
    if (!--v3)
    {
      return result;
    }
  }

  return __clz(__rbit64(~*v4)) - v2;
}

void llvm::APInt::lshrInPlace(llvm::APInt **this, unsigned int a2)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    llvm::APInt::tcShiftRight(*this, ((v2 + 63) >> 6), a2);
  }

  else if (v2 == a2)
  {
    *this = 0;
  }

  else
  {
    *this = (*this >> a2);
  }
}

uint64_t llvm::APInt::trunc@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = this;
  v5 = *(this + 2);
  if (a2 > 0x40)
  {
    if (v5 != a2)
    {
      operator new[]();
    }

    return llvm::APInt::APInt(a3, this);
  }

  else
  {
    if (v5 >= 0x41)
    {
      v3 = *this;
    }

    v6 = *v3;
    *(a3 + 8) = a2;
    *a3 = v6;

    return llvm::APInt::clearUnusedBits(a3);
  }
}

uint64_t llvm::APInt::getSignedMinValue@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = this;
  if (this > 0x40)
  {
    operator new[]();
  }

  *a2 = 0;
  *a2 |= 1 << (this - 1);
  return this;
}

uint64_t llvm::APInt::sext@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 > 0x40)
  {
    if (*(this + 2) != a2)
    {
      operator new[]();
    }

    return llvm::APInt::APInt(a3, this);
  }

  else
  {
    v4 = *(this + 2);
    v5 = (*this << -v4) >> -v4;
    if (!v4)
    {
      v5 = 0;
    }

    *(a3 + 8) = a2;
    *a3 = v5;

    return llvm::APInt::clearUnusedBits(a3);
  }
}

const llvm::APInt *llvm::APInt::zextOrTrunc@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 2);
  if (v3 < a2)
  {
    return llvm::APInt::zext(this, a2, a3);
  }

  if (v3 > a2)
  {
    return llvm::APInt::trunc(this, a2, a3);
  }

  return llvm::APInt::APInt(a3, this);
}

uint64_t llvm::APInt::sextOrTrunc@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 2);
  if (v3 < a2)
  {
    return llvm::APInt::sext(this, a2, a3);
  }

  if (v3 > a2)
  {
    return llvm::APInt::trunc(this, a2, a3);
  }

  return llvm::APInt::APInt(a3, this);
}

uint64_t llvm::APInt::ashrInPlace(uint64_t this, unsigned int a2)
{
  v2 = *(this + 8);
  if (v2 > 0x40)
  {
    return llvm::APInt::ashrSlowCase(this, a2);
  }

  v3 = (*this << -v2) >> -v2;
  if (!v2)
  {
    v3 = 0;
  }

  if (v2 == a2)
  {
    v4 = 63;
  }

  else
  {
    v4 = a2;
  }

  *this = v3 >> v4;
  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::ashrSlowCase(uint64_t this, unsigned int a2)
{
  if (a2)
  {
    v2 = this;
    v3 = *(this + 8);
    v4 = v3 - 1;
    v5 = this;
    if (v3 >= 0x41)
    {
      v5 = (*this + 8 * (v4 >> 6));
    }

    v6 = *v5 & (1 << v4);
    v7 = a2 >> 6;
    v8 = (v3 + 63) >> 6;
    v9 = v8 - (a2 >> 6);
    if (v8 != a2 >> 6)
    {
      v10 = v8 - 1;
      *(*this + 8 * v10) = (*(*this + 8 * v10) << -v3) >> -v3;
      v11 = a2 & 0x3F;
      if ((a2 & 0x3F) != 0)
      {
        v12 = v9 - 1;
        if (v9 == 1)
        {
          v12 = 0;
        }

        else
        {
          v13 = 0;
          v14 = a2 >> 6;
          do
          {
            v15 = *(*this + 8 * v14++) >> v11;
            *(*this + v13) = (*(*this + 8 * v14) << (64 - v11)) | v15;
            v13 += 8;
          }

          while (8 * (v9 - 1) != v13);
        }

        *(*this + 8 * v12) = *(*this + 8 * v10) >> v11;
      }

      else
      {
        memmove(*this, (*this + 8 * v7), 8 * v9);
      }
    }

    if (v6)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    memset((*v2 + 8 * v9), v16, 8 * v7);

    return llvm::APInt::clearUnusedBits(v2);
  }

  return this;
}

void llvm::APInt::tcShiftRight(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 >> 6 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = a3 >> 6;
    }

    v5 = a2 - v4;
    v6 = a3 & 0x3F;
    if ((a3 & 0x3F) != 0)
    {
      if (a3 >> 6 < a2)
      {
        v7 = *(this + v4) >> v6;
        *this = v7;
        if (v5 != 1)
        {
          v8 = v4 + 1;
          v9 = (this + 8);
          v10 = 1 - v5;
          do
          {
            *(v9 - 1) = (*(this + v8) << (64 - v6)) | v7;
            v7 = *(this + v8) >> v6;
            *v9++ = v7;
            ++v8;
          }

          while (!__CFADD__(v10++, 1));
        }
      }
    }

    else
    {
      memmove(this, this + 8 * v4, (8 * v5));
    }

    bzero(this + 8 * v5, 8 * v4);
  }
}

void llvm::APInt::tcShiftLeft(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 >> 6 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = a3 >> 6;
    }

    v5 = a3 & 0x3F;
    if ((a3 & 0x3F) != 0)
    {
      if (a3 >> 6 < a2)
      {
        v6 = a2 - 1;
        v7 = *(this + v6 - v4) << v5;
        v8 = this + 8 * v6;
        *v8 = v7;
        if (v6 > v4)
        {
          v9 = (this + 8 * a2 + -8 * v4 - 16);
          v10 = a2 - 2 - v4;
          v11 = (this + 8 * (a2 - 2));
          do
          {
            v12 = *v9--;
            *v8 = (v12 >> (64 - v5)) | v7;
            --v6;
            v7 = *(this + v10) << v5;
            v8 = this + 8 * v6;
            *v11-- = v7;
            --v10;
          }

          while (v4 < v6);
        }
      }
    }

    else
    {
      memmove(this + 8 * v4, this, 8 * (a2 - v4));
    }

    bzero(this, 8 * v4);
  }
}

llvm::APInt *llvm::APInt::udiv@<X0>(llvm::APInt *this@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  v6 = *(this + 2);
  if (v6 <= 0x40)
  {
    v7 = *this / *a2;
    *(a3 + 8) = v6;
    *a3 = v7;
    return this;
  }

  v8 = llvm::APInt::countLeadingZerosSlowCase(this);
  v9 = *(a2 + 2);
  if (v9 > 0x40)
  {
    v10 = llvm::APInt::countLeadingZerosSlowCase(a2);
  }

  else
  {
    v10 = v9 + __clz(*a2) - 64;
  }

  if (v6 == v8)
  {
    *(a3 + 8) = v6;
    goto LABEL_17;
  }

  v11 = v9 - v10;
  if (v11 != 1)
  {
    v12 = ((v6 - v8) + 63) >> 6;
    if (v12 >= (v11 + 63) >> 6 && (llvm::APInt::compare(v4, a2) & 0x80000000) == 0)
    {
      if (llvm::APInt::operator==(v4, a2))
      {
        *(a3 + 8) = v6;
        operator new[]();
      }

      if (v12 == 1)
      {
        v13 = **v4;
        v14 = **a2;
        *(a3 + 8) = v6;
        operator new[]();
      }

      *(a3 + 8) = v6;
      operator new[]();
    }

    *(a3 + 8) = v6;
LABEL_17:
    operator new[]();
  }

  return llvm::APInt::APInt(a3, v4);
}

void llvm::APInt::divide(llvm::APInt *this, const unint64_t *a2, uint64_t *a3, const unint64_t *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7)
{
  v7 = a6;
  v82 = *MEMORY[0x277D85DE8];
  v11 = (2 * a4);
  v12 = (2 * a2);
  v79 = a2;
  v80 = a4;
  if (a6)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  v78 = v12 - 2 * a4;
  v14 = (v13 * v11 + 2 * v78) | 1;
  v15 = (2 * (a2 & 0x3FFFFFFF)) | 1;
  v16 = 4 * v15;
  if (v14 > 0x80)
  {
    operator new[]();
  }

  v17 = &v81[v15];
  v18 = v11 + v15;
  v19 = &v81[v18];
  v20 = &v81[(v18 + v12)];
  if (a6)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  bzero(v81, v16);
  if (v79)
  {
    v22 = 0;
    do
    {
      v23 = *this;
      this = (this + 8);
      v81[v22] = v23;
      v81[(v22 + 1)] = HIDWORD(v23);
      v22 += 2;
    }

    while (2 * v79 != v22);
  }

  v81[v12] = 0;
  bzero(v17, 4 * v11);
  if (v80)
  {
    v24 = 0;
    do
    {
      v25 = *a3++;
      v17[v24] = v25;
      v17[(v24 + 1)] = HIDWORD(v25);
      v24 += 2;
    }

    while (v11 != v24);
  }

  bzero(v19, 4 * v12);
  if (v7)
  {
    bzero(v21, 4 * v11);
  }

  v26 = v80;
  if (v80)
  {
    while (!v17[v11 - 1])
    {
      if (!--v11)
      {
        goto LABEL_23;
      }
    }

    LODWORD(v12) = v12 - v11;
  }

  else
  {
    LODWORD(v11) = 0;
    LODWORD(v12) = v78;
  }

LABEL_23:
  if (v11 + v12)
  {
    v27 = (v11 + v12);
    while (!v81[v27 - 1])
    {
      LODWORD(v12) = v12 - 1;
      if (!(--v27 * 4))
      {
        LODWORD(v12) = -v11;
        break;
      }
    }
  }

  v28 = (v11 - 1);
  if (v11 != 1)
  {
    v36 = __clz(v17[v28]);
    v37 = v12 + v11;
    if (!v36)
    {
      v41 = 0;
      goto LABEL_53;
    }

    if (v37)
    {
      v38 = 0;
      v39 = v81;
      v40 = (v12 + v11);
      do
      {
        v41 = *v39 >> (32 - v36);
        *v39 = (*v39 << v36) | v38;
        ++v39;
        v38 = v41;
        --v40;
      }

      while (v40);
      if (!v11)
      {
LABEL_53:
        v81[v37] = v41;
        v46 = v11 - 2;
        v47 = v12;
        do
        {
          v48 = (v11 + v47);
          v49 = v81[(v48 - 1)] | (v81[v48] << 32);
          v50 = v17[v28];
          v51 = v49 / v50;
          v52 = v49 % v50;
          if (v49 / v50 == 0x100000000 || (v53 = v49 / v50, v51 * v17[v46] > (v81[(v48 - 2)] | (v52 << 32))))
          {
            v53 = v51 - 1;
            v54 = v52 + v50;
            if (!HIDWORD(v54) && (v51 == 0x100000001 || v53 * v17[v46] > (v81[(v48 - 2)] | (v54 << 32))))
            {
              v53 = v51 - 2;
            }
          }

          if (v11)
          {
            v55 = 0;
            v56 = v17;
            v57 = v47;
            v58 = v11;
            do
            {
              v59 = *v56++;
              v60 = v53 * v59;
              v61 = v81[v57] - (v55 + v60);
              v81[v57] = v61;
              v62 = HIDWORD(v60) - HIDWORD(v61);
              v55 = v62;
              ++v57;
              --v58;
            }

            while (v58);
            v63 = v81[v48];
            v81[v48] = v63 - v62;
            v19[v47] = v53;
            if (v62 > v63)
            {
              LOBYTE(v64) = 0;
              v19[v47] = v53 - 1;
              v65 = v47;
              v66 = v17;
              v67 = v11;
              do
              {
                v69 = *v66++;
                v68 = v69;
                v70 = v81[v65];
                if (v69 >= v70)
                {
                  v71 = v81[v65];
                }

                else
                {
                  v71 = v68;
                }

                v72 = v68 + (v64 & 1) + v70;
                v81[v65] = v72;
                if (v72 >= v71)
                {
                  v64 = v64 & (v72 == v71);
                }

                else
                {
                  v64 = 1;
                }

                ++v65;
                --v67;
              }

              while (v67);
              v81[v48] += v64;
            }
          }

          else
          {
            v19[v47] = v53;
          }

          v34 = v47-- <= 0;
        }

        while (!v34);
        if (v21)
        {
          if (v36)
          {
            if ((v28 & 0x80000000) == 0)
            {
              v73 = 0;
              do
              {
                v74 = v81[v28];
                v21[v28] = (v74 >> v36) | v73;
                v73 = v74 << (32 - v36);
                v34 = v28-- <= 0;
              }

              while (!v34);
            }
          }

          else if ((v28 & 0x80000000) == 0)
          {
            do
            {
              v21[v28] = v81[v28];
              v34 = v28-- <= 0;
            }

            while (!v34);
          }
        }

        goto LABEL_86;
      }
    }

    else
    {
      v41 = 0;
      if (!v11)
      {
        goto LABEL_53;
      }
    }

    v42 = 0;
    v43 = v11;
    v44 = v17;
    do
    {
      v45 = *v44 >> (32 - v36);
      *v44 = (*v44 << v36) | v42;
      ++v44;
      v42 = v45;
      --v43;
    }

    while (v43);
    goto LABEL_53;
  }

  v29 = 0;
  if ((v12 & 0x80000000) == 0)
  {
    v30 = *v17;
    v31 = v12;
    do
    {
      v32 = v29;
      v29 = v81[v31];
      v33 = v29 | (v32 << 32);
      if (v33)
      {
        if (v33 >= v30)
        {
          if (v33 == v30)
          {
            v29 = 0;
            v19[v31] = 1;
          }

          else
          {
            v35 = v33 / v30;
            v19[v31] = v35;
            v29 = (v29 - v30 * v35);
          }

          goto LABEL_38;
        }
      }

      else
      {
        v29 = 0;
      }

      v19[v31] = 0;
LABEL_38:
      v34 = v31-- <= 0;
    }

    while (!v34);
  }

  if (v21)
  {
    *v21 = v29;
  }

LABEL_86:
  if (v79 && a5)
  {
    v75 = 0;
    do
    {
      *a5++ = v19[v75] | (v19[(v75 + 1)] << 32);
      v75 += 2;
    }

    while (2 * v79 != v75);
  }

  if (v26 && v7)
  {
    v76 = 0;
    do
    {
      *v7++ = v21[v76] | (v21[(v76 + 1)] << 32);
      v76 += 2;
    }

    while (2 * v26 != v76);
  }

  v77 = *MEMORY[0x277D85DE8];
}

llvm::APInt *llvm::APInt::sdiv@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 2);
  v7 = v6 - 1;
  v8 = this;
  if (v6 >= 0x41)
  {
    v8 = (*this + 8 * (v7 >> 6));
  }

  v9 = *v8;
  v10 = *(a2 + 2);
  v11 = v10 - 1;
  if (v10 >= 0x41)
  {
    v12 = (*a2 + 8 * ((v10 - 1) >> 6));
  }

  else
  {
    v12 = a2;
  }

  v13 = (1 << v11) & *v12;
  if ((v9 >> v7))
  {
    if (v13)
    {
      v14 = llvm::APInt::APInt(&v32, this);
      llvm::APInt::flipAllBits(v14);
      llvm::APInt::operator++(&v32);
      v35 = v33;
      v34 = v32;
      v33 = 0;
      llvm::APInt::APInt(&v28, a2);
      llvm::APInt::flipAllBits(&v28);
      llvm::APInt::operator++(&v28);
      v15 = v29;
      v31 = v29;
      v16 = v28;
      v30 = v28;
      v29 = 0;
      result = llvm::APInt::udiv(&v34, &v30, a3);
      if (v15 >= 0x41 && v16)
      {
        result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
      }

      if (v29 >= 0x41)
      {
        result = v28;
        if (v28)
        {
          result = MEMORY[0x25F891010](v28, 0x1000C8000313F17);
        }
      }

      if (v35 >= 0x41)
      {
        result = v34;
        if (v34)
        {
          result = MEMORY[0x25F891010](v34, 0x1000C8000313F17);
        }
      }

      if (v33 >= 0x41)
      {
        result = v32;
        if (v32)
        {
          return MEMORY[0x25F891010]();
        }
      }
    }

    else
    {
      llvm::APInt::APInt(&v24, this);
      llvm::APInt::flipAllBits(&v24);
      llvm::APInt::operator++(&v24);
      v35 = v25;
      v34 = v24;
      v25 = 0;
      llvm::APInt::udiv(&v34, a2, &v26);
      llvm::APInt::flipAllBits(&v26);
      result = llvm::APInt::operator++(&v26);
      *(a3 + 8) = v27;
      *a3 = v26;
      v27 = 0;
      if (v35 >= 0x41)
      {
        result = v34;
        if (v34)
        {
          result = MEMORY[0x25F891010](v34, 0x1000C8000313F17);
        }
      }

      if (v25 >= 0x41)
      {
        result = v24;
        if (v24)
        {
          return MEMORY[0x25F891010]();
        }
      }
    }
  }

  else if (v13)
  {
    llvm::APInt::APInt(&v20, a2);
    llvm::APInt::flipAllBits(&v20);
    llvm::APInt::operator++(&v20);
    v18 = v21;
    v35 = v21;
    v19 = v20;
    v34 = v20;
    v21 = 0;
    llvm::APInt::udiv(this, &v34, &v22);
    llvm::APInt::flipAllBits(&v22);
    result = llvm::APInt::operator++(&v22);
    *(a3 + 8) = v23;
    *a3 = v22;
    v23 = 0;
    if (v18 >= 0x41 && v19)
    {
      result = MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }

    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        return MEMORY[0x25F891010]();
      }
    }
  }

  else
  {

    return llvm::APInt::udiv(this, a2, a3);
  }

  return result;
}

llvm::APInt *llvm::APInt::urem@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  v6 = *(this + 2);
  if (v6 <= 0x40)
  {
    v7 = *this % *a2;
    *(a3 + 8) = v6;
    *a3 = v7;
    return this;
  }

  v8 = llvm::APInt::countLeadingZerosSlowCase(this);
  v9 = *(a2 + 2);
  if (v9 > 0x40)
  {
    v10 = llvm::APInt::countLeadingZerosSlowCase(a2);
  }

  else
  {
    v10 = v9 + __clz(*a2) - 64;
  }

  if (v6 == v8 || (v11 = v9 - v10, v11 == 1))
  {
    *(a3 + 8) = v6;
    goto LABEL_9;
  }

  v12 = ((v6 - v8) + 63) >> 6;
  if (v12 >= (v11 + 63) >> 6 && (llvm::APInt::compare(v4, a2) & 0x80000000) == 0)
  {
    if (!llvm::APInt::operator==(v4, a2))
    {
      if (v12 == 1)
      {
        v13 = **v4 % **a2;
        *(a3 + 8) = v6;
        operator new[]();
      }

      *(a3 + 8) = v6;
      operator new[]();
    }

    *(a3 + 8) = v6;
LABEL_9:
    operator new[]();
  }

  return llvm::APInt::APInt(a3, v4);
}

llvm::APInt *llvm::APInt::srem@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 2);
  v7 = v6 - 1;
  v8 = this;
  if (v6 >= 0x41)
  {
    v8 = (*this + 8 * (v7 >> 6));
  }

  v9 = *v8;
  v10 = *(a2 + 2);
  v11 = v10 - 1;
  if (v10 >= 0x41)
  {
    v12 = (*a2 + 8 * ((v10 - 1) >> 6));
  }

  else
  {
    v12 = a2;
  }

  v13 = (1 << v11) & *v12;
  if ((v9 >> v7))
  {
    if (v13)
    {
      llvm::APInt::APInt(&v29, this);
      llvm::APInt::flipAllBits(&v29);
      llvm::APInt::operator++(&v29);
      v32 = v30;
      v31 = v29;
      v30 = 0;
      llvm::APInt::APInt(&v25, a2);
      llvm::APInt::flipAllBits(&v25);
      llvm::APInt::operator++(&v25);
      v14 = v26;
      v28 = v26;
      v15 = v25;
      v27 = v25;
      v26 = 0;
      llvm::APInt::urem(&v31, &v27, &v33);
      llvm::APInt::flipAllBits(&v33);
      result = llvm::APInt::operator++(&v33);
      *(a3 + 8) = v34;
      *a3 = v33;
      v34 = 0;
      if (v14 >= 0x41 && v15)
      {
        result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
      }

      if (v26 >= 0x41)
      {
        result = v25;
        if (v25)
        {
          result = MEMORY[0x25F891010](v25, 0x1000C8000313F17);
        }
      }

      if (v32 >= 0x41)
      {
        result = v31;
        if (v31)
        {
          result = MEMORY[0x25F891010](v31, 0x1000C8000313F17);
        }
      }

      if (v30 >= 0x41)
      {
        result = v29;
        if (v29)
        {
          return MEMORY[0x25F891010]();
        }
      }
    }

    else
    {
      llvm::APInt::APInt(&v21, this);
      llvm::APInt::flipAllBits(&v21);
      llvm::APInt::operator++(&v21);
      v32 = v22;
      v31 = v21;
      v22 = 0;
      llvm::APInt::urem(&v31, a2, &v23);
      llvm::APInt::flipAllBits(&v23);
      result = llvm::APInt::operator++(&v23);
      *(a3 + 8) = v24;
      *a3 = v23;
      v24 = 0;
      if (v32 >= 0x41)
      {
        result = v31;
        if (v31)
        {
          result = MEMORY[0x25F891010](v31, 0x1000C8000313F17);
        }
      }

      if (v22 >= 0x41)
      {
        result = v21;
        if (v21)
        {
          return MEMORY[0x25F891010]();
        }
      }
    }
  }

  else if (v13)
  {
    llvm::APInt::APInt(&v19, a2);
    llvm::APInt::flipAllBits(&v19);
    llvm::APInt::operator++(&v19);
    v17 = v20;
    v32 = v20;
    v18 = v19;
    v31 = v19;
    v20 = 0;
    result = llvm::APInt::urem(this, &v31, a3);
    if (v17 >= 0x41 && v18)
    {
      result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }

    if (v20 >= 0x41)
    {
      result = v19;
      if (v19)
      {
        return MEMORY[0x25F891010]();
      }
    }
  }

  else
  {

    return llvm::APInt::urem(this, a2, a3);
  }

  return result;
}

void llvm::APInt::udivrem(llvm::APInt *this, const llvm::APInt *a2, const llvm::APInt *a3, llvm::APInt *a4, llvm::APInt *a5)
{
  v9 = *(this + 2);
  if (v9 > 0x40)
  {
    v14 = llvm::APInt::countLeadingZerosSlowCase(this);
    v15 = *(a2 + 2);
    if (v15 > 0x40)
    {
      v16 = llvm::APInt::countLeadingZerosSlowCase(a2);
    }

    else
    {
      v16 = v15 + __clz(*a2) - 64;
    }

    if (v9 == v14)
    {
      operator new[]();
    }

    v17 = ((v9 - v14) + 63) >> 6;
    v18 = v15 - v16;
    v19 = (v18 + 63) >> 6;
    if (v18 == 1)
    {
      llvm::APInt::operator=(a3, this);
      operator new[]();
    }

    if (v17 < v19 || (llvm::APInt::compare(this, a2) & 0x80000000) != 0)
    {
      llvm::APInt::operator=(a4, this);
      operator new[]();
    }

    if (llvm::APInt::operator==(this, a2))
    {
      operator new[]();
    }

    llvm::APInt::reallocate(a3, v9);
    llvm::APInt::reallocate(a4, v9);
    v21 = *this;
    if (v17 == 1)
    {
      v22 = *v21;
      v23 = **a2;
      v24 = *v21 / v23;
      llvm::APInt::operator=(a3, v24);

      llvm::APInt::operator=(a4, v22 - v24 * v23);
    }

    else
    {
      llvm::APInt::divide(v21, v17, *a2, v19, *a3, *a4, v20);
      v25 = (v9 + 63) >> 6;
      bzero((*a3 + 8 * v17), (8 * (v25 - v17)));
      v26 = (*a4 + 8 * v19);

      bzero(v26, (8 * (v25 - v19)));
    }
  }

  else
  {
    v10 = *this;
    v11 = *a2;
    v12 = *this / *a2;
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      MEMORY[0x25F891010](*a3, 0x1000C8000313F17);
    }

    v13 = v10 - v12 * v11;
    *a3 = v12;
    *(a3 + 2) = v9;
    if (*(a4 + 2) >= 0x41u)
    {
      if (*a4)
      {
        MEMORY[0x25F891010](*a4, 0x1000C8000313F17);
      }
    }

    *a4 = v13;
    *(a4 + 2) = v9;
  }
}

llvm::APInt *llvm::APInt::operator=(llvm::APInt *this, uint64_t a2)
{
  v3 = *(this + 2);
  if (v3 > 0x40)
  {
    **this = a2;
    bzero((*this + 8), (((v3 + 63) >> 3) - 8) & 0xFFFFFFF8);
    return this;
  }

  else
  {
    *this = a2;

    return llvm::APInt::clearUnusedBits(this);
  }
}

uint64_t llvm::APInt::sadd_ov@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = this;
  llvm::APInt::APInt(&v23, this);
  result = llvm::APInt::operator+=(&v23, a2);
  v9 = v24;
  *(a4 + 8) = v24;
  v10 = v23;
  *a4 = v23;
  v24 = 0;
  v11 = *(v6 + 2);
  v12 = v11 - 1;
  v13 = v6;
  if (v11 >= 0x41)
  {
    v13 = (*v6 + 8 * (v12 >> 6));
  }

  v14 = (*v13 & (1 << v12)) == 0;
  v15 = *(a2 + 2);
  v16 = v15 - 1;
  if (v15 >= 0x41)
  {
    v17 = (*a2 + 8 * ((v15 - 1) >> 6));
  }

  else
  {
    v17 = a2;
  }

  if ((v14 ^ (((*v17 >> v16) & 1) == 0)))
  {
    v18 = 0;
  }

  else
  {
    v19 = v9 - 1;
    v20 = (v10 + 8 * ((v9 - 1) >> 6));
    if (v9 >= 0x41)
    {
      v21 = v20;
    }

    else
    {
      v21 = a4;
    }

    v22 = *v21 & (1 << v19);
    if (v11 >= 0x41)
    {
      v6 = (*v6 + 8 * (v12 >> 6));
    }

    v18 = (v22 == 0) ^ ((*v6 & (1 << v12)) == 0);
  }

  *a3 = v18;
  return result;
}

uint64_t llvm::APInt::uadd_ov@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, llvm::APInt *a4@<X8>)
{
  llvm::APInt::APInt(&v8, this);
  llvm::APInt::operator+=(&v8, a2);
  *(a4 + 2) = v9;
  *a4 = v8;
  v9 = 0;
  result = llvm::APInt::compare(a4, a2);
  *a3 = result < 0;
  return result;
}

uint64_t llvm::APInt::ssub_ov@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = this;
  llvm::APInt::APInt(&v23, this);
  result = llvm::APInt::operator-=(&v23, a2);
  v9 = v24;
  *(a4 + 8) = v24;
  v10 = v23;
  *a4 = v23;
  v24 = 0;
  v11 = *(v6 + 2);
  v12 = v11 - 1;
  v13 = v6;
  if (v11 >= 0x41)
  {
    v13 = (*v6 + 8 * (v12 >> 6));
  }

  v14 = (*v13 & (1 << v12)) == 0;
  v15 = *(a2 + 2);
  v16 = v15 - 1;
  if (v15 >= 0x41)
  {
    v17 = (*a2 + 8 * ((v15 - 1) >> 6));
  }

  else
  {
    v17 = a2;
  }

  if (v14 == (((*v17 >> v16) & 1) == 0))
  {
    v22 = 0;
  }

  else
  {
    v18 = v9 - 1;
    v19 = (v10 + 8 * ((v9 - 1) >> 6));
    if (v9 >= 0x41)
    {
      v20 = v19;
    }

    else
    {
      v20 = a4;
    }

    v21 = *v20 & (1 << v18);
    if (v11 >= 0x41)
    {
      v6 = (*v6 + 8 * (v12 >> 6));
    }

    v22 = (v21 == 0) ^ ((*v6 & (1 << v12)) == 0);
  }

  *a3 = v22;
  return result;
}

uint64_t llvm::APInt::usub_ov@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, llvm::APInt *a4@<X8>)
{
  llvm::APInt::APInt(&v9, this);
  llvm::APInt::operator-=(&v9, a2);
  *(a4 + 2) = v10;
  *a4 = v9;
  v10 = 0;
  result = llvm::APInt::compare(a4, this);
  *a3 = result > 0;
  return result;
}

llvm::APInt *llvm::APInt::sdiv_ov@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  isMinSignedValue = llvm::APInt::isMinSignedValue(this);
  if (isMinSignedValue)
  {
    LOBYTE(isMinSignedValue) = llvm::APInt::isAllOnes(a2);
  }

  *a3 = isMinSignedValue;

  return llvm::APInt::sdiv(this, a2, a4);
}

BOOL llvm::APInt::isMinSignedValue(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (v1 <= 0x40)
  {
    return *this == 1 << (v1 - 1);
  }

  if ((*(*this + 8 * ((v1 - 1) >> 6)) >> (v1 - 1)))
  {
    return llvm::APInt::countTrailingZerosSlowCase(this) == v1 - 1;
  }

  return 0;
}

BOOL llvm::APInt::isAllOnes(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 1;
  }

  if (v1 > 0x40)
  {
    return llvm::APInt::countTrailingOnesSlowCase(this) == v1;
  }

  else
  {
    return *this == 0xFFFFFFFFFFFFFFFFLL >> -v1;
  }
}

uint64_t llvm::APInt::smul_ov@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, llvm::APInt *a4@<X8>)
{
  result = llvm::APInt::operator*(this, a2, a4);
  v9 = *(a2 + 2);
  v10 = a2;
  if (v9 >= 0x41)
  {
    result = llvm::APInt::countLeadingZerosSlowCase(a2);
    if (v9 - result > 0x40)
    {
      goto LABEL_5;
    }

    v10 = *a2;
  }

  if (!*v10)
  {
    *a3 = 0;
    return result;
  }

LABEL_5:
  llvm::APInt::sdiv(a4, a2, &__s1);
  if (v12 > 0x40)
  {
    if (!memcmp(__s1, *this, ((v12 + 63) >> 3) & 0x3FFFFFF8))
    {
LABEL_7:
      result = llvm::APInt::isMinSignedValue(this);
      if (result)
      {
        result = llvm::APInt::isAllOnes(a2);
      }

      goto LABEL_11;
    }
  }

  else if (__s1 == *this)
  {
    goto LABEL_7;
  }

  result = 1;
LABEL_11:
  *a3 = result;
  if (v12 >= 0x41)
  {
    result = __s1;
    if (__s1)
    {
      return MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::APInt::umul_ov@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(this + 2);
  if (v8 > 0x40)
  {
    v9 = llvm::APInt::countLeadingZerosSlowCase(this);
  }

  else
  {
    v9 = v8 + __clz(*this) - 64;
  }

  v10 = *(a2 + 2);
  if (v10 > 0x40)
  {
    v11 = llvm::APInt::countLeadingZerosSlowCase(a2);
  }

  else
  {
    v11 = v10 + __clz(*a2) - 64;
  }

  if (v9 + v11 + 2 <= v8)
  {
    *a3 = 1;

    return llvm::APInt::operator*(v6, a2, a4);
  }

  else
  {
    llvm::APInt::APInt(&v22, v6);
    if (v23 > 0x40)
    {
      v13 = v22;
      v14 = (v23 + 63) >> 6;
      v15 = *v22 >> 1;
      *v22 = v15;
      v16 = (v13 + 8);
      v17 = v14 - 1;
      do
      {
        v18 = v15 | (*v16 << 63);
        v15 = *v16 >> 1;
        *(v16 - 1) = v18;
        *v16++ = v15;
        --v17;
      }

      while (v17);
    }

    else if (v23 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 >>= 1;
    }

    llvm::APInt::operator*(&v22, a2, a4);
    if (v23 >= 0x41 && v22)
    {
      MEMORY[0x25F891010](v22, 0x1000C8000313F17);
    }

    v19 = *(a4 + 8);
    v20 = v19 - 1;
    if (v19 >= 0x41)
    {
      v21 = (*a4 + 8 * ((v19 - 1) >> 6));
    }

    else
    {
      v21 = a4;
    }

    *a3 = (*v21 >> v20) & 1;
    result = llvm::APInt::operator<<=(a4, 1u);
    if (*(v6 + 2) >= 0x41u)
    {
      v6 = *v6;
    }

    if (*v6)
    {
      llvm::APInt::operator+=(a4, a2);
      result = llvm::APInt::compare(a4, a2);
      if ((result & 0x80000000) != 0)
      {
        *a3 = 1;
      }
    }
  }

  return result;
}

llvm::APInt **llvm::APInt::sshl_ov@<X0>(llvm::APInt **this@<X0>, BOOL *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  v5 = *(this + 2);
  *a2 = v5 <= a3;
  if (v5 <= a3)
  {
    *(a4 + 8) = v5;
    if (v5 > 0x40)
    {
      operator new[]();
    }

    *a4 = 0;
    return this;
  }

  v8 = this;
  v9 = v5 - 1;
  if (v5 > 0x40)
  {
    if (((*(*this + (v9 >> 6)) >> v9) & 1) == 0)
    {
      v10 = llvm::APInt::countLeadingZerosSlowCase(this);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ((*this >> v9))
  {
LABEL_9:
    v10 = llvm::APInt::countl_one(this);
    goto LABEL_11;
  }

  v10 = v5 + __clz(*this) - 64;
LABEL_11:
  *a2 = v10 <= a3;
  v11 = llvm::APInt::APInt(a4, v8);

  return llvm::APInt::operator<<=(v11, a3);
}

unint64_t llvm::APInt::countl_one(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (v1 > 0x40)
  {
    return llvm::APInt::countLeadingOnesSlowCase(this);
  }

  if (v1)
  {
    return __clz(~(*this << -v1));
  }

  return 0;
}

llvm::APInt **llvm::APInt::ushl_ov@<X0>(llvm::APInt **this@<X0>, BOOL *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  v5 = *(this + 2);
  *a2 = v5 <= a3;
  if (v5 > a3)
  {
    v8 = this;
    if (v5 > 0x40)
    {
      v9 = llvm::APInt::countLeadingZerosSlowCase(this);
    }

    else
    {
      v9 = v5 + __clz(*this) - 64;
    }

    *a2 = v9 < a3;
    v10 = llvm::APInt::APInt(a4, v8);

    return llvm::APInt::operator<<=(v10, a3);
  }

  else
  {
    *(a4 + 8) = v5;
    if (v5 > 0x40)
    {
      operator new[]();
    }

    *a4 = 0;
  }

  return this;
}

uint64_t llvm::APInt::sfloordiv_ov@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  llvm::APInt::sdiv_ov(this, a2, a3, &__src);
  result = llvm::APInt::operator*(&__src, a2, &__s1);
  v8 = v21;
  if (v21 > 0x40)
  {
    v9 = __s1;
    v10 = *this;
    result = memcmp(__s1, *this, ((v21 + 63) >> 3) & 0x3FFFFFF8);
    if (!result)
    {
      if (v9)
      {
        result = MEMORY[0x25F891010](v9, 0x1000C8000313F17);
      }

      goto LABEL_18;
    }
  }

  else
  {
    v9 = __s1;
    v10 = *this;
    if (__s1 == *this)
    {
LABEL_18:
      *(a4 + 8) = v23;
      *a4 = __src;
      return result;
    }
  }

  v11 = *(this + 2);
  v12 = v11 - 1;
  if (v11 >= 0x41)
  {
    v10 = *(v10 + 8 * (v12 >> 6));
  }

  v13 = v10 >> v12;
  v14 = *(a2 + 2);
  v15 = v14 - 1;
  if (v14 >= 0x41)
  {
    v16 = (*a2 + 8 * ((v14 - 1) >> 6));
  }

  else
  {
    v16 = a2;
  }

  v17 = v13 ^ (*v16 >> v15);
  if (v8 >= 0x41 && v9)
  {
    result = MEMORY[0x25F891010](v9, 0x1000C8000313F17);
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_18;
  }

  v19 = v23;
  if (v23 > 0x40)
  {
    operator new[]();
  }

  v18 = __src;
  result = llvm::APInt::operator-=(&v18, 1uLL);
  *(a4 + 8) = v19;
  *a4 = v18;
  v19 = 0;
  if (v23 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::APInt::sadd_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v3 = this;
  v11 = 0;
  result = llvm::APInt::sadd_ov(this, a2, &v11, &v9);
  if (v11)
  {
    v6 = *(v3 + 2);
    v7 = v6 - 1;
    if (v6 >= 0x41)
    {
      v3 = (*v3 + 8 * (v7 >> 6));
    }

    if ((*v3 & (1 << v7)) != 0)
    {
      result = llvm::APInt::getSignedMinValue(v6, a3);
    }

    else
    {
      result = llvm::APInt::getAllOnes(v6, a3);
      if (*(a3 + 2) >= 0x41u)
      {
        v8 = (*a3 + 8 * (v7 >> 6));
      }

      else
      {
        v8 = a3;
      }

      *v8 &= ~(1 << v7);
    }
  }

  else
  {
    *(a3 + 2) = v10;
    *a3 = v9;
    v10 = 0;
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {

      JUMPOUT(0x25F891010);
    }
  }

  return result;
}

uint64_t llvm::APInt::uadd_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v8 = 0;
  result = llvm::APInt::uadd_ov(this, a2, &v8, &v6);
  if (v8)
  {
    result = llvm::APInt::getAllOnes(*(this + 2), a3);
    if (v7 >= 0x41)
    {
      result = v6;
      if (v6)
      {

        JUMPOUT(0x25F891010);
      }
    }
  }

  else
  {
    *(a3 + 2) = v7;
    *a3 = v6;
  }

  return result;
}

uint64_t llvm::APInt::ssub_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v3 = this;
  v11 = 0;
  result = llvm::APInt::ssub_ov(this, a2, &v11, &v9);
  if (v11)
  {
    v6 = *(v3 + 2);
    v7 = v6 - 1;
    if (v6 >= 0x41)
    {
      v3 = (*v3 + 8 * (v7 >> 6));
    }

    if ((*v3 & (1 << v7)) != 0)
    {
      result = llvm::APInt::getSignedMinValue(v6, a3);
    }

    else
    {
      result = llvm::APInt::getAllOnes(v6, a3);
      if (*(a3 + 2) >= 0x41u)
      {
        v8 = (*a3 + 8 * (v7 >> 6));
      }

      else
      {
        v8 = a3;
      }

      *v8 &= ~(1 << v7);
    }
  }

  else
  {
    *(a3 + 2) = v10;
    *a3 = v9;
    v10 = 0;
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {

      JUMPOUT(0x25F891010);
    }
  }

  return result;
}

uint64_t llvm::APInt::usub_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;
  result = llvm::APInt::usub_ov(this, a2, &v9, &v7);
  if (v9)
  {
    v6 = *(this + 2);
    *(a3 + 8) = v6;
    if (v6 > 0x40)
    {
      operator new[]();
    }

    *a3 = 0;
  }

  else
  {
    *(a3 + 8) = v8;
    *a3 = v7;
    v8 = 0;
  }

  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {

      JUMPOUT(0x25F891010);
    }
  }

  return result;
}

uint64_t llvm::APInt::smul_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v4 = this;
  v18 = 0;
  result = llvm::APInt::smul_ov(this, a2, &v18, &v16);
  if (v18)
  {
    v7 = *(v4 + 2);
    v8 = v7 - 1;
    v9 = (v7 - 1) >> 6;
    if (v7 >= 0x41)
    {
      v4 = (*v4 + 8 * v9);
    }

    v10 = 1 << v8;
    v11 = (*v4 & (1 << v8)) != 0;
    v12 = *(a2 + 2);
    v13 = v12 - 1;
    if (v12 >= 0x41)
    {
      v14 = (*a2 + 8 * ((v12 - 1) >> 6));
    }

    else
    {
      v14 = a2;
    }

    if (v11 == ((*v14 >> v13) & 1))
    {
      result = llvm::APInt::getAllOnes(v7, a3);
      if (*(a3 + 2) >= 0x41u)
      {
        v15 = (*a3 + 8 * v9);
      }

      else
      {
        v15 = a3;
      }

      *v15 &= ~v10;
    }

    else
    {
      result = llvm::APInt::getSignedMinValue(v7, a3);
    }
  }

  else
  {
    *(a3 + 2) = v17;
    *a3 = v16;
    v17 = 0;
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      return MEMORY[0x25F891010](v16, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::APInt::umul_sat@<X0>(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v8 = 0;
  result = llvm::APInt::umul_ov(this, a2, &v8, &v6);
  if (v8)
  {
    result = llvm::APInt::getAllOnes(*(this + 2), a3);
    if (v7 >= 0x41)
    {
      result = v6;
      if (v6)
      {
        return MEMORY[0x25F891010](v6, 0x1000C8000313F17);
      }
    }
  }

  else
  {
    *(a3 + 2) = v7;
    *a3 = v6;
  }

  return result;
}

uint64_t llvm::APInt::sshl_sat@<X0>(llvm::APInt **this@<X0>, unsigned int a2@<W1>, llvm::APInt *a3@<X8>)
{
  v3 = this;
  v11 = 0;
  result = llvm::APInt::sshl_ov(this, &v11, a2, &v9);
  if (v11)
  {
    v6 = *(v3 + 2);
    v7 = v6 - 1;
    if (v6 >= 0x41)
    {
      v3 = (*v3 + 8 * (v7 >> 6));
    }

    if ((*v3 & (1 << v7)) != 0)
    {
      result = llvm::APInt::getSignedMinValue(v6, a3);
    }

    else
    {
      result = llvm::APInt::getAllOnes(v6, a3);
      if (*(a3 + 2) >= 0x41u)
      {
        v8 = (*a3 + 8 * (v7 >> 6));
      }

      else
      {
        v8 = a3;
      }

      *v8 &= ~(1 << v7);
    }
  }

  else
  {
    *(a3 + 2) = v10;
    *a3 = v9;
    v10 = 0;
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::APInt::ushl_sat@<X0>(llvm::APInt **this@<X0>, unsigned int a2@<W1>, llvm::APInt *a3@<X8>)
{
  v8 = 0;
  result = llvm::APInt::ushl_ov(this, &v8, a2, &v6);
  if (v8)
  {
    result = llvm::APInt::getAllOnes(*(this + 2), a3);
    if (v7 >= 0x41)
    {
      result = v6;
      if (v6)
      {
        return MEMORY[0x25F891010](v6, 0x1000C8000313F17);
      }
    }
  }

  else
  {
    *(a3 + 2) = v7;
    *a3 = v6;
  }

  return result;
}

void llvm::APInt::toString(llvm::APInt *this, uint64_t a2, unsigned int a3, int a4, int a5, int a6, int a7)
{
  v12 = this;
  v64 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    HIDWORD(v13) = a3 - 2;
    LODWORD(v13) = a3 - 2;
    v14 = off_2799BD0A8[(v13 >> 1)];
  }

  else
  {
    v14 = &byte_25D0A27DF;
  }

  if (a3 == 10 || a3 == 8)
  {
    v16 = 3;
  }

  else
  {
    v16 = 4;
  }

  v17 = *(this + 2);
  if (v17 <= 0x40)
  {
    v18 = *this;
    if (*this)
    {
      if (a6)
      {
        v19 = 36;
      }

      else
      {
        v19 = 0;
      }

      if (a4)
      {
        v18 = v17 ? (v18 << -v17) >> -v17 : 0;
        if ((v18 & 0x8000000000000000) != 0)
        {
          llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 45);
          v18 = -v18;
        }
      }

      v20 = *v14;
      if (*v14)
      {
        v21 = (v14 + 1);
        do
        {
          llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v20);
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }

      v23 = v63;
      if (v18)
      {
        v24 = 0;
        v23 = v63;
        do
        {
          if (a7 && v24 && !(v24 % v16))
          {
            *--v23 = 39;
          }

          *--v23 = llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL,BOOL,BOOL)const::BothDigits[v19 + v18 % a3];
          ++v24;
          v25 = v18 >= a3;
          v18 /= a3;
        }

        while (v25);
      }

      llvm::SmallVectorImpl<char>::append<char *,void>(a2, v23, v63);
      goto LABEL_110;
    }

    goto LABEL_33;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(this) == v17)
  {
LABEL_33:
    v26 = *v14;
    if (*v14)
    {
      v27 = (v14 + 1);
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v26);
        v28 = *v27++;
        v26 = v28;
      }

      while (v28);
    }

    v29 = *MEMORY[0x277D85DE8];

    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
    return;
  }

  if (a6)
  {
    v30 = 36;
  }

  else
  {
    v30 = 0;
  }

  llvm::APInt::APInt(&v61, v12);
  if (a4)
  {
    v31 = *(v12 + 2);
    v32 = v31 - 1;
    if (v31 >= 0x41)
    {
      v12 = (*v12 + 8 * (v32 >> 6));
    }

    if ((*v12 >> v32))
    {
      llvm::APInt::flipAllBits(&v61);
      llvm::APInt::operator++(&v61);
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 45);
    }
  }

  v33 = &llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL,BOOL,BOOL)const::BothDigits[v30];
  v34 = *v14;
  if (*v14)
  {
    v35 = (v14 + 1);
    do
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v34);
      v36 = *v35++;
      v34 = v36;
    }

    while (v36);
  }

  v37 = *(a2 + 8);
  if (a3 == 2 || a3 == 8)
  {
    if (a3 == 8)
    {
      v38 = 3;
    }

    else
    {
      v38 = 1;
    }

    goto LABEL_57;
  }

  if (a3 == 16)
  {
    v38 = 4;
LABEL_57:
    v39 = 0;
    v40 = a3 - 1;
    v41 = v38;
    while (1)
    {
      LODWORD(v42) = v62;
      if (v62 > 0x40)
      {
        if (llvm::APInt::countLeadingZerosSlowCase(&v61) == v42)
        {
          goto LABEL_98;
        }

        v43 = *v61;
      }

      else
      {
        LODWORD(v43) = v61;
        if (!v61)
        {
          goto LABEL_98;
        }
      }

      v44 = v40 & v43;
      if (a7 && v39 && !(v39 % v16))
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 39);
      }

      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v33[v44]);
      if (v62 > 0x40)
      {
        llvm::APInt::tcShiftRight(v61, ((v62 + 63) >> 6), v41);
      }

      else if (v62 == v41)
      {
        v61 = 0;
      }

      else
      {
        v61 = (v61 >> v41);
      }

      ++v39;
    }
  }

  v58 = *(a2 + 8);
  for (i = 0; ; ++i)
  {
    v42 = v62;
    if (v62 > 0x40)
    {
      break;
    }

    if (!v61)
    {
      goto LABEL_97;
    }

    v59 = v61 % a3;
    v61 = (v61 / a3);
    if (a7)
    {
      goto LABEL_83;
    }

LABEL_86:
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v33[v59]);
  }

  if (llvm::APInt::countLeadingZerosSlowCase(&v61) != v42)
  {
    v59 = 0;
    v60 = a3;
    v46 = llvm::APInt::countLeadingZerosSlowCase(&v61);
    v47 = (v42 - v46);
    if (v42 == v46)
    {
      operator new[]();
    }

    if (a3 == 1)
    {
      llvm::APInt::operator=(&v61, &v61);
      v59 = 0;
      if (!a7)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v47 <= 0x40)
      {
        if (*v61 < a3)
        {
          v59 = *v61;
          operator new[]();
        }

        if (*v61 == a3)
        {
          operator new[]();
        }
      }

      v48 = (v47 + 63) >> 6;
      llvm::APInt::reallocate(&v61, v42);
      if (v48 == 1)
      {
        v50 = *v61;
        v51 = *v61 / a3;
        llvm::APInt::operator=(&v61, v51);
        v59 = v50 - v51 * a3;
        if (!a7)
        {
          goto LABEL_86;
        }
      }

      else
      {
        llvm::APInt::divide(v61, v48, &v60, 1, v61, &v59, v49);
        bzero(v61 + 8 * v48, 8 * (((v42 + 63) >> 6) - v48));
        if (!a7)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_83:
    if (i && !(i % v16))
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 39);
    }

    goto LABEL_86;
  }

LABEL_97:
  v37 = v58;
LABEL_98:
  v52 = *(a2 + 8);
  v53 = (*a2 + v52 - 1);
  if (v37 != v52 && v53 > *a2 + v37)
  {
    v55 = v37 + *a2 + 1;
    do
    {
      v56 = *(v55 - 1);
      *(v55 - 1) = *v53;
      *v53-- = v56;
      v25 = v55++ >= v53;
    }

    while (!v25);
    LODWORD(v42) = v62;
  }

  if (v42 >= 0x41 && v61)
  {
    MEMORY[0x25F891010](v61, 0x1000C8000313F17);
  }

LABEL_110:
  v57 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<char>::append<char *,void>(void *a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = a1[1];
  v8 = v7 + a3 - __src;
  if (a1[2] < v8)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v8, 1);
    v7 = a1[1];
  }

  if (__src != a3)
  {
    memcpy((*a1 + v7), __src, v6);
    v7 = a1[1];
  }

  a1[1] = v7 + v6;
}

void llvm::APInt::print(llvm::APInt *this, llvm::raw_ostream *a2, int a3)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v5 = v7;
  v6 = xmmword_25D0A0550;
  llvm::APInt::toString(this, &v5, 0xAu, a3, 0, 1, 0);
  llvm::raw_ostream::write(a2, v5, v6);
  if (v5 != v7)
  {
    free(v5);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void llvm::APInt::tcExtract(llvm::APInt *this, unint64_t *a2, uint64_t a3, const unint64_t *a4, unsigned int a5)
{
  v5 = a4;
  v7 = a2;
  v9 = a4 + 63;
  v10 = (a4 + 63) >> 6;
  v11 = a5 >> 6;
  if ((a4 + 63) >= 0x40)
  {
    v12 = (a3 + 8 * v11);
    v13 = this;
    v14 = v9 >> 6;
    do
    {
      v15 = *v12++;
      *v13 = v15;
      v13 = (v13 + 8);
      --v14;
    }

    while (v14);
  }

  v16 = a5 & 0x3F;
  llvm::APInt::tcShiftRight(this, (v9 >> 6), v16);
  v17 = (v9 & 0xFFFFFFC0) - v16;
  if (v17 < v5)
  {
    v18 = v10 - 1;
    v19 = ((*(a3 + 8 * (v11 + v10)) & (0xFFFFFFFFFFFFFFFFLL >> (v17 - v5))) << v17) | *(this + v10 - 1);
LABEL_9:
    *(this + v18) = v19;
    goto LABEL_10;
  }

  if (v17 > v5 && (v5 & 0x3F) != 0)
  {
    v18 = v10 - 1;
    v19 = *(this + v10 - 1) & (0xFFFFFFFFFFFFFFFFLL >> -(v5 & 0x3F));
    goto LABEL_9;
  }

LABEL_10:
  if (v10 < v7)
  {

    bzero(this + ((v9 >> 3) & 0x1FFFFFF8), 8 * (~v10 + v7) + 8);
  }
}

void *llvm::APInt::tcNegate(void *this, unint64_t *a2)
{
  if (a2)
  {
    v2 = 0;
    do
    {
      this[v2] = ~this[v2];
      ++v2;
    }

    while (a2 != v2);
    v3 = __CFADD__((*this)++, 1);
    if (v3)
    {
      v4 = this + 1;
      v5 = a2 - 1;
      do
      {
        if (!v5)
        {
          break;
        }

        --v5;
        v3 = __CFADD__((*v4++)++, 1);
      }

      while (v3);
    }
  }

  return this;
}

llvm::APInt *llvm::APInt::tcFullMultiply(llvm::APInt *this, unint64_t *a2, unint64_t *a3, const unint64_t *a4, const unint64_t *a5)
{
  v6 = this;
  do
  {
    v7 = a5;
    a5 = a4;
    v8 = a3;
    a3 = a2;
    a2 = v8;
    a4 = v7;
  }

  while (a5 > v7);
  if (a5)
  {
    v9 = 0;
    v10 = a5;
    do
    {
      this = llvm::APInt::tcMultiplyPart(v6, v8, a3[v9], 0, v7, v7 + 1, v9 != 0);
      ++v9;
      v6 = (v6 + 8);
    }

    while (v10 != v9);
  }

  return this;
}

uint64_t llvm::APInt::isStrictlyPositive(llvm::APInt *this)
{
  v1 = *(this + 2);
  v2 = v1 - 1;
  if (v1 > 0x40)
  {
    if (((*(*this + 8 * (v2 >> 6)) >> v2) & 1) == 0)
    {
      v3 = llvm::APInt::countLeadingZerosSlowCase(this) == v1;
      goto LABEL_7;
    }

    return 0;
  }

  if ((*this >> v2))
  {
    return 0;
  }

  v3 = *this == 0;
LABEL_7:
  v5 = v3;
  return v5 ^ 1u;
}

void *llvm::APInt::setBits(void *this, unsigned int a2, unsigned int a3)
{
  if (a2 != a3)
  {
    if (a2 > 0x3F || a3 > 0x40)
    {
      return llvm::APInt::setBitsSlowCase(this, a2, a3);
    }

    else
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> ((a2 | 0x40) - a3) << a2;
      if (*(this + 2) > 0x40u)
      {
        **this |= v3;
      }

      else
      {
        *this |= v3;
      }
    }
  }

  return this;
}

uint64_t llvm::APIntOps::mulhs@<X0>(llvm::APIntOps *this@<X0>, const llvm::APInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v7 = 2 * *(this + 2);
  llvm::APInt::sext(this, v7, &v13);
  llvm::APInt::sext(a2, v7, &v11);
  llvm::APInt::operator*(&v13, &v11, &v9);
  result = llvm::APInt::extractBits(&v9, *(this + 2), *(this + 2), a3);
  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::APIntOps::mulhu@<X0>(llvm::APIntOps *this@<X0>, const llvm::APInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v7 = 2 * *(this + 2);
  llvm::APInt::zext(this, v7, &v13);
  llvm::APInt::zext(a2, v7, &v11);
  llvm::APInt::operator*(&v13, &v11, &v9);
  result = llvm::APInt::extractBits(&v9, *(this + 2), *(this + 2), a3);
  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::APInt::getNumSignBits(llvm::APInt *this)
{
  v1 = *(this + 2);
  v2 = v1 - 1;
  if (v1 <= 0x40)
  {
    if (((*this >> v2) & 1) == 0)
    {
      return v1 + __clz(*this) - 64;
    }

    return llvm::APInt::countl_one(this);
  }

  if ((*(*this + 8 * (v2 >> 6)) >> v2))
  {
    return llvm::APInt::countl_one(this);
  }

  return llvm::APInt::countLeadingZerosSlowCase(this);
}

uint64_t llvm::APInt::abs@<X0>(llvm::APInt *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  v4 = v3 - 1;
  v5 = this;
  if (v3 >= 0x41)
  {
    v5 = (*this + 8 * (v4 >> 6));
  }

  if ((*v5 >> v4))
  {
    llvm::APInt::APInt(&v7, this);
    llvm::APInt::flipAllBits(&v7);
    result = llvm::APInt::operator++(&v7);
    *(a2 + 8) = v8;
    *a2 = v7;
  }

  else
  {

    return llvm::APInt::APInt(a2, this);
  }

  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,unsigned long long>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, uint64_t *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long long>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

void *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long long>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v9, v10, v14);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<unsigned long long>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, uint64_t *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

void llvm::decodeBase64(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  a3[1] = *a3;
  if (a2)
  {
    if ((a2 & 3) != 0)
    {
      std::generic_category();
      operator new();
    }

    v8 = 0;
    v9 = a2 - 2;
    v10 = a1 + 1;
    v11 = 2 - a2;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v13 = i | v8;
        v14 = *(a1 + v8 + i);
        if (v14 > 0x7A)
        {
          goto LABEL_21;
        }

        v15 = decodeBase64Byte(unsigned char)::DecodeTable[*(a1 + v8 + i)];
        if (v14 != 61 || v15 == 64)
        {
          if (v15 == 64)
          {
            v13 = v8 + i;
LABEL_21:
            v21 = std::generic_category();
            __p[3] = 92;
            __p[4] = v21;
            memset(__p, 0, 24);
            v31 = 0;
            v35 = 0;
            v36 = 1;
            v33 = 0;
            v34 = 0;
            v32 = 0;
            v30 = &unk_286E79D28;
            v37 = __p;
            llvm::raw_ostream::SetUnbuffered(&v30);
            v27[0] = &unk_286E78FC8;
            v27[1] = "Invalid Base64 character %#2.2x at index %llu";
            v28 = v14;
            v29 = v13;
            llvm::raw_ostream::operator<<(&v30, v27);
            llvm::raw_ostream::~raw_ostream(&v30);
            llvm::make_error<llvm::StringError,std::string &,std::error_code &>();
          }
        }

        else
        {
          if (v8 + i < v9)
          {
            goto LABEL_21;
          }

          if (!(v11 + v8 + i) && *(v10 + v9) != 61)
          {
            v13 = a2 - 2;
            goto LABEL_21;
          }
        }

        *(&v23 + i) = v15;
      }

      v16 = v24;
      LOBYTE(v30) = (4 * v23) | (v24 >> 4) & 3;
      v22 = v10;
      v17 = v11;
      std::vector<char>::push_back[abi:nn200100](a3, &v30);
      v18 = 16 * v16;
      v19 = v25;
      LOBYTE(v30) = v18 & 0xF0 | (v25 >> 2) & 0xF;
      std::vector<char>::push_back[abi:nn200100](a3, &v30);
      LOBYTE(v30) = v26 & 0x3F | (v19 << 6);
      std::vector<char>::push_back[abi:nn200100](a3, &v30);
      v11 = v17;
      v10 = v22;
      v8 += 4;
    }

    while (v8 < a2);
    if (*(a1 + a2 - 1) == 61)
    {
      v20 = a3[1];
      a3[1] = v20 - 1;
      if (*(a1 + v9) == 61)
      {
        a3[1] = v20 - 2;
      }
    }
  }

  *a4 = 0;
}

void std::vector<char>::push_back[abi:nn200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<char>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, unint64_t *a4, unint64_t a5, unint64_t a6)
{
  v18 = 0;
  v8 = llvm::cl::parser<unsigned int>::parse(a1, a1, a3, a4, a5, a6, &v18);
  if (v8)
  {
    return v8;
  }

  *(a1 + 120) = v18;
  *(a1 + 12) = a2;
  v9 = *(a1 + 176);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v18);
    return v8;
  }

  v11 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::parser<unsigned int>::parse(v11, v12, v13, v14, v15, v16, v17);
}

uint64_t llvm::cl::parser<unsigned int>::parse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5, unint64_t a6, _DWORD *a7)
{
  v14[0] = 0;
  v16 = a5;
  v17 = a6;
  v11 = llvm::consumeUnsignedInteger(&v16, 0, v14, a4);
  if ((v11 & 1) != 0 || v17 || HIDWORD(v14[0]))
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16 = v14;
    v18 = "' value invalid for uint argument!";
    v19 = 770;
    v13 = llvm::errs(v11);
    llvm::cl::Option::error(a2, &v16, 0, 0, v13);
    return 1;
  }

  else
  {
    result = 0;
    *a7 = v14[0];
  }

  return result;
}

uint64_t llvm::cl::basic_parser_impl::getOptionWidth(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2)
{
  v3 = *(a2 + 3);
  if (v3 == 1)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3 + 7;
  }

  (*(*this + 16))(this);
  if (v5)
  {
    v6 = 6;
    if ((*(a2 + 5) & 0x400) == 0)
    {
      v6 = 3;
    }

    v7 = *(a2 + 7);
    if (!v7)
    {
      v7 = v5;
    }

    v4 += v6 + v7;
  }

  return v4;
}

llvm::raw_ostream *llvm::cl::basic_parser_impl::printOptionInfo(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, size_t a3)
{
  v6 = llvm::outs(this);
  v40 = *(a2 + 1);
  v41 = 2;
  v7 = (*(*this + 16))(this);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = *(a2 + 5);
    if ((v11 & 0x400) != 0)
    {
      v15 = llvm::outs(v7);
      v16 = *(v15 + 4);
      if (*(v15 + 3) - v16 > 1uLL)
      {
        *v16 = 15392;
        *(v15 + 4) += 2;
      }

      else
      {
        v15 = llvm::raw_ostream::write(v15, " <", 2uLL);
      }

      v24 = *(a2 + 7);
      if (v24)
      {
        v25 = *(a2 + 6);
      }

      else
      {
        v25 = v9;
      }

      if (v24)
      {
        v26 = *(a2 + 7);
      }

      else
      {
        v26 = v10;
      }

      v27 = llvm::raw_ostream::operator<<(v15, v25, v26);
      v28 = *(v27 + 4);
      if (*(v27 + 3) - v28 <= 3uLL)
      {
        v29 = ">...";
        v30 = 4;
LABEL_40:
        llvm::raw_ostream::write(v27, v29, v30);
        goto LABEL_44;
      }

      *v28 = 774778430;
      v31 = *(v27 + 4) + 4;
    }

    else
    {
      v12 = (v11 >> 3) & 3;
      if (!v12)
      {
        v7 = (*(*a2 + 8))(a2);
        v12 = v7;
      }

      v13 = llvm::outs(v7);
      if (v12 != 1)
      {
        if (*(a2 + 3) == 1)
        {
          v17 = " <";
        }

        else
        {
          v17 = "=<";
        }

        v18 = llvm::raw_ostream::operator<<(v13, v17, 2uLL);
        v19 = *(a2 + 7);
        if (v19)
        {
          v20 = *(a2 + 6);
        }

        else
        {
          v20 = v9;
        }

        if (v19)
        {
          v21 = *(a2 + 7);
        }

        else
        {
          v21 = v10;
        }

        v22 = llvm::raw_ostream::operator<<(v18, v20, v21);
        v23 = *(v22 + 4);
        if (v23 >= *(v22 + 3))
        {
          llvm::raw_ostream::write(v22, 62);
        }

        else
        {
          *(v22 + 4) = v23 + 1;
          *v23 = 62;
        }

        goto LABEL_44;
      }

      v14 = *(v13 + 4);
      if ((*(v13 + 3) - v14) > 2)
      {
        *(v14 + 2) = 60;
        *v14 = 15707;
        *(v13 + 4) += 3;
      }

      else
      {
        v13 = llvm::raw_ostream::write(v13, "[=<", 3uLL);
      }

      v32 = *(a2 + 7);
      if (v32)
      {
        v33 = *(a2 + 6);
      }

      else
      {
        v33 = v9;
      }

      if (v32)
      {
        v34 = *(a2 + 7);
      }

      else
      {
        v34 = v10;
      }

      v27 = llvm::raw_ostream::operator<<(v13, v33, v34);
      v35 = *(v27 + 4);
      if (*(v27 + 3) - v35 <= 1uLL)
      {
        v29 = ">]";
        v30 = 2;
        goto LABEL_40;
      }

      *v35 = 23870;
      v31 = *(v27 + 4) + 2;
    }

    *(v27 + 4) = v31;
  }

LABEL_44:
  v36 = *(a2 + 4);
  v37 = *(a2 + 5);
  OptionWidth = llvm::cl::basic_parser_impl::getOptionWidth(this, a2);

  return llvm::cl::Option::printHelpStr(v36, v37, a3, OptionWidth);
}

void llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 140) != 1 || *(a1 + 136) != *(a1 + 120))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 120);
    v7 = *(a1 + 136);
    v8 = *(a1 + 140);
    v6 = &unk_286E77748;
    llvm::cl::parser<unsigned int>::printOptionDiff(a1, a1, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::setDefault(uint64_t result)
{
  if (*(result + 140) == 1)
  {
    v1 = *(result + 136);
  }

  else
  {
    v1 = 0;
  }

  *(result + 120) = v1;
  return result;
}

void llvm::cl::Option::addArgument(llvm::cl::Option *this)
{
  if (!atomic_load_explicit(GlobalParser, memory_order_acquire))
  {
  }

  v3 = this;
  if ((*(this + 5) & 0x2000) != 0)
  {
    llvm::SmallVectorTemplateBase<llvm::cl::Option *,true>::push_back(GlobalParser[0] + 64, this);
  }

  else
  {
    v2[0] = GlobalParser[0];
    v2[1] = &v3;
  }

  *(this + 5) |= 0x4000u;
}

void *std::function<void ()(unsigned int const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:nn200100](v5, a2);
  std::__function::__value_func<void ()(unsigned int const&)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::cl::opt<int,false,llvm::cl::parser<int>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, unint64_t *a4, unint64_t a5, unint64_t a6)
{
  v14[0] = 0;
  v16 = a5;
  v17 = a6;
  v10 = llvm::consumeSignedInteger(&v16, 0, v14, a4);
  if ((v10 & 1) != 0 || v17 || v14[0] != SLODWORD(v14[0]))
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16 = v14;
    v18 = "' value invalid for integer argument!";
    v19 = 770;
    v13 = llvm::errs(v10);
    llvm::cl::Option::error(a1, &v16, 0, 0, v13);
    return 1;
  }

  else
  {
    LODWORD(v16) = v14[0];
    *(a1 + 120) = v14[0];
    *(a1 + 12) = a2;
    v11 = *(a1 + 176);
    if (v11)
    {
      (*(*v11 + 48))(v11, &v16);
      return 0;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<int,false,llvm::cl::parser<int>>::getValueExpectedFlagDefault();
    }
  }
}

void llvm::cl::opt<int,false,llvm::cl::parser<int>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) == 0 && *(a1 + 140) == 1 && *(a1 + 136) == *(a1 + 120))
  {
    return;
  }

  v34 = v3;
  v35 = v4;
  v5 = *(a1 + 120);
  v21 = *(a1 + 136);
  v22 = *(a1 + 140);
  llvm::cl::basic_parser_impl::printOptionName(a1, a1, a2);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_286E79D28;
  v30 = &v31;
  llvm::raw_ostream::SetUnbuffered(&v23);
  llvm::write_integer(&v23, v5, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v23);
  v7 = llvm::outs(v6);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8253;
    *(v7 + 4) += 2;
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, "= ", 2uLL);
  }

  if (v33 >= 0)
  {
    v9 = &v31;
  }

  else
  {
    v9 = v31;
  }

  if (v33 >= 0)
  {
    v10 = HIBYTE(v33);
  }

  else
  {
    v10 = v32;
  }

  v11 = llvm::raw_ostream::write(v7, v9, v10);
  v12 = SHIBYTE(v33);
  if ((SHIBYTE(v33) & 0x8000000000000000) != 0)
  {
    v12 = v32;
    if (v32 < 8)
    {
      goto LABEL_15;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (SHIBYTE(v33) > 7)
  {
    goto LABEL_17;
  }

LABEL_15:
  v13 = (8 - v12);
LABEL_18:
  v14 = llvm::outs(v11);
  v15 = llvm::raw_ostream::indent(v14, v13);
  v16 = *(v15 + 4);
  if ((*(v15 + 3) - v16) > 0xA)
  {
    *(v16 + 7) = 540701804;
    *v16 = *" (default: ";
    *(v15 + 4) += 11;
  }

  else
  {
    v15 = llvm::raw_ostream::write(v15, " (default: ", 0xBuLL);
  }

  v17 = llvm::outs(v15);
  if (v22 == 1)
  {
    v17 = llvm::write_integer(v17, v21, 0, 0);
  }

  else
  {
    v18 = *(v17 + 4);
    if ((*(v17 + 3) - v18) > 0xB)
    {
      *(v18 + 8) = 712273013;
      *v18 = *"*no default*";
      *(v17 + 4) += 12;
    }

    else
    {
      v17 = llvm::raw_ostream::write(v17, "*no default*", 0xCuLL);
    }
  }

  v19 = llvm::outs(v17);
  v20 = *(v19 + 4);
  if (*(v19 + 3) - v20 > 1uLL)
  {
    *v20 = 2601;
    *(v19 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v19, ")\n", 2uLL);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }
}

uint64_t llvm::cl::opt<int,false,llvm::cl::parser<int>>::setDefault(uint64_t result)
{
  if (*(result + 140) == 1)
  {
    v1 = *(result + 136);
  }

  else
  {
    v1 = 0;
  }

  *(result + 120) = v1;
  return result;
}

void *std::function<void ()(int const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(int const&)>::__value_func[abi:nn200100](v5, a2);
  std::__function::__value_func<void ()(int const&)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(int const&)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, __int16 a2, int a3, int a4, void *a5, size_t a6)
{
  memset(&__str, 0, sizeof(__str));
  v8 = llvm::cl::parser<std::string>::parse(a1 + 184, a1, a3, a4, a5, a6, &__str);
  if ((v8 & 1) == 0)
  {
    std::string::operator=((a1 + 120), &__str);
    *(a1 + 12) = a2;
    v9 = *(a1 + 216);
    if (!v9)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::getValueExpectedFlagDefault();
    }

    (*(*v9 + 48))(v9, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v8;
}

llvm::raw_ostream *llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::printOptionValue(llvm::raw_ostream *result, int a2, char a3)
{
  v4 = result;
  if ((a3 & 1) != 0 || (result = llvm::cl::OptionValueCopy<std::string>::compare(result + 144, result + 15), (result & 1) == 0))
  {
    v5 = *(v4 + 143);
    if (v5 >= 0)
    {
      v6 = v4 + 120;
    }

    else
    {
      v6 = *(v4 + 15);
    }

    if (v5 >= 0)
    {
      v7 = *(v4 + 143);
    }

    else
    {
      v7 = *(v4 + 16);
    }

    return llvm::cl::parser<std::string>::printOptionDiff(result, v4, v6, v7, v4 + 144, a2);
  }

  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v18 = 0;
  v8 = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v18);
  if (v8)
  {
    return v8;
  }

  *(a1 + 120) = v18;
  *(a1 + 12) = a2;
  v9 = *(a1 + 176);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v18);
    return v8;
  }

  v11 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::parser<BOOL>::parse(v11, v12, v13, v14, v15, v16, v17);
}

uint64_t llvm::cl::parser<BOOL>::parse(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, _BYTE *a7)
{
  if (a6 > 3)
  {
    if (a6 != 5)
    {
      if (a6 != 4 || *a5 != 1702195828 && *a5 != 1163219540 && *a5 != 1702195796)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if ((*a5 != 1936482662 || a5[4] != 101) && (*a5 != 1397506374 || a5[4] != 69) && (*a5 != 1936482630 || a5[4] != 101))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    if (a6 != 1)
    {
LABEL_25:
      v15 = 1283;
      v14[0] = "'";
      v14[2] = a5;
      v14[3] = a6;
      v16[0] = v14;
      v16[2] = "' is invalid value for BOOLean argument! Try 0 or 1";
      v17 = 770;
      v13 = llvm::errs(a1);
      llvm::cl::Option::error(a2, v16, 0, 0, v13);
      return 1;
    }

    v8 = *a5;
    if (v8 != 48)
    {
      if (v8 != 49)
      {
        goto LABEL_25;
      }

LABEL_12:
      result = 0;
      *a7 = 1;
      return result;
    }
  }

  result = 0;
  *a7 = 0;
  return result;
}

void llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 137) != 1 || *(a1 + 136) != *(a1 + 120))
  {
    v8 = v3;
    v9 = v4;
    v5 = *(a1 + 120);
    v7 = *(a1 + 136);
    v6 = &unk_286E76000;
    llvm::cl::parser<BOOL>::printOptionDiff(a1, a1, v5, &v6, a2);
  }
}

_BYTE *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::setDefault(_BYTE *result)
{
  if (result[137] == 1)
  {
    v1 = result[136];
  }

  else
  {
    v1 = 0;
  }

  result[120] = v1;
  return result;
}

void llvm::cl::AddLiteralOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!atomic_load_explicit(GlobalParser, memory_order_acquire))
  {
  }

  v7[0] = a2;
  v7[1] = a3;
  v6[0] = GlobalParser[0];
  v6[1] = a1;
  v6[2] = v7;
}

void llvm::cl::Option::setArgStr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 10) & 0x4000) != 0)
  {
    if (!atomic_load_explicit(GlobalParser, memory_order_acquire))
    {
    }

    v8[0] = a2;
    v8[1] = a3;
    v6[0] = GlobalParser[0];
    v6[1] = &v7;
    v6[2] = v8;
    v7 = a1;
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  if (a3 == 1)
  {
    *(a1 + 10) |= 0x1000u;
  }
}

void llvm::cl::Option::addCategory(llvm::cl::OptionCategory ***this, llvm::cl::OptionCategory *a2)
{
  GeneralCategory = llvm::cl::getGeneralCategory(this);
  if (a2 != &llvm::cl::getGeneralCategory(void)::GeneralCategory && (v5 = *this[8], llvm::cl::getGeneralCategory(GeneralCategory), v5 == &llvm::cl::getGeneralCategory(void)::GeneralCategory))
  {
    *this[8] = a2;
  }

  else
  {
    v8 = this[8];
    v7 = (this + 8);
    v6 = v8;
    v9 = *(v7 + 2);
    if (v9)
    {
      v10 = 8 * v9;
      v11 = v6;
      while (*v11 != a2)
      {
        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v11 = v6;
    }

    if (v11 == &v6[v9])
    {
LABEL_10:

      llvm::SmallVectorTemplateBase<llvm::cl::OptionCategory *,true>::push_back(v7, a2);
    }
  }
}

uint64_t *llvm::cl::getGeneralCategory(llvm::cl *this)
{
  {
    llvm::cl::getGeneralCategory(void)::GeneralCategory = "General options";
    unk_27FC1BCE0 = 15;
    qword_27FC1BCE8 = &str_6_2;
    unk_27FC1BCF0 = 0;
    llvm::cl::OptionCategory::registerCategory(&llvm::cl::getGeneralCategory(void)::GeneralCategory);
  }

  return &llvm::cl::getGeneralCategory(void)::GeneralCategory;
}

const void **llvm::cl::OptionCategory::registerCategory(llvm::cl::OptionCategory *this)
{
  if (!atomic_load_explicit(GlobalParser, memory_order_acquire))
  {
  }

  v2 = (GlobalParser[0] + 112);

  return llvm::SmallPtrSetImplBase::insert_imp(v2, this);
}

uint64_t ProvideOption(unsigned __int16 *a1, uint64_t a2, uint64_t a3, char *a4, size_t a5, int a6, uint64_t a7, unsigned int *a8)
{
  v16 = a1[7];
  result = (a1[5] >> 3) & 3;
  if (!result)
  {
    result = (*(*a1 + 8))(a1);
  }

  if (result == 3)
  {
    if (!v16)
    {
      if (a4)
      {
        v30[0] = "does not allow a value! '";
        v30[2] = a4;
        v30[3] = a5;
        v31 = 1283;
        v32[0] = v30;
        v32[2] = "' specified.";
        v21 = 770;
LABEL_33:
        v33 = v21;
        v28 = llvm::errs(result);
        llvm::cl::Option::error(a1, v32, 0, 0, v28);
        return 1;
      }

      goto LABEL_37;
    }

    v19 = "multi-valued option specified with ValueDisallowed modifier!";
LABEL_32:
    v32[0] = v19;
    v21 = 259;
    goto LABEL_33;
  }

  if (result != 2 || a4)
  {
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

  v20 = *a8 + 1;
  if (v20 >= a6 || (~a1[5] & 0x180) == 0)
  {
    v19 = "requires a value!";
    goto LABEL_32;
  }

  *a8 = v20;
  a4 = *(a7 + 8 * v20);
  if (a4)
  {
    result = strlen(*(a7 + 8 * v20));
    a5 = result;
    if (v16)
    {
LABEL_7:
      if (a4)
      {
        result = CommaSeparateAndAddOccurrence(a1, *a8, a2, a3, a4, a5, 0);
        if (result)
        {
          return 1;
        }

        --v16;
        v18 = 1;
        if (!v16)
        {
          return 0;
        }

        goto LABEL_23;
      }

LABEL_22:
      v18 = 0;
LABEL_23:
      v22 = v16 - 1;
      while (1)
      {
        v23 = v22;
        v24 = *a8;
        v25 = v24 + 1;
        if (v24 + 1 >= a6)
        {
          break;
        }

        *a8 = v25;
        v26 = *(a7 + 8 * v25);
        if (v26)
        {
          v27 = strlen(*(a7 + 8 * v25));
        }

        else
        {
          v27 = 0;
        }

        result = CommaSeparateAndAddOccurrence(a1, v25, a2, a3, v26, v27, v18 & 1);
        if ((result & 1) == 0)
        {
          v22 = v23 - 1;
          v18 = 1;
          if (v23)
          {
            continue;
          }
        }

        return result;
      }

      v19 = "not enough values!";
      goto LABEL_32;
    }
  }

  else
  {
    if (v16)
    {
      goto LABEL_22;
    }

    a5 = 0;
    a4 = 0;
  }

LABEL_37:
  v29 = *a8;

  return CommaSeparateAndAddOccurrence(a1, v29, a2, a3, a4, a5, 0);
}

void llvm::SmallVectorTemplateBase<char const*,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, const char *a2)
{
  v2 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return llvm::raw_ostream::write(a1, a2, v3);
}

uint64_t llvm::cl::Option::error(uint64_t a1, llvm::Twine *a2, uint64_t a3, uint64_t a4, llvm::raw_ostream *a5)
{
  v5 = a5;
  if (!a3)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::raw_ostream::operator<<(a5, *(a1 + 32), *(a1 + 40));
    goto LABEL_17;
  }

  v7 = a4;
  v8 = a3;
  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!atomic_load_explicit(GlobalParser, memory_order_acquire))
  {
  }

  v9 = *(GlobalParser[0] + 23);
  if (v9 >= 0)
  {
    v10 = GlobalParser[0];
  }

  else
  {
    v10 = *GlobalParser[0];
  }

  if (v9 >= 0)
  {
    v11 = *(GlobalParser[0] + 23);
  }

  else
  {
    v11 = *(GlobalParser[0] + 8);
  }

  v12 = llvm::raw_ostream::write(v5, v10, v11);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 9)
  {
    *(v13 + 8) = 8293;
    *v13 = *": for the ";
    *(v12 + 4) += 10;
  }

  else
  {
    v12 = llvm::raw_ostream::write(v12, ": for the ", 0xAuLL);
  }

  v17[0] = v8;
  v17[1] = v7;
  v17[2] = 0;
LABEL_17:
  v14 = *(v5 + 4);
  if ((*(v5 + 3) - v14) > 8)
  {
    *(v14 + 8) = 32;
    *v14 = *" option: ";
    *(v5 + 4) += 9;
  }

  else
  {
    v5 = llvm::raw_ostream::write(v5, " option: ", 9uLL);
  }

  llvm::Twine::print(a2, v5);
  v15 = *(v5 + 4);
  if (*(v5 + 3) == v15)
  {
    llvm::raw_ostream::write(v5, "\n", 1uLL);
  }

  else
  {
    *v15 = 10;
    ++*(v5 + 4);
  }

  return 1;
}

llvm::raw_ostream *anonymous namespace::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v11 = v13;
  for (i = xmmword_25D0A0590; v5; --v5)
  {
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v11, 32);
  }

  if (v4 <= 1)
  {
    v6 = "-";
  }

  else
  {
    v6 = "--";
  }

  v7 = 1;
  if (v4 > 1)
  {
    v7 = 2;
  }

  llvm::SmallVectorImpl<char>::append<char const*,void>(&v11, v6, &v6[v7]);
  v8 = llvm::raw_ostream::write(a1, v11, i);
  llvm::raw_ostream::operator<<(v8, *a2, *(a2 + 8));
  if (v11 != v13)
  {
    free(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::cl::Option::addOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    ++*(a1 + 8);
  }

  return (**a1)(a1);
}

llvm::raw_ostream *llvm::cl::Option::printHelpStr(uint64_t a1, uint64_t a2, size_t a3, int a4)
{
  v19[0] = a1;
  v19[1] = a2;
  LOBYTE(v16[0]) = 10;
  llvm::StringRef::split(v19, v16, 1uLL, &v17);
  v7 = llvm::outs(v6);
  v8 = llvm::raw_ostream::indent(v7, (a3 - a4));
  v9 = *(v8 + 4);
  if ((*(v8 + 3) - v9) > 2)
  {
    *(v9 + 2) = 32;
    *v9 = 11552;
    *(v8 + 4) += 3;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, " - ", 3uLL);
  }

  result = llvm::raw_ostream::operator<<(v8, v17, *(&v17 + 1));
  v11 = *(result + 4);
  if (*(result + 3) == v11)
  {
    result = llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v11 = 10;
    ++*(result + 4);
  }

  while (*(&v18 + 1))
  {
    v20 = 10;
    llvm::StringRef::split(&v18, &v20, 1uLL, v16);
    v17 = v16[0];
    v18 = v16[1];
    v13 = llvm::outs(v12);
    v14 = llvm::raw_ostream::indent(v13, a3);
    result = llvm::raw_ostream::operator<<(v14, v17, *(&v17 + 1));
    v15 = *(result + 4);
    if (*(result + 3) == v15)
    {
      result = llvm::raw_ostream::write(result, "\n", 1uLL);
    }

    else
    {
      *v15 = 10;
      ++*(result + 4);
    }
  }

  return result;
}

llvm::raw_ostream *llvm::cl::basic_parser_impl::printOptionName(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, int a3)
{
  v5 = llvm::outs(this);
  v10 = *(a2 + 1);
  v11 = 2;
  v7 = llvm::outs(v6);
  v8 = (a3 - *(a2 + 6));

  return llvm::raw_ostream::indent(v7, v8);
}

uint64_t llvm::cl::parser<llvm::cl::BOOLOrDefault>::parse(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, int *a7)
{
  if (a6 > 3)
  {
    if (a6 == 5)
    {
      if ((*a5 != 1936482662 || a5[4] != 101) && (*a5 != 1397506374 || a5[4] != 69) && (*a5 != 1936482630 || a5[4] != 101))
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if (a6 != 4 || *a5 != 1702195828 && *a5 != 1163219540 && *a5 != 1702195796)
    {
      goto LABEL_25;
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
LABEL_25:
      v16 = 1283;
      v15[0] = "'";
      v15[2] = a5;
      v15[3] = a6;
      v17[0] = v15;
      v17[2] = "' is invalid value for BOOLean argument! Try 0 or 1";
      v18 = 770;
      v14 = llvm::errs(a1);
      llvm::cl::Option::error(a2, v17, 0, 0, v14);
      return 1;
    }

    v8 = *a5;
    if (v8 != 48)
    {
      if (v8 != 49)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

LABEL_26:
    result = 0;
    v10 = 2;
    goto LABEL_27;
  }

LABEL_12:
  result = 0;
  v10 = 1;
LABEL_27:
  *a7 = v10;
  return result;
}

uint64_t llvm::cl::parser<long long>::parse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5, unint64_t a6, void *a7)
{
  v15[0] = 0;
  v17 = a5;
  v18 = a6;
  v11 = llvm::consumeSignedInteger(&v17, 0, v15, a4);
  if (v18)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    v16 = 1283;
    v15[0] = "'";
    v15[2] = a5;
    v15[3] = a6;
    v17 = v15;
    v19 = "' value invalid for llong argument!";
    v20 = 770;
    v13 = llvm::errs(v11);
    llvm::cl::Option::error(a2, &v17, 0, 0, v13);
  }

  else
  {
    *a7 = v15[0];
  }

  return v12;
}

uint64_t llvm::cl::parser<unsigned long long>::parse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5, unint64_t a6, void *a7)
{
  v15[0] = 0;
  v17 = a5;
  v18 = a6;
  v11 = llvm::consumeUnsignedInteger(&v17, 0, v15, a4);
  if (v18)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    v16 = 1283;
    v15[0] = "'";
    v15[2] = a5;
    v15[3] = a6;
    v17 = v15;
    v19 = "' value invalid for ullong argument!";
    v20 = 770;
    v13 = llvm::errs(v11);
    llvm::cl::Option::error(a2, &v17, 0, 0, v13);
  }

  else
  {
    *a7 = v15[0];
  }

  return v12;
}

BOOL parseDouble(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 261;
  v15[0] = a2;
  v15[1] = a3;
  v18 = v20;
  v19 = xmmword_25D0A05C0;
  v8 = llvm::Twine::toNullTerminatedStringRef(v15, &v18);
  v17 = 0;
  v9 = strtod(v8, &v17);
  v10 = *v17;
  if (!*v17)
  {
    *a4 = v9;
  }

  v11 = v18;
  if (v18 != v20)
  {
    free(v18);
  }

  if (v10)
  {
    v16 = 1283;
    v15[0] = "'";
    v15[2] = a2;
    v15[3] = a3;
    v18 = v15;
    *(&v19 + 1) = "' value invalid for floating point argument!";
    v20[4] = 770;
    v12 = llvm::errs(v11);
    llvm::cl::Option::error(a1, &v18, 0, 0, v12);
  }

  result = v10 != 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::cl::generic_parser_base::getOptionWidth(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v15 = v3 == 1;
    v5 = v3 + 15;
    if (v15)
    {
      v6 = 15;
    }

    else
    {
      v6 = v5;
    }

    v7 = (*(*this + 16))(this);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        (*(*this + 24))(this, v9);
        v11 = v10;
        (*(*this + 32))(this, v9);
        v13 = v12;
        v14 = (*(a2 + 5) >> 3) & 3;
        if (!v14)
        {
          v14 = (*(*a2 + 8))(a2);
        }

        v15 = v14 == 1 && v11 == 0;
        if (!v15 || v13 != 0)
        {
          v17 = v11 + 8;
          if (!v11)
          {
            v17 = 15;
          }

          if (v6 <= v17)
          {
            v6 = v17;
          }
        }

        v9 = (v9 + 1);
      }

      while (v8 != v9);
    }
  }

  else
  {
    v18 = (*(*this + 16))(this);
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v6 = 0;
      do
      {
        (*(*this + 24))(this, v20);
        if (v6 <= v21 + 8)
        {
          v6 = v21 + 8;
        }

        v20 = (v20 + 1);
      }

      while (v19 != v20);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t llvm::cl::generic_parser_base::printOptionInfo(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2, size_t a3)
{
  if (*(a2 + 3))
  {
    v6 = ((*(a2 + 5) >> 3) & 3);
    if (!v6)
    {
      v6 = (*(*a2 + 8))(a2);
    }

    if (v6 == 1)
    {
      v6 = (*(*this + 16))(this);
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        while (1)
        {
          v6 = (*(*this + 24))(this, v8);
          if (!v9)
          {
            break;
          }

          v8 = (v8 + 1);
          if (v7 == v8)
          {
            goto LABEL_28;
          }
        }

        v24 = llvm::outs(v6);
        v57 = *(a2 + 1);
        *&v58 = 2;
        v25 = *(a2 + 3);
        if (v25 == 1)
        {
          v26 = 7;
        }

        else
        {
          v26 = v25 + 7;
        }

        v6 = llvm::cl::Option::printHelpStr(*(a2 + 4), *(a2 + 5), a3, v26);
      }
    }

LABEL_28:
    v27 = llvm::outs(v6);
    v57 = *(a2 + 1);
    *&v58 = 2;
    v29 = *(v28 + 4);
    if (*(v28 + 3) - v29 > 7uLL)
    {
      *v29 = 0x3E65756C61763C3DLL;
      *(v28 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v28, "=<value>", 8uLL);
    }

    v30 = *(a2 + 3);
    if (v30 == 1)
    {
      v31 = 15;
    }

    else
    {
      v31 = v30 + 15;
    }

    llvm::cl::Option::printHelpStr(*(a2 + 4), *(a2 + 5), a3, v31);
    result = (*(*this + 16))(this);
    v55 = result;
    if (result)
    {
      v32 = 0;
      do
      {
        v33 = (*(*this + 24))(this, v32);
        v35 = v34;
        v36 = (*(*this + 32))(this, v32);
        v38 = v37;
        result = (*(a2 + 5) >> 3) & 3;
        if (!result)
        {
          result = (*(*a2 + 8))(a2);
        }

        if (result == 1 && v35 == 0 && v38 == 0)
        {
          goto LABEL_69;
        }

        v41 = llvm::outs(result);
        v42 = *(v41 + 4);
        if ((*(v41 + 3) - v42) > 4)
        {
          *(v42 + 4) = 61;
          *v42 = 538976288;
          *(v41 + 4) += 5;
        }

        else
        {
          v41 = llvm::raw_ostream::write(v41, "    =", 5uLL);
        }

        v43 = llvm::raw_ostream::operator<<(v41, v33, v35);
        if (v35)
        {
          v44 = v35 + 8;
          if (v38)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v43 = llvm::outs(v43);
          v50 = *(v43 + 4);
          if (*(v43 + 3) - v50 > 6uLL)
          {
            *(v50 + 3) = 1048147056;
            *v50 = 1886217532;
            *(v43 + 4) += 7;
          }

          else
          {
            v43 = llvm::raw_ostream::write(v43, "<empty>", 7uLL);
          }

          v44 = 15;
          if (v38)
          {
LABEL_50:
            v59[0] = v36;
            v59[1] = v38;
            LOBYTE(v56[0]) = 10;
            llvm::StringRef::split(v59, v56, 1uLL, &v57);
            v46 = llvm::outs(v45);
            v47 = llvm::raw_ostream::indent(v46, (a3 - v44));
            v48 = *(v47 + 4);
            if ((*(v47 + 3) - v48) > 2)
            {
              *(v48 + 2) = 32;
              *v48 = 11552;
              v49 = (*(v47 + 4) + 3);
              *(v47 + 4) = v49;
            }

            else
            {
              v47 = llvm::raw_ostream::write(v47, " - ", 3uLL);
              v49 = *(v47 + 4);
            }

            if (*(v47 + 3) - v49 > 1uLL)
            {
              *v49 = 8224;
              *(v47 + 4) += 2;
            }

            else
            {
              v47 = llvm::raw_ostream::write(v47, "  ", 2uLL);
            }

            while (1)
            {
              result = llvm::raw_ostream::operator<<(v47, v57, *(&v57 + 1));
              v53 = *(result + 32);
              if (*(result + 24) == v53)
              {
                result = llvm::raw_ostream::write(result, "\n", 1uLL);
              }

              else
              {
                *v53 = 10;
                ++*(result + 32);
              }

              if (!*(&v58 + 1))
              {
                break;
              }

              v60 = 10;
              llvm::StringRef::split(&v58, &v60, 1uLL, v56);
              v57 = v56[0];
              v58 = v56[1];
              v52 = llvm::outs(v51);
              v47 = llvm::raw_ostream::indent(v52, (a3 + 2));
            }

            goto LABEL_69;
          }
        }

        result = llvm::outs(v43);
        v54 = *(result + 32);
        if (v54 >= *(result + 24))
        {
          result = llvm::raw_ostream::write(result, 10);
        }

        else
        {
          *(result + 32) = v54 + 1;
          *v54 = 10;
        }

LABEL_69:
        v32 = (v32 + 1);
      }

      while (v32 != v55);
    }
  }

  else
  {
    if (*(a2 + 5))
    {
      v10 = llvm::outs(this);
      v11 = *(v10 + 4);
      if (*(v10 + 3) - v11 > 1uLL)
      {
        *v11 = 8224;
        *(v10 + 4) += 2;
      }

      else
      {
        v10 = llvm::raw_ostream::write(v10, "  ", 2uLL);
      }

      v12 = llvm::raw_ostream::operator<<(v10, *(a2 + 4), *(a2 + 5));
      v13 = *(v12 + 4);
      if (v13 >= *(v12 + 3))
      {
        llvm::raw_ostream::write(v12, 10);
      }

      else
      {
        *(v12 + 4) = v13 + 1;
        *v13 = 10;
      }
    }

    result = (*(*this + 16))(this);
    if (result)
    {
      v15 = result;
      v16 = 0;
      do
      {
        v17 = (*(*this + 24))(this, v16);
        v19 = v18;
        v20 = llvm::outs(v17);
        v21 = *(v20 + 4);
        if (*(v20 + 3) - v21 > 3uLL)
        {
          *v21 = 538976288;
          *(v20 + 4) += 4;
        }

        else
        {
          v20 = llvm::raw_ostream::write(v20, "    ", 4uLL);
        }

        *&v57 = v17;
        *(&v57 + 1) = v19;
        *&v58 = 2;
        v22 = (*(*this + 32))(this, v16);
        result = llvm::cl::Option::printHelpStr(v22, v23, a3, v19 + 8);
        v16 = (v16 + 1);
      }

      while (v15 != v16);
    }
  }

  return result;
}

llvm::raw_ostream *llvm::cl::generic_parser_base::printGenericOptionDiff(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2, const llvm::cl::GenericOptionValue *a3, const llvm::cl::GenericOptionValue *a4, int a5)
{
  v10 = llvm::outs(this);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 1uLL)
  {
    *v11 = 8224;
    *(v10 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, "  ", 2uLL);
  }

  v38 = *(a2 + 1);
  v39 = 2;
  v13 = llvm::outs(v12);
  llvm::raw_ostream::indent(v13, (a5 - *(a2 + 6)));
  v14 = (*(*this + 16))(this);
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = "= *unknown option value*\n";
    v18 = 25;
    while (1)
    {
      v19 = (*(*this + 48))(this, v16);
      v14 = (**a3)(a3, v19);
      if (v14)
      {
        break;
      }

      v16 = (v16 + 1);
      if (v15 == v16)
      {
        goto LABEL_24;
      }
    }

    v20 = llvm::outs(v14);
    v21 = v20;
    v22 = *(v20 + 4);
    if (*(v20 + 3) - v22 > 1uLL)
    {
      *v22 = 8253;
      *(v20 + 4) += 2;
    }

    else
    {
      v21 = llvm::raw_ostream::write(v20, "= ", 2uLL);
    }

    v23 = (*(*this + 24))(this, v16);
    llvm::raw_ostream::operator<<(v21, v23, v24);
    v25 = (*(*this + 24))(this, v16);
    if (v26 <= 8)
    {
      v27 = 8 - v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = llvm::outs(v25);
    v29 = llvm::raw_ostream::indent(v28, v27);
    v30 = *(v29 + 4);
    if ((*(v29 + 3) - v30) > 0xA)
    {
      *(v30 + 7) = 540701804;
      *v30 = *" (default: ";
      *(v29 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v29, " (default: ", 0xBuLL);
    }

    v31 = 0;
    v17 = ")\n";
    v18 = 2;
    while (1)
    {
      v32 = (*(*this + 48))(this, v31);
      v14 = (**a4)(a4, v32);
      if (v14)
      {
        break;
      }

      v31 = (v31 + 1);
      if (v15 == v31)
      {
        goto LABEL_24;
      }
    }

    v33 = llvm::outs(v14);
    v34 = (*(*this + 24))(this, v31);
    v14 = llvm::raw_ostream::operator<<(v33, v34, v35);
    v17 = ")\n";
    v18 = 2;
  }

  else
  {
    v17 = "= *unknown option value*\n";
    v18 = 25;
  }

LABEL_24:
  v36 = llvm::outs(v14);

  return llvm::raw_ostream::operator<<(v36, v17, v18);
}

void llvm::cl::parser<BOOL>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, unsigned int a3, uint64_t a4, int a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a5);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_286E79D28;
  v30 = &v31;
  llvm::raw_ostream::SetUnbuffered(&v23);
  llvm::write_integer(&v23, a3, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v33 >= 0)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v31;
  }

  if (v33 >= 0)
  {
    v11 = HIBYTE(v33);
  }

  else
  {
    v11 = v32;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v33);
  if ((SHIBYTE(v33) & 0x8000000000000000) != 0)
  {
    v13 = v32;
    if (v32 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v33) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a4 + 9);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    v19 = llvm::write_integer(v19, *(a4 + 8), 0, 0);
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }
}

void llvm::cl::parser<llvm::cl::BOOLOrDefault>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, int a3, uint64_t a4, int a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a5);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_286E79D28;
  v30 = &v31;
  llvm::raw_ostream::SetUnbuffered(&v23);
  llvm::write_integer(&v23, a3, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v33 >= 0)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v31;
  }

  if (v33 >= 0)
  {
    v11 = HIBYTE(v33);
  }

  else
  {
    v11 = v32;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v33);
  if ((SHIBYTE(v33) & 0x8000000000000000) != 0)
  {
    v13 = v32;
    if (v32 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v33) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a4 + 12);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    v19 = llvm::write_integer(v19, *(a4 + 8), 0, 0);
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }
}

void llvm::cl::parser<long long>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, unint64_t a3, uint64_t a4, int a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a5);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_286E79D28;
  v30 = &v31;
  llvm::raw_ostream::SetUnbuffered(&v23);
  llvm::write_integer(&v23, a3, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v33 >= 0)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v31;
  }

  if (v33 >= 0)
  {
    v11 = HIBYTE(v33);
  }

  else
  {
    v11 = v32;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v33);
  if ((SHIBYTE(v33) & 0x8000000000000000) != 0)
  {
    v13 = v32;
    if (v32 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v33) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a4 + 16);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    v19 = llvm::write_integer(v19, *(a4 + 8), 0, 0);
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }
}

void llvm::cl::parser<unsigned int>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, unsigned int a3, uint64_t a4, int a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a5);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_286E79D28;
  v30 = &v31;
  llvm::raw_ostream::SetUnbuffered(&v23);
  write_unsigned<unsigned long long>(&v23, a3, 0, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v33 >= 0)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v31;
  }

  if (v33 >= 0)
  {
    v11 = HIBYTE(v33);
  }

  else
  {
    v11 = v32;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v33);
  if ((SHIBYTE(v33) & 0x8000000000000000) != 0)
  {
    v13 = v32;
    if (v32 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v33) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a4 + 12);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    v19 = write_unsigned<unsigned long long>(v19, *(a4 + 8), 0, 0, 0);
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }
}

void llvm::cl::parser<unsigned long long>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, unint64_t a3, uint64_t a4, int a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a5);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_286E79D28;
  v30 = &v31;
  llvm::raw_ostream::SetUnbuffered(&v23);
  write_unsigned<unsigned long long>(&v23, a3, 0, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v33 >= 0)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v31;
  }

  if (v33 >= 0)
  {
    v11 = HIBYTE(v33);
  }

  else
  {
    v11 = v32;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v33);
  if ((SHIBYTE(v33) & 0x8000000000000000) != 0)
  {
    v13 = v32;
    if (v32 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v33) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a4 + 16);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    v19 = write_unsigned<unsigned long long>(v19, *(a4 + 8), 0, 0, 0);
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }
}

void llvm::cl::parser<double>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, uint64_t a3, int a4, double a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a4);
  __p = 0;
  v32 = 0;
  v33 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_286E79D28;
  p_p = &__p;
  llvm::raw_ostream::SetUnbuffered(&v23);
  llvm::write_double(&v23, 0, 0, 0, a5);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v33 >= 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p;
  }

  if (v33 >= 0)
  {
    v11 = HIBYTE(v33);
  }

  else
  {
    v11 = v32;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v33);
  if ((SHIBYTE(v33) & 0x8000000000000000) != 0)
  {
    v13 = v32;
    if (v32 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v33) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a3 + 16);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    llvm::write_double(v19, 0, 0, 0, *(a3 + 8));
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }
}

llvm::raw_ostream *llvm::cl::parser<std::string>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, const void *a3, size_t a4, uint64_t a5, int a6)
{
  v9 = llvm::cl::basic_parser_impl::printOptionName(a1, a2, a6);
  v10 = llvm::outs(v9);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 1uLL)
  {
    *v11 = 8253;
    *(v10 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, "= ", 2uLL);
  }

  v12 = llvm::raw_ostream::operator<<(v10, a3, a4);
  if (a4 >= 8)
  {
    v13 = 0;
  }

  else
  {
    v13 = (8 - a4);
  }

  v14 = llvm::outs(v12);
  v15 = llvm::raw_ostream::indent(v14, v13);
  v16 = *(v15 + 4);
  if ((*(v15 + 3) - v16) > 0xA)
  {
    *(v16 + 7) = 540701804;
    *v16 = *" (default: ";
    *(v15 + 4) += 11;
  }

  else
  {
    v15 = llvm::raw_ostream::write(v15, " (default: ", 0xBuLL);
  }

  v17 = *(a5 + 32);
  v18 = llvm::outs(v15);
  if (v17 == 1)
  {
    v21 = *(a5 + 8);
    v20 = a5 + 8;
    v19 = v21;
    v22 = *(v20 + 23);
    if (v22 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v19;
    }

    if (v22 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    goto LABEL_19;
  }

  v25 = *(v18 + 4);
  if ((*(v18 + 3) - v25) <= 0xB)
  {
    v23 = "*no default*";
    v24 = 12;
LABEL_19:
    v18 = llvm::raw_ostream::write(v18, v23, v24);
    goto LABEL_21;
  }

  *(v25 + 8) = 712273013;
  *v25 = *"*no default*";
  *(v18 + 4) += 12;
LABEL_21:
  result = llvm::outs(v18);
  v27 = *(result + 4);
  if (*(result + 3) - v27 > 1uLL)
  {
    *v27 = 2601;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, ")\n", 2uLL);
  }

  return result;
}

double llvm::cl::basic_parser_impl::printOptionNoValue(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, int a3)
{
  v3 = llvm::cl::basic_parser_impl::printOptionName(this, a2, a3);
  v4 = llvm::outs(v3);
  v5 = *(v4 + 4);
  if (*(v4 + 3) - v5 > 0x1DuLL)
  {
    qmemcpy(v5, "= *cannot print option value*\n", 30);
    result = *"t option value*\n";
    *(v4 + 4) += 30;
  }

  else
  {

    llvm::raw_ostream::write(v4, "= *cannot print option value*\n", 0x1EuLL);
  }

  return result;
}

void llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt(void **a1)
{
  *a1 = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100]((a1 + 19));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E79210;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100]((a1 + 19));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<int,false,llvm::cl::parser<int>>::~opt(void **a1)
{
  *a1 = &unk_286E79278;
  std::__function::__value_func<void ()(int const&)>::~__value_func[abi:nn200100]((a1 + 19));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E79278;
  std::__function::__value_func<void ()(int const&)>::~__value_func[abi:nn200100]((a1 + 19));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_286E792E0;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 192);
  *(a1 + 144) = &unk_286E75E90;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E792E0;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 192);
  *(a1 + 144) = &unk_286E75E90;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt(void **a1)
{
  *a1 = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((a1 + 19));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((a1 + 19));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::CommandLineParser::forEachSubCommand(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v5 = *(a2 + 100) - *(a2 + 104);
  if (!v5)
  {
    v6 = &_MergedGlobals_9;
LABEL_3:
    if (!atomic_load_explicit(v6, memory_order_acquire))
    {
      v30 = a3;
      llvm::ManagedStaticBase::RegisterManagedStatic(v6, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      a3 = v30;
    }

    v7 = *v6;

    a3(a4, v7);
    return;
  }

  v9 = a2 + 88;
  if (v5 == 1)
  {
    v11 = *(a2 + 88);
    v12 = 8;
    if (*(a2 + 108))
    {
      v12 = 12;
    }

    v13 = *(v9 + v12);
    if (v13)
    {
      v14 = 8 * v13;
      v15 = &v11[v13];
      while (*v11 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v11;
        v14 -= 8;
        if (!v14)
        {
          v11 = v15;
          break;
        }
      }
    }

    v16 = *v11;
    v6 = &qword_27FC1D928;
    if (!atomic_load_explicit(&qword_27FC1D928, memory_order_acquire))
    {
      v31 = a3;
      llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1D928, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      a3 = v31;
    }

    if (v16 == qword_27FC1D928)
    {
      v23 = *(a1 + 264);
      v24 = 8;
      if (*(a1 + 284))
      {
        v24 = 12;
      }

      v25 = *(a1 + 264 + v24);
      if (v25)
      {
        v26 = 8 * v25;
        v27 = *(a1 + 264);
        while (*v27 >= 0xFFFFFFFFFFFFFFFELL)
        {
          ++v27;
          v26 -= 8;
          if (!v26)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        v27 = *(a1 + 264);
      }

      v28 = (v23 + 8 * v25);
      if (v27 != v28)
      {
        v33 = a3;
LABEL_45:
        v29 = *v27++;
        v33(a4, v29);
        a3 = v33;
        while (v27 != v28)
        {
          if (*v27 < 0xFFFFFFFFFFFFFFFELL)
          {
            if (v27 != v28)
            {
              goto LABEL_45;
            }

            goto LABEL_3;
          }

          ++v27;
        }
      }

      goto LABEL_3;
    }
  }

  v17 = 8;
  if (*(a2 + 108))
  {
    v17 = 12;
  }

  v18 = *(v9 + v17);
  if (v18)
  {
    v19 = 8 * v18;
    for (i = *(a2 + 88); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v19 -= 8;
      if (!v19)
      {
        return;
      }
    }
  }

  else
  {
    i = *(a2 + 88);
  }

  v21 = *(a2 + 88) + 8 * v18;
  if (i != v21)
  {
    v32 = a3;
LABEL_29:
    v22 = *i++;
    v32(a4, v22);
    while (i != v21)
    {
      if (*i < 0xFFFFFFFFFFFFFFFELL)
      {
        if (i != v21)
        {
          goto LABEL_29;
        }

        return;
      }

      ++i;
    }
  }
}

uint64_t anonymous namespace::CommandLineParser::addLiteralOption(uint64_t result, uint64_t a2, const unsigned __int8 *a3, const void *a4, size_t a5)
{
  if (!*(a2 + 24))
  {
    v7 = result;
    v12[0] = a4;
    v12[1] = a5;
    v12[2] = a2;
    result = llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::insert((a3 + 128), v12, a3);
    if ((result & 1) == 0)
    {
      v8 = llvm::errs(result);
      v9 = llvm::raw_ostream::operator<<(v8, v7);
      v10 = llvm::raw_ostream::operator<<(v9, ": CommandLine Error: Option '");
      v11 = llvm::raw_ostream::operator<<(v10, a4, a5);
      llvm::raw_ostream::operator<<(v11, "' registered more than once!\n");
      llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
    }
  }

  return result;
}

uint64_t llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::insert(llvm::StringMapImpl *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = llvm::xxh3_64bits(*a2, v5, a3);
  v8 = llvm::StringMapImpl::LookupBucketFor(a1, v6, v5, v7);
  v9 = *a1;
  v10 = v8;
  v11 = *(*a1 + 8 * v8);
  if (v11 == -8)
  {
    --*(a1 + 4);
  }

  else if (v11)
  {
    return 0;
  }

  buffer = llvm::allocate_buffer((v5 + 17), 8uLL);
  v13 = buffer;
  v14 = (buffer + 2);
  if (v5)
  {
    memcpy(buffer + 2, v6, v5);
  }

  v14[v5] = 0;
  v15 = *(a2 + 16);
  *v13 = v5;
  v13[1] = v15;
  *(v9 + 8 * v10) = v13;
  ++*(a1 + 3);
    ;
  }

  return 1;
}

void llvm::SmallVectorTemplateBase<llvm::cl::Option *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

void anonymous namespace::CommandLineParser::addOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = a1;
  if ((*(a2 + 10) & 0x2000) != 0)
  {
    v7 = *(a2 + 16);
    v8 = llvm::xxh3_64bits(v7, *(a2 + 24), a3);
    Key = llvm::StringMapImpl::FindKey((a3 + 128), v7, v5, v8);
    if (Key != -1 && Key != *(a3 + 136))
    {
      return;
    }
  }

  v21 = *(a2 + 16);
  v22 = a2;
  a1 = llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::insert((a3 + 128), &v21, a3);
  if ((a1 & 1) == 0)
  {
    v11 = llvm::errs(a1);
    v12 = *(v6 + 23);
    if (v12 >= 0)
    {
      v13 = v6;
    }

    else
    {
      v13 = *v6;
    }

    if (v12 >= 0)
    {
      v14 = *(v6 + 23);
    }

    else
    {
      v14 = *(v6 + 8);
    }

    v15 = llvm::raw_ostream::write(v11, v13, v14);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 0x1CuLL)
    {
      qmemcpy(v16, ": CommandLine Error: Option '", 29);
      *(v15 + 4) += 29;
    }

    else
    {
      v15 = llvm::raw_ostream::write(v15, ": CommandLine Error: Option '", 0x1DuLL);
    }

    a1 = llvm::raw_ostream::operator<<(v15, *(a2 + 16), *(a2 + 24));
    v17 = *(a1 + 32);
    if (*(a1 + 24) - v17 > 0x1CuLL)
    {
      qmemcpy(v17, "' registered more than once!\n", 29);
      *(a1 + 32) += 29;
    }

    else
    {
      a1 = llvm::raw_ostream::write(a1, "' registered more than once!\n", 0x1DuLL);
    }

    v10 = 1;
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  v18 = *(a2 + 10);
  if ((v18 & 0x180) == 0x80)
  {
    v19 = a3 + 32;
    goto LABEL_28;
  }

  if ((*(a2 + 10) & 0x800) != 0)
  {
    v19 = a3 + 80;
LABEL_28:
    llvm::SmallVectorTemplateBase<llvm::cl::Option *,true>::push_back(v19, a2);
    if ((v10 & 1) == 0)
    {
      return;
    }

LABEL_33:
    llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
  }

  if ((v18 & 7) == 4)
  {
    if (*(a3 + 152))
    {
      *&v21 = "Cannot specify more than one option with cl::ConsumeAfter!";
      v23 = 259;
      v20 = llvm::errs(a1);
      llvm::cl::Option::error(a2, &v21, 0, 0, v20);
      *(a3 + 152) = a2;
    }

    else
    {
      *(a3 + 152) = a2;
      if ((v10 & 1) == 0)
      {
        return;
      }
    }

    goto LABEL_33;
  }

  if (v10)
  {
    goto LABEL_33;
  }
}

uint64_t llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  if (Key == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = Key;
  }

  return *a1 + 8 * v8;
}

const unsigned __int8 ***llvm::function_ref<void ()(llvm::cl::SubCommand &)>::callback_fn<anonymous namespace::CommandLineParser::updateArgStr(llvm::cl::Option *,llvm::StringRef)::{lambda(llvm::cl::SubCommand &)#1}>(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v4 = *a1;
  v5 = **(a1 + 8);
  v12 = **(a1 + 16);
  v13 = v5;
  v6 = llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::insert((a2 + 32), &v12, a3);
  if ((v6 & 1) == 0)
  {
    v8 = llvm::errs(v6);
    v9 = llvm::raw_ostream::operator<<(v8, v4);
    v10 = llvm::raw_ostream::operator<<(v9, ": CommandLine Error: Option '");
    v11 = llvm::raw_ostream::operator<<(v10, *(v5 + 16), *(v5 + 24));
    llvm::raw_ostream::operator<<(v11, "' registered more than once!\n");
    llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
  }

  result = llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::find((a2 + 32), *(v5 + 16), *(v5 + 24));
  if ((*(a2 + 16) + 8 * a2[34]) != result)
  {
    llvm::StringMapImpl::RemoveKey((a2 + 32), *result + a2[37], **result);

    JUMPOUT(0x25F891030);
  }

  return result;
}

uint64_t llvm::SmallPtrSetImplBase::erase_imp(const void ***this, const void *a2)
{
  if (*(this + 20) == 1)
  {
    v3 = *(this + 3);
    if (!v3)
    {
      return 0;
    }

    v4 = *this;
    v5 = 8 * v3;
    for (i = *this; *i != a2; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return 0;
      }
    }

    v8 = v3 - 1;
    *(this + 3) = v8;
    *i = v4[v8];
  }

  else
  {
    result = llvm::SmallPtrSetImplBase::doFind(this, a2);
    if (!result)
    {
      return result;
    }

    *result = -2;
    ++*(this + 4);
  }

  return 1;
}

uint64_t CommaSeparateAndAddOccurrence(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, size_t a6, uint64_t a7)
{
  v8 = a6;
  v9 = a5;
  if ((a1[5] & 0x200) != 0 && a6 && (v14 = memchr(a5, 44, a6)) != 0 && (v15 = v14 - v9, v14 - v9 != -1))
  {
    while (1)
    {
      v16 = v8 >= v15 ? v15 : v8;
      if ((*(*a1 + 80))(a1, a2, a3, a4, v9, v16, a7))
      {
        return 1;
      }

      if (v8 >= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v8;
      }

      v9 += v17;
      v8 -= v17;
      if (v8)
      {
        v18 = memchr(v9, 44, v8);
        v15 = v18 - v9;
        if (v18 && v15 != -1)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
LABEL_18:
    v20 = *(*a1 + 80);

    return v20(a1, a2, a3, a4, v9, v8, a7);
  }
}

void **llvm::SmallPtrSetImplBase::clear(void **this)
{
  v1 = this;
  if (*(this + 20))
  {
    goto LABEL_8;
  }

  v2 = *(this + 2);
  if (v2 < 0x21 || 4 * (*(this + 3) - *(this + 4)) >= v2)
  {
    this = memset(*this, 255, 8 * v2);
LABEL_8:
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
    return this;
  }

  return llvm::SmallPtrSetImplBase::shrink_and_clear(this);
}

uint64_t std::__function::__value_func<void ()(int const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(unsigned int const&)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<void ()(int const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(int const&)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object_deleter<anonymous namespace::CommandLineParser>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 284) & 1) == 0)
    {
      free(*(result + 264));
    }

    if ((*(v1 + 132) & 1) == 0)
    {
      free(*(v1 + 112));
    }

    v2 = *(v1 + 64);
    if (v2 != (v1 + 80))
    {
      free(v2);
    }

    v3 = *(v1 + 40);
    if (v3)
    {
      *(v1 + 48) = v3;
      operator delete(v3);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x25F891040);
  }

  return result;
}

void *llvm::object_deleter<llvm::cl::SubCommand>::call(void *result)
{
  if (result)
  {
    v1 = result;
    llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap((result + 16));
    v2 = v1[10];
    if (v2 != v1 + 12)
    {
      free(v2);
    }

    v3 = v1[4];
    if (v3 != v1 + 6)
    {
      free(v3);
    }

    JUMPOUT(0x25F891040);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(void *a1, __int16 a2)
{
  v4 = a1[1];
  if ((v4 + 1) > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v4 + 1, 2);
    v4 = a1[1];
  }

  *(*a1 + 2 * v4) = a2;
  ++a1[1];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void llvm::CrashRecoveryContext::~CrashRecoveryContext(llvm::CrashRecoveryContext *this)
{
  v2 = *(this + 1);
  v4 = *IsRecoveringFromCrash;
  *IsRecoveringFromCrash = this;
  if (v2)
  {
    do
    {
      v5 = *(v2 + 32);
      *(v2 + 16) = 1;
      (*(*v2 + 16))(v2);
      (*(*v2 + 8))(v2);
      v2 = v5;
    }

    while (v5);
  }

  *IsRecoveringFromCrash = v4;
  v6 = *this;
  if (*this)
  {
    if ((v6[26] & 2) == 0)
    {
      v7 = *v6;
      *v8 = v9;
    }

    if (*(v6 + 239) < 0)
    {
      operator delete(v6[27]);
    }

    MEMORY[0x25F891040](v6, 0x1072C40897D38BCLL);
  }
}

void llvm::CrashRecoveryContext::Enable(llvm::CrashRecoveryContext *this)
{
  {
    v1 = 0;
    v3.__sigaction_u.__sa_handler = CrashRecoverySignalHandler;
    *&v3.sa_mask = 0;
    v2 = &PrevActions;
    do
    {
      sigaction(Signals[v1++], &v3, v2++);
    }

    while (v1 != 6);
  }
}

void anonymous namespace::getCrashRecoveryContextMutex(_anonymous_namespace_ *this)
{
  {
  }
}

void llvm::CrashRecoveryContext::Disable(llvm::CrashRecoveryContext *this)
{
  {
    v1 = 0;
    v2 = &PrevActions;
    do
    {
      sigaction(Signals[v1++], v2++, 0);
    }

    while (v1 != 6);
  }
}

uint64_t llvm::CrashRecoveryContext::RunSafely(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  {
    operator new();
  }

  a2(a3);
  return 1;
}

void anonymous namespace::CrashRecoveryContextImpl::HandleCrash(_anonymous_namespace_::CrashRecoveryContextImpl *this, int a2, llvm::sys *a3)
{
  if ((*(this + 208) & 4) != 0)
  {
    v11 = 0;
    v15 = 0;
    v16 = 1;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v10 = &unk_286E79D28;
    v17 = this + 216;
    llvm::raw_ostream::SetUnbuffered(&v10);
    llvm::raw_ostream::~raw_ostream(&v10);
  }

  v6 = *this;
  *v7 = v8;
  *(this + 208) |= 1u;
  v9 = *(this + 1);
  if (*(v9 + 24) == 1)
  {
    llvm::sys::CleanupOnSignal(a3);
    v9 = *(this + 1);
  }

  *(v9 + 20) = a2;
  if ((*(this + 208) & 8) != 0)
  {
    longjmp(this + 4, 1);
  }
}

uint64_t RunSafelyOnThread_Dispatch(void *a1)
{
  if (*(a1 + 24) == 1)
  {
    setpriority(3, 0, 4096);
  }

  result = llvm::CrashRecoveryContext::RunSafely(*(a1 + 2), *a1, *(a1 + 1));
  *(a1 + 25) = result;
  return result;
}

void CrashRecoverySignalHandler(int a1)
{
  v3 = *v2;
  if (*v2)
  {
    v4 = 1 << (a1 - 1);
    if (a1 > 32)
    {
      v4 = 0;
    }

    v6 = v4;
    sigprocmask(2, &v6, 0);
    if (a1 == 13)
    {
      v5 = 74;
    }

    else
    {
      v5 = a1 + 128;
    }
  }

  else
  {
    llvm::CrashRecoveryContext::Disable(v2);

    raise(a1);
  }
}

uint64_t llvm::thread::ThreadProxy<std::tuple<void (*)(void *),anonymous namespace::RunSafelyOnThreadInfo *>>(uint64_t a1)
{
  (*a1)(*(a1 + 8));
  MEMORY[0x25F891040](a1, 0xA0C40BD48D6D6);
  return 0;
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v11 = 0;
  v8 = llvm::cl::parser<BOOL>::parse((a1 + 144), a1, a3, a4, a5, a6, &v11);
  if (v8)
  {
    return v8;
  }

  **(a1 + 120) = v11;
  *(a1 + 12) = a2;
  v9 = *(a1 + 176);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v11);
    return v8;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::getValueExpectedFlagDefault();
}

void llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt(void **a1)
{
  *a1 = &unk_286E793D0;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((a1 + 19));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E793D0;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((a1 + 19));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 137) != 1 || *(a1 + 136) != **(a1 + 120))
  {
    v8 = v3;
    v9 = v4;
    v5 = **(a1 + 120);
    v7 = *(a1 + 136);
    v6 = &unk_286E76000;
    llvm::cl::parser<BOOL>::printOptionDiff((a1 + 144), a1, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::setDefault(uint64_t result)
{
  if (*(result + 137) == 1)
  {
    v1 = *(result + 136);
  }

  else
  {
    v1 = 0;
  }

  **(result + 120) = v1;
  return result;
}

uint64_t llvm::cl::opt_storage<BOOL,true,false>::setLocation(llvm *a1, uint64_t a2, _BYTE *a3)
{
  if (*a1)
  {
    v7 = "cl::location(x) specified more than once!";
    v8 = 259;
    v4 = llvm::errs(a1);
    return llvm::cl::Option::error(a2, &v7, 0, 0, v4);
  }

  else
  {
    result = 0;
    *a1 = a3;
    *(a1 + 17) = 1;
    *(a1 + 16) = *a3;
  }

  return result;
}

void llvm::logAllUnhandledErrors(uint64_t **a1, llvm::raw_ostream *a2, llvm::Twine *a3)
{
  if (*a1)
  {
    llvm::Twine::print(a3, a2);
    v5 = *a1;
    *a1 = 0;
    v15 = a2;
    if (v5)
    {
      if ((*(*v5 + 48))(v5, &llvm::ErrorList::ID))
      {
        v8 = v5[1];
        v9 = v5[2];
        if (v8 == v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = 0;
          do
          {
            v19 = v10;
            v11 = *v8;
            *v8 = 0;
            v17 = v11;
            llvm::handleErrorImpl<llvm::logAllUnhandledErrors(llvm::Error,llvm::raw_ostream &,llvm::Twine)::$_0>(&v18, &v17, &v15);
            llvm::ErrorList::join(&v19, &v18, &v20);
            v10 = v20;
            v20 = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }

            v12 = v17;
            v17 = 0;
            if (v12)
            {
              (*(*v12 + 8))(v12);
            }

            if (v19)
            {
              (*(*v19 + 8))(v19);
            }

            ++v8;
          }

          while (v8 != v9);
        }

        v16 = v10;
        (*(*v5 + 8))(v5, v6, v7);
      }

      else
      {
        v20 = v5;
        llvm::handleErrorImpl<llvm::logAllUnhandledErrors(llvm::Error,llvm::raw_ostream &,llvm::Twine)::$_0>(&v16, &v20, &v15);
        if (v20)
        {
          (*(*v20 + 8))(v20, v13, v14);
        }
      }
    }

    else
    {
      v16 = 0;
    }
  }
}

uint64_t llvm::toString@<X0>(uint64_t **a1@<X0>, std::string *a2@<X8>)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v33 = v35;
  v34 = 0x200000000;
  v3 = *a1;
  *a1 = 0;
  v27 = &v33;
  if (!v3)
  {
    v28 = 0;
    goto LABEL_19;
  }

  if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
  {
    v4 = v3[1];
    v5 = v3[2];
    if (v4 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v31 = v6;
        v7 = *v4;
        *v4 = 0;
        v29 = v7;
        llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(&v30, &v29, &v27);
        llvm::ErrorList::join(&v31, &v30, &v32);
        v6 = v32;
        v32 = 0;
        if (v30)
        {
          (*(*v30 + 8))(v30);
        }

        v8 = v29;
        v29 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        if (v31)
        {
          (*(*v31 + 8))(v31);
        }

        ++v4;
      }

      while (v4 != v5);
    }

    v28 = v6;
    v9 = *(*v3 + 8);
  }

  else
  {
    v32 = v3;
    llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(&v28, &v32, &v27);
    if (!v32)
    {
      goto LABEL_19;
    }

    v9 = *(*v32 + 8);
  }

  v9();
LABEL_19:
  v10 = v33;
  v11 = v34;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (v11)
  {
    v12 = 24 * v11;
    v13 = v11 - 1;
    v14 = v10 + 23;
    v15 = 24 * v11;
    do
    {
      v16 = *v14;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v14 - 15);
      }

      v13 += v16;
      v14 += 24;
      v15 -= 24;
    }

    while (v15);
    std::string::reserve(a2, v13);
    v17 = *(v10 + 23);
    if (v17 >= 0)
    {
      v18 = v10;
    }

    else
    {
      v18 = *v10;
    }

    if (v17 >= 0)
    {
      v19 = *(v10 + 23);
    }

    else
    {
      v19 = v10[1];
    }

    std::string::append(a2, v18, v19);
    if (v11 != 1)
    {
      v20 = (v10 + 3);
      v21 = v12 - 24;
      do
      {
        std::string::append(a2, "\n", 1uLL);
        v22 = v20[23];
        if (v22 >= 0)
        {
          v23 = v20;
        }

        else
        {
          v23 = *v20;
        }

        if (v22 >= 0)
        {
          v24 = *(v20 + 23);
        }

        else
        {
          v24 = *(v20 + 1);
        }

        std::string::append(a2, v23, v24);
        v20 += 24;
        v21 -= 24;
      }

      while (v21);
    }
  }

  result = llvm::SmallVector<std::string,2u>::~SmallVector(&v33);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void getErrorErrorCat(void)
{
  {
  }
}

uint64_t llvm::FileError::convertToErrorCode(llvm::FileError *this)
{
  v1 = (*(**(this + 6) + 32))(*(this + 6));
  v3 = v2;
  getErrorErrorCat();
  if (v3 == &getErrorErrorCat(void)::ErrorErrorCat && v1 == 3)
  {
    getErrorErrorCat();
    return 2;
  }

  return v1;
}

uint64_t llvm::errorCodeToError@<X0>(llvm *this@<X0>, std::error_code a2@<0:X1, 8:X2>, void *a3@<X8>)
{
  if (this)
  {
    operator new();
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t llvm::errorToErrorCode(uint64_t **a1)
{
  v15.__val_ = 0;
  v15.__cat_ = std::system_category();
  v2 = *a1;
  *a1 = 0;
  v14 = &v15;
  if (!v2)
  {
    v16 = 0;
    goto LABEL_19;
  }

  if ((*(*v2 + 48))(v2, &llvm::ErrorList::ID))
  {
    v3 = v2[1];
    v4 = v2[2];
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v11.__r_.__value_.__r.__words[0] = v5;
        v6 = *v3;
        *v3 = 0;
        v17 = v6;
        llvm::handleErrorImpl<llvm::errorToErrorCode(llvm::Error)::$_0>(&v18, &v17, &v14);
        llvm::ErrorList::join(&v11, &v18, v12);
        v5 = v12[0];
        v12[0] = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        v7 = v17;
        v17 = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        if (v11.__r_.__value_.__r.__words[0])
        {
          (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
        }

        ++v3;
      }

      while (v3 != v4);
    }

    v16 = v5;
    v8 = *(*v2 + 8);
  }

  else
  {
    v12[0] = v2;
    llvm::handleErrorImpl<llvm::errorToErrorCode(llvm::Error)::$_0>(&v16, v12, &v14);
    if (!v12[0])
    {
      goto LABEL_19;
    }

    v8 = *(*v12[0] + 8);
  }

  v8();
LABEL_19:
  getErrorErrorCat();
  if (v15.__cat_ == &getErrorErrorCat(void)::ErrorErrorCat && v15.__val_ == 3)
  {
    std::error_code::message(&v11, &v15);
    v13 = 260;
    v12[0] = &v11;
    llvm::report_fatal_error(v12, 1);
  }

  return *&v15.__val_;
}

void llvm::StringError::log(const std::error_code *this, llvm::raw_ostream *a2)
{
  if (LOBYTE(this[3].__val_) == 1)
  {
    cat_high = SHIBYTE(this[1].__cat_);
    if (cat_high >= 0)
    {
      p_cat = &this->__cat_;
    }

    else
    {
      p_cat = this->__cat_;
    }

    if (cat_high >= 0)
    {
      v6 = HIBYTE(this[1].__cat_);
    }

    else
    {
      v6 = *&this[1].__val_;
    }

    llvm::raw_ostream::write(a2, p_cat, v6);
  }

  else
  {
    std::error_code::message(&v12, this + 2);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v12;
    }

    else
    {
      v7 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    llvm::raw_ostream::write(a2, v7, size);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    v9 = SHIBYTE(this[1].__cat_);
    if (v9 < 0)
    {
      v9 = *&this[1].__val_;
    }

    if (v9)
    {
      std::operator+<char>();
      v10 = (v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v12 : v12.__r_.__value_.__r.__words[0];
      v11 = (v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v12.__r_.__value_.__r.__words[2]) : v12.__r_.__value_.__l.__size_;
      llvm::raw_ostream::write(a2, v10, v11);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }
    }
  }
}

uint64_t llvm::raw_string_ostream::raw_string_ostream(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_286E79D28;
  *(a1 + 48) = a2;
  llvm::raw_ostream::SetUnbuffered(a1);
  return a1;
}

void llvm::ErrorInfoBase::message(llvm::ErrorInfoBase *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v8 = 0;
  v9 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v3 = &unk_286E79D28;
  v10 = a2;
  llvm::raw_ostream::SetUnbuffered(&v3);
  (*(*this + 16))(this, &v3);
  llvm::raw_ostream::~raw_ostream(&v3);
}

void llvm::ErrorList::~ErrorList(llvm::ErrorList *this)
{
  v1 = (this + 8);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

{
  v1 = (this + 8);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x25F891040);
}

llvm::raw_ostream *llvm::ErrorList::log(llvm::raw_ostream *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 0x10)
  {
    *(v4 + 16) = 10;
    *v4 = *"Multiple errors:\n";
    *(a2 + 4) += 17;
  }

  else
  {
    this = llvm::raw_ostream::write(a2, "Multiple errors:\n", 0x11uLL);
  }

  v5 = *(v3 + 8);
  for (i = *(v3 + 16); v5 != i; ++v5)
  {
    this = (*(**v5 + 16))(*v5, a2);
    v7 = *(a2 + 4);
    if (*(a2 + 3) == v7)
    {
      this = llvm::raw_ostream::write(a2, "\n", 1uLL);
    }

    else
    {
      *v7 = 10;
      ++*(a2 + 4);
    }
  }

  return this;
}

void llvm::ECError::log(llvm::ECError *this, llvm::raw_ostream *a2)
{
  std::error_code::message(&v5, (this + 8));
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v3, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void llvm::FileError::~FileError(llvm::FileError *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x25F891040);
}

uint64_t llvm::FileError::log(llvm::FileError *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) == v4)
  {
    v5 = llvm::raw_ostream::write(a2, "'", 1uLL);
  }

  else
  {
    *v4 = 39;
    ++*(a2 + 4);
    v5 = a2;
  }

  v6 = *(this + 31);
  if (v6 >= 0)
  {
    v7 = this + 8;
  }

  else
  {
    v7 = *(this + 1);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 31);
  }

  else
  {
    v8 = *(this + 2);
  }

  v9 = llvm::raw_ostream::write(v5, v7, v8);
  v10 = *(v9 + 4);
  if ((*(v9 + 3) - v10) > 2)
  {
    *(v10 + 2) = 32;
    *v10 = 14887;
    *(v9 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v9, "': ", 3uLL);
  }

  if (*(this + 40) == 1)
  {
    v11 = *(a2 + 4);
    if ((*(a2 + 3) - v11) > 4)
    {
      *(v11 + 4) = 32;
      *v11 = 1701734764;
      *(a2 + 4) += 5;
      v12 = a2;
    }

    else
    {
      v12 = llvm::raw_ostream::write(a2, "line ", 5uLL);
    }

    write_unsigned<unsigned long long>(v12, *(this + 4), 0, 0, 0);
    v13 = *(v12 + 4);
    if (*(v12 + 3) - v13 > 1uLL)
    {
      *v13 = 8250;
      *(v12 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v12, ": ", 2uLL);
    }
  }

  v14 = *(**(this + 6) + 16);

  return v14();
}

void llvm::StringError::~StringError(void **this)
{
  *this = &unk_286E79480;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286E79480;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x25F891040);
}

void anonymous namespace::ErrorErrorCategory::~ErrorErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x25F891040);
}

void std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t llvm::handleErrorImpl<llvm::logAllUnhandledErrors(llvm::Error,llvm::raw_ostream &,llvm::Twine)::$_0>(void *a1, void *a2, llvm::raw_ostream **a3)
{
  result = (*(**a2 + 48))(*a2, &llvm::ErrorInfoBase::ID);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    (*(*v7 + 16))(v7, *a3);
    v8 = *a3;
    v9 = *(*a3 + 4);
    if (*(*a3 + 3) == v9)
    {
      llvm::raw_ostream::write(v8, "\n", 1uLL);
    }

    else
    {
      *v9 = 10;
      ++*(v8 + 4);
    }

    *a1 = 0;
    v10 = *(*v7 + 8);

    return v10(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

uint64_t llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(void *a1, void *a2, uint64_t *a3)
{
  result = (*(**a2 + 48))(*a2, &llvm::ErrorInfoBase::ID);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    v8 = *a3;
    (*(*v7 + 24))(__p, v7);
    v9 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(v8, __p, 1);
    v10 = *v8 + 24 * *(v8 + 8);
    v11 = *v9;
    *(v10 + 16) = *(v9 + 16);
    *v10 = v11;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = 0;
    ++*(v8 + 8);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    *a1 = 0;
    return (*(*v7 + 8))(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 24 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::string,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::string,false>::grow(a1, v5);
    }
  }

  return a2;
}

uint64_t llvm::handleErrorImpl<llvm::errorToErrorCode(llvm::Error)::$_0>(void *a1, void *a2, uint64_t **a3)
{
  result = (*(**a2 + 48))(*a2, &llvm::ErrorInfoBase::ID);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    v8 = (*(*v7 + 32))(v7);
    v9 = *a3;
    *v9 = v8;
    v9[1] = v10;
    result = (*(*v7 + 8))(v7);
    v7 = 0;
  }

  *a1 = v7;
  return result;
}

void llvm::report_fatal_error(llvm *this, const llvm::Twine *a2)
{
  v2 = 1;
  v5 = 1;
  if (*this)
  {
    v3 = this;
    v2 = 3;
  }

  v4 = v2;
  llvm::report_fatal_error(&v3, a2);
}

{
  v2 = a2;
  std::mutex::lock(&ErrorHandlerMutex);
  std::mutex::unlock(&ErrorHandlerMutex);
  v14 = &v15;
  v15 = v17;
  v16 = xmmword_25D0A05D0;
  v8 = 2;
  v12 = 0;
  v13 = 1;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v7 = &unk_286E79DA0;
  llvm::raw_ostream::SetUnbuffered(&v7);
  v4 = v11;
  if ((v10 - v11) > 0xB)
  {
    *(v11 + 8) = 540693071;
    *v4 = *"LLVM ERROR: ";
    v11 += 12;
    v5 = &v7;
  }

  else
  {
    v5 = llvm::raw_ostream::write(&v7, "LLVM ERROR: ", 0xCuLL);
  }

  llvm::Twine::print(this, v5);
  v6 = *(v5 + 4);
  if (*(v5 + 3) == v6)
  {
    llvm::raw_ostream::write(v5, "\n", 1uLL);
  }

  else
  {
    *v6 = 10;
    ++*(v5 + 4);
  }

  write(2, *v14, v14[1]);
  llvm::raw_ostream::~raw_ostream(&v7);
  if (v15 != v17)
  {
    free(v15);
  }

  RemoveFilesToRemove();
  if (v2)
  {
    abort();
  }

  exit(1);
}

void llvm::report_fatal_error(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = 261;
  v3[0] = a1;
  v3[1] = a2;
  llvm::report_fatal_error(v3, a3);
}

void llvm::report_bad_alloc_error(llvm *this, const char *a2)
{
  std::mutex::lock(&BadAllocErrorHandlerMutex);
  std::mutex::unlock(&BadAllocErrorHandlerMutex);
  write(2, "LLVM ERROR: out of memory\n", 0x1AuLL);
  v3 = strlen(this);
  write(2, this, v3);
  write(2, "\n", 1uLL);
  abort();
}

uint64_t llvm::FileOutputBuffer::create@<X0>(const char *a1@<X0>, void *a2@<X1>, size_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2 == 1 && *a1 == 45)
  {
    v10 = "-";
    v11 = 1;
    v12 = a3;
LABEL_13:
    createInMemoryBuffer(v34, v10, v11, v12);
    *(a5 + 8) = *(a5 + 8) & 0xFE | v34[8] & 1;
    v15 = *v34;
    *v34 = 0;
    *a5 = v15;
    v16 = v34;
LABEL_17:
    goto LABEL_18;
  }

  if (a4)
  {
    v13 = 511;
  }

  else
  {
    v13 = 438;
  }

  if (!a3)
  {
    v10 = a1;
    v11 = a2;
    v12 = 0;
    goto LABEL_13;
  }

  memset(v34, 0, sizeof(v34));
  v35 = 0xFFFFLL;
  v36 = 0;
  v37 = 0;
  LOWORD(v43) = 261;
  v40 = a1;
  *&v41 = a2;
  llvm::sys::fs::status(&v40, v34, 1);
  if (*&v34[40] >= 3u)
  {
    if (*&v34[40] == 3)
    {
      *&v46.__val_ = std::generic_category();
      result = llvm::errorCodeToError(0x15, v46, a5);
      *(a5 + 8) |= 1u;
      goto LABEL_18;
    }

LABEL_16:
    createInMemoryBuffer(&v40, a1, a2, a3);
    *(a5 + 8) = *(a5 + 8) & 0xFE | v41 & 1;
    v18 = v40;
    v40 = 0;
    *a5 = v18;
    v16 = &v40;
    goto LABEL_17;
  }

  if ((a4 & 2) != 0)
  {
    goto LABEL_16;
  }

  LOWORD(v33) = 773;
  v30 = a1;
  __p[0] = a2;
  __p[1] = ".tmp%%%%%%%";
  llvm::sys::fs::TempFile::create(&v30, v13, 0, &v40);
  if (v44)
  {
    v14 = v40;
    v40 = 0;
    *(a5 + 8) |= 1u;
    *a5 = v14;
  }

  else
  {
    LOBYTE(v30) = 0;
    v20 = v43;
    *__p = v41;
    v32 = v42;
    HIBYTE(v42) = 0;
    LOBYTE(v41) = 0;
    v33 = v43;
    LOBYTE(v40) = 1;
    v43 = -1;
    v22 = llvm::sys::fs::resize_file(v20, a3);
    if (v22)
    {
      v23 = v21;
      llvm::sys::fs::TempFile::discard(&v30, &v38);
      v27 = v38;
      v38 = 0;
      llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v27);
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      if (v38)
      {
        (*(*v38 + 8))(v38);
      }

      *&v24.__val_ = v23;
      llvm::errorCodeToError(v22, v24, a5);
      *(a5 + 8) |= 1u;
    }

    else
    {
      v27 = a3;
      v28 = 0;
      v29 = 1;
      if (!llvm::sys::fs::mapped_file_region::init(&v27, v20, 0, 1))
      {
        operator new();
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      llvm::sys::fs::TempFile::discard(&v30, &v26);
      v38 = v26;
      v26 = 0;
      llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v38);
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }

      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      createInMemoryBuffer(&v38, a1, a2, a3);
      *(a5 + 8) = *(a5 + 8) & 0xFE | v39 & 1;
      v25 = v38;
      v38 = 0;
      *a5 = v25;
      if (v28)
      {
        munmap(v28, v27);
      }
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = llvm::Expected<llvm::sys::fs::TempFile>::~Expected(&v40);
LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t createInMemoryBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v10) = 0;
  v11 = std::system_category();
  llvm::sys::Memory::allocateMappedMemory(a4, 0, 50331648, &v10, &v9);
  if (!v10)
  {
    operator new();
  }

  *&v6.__val_ = v11;
  llvm::errorCodeToError(v10, v6, &v8);
  *(a1 + 8) |= 1u;
  result = v8;
  *a1 = v8;
  return result;
}

uint64_t *llvm::Expected<std::unique_ptr<anonymous namespace::InMemoryBuffer>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

uint64_t llvm::FileOutputBuffer::FileOutputBuffer(uint64_t a1, const void *a2, size_t a3)
{
  *a1 = &unk_286E79650;
  v3 = (a1 + 8);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = a3;
  if (a3)
  {
    memmove(v3, a2, a3);
  }

  *(v3 + a3) = 0;
  return a1;
}

void anonymous namespace::InMemoryBuffer::commit(_anonymous_namespace_::InMemoryBuffer *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 31);
  if (v4 < 0)
  {
    if (*(this + 2) != 1)
    {
      goto LABEL_10;
    }

    v5 = *(this + 1);
  }

  else
  {
    v5 = this + 8;
    if (v4 != 1)
    {
LABEL_10:
      v14 = 0;
      v13 = 260;
      v12[0] = this + 8;
      v10 = llvm::sys::fs::openFile(v12, &v14, 0, 2, 0, *(this + 16));
      if (v10)
      {
        llvm::errorCodeToError(v10, v11, a2);
      }

      else
      {
        llvm::raw_fd_ostream::raw_fd_ostream(v12, v14, 1, 1, 0);
        llvm::raw_ostream::operator<<(v12, *(this + 4), *(this + 7));
        *a2 = 0;
        llvm::raw_fd_ostream::~raw_fd_ostream(v12);
      }

      return;
    }
  }

  if (*v5 != 45)
  {
    goto LABEL_10;
  }

  v6 = llvm::outs(this);
  v7 = llvm::raw_ostream::operator<<(v6, *(this + 4), *(this + 7));
  v8 = llvm::outs(v7);
  v9 = v8[2];
  if (v8[4] != v9)
  {
    v8[4] = v9;
    (*(*v8 + 72))(v8);
  }

  *a2 = 0;
}
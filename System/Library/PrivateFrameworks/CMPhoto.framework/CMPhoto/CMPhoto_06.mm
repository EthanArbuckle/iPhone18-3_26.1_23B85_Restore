void sub_1A596D608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::allocator<int>::allocate_at_least[abi:ne200100](this, __n);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void std::allocator<int>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x1E69E5568] + 64;
  a1[15] = MEMORY[0x1E69E5568] + 64;
  v7 = *(MEMORY[0x1E69E54E0] + 16);
  v8 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x1E69E5568] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_1A596D8CC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1AC552AF0](v1);
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1AC5527E0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1A596DA58(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1A596DA18);
  }

  __cxa_rethrow();
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x1AC552AF0](a1 + 120);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1AC552A80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1A596DCB4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E77A10A0, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(vega::dicom::IOState *this, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 != a2)
  {
    v5 = a2;
    do
    {
      vega::dicom::IOState::swap(this);
      std::ostream::write();
      ++v5;
    }

    while (v5 != a3);
  }

  return v3;
}

void vega::Json::to_json<vega::manipulators::PaddedStringManipulator<int>,(vega::manipulators::PaddedStringManipulator<int>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<int>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<int>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 2;
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 2;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<int>(uint64_t a1, unsigned int *a2)
{
  vega::to_json<int>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A596DFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vega::Json::from_json<vega::manipulators::PaddedStringManipulator<int> &,int>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<int>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 2;
      v27 = v26 + 1;
      if ((v26 + 1) >> 62)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 1 > v27)
      {
        v27 = v28 >> 1;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
      v30 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 2;
      v32 = (4 * v26);
      v33 = (4 * v26 - 4 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 4;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<int>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 2;
      v16 = v15 + 1;
      if ((v15 + 1) >> 62)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 2;
      v20 = (4 * v15);
      v21 = (4 * v15 - 4 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 4;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A596E26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void *std::operator>>[abi:ne200100]<char,std::char_traits<char>>(void *a1, _BYTE *a2)
{
  MEMORY[0x1AC5527E0](&v8, a1, 0);
  if (v8 == 1)
  {
    v4 = *(a1 + *(*a1 - 24) + 40);
    v5 = v4[3];
    if (v5 == v4[4])
    {
      LODWORD(v4) = (*(*v4 + 80))(v4);
      if (v4 == -1)
      {
        v6 = 6;
        goto LABEL_6;
      }
    }

    else
    {
      v4[3] = v5 + 1;
      LOBYTE(v4) = *v5;
    }

    v6 = 0;
    *a2 = v4;
LABEL_6:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v6);
  }

  return a1;
}

void sub_1A596E388(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1A596E348);
  }

  __cxa_rethrow();
}

uint64_t vega::Json::value_from_json<int>(void *a1)
{
  v4 = 0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552820](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552820](a1, &v4);
  }

  return v4;
}

void *std::__shared_ptr_emplace<vega::manipulators::IntegerStringManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::IntegerStringManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19185A0;
  std::construct_at[abi:ne200100]<vega::manipulators::IntegerStringManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::IntegerStringManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::IntegerStringManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::IntegerStringManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::PaddedStringManipulator<int>::PaddedStringManipulator(a1, &v4);
  *a1 = &unk_1F19185D8;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A596E5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::PaddedStringManipulator<int>::PaddedStringManipulator(void *a1, vega::dicom::RawValue **a2)
{
  vega::dicom::RawValue::str(*a2, &__p);
  vega::manipulators::PaddedStringManipulator<int>::PaddedStringManipulator(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1A596E640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::PaddedStringManipulator<int>::PaddedStringManipulator(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F1914A70;
  vega::manipulators::PaddedStringManipulator<int>::parse_from_string(a1, a2);
  return a1;
}

void sub_1A596E6AC(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  CMPhotoGetEncodeAccelerationModeOverride(v1);
  _Unwind_Resume(a1);
}

void vega::dicom::DataSet::element<vega::dictionary::PlanarConfiguration>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::PlanarConfiguration::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::PlanarConfiguration>,std::allocator<vega::dicom::Element<vega::dictionary::PlanarConfiguration>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A596E738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PlanarConfiguration>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::PlanarConfiguration>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1914AF8;
  vega::dicom::Element<vega::dictionary::PlanarConfiguration>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PlanarConfiguration>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1914AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PlanarConfiguration>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::PlanarConfiguration>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::PlanarConfiguration::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::PlanarConfiguration::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A596EA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedShortManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::UnsignedShortManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::UnsignedShortManipulator,std::allocator<vega::manipulators::UnsignedShortManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A596EC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::UnsignedShortManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::UnsignedShortManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::UnsignedShortManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::UnsignedShortManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((0x80000001A5ABCC96 & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (0x80000001A5ABCC96 & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1914BC0;
  return a1;
}

void sub_1A596EE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::UnsignedShortManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::manipulators::UnsignedShortManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19190A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::UnsignedShortManipulator::~UnsignedShortManipulator(vega::manipulators::UnsignedShortManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::UnsignedShortManipulator::is_valid_for (vega::manipulators::UnsignedShortManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA5C8, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::UnsignedShortManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA5AA);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned short>::~FixedSizeElementManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return CMPhotoGetEncodeAccelerationModeOverride(a1);
}

void vega::manipulators::FixedSizeElementManipulator<unsigned short>::~FixedSizeElementManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::RawValue>::__shared_ptr_emplace[abi:ne200100]<char const*,char const*,std::allocator<vega::dicom::RawValue>,0>(void *a1, const char **a2, const char **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917E00;
  vega::dicom::RawValue::RawValue((a1 + 3), *a2, *a3);
}

void std::allocator<unsigned short>::allocate_at_least[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t vega::dicom::RawWriter::write_from<unsigned short>(vega::dicom::IOState *a1)
{
  if (vega::dicom::IOState::swap(a1))
  {
    std::ostream::write();
  }

  std::ostream::write();
  return 2;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<unsigned short>,(vega::manipulators::FixedSizeElementManipulator<unsigned short>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<unsigned short>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<unsigned short>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 1;
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 1;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<unsigned short>(uint64_t a1, unsigned __int16 *a2)
{
  vega::to_json<unsigned short>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A596F4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<unsigned short> &,unsigned short>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<unsigned short>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 1;
      if (v26 <= -2)
      {
LABEL_36:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v27 = v6 - v24;
      if (v27 <= v26 + 1)
      {
        v28 = v26 + 1;
      }

      else
      {
        v28 = v27;
      }

      v29 = v27 >= 0x7FFFFFFFFFFFFFFELL;
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v28;
      }

      if (v30)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 1;
      v32 = (2 * v26);
      v33 = (2 * v26 - 2 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 2;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<unsigned short>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 1;
      if (v15 <= -2)
      {
        goto LABEL_36;
      }

      v16 = v10 - v13;
      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 1;
      v20 = (2 * v15);
      v21 = (2 * v15 - 2 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 2;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A596F774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::Json::value_from_json<unsigned short>(void *a1)
{
  v4 = 0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552850](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552850](a1, &v4);
  }

  return v4;
}

void *std::__shared_ptr_emplace<vega::manipulators::UnsignedShortManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::UnsignedShortManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19190A0;
  std::construct_at[abi:ne200100]<vega::manipulators::UnsignedShortManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::UnsignedShortManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::UnsignedShortManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::UnsignedShortManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::FixedSizeElementManipulator<unsigned short>::FixedSizeElementManipulator(a1, &v4);
  *a1 = &unk_1F19190D8;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A596F96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::FixedSizeElementManipulator<unsigned short>::FixedSizeElementManipulator(void *a1, vega::dicom::RawValue **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F1914C00;
  if (vega::dicom::RawValue::size(*a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "Incompatible size for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v8);
    exception->__vftable = &unk_1F1917110;
  }

  v4 = vega::dicom::RawValue::data(*a2);
  v5 = vega::dicom::RawValue::end(*a2);
  std::__copy_impl::operator()[abi:ne200100]<unsigned short const*,unsigned short const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<unsigned short>>>(&v9, v4, v5, a1);
  return a1;
}

void sub_1A596FA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      v19 = *v16;
      if (*v16)
      {
        *(v14 + 16) = v19;
        operator delete(v19);
      }

      CMPhotoGetEncodeAccelerationModeOverride(v14);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

_WORD *std::__copy_impl::operator()[abi:ne200100]<unsigned short const*,unsigned short const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<unsigned short>>>(uint64_t a1, _WORD *a2, _WORD *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[2];
    do
    {
      v8 = a4[3];
      if (v7 >= v8)
      {
        v9 = a4[1];
        v10 = v7 - v9;
        v11 = (v7 - v9) >> 1;
        if (v11 <= -2)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (v12 <= v11 + 1)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = v12;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::allocator<unsigned short>::allocate_at_least[abi:ne200100]((a4 + 1), v14);
        }

        v15 = (v7 - v9) >> 1;
        v16 = (2 * v11);
        v17 = (2 * v11 - 2 * v15);
        *v16 = *v5;
        v7 = (v16 + 1);
        memcpy(v17, v9, v10);
        v18 = a4[1];
        a4[1] = v17;
        a4[2] = v7;
        a4[3] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 2;
      }

      a4[2] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void vega::dicom::DataSet::element<vega::dictionary::Modality>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::Modality::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::Modality>,std::allocator<vega::dicom::Element<vega::dictionary::Modality>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A596FC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::Modality>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::Modality>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1914C70;
  vega::dicom::Element<vega::dictionary::Modality>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::Modality>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1914C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::Modality>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::Modality>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::Modality::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::Modality::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A596FF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::CodeStringManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::CodeStringManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::CodeStringManipulator,std::allocator<vega::manipulators::CodeStringManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A5970148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::CodeStringManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::CodeStringManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::CodeStringManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::CodeStringManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((0x80000001A5AAE69ALL & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (0x80000001A5AAE69ALL & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1914D38;
  return a1;
}

void sub_1A597039C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::CodeStringManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::manipulators::CodeStringManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::CodeStringManipulator::~CodeStringManipulator(vega::manipulators::CodeStringManipulator *this)
{
  v2 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(this);
  MEMORY[0x1AC552B90](EncodeAccelerationModeOverride, 0xA1C4030951706);
}

BOOL vega::manipulators::CodeStringManipulator::is_valid_for (vega::manipulators::CodeStringManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA5D0, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::CodeStringManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA5AC);
}

uint64_t vega::manipulators::PaddedStringManipulator<std::string>::~PaddedStringManipulator(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return CMPhotoGetEncodeAccelerationModeOverride(a1);
}

{
  v4 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(a1);
  return MEMORY[0x1AC552B90](EncodeAccelerationModeOverride, 0xA1C4030951706);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](this, __n);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void std::allocator<std::string>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void vega::Json::to_json<vega::manipulators::PaddedStringManipulator<std::string>,(vega::manipulators::PaddedStringManipulator<std::string>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = 0xAAAAAAAAAAAAAAABLL * (v5 - v4);
  if (v7 == 1)
  {

    vega::Json::value_to_json<std::string>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<std::string>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v4) >> 3);
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v4) >> 3);
        }

        ++v10;
        v9 += 3;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<std::string>(uint64_t a1, uint64_t *a2)
{
  vega::to_json<std::string>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5970AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vega::Json::from_json<vega::manipulators::PaddedStringManipulator<std::string> &,std::string>(void *a1, uint64_t a2)
{
  v4 = std::istream::peek();
  v48 = v4;
  if (v4 == 34)
  {
    vega::Json::value_from_json<std::string>(a1, __p);
    v24 = *(a2 + 16);
    v23 = *(a2 + 24);
    if (v24 < v23)
    {
LABEL_31:
      v31 = *__p;
      *(v24 + 16) = v47;
      *v24 = v31;
      *(a2 + 16) = v24 + 24;
      return;
    }

    v25 = *(a2 + 8);
    v26 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3);
    v27 = v26 + 1;
    if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v28 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v25) >> 3);
    if (2 * v28 > v27)
    {
      v27 = 2 * v28;
    }

    if (v28 >= 0x555555555555555)
    {
      v29 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v29 = v27;
    }

    v49.__end_cap_.__value_ = (a2 + 8);
    if (v29)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](a2 + 8, v29);
    }

    goto LABEL_40;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v48);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v48);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v48);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v48);
      return;
    }

    vega::Json::value_from_json<std::string>(a1, __p);
    v24 = *(a2 + 16);
    v30 = *(a2 + 24);
    if (v24 < v30)
    {
      goto LABEL_31;
    }

    v32 = *(a2 + 8);
    v26 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v32) >> 3);
    v33 = v26 + 1;
    if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v32) >> 3);
    if (2 * v34 > v33)
    {
      v33 = 2 * v34;
    }

    if (v34 >= 0x555555555555555)
    {
      v29 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v29 = v33;
    }

    v49.__end_cap_.__value_ = (a2 + 8);
    if (v29)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](a2 + 8, v29);
    }

LABEL_40:
    v35 = 24 * v26;
    v36 = 24 * v29;
    v37 = *__p;
    *(v35 + 16) = v47;
    *v35 = v37;
    __p[1] = 0;
    v47 = 0;
    __p[0] = 0;
    v38 = 24 * v26 + 24;
    v39 = *(a2 + 8);
    v40 = *(a2 + 16) - v39;
    v41 = 24 * v26 - v40;
    memcpy((v35 - v40), v39, v40);
    v42 = *(a2 + 8);
    *(a2 + 8) = v41;
    *(a2 + 16) = v38;
    v43 = *(a2 + 24);
    *(a2 + 24) = v36;
    v49.__end_ = v42;
    v49.__end_cap_.__value_ = v43;
    v49.__first_ = v42;
    v49.__begin_ = v42;
    std::__split_buffer<std::string>::~__split_buffer(&v49);
    v44 = SHIBYTE(v47);
    *(a2 + 16) = v38;
    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v48);
  v5 = (a2 + 8);
  do
  {
    vega::Json::value_from_json<std::string>(a1, __p);
    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    if (v7 >= v6)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v5) >> 3);
      v10 = v9 + 1;
      if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 3);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v10;
      }

      v49.__end_cap_.__value_ = (a2 + 8);
      if (v12)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](a2 + 8, v12);
      }

      v13 = 24 * v9;
      v14 = *__p;
      *(v13 + 16) = v47;
      *v13 = v14;
      __p[1] = 0;
      v47 = 0;
      __p[0] = 0;
      v15 = 24 * v9 + 24;
      v16 = *(a2 + 8);
      v17 = *(a2 + 16) - v16;
      v18 = 24 * v9 - v17;
      memcpy((v13 - v17), v16, v17);
      v19 = *(a2 + 8);
      *(a2 + 8) = v18;
      *(a2 + 16) = v15;
      v20 = *(a2 + 24);
      *(a2 + 24) = 0;
      v49.__end_ = v19;
      v49.__end_cap_.__value_ = v20;
      v49.__first_ = v19;
      v49.__begin_ = v19;
      std::__split_buffer<std::string>::~__split_buffer(&v49);
      v21 = SHIBYTE(v47);
      *(a2 + 16) = v15;
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v8 = *__p;
      *(v7 + 16) = v47;
      *v7 = v8;
      *(a2 + 16) = v7 + 24;
    }

    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v48);
  }

  while (v48 == 44);
  if (v48 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v45, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v45);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5970ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::manipulators::CodeStringManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::CodeStringManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918108;
  std::construct_at[abi:ne200100]<vega::manipulators::CodeStringManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::CodeStringManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::CodeStringManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::CodeStringManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::PaddedStringManipulator<std::string>::PaddedStringManipulator(a1, &v4);
  *a1 = &unk_1F1918140;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A5971058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void vega::dicom::DataSet::element<vega::dictionary::InstanceCreationDate>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::InstanceCreationDate::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::InstanceCreationDate>,std::allocator<vega::dicom::Element<vega::dictionary::InstanceCreationDate>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A59710D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::InstanceCreationDate>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::InstanceCreationDate>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1914D78;
  vega::dicom::Element<vega::dictionary::InstanceCreationDate>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::InstanceCreationDate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1914D78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::InstanceCreationDate>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::InstanceCreationDate>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::InstanceCreationDate::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::InstanceCreationDate::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A59713A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::DateManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::DateManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::DateManipulator,std::allocator<vega::manipulators::DateManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A59715B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::DateManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::DateManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::DateManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::DateManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((0x80000001A5AAE859 & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (0x80000001A5AAE859 & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1914E40;
  return a1;
}

void sub_1A5971808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::DateManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::manipulators::DateManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19181B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::DateManipulator::~DateManipulator(vega::manipulators::DateManipulator *this)
{
  v2 = (this + 8);
  std::vector<vega::Date>::__destroy_vector::operator()[abi:ne200100](&v2);
  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v3 = (this + 8);
  std::vector<vega::Date>::__destroy_vector::operator()[abi:ne200100](&v3);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(this);
  MEMORY[0x1AC552B90](EncodeAccelerationModeOverride, 0xA1C4030951706);
}

BOOL vega::manipulators::DateManipulator::is_valid_for (vega::manipulators::DateManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA5D8, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::DateManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA5AE);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Date>::~PaddedStringManipulator(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<vega::Date>::__destroy_vector::operator()[abi:ne200100](&v3);
  return CMPhotoGetEncodeAccelerationModeOverride(a1);
}

{
  v4 = (a1 + 8);
  std::vector<vega::Date>::__destroy_vector::operator()[abi:ne200100](&v4);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(a1);
  return MEMORY[0x1AC552B90](EncodeAccelerationModeOverride, 0xA1C4030951706);
}

void std::vector<vega::Date>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<vega::Date>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<vega::Date>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(a1, i))
  {
    i -= 6;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a2[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a2[1];
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void vega::Date::~Date(vega::Date *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *std::vector<vega::Date>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::allocator<vega::Date>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1A5971D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<vega::Date>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<vega::Date>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vega::Date>,vega::Date*>(uint64_t a1, void *a2, void *a3, _OWORD *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7 = 0;
      v7[1] = 0;
      a4[1] = *(v7 + 1);
      v7[2] = 0;
      v7[3] = 0;
      a4[2] = *(v7 + 2);
      v7[4] = 0;
      v7[5] = 0;
      v7 += 6;
      a4 += 3;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(a1, v5);
      v5 += 6;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vega::Date>,vega::Date*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vega::Date>,vega::Date*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<vega::Date>,vega::Date*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<vega::Date>,vega::Date*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 6;
      std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<vega::Date>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<vega::Date>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<vega::Date>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 48;
    std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(v5, (v4 - 48));
  }
}

uint64_t std::vector<vega::Date>::__emplace_back_slow_path<vega::Date>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<vega::Date>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v16 = 48 * v2 + 48;
  v8 = *(a1 + 8);
  v9 = (48 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vega::Date>,vega::Date*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<vega::Date>::~__split_buffer(&v14);
  return v13;
}

void sub_1A5972084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<vega::Date>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vega::Json::to_json<vega::manipulators::PaddedStringManipulator<vega::Date>,(vega::manipulators::PaddedStringManipulator<vega::Date>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4);
  if (v7 == 1)
  {

    vega::Json::value_to_json<vega::Date>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<vega::Date>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v4) >> 4);
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v4) >> 4);
        }

        ++v10;
        v9 += 6;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<vega::Date>(uint64_t a1, vega::dictionary::Page **a2)
{
  vega::to_json<vega::Date>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5972278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *vega::Json::from_json<vega::manipulators::PaddedStringManipulator<vega::Date> &,vega::Date>(void *a1)
{
  v2 = std::istream::peek();
  v5 = v2;
  if (v2 == 34)
  {
    vega::Json::value_from_json<vega::Date>(a1, &v4);
  }

  if (v2 == 91)
  {
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
    vega::Json::value_from_json<vega::Date>(a1, &v4);
  }

  if (v2 != 110)
  {
    vega::Json::value_from_json<vega::Date>(a1, &v4);
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  return std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
}

void vega::Json::value_from_json<vega::Date>(void *a1@<X0>, vega::DateTime *a2@<X8>)
{
  vega::DateTime::DateTime(a2);
  if (std::istream::peek() == 34)
  {
    v4 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v4);
    if (v4 == 34)
    {
      vega::operator>>(a1, a2);
    }

    __assert_rtn("value_from_json", "json.h", 70, "c == ''");
  }

  vega::operator>>(a1, a2);
}

void *std::__shared_ptr_emplace<vega::manipulators::DateManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::DateManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19181B0;
  std::construct_at[abi:ne200100]<vega::manipulators::DateManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::DateManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::DateManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::DateManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::PaddedStringManipulator<vega::Date>::PaddedStringManipulator(a1, &v4);
  *a1 = &unk_1F19181E8;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A5972740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::PaddedStringManipulator<vega::Date>::PaddedStringManipulator(void *a1, vega::dicom::RawValue **a2)
{
  vega::dicom::RawValue::str(*a2, &__p);
  vega::manipulators::PaddedStringManipulator<vega::Date>::PaddedStringManipulator(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1A59727AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::PaddedStringManipulator<vega::Date>::PaddedStringManipulator(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F1914E80;
  vega::manipulators::PaddedStringManipulator<vega::Date>::parse_from_string(a1, a2);
  return a1;
}

void sub_1A5972820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  std::vector<vega::Date>::__destroy_vector::operator()[abi:ne200100](&a10);
  CMPhotoGetEncodeAccelerationModeOverride(v10);
  _Unwind_Resume(a1);
}

void vega::dicom::DataSet::element<vega::dictionary::InstanceCreationTime>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::InstanceCreationTime::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::InstanceCreationTime>,std::allocator<vega::dicom::Element<vega::dictionary::InstanceCreationTime>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A59728A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::InstanceCreationTime>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::InstanceCreationTime>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1914EF0;
  vega::dicom::Element<vega::dictionary::InstanceCreationTime>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::InstanceCreationTime>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1914EF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::InstanceCreationTime>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::InstanceCreationTime>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::InstanceCreationTime::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::InstanceCreationTime::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5972B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::TimeManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::TimeManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::TimeManipulator,std::allocator<vega::manipulators::TimeManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A5972D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::TimeManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::TimeManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::TimeManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::TimeManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((0x80000001A5AAEA1FLL & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (0x80000001A5AAEA1FLL & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1914FB8;
  return a1;
}

void sub_1A5972FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::TimeManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::manipulators::TimeManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::TimeManipulator::~TimeManipulator(vega::manipulators::TimeManipulator *this)
{
  v2 = (this + 8);
  std::vector<vega::Time>::__destroy_vector::operator()[abi:ne200100](&v2);
  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v3 = (this + 8);
  std::vector<vega::Time>::__destroy_vector::operator()[abi:ne200100](&v3);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(this);
  MEMORY[0x1AC552B90](EncodeAccelerationModeOverride, 0xA1C4030951706);
}

BOOL vega::manipulators::TimeManipulator::is_valid_for (vega::manipulators::TimeManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA5E0, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::TimeManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA5B0);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Time>::~PaddedStringManipulator(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<vega::Time>::__destroy_vector::operator()[abi:ne200100](&v3);
  return CMPhotoGetEncodeAccelerationModeOverride(a1);
}

{
  v4 = (a1 + 8);
  std::vector<vega::Time>::__destroy_vector::operator()[abi:ne200100](&v4);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(a1);
  return MEMORY[0x1AC552B90](EncodeAccelerationModeOverride, 0xA1C4030951706);
}

void std::vector<vega::Time>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<vega::Time>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<vega::Time>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(a1, i))
  {
    i -= 6;
  }

  *(a1 + 8) = a2;
}

void *std::vector<vega::Time>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::allocator<vega::Date>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1A5973434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<vega::Time>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vega::Time>,vega::Time*>(uint64_t a1, void *a2, void *a3, _OWORD *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7 = 0;
      v7[1] = 0;
      a4[1] = *(v7 + 1);
      v7[2] = 0;
      v7[3] = 0;
      a4[2] = *(v7 + 2);
      v7[4] = 0;
      v7[5] = 0;
      v7 += 6;
      a4 += 3;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(a1, v5);
      v5 += 6;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vega::Time>,vega::Time*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vega::Time>,vega::Time*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<vega::Date>,vega::Date*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<vega::Time>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<vega::Time>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<vega::Time>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 48;
    std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(v5, (v4 - 48));
  }
}

uint64_t std::vector<vega::Time>::__emplace_back_slow_path<vega::Time>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<vega::Date>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v16 = 48 * v2 + 48;
  v8 = *(a1 + 8);
  v9 = (48 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vega::Time>,vega::Time*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<vega::Time>::~__split_buffer(&v14);
  return v13;
}

void sub_1A5973708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<vega::Time>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vega::Json::to_json<vega::manipulators::PaddedStringManipulator<vega::Time>,(vega::manipulators::PaddedStringManipulator<vega::Time>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4);
  if (v7 == 1)
  {

    vega::Json::value_to_json<vega::Time>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<vega::Time>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v4) >> 4);
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v4) >> 4);
        }

        ++v10;
        v9 += 6;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<vega::Time>(uint64_t a1, vega::dictionary::Page **a2)
{
  vega::to_json<vega::Time>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A59738FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *vega::Json::from_json<vega::manipulators::PaddedStringManipulator<vega::Time> &,vega::Time>(void *a1)
{
  v2 = std::istream::peek();
  v5 = v2;
  if (v2 == 34)
  {
    vega::Json::value_from_json<vega::Time>(a1, &v4);
  }

  if (v2 == 91)
  {
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
    vega::Json::value_from_json<vega::Time>(a1, &v4);
  }

  if (v2 != 110)
  {
    vega::Json::value_from_json<vega::Time>(a1, &v4);
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  return std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
}

void vega::Json::value_from_json<vega::Time>(void *a1@<X0>, vega::DateTime *a2@<X8>)
{
  vega::DateTime::DateTime(a2);
  if (std::istream::peek() == 34)
  {
    v4 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v4);
    if (v4 == 34)
    {
      vega::operator>>(a1, a2);
    }

    __assert_rtn("value_from_json", "json.h", 70, "c == ''");
  }

  vega::operator>>(a1, a2);
}

void *std::__shared_ptr_emplace<vega::manipulators::TimeManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::TimeManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918E28;
  std::construct_at[abi:ne200100]<vega::manipulators::TimeManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::TimeManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::TimeManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::TimeManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::PaddedStringManipulator<vega::Time>::PaddedStringManipulator(a1, &v4);
  *a1 = &unk_1F1918E60;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A5973DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::PaddedStringManipulator<vega::Time>::PaddedStringManipulator(void *a1, vega::dicom::RawValue **a2)
{
  vega::dicom::RawValue::str(*a2, &__p);
  vega::manipulators::PaddedStringManipulator<vega::Time>::PaddedStringManipulator(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1A5973E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::PaddedStringManipulator<vega::Time>::PaddedStringManipulator(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F1914FF8;
  vega::manipulators::PaddedStringManipulator<vega::Time>::parse_from_string(a1, a2);
  return a1;
}

void sub_1A5973EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  std::vector<vega::Time>::__destroy_vector::operator()[abi:ne200100](&a10);
  CMPhotoGetEncodeAccelerationModeOverride(v10);
  _Unwind_Resume(a1);
}

void vega::dicom::DataSet::element<vega::dictionary::InstanceCreatorUID>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::InstanceCreatorUID::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::InstanceCreatorUID>,std::allocator<vega::dicom::Element<vega::dictionary::InstanceCreatorUID>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5973F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::InstanceCreatorUID>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::InstanceCreatorUID>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915068;
  vega::dicom::Element<vega::dictionary::InstanceCreatorUID>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::InstanceCreatorUID>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::InstanceCreatorUID>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::InstanceCreatorUID>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::InstanceCreatorUID::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::InstanceCreatorUID::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A59741F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::UniqueIdentifierManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::UniqueIdentifierManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega12manipulators27UniqueIdentifierManipulatorENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::UniqueIdentifierManipulator,std::allocator<vega::manipulators::UniqueIdentifierManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A59743BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::UniqueIdentifierManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((off_1F1919818 & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (off_1F1919818 & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1919518;
  return a1;
}

void sub_1A5974598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::UniqueIdentifierManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void *_ZNSt3__120__shared_ptr_emplaceIN4vega12manipulators27UniqueIdentifierManipulatorENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918ED0;
  vega::manipulators::UniqueIdentifierManipulator::UniqueIdentifierManipulator((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<vega::manipulators::UniqueIdentifierManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918ED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void *std::__shared_ptr_emplace<vega::manipulators::UniqueIdentifierManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::UniqueIdentifierManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918ED0;
  std::construct_at[abi:ne200100]<vega::manipulators::UniqueIdentifierManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::UniqueIdentifierManipulator*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::manipulators::UniqueIdentifierManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::UniqueIdentifierManipulator*>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::UniqueIdentifierManipulator::UniqueIdentifierManipulator(a1, &v4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A59748CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void vega::dicom::DataSet::element<vega::dictionary::PatientName>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::PatientName::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::PatientName>,std::allocator<vega::dicom::Element<vega::dictionary::PatientName>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5974948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PatientName>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::PatientName>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19150E8;
  vega::dicom::Element<vega::dictionary::PatientName>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PatientName>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19150E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PatientName>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::PatientName>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::PatientName::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::PatientName::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5974C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::PersonNameManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::PersonNameManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::PersonNameManipulator,std::allocator<vega::manipulators::PersonNameManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A5974E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::PersonNameManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::PersonNameManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::PersonNameManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::PersonNameManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((0x80000001A5AAEC72 & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (0x80000001A5AAEC72 & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1915168;
  return a1;
}

void sub_1A597507C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::PersonNameManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::manipulators::PersonNameManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918A98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::PersonNameManipulator::~PersonNameManipulator(vega::manipulators::PersonNameManipulator *this)
{
  v2 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(this);
  MEMORY[0x1AC552B90](EncodeAccelerationModeOverride, 0xA1C4030951706);
}

BOOL vega::manipulators::PersonNameManipulator::is_valid_for (vega::manipulators::PersonNameManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA5E8, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::PersonNameManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA5B2);
}

void *std::__shared_ptr_emplace<vega::manipulators::PersonNameManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::PersonNameManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918A98;
  std::construct_at[abi:ne200100]<vega::manipulators::PersonNameManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::PersonNameManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::PersonNameManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::PersonNameManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::PaddedStringManipulator<std::string>::PaddedStringManipulator(a1, &v4);
  *a1 = &unk_1F1918AD0;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A5975400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void vega::dicom::DataSet::element<vega::dictionary::PatientID>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::PatientID::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::PatientID>,std::allocator<vega::dicom::Element<vega::dictionary::PatientID>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597547C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PatientID>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::PatientID>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19151A8;
  vega::dicom::Element<vega::dictionary::PatientID>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PatientID>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19151A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PatientID>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::PatientID>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::PatientID::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::PatientID::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5975748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::LongStringManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::LongStringManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::LongStringManipulator,std::allocator<vega::manipulators::LongStringManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A597595C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::LongStringManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((0x80000001A5ABC02ELL & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (0x80000001A5ABC02ELL & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1919460;
  return a1;
}

void sub_1A5975B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::LongStringManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::manipulators::LongStringManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::LongStringManipulator::~LongStringManipulator(vega::manipulators::LongStringManipulator *this)
{
  v2 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(this);
  MEMORY[0x1AC552B90](EncodeAccelerationModeOverride, 0xA1C4030951706);
}

BOOL vega::manipulators::LongStringManipulator::is_valid_for (vega::manipulators::LongStringManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA5F0, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::LongStringManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA5B4);
}

void *std::__shared_ptr_emplace<vega::manipulators::LongStringManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::LongStringManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918648;
  std::construct_at[abi:ne200100]<vega::manipulators::LongStringManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::LongStringManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::LongStringManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::LongStringManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::PaddedStringManipulator<std::string>::PaddedStringManipulator(a1, &v4);
  *a1 = &unk_1F1918680;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A5975EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void vega::dicom::DataSet::element<vega::dictionary::IssuerOfPatientID>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::IssuerOfPatientID::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::IssuerOfPatientID>,std::allocator<vega::dicom::Element<vega::dictionary::IssuerOfPatientID>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5975F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::IssuerOfPatientID>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::IssuerOfPatientID>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915240;
  vega::dicom::Element<vega::dictionary::IssuerOfPatientID>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::IssuerOfPatientID>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::IssuerOfPatientID>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::IssuerOfPatientID>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::IssuerOfPatientID::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::IssuerOfPatientID::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5976208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::TypeOfPatientID>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::TypeOfPatientID::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::TypeOfPatientID>,std::allocator<vega::dicom::Element<vega::dictionary::TypeOfPatientID>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A59762D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::TypeOfPatientID>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::TypeOfPatientID>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915290;
  vega::dicom::Element<vega::dictionary::TypeOfPatientID>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::TypeOfPatientID>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::TypeOfPatientID>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::TypeOfPatientID>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::TypeOfPatientID::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::TypeOfPatientID::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597659C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::PixelAspectRatio>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::PixelAspectRatio::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::PixelAspectRatio>,std::allocator<vega::dicom::Element<vega::dictionary::PixelAspectRatio>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5976664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PixelAspectRatio>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::PixelAspectRatio>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19152E0;
  vega::dicom::Element<vega::dictionary::PixelAspectRatio>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PixelAspectRatio>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19152E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PixelAspectRatio>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::PixelAspectRatio>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::PixelAspectRatio::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::PixelAspectRatio::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5976930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::ImageType>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::ImageType::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::ImageType>,std::allocator<vega::dicom::Element<vega::dictionary::ImageType>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A59769F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::ImageType>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::ImageType>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915330;
  vega::dicom::Element<vega::dictionary::ImageType>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::ImageType>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915330;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::ImageType>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::ImageType>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::ImageType::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::ImageType::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5976CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::SpecificCharacterSet>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::SpecificCharacterSet::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::SpecificCharacterSet>,std::allocator<vega::dicom::Element<vega::dictionary::SpecificCharacterSet>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5976D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SpecificCharacterSet>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::SpecificCharacterSet>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915380;
  vega::dicom::Element<vega::dictionary::SpecificCharacterSet>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SpecificCharacterSet>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SpecificCharacterSet>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::SpecificCharacterSet>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::SpecificCharacterSet::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::SpecificCharacterSet::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5977058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::Columns>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::Columns::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::Columns>,std::allocator<vega::dicom::Element<vega::dictionary::Columns>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5977120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::Columns>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::Columns>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19153D0;
  vega::dicom::Element<vega::dictionary::Columns>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::Columns>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19153D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::Columns>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::Columns>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::Columns::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::Columns::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A59773EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::Rows>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::Rows::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::Rows>,std::allocator<vega::dicom::Element<vega::dictionary::Rows>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A59774B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::Rows>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::Rows>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915420;
  vega::dicom::Element<vega::dictionary::Rows>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::Rows>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::Rows>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::Rows>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::Rows::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::Rows::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5977780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::SamplesPerPixel>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::SamplesPerPixel::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::SamplesPerPixel>,std::allocator<vega::dicom::Element<vega::dictionary::SamplesPerPixel>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5977848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SamplesPerPixel>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::SamplesPerPixel>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915470;
  vega::dicom::Element<vega::dictionary::SamplesPerPixel>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SamplesPerPixel>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915470;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SamplesPerPixel>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::SamplesPerPixel>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::SamplesPerPixel::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::SamplesPerPixel::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5977B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::PhotometricInterpretation>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::PhotometricInterpretation::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::PhotometricInterpretation>,std::allocator<vega::dicom::Element<vega::dictionary::PhotometricInterpretation>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5977BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PhotometricInterpretation>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::PhotometricInterpretation>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19154C0;
  vega::dicom::Element<vega::dictionary::PhotometricInterpretation>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PhotometricInterpretation>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19154C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PhotometricInterpretation>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::PhotometricInterpretation>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::PhotometricInterpretation::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::PhotometricInterpretation::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5977EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::BitsAllocated>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::BitsAllocated::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::BitsAllocated>,std::allocator<vega::dicom::Element<vega::dictionary::BitsAllocated>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5977F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BitsAllocated>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::BitsAllocated>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915510;
  vega::dicom::Element<vega::dictionary::BitsAllocated>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BitsAllocated>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BitsAllocated>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::BitsAllocated>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::BitsAllocated::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::BitsAllocated::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597823C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::BitsStored>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::BitsStored::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::BitsStored>,std::allocator<vega::dicom::Element<vega::dictionary::BitsStored>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5978304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BitsStored>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::BitsStored>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915560;
  vega::dicom::Element<vega::dictionary::BitsStored>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BitsStored>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BitsStored>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::BitsStored>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::BitsStored::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::BitsStored::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A59785D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::HighBit>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::HighBit::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::HighBit>,std::allocator<vega::dicom::Element<vega::dictionary::HighBit>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5978698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::HighBit>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::HighBit>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19155B0;
  vega::dicom::Element<vega::dictionary::HighBit>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::HighBit>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19155B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::HighBit>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::HighBit>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::HighBit::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::HighBit::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5978964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::PixelRepresentation>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::PixelRepresentation::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::PixelRepresentation>,std::allocator<vega::dicom::Element<vega::dictionary::PixelRepresentation>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5978A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PixelRepresentation>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::PixelRepresentation>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915600;
  vega::dicom::Element<vega::dictionary::PixelRepresentation>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PixelRepresentation>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PixelRepresentation>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::PixelRepresentation>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::PixelRepresentation::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::PixelRepresentation::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5978CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::ICCProfile>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::ICCProfile::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::ICCProfile>,std::allocator<vega::dicom::Element<vega::dictionary::ICCProfile>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5978DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::ICCProfile>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::ICCProfile>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915650;
  vega::dicom::Element<vega::dictionary::ICCProfile>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::ICCProfile>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::ICCProfile>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::ICCProfile>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::ICCProfile::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::ICCProfile::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597908C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::OtherByteManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::OtherByteManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::OtherByteManipulator,std::allocator<vega::manipulators::OtherByteManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A59792A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::OtherByteManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((0x80000001A5AAF54ELL & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (0x80000001A5AAF54ELL & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F19195F0;
  return a1;
}

void sub_1A5979480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::OtherByteManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::manipulators::OtherByteManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918798;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::OtherByteManipulator::~OtherByteManipulator(vega::manipulators::OtherByteManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::OtherByteManipulator::is_valid_for (vega::manipulators::OtherByteManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA5F8, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::OtherByteManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA5B6);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Byte>::~FixedSizeElementManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return CMPhotoGetEncodeAccelerationModeOverride(a1);
}

void vega::manipulators::FixedSizeElementManipulator<vega::Byte>::~FixedSizeElementManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<vega::Byte>,(vega::manipulators::FixedSizeElementManipulator<vega::Byte>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 == 1)
  {

    vega::Json::value_to_json<vega::Byte>(a1, v4);
  }

  else if (v5 == v4)
  {

    vega::operator<<<char [18]>(a1, "null");
  }

  else
  {
    if (*(a1 + 16) == 1)
    {
      v7 = *a1;
      v12 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v12, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v8 = 0;
      do
      {
        vega::Json::value_to_json<vega::Byte>(a1, &v4[v8]);
        v4 = *(a2 + 8);
        v9 = *(a2 + 16);
        if (v8 < ~v4 + v9 && *(a1 + 16) == 1)
        {
          v10 = *a1;
          v14 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v14, 1);
          v4 = *(a2 + 8);
          v9 = *(a2 + 16);
        }

        ++v8;
      }

      while (v8 < v9 - v4);
    }

    if (*(a1 + 16) == 1)
    {
      v11 = *a1;
      v13 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v13, 1);
    }
  }
}

void vega::Json::value_to_json<vega::Byte>(uint64_t a1, unsigned __int8 *a2)
{
  vega::to_json<vega::Byte>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5979918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<vega::Byte> &,vega::Byte>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v27 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<vega::Byte>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v20 = a2[1];
      v21 = (v7 - v20);
      v22 = v7 - v20 + 1;
      if (v22 < 0)
      {
LABEL_35:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v23 = v6 - v20;
      if (2 * v23 > v22)
      {
        v22 = 2 * v23;
      }

      if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        operator new();
      }

      v25 = v7 - v20;
      *v21 = v5;
      v8 = v21 + 1;
      memcpy(0, v20, v25);
      a2[1] = 0;
      a2[2] = v21 + 1;
      a2[3] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v27);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v27);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v27);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v27);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v27);
  do
  {
    v9 = vega::Json::value_from_json<vega::Byte>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = (v11 - v13);
      v15 = v11 - v13 + 1;
      if (v15 < 0)
      {
        goto LABEL_35;
      }

      v16 = v10 - v13;
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        operator new();
      }

      v18 = v11 - v13;
      *v14 = v9;
      v12 = v14 + 1;
      memcpy(0, v13, v18);
      a2[1] = 0;
      a2[2] = v14 + 1;
      a2[3] = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v27);
  }

  while (v27 == 44);
  if (v27 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v26, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v26);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5979BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::Json::value_from_json<vega::Byte>(void *a1)
{
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    vega::operator>>(a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    vega::operator>>(a1, &v4);
  }

  return v4;
}

void *std::__shared_ptr_emplace<vega::manipulators::OtherByteManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::OtherByteManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918798;
  std::construct_at[abi:ne200100]<vega::manipulators::OtherByteManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::OtherByteManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::OtherByteManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::OtherByteManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::FixedSizeElementManipulator<vega::Byte>::FixedSizeElementManipulator(a1, &v4);
  *a1 = &unk_1F19187D0;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A5979DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__copy_impl::operator()[abi:ne200100]<vega::Byte const*,vega::Byte const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<vega::Byte>>>(uint64_t a1, _BYTE *a2, _BYTE *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[2];
    do
    {
      v8 = a4[3];
      if (v7 >= v8)
      {
        v9 = a4[1];
        v10 = (v7 - v9);
        v11 = v7 - v9 + 1;
        if (v11 < 0)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        v14 = v7 - v9;
        *v10 = *v5;
        v7 = v10 + 1;
        memcpy(0, v9, v14);
        a4[1] = 0;
        a4[2] = v10 + 1;
        a4[3] = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v7++ = *v5;
      }

      a4[2] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void vega::dicom::DataSet::element<vega::dictionary::ColorSpace>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::ColorSpace::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::ColorSpace>,std::allocator<vega::dicom::Element<vega::dictionary::ColorSpace>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5979F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::ColorSpace>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::ColorSpace>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915730;
  vega::dicom::Element<vega::dictionary::ColorSpace>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::ColorSpace>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::ColorSpace>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::ColorSpace>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::ColorSpace::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::ColorSpace::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597A260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::SmallestImagePixelValue_SS>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::SmallestImagePixelValue_SS::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_SS>,std::allocator<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_SS>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597A328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_SS>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_SS>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915780;
  vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_SS>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_SS>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_SS>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_SS>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::SmallestImagePixelValue_SS::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::SmallestImagePixelValue_SS::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597A5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::SignedShortManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::SignedShortManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::SignedShortManipulator,std::allocator<vega::manipulators::SignedShortManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A597A808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::SignedShortManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::SignedShortManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::SignedShortManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::SignedShortManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((0x80000001A5AAF7B0 & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (0x80000001A5AAF7B0 & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1915848;
  return a1;
}

void sub_1A597AA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::SignedShortManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::manipulators::SignedShortManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::SignedShortManipulator::~SignedShortManipulator(vega::manipulators::SignedShortManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::SignedShortManipulator::is_valid_for (vega::manipulators::SignedShortManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA600, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::SignedShortManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA5B8);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<short>::~FixedSizeElementManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return CMPhotoGetEncodeAccelerationModeOverride(a1);
}

void vega::manipulators::FixedSizeElementManipulator<short>::~FixedSizeElementManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<short>,(vega::manipulators::FixedSizeElementManipulator<short>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<short>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<short>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 1;
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 1;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<short>(uint64_t a1, __int16 *a2)
{
  vega::to_json<short>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A597AF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<short> &,short>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<short>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 1;
      if (v26 <= -2)
      {
LABEL_36:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v27 = v6 - v24;
      if (v27 <= v26 + 1)
      {
        v28 = v26 + 1;
      }

      else
      {
        v28 = v27;
      }

      v29 = v27 >= 0x7FFFFFFFFFFFFFFELL;
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v28;
      }

      if (v30)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 1;
      v32 = (2 * v26);
      v33 = (2 * v26 - 2 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 2;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<short>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 1;
      if (v15 <= -2)
      {
        goto LABEL_36;
      }

      v16 = v10 - v13;
      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 1;
      v20 = (2 * v15);
      v21 = (2 * v15 - 2 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 2;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A597B1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::Json::value_from_json<short>(void *a1)
{
  v4 = 0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552840](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552840](a1, &v4);
  }

  return v4;
}

void *std::__shared_ptr_emplace<vega::manipulators::SignedShortManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::SignedShortManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918CD8;
  std::construct_at[abi:ne200100]<vega::manipulators::SignedShortManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::SignedShortManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::SignedShortManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::SignedShortManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::FixedSizeElementManipulator<short>::FixedSizeElementManipulator(a1, &v4);
  *a1 = &unk_1F1918D10;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A597B3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::FixedSizeElementManipulator<short>::FixedSizeElementManipulator(void *a1, vega::dicom::RawValue **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F1915888;
  if (vega::dicom::RawValue::size(*a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "Incompatible size for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v8);
    exception->__vftable = &unk_1F1917110;
  }

  v4 = vega::dicom::RawValue::data(*a2);
  v5 = vega::dicom::RawValue::end(*a2);
  std::__copy_impl::operator()[abi:ne200100]<unsigned short const*,unsigned short const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<unsigned short>>>(&v9, v4, v5, a1);
  return a1;
}

void sub_1A597B500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      v19 = *v16;
      if (*v16)
      {
        *(v14 + 16) = v19;
        operator delete(v19);
      }

      CMPhotoGetEncodeAccelerationModeOverride(v14);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::LargestImagePixelValue_SS>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::LargestImagePixelValue_SS::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_SS>,std::allocator<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_SS>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597B5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_SS>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_SS>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19158F8;
  vega::dicom::Element<vega::dictionary::LargestImagePixelValue_SS>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_SS>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19158F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_SS>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::LargestImagePixelValue_SS>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::LargestImagePixelValue_SS::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::LargestImagePixelValue_SS::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597B890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::SmallestImagePixelValue_US>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::SmallestImagePixelValue_US::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_US>,std::allocator<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_US>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597B958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_US>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_US>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915948;
  vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_US>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_US>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_US>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::SmallestImagePixelValue_US>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::SmallestImagePixelValue_US::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::SmallestImagePixelValue_US::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597BC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::LargestImagePixelValue_US>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::LargestImagePixelValue_US::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_US>,std::allocator<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_US>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597BCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_US>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_US>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915998;
  vega::dicom::Element<vega::dictionary::LargestImagePixelValue_US>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_US>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915998;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::LargestImagePixelValue_US>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::LargestImagePixelValue_US>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::LargestImagePixelValue_US::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::LargestImagePixelValue_US::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597BFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t std::vector<std::vector<vega::Byte>>::__init_with_size[abi:ne200100]<std::vector<vega::Byte>*,std::vector<vega::Byte>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<vega::Byte>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A597C084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<vega::Byte>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<vega::Byte>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::vector<vega::Byte>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::vector<vega::Byte>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<vega::Byte>>,std::vector<vega::Byte>*,std::vector<vega::Byte>*,std::vector<vega::Byte>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<vega::Byte>::__init_with_size[abi:ne200100]<vega::Byte*,vega::Byte*>(v4, *v6, v6[1], v6[1] - *v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<vega::Byte>>,std::vector<vega::Byte>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<vega::Byte>>,std::vector<vega::Byte>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<vega::Byte>>,std::vector<vega::Byte>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<vega::Byte>>,std::vector<vega::Byte>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::vector<vega::Byte>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<vega::Byte>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<vega::Byte>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

char *std::vector<vega::Byte>::__insert_with_size[abi:ne200100]<std::__wrap_iter<vega::Byte*>,std::__wrap_iter<vega::Byte*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = &v10[v17];
    if (&v18[-v6] < v10)
    {
      v21 = a4 - &v7[v6];
      v22 = a4 - v7;
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

uint64_t std::vector<std::vector<vega::Byte>>::__init_with_size[abi:ne200100]<std::vector<vega::Byte> const*,std::vector<vega::Byte> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<vega::Byte>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A597C5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<vega::Byte>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<vega::Byte>>,std::vector<vega::Byte> const*,std::vector<vega::Byte> const*,std::vector<vega::Byte>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<vega::Byte>::__init_with_size[abi:ne200100]<vega::Byte*,vega::Byte*>(v4, *v6, v6[1], v6[1] - *v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<vega::Byte>>,std::vector<vega::Byte>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void *std::vector<vega::Byte>::__assign_with_size[abi:ne200100]<std::__wrap_iter<vega::Byte*>,std::__wrap_iter<vega::Byte*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<vega::Byte>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void std::vector<vega::Byte>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

__n128 std::__optional_storage_base<std::vector<std::vector<vega::Byte>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<std::vector<vega::Byte>>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      std::vector<std::vector<vega::Byte>>::__vdeallocate(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    std::vector<std::vector<vega::Byte>>::__destroy_vector::operator()[abi:ne200100](&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::vector<std::vector<vega::Byte>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<vega::Byte>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void vega::dicom::DataSet::element<vega::dictionary::RescaleSlope>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::RescaleSlope::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::RescaleSlope>,std::allocator<vega::dicom::Element<vega::dictionary::RescaleSlope>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597C954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RescaleSlope>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::RescaleSlope>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19159E8;
  vega::dicom::Element<vega::dictionary::RescaleSlope>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RescaleSlope>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19159E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RescaleSlope>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::RescaleSlope>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::RescaleSlope::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::RescaleSlope::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597CC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::DecimalStringManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::DecimalStringManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::DecimalStringManipulator,std::allocator<vega::manipulators::DecimalStringManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A597CE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::DecimalStringManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::DecimalStringManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::DecimalStringManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::DecimalStringManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((0x80000001A5AAFB38 & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (0x80000001A5AAFB38 & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1915AB0;
  return a1;
}

void sub_1A597D088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::DecimalStringManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::manipulators::DecimalStringManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::DecimalStringManipulator::~DecimalStringManipulator(vega::manipulators::DecimalStringManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::DecimalStringManipulator::is_valid_for (vega::manipulators::DecimalStringManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA608, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::DecimalStringManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA5BA);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DecimalString>::~PaddedStringManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return CMPhotoGetEncodeAccelerationModeOverride(a1);
}

void vega::manipulators::PaddedStringManipulator<vega::DecimalString>::~PaddedStringManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(a1);

  JUMPOUT(0x1AC552B90);
}

void *std::vector<vega::DecimalString>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void vega::Json::to_json<vega::manipulators::PaddedStringManipulator<vega::DecimalString>,(vega::manipulators::PaddedStringManipulator<vega::DecimalString>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<vega::DecimalString>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<vega::DecimalString>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 3;
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 3;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<vega::DecimalString>(uint64_t a1, double *a2)
{
  vega::to_json<vega::DecimalString>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A597D62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vega::Json::from_json<vega::manipulators::PaddedStringManipulator<vega::DecimalString> &,vega::DecimalString>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<vega::DecimalString>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 3;
      v27 = v26 + 1;
      if ((v26 + 1) >> 61)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 2 > v27)
      {
        v27 = v28 >> 2;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFF8;
      v30 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 3;
      v32 = (8 * v26);
      v33 = (8 * v26 - 8 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<vega::DecimalString>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 3;
      v20 = (8 * v15);
      v21 = (8 * v15 - 8 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A597D8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

double vega::Json::value_from_json<vega::DecimalString>(void *a1)
{
  vega::DecimalString::DecimalString(&v4);
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    vega::operator>>(a1);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    vega::operator>>(a1);
  }

  return v4;
}

void *std::__shared_ptr_emplace<vega::manipulators::DecimalStringManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::DecimalStringManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918258;
  std::construct_at[abi:ne200100]<vega::manipulators::DecimalStringManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::DecimalStringManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::DecimalStringManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::DecimalStringManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::PaddedStringManipulator<vega::DecimalString>::PaddedStringManipulator(a1, &v4);
  *a1 = &unk_1F1918290;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A597DAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::PaddedStringManipulator<vega::DecimalString>::PaddedStringManipulator(void *a1, vega::dicom::RawValue **a2)
{
  vega::dicom::RawValue::str(*a2, &__p);
  vega::manipulators::PaddedStringManipulator<vega::DecimalString>::PaddedStringManipulator(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1A597DB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::PaddedStringManipulator<vega::DecimalString>::PaddedStringManipulator(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F1915AF0;
  vega::manipulators::PaddedStringManipulator<vega::DecimalString>::parse_from_string(a1, a2);
  return a1;
}

void sub_1A597DBD0(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  CMPhotoGetEncodeAccelerationModeOverride(v1);
  _Unwind_Resume(a1);
}

void vega::dicom::DataSet::element<vega::dictionary::RescaleIntercept>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::RescaleIntercept::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::RescaleIntercept>,std::allocator<vega::dicom::Element<vega::dictionary::RescaleIntercept>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597DC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RescaleIntercept>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::RescaleIntercept>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915B60;
  vega::dicom::Element<vega::dictionary::RescaleIntercept>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RescaleIntercept>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915B60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RescaleIntercept>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::RescaleIntercept>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::RescaleIntercept::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::RescaleIntercept::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597DF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void vega::dicom::DataSet::element<vega::dictionary::WindowCenter>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::WindowCenter::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::WindowCenter>,std::allocator<vega::dicom::Element<vega::dictionary::WindowCenter>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597DFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::WindowCenter>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::WindowCenter>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915BB0;
  vega::dicom::Element<vega::dictionary::WindowCenter>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::WindowCenter>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915BB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::WindowCenter>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::WindowCenter>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::WindowCenter::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::WindowCenter::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597E2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}
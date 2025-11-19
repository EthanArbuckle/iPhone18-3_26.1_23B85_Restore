void vega::dicom::DataSet::element<vega::dictionary::WindowWidth>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::WindowWidth::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::WindowWidth>,std::allocator<vega::dicom::Element<vega::dictionary::WindowWidth>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597E384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::WindowWidth>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::WindowWidth>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915C00;
  vega::dicom::Element<vega::dictionary::WindowWidth>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::WindowWidth>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915C00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::WindowWidth>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::WindowWidth>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::WindowWidth::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::WindowWidth::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597E650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void vega::dicom::DataSet::element<vega::dictionary::VOILUTFunction>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::VOILUTFunction::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::VOILUTFunction>,std::allocator<vega::dicom::Element<vega::dictionary::VOILUTFunction>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597E718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::VOILUTFunction>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::VOILUTFunction>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915C50;
  vega::dicom::Element<vega::dictionary::VOILUTFunction>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::VOILUTFunction>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915C50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::VOILUTFunction>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::VOILUTFunction>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::VOILUTFunction::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::VOILUTFunction::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597E9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void _getTagValue<vega::dictionary::RedPaletteColorLookupTableDescriptor_SS>(vega::dicom::DataSet **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "RedPaletteColorLookupTableDescriptor");
  vega::dicom::DataSet::data_element(v4, &__p, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    v5 = vega::dicom::DataElement::vr(v9);
    if (vega::Word::operator==(&vega::dictionary::RedPaletteColorLookupTableDescriptor_SS::vr, v5))
    {
      vega::dicom::DataSet::element<vega::dictionary::RedPaletteColorLookupTableDescriptor_SS>(*a1, &__p);
      if (__p)
      {
        vega::dicom::DataElement::get_manipulator<vega::manipulators::SignedShortManipulator>(*__p, a2);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1A597EB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void _getLookupTableDescriptorValues<std::shared_ptr<vega::manipulators::SignedShortManipulator>>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = v4 + 8;
    v5 = *(v4 + 8);
    if (*(v6 + 8) - v5 == 6)
    {
      *&v8[3] = v2;
      *&v8[5] = v3;
      for (i = 0; i != 3; ++i)
      {
        v8[i] = *(v5 + 2 * i);
      }

      std::vector<std::array<int,3ul>>::push_back[abi:ne200100](a2, v8);
    }
  }
}

void _getLookupTableDescriptorValues<std::shared_ptr<vega::manipulators::UnsignedShortManipulator>>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = v4 + 8;
    v5 = *(v4 + 8);
    if (*(v6 + 8) - v5 == 6)
    {
      *&v8[3] = v2;
      *&v8[5] = v3;
      for (i = 0; i != 3; ++i)
      {
        v8[i] = *(v5 + 2 * i);
      }

      std::vector<std::array<int,3ul>>::push_back[abi:ne200100](a2, v8);
    }
  }
}

void **std::vector<std::shared_ptr<vega::manipulators::OtherWordManipulator>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::allocator<std::shared_ptr<vega::manipulators::OtherWordManipulator>>::allocate_at_least[abi:ne200100](result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<vega::manipulators::OtherWordManipulator>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void vega::dicom::DataSet::element<vega::dictionary::RedPaletteColorLookupTableDescriptor_SS>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::RedPaletteColorLookupTableDescriptor_SS::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_SS>,std::allocator<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_SS>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597EDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_SS>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_SS>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915CA0;
  vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_SS>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_SS>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915CA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_SS>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_SS>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::RedPaletteColorLookupTableDescriptor_SS::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::RedPaletteColorLookupTableDescriptor_SS::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597F084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void std::vector<std::array<int,3ul>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<std::array<int,3ul>>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

void std::allocator<std::array<int,3ul>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void vega::dicom::DataSet::element<vega::dictionary::BluePaletteColorLookupTableDescriptor_SS>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::BluePaletteColorLookupTableDescriptor_SS::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_SS>,std::allocator<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_SS>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597F2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_SS>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_SS>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915CF0;
  vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_SS>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_SS>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915CF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_SS>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_SS>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::BluePaletteColorLookupTableDescriptor_SS::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::BluePaletteColorLookupTableDescriptor_SS::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597F578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void vega::dicom::DataSet::element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS>,std::allocator<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597F640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915D40;
  vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::GreenPaletteColorLookupTableDescriptor_SS::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597F90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void vega::dicom::DataSet::element<vega::dictionary::RedPaletteColorLookupTableDescriptor_US>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::RedPaletteColorLookupTableDescriptor_US::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_US>,std::allocator<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_US>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597F9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_US>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_US>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915D90;
  vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_US>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_US>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_US>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableDescriptor_US>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::RedPaletteColorLookupTableDescriptor_US::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::RedPaletteColorLookupTableDescriptor_US::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A597FCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void vega::dicom::DataSet::element<vega::dictionary::BluePaletteColorLookupTableDescriptor_US>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::BluePaletteColorLookupTableDescriptor_US::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_US>,std::allocator<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_US>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A597FD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_US>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_US>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915DE0;
  vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_US>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_US>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915DE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_US>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableDescriptor_US>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::BluePaletteColorLookupTableDescriptor_US::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::BluePaletteColorLookupTableDescriptor_US::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5980034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void vega::dicom::DataSet::element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_US>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::GreenPaletteColorLookupTableDescriptor_US::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_US>,std::allocator<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_US>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A59800FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_US>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_US>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915E30;
  vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_US>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_US>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915E30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_US>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableDescriptor_US>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::GreenPaletteColorLookupTableDescriptor_US::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::GreenPaletteColorLookupTableDescriptor_US::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A59803C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void vega::dicom::DataSet::element<vega::dictionary::RedPaletteColorLookupTableData>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::RedPaletteColorLookupTableData::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableData>,std::allocator<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableData>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5980490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableData>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableData>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915E80;
  vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableData>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableData>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915E80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableData>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::RedPaletteColorLookupTableData>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::RedPaletteColorLookupTableData::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::RedPaletteColorLookupTableData::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A598075C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::OtherWordManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::OtherWordManipulator>(v4);
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
    std::allocate_shared[abi:ne200100]<vega::manipulators::OtherWordManipulator,std::allocator<vega::manipulators::OtherWordManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
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

void sub_1A5980970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::OtherWordManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::OtherWordManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::OtherWordManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::OtherWordManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((0x80000001A5AB0396 & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (0x80000001A5AB0396 & 0x7FFFFFFFFFFFFFFFLL), v4);
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

  a1->__vftable = &unk_1F1915F48;
  return a1;
}

void sub_1A5980BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void vega::VR::InvalidValueManipulator<vega::manipulators::OtherWordManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::manipulators::OtherWordManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::OtherWordManipulator::~OtherWordManipulator(vega::manipulators::OtherWordManipulator *this)
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

BOOL vega::manipulators::OtherWordManipulator::is_valid_for (vega::manipulators::OtherWordManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA610, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::OtherWordManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA5BC);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Word>::~FixedSizeElementManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return CMPhotoGetEncodeAccelerationModeOverride(a1);
}

void vega::manipulators::FixedSizeElementManipulator<vega::Word>::~FixedSizeElementManipulator(uint64_t a1)
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

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<vega::Word>,(vega::manipulators::FixedSizeElementManipulator<vega::Word>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<vega::Word>(a1, v4);
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
        vega::Json::value_to_json<vega::Word>(a1, &v4[v9]);
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

void vega::Json::value_to_json<vega::Word>(uint64_t a1, unsigned __int16 *a2)
{
  vega::to_json<vega::Word>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5981080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<vega::Word> &,vega::Word>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v35 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<vega::Word>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = (v7 - v24) >> 1;
      if (v25 <= -2)
      {
LABEL_37:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v26 = v6 - v24;
      if (v26 <= v25 + 1)
      {
        v27 = v25 + 1;
      }

      else
      {
        v27 = v26;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100]((a2 + 1), v28);
      }

      v29 = (2 * v25);
      *v29 = v5;
      v8 = 2 * v25 + 2;
      v30 = a2[1];
      v31 = a2[2] - v30;
      v32 = v29 - v31;
      memcpy(v29 - v31, v30, v31);
      v33 = a2[1];
      a2[1] = v32;
      a2[2] = v8;
      a2[3] = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
  do
  {
    v9 = vega::Json::value_from_json<vega::Word>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = (v11 - v13) >> 1;
      if (v14 <= -2)
      {
        goto LABEL_37;
      }

      v15 = v10 - v13;
      if (v15 <= v14 + 1)
      {
        v16 = v14 + 1;
      }

      else
      {
        v16 = v15;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100]((a2 + 1), v17);
      }

      v18 = (2 * v14);
      *v18 = v9;
      v12 = 2 * v14 + 2;
      v19 = a2[1];
      v20 = a2[2] - v19;
      v21 = v18 - v20;
      memcpy(v18 - v20, v19, v20);
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
      v12 = (v11 + 1);
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
  }

  while (v35 == 44);
  if (v35 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v34, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v34);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5981324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

uint64_t vega::Json::value_from_json<vega::Word>(void *a1)
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

void *std::__shared_ptr_emplace<vega::manipulators::OtherWordManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::OtherWordManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918840;
  std::construct_at[abi:ne200100]<vega::manipulators::OtherWordManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::OtherWordManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::OtherWordManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::OtherWordManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::FixedSizeElementManipulator<vega::Word>::FixedSizeElementManipulator(a1, &v4);
  *a1 = &unk_1F1918878;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A5981518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::FixedSizeElementManipulator<vega::Word>::FixedSizeElementManipulator(void *a1, vega::dicom::RawValue **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F1915F88;
  if (vega::dicom::RawValue::size(*a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "Incompatible size for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v8);
    exception->__vftable = &unk_1F1917110;
  }

  v4 = vega::dicom::RawValue::data(*a2);
  v5 = vega::dicom::RawValue::end(*a2);
  std::__copy_impl::operator()[abi:ne200100]<vega::Word const*,vega::Word const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<vega::Word>>>(&v9, v4, v5, a1);
  return a1;
}

void sub_1A598163C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

_WORD *std::__copy_impl::operator()[abi:ne200100]<vega::Word const*,vega::Word const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<vega::Word>>>(uint64_t a1, _WORD *a2, _WORD *a3, void *a4)
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
        v10 = (v7 - v9) >> 1;
        if (v10 <= -2)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v8 - v9;
        if (v11 <= v10 + 1)
        {
          v12 = v10 + 1;
        }

        else
        {
          v12 = v11;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::allocator<unsigned short>::allocate_at_least[abi:ne200100]((a4 + 1), v13);
        }

        *(2 * v10) = *v5;
        v7 = (2 * v10 + 2);
        v14 = a4[1];
        v15 = a4[2] - v14;
        v16 = (2 * v10 - v15);
        memcpy(v16, v14, v15);
        v17 = a4[1];
        a4[1] = v16;
        a4[2] = v7;
        a4[3] = 0;
        if (v17)
        {
          operator delete(v17);
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

void std::allocator<std::shared_ptr<vega::manipulators::OtherWordManipulator>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<vega::manipulators::OtherWordManipulator>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<vega::manipulators::OtherWordManipulator>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<vega::manipulators::OtherWordManipulator>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void vega::dicom::DataSet::element<vega::dictionary::GreenPaletteColorLookupTableData>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::GreenPaletteColorLookupTableData::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableData>,std::allocator<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableData>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A59818D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableData>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableData>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915FF8;
  vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableData>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableData>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1915FF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableData>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::GreenPaletteColorLookupTableData>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::GreenPaletteColorLookupTableData::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::GreenPaletteColorLookupTableData::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5981BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void vega::dicom::DataSet::element<vega::dictionary::BluePaletteColorLookupTableData>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::BluePaletteColorLookupTableData::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableData>,std::allocator<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableData>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5981C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableData>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableData>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1916048;
  vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableData>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableData>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1916048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableData>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::BluePaletteColorLookupTableData>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::BluePaletteColorLookupTableData::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::BluePaletteColorLookupTableData::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A5981F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t std::vector<std::shared_ptr<vega::dicom::DataSet>>::__init_with_size[abi:ne200100]<std::shared_ptr<vega::dicom::DataSet>*,std::shared_ptr<vega::dicom::DataSet>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<vega::dicom::DataSet>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A598201C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<vega::dicom::DataSet>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<vega::dicom::DataSet>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::shared_ptr<vega::manipulators::OtherWordManipulator>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<vega::dicom::DataSet>>,std::shared_ptr<vega::dicom::DataSet>*,std::shared_ptr<vega::dicom::DataSet>*,std::shared_ptr<vega::dicom::DataSet>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<vega::dicom::DataSet>>,std::shared_ptr<vega::dicom::DataSet>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<vega::dicom::DataSet>>,std::shared_ptr<vega::dicom::DataSet>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<vega::dicom::DataSet>>,std::shared_ptr<vega::dicom::DataSet>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<vega::dicom::DataSet>>,std::shared_ptr<vega::dicom::DataSet>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void std::vector<std::shared_ptr<vega::dicom::DataSet>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<vega::dicom::DataSet>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<vega::dicom::DataSet>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t _validateMainAndAuxTags(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  if (!v2 || (v4 = v2 + 8, v3 = *(v2 + 8), *(v4 + 8) - v3 != 2))
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  if ((*v3 & 0xFFFD) != 1)
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  v5 = v1[28];
  if (!v5 || (v7 = v5 + 8, v6 = *(v5 + 8), *(v7 + 8) - v6 != 2))
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  if (*v6 >= 2u)
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  v8 = v1[12];
  if (!v8 || *(v8 + 16) - *(v8 + 8) != 2)
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  v9 = v1[14];
  if (!v9 || *(v9 + 16) - *(v9 + 8) != 2)
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  v10 = v1[20];
  if (!v10 || (v12 = v10 + 8, v11 = *(v10 + 8), *(v12 + 8) - v11 != 2))
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  v13 = v1[22];
  if (!v13 || (v15 = v13 + 8, v14 = *(v13 + 8), *(v15 + 8) - v14 != 2))
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  v16 = v1[24];
  if (!v16 || (v18 = v16 + 8, v17 = *(v16 + 8), *(v18 + 8) - v17 != 2))
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  v19 = *v11;
  if (v19 != 1 && (v19 & 7) != 0)
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  v21 = *v14 - 1;
  if (v21 >= v19)
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  if (v21 != *v17)
  {
    _validateMainAndAuxTags(v25);
    return LODWORD(v25[0]);
  }

  v25[4] = xmmword_1E77A1858;
  v25[5] = *off_1E77A1868;
  v26 = "YBR_RCT";
  v25[0] = xmmword_1E77A1818;
  v25[1] = *&off_1E77A1828;
  v25[2] = xmmword_1E77A1838;
  v25[3] = *&off_1E77A1848;
  v22 = v1[18];
  if (v22 && (v23 = *(v22 + 8), *(v22 + 16) - v23 == 24))
  {
    v29 = &v28;
    if (std::ranges::__find::__find_unwrap[abi:ne200100]<char const* const*,char const* const*,std::string,std::reference_wrapper<std::identity>>(v25, &v27, v23) != &v27)
    {
      return 0;
    }

    _validateMainAndAuxTags(&v29);
  }

  else
  {
    _validateMainAndAuxTags(&v29);
  }

  return v29;
}

void vega::dicom::DataSet::element<vega::dictionary::TransferSyntaxUID>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::TransferSyntaxUID::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::TransferSyntaxUID>,std::allocator<vega::dicom::Element<vega::dictionary::TransferSyntaxUID>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A5982520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::TransferSyntaxUID>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::TransferSyntaxUID>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1916098;
  vega::dicom::Element<vega::dictionary::TransferSyntaxUID>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::TransferSyntaxUID>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1916098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::TransferSyntaxUID>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::TransferSyntaxUID>::Element(uint64_t a1, uint64_t a2)
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
  if (!vega::TagMask::contains(&vega::dictionary::TransferSyntaxUID::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::TransferSyntaxUID::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A59827EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

const char **std::ranges::__find::__find_unwrap[abi:ne200100]<char const* const*,char const* const*,std::string,std::reference_wrapper<std::identity>>(const char **a1, const char **a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v6 = *(a3 + 23);
    v8 = *a3;
    v7 = a3[1];
    while (1)
    {
      v9 = strlen(*v3);
      v10 = v9;
      if ((v6 & 0x80) != 0)
      {
        if (v9 == v7)
        {
          v11 = v8;
          if (v7 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

LABEL_8:
          if (!memcmp(v11, *v3, v10))
          {
            return v3;
          }
        }
      }

      else
      {
        v11 = a3;
        if (v10 == v6)
        {
          goto LABEL_8;
        }
      }

      if (++v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void DicomDecoderStruct::~DicomDecoderStruct(DicomDecoderStruct *this)
{
  v17 = (this + 264);
  std::vector<std::shared_ptr<vega::dicom::DataSet>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 30);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 26);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 22);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 20);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 18);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 16);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 14);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 10);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 7);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(this + 5);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(this + 3);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t _getPaletteSize(uint64_t **a1)
{
  v1 = *a1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  std::vector<std::array<int,3ul>>::__init_with_size[abi:ne200100]<std::array<int,3ul>*,std::array<int,3ul>*>(&v5, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 2));
  if (v6 != v5)
  {
    if (*v5)
    {
      v2 = *v5;
    }

    else
    {
      v2 = 0x10000;
    }

    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  if (v6)
  {
LABEL_6:
    v6 = v5;
    operator delete(v5);
    return v2;
  }

  return v3;
}

uint64_t std::vector<std::array<int,3ul>>::__init_with_size[abi:ne200100]<std::array<int,3ul>*,std::array<int,3ul>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::array<int,3ul>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5982B84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::array<int,3ul>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::allocator<std::array<int,3ul>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

uint64_t std::vector<vega::Byte>::__init_with_size[abi:ne200100]<vega::Byte*,vega::Byte*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<vega::Byte>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5982C98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _needsRenderPass(void *a1, unint64_t a2, char a3, float *a4, float *a5, float *a6, float *a7, _BYTE *a8, _BYTE *a9, BOOL *a10)
{
  v17 = *a1;
  v16 = a1[1];
  v18 = **(*(v17 + 176) + 8);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (**(*(v17 + 176) + 8) < 9u || (v19 = *(v17 + 224)) == 0)
  {
    v20 = 0;
    if (!v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v20 = **(v19 + 8) == 1;
  if (v16)
  {
LABEL_8:
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

LABEL_9:
  v21 = *(*a1 + 280);
  v49[0] = *(*a1 + 272);
  v49[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PaletteSize = _getPaletteSize(v49);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v23 = (1 << v18);
  v48 = 0;
  v24 = a1[1];
  if (v20)
  {
    v25 = v23 * -0.5;
  }

  else
  {
    v25 = 0.0;
  }

  v47[0] = *a1;
  v47[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  _getPhotometricInterpretationFromImageDetails(v47, &v48);
  v26 = v23 + -1.0;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v27 = v26 + v25;
  if ((v48 - 1) > 1)
  {
    v31 = 0;
    v32 = 0;
  }

  else
  {
    if (a3)
    {
      v28 = HIDWORD(a2);
      v29 = a2;
      MinMax = v27 != SHIDWORD(a2) || v25 != a2;
      v25 = v29;
      v27 = v28;
    }

    else if (*(*a1 + 288))
    {
      MinMax = 0;
    }

    else
    {
      v33 = a1[1];
      v46[0] = *a1;
      v46[1] = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MinMax = _needToFindMinMax(v46);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }
    }

    v32 = v48 == 1;
    v31 = MinMax;
  }

  v34 = *(*a1 + 272);
  v35 = v34[6];
  v36 = 0.0;
  if (v35 && v34[8])
  {
    v37 = vega::DecimalString::operator float(*(v35 + 8));
    v36 = vega::DecimalString::operator float(*(*(*(*a1 + 272) + 64) + 8));
    v38 = v36 != 0.0 || v37 != 1.0;
    v25 = v36 + (v25 * v37);
    v27 = v36 + (v27 * v37);
    v34 = *(*a1 + 272);
  }

  else
  {
    v38 = 0;
    v37 = 1.0;
  }

  v39 = (v27 - v25) + 1.0;
  v40 = ((v25 + v27) + 1.0) * 0.5;
  v41 = v34[10];
  if (v41)
  {
    v42 = v34[12];
    if (v42)
    {
      v40 = vega::DecimalString::operator float(*(v41 + 8));
      v39 = vega::DecimalString::operator float(*(*(*(*a1 + 272) + 96) + 8));
      LODWORD(v42) = 1;
    }

    if (a4)
    {
      goto LABEL_45;
    }
  }

  else
  {
    LODWORD(v42) = 0;
    if (a4)
    {
LABEL_45:
      *a4 = v37;
    }
  }

  if (a5)
  {
    *a5 = v36;
  }

  if (a6)
  {
    *a6 = v40;
  }

  if (a7)
  {
    *a7 = v39;
  }

  if (a8)
  {
    *a8 = v32;
  }

  if (a9)
  {
    *a9 = ((v32 || v31) | v38 | v42) & 1;
  }

  if (a10)
  {
    *a10 = PaletteSize > 0;
  }

  return ((v32 || v20 || v31 || v38) | v42) & 1 | (PaletteSize > 0);
}

void sub_1A598301C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _renderToPixelBuffer(void *a1, uint64_t a2, unint64_t a3, int a4, int a5, int a6, CVPixelBufferRef pixelBuffer)
{
  result = 4294947636;
  if (!pixelBuffer)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v10 = *a1;
  if (!*a1)
  {
    return result;
  }

  v286 = **(v10[16] + 8);
  count = **(v10[12] + 8);
  v278 = **(v10[14] + 8);
  v13 = **(v10[20] + 8);
  v14 = *(v10[22] + 8);
  v15 = *v14;
  v16 = a1[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = **(v10[22] + 8);
  }

  else
  {
    v17 = *v14;
  }

  v19 = v17 < 9 || (v18 = v10[28]) == 0 || **(v18 + 8) != 1;
  v281 = v19;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  pixelFormat = CVPixelBufferGetPixelFormatType(pixelBuffer);
  UsedBitDepthForPixelFormat = CMPhotoGetUsedBitDepthForPixelFormat(pixelFormat);
  v292 = 0;
  v293 = 0;
  v291 = 0;
  v290 = 0;
  v20 = a1[1];
  v21 = *(*a1 + 208);
  v22 = *(*a1 + 216);
  v289[0] = *a1;
  v289[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MinMax = _needToFindMinMax(v289);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (MinMax)
  {
    if (v278)
    {
      v24 = 0;
      v25 = 0x10000 << (v15 - 1);
      v26 = -(v25 >> 16);
      v27 = 0x1000000 << (v15 - 1);
      v28 = -(v27 >> 24);
      v29 = v13 >= 9 && a3 >= 2;
      v30 = v25 >> 16;
      v31 = ~(-1 << v15);
      v32 = v31 + (v25 >> 16);
      v33 = v27 >> 24;
      v34 = !v29 || a6 == 0;
      v35 = v31 + (v27 >> 24);
      v28 = v28;
      v36 = v34;
      v37 = 0x80000000;
      v38 = 0x7FFFFFFF;
      do
      {
        v39 = (a2 + v24 * a3);
        if ((v36 & 1) == 0)
        {
          v40 = a3 >> 1;
          v41 = (a2 + v24 * a3);
          do
          {
            *v41 = bswap32(*v41) >> 16;
            ++v41;
            --v40;
          }

          while (v40);
        }

        if (v15 > 8)
        {
          if (v281)
          {
            if (count)
            {
              v46 = count;
              do
              {
                v48 = *v39;
                v39 += 2;
                v47 = v48;
                v49 = ~(-1 << v15);
                if (v48 < v31)
                {
                  v49 = v47;
                }

                if (v15 != 16)
                {
                  v47 = v49;
                }

                if (v38 >= v47)
                {
                  v38 = v47;
                }

                if (v37 <= v47)
                {
                  v37 = v47;
                }

                else
                {
                  v37 = v37;
                }

                --v46;
              }

              while (v46);
            }
          }

          else if (count)
          {
            v55 = count;
            do
            {
              v57 = *v39;
              v39 += 2;
              v56 = v57;
              v58 = ((v30 ^ v57) - v30);
              if (v32 >= v58)
              {
                v59 = v58;
              }

              else
              {
                v59 = v32;
              }

              if (v58 < v26)
              {
                v59 = v26;
              }

              if (v15 != 16)
              {
                v56 = v59;
              }

              if (v38 >= v56)
              {
                v38 = v56;
              }

              if (v37 <= v56)
              {
                v37 = v56;
              }

              else
              {
                v37 = v37;
              }

              --v55;
            }

            while (v55);
          }
        }

        else if (v281)
        {
          if (count)
          {
            v42 = count;
            do
            {
              v44 = *v39++;
              v43 = v44;
              v45 = ~(-1 << v15);
              if (v44 < v31)
              {
                v45 = v43;
              }

              if (v15 != 8)
              {
                v43 = v45;
              }

              if (v38 >= v43)
              {
                v38 = v43;
              }

              if (v37 <= v43)
              {
                v37 = v43;
              }

              else
              {
                v37 = v37;
              }

              --v42;
            }

            while (v42);
          }
        }

        else if (count)
        {
          v50 = count;
          do
          {
            v52 = *v39++;
            v51 = v52;
            v53 = ((v33 ^ v52) - v33);
            if (v35 >= v53)
            {
              v54 = v53;
            }

            else
            {
              v54 = v35;
            }

            if (v53 < v28)
            {
              v54 = v28;
            }

            if (v15 != 8)
            {
              v51 = v54;
            }

            if (v38 >= v51)
            {
              v38 = v51;
            }

            if (v37 <= v51)
            {
              v37 = v51;
            }

            else
            {
              v37 = v37;
            }

            --v50;
          }

          while (v50);
        }

        ++v24;
      }

      while (v24 != v278);
      v21 = v38 | (v37 << 32);
    }

    else
    {
      v21 = 0x800000007FFFFFFFLL;
    }

    if ((v22 & 1) == 0)
    {
      LOBYTE(v22) = 1;
    }

    a6 = 0;
  }

  v60 = a1[1];
  v288[0] = *a1;
  v288[1] = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  _needsRenderPass(v288, v21, v22, &v293 + 1, &v293, &v292, &v292 + 1, &v290, &v291 + 1, &v291);
  v61 = ~(-1 << UsedBitDepthForPixelFormat);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (v290)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = ~(-1 << UsedBitDepthForPixelFormat);
  }

  if (!v290)
  {
    v61 = 0.0;
  }

  if (HIBYTE(v291))
  {
    v63 = v291 == 0;
  }

  else
  {
    v63 = 1;
  }

  if (v63)
  {
    v64 = v62;
  }

  else
  {
    v64 = (1 << v15) + -1.0;
  }

  if (v291 && v286 != 1)
  {
    _renderToPixelBuffer(&v294);
    return v294;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (!v278)
  {
    return 0;
  }

  v66 = BytesPerRow;
  v259 = a1;
  v67 = 0;
  if (a5)
  {
    v68 = pixelFormat == 1111970369;
  }

  else
  {
    v68 = 0;
  }

  v69 = !v68;
  v269 = v69;
  v70 = 0x10000 << (v15 - 1);
  v71 = 0x1000000 << (v15 - 1);
  v72 = v286;
  if (a4)
  {
    v72 = v286 + 1;
  }

  v73 = 0x800000 << v15;
  if (v61 >= v64)
  {
    v74 = v64;
  }

  else
  {
    v74 = v61;
  }

  if (v61 <= v64)
  {
    v75 = v64;
  }

  else
  {
    v75 = v61;
  }

  v76 = v13 >= 9 && a3 >= 2;
  v77 = v13 >> 3;
  v260 = 1 << (v15 - 1);
  v78 = ~(-1 << v15);
  v79 = 65535.0 / v78;
  v80 = v70 >> 16;
  v81 = -HIWORD(v70);
  v283 = 2 * (a4 != 0);
  v285 = a4 != 0;
  v262 = v71 >> 24;
  v275 = -(v71 >> 24);
  v277 = v73 >> 24;
  v82 = (v64 - v61);
  v84 = !v76 || a6 == 0;
  v270 = v84;
  v261 = v77;
  __n = v72 * count * v77;
  v276 = (v78 + HIBYTE(v73));
  v85 = 255.0 / v78;
  v274 = (v78 + HIBYTE(v71));
  v86 = (v78 + HIWORD(v70));
  v268 = BytesPerRow;
  v256 = v61;
  while (1)
  {
    v87 = (a2 + v67 * a3);
    if ((v270 & 1) == 0)
    {
      v88 = a3 >> 1;
      v89 = (a2 + v67 * a3);
      do
      {
        *v89 = bswap32(*v89) >> 16;
        ++v89;
        --v88;
      }

      while (v88);
    }

    v280 = v67;
    v90 = &BaseAddress[v67 * v66];
    if (!v291)
    {
      v100 = CMPhotoGetUsedBitDepthForPixelFormat(pixelFormat);
      v101 = CMPhotoPixelFormatContainsAlpha(pixelFormat);
      v266 = v101;
      v102 = v100 == v15 && v101 == a4;
      v103 = v269;
      if (!v102)
      {
        v103 = 0;
      }

      v264 = v103;
      v104 = CMPhotoPixelFormatContainsRGB(pixelFormat);
      if (v286 <= 1 && v104)
      {
        return 4294947631;
      }

      if (v266)
      {
        v105 = 1;
      }

      else
      {
        v105 = a4 == 0;
      }

      v106 = 4294947631;
      if (!v105 || v100 < v15 || v100 >> 3 != v261)
      {
        return v106;
      }

      if ((v281 & v264) != 0)
      {
        memcpy(v90, v87, __n);
      }

      else if (v15 > 8)
      {
        if (v281)
        {
          if (count)
          {
            for (i = 0; i != count; ++i)
            {
              v134 = v286;
              if (v286)
              {
                do
                {
                  v135 = ~(-1 << v15);
                  v137 = *v87;
                  v87 += 2;
                  v136 = v137;
                  if (v137 < v78)
                  {
                    v135 = v136;
                  }

                  if (v15 == 16)
                  {
                    v135 = v136;
                  }

                  v138 = vcvtas_u32_f32(v79 * v135);
                  if (v138 >= 0xFFFF)
                  {
                    LOWORD(v138) = -1;
                  }

                  *v90 = v138;
                  v90 += 2;
                  --v134;
                }

                while (v134);
              }

              if ((v269 & 1) == 0)
              {
                v139 = *(v90 - 1);
                *(v90 - 1) = *(v90 - 3);
                *(v90 - 3) = v139;
              }

              if (v266)
              {
                *v90 = -1;
                v90 += 2;
              }

              v87 += v283;
            }
          }
        }

        else if (count)
        {
          for (j = 0; j != count; ++j)
          {
            v207 = v286;
            if (v286)
            {
              do
              {
                v209 = *v87;
                v87 += 2;
                v208 = v209;
                v210 = ((v80 ^ v209) - v80);
                if (v86 >= v210)
                {
                  v211 = v210;
                }

                else
                {
                  v211 = v86;
                }

                if (v210 < v81)
                {
                  v211 = v81;
                }

                if (v15 != 16)
                {
                  v208 = v211;
                }

                v212 = vcvtas_u32_f32(v79 * (v260 + v208));
                if (v212 >= 0xFFFF)
                {
                  LOWORD(v212) = -1;
                }

                *v90 = v212;
                v90 += 2;
                --v207;
              }

              while (v207);
            }

            if ((v269 & 1) == 0)
            {
              v213 = *(v90 - 1);
              *(v90 - 1) = *(v90 - 3);
              *(v90 - 3) = v213;
            }

            if (v266)
            {
              *v90 = -1;
              v90 += 2;
            }

            v87 += v283;
          }
        }
      }

      else if (v281)
      {
        if (count)
        {
          for (k = 0; k != count; ++k)
          {
            v108 = v286;
            if (v286)
            {
              do
              {
                v109 = ~(-1 << v15);
                v111 = *v87++;
                v110 = v111;
                if (v111 < v78)
                {
                  v109 = v110;
                }

                if (v15 == 8)
                {
                  v109 = v110;
                }

                v112 = vcvtas_u32_f32(v85 * v109);
                if (v112 >= 0xFF)
                {
                  LOBYTE(v112) = -1;
                }

                *v90++ = v112;
                --v108;
              }

              while (v108);
            }

            if ((v269 & 1) == 0)
            {
              v113 = *(v90 - 1);
              *(v90 - 1) = *(v90 - 3);
              *(v90 - 3) = v113;
            }

            if (v266)
            {
              *v90++ = -1;
            }

            v87 += v285;
          }
        }
      }

      else if (count)
      {
        for (m = 0; m != count; ++m)
        {
          v199 = v286;
          if (v286)
          {
            do
            {
              v201 = *v87++;
              v200 = v201;
              v202 = ((v262 ^ v201) - v262);
              if (v274 >= v202)
              {
                v203 = v202;
              }

              else
              {
                v203 = v274;
              }

              if (v202 < v275)
              {
                v203 = v275;
              }

              if (v15 != 8)
              {
                v200 = v203;
              }

              v204 = vcvtas_u32_f32(v85 * (v260 + v200));
              if (v204 >= 0xFF)
              {
                LOBYTE(v204) = -1;
              }

              *v90++ = v204;
              --v199;
            }

            while (v199);
          }

          if ((v269 & 1) == 0)
          {
            v205 = *(v90 - 1);
            *(v90 - 1) = *(v90 - 3);
            *(v90 - 3) = v205;
          }

          if (v266)
          {
            *v90++ = -1;
          }

          v87 += v285;
        }
      }

      goto LABEL_428;
    }

    if (!HIBYTE(v291))
    {
      break;
    }

    v91 = v293;
    v258 = v292;
    v92 = *(*v259 + 280);
    v265 = *(*v259 + 272);
    if (v92)
    {
      atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v263 = v92;
    v93 = CMPhotoGetUsedBitDepthForPixelFormat(pixelFormat);
    v94 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    if (!v94)
    {
      v106 = 4294947635;
      v166 = v263;
      goto LABEL_377;
    }

    if (v15 > 8)
    {
      if (v281)
      {
        if (count)
        {
          v128 = count;
          v129 = v94;
          do
          {
            v131 = *v87;
            v87 += 2;
            v130 = v131;
            v132 = ~(-1 << v15);
            if (v131 < v78)
            {
              v132 = v130;
            }

            if (v15 != 16)
            {
              v130 = v132;
            }

            *v129++ = *&v91 + (v130 * *(&v91 + 1));
            --v128;
          }

          while (v128);
        }
      }

      else if (count)
      {
        v160 = count;
        v161 = v94;
        do
        {
          v163 = *v87;
          v87 += 2;
          v162 = v163;
          v164 = ((v80 ^ v163) - v80);
          if (v86 >= v164)
          {
            v165 = v164;
          }

          else
          {
            v165 = v86;
          }

          if (v164 < v81)
          {
            v165 = v81;
          }

          if (v15 != 16)
          {
            v162 = v165;
          }

          *v161++ = *&v91 + (v162 * *(&v91 + 1));
          --v160;
        }

        while (v160);
      }
    }

    else if (v281)
    {
      if (count)
      {
        v95 = count;
        v96 = v94;
        do
        {
          v98 = *v87++;
          v97 = v98;
          v99 = ~(-1 << v15);
          if (v98 < v78)
          {
            v99 = v97;
          }

          if (v15 != 8)
          {
            v97 = v99;
          }

          *v96++ = *&v91 + (v97 * *(&v91 + 1));
          --v95;
        }

        while (v95);
      }
    }

    else if (count)
    {
      v154 = count;
      v155 = v94;
      do
      {
        v157 = *v87++;
        v156 = v157;
        v158 = ((v277 ^ v157) - v277);
        if (v276 >= v158)
        {
          v159 = v158;
        }

        else
        {
          v159 = v276;
        }

        if (v158 < -(0x800000 << v15 >> 24))
        {
          v159 = -(0x800000 << v15 >> 24);
        }

        if (v15 != 8)
        {
          v156 = v159;
        }

        *v155++ = *&v91 + (v156 * *(&v91 + 1));
        --v154;
      }

      while (v154);
    }

    if (v265[4] == v265[3])
    {
      v29 = v93 >= 9;
      v166 = v263;
      if (v29)
      {
        v186 = count;
        if (count)
        {
          v187 = *&v258 + -0.5;
          v188 = ((*(&v258 + 1) + -1.0) * 0.5);
          v189 = v187 - v188;
          v190 = v187 + v188;
          v191 = v94;
          do
          {
            v192 = *v191++;
            v193 = v192;
            v194 = v61;
            if (v189 < v192)
            {
              v194 = v64;
              if (v190 >= v193)
              {
                v194 = v256 + ((v193 - v187) / (*(&v258 + 1) + -1.0) + 0.5) * v82;
              }
            }

            v195 = roundf(v194);
            if (v75 >= v195)
            {
              v196 = v195;
            }

            else
            {
              v196 = v75;
            }

            if (v195 >= v74)
            {
              v197 = v196;
            }

            else
            {
              v197 = v74;
            }

            *v90 = v197;
            v90 += 2;
            --v186;
          }

          while (v186);
        }
      }

      else
      {
        v214 = count;
        if (count)
        {
          v215 = *&v258 + -0.5;
          v216 = ((*(&v258 + 1) + -1.0) * 0.5);
          v217 = v215 - v216;
          v218 = v215 + v216;
          v219 = v94;
          do
          {
            v220 = *v219++;
            v221 = v220;
            v222 = v61;
            if (v217 < v220)
            {
              v222 = v64;
              if (v218 >= v221)
              {
                v222 = v256 + ((v221 - v215) / (*(&v258 + 1) + -1.0) + 0.5) * v82;
              }
            }

            v223 = roundf(v222);
            if (v75 >= v223)
            {
              v224 = v223;
            }

            else
            {
              v224 = v75;
            }

            if (v223 >= v74)
            {
              v225 = v224;
            }

            else
            {
              v225 = v74;
            }

            *v90++ = v225;
            --v214;
          }

          while (v214);
        }
      }

      v106 = 0;
LABEL_377:
      free(v94);
      if (!v166)
      {
        goto LABEL_379;
      }

      goto LABEL_378;
    }

    v166 = v263;
    if (pixelFormat != 1815491698)
    {
      v106 = 4294947631;
      goto LABEL_377;
    }

    v257 = v94;
    if (v263)
    {
      atomic_fetch_add_explicit(&v263->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v263->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v167 = count;
    v294 = v265;
    v295 = v263;
    PaletteSize = _getPaletteSize(&v294);
    if (v263)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v263);
    }

    if (count)
    {
      v169 = *&v258 + -0.5;
      v170 = ((*(&v258 + 1) + -1.0) * 0.5);
      v171 = v169 - v170;
      v172 = v169 + v170;
      v173 = *(*v265 + 4);
      v174 = v265[3];
      v175 = *(*v174 + 8);
      v176 = (*(*v174 + 16) - v175) >> 1;
      v177 = v257;
      do
      {
        v178 = *v177++;
        v179 = v178;
        v180 = v61;
        if (v171 < v178)
        {
          v180 = v64;
          if (v172 >= v179)
          {
            v180 = v256 + ((v179 - v169) / (*(&v258 + 1) + -1.0) + 0.5) * v82;
          }
        }

        v181 = llroundf(v180 - v173);
        if (PaletteSize - 1 >= v181)
        {
          v182 = v181;
        }

        else
        {
          v182 = PaletteSize - 1;
        }

        if (v181 >= 0)
        {
          v183 = v182;
        }

        else
        {
          v183 = 0;
        }

        if (v176 <= v183 || (*v90 = *(v175 + 2 * v183), v184 = *(v174[2] + 8), v183 >= ((*(v174[2] + 16) - v184) >> 1)) || (*(v90 + 1) = *(v184 + 2 * v183), v185 = *(v174[4] + 8), v183 >= ((*(v174[4] + 16) - v185) >> 1)))
        {
          std::vector<std::array<int,3ul>>::__throw_out_of_range[abi:ne200100]();
        }

        *(v90 + 2) = *(v185 + 2 * v183);
        *(v90 + 3) = -1;
        v90 += 8;
        --v167;
      }

      while (v167);
    }

    v166 = v263;
    if (v263)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v263);
      free(v257);
      v106 = 0;
LABEL_378:
      std::__shared_weak_count::__release_shared[abi:ne200100](v166);
LABEL_379:
      if (v106)
      {
        return v106;
      }

      goto LABEL_428;
    }

    free(v257);
LABEL_428:
    v67 = v280 + 1;
    v66 = v268;
    if (v280 + 1 == v278)
    {
      return 0;
    }
  }

  if (!v291)
  {
    return 4294947633;
  }

  v114 = *(*v259 + 280);
  v267 = *(*v259 + 272);
  if (v114)
  {
    atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (CMPhotoPixelFormatContainsRGB(pixelFormat) && *(*v267 + 8) == 16)
  {
    if (v15 > 8)
    {
      if (v281)
      {
        if (v114)
        {
          atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v294 = v267;
        v295 = v114;
        v140 = _getPaletteSize(&v294);
        if (v114)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v114);
        }

        if (count)
        {
          v141 = *(*v267 + 4);
          v142 = v267[3];
          v143 = *(*v142 + 8);
          v144 = (*(*v142 + 16) - v143) >> 1;
          v145 = count;
          do
          {
            v147 = *v87;
            v87 += 2;
            v146 = v147;
            v148 = ~(-1 << v15);
            if (v147 < v78)
            {
              v148 = v146;
            }

            if (v15 != 16)
            {
              v146 = v148;
            }

            v149 = v146 - v141;
            if (v140 - 1 >= v149)
            {
              v150 = v149;
            }

            else
            {
              v150 = v140 - 1;
            }

            if (v149 >= 0)
            {
              v151 = v150;
            }

            else
            {
              v151 = 0;
            }

            if (v144 <= v151 || (*v90 = *(v143 + 2 * v151), v152 = *(v142[2] + 8), v151 >= ((*(v142[2] + 16) - v152) >> 1)) || (*(v90 + 1) = *(v152 + 2 * v151), v153 = *(v142[4] + 8), v151 >= ((*(v142[4] + 16) - v153) >> 1)))
            {
              std::vector<std::array<int,3ul>>::__throw_out_of_range[abi:ne200100]();
            }

            *(v90 + 2) = *(v153 + 2 * v151);
            *(v90 + 3) = -1;
            v90 += 8;
            --v145;
          }

          while (v145);
        }
      }

      else
      {
        if (v114)
        {
          atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v294 = v267;
        v295 = v114;
        v240 = _getPaletteSize(&v294);
        if (v114)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v114);
        }

        if (count)
        {
          v241 = *(*v267 + 4);
          v242 = v267[3];
          v243 = *(*v242 + 8);
          v244 = (*(*v242 + 16) - v243) >> 1;
          v245 = count;
          do
          {
            v247 = *v87;
            v87 += 2;
            v246 = v247;
            v248 = ((v80 ^ v247) - v80);
            if (v86 >= v248)
            {
              v249 = v248;
            }

            else
            {
              v249 = v86;
            }

            if (v248 < v81)
            {
              v249 = v81;
            }

            if (v15 != 16)
            {
              v246 = v249;
            }

            v250 = v246 - v241;
            if (v240 - 1 >= v250)
            {
              v251 = v250;
            }

            else
            {
              v251 = v240 - 1;
            }

            if (v250 >= 0)
            {
              v252 = v251;
            }

            else
            {
              v252 = 0;
            }

            if (v244 <= v252 || (*v90 = *(v243 + 2 * v252), v253 = *(v242[2] + 8), v252 >= ((*(v242[2] + 16) - v253) >> 1)) || (*(v90 + 1) = *(v253 + 2 * v252), v254 = *(v242[4] + 8), v252 >= ((*(v242[4] + 16) - v254) >> 1)))
            {
              std::vector<std::array<int,3ul>>::__throw_out_of_range[abi:ne200100]();
            }

            *(v90 + 2) = *(v254 + 2 * v252);
            *(v90 + 3) = -1;
            v90 += 8;
            --v245;
          }

          while (v245);
        }
      }
    }

    else if (v281)
    {
      if (v114)
      {
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v294 = v267;
      v295 = v114;
      v115 = _getPaletteSize(&v294);
      if (v114)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v114);
      }

      if (count)
      {
        v116 = *(*v267 + 4);
        v117 = v267[3];
        v118 = *(*v117 + 8);
        v119 = (*(*v117 + 16) - v118) >> 1;
        v120 = count;
        do
        {
          v122 = *v87++;
          v121 = v122;
          if (v122 >= v78)
          {
            v121 = ~(-1 << v15);
          }

          v123 = v121 - v116;
          if (v115 - 1 >= v123)
          {
            v124 = v123;
          }

          else
          {
            v124 = v115 - 1;
          }

          if (v123 >= 0)
          {
            v125 = v124;
          }

          else
          {
            v125 = 0;
          }

          if (v119 <= v125 || (*v90 = *(v118 + 2 * v125), v126 = *(v117[2] + 8), v125 >= ((*(v117[2] + 16) - v126) >> 1)) || (*(v90 + 1) = *(v126 + 2 * v125), v127 = *(v117[4] + 8), v125 >= ((*(v117[4] + 16) - v127) >> 1)))
          {
            std::vector<std::array<int,3ul>>::__throw_out_of_range[abi:ne200100]();
          }

          *(v90 + 2) = *(v127 + 2 * v125);
          *(v90 + 3) = -1;
          v90 += 8;
          --v120;
        }

        while (v120);
      }
    }

    else
    {
      if (v114)
      {
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v294 = v267;
      v295 = v114;
      v226 = _getPaletteSize(&v294);
      if (v114)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v114);
      }

      if (count)
      {
        v227 = *(*v267 + 4);
        v228 = v267[3];
        v229 = *(*v228 + 8);
        v230 = (*(*v228 + 16) - v229) >> 1;
        v231 = count;
        do
        {
          v232 = *v87++;
          v233 = ((v262 ^ v232) - v262);
          if (v274 >= v233)
          {
            v234 = v233;
          }

          else
          {
            v234 = v274;
          }

          if (v233 < v275)
          {
            v234 = v275;
          }

          v235 = v234 - v227;
          if (v226 - 1 >= v235)
          {
            v236 = v235;
          }

          else
          {
            v236 = v226 - 1;
          }

          if (v235 >= 0)
          {
            v237 = v236;
          }

          else
          {
            v237 = 0;
          }

          if (v230 <= v237 || (*v90 = *(v229 + 2 * v237), v238 = *(v228[2] + 8), v237 >= ((*(v228[2] + 16) - v238) >> 1)) || (*(v90 + 1) = *(v238 + 2 * v237), v239 = *(v228[4] + 8), v237 >= ((*(v228[4] + 16) - v239) >> 1)))
          {
            std::vector<std::array<int,3ul>>::__throw_out_of_range[abi:ne200100]();
          }

          *(v90 + 2) = *(v239 + 2 * v237);
          *(v90 + 3) = -1;
          v90 += 8;
          --v231;
        }

        while (v231);
      }
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    goto LABEL_428;
  }

  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v114);
  }

  return 4294947631;
}

void sub_1A5984310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

BOOL _needToFindMinMax(void *a1)
{
  v5 = 0;
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  _getPhotometricInterpretationFromImageDetails(v4, &v5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return (v5 - 1) <= 1 && !*(*a1 + 288) && (*(*a1 + 216) & 1) == 0;
}

void sub_1A598444C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<vega::Byte>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1A59844BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__120__shared_ptr_emplaceI17DicomImageDetailsNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F1916160;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 40) = 0u;
  vega::dicom::TransferSyntax::TransferSyntax((a1 + 40));
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 240) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  return a1;
}

void sub_1A5984614(_Unwind_Exception *a1)
{
  shared_owners = v1[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<DicomImageDetails>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1916160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void DicomImageDetails::~DicomImageDetails(DicomImageDetails *this)
{
  v2 = *(this + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 35);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 33);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 31);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 29);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 25);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 23);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 21);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 19);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 17);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 15);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(this + 88) == 1)
  {
    v16 = (this + 64);
    std::vector<std::vector<vega::Byte>>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  v15 = *(this + 1);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void std::__shared_ptr_emplace<DicomImageRenderingDetails>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19161B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<DicomImageRenderingDetails>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = (a1 + 48);
  std::vector<std::shared_ptr<vega::dicom::DataSet>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }
}

uint64_t CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities(CFAllocatorRef allocator, CFDictionaryRef *a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = *"";
  block[2] = __CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities_block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = allocator;
  if (CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities_onceToken != -1)
  {
    dispatch_once(&CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities_onceToken, block);
  }

  result = CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities_err;
  if (a2 && !CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities_err)
  {
    if (CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities_sCapabilities)
    {
      *a2 = CFDictionaryCreateCopy(allocator, CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities_sCapabilities);
      return CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities_err;
    }
  }

  return result;
}

uint64_t CMPhotoGetImageType(const void *a1)
{
  pthread_once(&CMPhotoGetImageType_onceToken, _once_CMPhotoGetImageType);
  v2 = CFGetTypeID(a1);
  result = 1;
  while (v2 != sTypes[result])
  {
    if (++result == 5)
    {
      return 0;
    }
  }

  return result;
}

CFTypeID _once_CMPhotoGetImageType()
{
  sTypes = 0;
  qword_1ED6FAB00 = IOSurfaceGetTypeID();
  qword_1ED6FAB08 = CVPixelBufferGetTypeID();
  qword_1ED6FAB10 = CMSampleBufferGetTypeID();
  result = CGImageGetTypeID();
  qword_1ED6FAB18 = result;
  return result;
}

uint64_t CMPhotoGetSourceDimensions(opaqueCMSampleBuffer *a1, CFDictionaryRef theDict, unint64_t *a3)
{
  if (!(a1 | theDict))
  {
    CMPhotoGetSourceDimensions_cold_3(&v16);
    return v16;
  }

  ImageBuffer = a1;
  if (!a1)
  {
    Value = CFDictionaryGetValue(theDict, @"DryRun");
    if (!Value || (v9 = Value, v10 = CFGetTypeID(Value), v10 != CMFormatDescriptionGetTypeID()))
    {
      CMPhotoGetSourceDimensions_cold_2();
      return 0;
    }

    Dimensions = CMVideoFormatDescriptionGetDimensions(v9);
    v12 = Dimensions;
    v13 = Dimensions >> 32;
    goto LABEL_13;
  }

  ImageType = CMPhotoGetImageType(a1);
  switch(ImageType)
  {
    case 3:
      ImageBuffer = CMSampleBufferGetImageBuffer(ImageBuffer);
      if (!ImageBuffer)
      {
        CMPhotoGetSourceDimensions_cold_1(&v15);
        return v15;
      }

      goto LABEL_11;
    case 2:
LABEL_11:
      PixelBufferSize = CMPhotoGetPixelBufferSize(ImageBuffer);
      goto LABEL_12;
    case 1:
      PixelBufferSize = CMPhotoGetSurfaceSize(ImageBuffer);
LABEL_12:
      v12 = vcvtad_u64_f64(PixelBufferSize);
      v13 = vcvtad_u64_f64(v7);
LABEL_13:
      result = 0;
      *a3 = v12;
      a3[1] = v13;
      return result;
  }

  if (FigCFDictionaryGetValue())
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoGetCMPhotoAuxiliaryImageTypeAndFinalURNFromURN(uint64_t result, __CFString **a2)
{
  if (!result)
  {
    v3 = 0;
    goto LABEL_6;
  }

  v3 = @"urn:mpeg:hevc:2015:auxid:2";
  if (FigCFEqual() || (v3 = @"urn:mpeg:mpegB:cicp:systems:auxiliary:depth", FigCFEqual()))
  {
    result = 2;
    goto LABEL_6;
  }

  if (FigCFEqual())
  {
    v3 = @"urn:mpeg:hevc:2015:auxid:2";
LABEL_12:
    result = 1;
    goto LABEL_6;
  }

  if (FigCFEqual())
  {
    goto LABEL_12;
  }

  v3 = @"urn:mpeg:hevc:2015:auxid:1";
  if (FigCFEqual() || (v3 = @"urn:mpeg:mpegB:cicp:systems:auxiliary:alpha", FigCFEqual()))
  {
    result = 3;
  }

  else
  {
    v3 = @"urn:com:apple:photo:2018:aux:portraiteffectsmatte";
    if (FigCFEqual())
    {
      result = 5;
    }

    else
    {
      v3 = @"urn:com:apple:photo:2019:aux:semanticskinmatte";
      if (FigCFEqual() || (v3 = @"urn:com:apple:photo:2019:aux:semantichairmatte", FigCFEqual()) || (v3 = @"urn:com:apple:photo:2019:aux:semanticteethmatte", FigCFEqual()) || (v3 = @"urn:com:apple:photo:2020:aux:semanticskymatte", FigCFEqual()) || (v3 = @"urn:com:apple:photo:2020:aux:semanticglassesmatte", FigCFEqual()) || (v3 = @"urn:com:apple:photo:2020:aux:hdrgainmap", FigCFEqual()) || (v3 = @"tag:apple.com,2023:photo:aux:linearthumbnail", FigCFEqual()) || (v3 = @"tag:apple.com,2023:photo:aux:deltamap", FigCFEqual()) || (v3 = @"tag:apple.com,2023:photo:aux:styledeltamap", FigCFEqual()))
      {
        result = 4;
      }

      else
      {
        v3 = @"tag:apple.com,2023:photo:aux:constantcolorconfidencemap";
        v4 = FigCFEqual();
        v5 = v4 == 0;
        result = 4 * (v4 != 0);
        if (v5)
        {
          v3 = 0;
        }
      }
    }
  }

LABEL_6:
  if (a2)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t CMPhotoCreatePixelBufferFromCGImage(CGImage *a1, const __CFString *a2, unsigned int a3, uint64_t a4, CVBufferRef *a5)
{
  buffer = 0;
  v69 = 0;
  if (!a1)
  {
    CMPhotoCreatePixelBufferFromCGImage_cold_7(&v70);
LABEL_101:
    v58 = v70;
    goto LABEL_94;
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v11 = CGImageGetBitsPerComponent(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  v13 = MEMORY[0x1E695F1C0];
  if (!ColorSpace || (v14 = CFRetain(ColorSpace)) == 0)
  {
    v14 = CGColorSpaceCreateWithName(*v13);
    if (!v14)
    {
      CMPhotoCreatePixelBufferFromCGImage_cold_6(&v70);
      goto LABEL_101;
    }
  }

  v15 = v14;
  v63 = a3;
  v60 = a4;
  if (CGColorSpaceGetModel(v14) == kCGColorSpaceModelIndexed)
  {
    v16 = CGColorSpaceCopyBaseColorSpace();
    CFRelease(v15);
    v15 = v16;
  }

  AlphaInfo = CGImageGetAlphaInfo(a1);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  v20 = !CMPhotoExtensionIsPNG(a2) && AlphaInfo - 1 < 2;
  value = v15;
  Model = CGColorSpaceGetModel(v15);
  v22 = BitmapInfo & 0x100;
  v23 = 16;
  if (v11 > 0x10)
  {
    v23 = 32;
  }

  if (v11 <= 8)
  {
    v23 = 8;
  }

  bitsPerComponent = v23;
  if (v11 >= 0x11 && (BitmapInfo & 0x100) == 0)
  {
    CMPhotoCreatePixelBufferFromCGImage_cold_5(&v70);
    goto LABEL_103;
  }

  if (v11 <= 0xA)
  {
    v24 = 1278226736;
  }

  else
  {
    v24 = 1278226742;
  }

  if (v11 <= 0x10)
  {
    v25 = 1380411457;
  }

  else
  {
    v25 = 1380410945;
  }

  if ((BitmapInfo & 0x100) == 0)
  {
    v25 = 1815491698;
  }

  if (v11 <= 8)
  {
    v26 = 1278226488;
  }

  else
  {
    v26 = v24;
  }

  if (v11 <= 8)
  {
    v27 = 1111970369;
  }

  else
  {
    v27 = v25;
  }

  if (Model)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  if (CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", v28, Width, Height, 1, 0, 0, 1, 0, 0, &buffer))
  {
    CMPhotoCreatePixelBufferFromCGImage_cold_1(&v70);
LABEL_103:
    v64 = 0;
    cf = 0;
    v41 = 0;
    v58 = v70;
    goto LABEL_107;
  }

  v29 = AlphaInfo - 5;
  v30 = value;
  if (Model)
  {
    CVBufferSetAttachment(buffer, *MEMORY[0x1E6965CE8], value, kCVAttachmentMode_ShouldPropagate);
  }

  v61 = v29;
  if (v29 >= 0xFFFFFFFC)
  {
    v31 = v20;
  }

  else
  {
    v31 = 2;
  }

  CMPhotoPixelBufferSetAlphaOpaquenessAndAlphaMode(buffer, v29 < 0xFFFFFFFC, v31);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  CVPixelBufferLockBaseAddress(buffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  if (v11 <= 0x10)
  {
    v34 = 4096;
  }

  else
  {
    v34 = 0x2000;
  }

  if (v11 <= 0x10)
  {
    v35 = 4101;
  }

  else
  {
    v35 = 8197;
  }

  if (v11 <= 8)
  {
    v34 = 0;
    v35 = 8198;
  }

  if (Model)
  {
    v36 = v35;
  }

  else
  {
    v36 = v34;
  }

  if (!CGColorSpaceSupportsOutput(value))
  {
    v38 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (v38)
    {
      v30 = v38;
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(a1, v38);
      if (CopyWithColorSpace)
      {
        goto LABEL_59;
      }

      v64 = 0;
      cf = v30;
    }

    else
    {
      v64 = 0;
      cf = 0;
    }

    v41 = 0;
    v58 = 4294950305;
LABEL_107:
    v43 = value;
    goto LABEL_86;
  }

  if (value)
  {
    v30 = CFRetain(value);
  }

  CopyWithColorSpace = CFRetain(a1);
LABEL_59:
  v39 = CopyWithColorSpace;
  v40 = CGBitmapContextCreate(BaseAddress, Width, Height, bitsPerComponent, BytesPerRow, v30, v36 | v22);
  v64 = v40;
  cf = v30;
  if (v40)
  {
    v71.origin.x = 0.0;
    v71.origin.y = 0.0;
    v71.size.width = Width;
    v71.size.height = Height;
    CGContextDrawImage(v40, v71, v39);
    v41 = 0;
    if (v61 >= 0xFFFFFFFC && !v22)
    {
      if (v11 <= 8)
      {
        v42 = 7;
      }

      else
      {
        v42 = 4097;
      }

      v43 = value;
      if (v11 <= 8)
      {
        v44 = 0;
      }

      else
      {
        v44 = value;
      }

      v45 = CGBitmapContextCreate(0, Width, Height, bitsPerComponent, BytesPerRow, v44, v42);
      v41 = v45;
      if (!v45)
      {
        CMPhotoCreatePixelBufferFromCGImage_cold_2(&v70);
        v58 = v70;
        if (!v39)
        {
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      v72.origin.x = 0.0;
      v72.origin.y = 0.0;
      v72.size.width = Width;
      v72.size.height = Height;
      CGContextDrawImage(v45, v72, a1);
      if (Height)
      {
        for (i = 0; i != Height; ++i)
        {
          Data = CGBitmapContextGetData(v41);
          if (Width)
          {
            v48 = &Data[i * BytesPerRow];
            v49 = &BaseAddress[i * BytesPerRow];
            v50 = Width;
            v51 = v48;
            v52 = v49;
            do
            {
              if (v11 < 9)
              {
                v53 = *v51++;
                v52[3] = v53;
                v52 += 4;
              }

              else
              {
                *(v49 + 3) = *(v48 + 3);
                v49 += 8;
                v48 += 8;
              }

              --v50;
            }

            while (v50);
          }
        }
      }
    }

    CVPixelBufferUnlockBaseAddress(buffer, 0);
    v54 = buffer;
    if (v63)
    {
      DefaultTripletsForTransfer = CMPhotoCreateDefaultTripletsForTransfer(buffer, v63);
      v57 = CMPhotoScaleAndRotateSessionTransformForSize(0, buffer, 1, 1, v63, DefaultTripletsForTransfer, v56, 0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v60, 1u, &v69);
      if (v57)
      {
        v58 = v57;
        CMPhotoCreatePixelBufferFromCGImage_cold_3();
        goto LABEL_84;
      }
    }

    else
    {
      buffer = 0;
      v69 = v54;
    }

    v58 = 0;
    if (a5)
    {
      *a5 = v69;
      v69 = 0;
    }
  }

  else
  {
    CMPhotoCreatePixelBufferFromCGImage_cold_4(&v70);
    v41 = 0;
    v58 = v70;
  }

LABEL_84:
  v43 = value;
  if (v39)
  {
LABEL_85:
    CFRelease(v39);
  }

LABEL_86:
  if (v43)
  {
    CFRelease(v43);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v41)
  {
    CFRelease(v41);
  }

LABEL_94:
  if (buffer)
  {
    CFRelease(buffer);
  }

  return v58;
}

uint64_t CMPhotoGetTripletsForColorSpaceUsingColorSync(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  CMPhotoPixelFormatIsFullRange(a2);
  CMPhotoPixelFormatContainsRGB(v8);
  CGColorSpaceGetCICPInfo();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

__CFString *CMPhotoGetCGImageAuxiliaryDataTypeFromCMPhotoAuxiliaryImageType(int a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v1 = MEMORY[0x1E696D260];
      return *v1;
    }

    if (a1 == 2)
    {
      v1 = MEMORY[0x1E696D258];
      return *v1;
    }

    goto LABEL_14;
  }

  if (a1 == 3)
  {
    v1 = MEMORY[0x1E696D250];
    return *v1;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      v1 = MEMORY[0x1E696D288];
      return *v1;
    }

LABEL_14:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 0;
  }

  if (FigCFEqual())
  {
    v2 = MEMORY[0x1E696D288];
  }

  else if (FigCFEqual())
  {
    v2 = MEMORY[0x1E696D2A0];
  }

  else if (FigCFEqual())
  {
    v2 = MEMORY[0x1E696D298];
  }

  else if (FigCFEqual())
  {
    v2 = MEMORY[0x1E696D2B0];
  }

  else if (FigCFEqual())
  {
    v2 = MEMORY[0x1E696D2A8];
  }

  else if (FigCFEqual())
  {
    v2 = MEMORY[0x1E696D290];
  }

  else
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        return @"kCGImageAuxiliaryDataTypeLinearThumbnail";
      }

      if (FigCFEqual())
      {
        return @"kCGImageAuxiliaryDataTypeDeltaMap";
      }

      if (FigCFEqual())
      {
        return @"kCGImageAuxiliaryDataTypeStyleDeltaMap";
      }

      if (FigCFEqual())
      {
        return @"kCGImageAuxiliaryDataTypeConstantColorConfidenceMap";
      }

LABEL_38:
      CMPhotoGetCGImageAuxiliaryDataTypeFromCMPhotoAuxiliaryImageType_cold_1();
      return 0;
    }

    v2 = MEMORY[0x1E696D270];
  }

  result = *v2;
  if (!*v2)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t CMPhotoGetCMPhotoAuxiliaryImageTypeFromCGImageAuxiliaryDataType(uint64_t result, __CFString **a2, int *a3)
{
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      v5 = @"urn:mpeg:hevc:2015:auxid:2";
      v6 = 1;
      if (!a2)
      {
        goto LABEL_36;
      }

LABEL_35:
      *a2 = v5;
      goto LABEL_36;
    }

    result = FigCFEqual();
    if (result)
    {
      v5 = @"urn:mpeg:hevc:2015:auxid:2";
      v6 = 2;
      if (a2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      result = FigCFEqual();
      if (result)
      {
        v5 = @"urn:mpeg:hevc:2015:auxid:1";
        v6 = 3;
        if (a2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = FigCFEqual();
        if (!result)
        {
          result = FigCFEqual();
          if (result)
          {
            v7 = kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte;
          }

          else
          {
            result = FigCFEqual();
            if (result)
            {
              v7 = kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte;
            }

            else
            {
              result = FigCFEqual();
              if (result)
              {
                v7 = kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte;
              }

              else
              {
                result = FigCFEqual();
                if (result)
                {
                  v7 = kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte;
                }

                else
                {
                  result = FigCFEqual();
                  if (result)
                  {
                    v7 = kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte;
                  }

                  else
                  {
                    result = FigCFEqual();
                    if (result)
                    {
                      v7 = kCMPhotoAuxiliaryImageTypeURN_HDRGainMap;
                    }

                    else
                    {
                      result = FigCFEqual();
                      if (result)
                      {
                        v7 = kCMPhotoAuxiliaryImageTypeURN_LinearThumbnail;
                      }

                      else
                      {
                        result = FigCFEqual();
                        if (result)
                        {
                          v7 = kCMPhotoAuxiliaryImageTypeURN_DeltaMap;
                        }

                        else
                        {
                          result = FigCFEqual();
                          if (!result)
                          {
                            result = FigCFEqual();
                            v5 = @"tag:apple.com,2023:photo:aux:constantcolorconfidencemap";
                            if (!result)
                            {
                              v5 = 0;
                            }

                            v6 = 4 * (result != 0);
                            if (a2)
                            {
                              goto LABEL_35;
                            }

                            goto LABEL_36;
                          }

                          v7 = kCMPhotoAuxiliaryImageTypeURN_StyleDeltaMap;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v5 = *v7;
          v6 = 4;
          if (!a2)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v5 = @"urn:com:apple:photo:2018:aux:portraiteffectsmatte";
        v6 = 5;
        if (a2)
        {
          goto LABEL_35;
        }
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    if (a2)
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  if (a3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t CMPhotoScaleAndRotateSessionSetSurfacePool(uint64_t a1, CFTypeRef cf)
{
  v3 = a1;
  if (!a1)
  {
    pthread_once(&CMPhotoScaleAndRotateSessionGetDefault_onceToken, _once_CMPhotoScaleAndRotateSessionGetDefault);
    v3 = defaultSession;
  }

  v4 = *(v3 + 16);
  if (cf)
  {
    CFRetain(cf);
    v5 = v4;
    atomic_compare_exchange_strong_explicit((v3 + 16), &v5, cf, memory_order_relaxed, memory_order_relaxed);
    if (v5 != v4)
    {
      v6 = 4294950304;
      v4 = cf;
LABEL_8:
      CFRelease(v4);
      return v6;
    }

LABEL_7:
    v6 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }

    goto LABEL_8;
  }

  v7 = *(v3 + 16);
  atomic_compare_exchange_strong_explicit((v3 + 16), &v7, 0, memory_order_relaxed, memory_order_relaxed);
  if (v7 == v4)
  {
    goto LABEL_7;
  }

  return 4294950304;
}

uint64_t CMPhotoScaleAndRotateSessionGetSurfacePool(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void CMPhotoScaleAndRotateSessionClass_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    dispatch_release(v5);
    a1[7] = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
    a1[8] = 0;
  }
}

uint64_t _makeEvenCropRect(unint64_t *a1, unint64_t a2, unint64_t a3, int a4, int a5, unint64_t *a6, uint64_t a7)
{
  v7 = a1[1];
  v8 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  v9 = a1[2] + *a1 + ((a1[2] + *a1) | 0xFFFFFFFFFFFFFFFELL) + 2;
  if (v9 >= a2)
  {
    v9 = a2;
  }

  if (a4)
  {
    LODWORD(v10) = (v9 & 1) == 0;
  }

  else
  {
    v8 = *a1;
    v9 = a1[2] + *a1;
    LODWORD(v10) = 1;
  }

  v11 = a1[3] + v7 + ((a1[3] + v7) | 0xFFFFFFFFFFFFFFFELL) + 2;
  if (v11 >= a3)
  {
    v11 = a3;
  }

  if (a5)
  {
    v7 &= ~1uLL;
    v12 = v11;
  }

  else
  {
    v12 = a1[3] + v7;
  }

  if (a5)
  {
    v10 = v10 & ~v11;
  }

  else
  {
    v10 = v10;
  }

  if (a6)
  {
    *a6 = v8;
    a6[1] = v7;
    a6[2] = v9 - v8;
    a6[3] = v12 - v7;
  }

  if (a7)
  {
    v13 = a1[1] - v7;
    v14 = *(a1 + 1);
    *a7 = *a1 - v8;
    *(a7 + 8) = v13;
    *(a7 + 16) = v14;
  }

  return v10;
}

void JPEGDecompressionPluginClass_dispose(uint64_t a1)
{
  if (a1)
  {
    PluginInstance_Dispose(*(a1 + 64));
    *(a1 + 64) = 0;
  }
}

void PluginInstance_Dispose(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[3];
    if (v3)
    {
      dispatch_release(v3);
      a1[3] = 0;
    }

    v4 = a1[1];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void Pool_DropBuffers(uint64_t a1, int a2)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = (a1 + 8);
    while (1)
    {
      v6 = v2[7];
      v7 = v6;
      if (!a2)
      {
        goto LABEL_6;
      }

      if (!IOSurfaceIsInUse(*v2))
      {
        break;
      }

LABEL_16:
      v2 = v6;
      if (!v6)
      {
        return;
      }
    }

    v7 = v2[7];
LABEL_6:
    v8 = v2[8];
    v9 = v7 + 8;
    if (!v7)
    {
      v9 = v5;
    }

    *v9 = v8;
    *v8 = v7;
    v10 = v2[5];
    if (v10)
    {
      v11 = (v10 + 48);
    }

    else
    {
      v11 = (v2[4] + 8);
    }

    v12 = v2[6];
    *v11 = v12;
    *v12 = v10;
    CMPhotoGetEncodeAccelerationModeOverride(*v2);
    if (*v2)
    {
      CFRelease(*v2);
    }

    v13 = v2[2];
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(a1 + 120);
    *(a1 + 112) -= v2[1];
    *(a1 + 120) = v14 - 1;
    v15 = v2[4];
    --*(v15 + 24);
    ++*(v15 + 48);
    free(v2);
    goto LABEL_16;
  }
}

void Pool_TallySubPoolStats(uint64_t a1, int64x2_t *context)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    CFDictionaryApplyFunction(*(a1 + 24), _tallyStatsApplier, context);
  }

  else if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = 0;
      v5 = *context;
      v7 = context[1].i64[0];
      v6 = context[1].i64[1];
      do
      {
        v8 = *(a1 + 24) + v4;
        v6 += *(v8 + 48);
        context[1].i64[1] = v6;
        v5 = vaddq_s64(v5, *(v8 + 24));
        *context = v5;
        v7 += *(v8 + 40);
        context[1].i64[0] = v7;
        v4 += 88;
        --v3;
      }

      while (v3);
    }
  }
}

void *SurfacePool_PerformFullClean(uint64_t a1)
{
  ++*(a1 + 408);
  Pool_DropBuffers(a1 + 24, 0);
  Pool_DropBuffers(a1 + 168, 0);
  if (!*(a1 + 320) && !*(a1 + 16))
  {
    dispatch_suspend(*(a1 + 328));
    *(a1 + 320) = 1;
  }

  result = *(a1 + 352);
  if (result)
  {
    [result unregisterBackgroundNotificationForContext:a1];
    v3 = *(a1 + 352);

    return [v3 releaseAssertionForContext:a1];
  }

  return result;
}

uint64_t CMPhotoSurfacePoolClass_Finalize(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = *(a1 + 336);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CMPhotoSurfacePoolClass_Finalize_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v3, block);
  v4 = *(a1 + 344);
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v5 = *(a1 + 328);
    if (v5)
    {
      dispatch_release(v5);
      *(a1 + 328) = 0;
    }

    v6 = *(a1 + 344);
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  v7 = *(a1 + 336);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 352);
  if (v8)
  {
    [v8 unregisterBackgroundNotificationForContext:a1];
    [*(a1 + 352) releaseAssertionForContext:a1];
    [*(a1 + 352) waitForPendingNotifications];
  }

  Pool_FreeAllSubPools(v2, a1 + 24);
  Pool_FreeAllSubPools(v2, a1 + 168);
  result = FigSimpleMutexDestroy();
  *(a1 + 312) = 0;
  return result;
}

void Pool_FreeAllSubPools(CFAllocatorRef allocator, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    CFDictionaryApplyFunction(*(a2 + 24), Pool_DestroySubPool, 0);
    v8 = *(a2 + 24);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else if (!v3)
  {
    if (*(a2 + 40))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        Pool_DestroySubPool(0, (*(a2 + 24) + v5));
        ++v6;
        v5 += 88;
      }

      while (*(a2 + 40) > v6);
    }

    v7 = *(a2 + 24);
    if (v7)
    {
      CFAllocatorDeallocate(allocator, v7);
    }
  }

  if (*(a2 + 48))
  {
    v9 = *(a2 + 32);

    free(v9);
  }
}

void Pool_DestroySubPool(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    do
    {
      v5 = *(v4 + 40);
      if (*v4)
      {
        CFRelease(*v4);
      }

      v6 = *(v4 + 16);
      if (v6)
      {
        CFRelease(v6);
      }

      free(v4);
      v4 = v5;
    }

    while (v5);
  }

  if (a1)
  {

    free(a2);
  }
}

void Pool_AppendDebugDesc(__CFString *a1, uint64_t a2)
{
  context = 0u;
  v12 = 0u;
  v13 = a1;
  v4 = *(a2 + 16);
  if (v4 == 1)
  {
    CFDictionaryApplyFunction(*(a2 + 24), _collectStatistics, &context);
    v7 = "Image pool";
  }

  else if (v4)
  {
    v7 = 0;
  }

  else if (*(a2 + 40))
  {
    v5 = 0;
    v6 = 0;
    v7 = "Memory pool";
    do
    {
      _collectStatistics(0, *(a2 + 24) + v5, &context);
      ++v6;
      v5 += 88;
    }

    while (*(a2 + 40) > v6);
  }

  else
  {
    v7 = "Memory pool";
  }

  v8 = context.i64[1];
  v9 = atomic_load((a2 + 132));
  if (v8)
  {
    v10 = context.u64[1] * 100.0 / (v12 + context.i64[1]);
  }

  else
  {
    v10 = 0.0;
  }

  CFStringAppendFormat(a1, 0, @"  %s: {\n    Subpool count:         %d\n    Total size:            %d bytes\n    Total IOSurface count: %d\n    One-shot allocations:  %d\n    Allocations:           %d\n    Total hits:            %d\n    Total misses:          %d\n    Total deletes:         %d\n    Hit ratio:             %.2f%%\n  },\n", v7, context.i64[0], *(a2 + 112), *(a2 + 120), v9, v12 + context.i64[1], context.i64[1], v12, *&v10);
}

int64x2_t _collectStatistics(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  CFStringAppendFormat(a3[2].i64[0], 0, @"    subpool: %d\n", a3->i64[0]);
  v6 = a3[2].i64[0];
  if (a1)
  {
    v7 = *(a2 + 68);
    v8 = *(a2 + 56);
    v9 = *(a2 + 60);
    v10 = *(a2 + 64);
    v11 = CMPhotoFormatFourCharCodeString(*(a2 + 72));
    LODWORD(v19) = v11;
    BYTE4(v19) = BYTE4(v11);
    CFStringAppendFormat(v6, 0, @"    image:   %d x %d, (%d x %d padded), %s\n", v8, v9, v10, v7, &v19, v19);
  }

  else
  {
    CFStringAppendFormat(v6, 0, @"    size:    %d\n", *(a2 + 16), v15, v16, v17, v18, v19);
  }

  CFStringAppendFormat(a3[2].i64[0], 0, @"    count:   %d\n    hits:    %d\n    misses:  %d\n    deletes: %d\n\n", *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48));
  v12.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v12.i64[1] = *(a2 + 32);
  v13 = a3[1];
  *a3 = vaddq_s64(*a3, v12);
  result = vaddq_s64(v13, *(a2 + 40));
  a3[1] = result;
  return result;
}

int64x2_t _tallyStatsApplier(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  v3 = a3[1].i64[0];
  a3[1].i64[1] += *(a2 + 48);
  result = vaddq_s64(*a3, *(a2 + 24));
  *a3 = result;
  a3[1].i64[0] = v3 + *(a2 + 40);
  return result;
}

void _computeSSIMForPlane(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, unsigned int a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v173 = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v27 = PixelFormatType;
  BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(PixelFormatType);
  LODWORD(v163) = 1;
  if (v27 <= 1651926375)
  {
    if (v27 == 1278226536 || v27 == 1380411457)
    {
      goto LABEL_12;
    }

    v29 = 1647719528;
  }

  else if (v27 > 1751411058)
  {
    if (v27 == 1751411059)
    {
      goto LABEL_12;
    }

    v29 = 1751527984;
  }

  else
  {
    if (v27 == 1651926376)
    {
      goto LABEL_12;
    }

    v29 = 1751410032;
  }

  if (v27 != v29)
  {
    LODWORD(v163) = 0;
  }

LABEL_12:
  HIDWORD(v163) = 1;
  v162 = BitDepthForPixelFormat;
  if (v27 > 1717855599)
  {
    if (v27 == 1717855600)
    {
      goto LABEL_19;
    }

    v30 = 1717856627;
  }

  else
  {
    if (v27 == 1278226534)
    {
      goto LABEL_19;
    }

    v30 = 1380410945;
  }

  if (v27 != v30)
  {
    HIDWORD(v163) = 0;
  }

LABEL_19:
  v31 = a4 != 0;
  if (a4)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  v172 = 0;
  v161 = a4 > 1;
  memset(v171, 0, sizeof(v171));
  if (a4 > 2)
  {
    goto LABEL_88;
  }

  v169 = 0uLL;
  v170 = 0uLL;
  _computeCropRectForPixelBuffer(a1, &v169, a6, a7, a8, a9);
  v167 = 0u;
  v168 = 0u;
  _computeCropRectForPixelBuffer(a2, &v167, a10, a11, a12, a13);
  v33 = v170;
  if (v170 != v168)
  {
    goto LABEL_88;
  }

  v34 = *(&v170 + 1);
  if (*(&v170 + 1) != *(&v168 + 1))
  {
    goto LABEL_88;
  }

  if (a3)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    v165 = 0u;
    v166 = 0u;
    _computeCropRectForPixelBuffer(a3, &v165, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    if (v166 != __PAIR128__(v34, v33))
    {
LABEL_88:
      a5[1] = 0;
      a5[2] = 0;
      v148 = 0;
      goto LABEL_89;
    }

    if (!a4)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  BaseAddressOfPlane = 0;
  BytesPerRowOfPlane = 0;
  if (a4)
  {
LABEL_28:
    v33 = (v33 + 1) >> 1;
    v34 = (v34 + 1) >> 1;
    *&v170 = v33;
    *(&v170 + 1) = v34;
    v36 = vdupq_n_s64(1uLL);
    v169 = vshrq_n_u64(vaddq_s64(v169, v36), 1uLL);
    v167 = vshrq_n_u64(vaddq_s64(v167, v36), 1uLL);
  }

LABEL_29:
  v159 = a5;
  v157 = CVPixelBufferGetBytesPerRowOfPlane(a1, a4 != 0);
  v158 = CVPixelBufferGetBytesPerRowOfPlane(a2, a4 != 0);
  v37 = malloc_type_calloc(360 * v33 + 2880, 1uLL, 0xC3684A7uLL);
  v38 = 0;
  v39 = v37 + 320;
  do
  {
    *(v171 + v38) = v39;
    v38 += 8;
    v39 += 40 * v33 + 320;
  }

  while (v38 != 72);
  v40 = CVPixelBufferGetPixelFormatType(a1);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v40);
  v41 = CVPixelBufferGetPixelFormatType(a1);
  v42 = CMPhotoGetBitDepthForPixelFormat(v41);
  v43 = v169;
  v152 = v167;
  v155 = CVPixelBufferGetBaseAddressOfPlane(a1, v31);
  v154 = CVPixelBufferGetBaseAddressOfPlane(a2, v31);
  v153 = CVPixelBufferGetBaseAddressOfPlane(a1, v31);
  v151 = CVPixelBufferGetBaseAddressOfPlane(a2, v31);
  v150 = CVPixelBufferGetBaseAddressOfPlane(a1, v31);
  v44 = CVPixelBufferGetBaseAddressOfPlane(a2, v31);
  v45 = CVPixelBufferGetBaseAddressOfPlane(a1, v31);
  v46 = CVPixelBufferGetBaseAddressOfPlane(a2, v31);
  if (!v34)
  {
    free(v37);
    a5 = v159;
    goto LABEL_88;
  }

  v149 = v37;
  v49 = 0;
  v50 = 0;
  v51 = (v152.i64[0] << v31) + v161 + v152.i64[1] * v158 / BytesPerPixelForPixelFormat;
  v52 = &v46[2 * v51];
  v53 = (v43.i64[0] << v31) + v161 + v43.i64[1] * v157 / BytesPerPixelForPixelFormat;
  v54 = &v45[2 * v53];
  v55 = &v44[4 * v51];
  v56 = &v150[4 * v53];
  v57 = &v151[2 * v51];
  v58 = &v153[2 * v53];
  v59 = &v154[v51];
  v60 = &v155[v53];
  v61 = (1 << (16 - v42));
  v62 = vdup_n_s32(v162 > 8);
  v63.i64[0] = v62.u32[0];
  v63.i64[1] = v62.u32[1];
  v64 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v63, 0x3FuLL)), xmmword_1A5AB0850, xmmword_1A5AB0840);
  v65 = v157 / BytesPerPixelForPixelFormat;
  v66 = BytesPerRowOfPlane << v31;
  v67 = 0uLL;
  __asm { FMOV            V4.2D, #2.0 }

  v73 = v158 / BytesPerPixelForPixelFormat;
  do
  {
    v74 = (v49 + 8) % 9u;
    v75 = v49 % 9;
    if (HIDWORD(v163))
    {
      if (v33)
      {
        v76 = *(v171 + v75);
        v77 = *(v171 + v74);
        v78 = v33;
        v79 = v56;
        v80 = v55;
        do
        {
          v81 = *v79;
          _D6 = *v80;
          v82 = v77[1] + _D6;
          *v76 = *v77 + v81;
          v76[1] = v82;
          v83 = v77[3] + _D6 * _D6;
          v76[2] = v77[2] + v81 * v81;
          v76[3] = v83;
          v47.f64[0] = v77[4] + v81 * _D6;
          v76[4] = v47.f64[0];
          v79 += v32;
          v80 += v32;
          v77 += 5;
          v76 += 5;
          --v78;
        }

        while (v78);
      }
    }

    else if (v163)
    {
      if (v33)
      {
        v84 = *(v171 + v75);
        v85 = *(v171 + v74);
        v86 = v33;
        v87 = v54;
        v88 = v52;
        do
        {
          _H5 = *v87;
          __asm { FCVT            D5, H5 }

          _H6 = *v88;
          __asm { FCVT            D6, H6 }

          v92 = v85[1] + _D6;
          *v84 = *v85 + _D5;
          v84[1] = v92;
          v93 = v85[3] + _D6 * _D6;
          v84[2] = v85[2] + _D5 * _D5;
          v84[3] = v93;
          v47.f64[0] = v85[4] + _D5 * _D6;
          v84[4] = v47.f64[0];
          v87 += 2 * v32;
          v88 += 2 * v32;
          v85 += 5;
          v84 += 5;
          --v86;
        }

        while (v86);
      }
    }

    else if (v162 < 9)
    {
      if (v33)
      {
        v101 = *(v171 + v75);
        v102 = *(v171 + v74);
        v103 = v33;
        v104 = v60;
        v105 = v59;
        do
        {
          LOBYTE(v47.f64[0]) = *v104;
          v106 = *&v47.f64[0];
          LOBYTE(_D6) = *v105;
          _D6 = *&_D6;
          v107 = v102[1] + _D6;
          *v101 = *v102 + v106;
          v101[1] = v107;
          v108 = v102[3] + _D6 * _D6;
          v101[2] = v102[2] + v106 * v106;
          v101[3] = v108;
          v104 += v32;
          v47.f64[0] = v102[4] + v106 * _D6;
          v101[4] = v47.f64[0];
          v105 += v32;
          v102 += 5;
          v101 += 5;
          --v103;
        }

        while (v103);
      }
    }

    else if (v33)
    {
      v94 = *(v171 + v75);
      v95 = *(v171 + v74);
      v96 = v33;
      v97 = v57;
      v98 = v58;
      do
      {
        LOWORD(v47.f64[0]) = *v98;
        v47.f64[0] = *&v47.f64[0];
        LOWORD(_D6) = *v97;
        _D6 = *&_D6;
        if (v42 != 16)
        {
          v47.f64[0] = v47.f64[0] / v61;
          _D6 = _D6 / v61;
        }

        v99 = _D6 + v95[1];
        *v94 = v47.f64[0] + *v95;
        v94[1] = v99;
        v100 = v95[3] + _D6 * _D6;
        v94[2] = v95[2] + v47.f64[0] * v47.f64[0];
        v94[3] = v100;
        v47.f64[0] = v95[4] + v47.f64[0] * _D6;
        v94[4] = v47.f64[0];
        v98 += 2 * v32;
        v97 += 2 * v32;
        v95 += 5;
        v94 += 5;
        --v96;
      }

      while (v96);
    }

    v109 = v49 + 1;
    if (v49 >= 7)
    {
      v110 = *(v171 + v109 % 9);
      if (v163)
      {
        if (v33)
        {
          v111 = *(v171 + v75);
          v112 = v33;
          v113 = *(v171 + v109 % 9);
          do
          {
            v114 = v113[1];
            *v113 = vsubq_f64(*v111, *v113);
            v113[1] = vsubq_f64(v111[1], v114);
            v113[2].f64[0] = v111[2].f64[0] - v113[2].f64[0];
            v111 = (v111 + 40);
            v113 = (v113 + 40);
            --v112;
          }

          while (v112);
          v115 = 0;
          v116 = v110 - 320;
          v47 = 0uLL;
          v117 = 0.0;
          v118 = 0.0;
          v119 = BaseAddressOfPlane;
          _Q16 = 0uLL;
          _Q17 = 0uLL;
          do
          {
            v118 = v118 + *(v116 + 320) - *v116;
            _Q17 = vaddq_f64(_Q17, vsubq_f64(*(v116 + 344), *(v116 + 24)));
            _Q16 = vaddq_f64(_Q16, vsubq_f64(*(v116 + 328), *(v116 + 8)));
            if (v115 >= 7)
            {
              v122.f64[0] = v118 * v118;
              v127.f64[0] = vmuld_n_f64(_Q16.f64[0], _Q16.f64[0]);
              v123.f64[0] = v118 * _Q16.f64[0];
              _D22 = 0x4050000000000000;
              __asm
              {
                FMLA            D21, D22, V16.D[1]
                FMLA            D24, D22, V17.D[1]
              }

              v123.f64[1] = _D24;
              v122.f64[1] = _D21;
              v127.f64[1] = -(v127.f64[0] - _Q17.f64[0] * 64.0);
              v128 = vdivq_f64(vmlaq_f64(xmmword_1A5AB0860, _Q4, v123), vaddq_f64(vaddq_f64(v122, v127), xmmword_1A5AB0860));
              if (v119)
              {
                LOBYTE(v127.f64[0]) = *v119;
                v129 = *&v127.f64[0];
                v47 = vmlaq_n_f64(v47, v128, v129);
                v117 = v117 + v129;
                v119 += v32;
              }

              else
              {
                v47 = vaddq_f64(v47, v128);
              }
            }

            v116 += 40;
            ++v115;
          }

          while (v33 != v115);
          goto LABEL_76;
        }
      }

      else if (v33)
      {
        v130 = *(v171 + v75);
        v131 = v33;
        v132 = *(v171 + v109 % 9);
        do
        {
          v133 = v132[1];
          *v132 = vsubq_f64(*v130, *v132);
          v132[1] = vsubq_f64(v130[1], v133);
          v132[2].f64[0] = v130[2].f64[0] - v132[2].f64[0];
          v130 = (v130 + 40);
          v132 = (v132 + 40);
          --v131;
        }

        while (v131);
        v134 = 0;
        v135 = v110 - 320;
        v47 = 0uLL;
        v117 = 0.0;
        v136 = 0.0;
        v119 = BaseAddressOfPlane;
        _Q16 = 0uLL;
        _Q17 = 0uLL;
        do
        {
          v136 = v136 + *(v135 + 320) - *v135;
          _Q17 = vaddq_f64(_Q17, vsubq_f64(*(v135 + 344), *(v135 + 24)));
          _Q16 = vaddq_f64(_Q16, vsubq_f64(*(v135 + 328), *(v135 + 8)));
          if (v134 >= 7)
          {
            v139.f64[0] = v136 * v136;
            v144.f64[0] = vmuld_n_f64(_Q16.f64[0], _Q16.f64[0]);
            v140.f64[0] = v136 * _Q16.f64[0];
            _D22 = 0x4050000000000000;
            __asm
            {
              FMLA            D21, D22, V16.D[1]
              FMLA            D24, D22, V17.D[1]
            }

            v140.f64[1] = _D24;
            v139.f64[1] = _D21;
            v144.f64[1] = -(v144.f64[0] - _Q17.f64[0] * 64.0);
            v145 = vdivq_f64(vmlaq_f64(v64, _Q4, v140), vaddq_f64(v64, vaddq_f64(v139, v144)));
            if (v119)
            {
              LOBYTE(v144.f64[0]) = *v119;
              v146 = *&v144.f64[0];
              v47 = vmlaq_n_f64(v47, v145, v146);
              v117 = v117 + v146;
              v119 += v32;
            }

            else
            {
              v47 = vaddq_f64(v47, v145);
            }
          }

          v135 += 40;
          ++v134;
        }

        while (v33 != v134);
        goto LABEL_76;
      }

      v47 = 0uLL;
      v117 = 0.0;
      v119 = BaseAddressOfPlane;
LABEL_76:
      if (!v119)
      {
        v117 = (v33 - 7);
      }

      _D6 = v117 + v50;
      v50 = _D6;
      v67 = vaddq_f64(v67, v47);
    }

    v58 += 2 * v65;
    v57 += 2 * v73;
    v56 += v65;
    v55 += v73;
    v60 += v65;
    v59 += v73;
    v54 += 2 * v65;
    if (BaseAddressOfPlane)
    {
      BaseAddressOfPlane += v66;
    }

    else
    {
      BaseAddressOfPlane = 0;
    }

    v49 = v109;
    v52 += 2 * v73;
  }

  while (v109 != v34);
  v164 = v67;
  free(v149);
  a5 = v159;
  if (!v50)
  {
    goto LABEL_88;
  }

  v147 = vdivq_f64(v164, vdupq_lane_s64(COERCE__INT64(v50), 0));
  *(v159 + 1) = v147;
  v148 = *&vmulq_laneq_f64(v147, v147, 1);
LABEL_89:
  *a5 = v148;
}

uint64_t _getPixelBufferFromCMPhotoImageType(void *a1, CVBufferRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      ImageType = CMPhotoGetImageType(a1);
      if (ImageType == 4)
      {

        return CMPhotoCreatePixelBufferFromCGImage(a1, 0, 0, 64, a2);
      }

      else if (ImageType == 2)
      {
        v5 = CFRetain(a1);
        result = 0;
        *a2 = v5;
      }

      else
      {
        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      _getPixelBufferFromCMPhotoImageType_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    _getPixelBufferFromCMPhotoImageType_cold_2(&v8);
    return v8;
  }

  return result;
}

uint64_t _copyAndNormalizeArrayToPixelBuffer(CVPixelBufferRef *a1, uint64_t a2, int a3, int a4, uint64_t a5, size_t a6, size_t a7, unint64_t a8, unint64_t a9, unint64_t a10, double *a11, double *a12)
{
  if (!a1)
  {
    _copyAndNormalizeArrayToPixelBuffer_cold_2(&v49);
    return v49;
  }

  CMPhotoGetBitDepthForPixelFormat(a5);
  if ((a3 - 1) > 6)
  {
    v20 = 2.22507386e-308;
  }

  else
  {
    v20 = dbl_1A5AB0898[a3 - 1];
  }

  BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(a5);
  MaxSNRThatMakesSense = _findMaxSNRThatMakesSense(a3, BitDepthForPixelFormat);
  if (CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", 1919365990, a6, a7, 1, 0, 0, 1, 64, 0, a1))
  {
    _copyAndNormalizeArrayToPixelBuffer_cold_1(&v48);
    return v48;
  }

  if (a7)
  {
    v23 = 0;
    do
    {
      if (a6)
      {
        v24 = 0;
        v25 = v23 / a10;
        if (v23 / a10 >= a9)
        {
          v25 = a9 - 1;
        }

        v26 = a2 + 8 * v25 * a8;
        do
        {
          v27 = v24 / a10;
          if (v24 / a10 >= a8)
          {
            v27 = a8 - 1;
          }

          v28 = *(v26 + 8 * v27);
          v29 = *a12;
          if (v28 > *a12)
          {
            v29 = *(v26 + 8 * v27);
          }

          *a12 = v29;
          if (v28 >= *a11)
          {
            v28 = *a11;
          }

          *a11 = v28;
          ++v24;
        }

        while (a6 != v24);
      }

      ++v23;
    }

    while (v23 != a7);
  }

  v47 = a2;
  if (a4)
  {
    v20 = *a11;
    switch(a3)
    {
      case 7:
        v30 = 4.0;
        break;
      case 2:
        v30 = 0.1;
        break;
      case 1:
        v30 = 10.0;
        break;
      default:
LABEL_28:
        MaxSNRThatMakesSense = _limitMaxSNR(a3, *a12);
        goto LABEL_29;
    }

    v20 = fmax(v20, v30);
    goto LABEL_28;
  }

LABEL_29:
  CVPixelBufferLockBaseAddress(*a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*a1, 0);
  v32 = CVPixelBufferGetBaseAddressOfPlane(*a1, 1uLL);
  v33 = CVPixelBufferGetBaseAddressOfPlane(*a1, 2uLL);
  v34 = a1;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*a1, 0);
  v36 = CVPixelBufferGetBytesPerRowOfPlane(*v34, 1uLL);
  v37 = CVPixelBufferGetBytesPerRowOfPlane(*v34, 2uLL);
  if (a7)
  {
    v38 = 0;
    do
    {
      if (a6)
      {
        v39 = 0;
        v40 = v38 / a10;
        if (v38 / a10 >= a9)
        {
          v40 = a9 - 1;
        }

        v41 = v47 + 8 * v40 * a8;
        do
        {
          v42 = v39 / a10;
          if (v39 / a10 >= a8)
          {
            v42 = a8 - 1;
          }

          v43 = *(v41 + 8 * v42);
          if (v20 >= v43)
          {
            v43 = v20;
          }

          if (MaxSNRThatMakesSense <= v43)
          {
            v43 = MaxSNRThatMakesSense;
          }

          v44 = (v43 - v20) / (MaxSNRThatMakesSense - v20);
          v45 = 1.0 - v44;
          BaseAddressOfPlane[v39] = v45;
          v32[v39] = v45;
          v33[v39++] = v45;
        }

        while (a6 != v39);
      }

      BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
      v32 = (v32 + v36);
      v33 = (v33 + v37);
      ++v38;
    }

    while (v38 != a7);
  }

  CVPixelBufferUnlockBaseAddress(*v34, 0);
  return 0;
}

CFStringRef CMPhotoCompareMethodToStringCopy(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = "Unrecognized";
  }

  else
  {
    v1 = off_1E77A1EC0[a1];
  }

  return CFStringCreateWithCString(*MEMORY[0x1E695E480], v1, 0x8000100u);
}

uint64x2_t _computeCropRectForPixelBuffer@<Q0>(__CVBuffer *a1@<X0>, uint64x2_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  PixelBufferCLAPAsRect = CMPhotoGetPixelBufferCLAPAsRect(a1);
  v24 = v12;
  v25 = PixelBufferCLAPAsRect;
  v28.f64[0] = PixelBufferCLAPAsRect;
  v28.f64[1] = v12;
  v26 = v14;
  v27 = v13;
  v29.f64[0] = v13;
  *&v29.f64[1] = v14;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  *&v14 = a6;
  if (CGRectIsEmpty(*(&v14 - 24)))
  {
    v18.f64[0] = v25;
    v18.f64[1] = v24;
    v19.f64[0] = v27;
    *&v19.f64[1] = v26;
  }

  else
  {
    if (a5 >= v27 - a3)
    {
      v20 = v27 - a3;
    }

    else
    {
      v20 = a5;
    }

    v21.f64[1] = *(&v26 + 1);
    if (a6 >= *&v26 - a4)
    {
      v22 = *&v26 - a4;
    }

    else
    {
      v22 = a6;
    }

    v21.f64[0] = a3;
    CMPhotoApplyCropRectToRect(&v28, v21, a4, v20, v22);
    v18 = v28;
    v19 = v29;
  }

  result = vcvtq_u64_f64(vrndaq_f64(v18));
  *a2 = result;
  a2[1] = vcvtq_u64_f64(vrndaq_f64(v19));
  return result;
}

void _computePSNRForL565(__CVBuffer *a1, void *a2, __CVBuffer *a3, void *a4, double *a5)
{
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v11 = CVPixelBufferGetBaseAddress(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v13 = CVPixelBufferGetBytesPerRow(a3);
  v14 = a2[3];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = 0;
  v16 = v11 + 2 * *a4 + a4[1] * v13;
  v17 = BaseAddress + 2 * *a2 + a2[1] * BytesPerRow;
  v18 = 0.0;
  do
  {
    if (a2[2])
    {
      v19 = 0;
      v20 = a2[2];
      do
      {
        v21 = *(v17 + v19);
        v22 = *(v17 + v19 + 1);
        v23 = *(v16 + v19);
        v24 = *(v16 + v19 + 1);
        v25 = ((((v21 | (v22 << 8)) >> 5) & 0x3F) - (((v23 | (v24 << 8)) >> 5) & 0x3F));
        v26 = v18 + (((v22 >> 2) & 0x3E) - ((v24 >> 2) & 0x3E)) * (((v22 >> 2) & 0x3E) - ((v24 >> 2) & 0x3E)) + v25 * v25;
        v27 = 2 * (v21 & 0x1F) - 2 * (v23 & 0x1F);
        v18 = v27 * v27 + v26;
        v19 += 2;
        --v20;
      }

      while (v20);
    }

    v17 += BytesPerRow;
    v16 += v13;
    ++v15;
  }

  while (v15 != v14);
  if (v18 <= 0.0)
  {
LABEL_10:
    v28 = INFINITY;
    if (!a5)
    {
      return;
    }

    goto LABEL_11;
  }

  v28 = log10(v18 / (3 * v14 * a2[2])) * -10.0 + 35.986811;
  if (a5)
  {
LABEL_11:
    *a5 = v28;
  }
}

uint64_t _createMonochromeBufferFromRGB(__CVBuffer *a1, __CVBuffer *a2, CVPixelBufferRef *a3, CVPixelBufferRef *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v45 = 0u;
  v46 = 0u;
  _computeCropRectForPixelBuffer(a1, &v45, a5, a6, a7, a8);
  v43 = 0u;
  v44 = 0u;
  _computeCropRectForPixelBuffer(a2, &v43, a9, a10, a11, a12);
  v21 = *(&v46 + 1);
  v20 = v46;
  if (v46 != v44 || *(&v46 + 1) != *(&v44 + 1))
  {
    v42 = 1460;
LABEL_60:
    _createMonochromeBufferFromRGB_cold_1(v42, &v43, &v47);
    v33 = v47;
    goto LABEL_53;
  }

  Width = CVPixelBufferGetWidth(a1);
  if (Width != CVPixelBufferGetWidth(a2))
  {
    v42 = 1464;
    goto LABEL_60;
  }

  Height = CVPixelBufferGetHeight(a1);
  if (Height != CVPixelBufferGetHeight(a2))
  {
    v42 = 1468;
    goto LABEL_60;
  }

  v25 = 1278226488;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType > 1380411456)
  {
    if (PixelFormatType == 1380411457)
    {
      v25 = 1278226536;
      goto LABEL_16;
    }

    if (PixelFormatType == 1815491698)
    {
      v25 = 1278226742;
      goto LABEL_16;
    }

    goto LABEL_52;
  }

  if (PixelFormatType != 1111970369)
  {
    if (PixelFormatType == 1380410945)
    {
      v25 = 1278226534;
      goto LABEL_16;
    }

LABEL_52:
    _createMonochromeBufferFromRGB_cold_2(&v43);
    v33 = v43.u32[0];
    goto LABEL_53;
  }

LABEL_16:
  if (CVPixelBufferGetWidth(a1) < 9)
  {
    v27 = 8;
  }

  else
  {
    v27 = CVPixelBufferGetWidth(a1);
  }

  if (CVPixelBufferGetHeight(a1) < 9)
  {
    v28 = 8;
  }

  else
  {
    v28 = CVPixelBufferGetHeight(a1);
  }

  PixelBuffer = CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", v25, v27, v28, 1, 0, 0, 1, 0, 0, a3);
  if (!PixelBuffer)
  {
    v30 = CVPixelBufferGetWidth(a1) < 9 ? 8 : CVPixelBufferGetWidth(a1);
    v31 = CVPixelBufferGetHeight(a1) < 9 ? 8 : CVPixelBufferGetHeight(a1);
    PixelBuffer = CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", v25, v30, v31, 1, 0, 0, 1, 0, 0, a4);
    if (!PixelBuffer)
    {
      if (CVPixelBufferGetWidth(a1) < 8 || CVPixelBufferGetHeight(a1) <= 7)
      {
        if (v20 <= 8)
        {
          v20 = 8;
        }

        if (v21 <= 8)
        {
          v21 = 8;
        }
      }

      v32 = v45;
      CMPhotoSetPixelBufferCLAP(*a3, v45.u64[0], v45.u64[1], v20, v21, 0, 1);
      CMPhotoSetPixelBufferCLAP(*a4, v32.u64[0], v32.u64[1], v20, v21, 0, 1);
      if (CVPixelBufferGetWidth(a1) >= 8 && CVPixelBufferGetHeight(a1) > 7)
      {
        return 0;
      }

      PixelBuffer = CVPixelBufferLockBaseAddress(*a3, 0);
      if (!PixelBuffer)
      {
        v33 = CVPixelBufferLockBaseAddress(*a4, 0);
        v34 = *a3;
        if (v33)
        {
          CVPixelBufferUnlockBaseAddress(v34, 0);
          goto LABEL_53;
        }

        BaseAddress = CVPixelBufferGetBaseAddress(v34);
        v36 = CVPixelBufferGetBaseAddress(*a4);
        if (CVPixelBufferGetWidth(a1) < 9)
        {
          v37 = 8;
        }

        else
        {
          v37 = CVPixelBufferGetWidth(a1);
        }

        v38 = 0;
        v39 = CMPhotoGetBytesPerPixelForPixelFormat(v25) * v37;
        while (1)
        {
          v40 = CVPixelBufferGetHeight(a1) < 9 ? 8 : CVPixelBufferGetHeight(a1);
          if (v40 <= v38)
          {
            break;
          }

          bzero(BaseAddress, v39);
          bzero(v36, v39);
          BaseAddress += CVPixelBufferGetBytesPerRow(*a3);
          v36 += CVPixelBufferGetBytesPerRow(*a4);
          ++v38;
        }

        CVPixelBufferUnlockBaseAddress(*a3, 0);
        CVPixelBufferUnlockBaseAddress(*a4, 0);
        return 0;
      }
    }
  }

  v33 = PixelBuffer;
LABEL_53:
  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  if (*a4)
  {
    CFRelease(*a4);
    *a4 = 0;
  }

  return v33;
}

size_t _extractRGBComponentAndCopyIntoMonochromeBuffer(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, int a5)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    v12 = 1585;
    goto LABEL_43;
  }

  v10 = CVPixelBufferGetPixelFormatType(a3);
  if (v10 != CVPixelBufferGetPixelFormatType(a4))
  {
    v12 = 1589;
    goto LABEL_43;
  }

  v11 = CVPixelBufferGetPixelFormatType(a1);
  v12 = 1710;
  if (v11 <= 1380411456)
  {
    if (v11 == 1111970369)
    {
      if (CVPixelBufferGetPixelFormatType(a3) == 1278226488)
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
        v70 = CVPixelBufferGetBytesPerRow(a2);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v41 = CVPixelBufferGetBaseAddress(a2);
        v42 = CVPixelBufferGetBytesPerRow(a3);
        v43 = CVPixelBufferGetBytesPerRow(a4);
        v44 = CVPixelBufferGetBaseAddress(a3);
        v45 = CVPixelBufferGetBaseAddress(a4);
        result = CVPixelBufferGetHeight(a1);
        if (!result)
        {
          return result;
        }

        v46 = 0;
        v66 = a5;
        do
        {
          if (CVPixelBufferGetWidth(a2))
          {
            v47 = 0;
            v48 = v66;
            do
            {
              v44[v47] = BaseAddress[v48];
              v45[v47++] = v41[v48];
              v48 += 4;
            }

            while (CVPixelBufferGetWidth(a2) > v47);
          }

          BaseAddress += BytesPerRow;
          v41 += v70;
          v44 += v42;
          v45 += v43;
          ++v46;
        }

        while (CVPixelBufferGetHeight(a1) > v46);
        return 0;
      }

      v12 = 1685;
    }

    else if (v11 == 1380410945)
    {
      if (CVPixelBufferGetPixelFormatType(a3) == 1278226534)
      {
        v62 = a5;
        v72 = CVPixelBufferGetBytesPerRow(a1);
        v13 = CVPixelBufferGetBytesPerRow(a2);
        v14 = CVPixelBufferGetBaseAddress(a1);
        v15 = CVPixelBufferGetBaseAddress(a2);
        v16 = CVPixelBufferGetBytesPerRow(a3);
        v17 = CVPixelBufferGetBytesPerRow(a4);
        v18 = CVPixelBufferGetBaseAddress(a3);
        v19 = CVPixelBufferGetBaseAddress(a4);
        result = CVPixelBufferGetHeight(a1);
        if (!result)
        {
          return result;
        }

        v21 = 0;
        v22 = v72 >> 2;
        v68 = 4 * (v16 >> 2);
        v73 = 4 * (v17 >> 2);
        v23 = 4 * v22;
        v63 = 4 * v62;
        v24 = 4 * (v13 >> 2);
        do
        {
          if (CVPixelBufferGetWidth(a2))
          {
            v25 = 0;
            v26 = v63;
            do
            {
              *&v18[4 * v25] = *&v14[v26];
              *&v19[4 * v25++] = *&v15[v26];
              v26 += 16;
            }

            while (CVPixelBufferGetWidth(a2) > v25);
          }

          ++v21;
          v19 += v73;
          v18 += v68;
          v14 += v23;
          v15 += v24;
        }

        while (CVPixelBufferGetHeight(a1) > v21);
        return 0;
      }

      v12 = 1629;
    }

LABEL_43:
    _extractRGBComponentAndCopyIntoMonochromeBuffer_cold_1(v12, &v80);
    return v80;
  }

  v64 = a5;
  if (v11 != 1815491698)
  {
    if (v11 == 1380411457)
    {
      if (CVPixelBufferGetPixelFormatType(a3) == 1278226536)
      {
        v74 = CVPixelBufferGetBytesPerRow(a1);
        v27 = CVPixelBufferGetBytesPerRow(a2);
        v28 = CVPixelBufferGetBaseAddress(a1);
        v29 = CVPixelBufferGetBaseAddress(a2);
        v30 = CVPixelBufferGetBytesPerRow(a3);
        v31 = CVPixelBufferGetBytesPerRow(a4);
        v32 = CVPixelBufferGetBaseAddress(a3);
        v33 = CVPixelBufferGetBaseAddress(a4);
        result = CVPixelBufferGetHeight(a1);
        if (!result)
        {
          return result;
        }

        v34 = 0;
        v35 = v74 >> 1;
        v69 = 2 * (v30 >> 1);
        v75 = 2 * (v31 >> 1);
        v36 = 2 * v35;
        v65 = 2 * v64;
        v37 = 2 * (v27 >> 1);
        do
        {
          if (CVPixelBufferGetWidth(a2))
          {
            v38 = 0;
            v39 = v65;
            do
            {
              *&v32[2 * v38] = *&v28[v39];
              *&v33[2 * v38++] = *&v29[v39];
              v39 += 8;
            }

            while (CVPixelBufferGetWidth(a2) > v38);
          }

          ++v34;
          v33 += v75;
          v32 += v69;
          v28 += v36;
          v29 += v37;
        }

        while (CVPixelBufferGetHeight(a1) > v34);
        return 0;
      }

      v12 = 1600;
    }

    goto LABEL_43;
  }

  if (CVPixelBufferGetPixelFormatType(a3) != 1278226742)
  {
    v12 = 1657;
    goto LABEL_43;
  }

  v77 = CVPixelBufferGetBytesPerRow(a1);
  v49 = CVPixelBufferGetBytesPerRow(a2);
  v50 = CVPixelBufferGetBaseAddress(a1);
  v51 = CVPixelBufferGetBaseAddress(a2);
  v52 = CVPixelBufferGetBytesPerRow(a3);
  v53 = CVPixelBufferGetBytesPerRow(a4);
  v54 = CVPixelBufferGetBaseAddress(a3);
  v55 = CVPixelBufferGetBaseAddress(a4);
  result = CVPixelBufferGetHeight(a1);
  if (!result)
  {
    return result;
  }

  v56 = 0;
  v57 = v77 >> 1;
  v71 = 2 * (v52 >> 1);
  v78 = 2 * (v53 >> 1);
  v58 = 2 * v57;
  v67 = 2 * v64;
  v59 = 2 * (v49 >> 1);
  do
  {
    if (CVPixelBufferGetWidth(a2))
    {
      v60 = 0;
      v61 = v67;
      do
      {
        *&v54[2 * v60] = *&v50[v61];
        *&v55[2 * v60++] = *&v51[v61];
        v61 += 8;
      }

      while (CVPixelBufferGetWidth(a2) > v60);
    }

    ++v56;
    v55 += v78;
    v54 += v71;
    v50 += v58;
    v51 += v59;
  }

  while (CVPixelBufferGetHeight(a1) > v56);
  return 0;
}

double _findMaxSNRThatMakesSense(int a1, unint64_t a2)
{
  result = 1.79769313e308;
  if (a1 > 4)
  {
    if (a1 != 5)
    {
      if (a1 == 7)
      {
        result = 2048.0;
      }

      if (a1 == 6)
      {
        return 80.0;
      }

      return result;
    }

LABEL_11:
    if (a2 < 9)
    {
      return 50.0;
    }

    if (a2 < 0xB)
    {
      return 52.5;
    }

    return dbl_1A5AB0870[a2 > 0xC];
  }

  if (a1 == 1)
  {
    goto LABEL_11;
  }

  if (a1 == 2)
  {
    return 0.998;
  }

  return result;
}

double _limitMaxSNR(int a1, double result)
{
  if (a1 > 4)
  {
    v3 = fmin(result, 80.0);
    v4 = fmin(result, 100.0);
    if (a1 == 6)
    {
      result = v4;
    }

    v2 = a1 == 5;
  }

  else
  {
    if (a1 == 1)
    {
      return fmin(result, 80.0);
    }

    v2 = a1 == 2;
    v3 = fmin(result, 1.0);
  }

  if (v2)
  {
    return v3;
  }

  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround(__CVBuffer *a1, uint64_t a2, unint64_t a3, int a4, int a5, uint64_t a6, int a7, int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14, CFTypeRef *a15)
{
  v621 = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v613 = 0;
  cf = 0;
  v611 = 0;
  v612 = 0;
  v622.origin.x = a9;
  v622.origin.y = a10;
  v622.size.width = a11;
  v622.size.height = a12;
  if (!CGRectIsNull(v622))
  {
    CMPhotoVTPixelTransferWorkaround_cold_1(&v615);
    goto LABEL_671;
  }

  if (a4 != 1)
  {
    CMPhotoVTPixelTransferWorkaround_cold_2(&v615);
    goto LABEL_671;
  }

  if (a13 != *MEMORY[0x1E695F060] || a14 != *(MEMORY[0x1E695F060] + 8))
  {
    CMPhotoVTPixelTransferWorkaround_cold_3(&v615);
LABEL_671:
    v32 = v615.u32[0];
    goto LABEL_16;
  }

  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v611, &v612);
  v31 = *a15;
  if (!*a15)
  {
    PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, a2, v611, v612, a3, &cf);
    if (PixelBufferHelper)
    {
      goto LABEL_398;
    }

LABEL_20:
    pixelBuffer = a1;
    if (PixelFormatType > 1651519797)
    {
      if (PixelFormatType > 1815491697)
      {
        if (PixelFormatType <= 1919379251)
        {
          v34 = a15;
          if (PixelFormatType <= 1919365989)
          {
            if (PixelFormatType != 1815491698)
            {
              if (PixelFormatType == 1882468912 || PixelFormatType == 1885745712)
              {
                if (a2 <= 1815491697)
                {
                  if (a2 != 875704422 && a2 != 875704438 && a2 != 1111970369)
                  {
LABEL_665:
                    CMPhotoVTPixelTransferWorkaround_cold_32(&v615);
                    goto LABEL_671;
                  }

                  goto LABEL_292;
                }

                if (a2 == 1815491698)
                {
LABEL_292:
                  v600 = a7;
                  if (PixelFormatType == 1885745712)
                  {
                    v179 = 2019963440;
                  }

                  else
                  {
                    v179 = 2016686640;
                  }

                  PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, v179, v611, v612, a3, &v613);
                  if (PixelBufferHelper)
                  {
                    goto LABEL_398;
                  }

                  CVPixelBufferLockBaseAddress(a1, 0);
                  CVPixelBufferLockBaseAddress(v613, 0);
                  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
                  pixelBufferc = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
                  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
                  v588 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
                  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
                  v585 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
                  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
                  v181 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
                  v182 = CVPixelBufferGetBaseAddressOfPlane(v613, 0);
                  v183 = CVPixelBufferGetBaseAddressOfPlane(v613, 1uLL);
                  v184 = CVPixelBufferGetBytesPerRowOfPlane(v613, 0);
                  v185 = CVPixelBufferGetBytesPerRowOfPlane(v613, 1uLL);
                  _framePacked2Linear(BaseAddressOfPlane, v182, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane, v184, 0);
                  _framePacked2Linear(v181, v183, pixelBufferc, v588, v585, v185, 1);
                  CVPixelBufferUnlockBaseAddress(a1, 0);
                  CVPixelBufferUnlockBaseAddress(v613, 0);
                  CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(a1, v613);
                  v186 = v613;
                  v187 = cf;
                  v188 = a6;
                  v189 = v600;
                  goto LABEL_297;
                }

                if (a2 != 2019963440 && a2 != 2016686640)
                {
                  goto LABEL_665;
                }

                if (PixelFormatType == 1885745712)
                {
                  v167 = 2019963440;
                }

                else
                {
                  v167 = 2016686640;
                }

                if (v167 != a2)
                {
                  CMPhotoVTPixelTransferWorkaround_cold_9(&v615);
                  goto LABEL_671;
                }

                CVPixelBufferLockBaseAddress(a1, 0);
                CVPixelBufferLockBaseAddress(cf, 0);
                pixelBufferb = CVPixelBufferGetWidthOfPlane(a1, 0);
                v168 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
                v593 = CVPixelBufferGetHeightOfPlane(a1, 0);
                v599 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
                v169 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
                v170 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
                v171 = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
                v172 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
                v173 = CVPixelBufferGetBaseAddressOfPlane(cf, 0);
                v174 = CVPixelBufferGetBaseAddressOfPlane(cf, 1uLL);
                v175 = CVPixelBufferGetBytesPerRowOfPlane(cf, 0);
                v176 = CVPixelBufferGetBytesPerRowOfPlane(cf, 1uLL);
                _framePacked2Linear(v171, v173, pixelBufferb, v593, v169, v175, 0);
                _framePacked2Linear(v172, v174, v168, v599, v170, v176, 1);
                goto LABEL_291;
              }

LABEL_603:
              CMPhotoVTPixelTransferWorkaround_cold_15(&v615);
              goto LABEL_671;
            }

            if (a2 != 1919365990)
            {
              if (a2 != 1647589490)
              {
                CMPhotoVTPixelTransferWorkaround_cold_35(&v615);
                goto LABEL_671;
              }

              CVPixelBufferLockBaseAddress(a1, 0);
              CVPixelBufferLockBaseAddress(cf, 0);
              BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
              BaseAddress = CVPixelBufferGetBaseAddress(a1);
              v115 = CVPixelBufferGetBytesPerRow(cf);
              v116 = CVPixelBufferGetBaseAddress(cf);
              v117 = v612;
              if (v612)
              {
                v118 = 0;
                v119 = v611;
                do
                {
                  if (v119)
                  {
                    v120 = &v116[v118 * v115];
                    v121 = v119;
                    v122 = &BaseAddress[v118 * BytesPerRow];
                    do
                    {
                      *v120 = *v122;
                      *(v120 + 1) = *(v122 + 1);
                      *(v120 + 2) = *(v122 + 2);
                      v122 += 8;
                      v120 += 6;
                      --v121;
                    }

                    while (v121);
                  }

                  ++v118;
                }

                while (v118 != v117);
              }

              goto LABEL_585;
            }

            v195 = a15;
            CVPixelBufferLockBaseAddress(a1, 0);
            CVPixelBufferLockBaseAddress(cf, 0);
            v332 = 0;
            for (i = 0; i != 3; ++i)
            {
              v334 = CVPixelBufferGetBytesPerRowOfPlane(cf, i);
              v335 = CVPixelBufferGetBaseAddressOfPlane(cf, i);
              v336 = CVPixelBufferGetBytesPerRow(pixelBuffer);
              v337 = CVPixelBufferGetBaseAddress(pixelBuffer);
              v338 = v612;
              if (v612)
              {
                v339 = 0;
                v340 = v611;
                v341 = &v337[v332];
                do
                {
                  v342 = v335;
                  v343 = v340;
                  for (j = v341; v343; --v343)
                  {
                    v345 = *j;
                    j += 8;
                    v346 = v345 / 65535.0;
                    *v342++ = v346;
                  }

                  ++v339;
                  v341 += v336;
                  v335 = (v335 + v334);
                }

                while (v339 != v338);
              }

              v332 += 2;
            }

            v211 = pixelBuffer;
            v212 = pixelBuffer;
            v213 = 0;
            goto LABEL_432;
          }

          if (PixelFormatType != 1919365990 && PixelFormatType != 1919365992)
          {
            if (PixelFormatType != 1919378232)
            {
              goto LABEL_603;
            }

            if (a2 == 1919381552)
            {
              CVPixelBufferLockBaseAddress(a1, 0);
              CVPixelBufferLockBaseAddress(cf, 0);
              Width = CVPixelBufferGetWidth(a1);
              Height = CVPixelBufferGetHeight(a1);
              v62 = CVPixelBufferGetBytesPerRow(a1);
              v63 = a1;
              v64 = v62;
              v65 = CVPixelBufferGetBaseAddress(v63);
              v66 = CVPixelBufferGetBaseAddress(cf);
              v67 = CVPixelBufferGetBytesPerRow(cf);
              if (Height)
              {
                for (k = 0; k != Height; ++k)
                {
                  if (Width)
                  {
                    v69 = 0;
                    v70 = 0;
                    v71 = v65;
                    do
                    {
                      v72 = 0;
                      v73 = 0;
                      v615.i8[4] = 0;
                      do
                      {
                        v74 = LUT_expand_8b_to_12b[v71[v73]];
                        v615.i8[v73] = v74 >> 4;
                        v615.i8[4] |= ((v74 >> 2) & 3) << v72;
                        ++v73;
                        v72 += 2;
                      }

                      while (v73 != 4);
                      v75 = &v66[v67 * k + v70];
                      *v75 = v615.i32[0];
                      v75[4] = v615.i8[4];
                      v70 += 5;
                      v69 += 4;
                      v71 += 4;
                    }

                    while (Width > v69);
                  }

                  v65 += v64;
                }
              }

LABEL_282:
              CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
              CVPixelBufferUnlockBaseAddress(cf, 0);
              goto LABEL_635;
            }

            if (a2 != 875704422 && a2 != 1111970369 && a2 != 1278226488)
            {
              CMPhotoVTPixelTransferWorkaround_cold_29(&v615);
              goto LABEL_671;
            }

LABEL_610:
            PixelBufferHelper = _convert8bitsRAWTo8BitsReadableFormat(a6, a7, a8, a1, cf, a5);
            if (PixelBufferHelper)
            {
              goto LABEL_398;
            }

            goto LABEL_635;
          }

          if (a2 > 1815491697)
          {
            if (a2 != 2019963440)
            {
              v88 = 1815491698;
LABEL_250:
              if (a2 != v88)
              {
                CMPhotoVTPixelTransferWorkaround_cold_33(&v615);
                goto LABEL_671;
              }
            }
          }

          else if (a2 != 875704422)
          {
            v88 = 1111970369;
            goto LABEL_250;
          }

          v598 = a7;
          v592 = a8;
          v137 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
          v138 = a1;
          v139 = v137 / CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
          v140 = CVPixelBufferGetBytesPerRowOfPlane(v138, 1uLL);
          BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
          v142 = CVPixelBufferGetBytesPerRowOfPlane(v138, 2uLL);
          v143 = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
          if (v139 % CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType))
          {
            CMPhotoVTPixelTransferWorkaround_cold_10(&v615);
            goto LABEL_671;
          }

          v144 = v140 / BytesPerPixelForPixelFormat;
          if (v140 / BytesPerPixelForPixelFormat % CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType))
          {
            CMPhotoVTPixelTransferWorkaround_cold_11(&v615);
            goto LABEL_671;
          }

          v145 = v142 / v143;
          if (v145 % CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType))
          {
            CMPhotoVTPixelTransferWorkaround_cold_12(&v615);
            goto LABEL_671;
          }

          if (CMPhotoPixelBufferContainsYCbCr(cf))
          {
            PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1815491698, v611, v612, a3, &v613);
            if (PixelBufferHelper)
            {
              goto LABEL_398;
            }
          }

          else
          {
            v613 = cf;
          }

          CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
          CVPixelBufferLockBaseAddress(v613, 0);
          v256 = CVPixelBufferGetBaseAddress(v613);
          v257 = CVPixelBufferGetBytesPerRow(v613);
          if (PixelFormatType == 1919365992)
          {
            v267 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
            v268 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
            v269 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 2uLL);
            v270 = CVPixelBufferGetPixelFormatType(v613);
            if (CMPhotoGetBitDepthForPixelFormat(v270) == 8)
            {
              v271 = v612;
              if (v612)
              {
                v272 = 0;
                v273 = v611;
                do
                {
                  if (v273)
                  {
                    v274 = 0;
                    v275 = &v256[v272 * v257];
                    do
                    {
                      _H2 = v269[v272 * v145 + v274];
                      __asm { FCVT            D2, H2 }

                      *v275 = fmin(_D2 * 255.0 + 0.5, 255.0);
                      LOWORD(_D2) = v268[v272 * v144 + v274];
                      __asm { FCVT            D2, H2 }

                      v275[1] = fmin(_D2 * 255.0 + 0.5, 255.0);
                      LOWORD(_D2) = v267[v272 * v139 + v274];
                      __asm { FCVT            D2, H2 }

                      v275[2] = fmin(_D2 * 255.0 + 0.5, 255.0);
                      v275[3] = -1;
                      v275 += 4;
                      ++v274;
                      v273 = v611;
                    }

                    while (v611 > v274);
                    v271 = v612;
                  }

                  ++v272;
                }

                while (v271 > v272);
              }
            }

            else
            {
              v356 = CVPixelBufferGetPixelFormatType(v613);
              if (CMPhotoGetBitDepthForPixelFormat(v356) != 16)
              {
                CMPhotoVTPixelTransferWorkaround_cold_48(&v615);
                goto LABEL_671;
              }

              v357 = v612;
              if (v612)
              {
                v358 = 0;
                v359 = v611;
                do
                {
                  if (v359)
                  {
                    v360 = 0;
                    v361 = &v256[v358 * v257];
                    v362 = v359;
                    do
                    {
                      _H2 = v269[v358 * v145 + v360];
                      __asm { FCVT            D2, H2 }

                      *v361 = fmin(_D2 * 65535.0 + 0.5, 65535.0);
                      LOWORD(_D2) = v268[v358 * v144 + v360];
                      __asm { FCVT            D2, H2 }

                      *(v361 + 1) = fmin(_D2 * 65535.0 + 0.5, 65535.0);
                      LOWORD(_D2) = v267[v358 * v139 + v360];
                      __asm { FCVT            D2, H2 }

                      *(v361 + 2) = fmin(_D2 * 65535.0 + 0.5, 65535.0);
                      *(v361 + 3) = -1;
                      v361 += 8;
                      ++v360;
                      --v362;
                    }

                    while (v362);
                  }

                  ++v358;
                }

                while (v358 != v357);
              }
            }
          }

          else
          {
            v258 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
            v259 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
            v260 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 2uLL);
            v261 = CVPixelBufferGetPixelFormatType(v613);
            if (CMPhotoGetBitDepthForPixelFormat(v261) == 8)
            {
              v262 = v612;
              if (v612)
              {
                v263 = 0;
                v264 = v611;
                do
                {
                  if (v264)
                  {
                    v265 = 0;
                    v266 = &v256[v263 * v257];
                    do
                    {
                      *v266 = fmin(v260[v263 * v145 + v265] * 255.0 + 0.5, 255.0);
                      v266[1] = fmin(v259[v263 * v144 + v265] * 255.0 + 0.5, 255.0);
                      v266[2] = fmin(v258[v263 * v139 + v265] * 255.0 + 0.5, 255.0);
                      v266[3] = -1;
                      v266 += 4;
                      ++v265;
                      v264 = v611;
                    }

                    while (v611 > v265);
                    v262 = v612;
                  }

                  ++v263;
                }

                while (v262 > v263);
              }
            }

            else
            {
              v349 = CVPixelBufferGetPixelFormatType(v613);
              if (CMPhotoGetBitDepthForPixelFormat(v349) != 16)
              {
                CMPhotoVTPixelTransferWorkaround_cold_47(&v615);
                goto LABEL_671;
              }

              v350 = v612;
              if (v612)
              {
                v351 = 0;
                v352 = v611;
                do
                {
                  if (v352)
                  {
                    v353 = 0;
                    v354 = &v256[v351 * v257];
                    v355 = v352;
                    do
                    {
                      *v354 = fmin(v260[v351 * v145 + v353] * 65535.0 + 0.5, 65535.0);
                      *(v354 + 1) = fmin(v259[v351 * v144 + v353] * 65535.0 + 0.5, 65535.0);
                      *(v354 + 2) = fmin(v258[v351 * v139 + v353] * 65535.0 + 0.5, 65535.0);
                      *(v354 + 3) = -1;
                      v354 += 8;
                      ++v353;
                      --v355;
                    }

                    while (v355);
                  }

                  ++v351;
                }

                while (v351 != v350);
              }
            }
          }

          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          CVPixelBufferUnlockBaseAddress(v613, 0);
          CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(pixelBuffer, v613);
          if (CMPhotoPixelBufferContainsYCbCr(cf))
          {
            v186 = v613;
            v187 = cf;
            v188 = a6;
            v189 = v598;
            v190 = v592;
LABEL_298:
            PixelBufferHelper = _vtTransferHelperForWorkaround(v188, v189, v190, a5, v186, v187);
            v34 = a15;
            if (PixelBufferHelper)
            {
              goto LABEL_398;
            }

LABEL_635:
            v32 = 0;
            *v34 = cf;
            cf = 0;
            goto LABEL_636;
          }

LABEL_449:
          v613 = 0;
LABEL_634:
          v34 = a15;
          goto LABEL_635;
        }

        v34 = a15;
        if (PixelFormatType <= 1953903151)
        {
          if (PixelFormatType != 1919379252)
          {
            if (PixelFormatType == 1919381552)
            {
              if (a2 != 1919378232)
              {
                CMPhotoVTPixelTransferWorkaround_cold_30(&v615);
                goto LABEL_671;
              }

              CVPixelBufferLockBaseAddress(a1, 0);
              CVPixelBufferLockBaseAddress(cf, 0);
              v152 = CVPixelBufferGetWidth(a1);
              v153 = CVPixelBufferGetHeight(a1);
              v154 = CVPixelBufferGetBytesPerRow(a1);
              v155 = CVPixelBufferGetBaseAddress(a1);
              v156 = CVPixelBufferGetBaseAddress(cf);
              v157 = CVPixelBufferGetBytesPerRow(cf);
              if (v153)
              {
                for (m = 0; m != v153; ++m)
                {
                  if (v152 + 3 >= 4)
                  {
                    v161 = 0;
                    v162 = 0;
                    v163 = &v155[m * v154];
                    do
                    {
                      v164 = 0;
                      v165 = v163[v161 + 4];
                      v158.i32[0] = *&v163[v161];
                      v159.i16[0] = v163[v161 + 4];
                      v159.i16[1] = v165 >> 2;
                      v159.i16[2] = v165 >> 4;
                      v159 = vand_s8(v159, 0x3000300030003);
                      v159.i16[3] = vshr_n_u16(vdup_n_s16(v165), 6uLL).i16[3];
                      v158 = vorr_s8(vshl_n_s16(*&vmovl_u8(v158), 2uLL), v159);
                      v615 = v158;
                      do
                      {
                        v166 = v615.i16[v164];
                        v615.i16[v164] = 4 * v166;
                        v156[v162++] = LUT_compand_12b_to_8b[4 * (v166 & 0x3FFF)];
                        ++v164;
                      }

                      while (v164 != 4);
                      v161 += 5;
                    }

                    while (5 * ((v152 + 3) >> 2) > v161);
                  }

                  v156 += v157;
                }
              }

              goto LABEL_282;
            }

            if (PixelFormatType != 1952854576)
            {
              goto LABEL_603;
            }

            goto LABEL_170;
          }

          goto LABEL_80;
        }

        if (PixelFormatType == 1953903152)
        {
LABEL_170:
          if (a2 == 1278226488)
          {
            goto LABEL_171;
          }

          if (a2 != 1278226742)
          {
            CMPhotoVTPixelTransferWorkaround_cold_16(&v615);
            goto LABEL_671;
          }

          goto LABEL_664;
        }

        if (PixelFormatType != 2016686640 && PixelFormatType != 2019963440)
        {
          goto LABEL_603;
        }

        if (a2 > 1882468911)
        {
          if (a2 == 1882468912)
          {
LABEL_128:
            if (PixelFormatType == 2019963440)
            {
              v76 = 1885745712;
            }

            else
            {
              v76 = 1882468912;
            }

            if (v76 != a2)
            {
              CMPhotoVTPixelTransferWorkaround_cold_8(&v615);
              goto LABEL_671;
            }

            CVPixelBufferLockBaseAddress(a1, 0);
            CVPixelBufferLockBaseAddress(cf, 0);
            pixelBuffera = CVPixelBufferGetWidthOfPlane(a1, 0);
            v77 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
            v591 = CVPixelBufferGetHeightOfPlane(a1, 0);
            v597 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
            v78 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
            v79 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
            v80 = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
            v81 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
            v82 = CVPixelBufferGetBaseAddressOfPlane(cf, 0);
            v83 = CVPixelBufferGetBaseAddressOfPlane(cf, 1uLL);
            v84 = CVPixelBufferGetBytesPerRowOfPlane(cf, 0);
            v85 = CVPixelBufferGetBytesPerRowOfPlane(cf, 1uLL);
            _frameLinear2Packed(v80, v82, pixelBuffera, v591, v78, v84, 0);
            _frameLinear2Packed(v81, v83, v77, v597, v79, v85, 1);
LABEL_291:
            CVPixelBufferUnlockBaseAddress(a1, 0);
            CVPixelBufferUnlockBaseAddress(cf, 0);
            v177 = cf;
            v178 = a1;
LABEL_633:
            CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(v178, v177);
            goto LABEL_634;
          }

          if (a2 != 1919365990)
          {
            if (a2 == 1885745712)
            {
              goto LABEL_128;
            }

LABEL_646:
            CMPhotoVTPixelTransferWorkaround_cold_31(&v615);
            goto LABEL_671;
          }

          PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1815491698, v611, v612, a3, &v613);
          if (PixelBufferHelper)
          {
            goto LABEL_398;
          }

          v195 = a15;
          PixelBufferHelper = _vtTransferHelperForWorkaround(a6, a7, a8, a5, a1, v613);
          if (PixelBufferHelper)
          {
            goto LABEL_398;
          }

          CVPixelBufferLockBaseAddress(v613, 0);
          CVPixelBufferLockBaseAddress(cf, 0);
          v368 = 0;
          for (n = 0; n != 3; ++n)
          {
            v370 = CVPixelBufferGetBytesPerRowOfPlane(cf, n);
            v371 = CVPixelBufferGetBaseAddressOfPlane(cf, n);
            v372 = CVPixelBufferGetBytesPerRow(v613);
            v373 = CVPixelBufferGetBaseAddress(v613);
            v374 = v612;
            if (v612)
            {
              v375 = 0;
              v376 = v611;
              v377 = &v373[v368];
              do
              {
                v378 = v371;
                v379 = v376;
                for (ii = v377; v379; --v379)
                {
                  v381 = *ii;
                  ii += 8;
                  v382 = v381 / 65535.0;
                  *v378++ = v382;
                }

                ++v375;
                v377 += v372;
                v371 = (v371 + v370);
              }

              while (v375 != v374);
            }

            v368 += 2;
          }

          v383 = v613;
          v384 = 0;
LABEL_543:
          CVPixelBufferUnlockBaseAddress(v383, v384);
          CVPixelBufferUnlockBaseAddress(cf, 0);
          v348 = v613;
          v347 = cf;
          goto LABEL_544;
        }

        if (a2 == 1278226488)
        {
          goto LABEL_171;
        }

        if (a2 == 1751527984)
        {
          if (PixelFormatType != 2019963440)
          {
            CMPhotoVTPixelTransferWorkaround_cold_7(&v615);
            goto LABEL_671;
          }

          CVPixelBufferLockBaseAddress(a1, 0);
          CVPixelBufferLockBaseAddress(cf, 0);
          v221 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
          v222 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
          v223 = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
          v224 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
          v225 = CVPixelBufferGetBytesPerRowOfPlane(cf, 0);
          v226 = CVPixelBufferGetBytesPerRowOfPlane(cf, 1uLL);
          v227 = CVPixelBufferGetBaseAddressOfPlane(cf, 0);
          v228 = CVPixelBufferGetBaseAddressOfPlane(cf, 1uLL);
          v229 = v612;
          if (v612)
          {
            v230 = 0;
            v231 = v611;
            do
            {
              if (v231)
              {
                v232 = &v227[v230 * v225];
                v233 = v231;
                v234 = &v223[v230 * v221];
                do
                {
                  v235 = *v234;
                  v234 += 2;
                  _S2 = fminf((v235 >> 6) / 1023.0, 1.0);
                  __asm { FCVT            H2, S2 }

                  *v232 = LOWORD(_S2);
                  v232 += 2;
                  --v233;
                }

                while (v233);
              }

              ++v230;
            }

            while (v230 != v229);
            v240 = 0;
            v241 = v611;
            do
            {
              if (v241)
              {
                for (jj = 0; jj < v241; jj += 2)
                {
                  v243 = &v224[2 * jj];
                  v244 = &v228[2 * jj];
                  _S2 = fminf((*v243 >> 6) / 1023.0, 1.0);
                  __asm { FCVT            H2, S2 }

                  v246 = (*(v243 + 1) >> 6);
                  *v244 = LOWORD(_S2);
                  _S2 = fminf(v246 / 1023.0, 1.0);
                  __asm { FCVT            H2, S2 }

                  *(v244 + 1) = LOWORD(_S2);
                }
              }

              v240 += 2;
              v224 += v222;
              v228 += v226;
            }

            while (v229 > v240);
          }

          goto LABEL_585;
        }

        if (a2 != 1278226742)
        {
          goto LABEL_646;
        }

LABEL_664:
        v148 = cf;
        v149 = v611;
        v150 = v612;
        v147 = a1;
LABEL_270:
        v151 = 0;
        goto LABEL_271;
      }

      if (PixelFormatType > 1717856626)
      {
        if (PixelFormatType <= 1735549751)
        {
          if (PixelFormatType > 1734505011)
          {
            v34 = a15;
            if (PixelFormatType != 1734505012 && PixelFormatType != 1735549492)
            {
              goto LABEL_603;
            }

            goto LABEL_80;
          }

          if (PixelFormatType == 1717856627)
          {
            goto LABEL_193;
          }

          v106 = 1734501176;
          goto LABEL_602;
        }

        if (PixelFormatType > 1751411058)
        {
          v34 = a15;
          if (PixelFormatType != 1751411059)
          {
            if (PixelFormatType != 1751527984)
            {
              goto LABEL_603;
            }

            if (a2 > 1647589489)
            {
              if (a2 != 2019963440)
              {
                v41 = 1647589490;
                goto LABEL_385;
              }

              CVPixelBufferLockBaseAddress(a1, 0);
              CVPixelBufferLockBaseAddress(cf, 0);
              v415 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
              v416 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
              v417 = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
              v418 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
              v419 = CVPixelBufferGetBytesPerRowOfPlane(cf, 0);
              v420 = CVPixelBufferGetBytesPerRowOfPlane(cf, 1uLL);
              v421 = CVPixelBufferGetBaseAddressOfPlane(cf, 0);
              v422 = CVPixelBufferGetBaseAddressOfPlane(cf, 1uLL);
              v423 = v612;
              if (v612)
              {
                v424 = 0;
                v425 = v611;
                do
                {
                  if (v425)
                  {
                    v426 = &v421[v424 * v419];
                    v427 = v425;
                    v428 = &v417[v424 * v415];
                    do
                    {
                      v428 += 2;
                      __asm { FCMP            H2, #0 }

                      if (_NF)
                      {
                        _H2 = COERCE_SHORT_FLOAT(0);
                      }

                      *v426 = _H2 << 6;
                      v426 += 2;
                      --v427;
                    }

                    while (v427);
                  }

                  ++v424;
                }

                while (v424 != v423);
                v430 = 0;
                v431 = v611;
                do
                {
                  if (v431)
                  {
                    for (kk = 0; kk < v431; kk += 2)
                    {
                      v433 = &v422[2 * kk];
                      __asm { FCMP            H2, #0 }

                      if (_NF)
                      {
                        _H2 = COERCE_SHORT_FLOAT(0);
                      }

                      *v433 = _H2 << 6;
                      __asm { FCMP            H2, #0 }

                      if (_NF)
                      {
                        _H2 = COERCE_SHORT_FLOAT(0);
                      }

                      *(v433 + 1) = _H2 << 6;
                    }
                  }

                  v430 += 2;
                  v422 += v420;
                  v418 += v416;
                }

                while (v423 > v430);
              }
            }

            else
            {
              if (a2 != 875704422)
              {
                v41 = 1380411457;
LABEL_385:
                if (a2 != v41)
                {
                  CMPhotoVTPixelTransferWorkaround_cold_23(&v615);
                  goto LABEL_671;
                }

                v296 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
                if (v296)
                {
                  v297 = v296;
                  CMPhotoGetMatrixFromPixelBufferAttachments(v296);
                  v298 = FigCFEqual();
                  v299 = v298 != 0;
                  if (!v298)
                  {
                    FigCFEqual();
                  }

                  CFRelease(v297);
                }

                else
                {
                  v299 = 0;
                }

                CVPixelBufferLockBaseAddress(a1, 0);
                CVPixelBufferLockBaseAddress(cf, 0);
                v472 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
                v473 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
                v474 = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
                v475 = a1;
                v476 = v474;
                v477 = CVPixelBufferGetBaseAddressOfPlane(v475, 1uLL);
                v478 = CVPixelBufferGetBytesPerRow(cf);
                v479 = CVPixelBufferGetBaseAddress(cf);
                v480 = v612;
                if (v612)
                {
                  v481 = 0;
                  v482 = 0;
                  v483 = v611;
                  do
                  {
                    if (v483)
                    {
                      v484 = 0;
                      v485 = 0;
                      v486 = &v477[(v473 * ((v482 + (v482 >> 31)) >> 1)) & 0xFFFFFFFFFFFFFFFELL];
                      v487 = &v477[(v473 * (2 * (v482 & 1) + v482 / 2 - 1)) & 0xFFFFFFFFFFFFFFFELL];
                      v488 = &v479[(v482 * v478) & 0xFFFFFFFFFFFFFFFELL];
                      v489 = v488;
                      do
                      {
                        _H21 = *&v476[2 * v485 + (v481 & 0xFFFFFFFFFFFFFFFELL)];
                        v491 = 4 * (v485 / 2);
                        _H22 = *&v486[v491];
                        __asm { FCVT            S22, H22 }

                        v494 = 2 * ((v484 & 2) + v485 / 2);
                        _H23 = *&v486[2 * v494 - 4];
                        __asm { FCVT            S23, H23 }

                        _H24 = *&v487[v491];
                        v498 = (_S23 * 3.0) + (_S22 * 9.0);
                        __asm { FCVT            S23, H24 }

                        v500 = v498 + (_S23 * 3.0);
                        LOWORD(_S23) = *&v487[2 * v494 - 4];
                        __asm { FCVT            S23, H23 }

                        _S22 = (v500 + _S23) * 0.0625;
                        __asm { FCVT            H22, S22 }

                        v503 = (4 * ((v485 + (v485 >> 31)) >> 1)) | 2;
                        _H24 = *&v486[v503];
                        __asm { FCVT            S24, H24 }

                        _H25 = *&v486[2 * v494 - 2];
                        __asm { FCVT            S25, H25 }

                        v508 = (_S25 * 3.0) + (_S24 * 9.0);
                        LOWORD(_S25) = *&v487[v503];
                        __asm { FCVT            S25, H25 }

                        v510 = v508 + (_S25 * 3.0);
                        LOWORD(_S25) = *&v487[2 * v494 - 2];
                        __asm { FCVT            S25, H25 }

                        _S23 = (v510 + _S25) * 0.0625;
                        __asm
                        {
                          FCVT            H23, S23
                          FCVT            S21, H21
                          FCVT            S24, H22
                          FCVT            S23, H23
                        }

                        v516 = (_S24 * 0.0) + _S21;
                        if (v299)
                        {
                          v517 = v516 + (_S23 * 1.5748);
                          _S22 = (_S21 + (_S24 * -0.18732)) + (_S23 * -0.46812);
                          v519 = 1.8556;
                        }

                        else
                        {
                          v517 = v516 + (_S23 * 1.402);
                          _S22 = (_S21 + (_S24 * -0.34414)) + (_S23 * -0.71414);
                          v519 = 1.772;
                        }

                        _S21 = ((v519 * _S24) + _S21) + (_S23 * 0.0);
                        if (v517 >= 0.0)
                        {
                          _S23 = v517;
                        }

                        else
                        {
                          _S23 = 0.0;
                        }

                        if (_S23 > 1.0)
                        {
                          _S23 = 1.0;
                        }

                        __asm { FCVT            H23, S23 }

                        if (a2 == 1380411457)
                        {
                          *v489 = _H23;
                          if (_S22 < 0.0)
                          {
                            _S22 = 0.0;
                          }

                          if (_S22 > 1.0)
                          {
                            _S22 = 1.0;
                          }

                          __asm { FCVT            H22, S22 }

                          *(v489 + 1) = _H22;
                          if (_S21 < 0.0)
                          {
                            _S21 = 0.0;
                          }

                          if (_S21 > 1.0)
                          {
                            _S21 = 1.0;
                          }

                          __asm { FCVT            H21, S21 }

                          *(v489 + 2) = _H21;
                          v489 += 8;
                        }

                        else
                        {
                          if (_S22 < 0.0)
                          {
                            _S22 = 0.0;
                          }

                          if (_S22 > 1.0)
                          {
                            _S22 = 1.0;
                          }

                          __asm { FCVT            H22, S22 }

                          if (_S21 < 0.0)
                          {
                            _S21 = 0.0;
                          }

                          if (_S21 > 1.0)
                          {
                            _S21 = 1.0;
                          }

                          __asm
                          {
                            FCVT            H21, S21
                            FCVT            D23, H23
                          }

                          *v488 = (_D23 * 65535.0);
                          __asm { FCVT            D22, H22 }

                          *(v488 + 1) = (_D22 * 65535.0);
                          __asm { FCVT            D21, H21 }

                          *(v488 + 2) = (_D21 * 65535.0);
                          v488 += 6;
                        }

                        ++v485;
                        v484 += 2;
                      }

                      while (v483 != v485);
                    }

                    ++v482;
                    v481 += v472;
                  }

                  while (v482 != v480);
                }

                goto LABEL_585;
              }

              CVPixelBufferLockBaseAddress(a1, 0);
              CVPixelBufferLockBaseAddress(cf, 0);
              v396 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
              v397 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
              v398 = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
              v399 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
              v400 = CVPixelBufferGetBytesPerRowOfPlane(cf, 0);
              v401 = CVPixelBufferGetBytesPerRowOfPlane(cf, 1uLL);
              v402 = CVPixelBufferGetBaseAddressOfPlane(cf, 0);
              v403 = CVPixelBufferGetBaseAddressOfPlane(cf, 1uLL);
              v404 = v612;
              if (v612)
              {
                v405 = 0;
                v406 = v611;
                do
                {
                  if (v406)
                  {
                    v407 = 0;
                    do
                    {
                      __asm { FCMP            H2, #0 }

                      if (_NF)
                      {
                        _H2 = COERCE_SHORT_FLOAT(0);
                      }

                      v402[v407++] = _H2;
                      v406 = v611;
                    }

                    while (v611 > v407);
                    v404 = v612;
                  }

                  ++v405;
                  v402 += v400;
                  v398 += v396;
                }

                while (v404 > v405);
                if (v404)
                {
                  v409 = 0;
                  v410 = v611;
                  do
                  {
                    if (v410)
                    {
                      v411 = 0;
                      do
                      {
                        v412 = &v403[v411];
                        __asm { FCMP            H2, #0 }

                        if (_NF)
                        {
                          _H2 = COERCE_SHORT_FLOAT(0);
                        }

                        *v412 = _H2;
                        __asm { FCMP            H2, #0 }

                        if (_NF)
                        {
                          _H2 = COERCE_SHORT_FLOAT(0);
                        }

                        v412[1] = _H2;
                        v411 += 2;
                        v410 = v611;
                      }

                      while (v611 > v411);
                      v404 = v612;
                    }

                    v409 += 2;
                    v403 += v401;
                    v399 += v397;
                  }

                  while (v404 > v409);
                }
              }
            }

LABEL_585:
            CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
            CVPixelBufferUnlockBaseAddress(cf, 0);
            v87 = cf;
            v86 = pixelBuffer;
LABEL_586:
            CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(v86, v87);
            goto LABEL_635;
          }

LABEL_206:
          if (a2 > 1278226487)
          {
            if (a2 != 1278226736)
            {
              v108 = 1278226488;
LABEL_302:
              if (a2 != v108)
              {
                CMPhotoVTPixelTransferWorkaround_cold_19(&v615);
                goto LABEL_671;
              }
            }
          }

          else if (a2 != 642527336)
          {
            v108 = 875704422;
            goto LABEL_302;
          }

LABEL_303:
          v191 = v611;
          v192 = v612;
          v193 = 1278226536;
          v194 = a5;
LABEL_393:
          PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(v194, v193, v191, v192, a3, &v613);
          if (PixelBufferHelper)
          {
            goto LABEL_398;
          }

          v36 = v612;
          v35 = v613;
          v37 = v611;
          v38 = a1;
          v39 = 0;
          goto LABEL_395;
        }

        v34 = a15;
        if (PixelFormatType == 1751410032)
        {
          goto LABEL_206;
        }

        v530 = 1735549752;
LABEL_606:
        if (PixelFormatType != v530)
        {
          goto LABEL_603;
        }

LABEL_607:
        if (a2 != 875704422 && a2 != 1278226488 && a2 != 1111970369)
        {
          CMPhotoVTPixelTransferWorkaround_cold_44(&v615);
          goto LABEL_671;
        }

        goto LABEL_610;
      }

      if (PixelFormatType <= 1651925815)
      {
        if (PixelFormatType != 1651519798)
        {
          v34 = a15;
          if (PixelFormatType != 1651798066)
          {
            if (PixelFormatType != 1651847472)
            {
              goto LABEL_603;
            }

            if (a2 != 1815491698 && a2 != 1278226742)
            {
              CMPhotoVTPixelTransferWorkaround_cold_41(&v615);
              goto LABEL_671;
            }

            PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1278226736, v611, v612, a3, &v613);
            if (PixelBufferHelper)
            {
              goto LABEL_398;
            }

            v36 = v612;
            v35 = v613;
            v37 = v611;
            v38 = a1;
            v39 = 6;
LABEL_395:
            v295 = 0;
LABEL_396:
            PixelBufferHelper = _directPixelBufferCopy(v38, v35, v39, v295, v37, v36);
            if (PixelBufferHelper)
            {
              goto LABEL_398;
            }

            goto LABEL_397;
          }

LABEL_174:
          if ((a2 - 1278226736) <= 6 && ((1 << (a2 - 48)) & 0x45) != 0)
          {
            CVPixelBufferLockBaseAddress(a1, 0);
            CVPixelBufferLockBaseAddress(cf, 0);
            v89 = CVPixelBufferGetHeight(a1);
            v90 = CVPixelBufferGetBaseAddress(a1);
            v91 = CVPixelBufferGetBaseAddress(cf);
            v92 = a1;
            v93 = v91;
            v94 = CVPixelBufferGetBytesPerRow(v92);
            v95 = CVPixelBufferGetBytesPerRow(cf);
            if (v89)
            {
              v96 = 0;
              if (a2 == 1278226736)
              {
                v97 = 6;
              }

              else
              {
                v97 = 4;
              }

              do
              {
                if (v94)
                {
                  v98 = 0;
                  v99 = 0;
                  v100 = &v90[v96 * v94];
                  do
                  {
                    v101 = v100[v98 + 2];
                    v102 = v101 & 0xF | (16 * v100[v98]);
                    v103 = (v101 >> 4) | (16 * v100[v98 + 1]);
                    v104 = 1;
                    do
                    {
                      v105 = v104;
                      *&v93[2 * v99++] = v102 << v97;
                      v102 = v103;
                      v104 = 0;
                    }

                    while ((v105 & 1) != 0);
                    v98 += 3;
                  }

                  while (v94 > v98);
                }

                ++v96;
                v93 += v95;
              }

              while (v96 != v89);
            }
          }

          else
          {
            if (a2 != 1650946098 && a2 != 1651798066)
            {
              CMPhotoVTPixelTransferWorkaround_cold_28(&v615);
              goto LABEL_671;
            }

            CVPixelBufferLockBaseAddress(a1, 0);
            CVPixelBufferLockBaseAddress(cf, 0);
            v248 = CVPixelBufferGetHeight(a1);
            v249 = CVPixelBufferGetBaseAddress(a1);
            v250 = CVPixelBufferGetBaseAddress(cf);
            v251 = a1;
            v252 = v250;
            v253 = CVPixelBufferGetBytesPerRow(v251);
            v254 = CVPixelBufferGetBytesPerRow(cf);
            if (v248)
            {
              v255 = v254;
              do
              {
                memcpy(v252, v249, v253);
                v249 += v253;
                v252 += v255;
                --v248;
              }

              while (v248);
            }
          }

          goto LABEL_585;
        }

        v34 = a15;
        if (a2 > 1651519797)
        {
          if (a2 != 1815491698 && a2 != 2019963440)
          {
            v146 = 1651519798;
LABEL_663:
            if (a2 != v146)
            {
              CMPhotoVTPixelTransferWorkaround_cold_43(&v615);
              goto LABEL_671;
            }

            goto LABEL_664;
          }
        }

        else if (a2 != 1278226488 && a2 != 1278226736)
        {
          v146 = 1278226742;
          goto LABEL_663;
        }

LABEL_392:
        v191 = v611;
        v192 = v612;
        v194 = a5;
        v193 = 1278226742;
        goto LABEL_393;
      }

      if (PixelFormatType <= 1652056887)
      {
        v34 = a15;
        if (PixelFormatType == 1651926376)
        {
          if (a2 != 1815491698 && a2 != 1278226742)
          {
            CMPhotoVTPixelTransferWorkaround_cold_42(&v615);
            goto LABEL_671;
          }

          goto LABEL_303;
        }

        v530 = 1651925816;
        goto LABEL_606;
      }

      if (PixelFormatType != 1717855600)
      {
        v106 = 1652056888;
LABEL_602:
        v34 = a15;
        if (PixelFormatType != v106)
        {
          goto LABEL_603;
        }

        goto LABEL_607;
      }

LABEL_193:
      if (a2 > 1278226735)
      {
        if (a2 <= 1815491697)
        {
          v34 = a15;
          if (a2 != 1278226736 && a2 != 1278226742)
          {
            goto LABEL_655;
          }

          goto LABEL_203;
        }

        if (a2 == 2019963440)
        {
          PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1278226736, v611, v612, a3, &v613);
          if (PixelBufferHelper)
          {
            goto LABEL_398;
          }

          PixelBufferHelper = CMPhotoCreateIntegerPixelBufferFromFullPrecisionSource(a1, 0, 1278226534, 0xAu, 1, 0, 0, 0, &v613, 0);
          if (PixelBufferHelper)
          {
            goto LABEL_398;
          }

          if (v31)
          {
            v189 = a7;
            v186 = v613;
            v187 = cf;
            v188 = a6;
LABEL_297:
            v190 = a8;
            goto LABEL_298;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = v613;
          goto LABEL_449;
        }

        v214 = a8;
        v215 = a15;
        if (a2 == 1815491698)
        {
          PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1278226742, v611, v612, a3, &v613);
          if (PixelBufferHelper)
          {
            goto LABEL_398;
          }

          BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(1278226742);
          PixelBufferHelper = CMPhotoCreateIntegerPixelBufferFromFullPrecisionSource(a1, 0, 1278226534, BitDepthForPixelFormat, 1, 0, 0, 0, &v613, 0);
          if (PixelBufferHelper)
          {
            goto LABEL_398;
          }

          v217 = v613;
          v218 = cf;
          v219 = a6;
          v220 = a7;
LABEL_459:
          PixelBufferHelper = _vtTransferHelperForWorkaround(v219, v220, v214, a5, v217, v218);
          v34 = v215;
          if (PixelBufferHelper)
          {
            goto LABEL_398;
          }

          goto LABEL_635;
        }

        goto LABEL_655;
      }

      v34 = a15;
      if (a2 == 875704422)
      {
        v214 = a8;
        v215 = a15;
        PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1278226488, v611, v612, a3, &v613);
        if (PixelBufferHelper)
        {
          goto LABEL_398;
        }

        v367 = CMPhotoGetBitDepthForPixelFormat(1278226488);
        PixelBufferHelper = CMPhotoCreateIntegerPixelBufferFromFullPrecisionSource(a1, 0, 1278226534, v367, 1, 0, 0, 0, &v613, 0);
        if (PixelBufferHelper)
        {
          goto LABEL_398;
        }

        v217 = v613;
        v218 = cf;
        v219 = a6;
        v220 = a7;
        goto LABEL_459;
      }

      if (a2 == 1278226488)
      {
LABEL_203:
        v107 = CMPhotoGetBitDepthForPixelFormat(a2);
        PixelBufferHelper = CMPhotoCreateIntegerPixelBufferFromFullPrecisionSource(a1, 0, 1278226534, v107, 1, 0, 0, 0, &cf, 0);
        if (!PixelBufferHelper)
        {
          goto LABEL_635;
        }

        goto LABEL_398;
      }

      if (a2 != 1278226536)
      {
LABEL_655:
        CMPhotoVTPixelTransferWorkaround_cold_27(&v615);
        goto LABEL_671;
      }

      PixelBufferHelper = CMPhotoCreateHalfPrecisionPixelBufferFromFullPrecisionSource(a1, 0, a5, 0, 0, 0, &cf);
      if (!PixelBufferHelper)
      {
        goto LABEL_635;
      }

LABEL_398:
      v32 = PixelBufferHelper;
      goto LABEL_16;
    }

    if (PixelFormatType <= 1278226533)
    {
      if (PixelFormatType <= 875704933)
      {
        v34 = a15;
        if (PixelFormatType <= 843264055)
        {
          if (PixelFormatType == 642527336)
          {
            if (a2 != 1751411059 && a2 != 1751410032)
            {
              CMPhotoVTPixelTransferWorkaround_cold_18(&v615);
              goto LABEL_671;
            }

            PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1278226536, v611, v612, a3, &v613);
            if (PixelBufferHelper)
            {
              goto LABEL_398;
            }

            PixelBufferHelper = _vtTransferHelperForWorkaround(a6, a7, a8, a5, a1, v613);
            if (PixelBufferHelper)
            {
              goto LABEL_398;
            }

            v147 = v613;
            v148 = cf;
            v149 = v611;
            v150 = v612;
            goto LABEL_270;
          }

          if (PixelFormatType != 825306677 && PixelFormatType != 825437747)
          {
            goto LABEL_603;
          }

          if (a2 > 1278226741)
          {
            if (a2 == 1815162994 || a2 == 1815491698)
            {
              goto LABEL_392;
            }

            if (a2 == 1278226742)
            {
              goto LABEL_664;
            }
          }

          else if (a2 == 1111970369 || a2 == 1278226488 || a2 == 1278226736)
          {
            goto LABEL_392;
          }

          CMPhotoVTPixelTransferWorkaround_cold_36(&v615);
          goto LABEL_671;
        }

        if (PixelFormatType != 843264056)
        {
          if (PixelFormatType != 843264310)
          {
            if (PixelFormatType != 875704422)
            {
              goto LABEL_603;
            }

            if (a2 > 1751527983)
            {
              if (a2 == 1919365990)
              {
                PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1111970369, v611, v612, a3, &v613);
                if (PixelBufferHelper)
                {
                  goto LABEL_398;
                }

                v195 = a15;
                PixelBufferHelper = _vtTransferHelperForWorkaround(a6, a7, a8, a5, a1, v613);
                if (PixelBufferHelper)
                {
                  goto LABEL_398;
                }

                CVPixelBufferLockBaseAddress(v613, 1uLL);
                CVPixelBufferLockBaseAddress(cf, 0);
                v457 = 0;
                v458 = 2;
                do
                {
                  v459 = CVPixelBufferGetBytesPerRowOfPlane(cf, v457);
                  v460 = CVPixelBufferGetBaseAddressOfPlane(cf, v457);
                  v461 = CVPixelBufferGetBytesPerRow(v613);
                  v462 = CVPixelBufferGetBaseAddress(v613);
                  v463 = v612;
                  if (v612)
                  {
                    v464 = 0;
                    v465 = v611;
                    v466 = &v462[v458];
                    do
                    {
                      v467 = v466;
                      v468 = v460;
                      for (mm = v465; mm; --mm)
                      {
                        v470 = *v467;
                        v467 += 4;
                        v471 = v470 / 255.0;
                        *v468++ = v471;
                      }

                      ++v464;
                      v460 = (v460 + v459);
                      v466 += v461;
                    }

                    while (v464 != v463);
                  }

                  ++v457;
                  --v458;
                }

                while (v457 != 3);
                v383 = v613;
                v384 = 1;
                goto LABEL_543;
              }

              if (a2 == 1751527984)
              {
                CVPixelBufferLockBaseAddress(a1, 0);
                CVPixelBufferLockBaseAddress(cf, 0);
                v310 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
                v311 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
                v312 = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
                v313 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
                v314 = CVPixelBufferGetBytesPerRowOfPlane(cf, 0);
                v315 = CVPixelBufferGetBytesPerRowOfPlane(cf, 1uLL);
                v316 = CVPixelBufferGetBaseAddressOfPlane(cf, 0);
                v317 = CVPixelBufferGetBaseAddressOfPlane(cf, 1uLL);
                v320 = v612;
                if (v612)
                {
                  v321 = 0;
                  v322 = v611;
                  do
                  {
                    if (v322)
                    {
                      v323 = &v316[v321 * v314];
                      v324 = v322;
                      v325 = &v312[v321 * v310];
                      do
                      {
                        v326 = *v325++;
                        _S1 = fminf(v326 / 255.0, 1.0);
                        __asm { FCVT            H1, S1 }

                        *v323 = LOWORD(_S1);
                        v323 += 2;
                        --v324;
                      }

                      while (v324);
                    }

                    ++v321;
                  }

                  while (v321 != v320);
                  v327 = 0;
                  v328 = v611;
                  do
                  {
                    if (v328)
                    {
                      for (nn = 0; nn < v328; nn += 2)
                      {
                        v330 = &v317[2 * nn];
                        LOBYTE(_S1) = v313[nn];
                        _S1 = fminf(LODWORD(_S1) / 255.0, 1.0);
                        __asm { FCVT            H1, S1 }

                        LOBYTE(v319) = v313[nn + 1];
                        *v330 = LOWORD(_S1);
                        _S1 = fminf(v319 / 255.0, 1.0);
                        __asm { FCVT            H1, S1 }

                        *(v330 + 1) = LOWORD(_S1);
                      }
                    }

                    v327 += 2;
                    v317 += v315;
                    v313 += v311;
                  }

                  while (v320 > v327);
                }

                goto LABEL_585;
              }
            }

            else
            {
              if (a2 == 1278226738)
              {
                PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1278226742, v611, v612, a3, &v613);
                if (PixelBufferHelper)
                {
                  goto LABEL_398;
                }

                PixelBufferHelper = _vtTransferHelperForWorkaround(a6, a7, a8, a5, a1, v613);
                if (PixelBufferHelper)
                {
                  goto LABEL_398;
                }

                CVPixelBufferLockBaseAddress(v613, 0);
                CVPixelBufferLockBaseAddress(cf, 0);
                v446 = CVPixelBufferGetBytesPerRow(v613);
                v447 = CVPixelBufferGetBaseAddress(v613);
                v448 = CVPixelBufferGetBytesPerRow(cf);
                v449 = CVPixelBufferGetBaseAddress(cf);
                v450 = v612;
                if (v612)
                {
                  v451 = 0;
                  v452 = v611;
                  do
                  {
                    if (v452)
                    {
                      v453 = &v449[v451 * v448];
                      v454 = v452;
                      v455 = &v447[v451 * v446];
                      do
                      {
                        v456 = *v455;
                        v455 += 2;
                        *v453 = v456 & 0xFFF0;
                        v453 += 2;
                        --v454;
                      }

                      while (v454);
                    }

                    ++v451;
                  }

                  while (v451 != v450);
                }

                CVPixelBufferUnlockBaseAddress(v613, 0);
                CVPixelBufferUnlockBaseAddress(cf, 0);
                CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(v613, cf);
                goto LABEL_635;
              }

              if (a2 == 1278555701)
              {
                PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1111970369, v611, v612, a3, &v613);
                if (PixelBufferHelper)
                {
                  goto LABEL_398;
                }

                PixelBufferHelper = _vtTransferHelperForWorkaround(a6, a7, a8, a5, a1, v613);
                if (PixelBufferHelper)
                {
                  goto LABEL_398;
                }

                PixelBufferHelper = _convertBGRAToL565(v613, cf);
                if (PixelBufferHelper)
                {
                  goto LABEL_398;
                }

                v86 = v613;
                v87 = cf;
                goto LABEL_586;
              }
            }

            CMPhotoVTPixelTransferWorkaround_cold_21(&v615);
            goto LABEL_671;
          }

          goto LABEL_166;
        }

LABEL_159:
        if (a2 > 1111970368)
        {
          if (a2 != 1111970369)
          {
            if (a2 == 1278226488)
            {
              goto LABEL_234;
            }

LABEL_647:
            CMPhotoVTPixelTransferWorkaround_cold_45(&v615);
            goto LABEL_671;
          }
        }

        else if (a2 != 875704422 && a2 != 875836518)
        {
          goto LABEL_647;
        }

        PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1278226488, v611, v612, a3, &v613);
        if (PixelBufferHelper)
        {
          goto LABEL_398;
        }

        PixelBufferHelper = _pixelBufferCopyForMonochromeAndMonochromeWithAlpha(a1, v613);
        if (PixelBufferHelper)
        {
          goto LABEL_398;
        }

        PixelBufferHelper = _vtTransferHelperForWorkaround(a6, a7, a8, a5, v613, cf);
        if (PixelBufferHelper)
        {
          goto LABEL_398;
        }

        CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(a1, cf);
        if (a2 != 1111970369)
        {
          goto LABEL_635;
        }

        CVPixelBufferLockBaseAddress(a1, 0);
        CVPixelBufferLockBaseAddress(cf, 0);
        v123 = CVPixelBufferGetBytesPerRow(a1);
        v124 = CVPixelBufferGetBaseAddress(a1);
        v125 = CVPixelBufferGetBytesPerRow(cf);
        v126 = CVPixelBufferGetBaseAddress(cf);
        v127 = v612;
        if (v612)
        {
          v128 = 0;
          v129 = v611;
          v130 = v124 + 1;
          v131 = v126 + 3;
          do
          {
            if (v129)
            {
              v132 = 0;
              v133 = v131;
              v134 = v130;
              do
              {
                v135 = *v134;
                v134 += 2;
                *v133 = v135;
                v133 += 4;
                ++v132;
                v129 = v611;
              }

              while (v611 > v132);
              v127 = v612;
            }

            ++v128;
            v130 += v123;
            v131 += v125;
          }

          while (v127 > v128);
        }

        v136 = pixelBuffer;
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        CVPixelBufferUnlockBaseAddress(cf, 0);
LABEL_372:
        v293 = cf;
        v294 = v136;
LABEL_382:
        CMPhotoRemoveAndPropagateAlphaFromSourceBuffer(v294, v293);
        goto LABEL_635;
      }

      v34 = a15;
      if (PixelFormatType <= 875836533)
      {
        if (PixelFormatType != 875704934 && PixelFormatType != 875704950 && PixelFormatType != 875836518)
        {
          goto LABEL_603;
        }

        goto LABEL_150;
      }

      if (PixelFormatType == 875836534)
      {
LABEL_150:
        if (a2 != 1278226488)
        {
          CMPhotoVTPixelTransferWorkaround_cold_17(&v615);
          goto LABEL_671;
        }

LABEL_171:
        PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 875704422, v611, v612, a3, &v613);
        if (PixelBufferHelper)
        {
          goto LABEL_398;
        }

        PixelBufferHelper = _vtTransferHelperForWorkaround(a6, a7, a8, a5, a1, v613);
        if (PixelBufferHelper)
        {
          goto LABEL_398;
        }

LABEL_397:
        PixelBufferHelper = _vtTransferHelperForWorkaround(a6, a7, a8, a5, v613, cf);
        if (!PixelBufferHelper)
        {
          goto LABEL_635;
        }

        goto LABEL_398;
      }

      if (PixelFormatType != 1111970369)
      {
        if (PixelFormatType != 1278226488)
        {
          goto LABEL_603;
        }

        if (a2 != 1279340600)
        {
          if (a2 == 1278226742)
          {
            CVPixelBufferLockBaseAddress(a1, 0);
            CVPixelBufferLockBaseAddress(cf, 0);
            v385 = CVPixelBufferGetBytesPerRow(a1);
            v386 = CVPixelBufferGetBaseAddress(a1);
            v387 = CVPixelBufferGetBytesPerRow(cf);
            v388 = CVPixelBufferGetBaseAddress(cf);
            v389 = v612;
            if (v612)
            {
              v390 = 0;
              v391 = v611;
              do
              {
                if (v391)
                {
                  v392 = &v388[v390 * v387];
                  v393 = v391;
                  v394 = &v386[v390 * v385];
                  do
                  {
                    v395 = *v394++;
                    *v392 = v395 | (v395 << 8);
                    v392 += 2;
                    --v393;
                  }

                  while (v393);
                }

                ++v390;
              }

              while (v390 != v389);
            }

            goto LABEL_585;
          }

          if (a2 != 843264056)
          {
            CMPhotoVTPixelTransferWorkaround_cold_40(&v615);
            goto LABEL_671;
          }
        }

LABEL_234:
        PixelBufferHelper = _pixelBufferCopyForMonochromeAndMonochromeWithAlpha(a1, cf);
        if (!PixelBufferHelper)
        {
          goto LABEL_635;
        }

        goto LABEL_398;
      }

      if (a2 == 1919365990)
      {
        v195 = a15;
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        CVPixelBufferLockBaseAddress(cf, 0);
        v196 = 0;
        v197 = 2;
        do
        {
          v198 = CVPixelBufferGetBytesPerRowOfPlane(cf, v196);
          v199 = CVPixelBufferGetBaseAddressOfPlane(cf, v196);
          v200 = CVPixelBufferGetBytesPerRow(pixelBuffer);
          v201 = CVPixelBufferGetBaseAddress(pixelBuffer);
          v202 = v612;
          if (v612)
          {
            v203 = 0;
            v204 = v611;
            v205 = &v201[v197];
            do
            {
              v206 = v205;
              v207 = v199;
              for (i1 = v204; i1; --i1)
              {
                v209 = *v206;
                v206 += 4;
                v210 = v209 / 255.0;
                *v207++ = v210;
              }

              ++v203;
              v199 = (v199 + v198);
              v205 += v200;
            }

            while (v203 != v202);
          }

          ++v196;
          --v197;
        }

        while (v196 != 3);
        v211 = pixelBuffer;
        v212 = pixelBuffer;
        v213 = 1;
LABEL_432:
        CVPixelBufferUnlockBaseAddress(v212, v213);
        CVPixelBufferUnlockBaseAddress(cf, 0);
        v347 = cf;
        v348 = v211;
LABEL_544:
        CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(v348, v347);
        v34 = v195;
        goto LABEL_635;
      }

      if (a2 != 1380401729)
      {
        CMPhotoVTPixelTransferWorkaround_cold_25(&v615);
        goto LABEL_671;
      }

LABEL_592:
      PixelBufferHelper = _convertBGRAandRGBA(a1, cf);
      if (!PixelBufferHelper)
      {
        v87 = cf;
        v86 = a1;
        goto LABEL_586;
      }

      goto LABEL_398;
    }

    if (PixelFormatType > 1279340853)
    {
      if (PixelFormatType <= 1647589489)
      {
        v34 = a15;
        if (PixelFormatType == 1279340854)
        {
LABEL_166:
          if (a2 == 1278226736)
          {
            goto LABEL_234;
          }

          if (a2 != 1815491698)
          {
            if (a2 != 1278226742)
            {
              CMPhotoVTPixelTransferWorkaround_cold_46(&v615);
              goto LABEL_671;
            }

            goto LABEL_234;
          }

          PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1278226742, v611, v612, a3, &v613);
          if (PixelBufferHelper)
          {
            goto LABEL_398;
          }

          PixelBufferHelper = _pixelBufferCopyForMonochromeAndMonochromeWithAlpha(a1, v613);
          if (PixelBufferHelper)
          {
            goto LABEL_398;
          }

          PixelBufferHelper = _vtTransferHelperForWorkaround(a6, a7, a8, a5, v613, cf);
          if (PixelBufferHelper)
          {
            goto LABEL_398;
          }

          CVPixelBufferLockBaseAddress(a1, 0);
          CVPixelBufferLockBaseAddress(cf, 0);
          v280 = CVPixelBufferGetBytesPerRow(a1);
          v281 = CVPixelBufferGetBaseAddress(a1);
          v282 = CVPixelBufferGetBytesPerRow(cf);
          v283 = CVPixelBufferGetBaseAddress(cf);
          v284 = v612;
          if (v612)
          {
            v285 = 0;
            v286 = v611;
            v287 = (v281 + 2);
            v288 = v283 + 6;
            do
            {
              v289 = v288;
              v290 = v287;
              for (i2 = v286; i2; --i2)
              {
                v292 = *v290;
                v290 += 2;
                *v289 = v292;
                v289 += 4;
              }

              ++v285;
              v287 = (v287 + v280);
              v288 = (v288 + v282);
            }

            while (v285 != v284);
          }

          v136 = pixelBuffer;
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
          CVPixelBufferUnlockBaseAddress(cf, 0);
          CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(pixelBuffer, cf);
          goto LABEL_372;
        }

        if (PixelFormatType != 1380401729)
        {
          if (PixelFormatType != 1380411457)
          {
            goto LABEL_603;
          }

          if (a2 != 1751527984)
          {
            CMPhotoVTPixelTransferWorkaround_cold_22(&v615);
            goto LABEL_671;
          }

          if (v611)
          {
            CMPhotoVTPixelTransferWorkaround_cold_5(&v615);
            goto LABEL_671;
          }

          if (v612)
          {
            CMPhotoVTPixelTransferWorkaround_cold_6(&v615);
            goto LABEL_671;
          }

          CVPixelBufferLockBaseAddress(a1, 0);
          CVPixelBufferLockBaseAddress(cf, 0);
          v596 = CVPixelBufferGetBytesPerRow(a1);
          v42 = CVPixelBufferGetBaseAddress(a1);
          v43 = CVPixelBufferGetBytesPerRowOfPlane(cf, 0);
          v590 = CVPixelBufferGetBytesPerRowOfPlane(cf, 1uLL);
          v44 = CVPixelBufferGetBaseAddressOfPlane(cf, 0);
          v45 = CVPixelBufferGetBaseAddressOfPlane(cf, 1uLL);
          v46 = v612;
          if (v612)
          {
            v47 = v45;
            v48 = 0;
            v49 = v611;
            do
            {
              if (v49)
              {
                v50 = &v44[v48 * v43];
                v51 = v49;
                v52 = &v42[v48 * v596];
                do
                {
                  _convert_one_Color_to_YCC_half(0, &v615, v52);
                  *v50 = v615.i16[0];
                  v50 += 2;
                  v52 += 4;
                  --v51;
                }

                while (v51);
              }

              ++v48;
            }

            while (v48 != v46);
            v53 = 0;
            v54 = v611;
            LOWORD(v55) = COERCE_UNSIGNED_INT(0.25);
            do
            {
              if (v54)
              {
                v56 = 0;
                v57 = &v42[v596 * (v53 | 1)];
                v58 = &v42[v53 * v596];
                do
                {
                  v59 = &v47[2 * v56];
                  _convert_one_Color_to_YCC_half(0, &v615, v58);
                  _convert_one_Color_to_YCC_half(0, &v615 + 3, v58 + 4);
                  _convert_one_Color_to_YCC_half(0, &v616 + 2, v57);
                  _convert_one_Color_to_YCC_half(0, &v618, v57 + 4);
                  *v59 = (((*&v615.i16[1] + *&v616) + *(&v616 + 3)) + v619) * v55;
                  v59[1] = (((*&v615.i16[2] + *(&v616 + 1)) + v617) + v620) * v55;
                  v58 += 8;
                  v57 += 8;
                  v56 += 2;
                }

                while (v54 > v56);
              }

              v53 += 2;
              v47 += v590;
            }

            while (v46 > v53);
          }

LABEL_632:
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
          CVPixelBufferUnlockBaseAddress(cf, 0);
          v177 = cf;
          v178 = pixelBuffer;
          goto LABEL_633;
        }

        if (a2 != 875704422)
        {
          if (a2 != 1111970369)
          {
            CMPhotoVTPixelTransferWorkaround_cold_24(&v615);
            goto LABEL_671;
          }

          goto LABEL_592;
        }

        PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1111970369, v611, v612, a3, &v613);
        if (PixelBufferHelper)
        {
          goto LABEL_398;
        }

        PixelBufferHelper = _convertBGRAandRGBA(a1, v613);
        if (PixelBufferHelper)
        {
          goto LABEL_398;
        }
      }

      else
      {
        v34 = a15;
        if (PixelFormatType > 1650943795)
        {
          if (PixelFormatType == 1650943796)
          {
LABEL_80:
            if (a2 <= 1815162993)
            {
              if (a2 != 1111970369)
              {
                if (a2 == 1278226742)
                {
                  v148 = cf;
                  v149 = v611;
                  v150 = v612;
                  v147 = a1;
                  v151 = 2;
LABEL_271:
                  PixelBufferHelper = _directPixelBufferCopy(v147, v148, v151, 0, v149, v150);
                  if (!PixelBufferHelper)
                  {
                    goto LABEL_635;
                  }

                  goto LABEL_398;
                }

LABEL_596:
                CMPhotoVTPixelTransferWorkaround_cold_20(&v615);
                goto LABEL_671;
              }
            }

            else if (a2 != 1815162994 && a2 != 1815491698)
            {
              goto LABEL_596;
            }

            PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1278226742, v611, v612, a3, &v613);
            if (PixelBufferHelper)
            {
              goto LABEL_398;
            }

            v36 = v612;
            v35 = v613;
            v37 = v611;
            v38 = a1;
            v39 = 2;
            goto LABEL_395;
          }

          if (PixelFormatType != 1650946098)
          {
            goto LABEL_603;
          }

          goto LABEL_174;
        }

        if (PixelFormatType != 1647589490)
        {
          v530 = 1650942776;
          goto LABEL_606;
        }

        if (a2 > 1815491697)
        {
          if (a2 == 1815491698)
          {
            CVPixelBufferLockBaseAddress(a1, 0);
            CVPixelBufferLockBaseAddress(cf, 0);
            v436 = CVPixelBufferGetBytesPerRow(a1);
            v437 = CVPixelBufferGetBaseAddress(a1);
            v438 = CVPixelBufferGetBytesPerRow(cf);
            v439 = CVPixelBufferGetBaseAddress(cf);
            v440 = v612;
            if (v612)
            {
              v441 = 0;
              v442 = v611;
              do
              {
                if (v442)
                {
                  v443 = &v439[v441 * v438];
                  v444 = v442;
                  v445 = &v437[v441 * v436];
                  do
                  {
                    *v443 = *v445;
                    *(v443 + 1) = *(v445 + 1);
                    *(v443 + 2) = *(v445 + 2);
                    *(v443 + 3) = -1;
                    v445 += 6;
                    v443 += 8;
                    --v444;
                  }

                  while (v444);
                }

                ++v441;
              }

              while (v441 != v440);
            }

            goto LABEL_585;
          }

          if (a2 != 2019963440)
          {
            goto LABEL_667;
          }
        }

        else if (a2 != 875704422)
        {
          if (a2 == 1751527984)
          {
            v109 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
            if (v109)
            {
              v110 = v109;
              CMPhotoGetMatrixFromPixelBufferAttachments(v109);
              if (FigCFEqual())
              {
                v111 = 2;
              }

              else
              {
                v111 = FigCFEqual() != 0;
              }

              CFRelease(v110);
            }

            else
            {
              v111 = 0;
            }

            if (v611)
            {
              CMPhotoVTPixelTransferWorkaround_cold_13(&v615);
              goto LABEL_671;
            }

            if (v612)
            {
              CMPhotoVTPixelTransferWorkaround_cold_14(&v615);
              goto LABEL_671;
            }

            CVPixelBufferLockBaseAddress(a1, 0);
            CVPixelBufferLockBaseAddress(cf, 0);
            v601 = CVPixelBufferGetBytesPerRow(a1);
            v595 = CVPixelBufferGetBaseAddress(a1);
            v531 = CVPixelBufferGetBytesPerRowOfPlane(cf, 0);
            v532 = CVPixelBufferGetBaseAddressOfPlane(cf, 0);
            v533 = v612;
            if (v612)
            {
              v534 = v532;
              v535 = 0;
              v536 = v611;
              do
              {
                if (v536)
                {
                  v537 = &v534[v535 * v531];
                  v538 = v536;
                  v539 = &v595[v535 * v601];
                  do
                  {
                    _H0 = *v539;
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    LOWORD(v609) = LOWORD(_D0);
                    *&_D0 = v539[1];
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    HIWORD(v609) = LOWORD(_D0);
                    *&_D0 = v539[2];
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    v610 = LOWORD(_D0);
                    _convert_one_Color_to_YCC_half(v111, &v615, &v609);
                    *v537 = v615.i16[0];
                    v537 += 2;
                    v539 += 3;
                    --v538;
                  }

                  while (v538);
                }

                ++v535;
              }

              while (v535 != v533);
            }

            v589 = CVPixelBufferGetBytesPerRowOfPlane(cf, 1uLL);
            v547 = CVPixelBufferGetBaseAddressOfPlane(cf, 1uLL);
            v587 = v612;
            if (v612)
            {
              v548 = v547;
              v549 = 0;
              v550 = v611;
              v551 = (v595 + 6);
              LOWORD(v552) = COERCE_UNSIGNED_INT(0.25);
              do
              {
                if (v550)
                {
                  v553 = 0;
                  v554 = &v595[v601 * (v549 | 1)];
                  v555 = v551;
                  do
                  {
                    v556 = &v548[2 * v553];
                    _H0 = *(v555 - 3);
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    LOWORD(v609) = LOWORD(_D0);
                    *&_D0 = *(v555 - 2);
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    HIWORD(v609) = LOWORD(_D0);
                    *&_D0 = *(v555 - 1);
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    v610 = LOWORD(_D0);
                    *&_D0 = *v555;
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    v608[0] = LOWORD(_D0);
                    *&_D0 = v555[1];
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    v608[1] = LOWORD(_D0);
                    *&_D0 = v555[2];
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    v608[2] = LOWORD(_D0);
                    *&_D0 = *v554;
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    v607[0] = LOWORD(_D0);
                    *&_D0 = v554[1];
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    v607[1] = LOWORD(_D0);
                    *&_D0 = v554[2];
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    v607[2] = LOWORD(_D0);
                    *&_D0 = v554[3];
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    v606[0] = LOWORD(_D0);
                    *&_D0 = v554[4];
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    v606[1] = LOWORD(_D0);
                    *&_D0 = v554[5];
                    __asm { FCVT            D0, H0 }

                    _D0 = _D0 / 65535.0;
                    __asm { FCVT            H0, D0 }

                    v606[2] = LOWORD(_D0);
                    _convert_one_Color_to_YCC_half(v111, &v615, &v609);
                    _convert_one_Color_to_YCC_half(v111, &v615 + 3, v608);
                    _convert_one_Color_to_YCC_half(v111, &v616 + 2, v607);
                    _convert_one_Color_to_YCC_half(v111, &v618, v606);
                    *v556 = (((*&v615.i16[1] + *&v616) + *(&v616 + 3)) + v619) * v552;
                    v556[1] = (((*&v615.i16[2] + *(&v616 + 1)) + v617) + v620) * v552;
                    v554 += 6;
                    v553 += 2;
                    v555 += 6;
                  }

                  while (v550 > v553);
                }

                v549 += 2;
                v548 += v589;
                v551 += v601;
              }

              while (v587 > v549);
            }

            goto LABEL_632;
          }

LABEL_667:
          CMPhotoVTPixelTransferWorkaround_cold_34(&v615);
          goto LABEL_671;
        }

        PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1815491698, v611, v612, a3, &v613);
        if (PixelBufferHelper)
        {
          goto LABEL_398;
        }

        CVPixelBufferLockBaseAddress(a1, 0);
        CVPixelBufferLockBaseAddress(v613, 0);
        v300 = CVPixelBufferGetBytesPerRow(a1);
        v301 = CVPixelBufferGetBaseAddress(a1);
        v302 = CVPixelBufferGetBytesPerRow(v613);
        v303 = CVPixelBufferGetBaseAddress(v613);
        v304 = v612;
        if (v612)
        {
          v305 = 0;
          v306 = v611;
          do
          {
            if (v306)
            {
              v307 = &v303[v305 * v302];
              v308 = v306;
              v309 = &v301[v305 * v300];
              do
              {
                *v307 = *v309;
                *(v307 + 1) = *(v309 + 1);
                *(v307 + 2) = *(v309 + 2);
                *(v307 + 3) = -1;
                v309 += 6;
                v307 += 8;
                --v308;
              }

              while (v308);
            }

            ++v305;
          }

          while (v305 != v304);
        }

        CVPixelBufferUnlockBaseAddress(a1, 0);
        CVPixelBufferUnlockBaseAddress(v613, 0);
      }

      CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(a1, v613);
      goto LABEL_397;
    }

    if (PixelFormatType <= 1278226737)
    {
      if (PixelFormatType == 1278226534)
      {
        goto LABEL_193;
      }

      if (PixelFormatType == 1278226536)
      {
        v34 = a15;
        if (a2 != 1278226534)
        {
          CMPhotoVTPixelTransferWorkaround_cold_26(&v615);
          goto LABEL_671;
        }

        PixelBufferHelper = CMPhotoCreateFullPrecisionPixelBufferFromHalfPrecisionSource(a1, 0, 0, 0, 0, &cf);
        if (PixelBufferHelper)
        {
          goto LABEL_398;
        }

        goto LABEL_635;
      }

      v34 = a15;
      if (PixelFormatType != 1278226736)
      {
        goto LABEL_603;
      }

      if (a2 > 1278226741)
      {
        if (a2 != 1279340854)
        {
          v40 = 12598;
LABEL_643:
          if (a2 != (v40 | 0x4C300000))
          {
            CMPhotoVTPixelTransferWorkaround_cold_37(&v615);
            goto LABEL_671;
          }

          goto LABEL_660;
        }
      }

      else if (a2 != 843264310)
      {
        v40 = 12594;
        goto LABEL_643;
      }

      PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1278226742, v611, v612, a3, &v613);
      if (PixelBufferHelper)
      {
        goto LABEL_398;
      }

      PixelBufferHelper = _vtTransferHelperForWorkaround(a6, a7, a8, a5, a1, v613);
      if (PixelBufferHelper)
      {
        goto LABEL_398;
      }

      PixelBufferHelper = _pixelBufferCopyForMonochromeAndMonochromeWithAlpha(v613, cf);
      if (PixelBufferHelper)
      {
        goto LABEL_398;
      }

      CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(a1, cf);
      v293 = cf;
      v294 = a1;
      goto LABEL_382;
    }

    if (PixelFormatType != 1278226738)
    {
      v34 = a15;
      if (PixelFormatType == 1279340600)
      {
        goto LABEL_159;
      }

      if (PixelFormatType != 1278226742)
      {
        goto LABEL_603;
      }

      if ((a2 | 2) != 0x4C303132)
      {
        CMPhotoVTPixelTransferWorkaround_cold_39(&v615);
        goto LABEL_671;
      }

LABEL_660:
      PixelBufferHelper = _directPixelBufferCopyForMonochrome16(a1, cf, v611, v612);
      if (PixelBufferHelper)
      {
        goto LABEL_398;
      }

      goto LABEL_635;
    }

    v34 = a15;
    if (a2 > 1278226741)
    {
      if (a2 != 1815162994 && a2 != 1815491698)
      {
        v112 = 12598;
LABEL_659:
        if (a2 != (v112 | 0x4C300000))
        {
          CMPhotoVTPixelTransferWorkaround_cold_38(&v615);
          goto LABEL_671;
        }

        goto LABEL_660;
      }
    }

    else if (a2 != 1111970369 && a2 != 1278226488)
    {
      v112 = 12592;
      goto LABEL_659;
    }

    PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a5, 1278226742, v611, v612, a3, &v613);
    if (PixelBufferHelper)
    {
      goto LABEL_398;
    }

    v36 = v612;
    v35 = v613;
    v37 = v611;
    v38 = a1;
    v39 = 0;
    v295 = 65472;
    goto LABEL_396;
  }

  v615 = 0;
  v616 = 0;
  CMPhotoGetPixelBufferCLAP(v31, 0, 0, &v615, &v616);
  if (v611 == *&v615 && v612 == v616)
  {
    if (CVPixelBufferGetPixelFormatType(*a15) == a2)
    {
      if (!a3 || !(CVPixelBufferGetBytesPerRow(*a15) % a3))
      {
        cf = *a15;
        goto LABEL_20;
      }

      v583 = 799;
    }

    else
    {
      v583 = 794;
    }

    _extractRGBComponentAndCopyIntoMonochromeBuffer_cold_1(v583, &v609);
    v32 = v609;
    goto LABEL_16;
  }

  v32 = 4294950306;
LABEL_16:
  if (cf && cf != *a15)
  {
    CFRelease(cf);
  }

LABEL_636:
  if (v613)
  {
    CFRelease(v613);
  }

  return v32;
}
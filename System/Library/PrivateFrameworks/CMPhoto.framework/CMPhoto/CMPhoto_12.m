void sub_1A59C4CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void vega::dicom::DataElement::set_manipulator<vega::manipulators::ValueManipulator>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88))
  {
    std::mutex::lock((a1 + 256));
    v4 = *(a1 + 96);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::mutex::unlock((a1 + 256));
  }

  vega::dicom::DataElement::validate_manipulator<vega::manipulators::ValueManipulator>(a1, *a2);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 248);
  *(a1 + 240) = v5;
  *(a1 + 248) = v6;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void vega::dicom::DataSet::new_element<vega::dictionary::Columns>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::Columns::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary7ColumnsEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C4F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::Rows>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::Rows::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary4RowsEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C5164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::TransferSyntaxUID>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::TransferSyntaxUID::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary17TransferSyntaxUIDEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C52C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataElement::set_manipulator<vega::manipulators::UniqueIdentifierManipulator>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88))
  {
    std::mutex::lock((a1 + 256));
    v4 = *(a1 + 96);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::mutex::unlock((a1 + 256));
  }

  vega::dicom::DataElement::validate_manipulator<vega::manipulators::UniqueIdentifierManipulator>(a1, *a2);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 248);
  *(a1 + 240) = v5;
  *(a1 + 248) = v6;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void vega::dicom::DataSet::new_element<vega::dictionary::LossyImageCompression>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, "(", &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary21LossyImageCompressionEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C54C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void vega::dicom::DataSet::new_element<vega::dictionary::BitsAllocated>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::BitsAllocated::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary13BitsAllocatedEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C574C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::BitsStored>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::BitsStored::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary10BitsStoredEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C58A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::HighBit>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::HighBit::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary7HighBitEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C5A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::SamplesPerPixel>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::SamplesPerPixel::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary15SamplesPerPixelEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C5B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::PhotometricInterpretation>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::PhotometricInterpretation::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary25PhotometricInterpretationEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C5CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::PlanarConfiguration>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::PlanarConfiguration::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary19PlanarConfigurationEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C5E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::PixelRepresentation>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::PixelRepresentation::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary19PixelRepresentationEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C5F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::ICCProfile>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::ICCProfile::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary10ICCProfileEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C60D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::PixelData_OB>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::PixelData_OB::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary12PixelData_OBEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59C622C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::vr::US(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA6B8, memory_order_acquire) & 1) == 0)
  {
    vega::vr::US();
  }
}

{
  if ((atomic_load_explicit(&qword_1ED6FA760, memory_order_acquire) & 1) == 0)
  {
    vega::vr::US();
  }
}

{
  if ((atomic_load_explicit(&qword_1ED6FA898, memory_order_acquire) & 1) == 0)
  {
    vega::vr::US();
  }
}

void vega::vr::FL(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA6E0, memory_order_acquire) & 1) == 0)
  {
    vega::vr::FL();
  }
}

{
  if ((atomic_load_explicit(&qword_1ED6FA808, memory_order_acquire) & 1) == 0)
  {
    vega::vr::FL();
  }
}

void vega::vr::FD(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA6E8, memory_order_acquire) & 1) == 0)
  {
    vega::vr::FD();
  }
}

{
  if ((atomic_load_explicit(&qword_1ED6FA810, memory_order_acquire) & 1) == 0)
  {
    vega::vr::FD();
  }
}

void ___ZL21_addKeyValueToDataSetRNSt3__110shared_ptrIN4vega5dicom7DataSetEEEP8NSStringP7NSArrayIP11objc_objectE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  _appendValueToManipulator<std::shared_ptr<vega::manipulators::ValueManipulator>>(&v5, v3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1A59C6378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c65_ZTSNSt3__110shared_ptrIN4vega12manipulators16ValueManipulatorEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c65_ZTSNSt3__110shared_ptrIN4vega12manipulators16ValueManipulatorEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vega::vr::AT(vega::vr *this)
{
  if ((atomic_load_explicit(qword_1ED6FA6F0, memory_order_acquire) & 1) == 0)
  {
    vega::vr::AT();
  }
}

{
  if ((atomic_load_explicit(&qword_1ED6FA7E0, memory_order_acquire) & 1) == 0)
  {
    vega::vr::AT();
  }
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::FixedSizeElementManipulator<vega::Tag>,vega::manipulators::ValueManipulator>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void ___ZL21_addKeyValueToDataSetRNSt3__110shared_ptrIN4vega5dicom7DataSetEEEP8NSStringP7NSArrayIP11objc_objectE_block_invoke_73(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_addKeyValueToDataSet(std::shared_ptr<vega::dicom::DataSet> & NSString *];
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [v5 rangeAtIndex:1];
    v8 = [v3 substringWithRange:{v6, v7}];
    v9 = [v5 rangeAtIndex:2];
    v11 = [v3 substringWithRange:{v9, v10}];
    if ([v8 UTF8String] && objc_msgSend(v11, "UTF8String"))
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, [v8 UTF8String]);
      v12 = std::stoi(&__str, 0, 16);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__str, [v11 UTF8String]);
      v13 = std::stoi(&__str, 0, 16);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v14 = *(a1 + 32);
      v16 = v14[2];
      v15 = v14[3];
      if (v16 >= v15)
      {
        v18 = v14[1];
        v19 = (v16 - v18) >> 2;
        if ((v19 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v20 = v15 - v18;
        v21 = v20 >> 1;
        if (v20 >> 1 <= (v19 + 1))
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v22 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          std::allocator<int>::allocate_at_least[abi:ne200100]((v14 + 1), v22);
        }

        *(4 * v19) = v12 | (v13 << 16);
        v17 = 4 * v19 + 4;
        v23 = v14[1];
        v24 = v14[2] - v23;
        v25 = (4 * v19 - v24);
        memcpy(v25, v23, v24);
        v26 = v14[1];
        v14[1] = v25;
        v14[2] = v17;
        v14[3] = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v16 = v12 | (v13 << 16);
        v17 = (v16 + 1);
      }

      v14[2] = v17;
    }
  }
}

uint64_t __copy_helper_block_ea8_32c87_ZTSNSt3__110shared_ptrIN4vega12manipulators27FixedSizeElementManipulatorINS1_3TagEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c87_ZTSNSt3__110shared_ptrIN4vega12manipulators27FixedSizeElementManipulatorINS1_3TagEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::OtherByteManipulator,vega::manipulators::ValueManipulator>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

id _convertToDICOMStringValue(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AD60] string];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v2 length])
        {
          [v2 appendString:@"\"];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 appendString:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 stringValue];
            [v2 appendString:v8];
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v2;
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<vega::dicom::DataElement>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,std::string &,vega::dicom::DataElement*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::DataElement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917B58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::DataElement>::__on_zero_shared(uint64_t a1)
{
  std::mutex::~mutex((a1 + 280));
  v2 = *(a1 + 272);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v7 = (a1 + 88);
  std::vector<std::shared_ptr<vega::dicom::DataSet>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v4 = *(a1 + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,std::string &,vega::dicom::DataElement*>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  vega::dicom::DataElement::DataElement(a1, a2, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void sub_1A59C6BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::shared_ptr<vega::dicom::DataElement>::__enable_weak_this[abi:ne200100]<vega::dicom::DataElement,vega::dicom::DataElement,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void *std::__shared_ptr_emplace<std::istringstream>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<std::istringstream>,0>(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1916630;
  std::istringstream::basic_istringstream[abi:ne200100](a1 + 3, a2, 8);
  return a1;
}

void std::__shared_ptr_emplace<std::istringstream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1916630;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void *std::__shared_ptr_emplace<vega::dicom::Reader>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<std::istringstream> &,std::allocator<vega::dicom::Reader>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19179B8;
  std::construct_at[abi:ne200100]<vega::dicom::Reader,std::shared_ptr<std::istringstream> &,vega::dicom::Reader*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Reader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19179B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::Reader,std::shared_ptr<std::istringstream> &,vega::dicom::Reader*>(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::Reader::Reader(a1, &v5, 0, 1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1A59C6FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<vega::dicom::Reader,0>(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void _addPropertyToDataSet(void *a1, __int16 a2, uint64_t a3)
{
  v18[17] = *MEMORY[0x1E69E9840];
  v5 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v16 = 24933;
    v17 = a2 | 2;
    std::string::basic_string[abi:ne200100]<0>(&__p, "OB");
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v14 = *p_p;
    v15 = p_p[1];
    std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag,vega::VR,0>();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5;
    v16 = 24933;
    v17 = a2 | 3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "SQ");
    if (v13 >= 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p;
    }

    v14 = *v8;
    v15 = v8[1];
    std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag,vega::VR,std::shared_ptr<vega::dicom::DataSet> &,0>();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(a3 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    _addArrayToDataSet(v5, a2);
  }

  v18[0] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v11 = *(a3 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  _addArrayToDataSet(v10, a2);
}

void sub_1A59C7544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__120__shared_ptr_emplaceINS_19basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne200100IJES7_Li0EEES7_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1916698;
  std::ostringstream::basic_ostringstream[abi:ne200100](a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<std::ostringstream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1916698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1A59C794C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1AC552AF0](v1);
  _Unwind_Resume(a1);
}

void *_ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7DataSetENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917980;
  _ZNSt3__112construct_atB8ne200100IN4vega5dicom7DataSetEJEPS3_EEPT_S6_DpOT0_((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::DataSet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::DataSet>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::destroy(a1 + 64, *(a1 + 72));
  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t _ZNSt3__112construct_atB8ne200100IN4vega5dicom7DataSetEJEPS3_EEPT_S6_DpOT0_(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  vega::dicom::DataSet::DataSet(a1, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void sub_1A59C7B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void vega::dicom::DataElement::set_manipulator<vega::manipulators::OtherByteManipulator>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88))
  {
    std::mutex::lock((a1 + 256));
    v4 = *(a1 + 96);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::mutex::unlock((a1 + 256));
  }

  vega::dicom::DataElement::validate_manipulator<vega::manipulators::OtherByteManipulator>(a1, *a2);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 248);
  *(a1 + 240) = v5;
  *(a1 + 248) = v6;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void _addArrayToDataSet(void *a1, __int16 a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v3 = [v6 dicomVRForArray];
  if (((-[__CFString isEqual:](v3, "isEqual:", @"LT") & 1) != 0 || -[__CFString isEqual:](v3, "isEqual:", @"ST")) && [v6 count] >= 2)
  {
  }

  else if (v3)
  {
    v4 = 2;
    goto LABEL_8;
  }

  v3 = @"SQ";
  v4 = 4;
LABEL_8:
  v7 = 24933;
  v8 = v4 | a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, -[__CFString UTF8String](v3, "UTF8String"));
  if (v10 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v11 = *p_p;
  v12 = p_p[1];
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag,vega::VR,0>();
}

void sub_1A59C82A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, std::__shared_weak_count *a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a54);
  }

  if (a61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a61);
  }

  _Unwind_Resume(a1);
}

const void *std::stringbuf::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t vega::dicom::DataElement::validate_manipulator<vega::manipulators::OtherByteManipulator>(vega::dicom::DataElement *a1, uint64_t a2)
{
  v4 = vega::dicom::DataElement::vr(a1);
  result = (*(*a2 + 48))(a2, v4);
  if ((result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "DataElement::set_manipulator, received manipulator does not support VR ");
    v7 = vega::dicom::DataElement::vr(a1);
    vega::VR::str(v7, v12);
    if ((v13 & 0x80u) == 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = v12[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12[1];
    }

    v10 = std::string::append(&v14, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v15);
    exception->__vftable = &unk_1F1917110;
  }

  return result;
}

void sub_1A59C8610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v27 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v26);
  goto LABEL_10;
}

void vega::dicom::DataElement::set_manipulator<vega::manipulators::LongStringManipulator>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88))
  {
    std::mutex::lock((a1 + 256));
    v4 = *(a1 + 96);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::mutex::unlock((a1 + 256));
  }

  vega::dicom::DataElement::validate_manipulator<vega::manipulators::LongStringManipulator>(a1, *a2);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 248);
  *(a1 + 240) = v5;
  *(a1 + 248) = v6;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void vega::dicom::DataElement::set_manipulator<vega::manipulators::SingleStringManipulator>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88))
  {
    std::mutex::lock((a1 + 256));
    v4 = *(a1 + 96);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::mutex::unlock((a1 + 256));
  }

  vega::dicom::DataElement::validate_manipulator<vega::manipulators::SingleStringManipulator>(a1, *a2);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 248);
  *(a1 + 240) = v5;
  *(a1 + 248) = v6;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t vega::dicom::DataElement::validate_manipulator<vega::manipulators::LongStringManipulator>(vega::dicom::DataElement *a1, uint64_t a2)
{
  v4 = vega::dicom::DataElement::vr(a1);
  result = (*(*a2 + 48))(a2, v4);
  if ((result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "DataElement::set_manipulator, received manipulator does not support VR ");
    v7 = vega::dicom::DataElement::vr(a1);
    vega::VR::str(v7, v12);
    if ((v13 & 0x80u) == 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = v12[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12[1];
    }

    v10 = std::string::append(&v14, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v15);
    exception->__vftable = &unk_1F1917110;
  }

  return result;
}

void sub_1A59C897C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v27 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v26);
  goto LABEL_10;
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN4vega12manipulators19LongTextManipulatorENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F19186F0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  vega::manipulators::SingleStringManipulator::SingleStringManipulator((a1 + 24));
  *(a1 + 24) = &unk_1F1918728;
  return a1;
}

void std::__shared_ptr_emplace<vega::manipulators::LongTextManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19186F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::LongTextManipulator::~LongTextManipulator(void **this)
{
  *this = &unk_1F1919888;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  *this = &unk_1F1919888;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::LongTextManipulator::is_valid_for (vega::manipulators::LongTextManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA708, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::LongTextManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA6A6);
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN4vega12manipulators20ShortTextManipulatorENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F1918D80;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  vega::manipulators::SingleStringManipulator::SingleStringManipulator((a1 + 24));
  *(a1 + 24) = &unk_1F1918DB8;
  return a1;
}

void std::__shared_ptr_emplace<vega::manipulators::ShortTextManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918D80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::ShortTextManipulator::~ShortTextManipulator(void **this)
{
  *this = &unk_1F1919888;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  *this = &unk_1F1919888;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::ShortTextManipulator::is_valid_for (vega::manipulators::ShortTextManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(qword_1ED6FA710, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::ShortTextManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &word_1ED6FA6A8);
}

uint64_t vega::dicom::DataElement::validate_manipulator<vega::manipulators::SingleStringManipulator>(vega::dicom::DataElement *a1, uint64_t a2)
{
  v4 = vega::dicom::DataElement::vr(a1);
  result = (*(*a2 + 48))(a2, v4);
  if ((result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "DataElement::set_manipulator, received manipulator does not support VR ");
    v7 = vega::dicom::DataElement::vr(a1);
    vega::VR::str(v7, v12);
    if ((v13 & 0x80u) == 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = v12[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12[1];
    }

    v10 = std::string::append(&v14, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v15);
    exception->__vftable = &unk_1F1917110;
  }

  return result;
}

void sub_1A59C906C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v27 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v26);
  goto LABEL_10;
}

void *std::__shared_ptr_emplace<vega::dicom::Writer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<std::ostringstream> &,std::allocator<vega::dicom::Writer>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917AE0;
  std::construct_at[abi:ne200100]<vega::dicom::Writer,std::shared_ptr<std::ostringstream> &,vega::dicom::Writer*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Writer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917AE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Writer>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::Writer,std::shared_ptr<std::ostringstream> &,vega::dicom::Writer*>(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::Writer::Writer(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1A59C9294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::SignedShortManipulator,vega::manipulators::ValueManipulator>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::UnsignedLongManipulator,vega::manipulators::ValueManipulator>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::SignedLongManipulator,vega::manipulators::ValueManipulator>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::UnsignedVeryLongManipulator,vega::manipulators::ValueManipulator>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::SignedVeryLongManipulator,vega::manipulators::ValueManipulator>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::FloatingPointManipulator,vega::manipulators::ValueManipulator>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::FloatingPointDoubleManipulator,vega::manipulators::ValueManipulator>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

id _getPropertyFromDataSet(vega::dicom::DataSet **a1, int a2)
{
  v63[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a1;
    v53.__r_.__value_.__r.__words[0] = 0xFFFFFF00016165;
    vega::dicom::DataSet::data_element(v3, &v53, &v57);
    if (!v57)
    {
      goto LABEL_16;
    }

    v4 = v58;
    v56[0] = v57;
    v56[1] = v58;
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasApplePrivateOwner = AppleDicomElementHasApplePrivateOwner(v56);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if (HasApplePrivateOwner)
    {
      v6 = v57;
      vega::dicom::DataElement::lazy_load(v57);
      v7 = *(v6 + 31);
      v53.__r_.__value_.__r.__words[0] = *(v6 + 30);
      v53.__r_.__value_.__l.__size_ = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::SingleStringManipulator,vega::manipulators::ValueManipulator>(&v53.__r_.__value_.__l.__data_, &v54);
      if (v53.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53.__r_.__value_.__l.__size_);
      }

      if (v54)
      {
        if (v54[31] < 0)
        {
          std::string::__init_copy_ctor_external(&v53, *(v54 + 1), *(v54 + 2));
        }

        else
        {
          v8 = *(v54 + 8);
          v53.__r_.__value_.__r.__words[2] = *(v54 + 3);
          *&v53.__r_.__value_.__l.__data_ = v8;
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v53;
        }

        else
        {
          v11 = v53.__r_.__value_.__r.__words[0];
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
        v13 = [v12 unpaddedString];

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        v9 = v13;
      }

      else
      {
        v9 = 0;
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      v10 = v9 != 0;
    }

    else
    {
LABEL_16:
      v10 = 0;
      v9 = 0;
    }

    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    if (!v10)
    {
      v17 = 0;
      goto LABEL_75;
    }
  }

  else
  {
    v9 = @"DummyKey";
  }

  v51 = 0xFFFFFF00036165;
  v52 = 0xFFFFFF00026165;
  v50 = 0xFFFFFF00046165;
  vega::dicom::DataSet::data_element(*a1, &v52, &v57);
  if (!v57)
  {
    goto LABEL_42;
  }

  v14 = v58;
  v49[0] = v57;
  v49[1] = v58;
  if (v58)
  {
    atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = AppleDicomElementHasApplePrivateOwner(v49);
  v16 = v15;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    if (v16)
    {
      goto LABEL_36;
    }

LABEL_42:
    vega::dicom::DataSet::data_element(*a1, &v51, &v54);
    if (v54)
    {
      v21 = v55;
      v46[0] = v54;
      v46[1] = v55;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = AppleDicomElementHasApplePrivateOwner(v46);
      v23 = v22;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        if (v23)
        {
LABEL_47:
          v24 = [MEMORY[0x1E695DF90] dictionary];
          v25 = vega::dicom::DataElement::data_sets(v54);
          memset(&v53, 0, sizeof(v53));
          std::vector<std::shared_ptr<vega::dicom::DataSet>>::__init_with_size[abi:ne200100]<std::shared_ptr<vega::dicom::DataSet>*,std::shared_ptr<vega::dicom::DataSet>*>(&v53, *v25, v25[1], (v25[1] - *v25) >> 4);
          for (i = v53.__r_.__value_.__r.__words[0]; i != v53.__r_.__value_.__l.__size_; i += 2)
          {
            v27 = i[1];
            v44 = *i;
            v45 = v27;
            if (v27)
            {
              atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v28 = _getPropertyFromDataSet(&v44, 1);
            if (v45)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            }

            [v24 addEntriesFromDictionary:v28];
          }

          v62 = v9;
          v63[0] = v24;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
          v42 = &v53;
          std::vector<std::shared_ptr<vega::dicom::DataSet>>::__destroy_vector::operator()[abi:ne200100](&v42);

          goto LABEL_71;
        }
      }

      else if (v22)
      {
        goto LABEL_47;
      }
    }

    vega::dicom::DataSet::data_element(*a1, &v50, &v42);
    if (v42)
    {
      v29 = v43;
      v41[0] = v42;
      v41[1] = v43;
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = AppleDicomElementHasApplePrivateOwner(v41);
      v31 = v30;
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        if (v31)
        {
LABEL_60:
          v32 = [MEMORY[0x1E695DF70] array];
          v33 = vega::dicom::DataElement::data_sets(v42);
          memset(&v53, 0, sizeof(v53));
          std::vector<std::shared_ptr<vega::dicom::DataSet>>::__init_with_size[abi:ne200100]<std::shared_ptr<vega::dicom::DataSet>*,std::shared_ptr<vega::dicom::DataSet>*>(&v53, *v33, v33[1], (v33[1] - *v33) >> 4);
          for (j = v53.__r_.__value_.__r.__words[0]; j != v53.__r_.__value_.__l.__size_; j += 2)
          {
            v35 = j[1];
            v39 = *j;
            v40 = v35;
            if (v35)
            {
              atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v36 = _getPropertyFromDataSet(&v39, 0);
            if (v40)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v40);
            }

            v37 = [v36 objectForKeyedSubscript:@"DummyKey"];
            [v32 addObject:v37];
          }

          v60 = v9;
          v61 = v32;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v59 = &v53;
          std::vector<std::shared_ptr<vega::dicom::DataSet>>::__destroy_vector::operator()[abi:ne200100](&v59);

          goto LABEL_69;
        }
      }

      else if (v30)
      {
        goto LABEL_60;
      }
    }

    v17 = 0;
LABEL_69:
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

LABEL_71:
    v20 = v55;
    if (!v55)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (!v15)
  {
    goto LABEL_42;
  }

LABEL_36:
  v17 = [MEMORY[0x1E695DF90] dictionary];
  v18 = v57;
  vega::dicom::DataElement::lazy_load(v57);
  v19 = *(v18 + 31);
  v47 = *(v18 + 30);
  v48 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  _manipulatorToImageProperties(&v47, v9, v17);
  v20 = v48;
  if (!v48)
  {
    goto LABEL_73;
  }

LABEL_72:
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
LABEL_73:
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

LABEL_75:

  return v17;
}

void sub_1A59C9BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  v34 = *(v32 - 152);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v35 = *(v32 - 120);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dicom::Reader>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<imemstream> &,std::allocator<vega::dicom::Reader>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19179B8;
  std::construct_at[abi:ne200100]<vega::dicom::Reader,std::shared_ptr<imemstream> &,vega::dicom::Reader*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::Reader,std::shared_ptr<imemstream> &,vega::dicom::Reader*>(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::Reader::Reader(a1, &v5, 0, 1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1A59C9EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::SingleStringManipulator,vega::manipulators::ValueManipulator>@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void vega::dicom::DataSet::new_element<vega::dictionary::PrivateElement>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::PrivateElement::tag_mask, &v4);
  v1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (!v1)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::PrivateElement>,std::allocator<vega::dicom::Element<vega::dictionary::PrivateElement>>,vega::Tag const&,0>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v3);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59CA064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PrivateElement>>::__shared_ptr_emplace[abi:ne200100]<vega::Tag const&,std::allocator<vega::dicom::Element<vega::dictionary::PrivateElement>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1916930;
  vega::dicom::Element<vega::dictionary::PrivateElement>::Element();
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PrivateElement>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1916930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PrivateElement>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1A59CA2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      v18 = *(v14 + 8);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

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

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<vega::Tag const&,vega::VR const&,std::allocator<vega::dicom::DataElement>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,vega::Tag const&,vega::VR const&,vega::dicom::DataElement*>((a1 + 3), a2, a3);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,vega::Tag const&,vega::VR const&,vega::dicom::DataElement*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  vega::dicom::DataElement::DataElement(a1, a2, a3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1A59CA454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<vega::Byte>::__init_with_size[abi:ne200100]<std::__wrap_iter<vega::Byte*>,std::__wrap_iter<vega::Byte*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<vega::Byte>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A59CA4CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _unbridgeNumericValue<unsigned int>(void *a1, unsigned int *a2)
{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v3 objCType]);
  if ((v12 & 0x80000000) == 0)
  {
    if (v12 != 1)
    {
      goto LABEL_31;
    }

    v4 = __p;
    if (__p > 0x62u)
    {
      if (__p != 115)
      {
        if (__p != 105)
        {
          if (__p != 99)
          {
            goto LABEL_29;
          }

          goto LABEL_10;
        }

LABEL_21:
        v5 = [v3 intValue];
        goto LABEL_39;
      }

LABEL_15:
      v5 = [v3 shortValue];
      goto LABEL_39;
    }

    if (__p != 67)
    {
      if (__p != 83)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

LABEL_25:
    v5 = [v3 unsignedCharValue];
    goto LABEL_39;
  }

  if (v11 == 1 && *__p == 99)
  {
LABEL_10:
    v5 = [v3 charValue];
LABEL_39:
    v6 = 0;
    *a2 = v5;
    goto LABEL_40;
  }

  if (v11 == 1 && *__p == 67)
  {
    goto LABEL_25;
  }

  if (v11 == 1 && *__p == 115)
  {
    goto LABEL_15;
  }

  if (v11 == 1)
  {
    if (*__p == 83)
    {
LABEL_24:
      v5 = [v3 unsignedShortValue];
      goto LABEL_39;
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  if (v11 == 1)
  {
    if (*__p == 105)
    {
      goto LABEL_21;
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  if (v11 != 1)
  {
    goto LABEL_31;
  }

  v4 = *__p;
LABEL_29:
  if (v4 == 73)
  {
    v5 = [v3 unsignedIntValue];
    goto LABEL_39;
  }

LABEL_31:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "l"))
  {
    v5 = [v3 longValue];
    goto LABEL_39;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "L"))
  {
    v5 = [v3 unsignedLongValue];
    goto LABEL_39;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "q"))
  {
    v5 = [v3 longLongValue];
    goto LABEL_39;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "Q"))
  {
    v5 = [v3 unsignedLongLongValue];
    goto LABEL_39;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "f"))
  {
    [v3 floatValue];
    v5 = v8;
    goto LABEL_39;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "d"))
  {
    [v3 doubleValue];
    v5 = v9;
    goto LABEL_39;
  }

  v6 = -19663;
LABEL_40:
  if (v12 < 0)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_1A59CA760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::FixedSizeElementManipulator<long long>,vega::manipulators::ValueManipulator>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t _unbridgeNumericValue<long long>(void *a1, uint64_t *a2)
{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v3 objCType]);
  if ((v12 & 0x80000000) == 0)
  {
    if (v12 != 1)
    {
      goto LABEL_33;
    }

    v4 = __p;
    if (__p > 0x62u)
    {
      if (__p != 115)
      {
        if (__p != 105)
        {
          if (__p != 99)
          {
            goto LABEL_30;
          }

          goto LABEL_10;
        }

LABEL_21:
        LODWORD(v5) = [v3 intValue];
        goto LABEL_22;
      }

LABEL_15:
      LODWORD(v5) = [v3 shortValue];
      goto LABEL_22;
    }

    if (__p != 67)
    {
      if (__p != 83)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

LABEL_26:
    LODWORD(v5) = [v3 unsignedCharValue];
    goto LABEL_32;
  }

  if (v11 == 1 && *__p == 99)
  {
LABEL_10:
    LODWORD(v5) = [v3 charValue];
LABEL_22:
    v5 = v5;
LABEL_45:
    v8 = 0;
    *a2 = v5;
    goto LABEL_46;
  }

  if (v11 == 1 && *__p == 67)
  {
    goto LABEL_26;
  }

  if (v11 == 1 && *__p == 115)
  {
    goto LABEL_15;
  }

  if (v11 == 1)
  {
    if (*__p == 83)
    {
LABEL_25:
      LODWORD(v5) = [v3 unsignedShortValue];
LABEL_32:
      v5 = v5;
      goto LABEL_45;
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  if (v11 == 1)
  {
    if (*__p == 105)
    {
      goto LABEL_21;
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  if (v11 != 1)
  {
    goto LABEL_33;
  }

  v4 = *__p;
LABEL_30:
  if (v4 == 73)
  {
    LODWORD(v5) = [v3 unsignedIntValue];
    goto LABEL_32;
  }

LABEL_33:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "l"))
  {
    v5 = [v3 longValue];
    goto LABEL_45;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "L"))
  {
    v5 = [v3 unsignedLongValue];
    goto LABEL_45;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "q"))
  {
    v5 = [v3 longLongValue];
    goto LABEL_45;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "Q"))
  {
    v5 = [v3 unsignedLongLongValue];
    goto LABEL_45;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "f"))
  {
    [v3 floatValue];
    v5 = v6;
    goto LABEL_45;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "d"))
  {
    [v3 doubleValue];
    v5 = v7;
    goto LABEL_45;
  }

  v8 = -19663;
LABEL_46:
  if (v12 < 0)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1A59CAA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::FixedSizeElementManipulator<unsigned long long>,vega::manipulators::ValueManipulator>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t _unbridgeNumericValue<unsigned long long>(void *a1, unint64_t *a2)
{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v3 objCType]);
  if ((v12 & 0x80000000) == 0)
  {
    if (v12 != 1)
    {
      goto LABEL_33;
    }

    v4 = __p;
    if (__p > 0x62u)
    {
      if (__p != 115)
      {
        if (__p != 105)
        {
          if (__p != 99)
          {
            goto LABEL_30;
          }

          goto LABEL_10;
        }

LABEL_21:
        LODWORD(v5) = [v3 intValue];
        goto LABEL_22;
      }

LABEL_15:
      LODWORD(v5) = [v3 shortValue];
      goto LABEL_22;
    }

    if (__p != 67)
    {
      if (__p != 83)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

LABEL_26:
    LODWORD(v5) = [v3 unsignedCharValue];
    goto LABEL_32;
  }

  if (v11 == 1 && *__p == 99)
  {
LABEL_10:
    LODWORD(v5) = [v3 charValue];
LABEL_22:
    v5 = v5;
LABEL_45:
    v8 = 0;
    *a2 = v5;
    goto LABEL_46;
  }

  if (v11 == 1 && *__p == 67)
  {
    goto LABEL_26;
  }

  if (v11 == 1 && *__p == 115)
  {
    goto LABEL_15;
  }

  if (v11 == 1)
  {
    if (*__p == 83)
    {
LABEL_25:
      LODWORD(v5) = [v3 unsignedShortValue];
LABEL_32:
      v5 = v5;
      goto LABEL_45;
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  if (v11 == 1)
  {
    if (*__p == 105)
    {
      goto LABEL_21;
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  if (v11 != 1)
  {
    goto LABEL_33;
  }

  v4 = *__p;
LABEL_30:
  if (v4 == 73)
  {
    LODWORD(v5) = [v3 unsignedIntValue];
    goto LABEL_32;
  }

LABEL_33:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "l"))
  {
    v5 = [v3 longValue];
    goto LABEL_45;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "L"))
  {
    v5 = [v3 unsignedLongValue];
    goto LABEL_45;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "q"))
  {
    v5 = [v3 longLongValue];
    goto LABEL_45;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "Q"))
  {
    v5 = [v3 unsignedLongLongValue];
    goto LABEL_45;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "f"))
  {
    [v3 floatValue];
    v5 = v6;
    goto LABEL_45;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "d"))
  {
    [v3 doubleValue];
    v5 = v7;
    goto LABEL_45;
  }

  v8 = -19663;
LABEL_46:
  if (v12 < 0)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1A59CADD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_DWORD *std::vector<int>::emplace_back<int const&>(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<int>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

void *std::vector<long long>::emplace_back<long long const&>(const void **a1, void *a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100](a1, v12);
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

uint64_t vega::dicom::DataElement::validate_manipulator<vega::manipulators::ValueManipulator>(vega::dicom::DataElement *a1, uint64_t a2)
{
  v4 = vega::dicom::DataElement::vr(a1);
  result = (*(*a2 + 48))(a2, v4);
  if ((result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "DataElement::set_manipulator, received manipulator does not support VR ");
    v7 = vega::dicom::DataElement::vr(a1);
    vega::VR::str(v7, v12);
    if ((v13 & 0x80u) == 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = v12[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12[1];
    }

    v10 = std::string::append(&v14, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v15);
    exception->__vftable = &unk_1F1917110;
  }

  return result;
}

void sub_1A59CB0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v27 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v26);
  goto LABEL_10;
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<vega::Tag,vega::VR,std::allocator<vega::dicom::DataElement>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,vega::Tag,vega::VR,vega::dicom::DataElement*>((a1 + 3), a2, a3);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,vega::Tag,vega::VR,vega::dicom::DataElement*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  vega::dicom::DataElement::DataElement(a1, a2, a3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1A59CB28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::DataSet>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::DataSet>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917980;
  std::construct_at[abi:ne200100]<vega::dicom::DataSet,std::shared_ptr<vega::dicom::DataElement> &,vega::dicom::DataSet*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataSet,std::shared_ptr<vega::dicom::DataElement> &,vega::dicom::DataSet*>(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::DataSet::DataSet(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1A59CB3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<vega::Tag,vega::VR,std::shared_ptr<vega::dicom::DataSet> &,std::allocator<vega::dicom::DataElement>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,vega::Tag,vega::VR,std::shared_ptr<vega::dicom::DataSet> &,vega::dicom::DataElement*>((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,vega::Tag,vega::VR,std::shared_ptr<vega::dicom::DataSet> &,vega::dicom::DataElement*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a4[1];
  v7 = *a4;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::DataElement::DataElement(a1, a2, a3, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_1A59CB54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary7ColumnsEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19153D0;
  vega::dicom::Element<vega::dictionary::Columns>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::Columns>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CB68C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary4RowsEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915420;
  vega::dicom::Element<vega::dictionary::Rows>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::Rows>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CB7CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary17TransferSyntaxUIDEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1916098;
  vega::dicom::Element<vega::dictionary::TransferSyntaxUID>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::TransferSyntaxUID>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CB90C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::manipulators::UniqueIdentifierManipulator>::__shared_ptr_emplace[abi:ne200100]<char const(&)[23],std::allocator<vega::manipulators::UniqueIdentifierManipulator>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918ED0;
  std::construct_at[abi:ne200100]<vega::manipulators::UniqueIdentifierManipulator,char const(&)[23],vega::manipulators::UniqueIdentifierManipulator*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::manipulators::UniqueIdentifierManipulator,char const(&)[23],vega::manipulators::UniqueIdentifierManipulator*>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  vega::manipulators::UniqueIdentifierManipulator::UniqueIdentifierManipulator(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A59CBA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::dicom::DataElement::validate_manipulator<vega::manipulators::UniqueIdentifierManipulator>(vega::dicom::DataElement *a1, uint64_t a2)
{
  v4 = vega::dicom::DataElement::vr(a1);
  result = (*(*a2 + 48))(a2, v4);
  if ((result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "DataElement::set_manipulator, received manipulator does not support VR ");
    v7 = vega::dicom::DataElement::vr(a1);
    vega::VR::str(v7, v12);
    if ((v13 & 0x80u) == 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = v12[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12[1];
    }

    v10 = std::string::append(&v14, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v15);
    exception->__vftable = &unk_1F1917110;
  }

  return result;
}

void sub_1A59CBB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v27 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v26);
  goto LABEL_10;
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary21LossyImageCompressionEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1916980;
  vega::dicom::Element<vega::dictionary::LossyImageCompression>::Element(a1 + 3);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::LossyImageCompression>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1916980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::LossyImageCompression>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vega::dicom::Element<vega::dictionary::LossyImageCompression>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CBDA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary13BitsAllocatedEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915510;
  vega::dicom::Element<vega::dictionary::BitsAllocated>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::BitsAllocated>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CBEE8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary10BitsStoredEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915560;
  vega::dicom::Element<vega::dictionary::BitsStored>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::BitsStored>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CC028(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary7HighBitEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19155B0;
  vega::dicom::Element<vega::dictionary::HighBit>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::HighBit>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CC168(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary15SamplesPerPixelEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915470;
  vega::dicom::Element<vega::dictionary::SamplesPerPixel>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::SamplesPerPixel>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CC2A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary25PhotometricInterpretationEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19154C0;
  vega::dicom::Element<vega::dictionary::PhotometricInterpretation>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::PhotometricInterpretation>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CC3E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary19PlanarConfigurationEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1914AF8;
  vega::dicom::Element<vega::dictionary::PlanarConfiguration>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::PlanarConfiguration>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CC528(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary19PixelRepresentationEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915600;
  vega::dicom::Element<vega::dictionary::PixelRepresentation>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::PixelRepresentation>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CC668(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary10ICCProfileEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915650;
  vega::dicom::Element<vega::dictionary::ICCProfile>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::ICCProfile>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CC7A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary12PixelData_OBEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19169D0;
  vega::dicom::Element<vega::dictionary::PixelData_OB>::Element(a1 + 3);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PixelData_OB>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19169D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::PixelData_OB>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vega::dicom::Element<vega::dictionary::PixelData_OB>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59CC970(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CMPhotoDNGWriteCompressedRaw(_DWORD *a1, CFDataRef theData, __CFData *a3, int a4, int a5, int a6)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (*BytePtr != 0x163726177 || *(BytePtr + 3) != a1[25] || *(BytePtr + 4) != a1[26] || *(BytePtr + 5) != a1[425] || *(BytePtr + 6) != a1[426] || *(BytePtr + 7) != a1[427])
  {
    return 1;
  }

  v14 = Length;
  v15 = BytePtr[32];
  MutableBytePtr = CFDataGetMutableBytePtr(a3);
  v17 = CFDataGetMutableBytePtr(a3);
  v18 = *(BytePtr + 7);
  v19 = (8 * v18 + 36);
  if (v18)
  {
    v20 = 0;
    v34 = &MutableBytePtr[a4];
    v21 = &BytePtr[4 * v18 + 36];
    v22 = &v17[a5];
    do
    {
      v23 = *&BytePtr[4 * v20 + 36];
      v24 = bswap32(v23);
      if (v15)
      {
        v23 = v24;
      }

      v25 = v23 - v19;
      v26 = v19;
      v27 = CFDataGetLength(a3);
      v19 = v26;
      v28 = v25 + v27;
      v29 = bswap32(v25 + v27);
      if (a6)
      {
        v28 = v29;
      }

      *&v34[4 * v20] = v28;
      v30 = *(v21 + 4 * v20);
      v31 = bswap32(v30);
      if (v15)
      {
        v30 = v31;
      }

      v32 = bswap32(v30);
      if (a6)
      {
        v30 = v32;
      }

      *&v22[4 * v20++] = v30;
    }

    while (v20 < *(BytePtr + 7));
  }

  CFDataAppendBytes(a3, &BytePtr[v19], v14 - v19);
  return 0;
}

uint64_t CMPhotoDNGRead32(unsigned int *a1, int a2)
{
  v2 = bswap32(*a1);
  if (a2)
  {
    return v2;
  }

  else
  {
    return *a1;
  }
}

unsigned int *CMPhotoDNGWrite32(unsigned int *result, unsigned int a2, int a3)
{
  v3 = bswap32(a2);
  if (!a3)
  {
    v3 = a2;
  }

  *result = v3;
  return result;
}

uint64_t CMPhotoDNGRead16(unsigned __int16 *a1, int a2)
{
  v2 = *a1;
  v3 = bswap32(v2) >> 16;
  if (a2)
  {
    LOWORD(v2) = v3;
  }

  return v2;
}

double CMPhotoDNGReadDouble(unint64_t *a1, int a2)
{
  result = *a1;
  v3 = COERCE_DOUBLE(bswap64(*a1));
  if (a2)
  {
    return v3;
  }

  return result;
}

float CMPhotoDNGReadFloat(unsigned int *a1, int a2)
{
  result = *a1;
  v3 = COERCE_FLOAT(bswap32(*a1));
  if (a2)
  {
    return v3;
  }

  return result;
}

uint64_t CMPhotoDNGReadRational(unsigned int *a1, int a2)
{
  LODWORD(v2) = *a1;
  LODWORD(v3) = a1[1];
  v4 = bswap32(*a1);
  v5 = bswap32(v3);
  if (a2)
  {
    v3 = v5;
  }

  else
  {
    v3 = v3;
  }

  if (a2)
  {
    v2 = v4;
  }

  else
  {
    v2 = v2;
  }

  return v2 | (v3 << 32);
}

_WORD *CMPhotoDNGWrite16(_WORD *result, __int16 a2, int a3)
{
  v3 = __rev16(a2);
  if (!a3)
  {
    v3 = a2;
  }

  *result = v3;
  return result;
}

unint64_t *CMPhotoDNGWrite64(unint64_t *result, unint64_t a2, int a3)
{
  v3 = bswap64(a2);
  if (!a3)
  {
    v3 = a2;
  }

  *result = v3;
  return result;
}

double *CMPhotoDNGWriteDouble(double *result, int a2, double a3)
{
  v3 = a3;
  v4 = bswap64(*&a3);
  if (a2)
  {
    v3 = *&v4;
  }

  *result = v3;
  return result;
}

uint64_t CMPhotoDNGDecompressRawTile(uint64_t a1, int a2, int a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8, char a9)
{
  if (a9)
  {

    return _jpegXLDecompress(a1, a2, a5, a6, a7, 1278226742);
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
    v81 = 0;
    *v80 = 0u;
    memset(v79, 0, sizeof(v79));
    memset(v78, 0, sizeof(v78));
    *&v77 = __PAIR64__(*(a1 + 6), __rev16(*(a1 + 9)));
    v13 = __rev16(*(a1 + 7));
    v75 = (a1 + 20);
    HIDWORD(v76) = v13;
    LODWORD(v76) = a2 - 20;
    _decodeReadHuffTable(&v75);
    v14 = DWORD2(v76);
    if (DWORD2(v76) == 8)
    {
      v14 = 0;
      DWORD2(v76) = 0;
      v15 = v76;
      v16 = BYTE4(v76) << 8;
      v17 = v75;
    }

    else
    {
      v17 = v75 + 1;
      v15 = v76 - 1;
      v16 = *v75 << 8;
    }

    v18 = *v17;
    v75 = v17 + 1;
    v19 = v15 - 1;
    LODWORD(v76) = v19;
    if ((v16 | v18) == 0xFFC4)
    {
      _decodeReadHuffTable(&v75);
      v14 = DWORD2(v76);
      if (DWORD2(v76) == 8)
      {
        v14 = 0;
        DWORD2(v76) = 0;
        v17 = v75;
        v20 = v76;
      }

      else
      {
        v17 = v75 + 1;
        v20 = v76 - 1;
      }

      v19 = v20 - 1;
    }

    LODWORD(v76) = v19 - 4;
    v75 = v17 + 6;
    DWORD2(v77) = v17[5] >> 4;
    LODWORD(v76) = v19 - 6;
    v75 = v17 + 8;
    v21 = v17[7] >> 4;
    v75 = v17 + 11;
    HIDWORD(v77) = v21;
    LODWORD(v76) = v19 - 10;
    result = 4294950743;
    if ((v77 & 1) == 0 && 2 * v77 == a3 && HIDWORD(v76) == a4 && (a4 - 1) * a7 + 2 * a3 <= a6)
    {
      v68 = a3;
      v69 = v14;
      v23 = 0;
      v24 = 0;
      v67 = a7 / 2;
      v25 = 1;
      v74 = a8;
      do
      {
        v26 = *(&v77 + v24 + 2);
        if ((v23 & 1) != 0 && v26 == DWORD2(v77))
        {
          break;
        }

        v73 = v25;
        v27 = v26;
        v28 = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
        v80[v27 + 1] = v28;
        if (!v28)
        {
          return 4294950745;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        LODWORD(v32) = 0;
        v33 = v79 + 17 * v27;
        v72 = v28;
        v34 = v28 + 2;
        v35 = &v78[v27];
        LODWORD(v36) = 256;
        a8 = v74;
        do
        {
          v36 = v36 >> 1;
          v37 = *(v35 + v29++);
          if (v37)
          {
            v38 = 0;
            v39 = v30;
            v32 = v32;
            do
            {
              v40 = v33[v32];
              v39 += v36;
              v41 = v40 + v29;
              if ((v40 + v29) >= 9)
              {
                v42 = v29;
              }

              else
              {
                v42 = v40 + v29;
              }

              if (v41 < 9)
              {
                v43 = 1;
              }

              else
              {
                v43 = 2;
              }

              if (v39 > v31)
              {
                v44 = 0;
                v45 = v31;
                if (v41 >= 9)
                {
                  v46 = v33[v32];
                }

                else
                {
                  v46 = 0;
                }

                v47 = 1 << v40;
                v48 = (1 << v40) >> 1;
                v49 = &v34[4 * v31];
                do
                {
                  if (v44 < v48)
                  {
                    v50 = v44 - v47 + 1;
                  }

                  else
                  {
                    v50 = v44;
                  }

                  if ((v31 & ~(-1 << (8 - v41))) != 0)
                  {
                    v50 = v46;
                    v51 = v44;
                  }

                  else
                  {
                    v51 = v44 + 1;
                  }

                  if (v41 <= 8)
                  {
                    v46 = v50;
                    v44 = v51;
                  }

                  *(v49 - 2) = v42;
                  *(v49 - 1) = v43;
                  *v49 = v46;
                  v49 += 4;
                  ++v45;
                  ++v31;
                }

                while (v45 < v39);
                v31 = v30 + v36 + v36 * v38;
              }

              ++v38;
              ++v32;
            }

            while (v38 != v37);
            v30 += v36 * v37;
            a8 = v74;
          }
        }

        while (v29 != 8);
        if (v31 <= 255)
        {
          v52 = v31 + 1;
          v53 = &v72[4 * v31];
          do
          {
            *v53 = 0;
            v53 += 4;
          }

          while (v52++ != 256);
        }

        v25 = 0;
        v23 = 1;
        v24 = 1;
      }

      while ((v73 & 1) != 0);
      v55 = v69;
      v56 = a4;
      if (a4 >= 1)
      {
        v57 = 0;
        v58 = (a5 + 2);
        do
        {
          if (v57)
          {
            v59 = (a5 + 2 * (v57 - 1) * v67);
            v60 = *v59 >> a8;
            v61 = v59[1] >> a8;
          }

          else
          {
            v61 = 1 << (BYTE4(v77) - 1);
            v60 = v61;
          }

          if (v68 >= 1)
          {
            v62 = 0;
            v63 = v58;
            do
            {
              v60 += _readHuffFast(&v75, 0);
              *(v63 - 1) = v60 << a8;
              v61 += _readHuffFast(&v75, 1u);
              *v63 = v61 << a8;
              v63 += 2;
              v62 += 2;
            }

            while (v62 < v68);
            v56 = HIDWORD(v76);
          }

          ++v57;
          v58 += v67;
        }

        while (v57 < v56);
        v55 = DWORD2(v76);
      }

      if ((v55 & 0xFFFFFFF8) == 8)
      {
        v64 = BYTE4(v76) << 8;
        v65 = v75;
      }

      else
      {
        v65 = v75 + 1;
        v64 = *v75 << 8;
      }

      if ((v64 | *v65) == 0xFFD9)
      {
        v66 = v80[1];
        if (v80[1])
        {
          free(v80[1]);
        }

        result = 0;
        if (v81)
        {
          if (v81 != v66)
          {
            free(v81);
            return 0;
          }
        }
      }

      else
      {
        return 4294950743;
      }
    }
  }

  return result;
}

uint64_t CMPhotoDNGDecompressLinearRawTile(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char a9)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a9)
  {

    return _jpegXLDecompress(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v14 = -1;
    applejpeg_decode_create();
    output_buffer_size = applejpeg_decode_open_mem();
    if (!output_buffer_size)
    {
      output_buffer_size = CMPhotoPixelFormatToAppleJPEGFormat(a6, &v14);
      if (!output_buffer_size)
      {
        output_buffer_size = applejpeg_decode_set_option_outformat();
        if (!output_buffer_size)
        {
          v17 = 0;
          v18 = 0;
          v15 = a5;
          v16 = 0;
          applejpeg_decode_set_option_stride();
          output_buffer_size = applejpeg_decode_get_output_buffer_size();
          if (!output_buffer_size)
          {
            output_buffer_size = applejpeg_decode_image_all();
          }
        }
      }
    }

    v12 = output_buffer_size;
    applejpeg_decode_destroy();
    return v12;
  }
}

Class initCIContext_0()
{
  if (CoreImageLibrary_sOnce_0 != -1)
  {
    initCIContext_cold_1_0();
  }

  result = objc_getClass("CIContext");
  classCIContext_0 = result;
  _MergedGlobals_1[0] = CIContextFunction_0;
  return result;
}

void *__CoreImageLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/CoreImage.framework/CoreImage", 2);
  CoreImageLibrary_sLib_0 = result;
  return result;
}

uint64_t initValkCIContextWorkingColorSpace_0()
{
  if (CoreImageLibrary_sOnce_0 != -1)
  {
    initCIContext_cold_1_0();
  }

  v0 = dlsym(CoreImageLibrary_sLib_0, "kCIContextWorkingColorSpace");
  if (v0)
  {
    result = *v0;
    constantValkCIContextWorkingColorSpace_0 = result;
  }

  else
  {
    result = constantValkCIContextWorkingColorSpace_0;
  }

  off_1ED6FA270[0] = kCIContextWorkingColorSpaceFunction_0;
  return result;
}

uint64_t initValkCIContextCacheIntermediates()
{
  if (CoreImageLibrary_sOnce_0 != -1)
  {
    initCIContext_cold_1_0();
  }

  v0 = dlsym(CoreImageLibrary_sLib_0, "kCIContextCacheIntermediates");
  if (v0)
  {
    result = *v0;
    constantValkCIContextCacheIntermediates = result;
  }

  else
  {
    result = constantValkCIContextCacheIntermediates;
  }

  off_1ED6FA278[0] = kCIContextCacheIntermediatesFunction;
  return result;
}

uint64_t initValkCIContextName()
{
  if (CoreImageLibrary_sOnce_0 != -1)
  {
    initCIContext_cold_1_0();
  }

  v0 = dlsym(CoreImageLibrary_sLib_0, "kCIContextName");
  if (v0)
  {
    result = *v0;
    constantValkCIContextName = result;
  }

  else
  {
    result = constantValkCIContextName;
  }

  off_1ED6FA280[0] = kCIContextNameFunction;
  return result;
}

Class initCIImage_0()
{
  if (CoreImageLibrary_sOnce_0 != -1)
  {
    initCIContext_cold_1_0();
  }

  result = objc_getClass("CIImage");
  classCIImage_0 = result;
  off_1ED6FA288[0] = CIImageFunction_0;
  return result;
}

uint64_t initValkCIImageColorSpace()
{
  if (CoreImageLibrary_sOnce_0 != -1)
  {
    initCIContext_cold_1_0();
  }

  v0 = dlsym(CoreImageLibrary_sLib_0, "kCIImageColorSpace");
  if (v0)
  {
    result = *v0;
    constantValkCIImageColorSpace = result;
  }

  else
  {
    result = constantValkCIImageColorSpace;
  }

  off_1ED6FA290[0] = kCIImageColorSpaceFunction;
  return result;
}

Class initCIVector_0()
{
  if (CoreImageLibrary_sOnce_0 != -1)
  {
    initCIContext_cold_1_0();
  }

  result = objc_getClass("CIVector");
  classCIVector_0 = result;
  off_1ED6FA298 = CIVectorFunction_0;
  return result;
}

uint64_t _encodeWriteSymbol(uint64_t result, unsigned int a2)
{
  v2 = *(result + 32) - a2;
  *(result + 32) = v2;
  v3 = *(result + 24);
  if (v2 < 0)
  {
    v5 = a2 >> 8;
    v6 = v3 + (v5 >> -v2);
    *(result + 24) = v6;
    v6 >>= 56;
    v7 = *(result + 56);
    v8 = *(result + 68);
    *(result + 68) = v8 + 1;
    *(v7 + v8) = v6;
    if (v6 == 255)
    {
      v9 = *(result + 56);
      v10 = *(result + 68);
      *(result + 68) = v10 + 1;
      *(v9 + v10) = 0;
    }

    v11 = *(result + 24);
    v12 = *(result + 56);
    v13 = *(result + 68);
    *(result + 68) = v13 + 1;
    *(v12 + v13) = BYTE6(v11);
    if ((~v11 & 0xFF000000000000) == 0)
    {
      v14 = *(result + 56);
      v15 = *(result + 68);
      *(result + 68) = v15 + 1;
      *(v14 + v15) = 0;
    }

    v16 = *(result + 24);
    v17 = *(result + 56);
    v18 = *(result + 68);
    *(result + 68) = v18 + 1;
    *(v17 + v18) = BYTE5(v16);
    if ((~v16 & 0xFF0000000000) == 0)
    {
      v19 = *(result + 56);
      v20 = *(result + 68);
      *(result + 68) = v20 + 1;
      *(v19 + v20) = 0;
    }

    v21 = *(result + 24);
    v22 = *(result + 56);
    v23 = *(result + 68);
    *(result + 68) = v23 + 1;
    *(v22 + v23) = BYTE4(v21);
    if ((~v21 & 0xFF00000000) == 0)
    {
      v24 = *(result + 56);
      v25 = *(result + 68);
      *(result + 68) = v25 + 1;
      *(v24 + v25) = 0;
    }

    v26 = ~*(result + 24);
    v27 = *(result + 24) >> 24;
    v28 = *(result + 56);
    v29 = *(result + 68);
    *(result + 68) = v29 + 1;
    *(v28 + v29) = v27;
    if ((v26 & 0xFF000000) == 0)
    {
      v30 = *(result + 56);
      v31 = *(result + 68);
      *(result + 68) = v31 + 1;
      *(v30 + v31) = 0;
    }

    v32 = ~*(result + 24);
    v33 = *(result + 24) >> 16;
    v34 = *(result + 56);
    v35 = *(result + 68);
    *(result + 68) = v35 + 1;
    *(v34 + v35) = v33;
    if ((*&v32 & 0xFF0000) == 0)
    {
      v36 = *(result + 56);
      v37 = *(result + 68);
      *(result + 68) = v37 + 1;
      *(v36 + v37) = 0;
    }

    v38 = ~*(result + 24);
    v39 = *(result + 24) >> 8;
    v40 = *(result + 56);
    v41 = *(result + 68);
    *(result + 68) = v41 + 1;
    *(v40 + v41) = v39;
    if ((v38 & 0xFF00) == 0)
    {
      v42 = *(result + 56);
      v43 = *(result + 68);
      *(result + 68) = v43 + 1;
      *(v42 + v43) = 0;
    }

    v44 = *(result + 24);
    v45 = ~*(result + 24);
    v46 = *(result + 56);
    v47 = *(result + 68);
    *(result + 68) = v47 + 1;
    *(v46 + v47) = v44;
    if (!v45)
    {
      v48 = *(result + 56);
      v49 = *(result + 68);
      *(result + 68) = v49 + 1;
      *(v48 + v49) = 0;
    }

    v50 = *(result + 32);
    *(result + 32) = v50 + 64;
    v4 = v5 << v50;
  }

  else
  {
    v4 = v3 + ((a2 >> 8) << v2);
  }

  *(result + 24) = v4;
  return result;
}

uint64_t _encodeWriteHuffTable(uint64_t result, char a2)
{
  v2 = 0;
  v3 = *(result + 56);
  v4 = *(result + 68);
  *(result + 68) = v4 + 1;
  *(v3 + v4) = -1;
  v5 = *(result + 56);
  v6 = *(result + 68);
  *(result + 68) = v6 + 1;
  *(v5 + v6) = -60;
  v7 = *(result + 56);
  v8 = *(result + 68);
  *(result + 68) = v8 + 1;
  *(v7 + v8) = 0;
  v9 = *(result + 56);
  v10 = *(result + 68);
  *(result + 68) = v10 + 1;
  *(v9 + v10) = 32;
  v11 = *(result + 68);
  *(result + 68) = v11 + 1;
  *(*(result + 56) + v11) = a2;
  do
  {
    v12 = g_huff_n[v2];
    v13 = *(result + 56);
    v14 = *(result + 68);
    *(result + 68) = v14 + 1;
    *(v13 + v14) = v12;
    ++v2;
  }

  while (v2 != 16);
  for (i = 0; i != 13; ++i)
  {
    v16 = g_huff_v[i];
    v17 = *(result + 56);
    v18 = *(result + 68);
    *(result + 68) = v18 + 1;
    *(v17 + v18) = v16;
  }

  return result;
}

uint64_t _readHuffFast(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 8)
  {
    v8 = *(a1 + 12);
    v9 = *(a1 + 16);
    LOBYTE(v3) = v3 - 8;
  }

  else
  {
    v4 = *a1;
    v5 = (*a1 + 1);
    *a1 = v5;
    v6 = *v4;
    v7 = *(a1 + 8);
    v8 = v6 | (*(a1 + 12) << 8);
    *(a1 + 8) = v7 - 1;
    *(a1 + 12) = v8;
    if (v6 == 255 && !*v5)
    {
      *a1 = v4 + 2;
      *(a1 + 8) = v7 - 2;
    }

    v9 = v3 + 8;
    *(a1 + 16) = v3 + 8;
  }

  v10 = *(a1 + 4 * a2 + 32);
  v11 = (*(a1 + 8 * v10 + 112) + 4 * (v8 >> v3));
  v12 = *v11;
  v13 = v11[1];
  result = *(v11 + 1);
  if (v13 == 2)
  {
    v15 = v9 - v12;
    *(a1 + 16) = v15;
    if (v15 >= result)
    {
      v19 = v8;
    }

    else
    {
      v16 = *a1;
      v17 = *(a1 + 8);
      do
      {
        *(a1 + 12) = v8 << 8;
        *a1 = v16 + 1;
        v18 = *v16;
        v19 = v18 | (v8 << 8);
        *(a1 + 8) = v17 - 1;
        *(a1 + 12) = v19;
        if (v18 == 255)
        {
          v16 += 2;
          *a1 = v16;
          v17 -= 2;
          *(a1 + 8) = v17;
        }

        else
        {
          --v17;
          ++v16;
        }

        v15 += 8;
        *(a1 + 16) = v15;
        v8 = v18 | (v8 << 8);
      }

      while (v15 < result);
    }

    *(a1 + 16) = v15 - result;
    v34 = -1 << result;
    v35 = (v19 >> (v15 - result)) & ~(-1 << result);
    v36 = v35 >> (result - 1);
    result = v35;
    if (!v36)
    {
      return (v34 + v35 + 1);
    }
  }

  else if (v13 == 1)
  {
    *(a1 + 16) = v9 - v12;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = a1 + 16 * v10 + 40;
    while (1)
    {
      Bit = _decodeReadBit(a1);
      v22 *= 2;
      v26 = *(v24 + v20);
      if (*(v24 + v20))
      {
        break;
      }

LABEL_23:
      v21 = Bit | (2 * v21);
      ++v20;
    }

    v27 = v23 + v26;
    while (Bit + 2 * v21 != v22)
    {
      ++v22;
      ++v23;
      if (!--v26)
      {
        v23 = v27;
        goto LABEL_23;
      }
    }

    v28 = a1 + 17 * v10 + v23;
    v29 = *(v28 + 72);
    if (*(v28 + 72))
    {
      v30 = 0;
      v31 = 0;
      v32 = 1;
      do
      {
        v30 = _decodeReadBit(a1) | (2 * v30);
        if (!v31)
        {
          v32 = v30;
        }

        ++v31;
      }

      while (v29 != v31);
      if (v32)
      {
        v33 = 0;
      }

      else
      {
        v33 = (-1 << v29) + 1;
      }

      return (v33 + v30);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _decodeReadBit(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 12);
    v3 = v1 - 1;
  }

  else
  {
    v4 = (*a1)++;
    v2 = *v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v5 - 1;
    *(a1 + 12) = v2;
    if (v2 == 255)
    {
      *a1 = v4 + 2;
      *(a1 + 8) = v5 - 2;
    }

    v3 = 7;
  }

  *(a1 + 16) = v3;
  return (v2 >> v3) & 1;
}

uint64_t _decodeReadHuffTable(uint64_t result)
{
  if (*(result + 16) == 8)
  {
    *(result + 16) = 0;
    v1 = *result;
    v2 = *(result + 8);
  }

  else
  {
    v1 = *result + 1;
    v2 = *(result + 8) - 1;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  *(result + 8) = v2 - 1;
  *result = v1 + 2;
  v5 = *(v1 + 1);
  *(result + 8) = v2 - 2;
  v6 = v1 + 3;
  v7 = v2 - 3;
  do
  {
    *result = v6;
    v8 = *(v6 - 1);
    *(result + 16 * v5 + 40 + v3) = v8;
    *(result + 8) = v7;
    v4 = (v4 + v8);
    ++v3;
    ++v6;
    --v7;
  }

  while (v3 != 16);
  if (v4)
  {
    v9 = 17 * v5 + 72;
    do
    {
      *result = v6;
      v10 = *(v6 - 1);
      *(result + 8) = v7;
      *(result + v9) = v10;
      --v7;
      ++v6;
      ++v9;
      --v4;
    }

    while (v4);
  }

  return result;
}

_DWORD *_jxlOutputCallback_0(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, char *__src)
{
  if (!result)
  {
    return _jxlOutputCallback_cold_2_0();
  }

  v5 = result[10];
  switch(v5)
  {
    case 1278226742:
      v6 = 1;
LABEL_8:
      v7 = *(result + 2) * a3 + 2 * a2 * v6;
      v8 = result[11];
      if (v8)
      {
        if (v5 == 1278226742)
        {
          v9 = v6 * a4;
          if (v6 * a4)
          {
            v10 = (*result + v7);
            do
            {
              v11 = *__src;
              __src += 2;
              *v10++ = v11 << v8;
              --v9;
            }

            while (v9);
          }
        }

        else
        {
          return _jxlOutputCallback_cold_1_0();
        }
      }

      else
      {
        v12 = (*result + v7);

        return memcpy(v12, __src, 2 * a4 * v6);
      }

      return result;
    case 1647589490:
      v6 = 3;
      goto LABEL_8;
    case 1815491698:
      v6 = 4;
      goto LABEL_8;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t _populateTranscodeDescriptionForMainImage(const void *a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  cf = 0;
  v6 = CFGetAllocator(a1);
  if (a3 == -1)
  {
    Mutable = 0;
    goto LABEL_6;
  }

  v7 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    TranscodePayloadArray = FigCFDictionarySetCFIndex();
    if (TranscodePayloadArray)
    {
LABEL_4:
      v10 = TranscodePayloadArray;
      goto LABEL_17;
    }

LABEL_6:
    v11 = &off_1F1916A38;
    v12 = 6;
    while (1)
    {
      v15 = 0;
      TranscodePayloadArray = (*(v11 - 1))(a1, a2, Mutable, &v15);
      if (TranscodePayloadArray)
      {
        goto LABEL_4;
      }

      if (v15 >= 1)
      {
        TranscodePayloadArray = _createTranscodePayloadArray(a1, v6, *(v11 + 2), v15, a2, a3, &cf);
        if (TranscodePayloadArray)
        {
          goto LABEL_4;
        }

        FigCFDictionarySetValue();
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      v11 += 3;
      if (!--v12)
      {
        CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions(a1, a2, Mutable, &v16);
        if (v13 || FigCFDictionaryGetCount() < 1)
        {
          v10 = 0;
          goto LABEL_17;
        }

        TranscodePayloadArray = _createTranscodePayloadArray(a1, v6, 8, 1, a2, a3, &cf);
        if (!TranscodePayloadArray)
        {
          FigCFDictionarySetValue();
          if (cf)
          {
            CFRelease(cf);
            v10 = 0;
            cf = 0;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_19;
        }

        goto LABEL_4;
      }
    }
  }

  v10 = 4294950305;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_19:
  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

void ___writeTranscodeDescriptionToData_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v16[27] = v2;
    v16[28] = v3;
    if (cf && (v6 = *(a1 + 48), cfa = *(a1 + 40), v7 = *(a1 + 64), v8 = *(a1 + 56), v9 = CFGetTypeID(cf), v9 == CFDictionaryGetTypeID()))
    {
      DeepCopy = CMPhotoDictionaryCreateDeepCopy(*MEMORY[0x1E695E480], 1, cf);
      if (DeepCopy)
      {
        v11 = DeepCopy;
        v15 = 0;
        if (CMPhotoCFDictionaryGetIntIfPresent())
        {
          CMPhotoCFDictionaryGetIntIfPresent();
          v16[0] = 0;
          v13 = _writeMainImageToDestination(cfa, v6, v7, v11, v16);
          if (!v13)
          {
            v13 = _writePictureHandleToGroup(v8, v16[0]);
          }

          v12 = v13;
        }

        else
        {
          v12 = -16990;
        }

        CFRelease(v11);
      }

      else
      {
        v12 = -16991;
      }
    }

    else
    {
      v12 = -16990;
    }

    *(*(*(a1 + 32) + 8) + 24) = v12;
  }
}

uint64_t ___writeTranscodeDescriptionToData_block_invoke_2(uint64_t result, CFTypeRef cf)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v7 = v2;
    v8 = v3;
    v4 = result;
    if (cf)
    {
      v5 = CFGetTypeID(cf);
      if (v5 == CFDictionaryGetTypeID())
      {
        v6 = 0;
        CMPhotoCFDictionaryGetIntIfPresent();
      }
    }

    result = 4294950306;
    *(*(*(v4 + 32) + 8) + 24) = -16990;
  }

  return result;
}

void ___writeMainImageToDestination_block_invoke(uint64_t a1, const void *a2)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    cf[3] = v2;
    cf[4] = v3;
    v8 = 0;
    cf[0] = 0;
    *(*(*(a1 + 32) + 8) + 24) = _createBufferFromImageDescriptionEntry(*(a1 + 40), a2, *(a1 + 64), 0, 0, cf, &v8, 0, 0, 0);
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      Value = CFDictionaryGetValue(a2, @"EncodeOptions");
      v7 = CFGetAllocator(*(a1 + 40));
      *(*(*(a1 + 32) + 8) + 24) = CMPhotoMergeDictionaryEntries(v7, v8, Value, 1u);
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = CMPhotoCompressionSessionAddThumbnail(*(a1 + 48));
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void ___writeMainImageToDestination_block_invoke_2(uint64_t a1, const void *a2)
{
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return;
  }

  v16[5] = v2;
  v16[6] = v3;
  v16[0] = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  cf = 0;
  *(*(*(a1 + 32) + 8) + 24) = _createBufferFromImageDescriptionEntry(*(a1 + 40), a2, *(a1 + 64), 1, 0, v16, &cf, &v14, &v13, &v15);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    Value = CFDictionaryGetValue(a2, @"EncodeOptions");
    v7 = CFGetAllocator(*(a1 + 40));
    *(*(*(a1 + 32) + 8) + 24) = CMPhotoMergeDictionaryEntries(v7, cf, Value, 1u);
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v8 = FigCFDictionaryGetValue();
      if (v13 != 4 || !v15 || v8)
      {
LABEL_9:
        CMPhotoCompressionSessionAddAuxiliaryImage(*(a1 + 48));
        *(*(*(a1 + 32) + 8) + 24) = v11;
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          FigCFDictionarySetInt();
        }

        goto LABEL_11;
      }

      CFGetAllocator(*(a1 + 40));
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v10 = MutableCopy;
        FigCFDictionarySetValue();
        cf = v10;
        goto LABEL_9;
      }

      *(*(*(a1 + 32) + 8) + 24) = -16991;
    }
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16[0])
  {
    CFRelease(v16[0]);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void ___writeMainImageToDestination_block_invoke_3(uint64_t a1, CFTypeRef cf)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    if (cf)
    {
      v3 = CFGetTypeID(cf);
      if (v3 == CFDictionaryGetTypeID())
      {
        if (CMPhotoCFDictionaryGetIntIfPresent())
        {
          FigCFDictionaryGetValue();
        }
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = -16990;
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 32) + 8) + 24) = (*(a1 + 64))(*(a1 + 48), *(a1 + 56), 0, 0);
    }
  }
}

void ___writeTmapImageToDestination_block_invoke(uint64_t a1, const void *a2)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    cf[3] = v2;
    cf[4] = v3;
    v8 = 0;
    cf[0] = 0;
    *(*(*(a1 + 32) + 8) + 24) = _createBufferFromImageDescriptionEntry(*(a1 + 40), a2, *(a1 + 64), 0, 0, cf, &v8, 0, 0, 0);
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      Value = CFDictionaryGetValue(a2, @"EncodeOptions");
      v7 = CFGetAllocator(*(a1 + 40));
      *(*(*(a1 + 32) + 8) + 24) = CMPhotoMergeDictionaryEntries(v7, v8, Value, 1u);
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = CMPhotoCompressionSessionAddThumbnail(*(a1 + 48));
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }
}

uint64_t fjds_register()
{
  sCMPhotoJPEGDecodeSessionClass = 0;
  *algn_1ED6FA368 = "CMPhotoJPEGDecodeSession";
  qword_1ED6FA370 = fjds_init;
  unk_1ED6FA378 = 0;
  qword_1ED6FA388 = 0;
  unk_1ED6FA390 = 0;
  qword_1ED6FA380 = fjds_finalize;
  qword_1ED6FA398 = fjds_copyFormattingDesc;
  qword_1ED6FA3A0 = fjds_copyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sCMPhotoJPEGDecodeSessionID = result;
  return result;
}

uint64_t CMPhotoJPEGDecodeSessionCreate(const __CFAllocator *a1, const __CFDictionary *a2, uint64_t *a3)
{
  if (!a3)
  {
    return 4294951226;
  }

  pthread_once(&CMPhotoJPEGDecodeSessionGetTypeID_sRegisterCMPhotoJPEGDecodeSessionOnce, fjds_register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294951225;
  }

  v7 = Instance;
  *(Instance + 160) = 0;
  *(Instance + 180) = 1;
  *(Instance + 200) = 0;
  *(Instance + 208) = 0;
  if (a2)
  {
    *(Instance + 160) = _getBoolValue_0(a2, @"AsyncDecode", *(Instance + 160));
    *(v7 + 180) = _getBoolValue_0(a2, @"ColorSpaceAware", *(v7 + 180));
    Value = CFDictionaryGetValue(a2, @"SurfacePool");
    if (Value)
    {
      v9 = Value;
      v10 = CFGetTypeID(Value);
      if (v10 == CMPhotoSurfacePoolGetTypeID() || v9 == @"SurfacePoolOneShot")
      {
        v11 = *(v7 + 200);
        if (v11)
        {
          CFRelease(v11);
          *(v7 + 200) = 0;
        }

        *(v7 + 200) = CFRetain(v9);
      }
    }

    v12 = CFDictionaryGetValue(a2, @"ScaleAndRotateSession");
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 == CMPhotoScaleAndRotateSessionGetTypeID())
      {
        v15 = *(v7 + 208);
        if (v15)
        {
          CFRelease(v15);
          *(v7 + 208) = 0;
        }

        *(v7 + 208) = CFRetain(v13);
      }
    }
  }

  *(v7 + 20) = JPEGDeviceInterface_numberOfJPEGCores();
  NumberOfScalerCores = FigGetNumberOfScalerCores();
  *(v7 + 24) = NumberOfScalerCores;
  v17 = 2 * *(v7 + 20);
  v18 = NumberOfScalerCores + ((NumberOfScalerCores + 1) >> 1);
  *(v7 + 56) = dispatch_semaphore_create(v17 + v18);
  *(v7 + 64) = dispatch_queue_create("com.apple.coremedia.jpegdecodesession.waitqueue", 0);
  *(v7 + 72) = dispatch_queue_create("com.apple.coremedia.jpegdecodesession.executionqueue", MEMORY[0x1E69E96A8]);
  *(v7 + 80) = dispatch_semaphore_create(v17);
  *(v7 + 88) = dispatch_semaphore_create(v18);
  *(v7 + 48) = 0;
  *(v7 + 40) = 0;
  Mutable = CFSetCreateMutable(a1, 0, 0);
  *(v7 + 96) = 0;
  *(v7 + 32) = Mutable;
  *(v7 + 128) = 0;
  *(v7 + 104) = v7 + 96;
  *(v7 + 112) = 0;
  *(v7 + 120) = v7 + 112;
  *(v7 + 132) = 1;
  if (*(v7 + 160))
  {
    *(v7 + 168) = 0;
    *(v7 + 176) = 0;
    *(v7 + 184) = FigDispatchQueueCreateWithPriority();
    v20 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
    *(v7 + 192) = v20;
    IONotificationPortSetDispatchQueue(v20, *(v7 + 184));
  }

  *(v7 + 144) = 0;
  *(v7 + 152) = dispatch_semaphore_create(*(v7 + 20));
  *(v7 + 136) = CFArrayCreateMutable(a1, *(v7 + 20), 0);
  if (*(v7 + 20) < 1)
  {
LABEL_23:
    result = 0;
    *a3 = v7;
  }

  else
  {
    v21 = 0;
    while (1)
    {
      v22 = JPEGDeviceInterface_openDriverConnection();
      if (!v22)
      {
        break;
      }

      v23 = v22;
      CFArrayAppendValue(*(v7 + 136), v22);
      if (*(v7 + 160))
      {
        MachPort = IONotificationPortGetMachPort(*(v7 + 192));
        MEMORY[0x1AC551C90](v23, 0, MachPort, 0);
      }

      if (++v21 >= *(v7 + 20))
      {
        goto LABEL_23;
      }
    }

    CMPhotoJPEGDecodeSessionCreate_cold_1(v7, &v26);
    return v26;
  }

  return result;
}

uint64_t _getBoolValue_0(const __CFDictionary *a1, const void *a2, unsigned __int8 a3)
{
  if (!a1)
  {
    return a3;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return a3;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFBooleanGetTypeID())
  {
    v8 = CFGetTypeID(v5);
    if (v8 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    return a3;
  }

  return CFBooleanGetValue(v5);
}

const __CFDictionary *unpackCGImageRequestOptions(const __CFDictionary *result, _BYTE *a2)
{
  if (!result)
  {
    LOBYTE(BoolValue_0) = 1;
LABEL_7:
    *a2 = BoolValue_0;
    return result;
  }

  v3 = result;
  BoolValue_0 = _getBoolValue_0(result, @"BackCGImageWithIOSurface", 1u);
  FourCCValue = _getFourCCValue(v3);
  result = _getBoolValue_0(v3, @"AllowNonExactOutputDimensions", 0);
  if (BoolValue_0 || FourCCValue == 1111970369)
  {
    if (result)
    {
      fig_log_get_emitter();
      result = FigSignalErrorAtGM();
    }

    goto LABEL_7;
  }

  unpackCGImageRequestOptions_cold_1(&v6);
  return v6;
}

const void *CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously(uint64_t a1, const void *a2, CFDictionaryRef theDict, uint64_t a4)
{
  if (!a1)
  {
    v13 = 1293;
    goto LABEL_18;
  }

  if (*(a1 + 16))
  {
    v14 = -16076;
    goto LABEL_21;
  }

  if (!a2)
  {
    if (!theDict || (Value = CFDictionaryGetValue(theDict, @"SourceIOSurface")) == 0 || (v9 = CFGetTypeID(Value), v9 != IOSurfaceGetTypeID()))
    {
      v13 = 1295;
LABEL_18:
      if (CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously_cold_1(v13, &v18))
      {
        return 0;
      }

      v14 = v18;
LABEL_21:
      CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously_cold_2(v15, a4, a1, v14);
      return 0;
    }
  }

  if (!a4)
  {
    v13 = 1296;
    goto LABEL_18;
  }

  v10 = _getBoolValue_0(theDict, @"HighPriority", 0) == 0;
  v17 = 0;
  if (!FigCFDictionaryGetInt64IfPresent())
  {
    RequestIDAndAddToInflightList = fjds_generateRequestIDAndAddToInflightList(a1);
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  RequestIDAndAddToInflightList = v17;
  os_unfair_lock_lock((a1 + 40));
  CFSetAddValue(*(a1 + 32), v17);
  os_unfair_lock_unlock((a1 + 40));
  if (a2)
  {
LABEL_10:
    CFRetain(a2);
  }

LABEL_11:
  if (theDict)
  {
    CFRetain(theDict);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = *"";
  v16[2] = __CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously_block_invoke;
  v16[3] = &unk_1E77A32D0;
  v16[6] = a1;
  v16[7] = RequestIDAndAddToInflightList;
  v16[8] = a2;
  v16[4] = a4;
  v16[5] = theDict;
  fjds_runRequestBlockAsynchronously(a1, v10, v16);
  return RequestIDAndAddToInflightList;
}

const void *fjds_generateRequestIDAndAddToInflightList(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 40));
  v2 = (*(a1 + 48) + 1);
  *(a1 + 48) = v2;
  CFSetAddValue(*(a1 + 32), v2);
  os_unfair_lock_unlock((a1 + 40));
  return v2;
}

void fjds_runRequestBlockAsynchronously(uint64_t a1, unsigned int a2, const void *a3)
{
  v6 = dispatch_semaphore_wait(*(a1 + 56), 0);
  CFRetain(a1);
  if (!v6)
  {
    v10 = *(a1 + 72);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = *"";
    v12[2] = __fjds_runRequestBlockAsynchronously_block_invoke_3;
    v12[3] = &unk_1E77A33E0;
    v12[4] = a3;
    v12[5] = a1;
    v11 = v12;
LABEL_8:
    dispatch_async(v10, v11);
    return;
  }

  if (!*(a1 + 132))
  {
    v10 = *(a1 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = *"";
    block[2] = __fjds_runRequestBlockAsynchronously_block_invoke;
    block[3] = &unk_1E77A33B8;
    block[4] = a3;
    block[5] = a1;
    v11 = block;
    goto LABEL_8;
  }

  v7 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
  *v7 = _Block_copy(a3);
  os_unfair_lock_lock((a1 + 128));
  v7[1] = 0;
  v8 = a1 + 16 * a2;
  **(v8 + 104) = v7;
  *(v8 + 104) = v7 + 1;
  os_unfair_lock_unlock((a1 + 128));
  v9 = *(a1 + 64);

  dispatch_async_f(v9, a1, fjds_scheduleNextRequest);
}

void __CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously_block_invoke(uint64_t a1)
{
  v12 = 0;
  BoolValue_0 = _getBoolValue_0(*(a1 + 40), @"AsyncDecode", 0);
  v3 = *(a1 + 48);
  if (BoolValue_0)
  {
    if (!*(v3 + 160))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      goto LABEL_4;
    }

    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = 1;
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = 0;
  }

  fjds_createPixelBufferFromJPEGData(v3, v8, v9, v10, &v12, v11);
LABEL_4:
  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  fjds_removeRequestIDFromInflightList(*(a1 + 48), *(a1 + 56));
  v6 = *(a1 + 32);
  v7 = v12;
  (*(v6 + 16))();
  if (v7)
  {

    CFRelease(v7);
  }
}

void fjds_removeRequestIDFromInflightList(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 40));
  CFSetRemoveValue(*(a1 + 32), a2);

  os_unfair_lock_unlock((a1 + 40));
}

const void *CMPhotoJPEGDecodeSessionDecodeDataToCGImageAsynchronously(uint64_t a1, const void *a2, CFDictionaryRef theDict, uint64_t a4)
{
  v21 = 1;
  if (!a1)
  {
    v14 = 1361;
    goto LABEL_16;
  }

  if (*(a1 + 16))
  {
    v15 = -16076;
    goto LABEL_18;
  }

  if (!a2)
  {
    if (!theDict || (Value = CFDictionaryGetValue(theDict, @"SourceIOSurface")) == 0 || (v9 = CFGetTypeID(Value), v9 != IOSurfaceGetTypeID()))
    {
      v14 = 1363;
LABEL_16:
      if (CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously_cold_1(v14, &v22))
      {
        return 0;
      }

      v15 = v22;
LABEL_18:
      global_queue = dispatch_get_global_queue(0, 0);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = *"";
      v17[2] = __CMPhotoJPEGDecodeSessionDecodeDataToCGImageAsynchronously_block_invoke_2;
      v17[3] = &unk_1E77A3348;
      v17[4] = a4;
      v17[5] = a1;
      v17[6] = 0;
      v18 = v15;
      dispatch_async(global_queue, v17);
      return 0;
    }
  }

  if (!a4)
  {
    v14 = 1364;
    goto LABEL_16;
  }

  v10 = unpackCGImageRequestOptions(theDict, &v21);
  if (v10)
  {
    v15 = v10;
    goto LABEL_18;
  }

  v11 = _getBoolValue_0(theDict, @"HighPriority", 0) == 0;
  RequestIDAndAddToInflightList = fjds_generateRequestIDAndAddToInflightList(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (theDict)
  {
    CFRetain(theDict);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = *"";
  v19[2] = __CMPhotoJPEGDecodeSessionDecodeDataToCGImageAsynchronously_block_invoke;
  v19[3] = &unk_1E77A3320;
  v19[6] = a1;
  v19[7] = RequestIDAndAddToInflightList;
  v19[8] = a2;
  v20 = v21;
  v19[4] = a4;
  v19[5] = theDict;
  fjds_runRequestBlockAsynchronously(a1, v11, v19);
  return RequestIDAndAddToInflightList;
}

void __CMPhotoJPEGDecodeSessionDecodeDataToCGImageAsynchronously_block_invoke(uint64_t a1)
{
  cf = 0;
  pixelBuffer = 0;
  BoolValue_0 = _getBoolValue_0(*(a1 + 40), @"AsyncDecode", 0);
  v3 = *(a1 + 48);
  if (BoolValue_0)
  {
    if (!*(v3 + 160))
    {
      fig_log_get_emitter();
      PixelBufferFromJPEGData = FigSignalErrorAtGM();
      goto LABEL_4;
    }

    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 40);
    v13 = 1;
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 40);
    v13 = 0;
  }

  PixelBufferFromJPEGData = fjds_createPixelBufferFromJPEGData(v3, v10, v11, v12, &pixelBuffer, v13);
LABEL_4:
  v5 = PixelBufferFromJPEGData;
  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  if (!v5)
  {
    v8 = CFGetAllocator(*(a1 + 48));
    v9 = pixelBuffer;
    CMPhotoCreateCGImageWithPixelBuffer(v8, pixelBuffer, *(a1 + 72), &cf);
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = pixelBuffer;
  if (pixelBuffer)
  {
LABEL_10:
    CFRelease(v9);
  }

LABEL_11:
  fjds_removeRequestIDFromInflightList(*(a1 + 48), *(a1 + 56));
  (*(*(a1 + 32) + 16))();
  if (cf)
  {
    CFRelease(cf);
  }
}

CFStringRef CMPhotoJPEGDecodeSessionCopyPoolDebugInfo(uint64_t a1)
{
  v2 = CFCopyDescription(*(a1 + 200));
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"CMPhotoJPEGDecodeSession %p pool info: %@", a1, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

double fjds_init(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void fjds_finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 136);
  if (v8)
  {
    if (CFArrayGetCount(v8) >= 1)
    {
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 136), v9);
        JPEGDeviceInterface_closeDriverConnection(ValueAtIndex);
        ++v9;
      }

      while (CFArrayGetCount(*(a1 + 136)) > v9);
    }

    CFRelease(*(a1 + 136));
  }

  v11 = *(a1 + 152);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(a1 + 200);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 208);
  if (v13)
  {
    CFRelease(v13);
  }

  if (*(a1 + 160))
  {
    while (1)
    {
      v14 = *(a1 + 168);
      if (!v14)
      {
        break;
      }

      v15 = *v14;
      *(a1 + 168) = v14[1];
      dispatch_release(v15);
      free(v14);
    }

    v16 = *(a1 + 184);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = *"";
    block[2] = __fjds_finalize_block_invoke;
    block[3] = &__block_descriptor_tmp_64;
    block[4] = a1;
    dispatch_sync(v16, block);
    IONotificationPortDestroy(*(a1 + 192));
    dispatch_release(*(a1 + 184));
  }
}

__CFString *fjds_copyDebugDesc(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<CMPhotoJPEGDecodeSession %p [%p]>{ JPEG Cores: %i, Scaler Cores: %i, }", a1, v4, a1[5], a1[6]);
  return Mutable;
}

uint64_t fjds_getRequestStatus(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    os_unfair_lock_lock((a1 + 40));
    if (CFSetContainsValue(*(a1 + 32), v2))
    {
      v2 = 0;
    }

    else
    {
      v2 = 4294951224;
    }

    os_unfair_lock_unlock((a1 + 40));
  }

  return v2;
}

uint64_t _getFourCCValue(const __CFDictionary *a1)
{
  v1 = 875704422;
  valuePtr = 875704422;
  Value = CFDictionaryGetValue(a1, @"OutputPixelFormat");
  if (Value)
  {
    v3 = Value;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
      return valuePtr;
    }
  }

  return v1;
}

const __CFNumber *_getIntValue_0(const __CFDictionary *a1, const void *a2)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(v3))
      {
        return CFBooleanGetValue(v3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

intptr_t _asyncDecodeCompleteCallback(uint64_t a1, int a2)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  *a1 = a2;
  v4 = *(a1 + 8);

  return dispatch_semaphore_signal(v4);
}

intptr_t fjds_enqueueDriverConnection(uint64_t a1, unsigned int a2)
{
  os_unfair_lock_lock((a1 + 144));
  CFArrayInsertValueAtIndex(*(a1 + 136), 0, a2);
  os_unfair_lock_unlock((a1 + 144));
  v4 = *(a1 + 152);

  return dispatch_semaphore_signal(v4);
}

void fjds_scheduleNextRequest(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock((a1 + 128));
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = 0;
LABEL_5:
    v4 = (a1 + 96 + 16 * v3);
    v5 = v2[1];
    *v4 = v5;
    if (!v5)
    {
      v4[1] = v4;
    }

    os_unfair_lock_unlock((a1 + 128));
    v6 = *v2;
    free(v2);
    v7 = *(a1 + 72);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = *"";
    v9[2] = __fjds_scheduleNextRequest_block_invoke;
    v9[3] = &unk_1E77A3408;
    v9[4] = v6;
    v9[5] = a1;
    dispatch_async(v7, v9);
    return;
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = 1;
    goto LABEL_5;
  }

  os_unfair_lock_unlock((a1 + 128));
  v8 = *(a1 + 56);

  dispatch_semaphore_signal(v8);
}

void __fjds_runRequestBlockAsynchronously_block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 40) + 56), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  v3 = *(v2 + 72);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = *"";
  v4[2] = __fjds_runRequestBlockAsynchronously_block_invoke_2;
  v4[3] = &unk_1E77A3390;
  v4[4] = *(a1 + 32);
  v4[5] = v2;
  dispatch_async(v3, v4);
}

void __fjds_runRequestBlockAsynchronously_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  dispatch_semaphore_signal(*(*(a1 + 40) + 56));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __fjds_runRequestBlockAsynchronously_block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  dispatch_semaphore_signal(*(*(a1 + 40) + 56));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __fjds_scheduleNextRequest_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  dispatch_semaphore_signal(*(*(a1 + 40) + 56));
  _Block_release(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void JPEGCompressionPluginClass_dispose(uint64_t a1)
{
  if (a1)
  {
    PluginInstance_Dispose_0(*(a1 + 152));
  }
}

void PluginInstance_Dispose_0(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 1) = 0;
    }

    CMPhotoUnifiedJPEGEncoderDestroy(*(a1 + 3));
    *(a1 + 3) = 0;
    v3 = *(a1 + 2);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  free(a1);
}

CMBlockBufferRef CMPhotoCreateBlockBufferWrappingIOSurface(const __CFAllocator *a1, IOSurfaceRef buffer, unint64_t a3, size_t a4, char a5, IOSurfaceLockOptions a6)
{
  v6 = buffer;
  blockBufferOut = 0;
  if (buffer)
  {
    AllocSize = IOSurfaceGetAllocSize(buffer);
    v13 = AllocSize - a3;
    if (AllocSize < a3)
    {
      CMPhotoCreateBlockBufferWrappingIOSurface_cold_2(&v26);
    }

    else
    {
      if (a4 + a3 <= AllocSize)
      {
        v6 = CFRetain(v6);
        v14 = IOSurfaceLock(v6, a6, 0);
        if (v14)
        {
          v19 = 0;
          v18 = 0;
          goto LABEL_25;
        }

        if (a4)
        {
          v13 = a4;
        }

        BaseAddress = IOSurfaceGetBaseAddress(v6);
        if (BaseAddress)
        {
          v16 = BaseAddress;
          v17 = malloc_type_calloc(1uLL, 0x10uLL, 0x102004034E03FFCuLL);
          v18 = v17;
          if (v17)
          {
            *v17 = v6;
            v17[2] = a6;
            *(v17 + 12) = a5;
            context.version = 0;
            context.info = v17;
            memset(&context.retain, 0, 24);
            context.allocate = _ioSurfaceDeallocator_allocate;
            context.reallocate = 0;
            context.deallocate = _ioSurfaceDeallocator_deallocateWithContext;
            context.preferredSize = 0;
            v19 = CFAllocatorCreate(0, &context);
            v20 = CMBlockBufferCreateWithMemoryBlock(a1, &v16[a3], v13, v19, 0, 0, v13, 0, &blockBufferOut);
            v21 = 0;
            v22 = 0;
            if (!v20)
            {
              goto LABEL_10;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = 0;
LABEL_22:
        if (v6)
        {
          IOSurfaceUnlock(v6, a6, 0);
        }

        goto LABEL_24;
      }

      CMPhotoCreateBlockBufferWrappingIOSurface_cold_1(&v26);
    }

    v6 = 0;
    v19 = 0;
    v18 = 0;
    v14 = v26;
    goto LABEL_25;
  }

  v19 = 0;
  v18 = 0;
LABEL_24:
  v14 = -16990;
LABEL_25:
  if (v14 && blockBufferOut)
  {
    CFRelease(blockBufferOut);
    blockBufferOut = 0;
  }

  v21 = v18;
  v22 = v6;
LABEL_10:
  free(v21);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return blockBufferOut;
}

void _ioSurfaceDeallocator_deallocateWithContext(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  IOSurfaceUnlock(*a2, *(a2 + 8), 0);
  if (*(a2 + 12))
  {
    IOSurfaceDecrementUseCount(v3);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  free(a2);
}

uint64_t _copyIOSurfaceBackingFromAttachmentBearer(uint64_t target, void *a2, void *a3, void *a4)
{
  v6 = target;
  if (a2)
  {
    target = CMGetAttachment(target, @"IOSurface", 0);
    if (target)
    {
      target = CFRetain(target);
    }

    *a2 = target;
  }

  if (a3)
  {
    valuePtr = 0;
    target = CMGetAttachment(v6, @"IOSurfaceDataOffset", 0);
    if (target)
    {
      target = CFNumberGetValue(target, kCFNumberIntType, &valuePtr);
      v8 = valuePtr;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  if (a4)
  {
    v10 = 0;
    target = CMGetAttachment(v6, @"IOSurfaceDataSize", 0);
    if (target)
    {
      target = CFNumberGetValue(target, kCFNumberIntType, &v10);
      v9 = v10;
    }

    else
    {
      v9 = 0;
    }

    *a4 = v9;
  }

  return target;
}

uint64_t CMPhotoCopyBackingIOSurfaceFromStorage(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  if (a3)
  {
    *a3 = 0;
    if (a2 != 2)
    {
      return 4294950303;
    }

    _copyIOSurfaceBackingFromAttachmentBearer(a1, a3, a4, a5);
    if (!*a3)
    {
      return 4294950303;
    }
  }

  else if (a2 == 2)
  {
    _copyIOSurfaceBackingFromAttachmentBearer(a1, 0, a4, a5);
  }

  return 0;
}

uint64_t VideoQualityControllerClass_setSessionProperties_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (*(v4 + 40))
  {
    FigCFDictionarySetFloat();
  }

  else
  {
    CMPhotoCFDictionarySetInt32(a2, @"InitialQPI", *(v4 + 16));
    if (*(a1 + 37))
    {
      CMPhotoCFDictionarySetInt32(a2, @"InitialQPP", *(v4 + 20) + *(v4 + 16));
    }
  }

  if (!*(v4 + 40) && (*(v4 + 32) == 1635148593 || *(a1 + 37)))
  {
    FigCFDictionarySetInt32();
  }

  v5 = *(v4 + 32);
  if (v5 == 1752589105)
  {
    if (!*(v4 + 28))
    {
      CMPhotoCFDictionarySetInt(a2, *MEMORY[0x1E6983828], 0);
    }

    v7 = *(v4 + 36);
    v8 = *(v4 + 48);
    if (v8 && CFDictionaryContainsKey(v8, @"QuantizationScalingMatrixPreset"))
    {
      CMPhotoCFDictionaryGetIntIfPresent();
    }

    if ((v7 - 1) > 3)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v5 != 1635148593)
  {
    return 0;
  }

  v6 = *(v4 + 48);
  if (!v6 || !CFDictionaryContainsKey(v6, @"QuantizationScalingMatrixPreset") || CMPhotoCFDictionaryGetIntIfPresent())
  {
LABEL_21:
    FigCFDictionarySetInt32();
    return 0;
  }

  VideoQualityControllerClass_setSessionProperties_cold_1(&v10);
  return v10;
}

void QualityController_dispose(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void CMPhotoCompressionSessionDestroySequenceGroupReaders(const __CFArray *a1)
{
  if (a1)
  {
    if (CFArrayGetCount(a1) >= 1)
    {
      v2 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v2);
        _destroySequenceGroupReader(ValueAtIndex);
        ++v2;
      }

      while (v2 < CFArrayGetCount(a1));
    }

    CFRelease(a1);
  }
}

void _destroySequenceGroupReader(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = *(v2 + 16);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(v2 + 24);
      if (v5)
      {
        CFRelease(v5);
      }

      if (*v2)
      {
        CFRelease(*v2);
      }

      free(v2);
    }

    for (i = 0; ; ++i)
    {
      Count = a1[1];
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a1[1], i);
      if (ValueAtIndex)
      {
        v9 = ValueAtIndex;
        v10 = ValueAtIndex[1];
        if (v10)
        {
          CFRelease(v10);
        }

        v11 = v9[2];
        if (v11)
        {
          CFRelease(v11);
        }

        v12 = v9[3];
        if (v12)
        {
          CFRelease(v12);
        }

        if (*v9)
        {
          CFRelease(*v9);
        }

        free(v9);
      }
    }

    for (j = 0; ; ++j)
    {
      v14 = a1[2];
      if (v14)
      {
        v14 = CFArrayGetCount(v14);
      }

      if (j >= v14)
      {
        break;
      }

      v15 = CFArrayGetValueAtIndex(a1[2], j);
      if (v15)
      {
        v16 = v15;
        v17 = v15[1];
        if (v17)
        {
          CFRelease(v17);
        }

        v18 = v16[2];
        if (v18)
        {
          CFRelease(v18);
        }

        v19 = v16[3];
        if (v19)
        {
          CFRelease(v19);
        }

        if (*v16)
        {
          CFRelease(*v16);
        }

        free(v16);
      }
    }

    v20 = a1[1];
    if (v20)
    {
      CFRelease(v20);
    }

    v21 = a1[2];
    if (v21)
    {
      CFRelease(v21);
    }

    free(a1);
  }
}

uint64_t CMPhotoCompressionSessionAddSequenceDescriptionToWriter(uint64_t *a1, uint64_t a2, const void *a3, CFDictionaryRef *a4)
{
  v42 = 0;
  v43 = -1;
  theDict = 0;
  v7 = CMPhotoPropertyListCopyWithMutableContainers(a1[1], a3, &theDict);
  if (v7)
  {
    goto LABEL_37;
  }

  idx = 0;
  if (!CMPhotoCFDictionaryGetLongIfPresent())
  {
    CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_5(&v38);
    goto LABEL_39;
  }

  v8 = a1[7];
  if (!v8 || idx >= CFArrayGetCount(v8))
  {
    CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_4(&v38);
LABEL_39:
    value_low = LODWORD(v38.value);
    goto LABEL_31;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1[7], idx);
  Value = CFDictionaryGetValue(a3, @"ImageList");
  if (!Value || (v11 = Value, v12 = CFGetTypeID(Value), v12 != CFArrayGetTypeID()))
  {
    CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_3(&v38);
    goto LABEL_39;
  }

  theArray = CFDictionaryGetValue(theDict, @"ImageList");
  v7 = CMPhotoHEIFFileWriterAddSequence(*a1, 0, &v43);
  if (v7 || (v7 = FigCFDictionarySetInt(), v7))
  {
LABEL_37:
    value_low = v7;
    goto LABEL_31;
  }

  v34 = a4;
  if (CFArrayGetCount(v11) < 1)
  {
LABEL_28:
    if (v34)
    {
      value_low = 0;
      *v34 = theDict;
      theDict = 0;
      goto LABEL_33;
    }

    value_low = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = CFArrayGetValueAtIndex(v11, v14);
      if (!v15 || (v16 = v15, v17 = CFGetTypeID(v15), v17 != CFDictionaryGetTypeID()))
      {
        CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_2(&v38);
        goto LABEL_39;
      }

      v18 = CFArrayGetValueAtIndex(theArray, v14);
      v39 = -1;
      if (!CMPhotoCFDictionaryGetLongIfPresent())
      {
        value_low = 4294950306;
        goto LABEL_31;
      }

      v7 = _moveCursorToPosition(*ValueAtIndex, v39);
      if (v7)
      {
        goto LABEL_37;
      }

      if (v13)
      {
        CFRelease(v13);
        v42 = 0;
      }

      v7 = _createSampleBufferAtCursor(*ValueAtIndex, &v42);
      if (v7)
      {
        goto LABEL_37;
      }

      v13 = v42;
      FormatDescription = CMSampleBufferGetFormatDescription(v42);
      MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
      memset(&v38, 0, sizeof(v38));
      CMSampleBufferGetPresentationTimeStamp(&v38, v13);
      v37 = 0;
      v7 = CMPhotoHEIFFileWriterAddImageToSequence(*a1, 0, 0, v43, MediaSubType, FormatDescription, &v37);
      if (v7)
      {
        goto LABEL_37;
      }

      v7 = CMPhotoHEIFFileWriterAddSampleBufferToImage(*a1, 0, v37, v13);
      if (v7)
      {
        goto LABEL_37;
      }

      v7 = FigCFDictionarySetInt();
      if (v7)
      {
        goto LABEL_37;
      }

      v21 = CFDictionaryGetValue(v16, @"ThumbnailImage");
      v22 = v21;
      if (v21)
      {
        v23 = CFGetTypeID(v21);
        if (v23 != CFArrayGetTypeID())
        {
          v33 = 1637;
          goto LABEL_43;
        }
      }

      v24 = CFDictionaryGetValue(v18, @"ThumbnailImage");
      v25 = ValueAtIndex[1];
      v36 = v38;
      v7 = _addReferenceSequencesDescriptionToWriter(a1, 1, v22, v25, &v36.value, v37, v24);
      if (v7)
      {
        goto LABEL_37;
      }

      v26 = CFDictionaryGetValue(v16, @"Auxiliary");
      v27 = v26;
      if (v26)
      {
        v28 = CFGetTypeID(v26);
        if (v28 != CFArrayGetTypeID())
        {
          break;
        }
      }

      v29 = CFDictionaryGetValue(v18, @"Auxiliary");
      v30 = ValueAtIndex[2];
      v36 = v38;
      v7 = _addReferenceSequencesDescriptionToWriter(a1, 2, v27, v30, &v36.value, v37, v29);
      if (v7)
      {
        goto LABEL_37;
      }

      if (++v14 >= CFArrayGetCount(v11))
      {
        goto LABEL_28;
      }
    }

    v33 = 1656;
LABEL_43:
    CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_1(v33, &v36);
    value_low = LODWORD(v36.value);
  }

LABEL_31:
  if (theDict)
  {
    CFRelease(theDict);
  }

LABEL_33:
  if (v42)
  {
    CFRelease(v42);
  }

  return value_low;
}

uint64_t _moveCursorToPosition(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0)
  {
    _moveCursorToPosition_cold_1(&v10);
    return v10;
  }

  else
  {
    v4 = a2 - v2;
    if (a2 == v2)
    {
      return 0;
    }

    else
    {
      v9 = 0;
      v7 = *(a1 + 16);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 176);
      if (v8)
      {
        result = v8(v7, v4, &v9);
        if (!result)
        {
          if (v9 == v4)
          {
            result = 0;
            *(a1 + 32) = a2;
          }

          else
          {
            return 4294950194;
          }
        }
      }

      else
      {
        return 4294954514;
      }
    }
  }

  return result;
}

uint64_t _createSampleBufferAtCursor(uint64_t a1, CMSampleBufferRef *a2)
{
  sbuf = 0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    return 4294954514;
  }

  result = v5(v3, v4, 1, 1, 1, 0, 2, 0, 0, 0, 0, &sbuf);
  v7 = sbuf;
  if (!result)
  {
    NumSamples = CMSampleBufferGetNumSamples(sbuf);
    v7 = sbuf;
    if (NumSamples == 1)
    {
      result = 0;
      *a2 = sbuf;
      return result;
    }

    result = 4294950304;
  }

  if (v7)
  {
    v9 = result;
    CFRelease(v7);
    return v9;
  }

  return result;
}

uint64_t _addReferenceSequencesDescriptionToWriter(uint64_t *a1, int a2, CFArrayRef theArray, const __CFArray *a4, __int128 *a5, uint64_t a6, const __CFArray *a7)
{
  v11 = 0;
  v12 = 0;
  sbuf = 0;
  while (1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    else
    {
      Count = 0;
    }

    if (v12 >= Count)
    {
      v24 = 0;
      goto LABEL_25;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
    if (!ValueAtIndex || (v15 = CFGetTypeID(ValueAtIndex), v15 != CFDictionaryGetTypeID()))
    {
      _addReferenceSequencesDescriptionToWriter_cold_3(&v29);
      goto LABEL_24;
    }

    v16 = CFArrayGetValueAtIndex(a7, v12);
    idx = -1;
    if (!CMPhotoCFDictionaryGetLongIfPresent())
    {
      break;
    }

    if (!a4 || (v17 = idx, idx < 0) || v17 >= CFArrayGetCount(a4))
    {
      _addReferenceSequencesDescriptionToWriter_cold_2(&v29);
LABEL_24:
      v24 = v29;
      goto LABEL_25;
    }

    v18 = a7;
    v19 = CFArrayGetValueAtIndex(a4, idx);
    v31 = 0;
    v29 = *a5;
    v30 = *(a5 + 2);
    v20 = _moveCursorToPresentationTime(v19, &v29, &v31);
    if (v20)
    {
      goto LABEL_30;
    }

    if (!v31)
    {
      _addReferenceSequencesDescriptionToWriter_cold_1(&v29);
      goto LABEL_24;
    }

    if (v11)
    {
      CFRelease(v11);
      sbuf = 0;
    }

    v20 = _createSampleBufferAtCursor(v19, &sbuf);
    v11 = sbuf;
    if (v20)
    {
      goto LABEL_30;
    }

    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
    *&v29 = 0;
    v23 = *a1;
    if (a2 == 1)
    {
      v20 = CMPhotoHEIFFileWriterAddThumbnailToImage(v23, 0, a6, MediaSubType, FormatDescription, &v29);
      if (v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = CMPhotoHEIFFileWriterAddAuxiliaryImageToImage(v23, 0, a6, MediaSubType, FormatDescription, &v29);
      if (v20)
      {
        goto LABEL_30;
      }
    }

    v20 = CMPhotoHEIFFileWriterAddSampleBufferToImage(*a1, 0, v29, v11);
    if (v20)
    {
LABEL_30:
      v24 = v20;
      goto LABEL_25;
    }

    CFDictionaryRemoveValue(v16, @"ImageHandle");
    ++v12;
    a7 = v18;
  }

  v24 = 4294950306;
LABEL_25:
  if (v11)
  {
    CFRelease(v11);
  }

  return v24;
}

size_t _addImageToSequence(uint64_t a1, int a2, __int128 *a3, CFDictionaryRef theDict, opaqueCMSampleBuffer *a5, uint64_t a6)
{
  if (*(a1 + 104))
  {
    _addImageToSequence_cold_1(&block);
    return block;
  }

  if (theDict)
  {
    v12 = CFDictionaryContainsKey(theDict, @"IncludeAlphaAuxiliaryImageWithOptions") == 0;
  }

  else
  {
    v12 = 1;
  }

  v23[0] = 0;
  v23[1] = 0;
  SourceDimensions = CMPhotoGetSourceDimensions(a5, theDict, v23);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  SourceDimensions = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  v14 = MEMORY[0x1E695FF58];
  v15 = *MEMORY[0x1E695FF58];
  if (!v12)
  {
    if (v15 == 1)
    {
      kdebug_trace();
    }

    v21 = *a3;
    v22 = *(a3 + 2);
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v35[0] = 0;
    v35[1] = 0;
    v16 = CMPhotoGetSourceDimensions(a5, theDict, v35);
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      *(a1 + 224) = FigSemaphoreCreate();
      *(a1 + 232) = -1;
      v17 = dispatch_queue_create("com.apple.coremedia.asyncauxiliary", 0);
      v18 = v17;
      if (v17)
      {
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 3221225472;
        v27 = ___compressMainWithAuxiliaryAsync_block_invoke;
        v28 = &unk_1E77A3470;
        v29 = &v36;
        v30 = theDict;
        v31 = a5;
        v32 = a1;
        v33 = a1 + 88;
        v34 = 0;
        dispatch_async(v17, &block);
        if (*v14 == 1)
        {
          kdebug_trace();
        }

        v24 = v21;
        v25 = v22;
        v16 = _compressX(a1, theDict, a5, 0, 0, 0, 1, a2, &v24, a6);
        if (*v14 != 1)
        {
          goto LABEL_19;
        }

        kdebug_trace();
      }

      else
      {
        v16 = 4294950194;
      }
    }

    if (*v14 == 1)
    {
      kdebug_trace();
    }

    if (!v18)
    {
      v19 = 1;
      goto LABEL_20;
    }

LABEL_19:
    dispatch_sync(v18, &__block_literal_global_20);
    v19 = 0;
LABEL_20:
    FigSemaphoreDestroy();
    if (*v14 == 1)
    {
      kdebug_trace();
    }

    if ((v19 & 1) == 0)
    {
      dispatch_release(v18);
    }

    if (!v16)
    {
      if (*(v37 + 6))
      {
        v16 = 4294951824;
      }

      else
      {
        v16 = 0;
      }
    }

    _Block_object_dispose(&v36, 8);
    if (*v14 == 1)
    {
      kdebug_trace();
    }

    return v16;
  }

  if (v15 == 1)
  {
    kdebug_trace();
  }

  block = *a3;
  v27 = *(a3 + 2);
  v16 = _compressX(a1, theDict, a5, 0, 0, 0, 1, a2, &block, a6);
  if (!v16 && *v14 == 1)
  {
    kdebug_trace();
    return 0;
  }

  return v16;
}

uint64_t _endImageSequence(uint64_t a1)
{
  if (*(a1 + 104))
  {
    fig_log_get_emitter();
    v2 = FigSignalErrorAtGM();
  }

  else
  {
    v2 = 0;
  }

  v3 = CMPhotoCompressionSessionDisposeCompressionPluginsForSequenceAsyncEncoding(a1);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t _hasTrackReferenceOfType(const __CFDictionary *a1, const void *a2, int a3, char *a4)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    goto LABEL_9;
  }

  Count = CFArrayGetCount(Value);
  v8 = Count;
  if (Count)
  {
    _hasTrackReferenceOfType_cold_1(&v12);
    return v12;
  }

  if (Count >= 1)
  {
    v9 = 0;
    while (FigCFArrayGetInt32AtIndex())
    {
      if (!a3)
      {
        v10 = 1;
        goto LABEL_10;
      }

      v9 += 2;
      if (v9 >= v8)
      {
        goto LABEL_9;
      }
    }

    return 4294950304;
  }

  else
  {
LABEL_9:
    v10 = 0;
LABEL_10:
    result = 0;
    if (a4)
    {
      *a4 = v10;
    }
  }

  return result;
}

uint64_t _createReferenceSequencesDescription(const __CFAllocator *a1, CFArrayRef theArray, __int128 *a3, __CFArray **a4)
{
  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E695E9E8];
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v9 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
    v19 = 0;
    v17 = *a3;
    v18 = *(a3 + 2);
    v13 = _moveCursorToPresentationTime(ValueAtIndex, &v17, &v19);
    if (v13)
    {
      v15 = v13;
      Mutable = 0;
      goto LABEL_16;
    }

    if (v19)
    {
      Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], v10);
      if (!Mutable || (FigCFDictionarySetInt(), !v8) && (v8 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0])) == 0)
      {
        v15 = 4294950305;
        goto LABEL_16;
      }

      CFArrayAppendValue(v8, Mutable);
      CFRelease(Mutable);
    }

    ++v9;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (a4)
  {
    v15 = 0;
    *a4 = v8;
    return v15;
  }

  Mutable = 0;
  v15 = 0;
LABEL_16:
  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

size_t _encodePixelBufferForIndex(unsigned __int8 *cf, int a2, uint64_t a3, const __CFDictionary *a4, void *a5, unsigned int a6, char a7, uint64_t a8, unsigned int *a9, void *a10)
{
  v141 = *MEMORY[0x1E69E9840];
  v106 = a8;
  v139 = a8;
  v15 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v16 = a10;
  allocator = CFGetAllocator(cf);
  v17 = CFGetTypeID(a5);
  TypeID = CMFormatDescriptionGetTypeID();
  v137 = 0;
  v138 = 0;
  v135 = 0;
  v136 = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v126 = -1;
  v125 = 0;
  v124 = 0uLL;
  v123 = 0;
  memset(__src, 0, 360);
  v105 = v17 == TypeID;
  if (v17 == TypeID)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(a5);
    CleanAperture = CMVideoFormatDescriptionGetCleanAperture(a5, 1u);
    x = CleanAperture.origin.x;
    y = CleanAperture.origin.y;
    width = CleanAperture.size.width;
    height = CleanAperture.size.height;
    v27 = 0;
  }

  else
  {
    v132 = a5;
    MediaSubType = CVPixelBufferGetPixelFormatType(a5);
    x = CMPhotoGetPixelBufferCLAPAsRect(a5);
    y = v21;
    width = v23;
    height = v25;
    v27 = a5;
    a5 = 0;
  }

  v127 = x;
  v128 = y;
  v129 = width;
  v130 = height;
  v131 = MediaSubType;
  CVPixelBufferRetain(v27);
  if (!CMPhotoCompressionSessionFormatIsSupportedForImageType(MediaSubType, a2, a6))
  {
    _encodePixelBufferForIndex_cold_10(__dst);
    v83 = 0;
    v78 = 0;
    v52 = 0;
    v56 = __dst[0].u32[0];
    goto LABEL_184;
  }

  v100 = a7;
  if (a2 && v17 != TypeID)
  {
    SequenceHandleForImage = CMPhotoHEIFFileWriterGetSequenceHandleForImage(*(cf + 11), a3, 0, &v139);
    if (SequenceHandleForImage)
    {
LABEL_210:
      v56 = SequenceHandleForImage;
      v83 = 0;
      v78 = 0;
LABEL_244:
      v52 = 0;
      goto LABEL_184;
    }

    v106 = v139;
    x = v127;
    y = v128;
    width = v129;
    height = v130;
  }

  v110 = v106 != -1;
  SequenceHandleForImage = CMPhotoCompressionSessionParseOptions(cf, a4, a2, v110, __src, x, y, width, height);
  if (SequenceHandleForImage)
  {
    goto LABEL_210;
  }

  memcpy(__dst, __src, 0x168uLL);
  v29 = CMPhotoCompressionSessionVerifyOptions(__dst, a2, v105, MediaSubType, v127, v128, v129, v130);
  if (v29 || (v29 = CMPhotoCompressionSessionHandleOrientationAndTransform(cf, __src, v105, &v123, &v127, MediaSubType, &v132, v30), v29))
  {
    v56 = v29;
    v78 = 0;
    v52 = 0;
    v16 = a10;
    v83 = 0;
    goto LABEL_208;
  }

  v101 = (HIBYTE(__src[15]) | LOBYTE(__src[16])) != 0;
  v16 = a10;
  if (v17 != TypeID && !LOBYTE(__src[0]) && (DerivedCodecForImage = CMPhotoCompressionSessionGetDerivedCodecForImage(cf + 11, a2, v139, a3, SDWORD1(__src[0]), MediaSubType, __src + 1), DerivedCodecForImage) || (DerivedCodecForImage = CMPhotoGetDestinationPixelFormatFromOptions(a4, SDWORD1(__src[0]), MediaSubType, &v131), DerivedCodecForImage) || (DerivedCodecForImage = CMPhotoCompressionSessionCreatePluginOptions(__src, allocator, cf[64], cf[65], v110, a2, v131, &v138), DerivedCodecForImage))
  {
    v56 = DerivedCodecForImage;
    v83 = 0;
    v52 = 0;
    v78 = v101;
LABEL_208:
    v15 = MEMORY[0x1E695FF58];
    goto LABEL_184;
  }

  if (a2 != 2)
  {
LABEL_28:
    v15 = MEMORY[0x1E695FF58];
    goto LABEL_29;
  }

  v120 = 0;
  FigCFDictionaryGetIntIfPresent();
  if (*(&__src[18] + 1))
  {
    _encodePixelBufferForIndex_cold_1(__dst);
    v56 = __dst[0].u32[0];
    v78 = v101;
    v15 = MEMORY[0x1E695FF58];
LABEL_243:
    v83 = 0;
    goto LABEL_244;
  }

  v15 = MEMORY[0x1E695FF58];
  if (v17 != TypeID)
  {
    __dst[0].i64[0] = 0;
    BitDepth = CMPhotoCompressionSessionGetBitDepth(v131, SDWORD1(__src[0]), 0);
    if (BitDepth)
    {
      v55 = BitDepth;
      if (*v15 == 1)
      {
        kdebug_trace();
      }

      v56 = CMPhotoCreateCompressionCompatiblePixelBufferWithAuxType(v132, *(cf + 3), a6, v55, *(&__src[18] + 1), 0, __dst, &v134);
      if (*v15 == 1)
      {
        kdebug_trace();
      }

      if (v56)
      {
        goto LABEL_242;
      }

      if (v132)
      {
        CFRelease(v132);
      }

      v132 = __dst[0].i64[0];
      LODWORD(MediaSubType) = CVPixelBufferGetPixelFormatType(__dst[0].i64[0]);
      v131 = MediaSubType;
      if (a6 != 4)
      {
        v88 = CMPhotoCompressionSessionCreateAuxTypeProperties(a6, v134, v132, &v136, &v135);
        if (v88)
        {
          v56 = v88;
LABEL_242:
          v78 = v101;
          goto LABEL_243;
        }

        goto LABEL_29;
      }

      if (a4)
      {
        Value = CFDictionaryGetValue(a4, @"AuxiliaryImageCustomTypeURN");
        if (Value)
        {
          v58 = Value;
          v59 = CFGetTypeID(Value);
          if (v59 == CFStringGetTypeID())
          {
            v136 = CFRetain(v58);
            goto LABEL_28;
          }

          v92 = 378;
          v15 = MEMORY[0x1E695FF58];
        }

        else
        {
          v92 = 378;
        }
      }

      else
      {
        v92 = 376;
      }
    }

    else
    {
      v92 = 352;
    }

    CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_1(v92, v111);
    v56 = LODWORD(v111[0]);
    goto LABEL_242;
  }

  if (MediaSubType > 1380411456)
  {
    v32 = a6;
    if (MediaSubType <= 1717856626)
    {
      if (MediaSubType > 1651926375)
      {
        if (MediaSubType == 1651926376)
        {
          goto LABEL_197;
        }

        v33 = 1717855600;
      }

      else
      {
        if (MediaSubType == 1380411457)
        {
          goto LABEL_197;
        }

        v33 = 1647719528;
      }
    }

    else if (MediaSubType <= 1751411058)
    {
      if (MediaSubType == 1717856627)
      {
        goto LABEL_197;
      }

      v33 = 1751410032;
    }

    else
    {
      if (MediaSubType == 1751411059 || MediaSubType == 1932996149)
      {
        goto LABEL_197;
      }

      v33 = 1751527984;
    }

LABEL_196:
    if (MediaSubType != v33)
    {
      goto LABEL_198;
    }

    goto LABEL_197;
  }

  v32 = a6;
  if (MediaSubType > 1278226735)
  {
    if ((MediaSubType - 1278226736) <= 6 && ((1 << (MediaSubType - 48)) & 0x45) != 0)
    {
      goto LABEL_197;
    }

    v33 = 1380410945;
    goto LABEL_196;
  }

  if (((MediaSubType - 1278226488) > 0x30 || ((1 << (MediaSubType - 56)) & 0x1400000000001) == 0) && MediaSubType != 825306677)
  {
    v33 = 825437747;
    goto LABEL_196;
  }

LABEL_197:
  LODWORD(MediaSubType) = 1278226488;
  v131 = 1278226488;
LABEL_198:
  if (v32 == 4)
  {
    if (!a4)
    {
      _encodePixelBufferForIndex_cold_9(__dst);
LABEL_238:
      v56 = __dst[0].u32[0];
      goto LABEL_242;
    }

    v89 = CFDictionaryGetValue(a4, @"AuxiliaryImageCustomTypeURN");
    if (!v89 || (v90 = v89, v91 = CFGetTypeID(v89), v84 = v91 == CFStringGetTypeID(), v15 = MEMORY[0x1E695FF58], !v84))
    {
      _encodePixelBufferForIndex_cold_8(__dst);
      goto LABEL_238;
    }

    v136 = CFRetain(v90);
  }

LABEL_29:
  v119 = v131;
  v34 = CMPhotoEncoderSupportsPixelFormat(v131, SDWORD1(__src[0]), SHIDWORD(__src[14]), BYTE13(__src[15]), &v119);
  if (!v119)
  {
    _encodePixelBufferForIndex_cold_7(__dst);
    v83 = 0;
    v52 = 0;
    v56 = __dst[0].u32[0];
    goto LABEL_227;
  }

  if (v34)
  {
    v35 = MediaSubType != v131;
  }

  else
  {
    v35 = 1;
  }

  if (MediaSubType != v131 && !v34)
  {
    _encodePixelBufferForIndex_cold_6(__dst);
    v83 = 0;
    v52 = 0;
    v56 = __dst[0].u32[0];
    goto LABEL_205;
  }

  UpdatedQualityParameters = CMPhotoCompressionSessionDetermineEncodeDimensionsAndTiling((cf + 88), a2, a3, a4, a6, *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), v136, BYTE8(__src[4]), BYTE9(__src[4]), v110, v105, SDWORD1(__src[0]), v131, &__src[4] + 1, &v124, &__src[5], &v125);
  if (UpdatedQualityParameters)
  {
    goto LABEL_204;
  }

  v117 = *MEMORY[0x1E695F060];
  v118 = v117;
  __dst[0].i64[0] = 0;
  UpdatedQualityParameters = CMPhotoCompressionSessionCreatePixelBufferForEncoding(cf, v132, v125, v35, v105, __src, v119, v37, v124, *(&v124 + 1), &v118, &v117, v138, __dst);
  if (UpdatedQualityParameters)
  {
    goto LABEL_204;
  }

  if (v132)
  {
    CFRelease(v132);
  }

  v132 = __dst[0].i64[0];
  if (v138)
  {
    if (BYTE8(__src[0]))
    {
      CFDictionaryGetValue(v138, @"QualityControllerType");
      v38 = CFDictionaryGetValue(v138, @"QualityControllerParameters");
      if (CMPhotoQualityControllerNeedsImageAnalysis())
      {
        __dst[0].i64[0] = 0;
        UpdatedQualityParameters = CMPhotoAnalyzeImageAndCreateUpdatedQualityParameters(allocator, v132, v38, __dst, *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1));
        if (!UpdatedQualityParameters)
        {
          if (__dst[0].i64[0])
          {
            CFDictionarySetValue(v138, @"QualityControllerParameters", __dst[0].i64[0]);
            if (__dst[0].i64[0])
            {
              CFRelease(__dst[0].i64[0]);
            }
          }

          goto LABEL_46;
        }

LABEL_204:
        v56 = UpdatedQualityParameters;
        v83 = 0;
        v52 = 0;
LABEL_205:
        v15 = MEMORY[0x1E695FF58];
        goto LABEL_227;
      }
    }
  }

LABEL_46:
  if (a2)
  {
    if (v106 != -1 && (a9[3] & 1) == 0)
    {
      UpdatedQualityParameters = CMPhotoHEIFFileWriterGetTimeStampForImage(*(cf + 11));
      if (UpdatedQualityParameters)
      {
        goto LABEL_204;
      }
    }
  }

  v15 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v116 = 0;
  v115 = 0;
  v113[0] = 0;
  *(v113 + 3) = 0;
  v39 = DWORD1(__src[0]);
  v98 = *(a9 + 4);
  v97 = *a9;
  *v140 = *(a9 + 5);
  *&v140[15] = a9[5];
  v93 = v119;
  v94 = HIDWORD(__src[17]);
  v95 = __src[18];
  v114 = v124;
  v96 = *&__src[9] * *(&__src[8] + 1);
  if (*&__src[9] * *(&__src[8] + 1) == 1 && DWORD1(__src[0]) == 1936484717)
  {
    CMPhotoCFDictionarySetBoolean(v138, @"SyncEncode", 1);
  }

  v104 = TypeID;
  v99 = v17;
  if (v17 != TypeID)
  {
    FormatDescriptionForHEIFWriter = CMPhotoCreateFormatDescriptionForHEIFWriter();
    if (FormatDescriptionForHEIFWriter)
    {
      v56 = FormatDescriptionForHEIFWriter;
      v83 = 0;
      v52 = 0;
    }

    else
    {
      v52 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040F6617ADFuLL);
      if (v52)
      {
        if (BYTE2(__src[2]) || (Extensions = CMFormatDescriptionGetExtensions(v137)) == 0)
        {
          v50 = a2;
          v51 = cf;
          goto LABEL_66;
        }

        goto LABEL_85;
      }

      v83 = 0;
      v56 = 4294950305;
    }

LABEL_227:
    v78 = v101;
    goto LABEL_184;
  }

  if (v123)
  {
    v40 = v39;
    __dst[0].i64[0] = 0;
    v41 = *MEMORY[0x1E695E480];
    v42 = CMFormatDescriptionGetMediaSubType(a5);
    v43 = v129;
    v44 = v130;
    v45 = CMFormatDescriptionGetExtensions(a5);
    v46 = CMVideoFormatDescriptionCreate(v41, v42, v43, v44, v45, __dst);
    if (!v46)
    {
      v47 = __dst[0].i64[0];
      v137 = __dst[0].i64[0];
      v48 = TypeID;
      v39 = v40;
      if (a2)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    v56 = v46;
    v83 = 0;
    v52 = 0;
    v17 = v99;
    v16 = a10;
    goto LABEL_205;
  }

  v48 = TypeID;
  if (a5)
  {
    v47 = CFRetain(a5);
  }

  else
  {
    v47 = 0;
  }

  v137 = v47;
  if (!a2)
  {
LABEL_59:
    v143 = CMVideoFormatDescriptionGetCleanAperture(v47, 1u);
    v49 = v143.size.height;
    *(cf + 11) = vcvtq_u64_f64(vrndaq_f64(v143.size));
  }

LABEL_60:
  TypeID = v48;
  if (BYTE2(__src[2]))
  {
    v50 = a2;
    v51 = cf;
    v52 = 0;
LABEL_66:
    v102 = 0;
    goto LABEL_86;
  }

  Extensions = CMFormatDescriptionGetExtensions(a5);
  v52 = 0;
  if (!Extensions)
  {
    v50 = a2;
    v51 = cf;
    v102 = 0;
    goto LABEL_86;
  }

LABEL_85:
  v50 = a2;
  v51 = cf;
  v102 = CFRetain(Extensions);
LABEL_86:
  v61 = v138;
  v62 = *(&__src[6] + 1);
  v63 = *&__src[7];
  v111[0] = 0;
  Size = CMPhotoCFNumberCreateSize(8 * v139 + v50);
  v65 = *(v51 + 7);
  if (!v65)
  {
    v108 = 0;
    v56 = 4294950303;
    v17 = v99;
    goto LABEL_231;
  }

  if (!CFDictionaryContainsKey(v65, Size))
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v68 = *(v51 + 3);
    v69 = *(v51 + 4);
    v70 = *(v51 + 6);
    __dst[0].i64[0] = __PAIR64__(v39, v93);
    __dst[0].i8[8] = v110;
    *(&__dst[0].i64[1] + 1) = (v97 << 24) | (v98 << 56);
    *(&__dst[1] + 1) = *v140;
    __dst[2].i64[0] = __PAIR64__(v94, *&v140[15]);
    __dst[2].i8[8] = v95;
    *(&__dst[2].i16[4] + 1) = v115;
    __dst[2].i8[11] = v116;
    __dst[2].i32[3] = v50;
    __dst[3] = v114;
    __dst[4].i64[0] = a6;
    __dst[4].i64[1] = v96;
    __dst[5].i8[0] = v105;
    __dst[5].i32[1] = *(v113 + 3);
    *(__dst[5].i32 + 1) = v113[0];
    v71 = CMPhotoCompressionPluginCreate(allocator, v68, v69, v70, __dst[0].i32, v61, _compressionPluginSequenceFrameEncodeCallback, 0, v111);
    if (!v71)
    {
      v108 = v111[0];
      v15 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
        if (*v15 == 1)
        {
          kdebug_trace();
        }
      }

      v72 = CMPhotoCompressionPluginPrepare(v108);
      TypeID = v104;
      if (v72)
      {
        v56 = v72;
        v108 = 0;
        v17 = v99;
        goto LABEL_91;
      }

      v17 = v99;
      cf = v51;
      if (*v15 == 1)
      {
        kdebug_trace();
      }

      v111[0] = 0;
      FigCFDictionarySetValue();
      v56 = 0;
      goto LABEL_102;
    }

    v56 = v71;
    v108 = 0;
    v17 = v99;
    TypeID = v104;
LABEL_231:
    v15 = MEMORY[0x1E695FF58];
    goto LABEL_91;
  }

  v66 = CFDictionaryGetValue(*(v51 + 7), Size);
  LOBYTE(v120) = 0;
  __dst[0].i64[0] = __PAIR64__(v39, v93);
  __dst[0].i8[8] = v110;
  *(&__dst[0].i64[1] + 1) = (v97 << 24) | (v98 << 56);
  *(&__dst[1] + 1) = *v140;
  __dst[2].i64[0] = __PAIR64__(v94, *&v140[15]);
  __dst[2].i8[8] = v95;
  *(&__dst[2].i16[4] + 1) = v115;
  __dst[2].i8[11] = v116;
  __dst[2].i32[3] = v50;
  __dst[3] = v114;
  __dst[4].i64[0] = a6;
  __dst[4].i64[1] = v96;
  __dst[5].i8[0] = v105;
  __dst[5].i32[1] = *(v113 + 3);
  *(__dst[5].i32 + 1) = v113[0];
  v108 = v66;
  CanBeReused = CMPhotoCompressionPluginCanBeReused(v66, __dst, v62, v63, v61, v102, &v120);
  if (CanBeReused)
  {
    v56 = CanBeReused;
    v17 = v99;
    TypeID = v104;
    v15 = MEMORY[0x1E695FF58];
  }

  else
  {
    v17 = v99;
    TypeID = v104;
    v15 = MEMORY[0x1E695FF58];
    if (v120)
    {
      v56 = 0;
LABEL_91:
      cf = v51;
      goto LABEL_102;
    }

    _encodePixelBufferForIndex_cold_3(__dst);
    v56 = __dst[0].u32[0];
  }

  cf = v51;
  v108 = 0;
LABEL_102:
  CMPhotoCompressionPluginDispose(v111[0]);
  if (Size)
  {
    CFRelease(Size);
  }

  if (v56)
  {
    v16 = a10;
    goto LABEL_216;
  }

  v16 = a10;
  if (!v50 && v17 == TypeID && HIBYTE(__src[15]) | LOBYTE(__src[16]))
  {
    *(cf + 29) = 0;
    FigSemaphoreSignal();
    v101 = 0;
  }

  if (v17 == TypeID)
  {
    v56 = 0;
    goto LABEL_216;
  }

  if (v50)
  {
    OrientationTransformsForImage = CMPhotoHEIFFileWriterGetOrientationTransformsForImage(*(cf + 11), a3, &__src[9] + 8, &__src[9] + 3, 0, &__src[10]);
    if (OrientationTransformsForImage)
    {
      goto LABEL_209;
    }
  }

  if (*v15 == 1)
  {
    kdebug_trace();
  }

  *v111 = *(&__src[9] + 8);
  LODWORD(v112) = DWORD2(__src[10]);
  __dst[2] = __src[7];
  __dst[3] = __src[8];
  __dst[4].i64[0] = *&__src[9];
  __dst[0] = __src[5];
  __dst[1] = __src[6];
  OrientationTransformsForImage = CMPhotoCompressionSessionAddHEIFItemIfNeeded(cf, v50, DWORD1(__src[0]), v137, a3, v135, v136, 0, v111, SBYTE11(__src[4]), *&__src[20], 0, v139, v119, __dst, v110, DWORD1(__src[2]) == 3, SBYTE10(__src[17]), &v126);
  if (OrientationTransformsForImage)
  {
LABEL_209:
    v56 = OrientationTransformsForImage;
LABEL_216:
    v78 = v101;
LABEL_218:
    v83 = v102;
    goto LABEL_184;
  }

  FrameCompleted = CMPhotoHEIFFileWriterImageSequenceFirstFrameCompleted(*(cf + 11), 0, v139);
  if (!v50 && v106 != -1 && (a9[3] & 1) != 0)
  {
    v75 = *(cf + 11);
    __dst[0] = *a9;
    __dst[1].i64[0] = *(a9 + 2);
    v76 = CMPhotoHEIFFileWriterSetTimeStampForImage(v75, v126, __dst);
    if (v76)
    {
      v56 = v76;
      TypeID = v104;
      goto LABEL_216;
    }
  }

  if (v50)
  {
    v78 = v101;
    v77 = v100;
  }

  else
  {
    v77 = v100;
    if (HIBYTE(__src[15]) | LOBYTE(__src[16]))
    {
      *(cf + 29) = v126;
      v78 = v101;
      if (v106 == -1 || FrameCompleted)
      {
        FigSemaphoreSignal();
        v78 = 0;
      }
    }

    else
    {
      v78 = v101;
    }
  }

  if (*v15 == 1)
  {
    kdebug_trace();
  }

  *v52 = cf;
  v79 = v126;
  *(v52 + 1) = v126;
  v52[44] = BYTE1(__src[5]);
  v52[45] = v77;
  *(v52 + 12) = 0;
  v52[16] = v110;
  if ((a9[3] & 1) == 0)
  {
    _encodePixelBufferForIndex_cold_5(__dst);
    v56 = __dst[0].u32[0];
    TypeID = v104;
    goto LABEL_218;
  }

  v80 = *a9;
  *(v52 + 36) = *(a9 + 2);
  *(v52 + 20) = v80;
  v81 = v132;
  *(v52 + 7) = v132;
  if (*v15 == 1)
  {
    kdebug_trace();
    v81 = v132;
    v79 = v126;
  }

  __dst[0] = vcvtq_u64_f64(vrndaq_f64(__src[11]));
  __dst[1] = vcvtq_u64_f64(vrndaq_f64(__src[12]));
  *v111 = 0u;
  v112 = 0u;
  v82 = CMPhotoCompressionPluginEncode(v108, v81, v79, __dst, v111, 0, 0, v52);
  v83 = v102;
  if (v82)
  {
    v56 = v82;
    TypeID = v104;
    goto LABEL_184;
  }

  if (*v15 == 1)
  {
    kdebug_trace();
  }

  v132 = 0;
  LOBYTE(v111[0]) = 1;
  CMPhotoCFDictionaryGetBooleanIfPresent();
  v84 = !FrameCompleted || LOBYTE(v111[0]) == 0;
  v85 = !v84;
  LOBYTE(v111[0]) = v85;
  TypeID = v104;
  if (!v84)
  {
    goto LABEL_144;
  }

  v86 = CMPhotoCompressionPluginCompleteEncodes(v108);
  if (v86)
  {
    v56 = v86;
    goto LABEL_244;
  }

  if (cf[104])
  {
    _encodePixelBufferForIndex_cold_4(__dst);
    v56 = __dst[0].u32[0];
    goto LABEL_244;
  }

LABEL_144:
  if (*v15 != 1)
  {
    v56 = 0;
    v52 = 0;
    goto LABEL_146;
  }

  _encodePixelBufferForIndex_cold_11();
  v52 = 0;
  v56 = 0;
LABEL_184:
  if (*v15 == 1)
  {
    kdebug_trace();
  }

LABEL_146:
  if (v16 && !v56)
  {
    *v16 = v126;
  }

  if (v17 != TypeID)
  {
    if (v56 != -15474)
    {
      if (!v56)
      {
        goto LABEL_156;
      }

      cf[104] = 1;
    }

    if (v132)
    {
      CFRelease(v132);
    }

    free(v52);
  }

LABEL_156:
  if (v78)
  {
    FigSemaphoreSignal();
  }

  if (v83)
  {
    CFRelease(v83);
  }

  if (v138)
  {
    CFRelease(v138);
  }

  CMPhotoSurfacePoolMarkCachesVolatile(*(cf + 3), 0);
  if (v134)
  {
    CFRelease(v134);
  }

  if (v137)
  {
    CFRelease(v137);
  }

  if (v136)
  {
    CFRelease(v136);
  }

  if (v135)
  {
    CFRelease(v135);
  }

  if (v133)
  {
    CFRelease(v133);
  }

  return v56;
}

void _compressionPluginSequenceFrameEncodeCallback(int a1, int a2, CMSampleBufferRef sbuf, uint64_t a4, char *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *a5;
  sampleBufferOut = 0;
  if (!a2)
  {
    memset(&timingInfoOut, 0, sizeof(timingInfoOut));
    if (!CMSampleBufferGetSampleTimingInfo(sbuf, 0, &timingInfoOut) && (timingInfoOut.presentationTimeStamp.flags & 1) != 0 && (timingInfoOut.decodeTimeStamp.flags & 1) != 0)
    {
      time1 = timingInfoOut.presentationTimeStamp;
      time2 = *(a5 + 20);
      if (!CMTimeCompare(&time1, &time2))
      {
        if (sbuf)
        {
          v8 = CFRetain(sbuf);
        }

        else
        {
          v8 = 0;
        }

        sampleBufferOut = v8;
LABEL_8:
        if (!CMPhotoHEIFFileWriterAddSampleBufferToImage(*(v6 + 88), 0, *(a5 + 1), v8))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    timingInfoOut.decodeTimeStamp = *(a5 + 20);
    timingInfoOut.presentationTimeStamp = timingInfoOut.decodeTimeStamp;
    *&timingInfoOut.duration.value = *MEMORY[0x1E6960C70];
    timingInfoOut.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
    if (!CMSampleBufferCreateCopyWithNewTiming(*MEMORY[0x1E695E480], sbuf, 1, &timingInfoOut, &sampleBufferOut))
    {
      v8 = sampleBufferOut;
      goto LABEL_8;
    }
  }

LABEL_9:
  *(v6 + 104) = 1;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_10:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  v10 = *(a5 + 7);
  if (v10)
  {
    CFRelease(v10);
  }

  CMPhotoSurfacePoolMarkCachesVolatile(*(v6 + 24), 0);
  free(a5);
}

uint64_t CMPhotoCompressionWriteFileContainerFromImage(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, const void *a6)
{
  if (!a2)
  {
    CMPhotoCompressionWriteFileContainerFromImage_cold_2(&v22);
    return v22;
  }

  if (!a6)
  {
    CMPhotoCompressionWriteFileContainerFromImage_cold_1(&v22);
    return v22;
  }

  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v14 = Mutable;
  v15 = CMPhotoCFDictionarySetInt(Mutable, @"ContainerFormat", a5);
  if (v15 || (v15 = CMPhotoCFDictionarySetInt(v14, @"BackingType", 3), v15))
  {
    ContainerFromImageExt = v15;
    goto LABEL_19;
  }

  CFDictionarySetValue(v14, @"BackingFileURL", a6);
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, a1);
    if (MutableCopy)
    {
      v17 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, @"Tiling");
      CMPhotoCFDictionarySetInt(v17, @"MaxPixelSize", a3);
      v18 = a2;
      goto LABEL_9;
    }

    ContainerFromImageExt = 4294950305;
LABEL_19:
    v20 = v14;
    goto LABEL_11;
  }

  v17 = 0;
  v18 = 0;
LABEL_9:
  ContainerFromImageExt = CMPhotoCompressionCreateContainerFromImageExt(v14, a1, a2, v17, v18, a4);
  CFRelease(v14);
  if (v17)
  {
    v20 = v17;
LABEL_11:
    CFRelease(v20);
  }

  return ContainerFromImageExt;
}

uint64_t CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize(unint64_t *a1, double a2, double a3)
{
  v4 = 0;
  v17 = 0;
  v18 = 0;
  v5 = (a2 * a3);
  v6 = vcvtad_u64_f64(a2);
  v7 = vcvtad_u64_f64(a3);
  v8 = 320;
  v9 = 1.79769313e308;
  v10 = a2 / a3;
  while (1)
  {
    CMPhotoPixelBufferConstrainSizeToMaxSideLength(v6, v7, v8, 0, 0, 0, 1, &v17, 0, 0);
    v11 = v18 * v17;
    v12 = vabdd_f64(v17 / v18, v10);
    if (v12 < v9)
    {
      v9 = v12;
      v4 = v8;
    }

    v13 = 200 * v11;
    if (200 * v11 >= v5 && v9 == 0.0)
    {
      break;
    }

    v14 = 100 * v11;
    if (v14 >= v5 && v13 < v5)
    {
      CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize_cold_1(&v19);
      return v19;
    }

    if (v14 >= v5)
    {
      v8 = v4;
      break;
    }

    v8 += 16;
  }

  result = 0;
  if (a1)
  {
    *a1 = v8;
  }

  return result;
}

uint64_t CMPhotoAppleJPEGErrorToCMPhotoError(int a1)
{
  if ((a1 + 1) > 0xC)
  {
    return 4294950304;
  }

  else
  {
    return dword_1A5ABC7F8[a1 + 1];
  }
}

uint64_t _storeStreamLengths(uint64_t a1, __CFArray *a2)
{
  value = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = v4(CMBaseObject, *MEMORY[0x1E695FF70], *MEMORY[0x1E695E480], &value);
  v6 = value;
  if (!v5)
  {
    CFArrayAppendValue(a2, value);
    v6 = value;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t _writeInitialMPHeaderSegment(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = 16 * (a4 + 1);
  *result = -7425;
  *(result + 2) = bswap32(v6 + 56) >> 16;
  *(result + 4) = 4608077;
  if (a5)
  {
    *a5 = a2 + 8;
  }

  *(result + 8) = 0x80000002A004D4DLL;
  *(result + 16) = 11535104;
  *(result + 20) = 1792;
  *(result + 22) = 0x3030313004000000;
  *(result + 30) = 0x1000000040001B0;
  *(result + 38) = bswap32(a4 + 1);
  *(result + 42) = 117441200;
  *(result + 46) = bswap32(v6);
  *(result + 50) = 838860800;
  if (a6)
  {
    *a6 = a2 + 58;
  }

  *(result + 58) = 768;
  *(result + 66) = 0;
  if (a4)
  {
    v7 = (result + 74);
    v8 = (a3 + 8);
    do
    {
      v9 = *v8;
      v8 += 4;
      *v7 = bswap32(v9);
      v7[1] = 0;
      v7 += 2;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t _appInjectionScannerCallback(uint64_t a1, unint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  v6 = *(a5 + 32);
  v7 = *(a5 + 40);
  if (v6 < v7 || v6 >= *(a5 + 48) + v7)
  {
    if (!_appInjectionScannerCallback_cold_1(&v19))
    {
      return v19;
    }
  }

  else
  {
    v11 = a2 - v6;
    if (a2 > v6)
    {
      memcpy(*(a5 + 64), (*(a5 + 56) + v6 - v7), v11);
      *(a5 + 64) += v11;
      *(a5 + 32) += v11;
    }

    if (*(a5 + 25) && (a3 - 226) <= 0xFFFFFFFD && !*(a5 + 24))
    {
      if (*a5 >= 1)
      {
        v12 = 0;
        do
        {
          Length = CFDataGetLength(*(*(a5 + 8) + 8 * v12));
          BytePtr = CFDataGetBytePtr(*(*(a5 + 8) + 8 * v12));
          **(a5 + 64) = bswap32(*(*(a5 + 16) + v12) | 0xFF00) >> 16;
          *(*(a5 + 64) + 2) = bswap32(Length + 2) >> 16;
          memcpy((*(a5 + 64) + 4), BytePtr, Length);
          *(a5 + 64) += Length + 4;
          ++v12;
        }

        while (v12 < *a5);
      }

      *(a5 + 24) = 1;
    }

    if (a3 == 216)
    {
      *(a5 + 25) = 1;
    }

    v15 = *(a5 + 40);
    v16 = *(a5 + 32);
    if (a2 + a4 - v16 + 2 >= *(a5 + 48) + v15 - v16)
    {
      v17 = *(a5 + 48) + v15 - v16;
    }

    else
    {
      v17 = a2 + a4 - v16 + 2;
    }

    if (v17)
    {
      memcpy(*(a5 + 64), (*(a5 + 56) + v16 - v15), v17);
      *(a5 + 64) += v17;
      *(a5 + 32) += v17;
    }
  }

  if (*(a5 + 24))
  {
    return 4294950191;
  }

  else
  {
    return 0;
  }
}

uint64_t __CMPhotoJFIFCreateStrippedBufferFromByteStream_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  targetBBuf = 0;
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 24);
  v12 = a7 - v11 - 4;
  if (v12 < 1)
  {
    goto LABEL_7;
  }

  v19 = 0;
  v14 = *(a1 + 40);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v15)
  {
    v17 = 4294954514;
    goto LABEL_9;
  }

  appended = v15(v14, v12, v11, &targetBBuf, &v19);
  if (!appended)
  {
    if (v19 != v12)
    {
      __CMPhotoJFIFCreateStrippedBufferFromByteStream_block_invoke_cold_1(&v21);
      v17 = v21;
      goto LABEL_9;
    }

    appended = CMBlockBufferAppendBufferReference(*(a1 + 48), targetBBuf, 0, 0, 0);
    if (!appended)
    {
      v10 = *(*(a1 + 32) + 8);
LABEL_7:
      v17 = 0;
      *(v10 + 24) = a7 + a8;
      goto LABEL_9;
    }
  }

  v17 = appended;
LABEL_9:
  if (targetBBuf)
  {
    CFRelease(targetBBuf);
  }

  return v17;
}

void CMPhotoCompressedAuxImageStorageDestroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[3];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[6];
    if (v7)
    {
      CFRelease(v7);
    }

    free(a1);
  }
}

uint64_t __CMPhotoGetXMPLocationFromJFIFByteStream_block_invoke(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == 1)
  {
    *(*(a1[6] + 8) + 24) = 1;
    return 4294950191;
  }

  else if (a3)
  {
    return 4294950304;
  }

  else
  {
    v8 = *(a1[4] + 8);
    *(v8 + 24) = a7;
    *(v8 + 32) = a8;
    *(*(a1[5] + 8) + 24) = 1;
    if (a1[7])
    {
      return 0;
    }

    else
    {
      return 4294950191;
    }
  }
}

uint64_t __CMPhotoCopyExtendedXMPPayloadsFromJFIFByteStream_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    CFGetAllocator(*(a1 + 40));
    *(*(*(a1 + 32) + 8) + 24) = FigCFArrayCreateMutableCopy();
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      return 4294950305;
    }
  }

  v13 = 0;
  value = 0;
  result = CMPhotoByteStreamReadAndCreateData(a2, a8, a7, &value, &v13);
  if (!result)
  {
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), value);
    if (value)
    {
      CFRelease(value);
    }

    if (v13 == a8)
    {
      if (*(a1 + 48))
      {
        return 0;
      }

      else
      {
        return 4294950191;
      }
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t __CMPhotoGetDQTLocationFromJFIFByteStream_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 32) + 8);
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return 4294950191;
}

uint64_t __CMPhotoCopyIPTCFromJFIFByteStream_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 32) + 8);
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return 4294950191;
}

void *CreateTreeLeaves(void *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v3 = 0;
    v4 = a2;
    do
    {
      result = malloc_type_malloc(0x20uLL, 0x102004084B5A0ACuLL);
      v2[v3] = result;
      if (!result)
      {
        CreateTreeLeaves_cold_1();
      }

      *result = v3;
      result[2] = 0;
      *(v2[v3] + 24) = 0;
      *(v2[v3++] + 8) = 0;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t CreateHuffTree(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = a2;
  while (1)
  {
    v7 = (a1 + 4 * v5);
    v8 = *v7;
    if (*v7)
    {
      break;
    }

LABEL_14:
    if (++v5 == v6)
    {
      return 0;
    }
  }

  v9 = *(v7 + 1);
  v10 = (v9 >> (v8 - 1)) & 1;
  if (v8 == 1)
  {
    v11 = a4;
LABEL_10:
    if (v5 >= 0x400)
    {
      CreateHuffTree_cold_3();
    }

    v16 = *(a3 + 8 * v5);
    if (!v16)
    {
      CreateHuffTree_cold_2();
    }

    if (!v11)
    {
      CreateHuffTree_cold_1();
    }

    *(v11 + 8 * v10 + 16) = v16;
    *(v16 + 8) = v11;
    goto LABEL_14;
  }

  v12 = v8 - 2;
  v11 = a4;
  while (1)
  {
    v13 = v11 + 16;
    v14 = *(v11 + 16 + 8 * v10);
    if (!v14)
    {
      v15 = 1;
      v14 = malloc_type_calloc(0x20uLL, 1uLL, 0x102004084B5A0ACuLL);
      *(v13 + 8 * v10) = v14;
      if (!v14)
      {
        return v15;
      }
    }

    v14[1] = v11;
    v11 = *(v13 + 8 * v10);
    v10 = (v9 >> v12--) & 1;
    if (v12 == -1)
    {
      goto LABEL_10;
    }
  }
}

void DestroyHuffTree(void *a1)
{
  if (a1)
  {
    DestroyHuffTree(a1[2]);
    DestroyHuffTree(a1[3]);

    free(a1);
  }
}

uint64_t SlimDecodeFrame(int *a1)
{
  if (*a1 < 0x10 || (v1 = a1[1], v1 <= 0xF))
  {
    SlimDecodeFrame_cold_4();
  }

  v2 = *(a1 + 7);
  v3 = a1[8];
  if (v3 <= 875836533)
  {
    if (v3 <= 875704421)
    {
      if (v3 == 825437747)
      {
        goto LABEL_18;
      }

      v4 = 846624121;
    }

    else
    {
      if (v3 == 875704422 || v3 == 875704438)
      {
        goto LABEL_18;
      }

      v4 = 875836518;
    }
  }

  else if (v3 > 1650943795)
  {
    if (v3 == 1650943796 || v3 == 2037741158)
    {
      goto LABEL_18;
    }

    v4 = 2037741171;
  }

  else
  {
    if (v3 == 875836534 || v3 == 1278226536)
    {
      goto LABEL_18;
    }

    v4 = 1278226742;
  }

  if (v3 != v4)
  {
    SlimDecodeFrame_cold_3();
  }

LABEL_18:
  LODWORD(v5) = 0;
  v6 = 0;
  v7 = *(a1 + 8);
  v8 = *(a1 + 11);
  v9 = 2 * *a1 * v1;
  if (v3 <= 875836517)
  {
    if (v3 == 846624121)
    {
      LODWORD(v5) = 0;
      *v8 = *(v7 + 1);
      *(v8 + 1) = *v7;
      *(v8 + 2) = *(v7 + 3);
      *(v8 + 3) = *(v7 + 2);
      v11 = (v8 + 4);
      goto LABEL_29;
    }

    if (v3 == 875704422)
    {
      goto LABEL_28;
    }

    v10 = 875704438;
LABEL_27:
    v11 = *(a1 + 11);
    if (v3 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v3 <= 1650943795)
  {
    if (v3 != 875836518)
    {
      v10 = 875836534;
      goto LABEL_27;
    }

LABEL_28:
    LODWORD(v5) = 0;
    *v8 = *v7;
    v11 = (v8 + 4);
LABEL_29:
    v6 = 32;
    goto LABEL_30;
  }

  if (v3 != 1650943796)
  {
    v10 = 2037741171;
    goto LABEL_27;
  }

  if (!(v7 | v8))
  {
    SlimDecodeFrame_cold_2();
  }

  v5 = (v7 + 8);
  *v8 = *v7;
  *(v8 + 2) = *(v7 + 2);
  *(v8 + 4) = *(v7 + 4);
  *(v8 + 6) = *(v7 + 6);
  v114 = (v9 >> 1);
  if (v114 < 5)
  {
    v6 = 31;
  }

  else
  {
    v115 = *(a1 + 1043);
    v116 = *(v115 + 16);
    v117 = 4;
    v118 = v8;
    v6 = 31;
    do
    {
      if (!v5)
      {
        SlimDecodeFrame_cold_1();
      }

      v119 = v5;
      v120 = v115;
      if (v116)
      {
        do
        {
          v120 = *(v120 + 8 * ((*v119 >> v6) & 1) + 16);
          v121 = v6 == 0;
          if (v6)
          {
            --v6;
          }

          else
          {
            v5 = v119 + 1;
            v6 = 31;
          }

          if (v121)
          {
            ++v119;
          }
        }

        while (*(v120 + 16));
      }

      v122 = *v118++;
      v123 = v122 + *v120;
      v124 = (v8 + 2 * v117);
      if ((v123 & 0xFC00) != 0)
      {
        v123 -= 1024;
      }

      *v124 = v123;
      *(v124 - 4) *= 16;
      ++v117;
    }

    while (v117 != v114);
  }

  v125 = v114 - 1;
  v126 = 4;
  do
  {
    *(v8 + 2 * v125--) *= 16;
    --v126;
  }

  while (v126);
  v11 = v8;
LABEL_30:
  v12 = v2 >> 2;
  v13 = a1[8];
  if (v13 > 875836517)
  {
    if (v13 != 875836518 && v13 != 875836534)
    {
      if (v13 != 2037741171)
      {
        goto LABEL_123;
      }

      if (v9 >= 5)
      {
        v29 = 0;
        v30 = v9 - 4;
        do
        {
          v31 = *(v7 + 4 * (v6 >> 5));
          if ((v6 & 0x1F) != 0)
          {
            v32 = (v6 >> 5) + 1;
            if (v32 >= v12)
            {
              v33 = 0;
            }

            else
            {
              v33 = *(v7 + 4 * v32);
            }

            v31 = (v31 << v6) | (v33 >> 1 >> ~v6);
          }

          if (v31 <= 0xEFFFFF)
          {
            v34 = 15;
          }

          else
          {
            v34 = 20;
          }

          if (v31 <= 0xEFFFFF)
          {
            v35 = &decode_luma17;
          }

          else
          {
            v35 = &decode_luma12;
          }

          if (v31 > 0x117FFFFF)
          {
            v34 = 23;
            v35 = &decode_luma9;
          }

          v36 = &v35[2 * (v31 >> v34)];
          v37 = v6 + *v36;
          *v11 = v36[1] + *(v11 - 2);
          v38 = *(v7 + 4 * (v37 >> 5));
          if ((v37 & 0x1F) != 0)
          {
            v39 = (v37 >> 5) + 1;
            if (v39 >= v12)
            {
              v40 = 0;
            }

            else
            {
              v40 = *(v7 + 4 * v39);
            }

            v38 = (v38 << v37) | (v40 >> 1 >> ~v37);
          }

          v41 = HIBYTE(v38);
          v42 = &decode_chroma26 + 2 * (v38 >> 6);
          if (v38 >> 10 >= 0xD)
          {
            v42 = &decode_chroma23 + 2 * (v38 >> 9);
          }

          if (v38 >= 0x40000)
          {
            v42 = &decode_chroma16 + 2 * HIWORD(v38);
          }

          v43 = &decode_chroma9 + 2 * (v38 >> 23);
          if (!v41)
          {
            v43 = v42;
          }

          v6 = v37 + *v43;
          v11[1] = v43[1] + *(v11 - 3);
          v11 += 2;
          v29 += 2;
        }

        while (v29 < v30);
      }

      goto LABEL_122;
    }

    goto LABEL_40;
  }

  if (v13 == 846624121)
  {
    if (v9 >= 5)
    {
      v98 = 0;
      v99 = v9 - 4;
      v100 = v6;
      do
      {
        v101 = *(v7 + 4 * (v100 >> 5));
        if ((v100 & 0x1F) != 0)
        {
          v102 = (v100 >> 5) + 1;
          if (v102 >= v12)
          {
            v103 = 0;
          }

          else
          {
            v103 = *(v7 + 4 * v102);
          }

          v101 = (v101 << v100) | (v103 >> 1 >> ~v100);
        }

        if (v101 <= 0xEFFFFF)
        {
          v104 = 15;
        }

        else
        {
          v104 = 20;
        }

        if (v101 <= 0xEFFFFF)
        {
          v105 = &decode_luma17;
        }

        else
        {
          v105 = &decode_luma12;
        }

        if (v101 > 0x117FFFFF)
        {
          v104 = 23;
          v105 = &decode_luma9;
        }

        v106 = &v105[2 * (v101 >> v104)];
        v107 = v100 + *v106;
        v11[1] = v106[1] + *(v11 - 1);
        v108 = *(v7 + 4 * (v107 >> 5));
        if ((v107 & 0x1F) != 0)
        {
          v109 = (v107 >> 5) + 1;
          if (v109 >= v12)
          {
            v110 = 0;
          }

          else
          {
            v110 = *(v7 + 4 * v109);
          }

          v108 = (v108 << v107) | (v110 >> 1 >> ~v107);
        }

        v111 = HIBYTE(v108);
        v112 = &decode_chroma26 + 2 * (v108 >> 6);
        if (v108 >> 10 >= 0xD)
        {
          v112 = &decode_chroma23 + 2 * (v108 >> 9);
        }

        if (v108 >= 0x40000)
        {
          v112 = &decode_chroma16 + 2 * HIWORD(v108);
        }

        v113 = &decode_chroma9 + 2 * (v108 >> 23);
        if (!v111)
        {
          v113 = v112;
        }

        v100 = v107 + *v113;
        *v11 = v113[1] + *(v11 - 4);
        v11 += 2;
        v98 += 2;
      }

      while (v98 < v99);
      v6 = v100;
    }

    goto LABEL_122;
  }

  if (v13 == 875704422 || v13 == 875704438)
  {
LABEL_40:
    v15 = a1[1];
    if (v15)
    {
      v16 = 0;
      v17 = *a1;
      v18 = v11 - v8;
      v19 = a1[2] - *a1;
      v20 = *(v11 - 1);
      do
      {
        v21 = v17 >= v18;
        v22 = v17 - v18;
        if (v22 != 0 && v21)
        {
          do
          {
            v23 = *(v7 + 4 * (v6 >> 5));
            if ((v6 & 0x1F) != 0)
            {
              v24 = (v6 >> 5) + 1;
              if (v24 >= v12)
              {
                v25 = 0;
              }

              else
              {
                v25 = *(v7 + 4 * v24);
              }

              v23 = (v23 << v6) | (v25 >> 1 >> ~v6);
            }

            if (v23 <= 0xEFFFFF)
            {
              v26 = 15;
            }

            else
            {
              v26 = 20;
            }

            if (v23 <= 0xEFFFFF)
            {
              v27 = &decode_luma17;
            }

            else
            {
              v27 = &decode_luma12;
            }

            if (v23 > 0x117FFFFF)
            {
              v26 = 23;
              v27 = &decode_luma9;
            }

            v28 = &v27[2 * (v23 >> v26)];
            v6 += *v28;
            v20 += v28[1];
            *v11++ = v20;
            --v22;
          }

          while (v22);
        }

        v18 = 0;
        v11 += v19;
        ++v16;
      }

      while (v16 != v15);
    }

    v44 = v6 + 31;
    v8 = *(a1 + 12);
    v45 = *(v7 + 4 * ((v6 + 31) >> 5));
    *v8 = v45;
    v46 = (v8 + 4);
    v47 = (v44 & 0xFFFFFFE0) + 32;
    if ((a1[8] | 0x10) == 0x34323076)
    {
      v48 = *a1;
      v49 = a1[1] >> 1;
      if (!v49)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v49 = a1[1];
      v48 = 2 * *a1;
      if (!v49)
      {
LABEL_121:
        v6 = v47 + 31;
LABEL_122:
        v13 = a1[8];
        goto LABEL_123;
      }
    }

    v50 = 0;
    v51 = HIWORD(v45);
    v52 = HIBYTE(v45);
    v53 = (a1[3] - v48);
    v54 = 4;
    do
    {
      if (v54 >= v48)
      {
        v68 = v46;
      }

      else
      {
        do
        {
          v55 = *(v7 + 4 * (v47 >> 5));
          if ((v47 & 0x1F) != 0)
          {
            v56 = (v47 >> 5) + 1;
            if (v56 >= v12)
            {
              v57 = 0;
            }

            else
            {
              v57 = *(v7 + 4 * v56);
            }

            v55 = (v55 << v47) | (v57 >> 1 >> ~v47);
          }

          v58 = HIBYTE(v55);
          v59 = &decode_chroma26 + 2 * (v55 >> 6);
          if (v55 >> 10 >= 0xD)
          {
            v59 = &decode_chroma23 + 2 * (v55 >> 9);
          }

          if (v55 >= 0x40000)
          {
            v59 = &decode_chroma16 + 2 * HIWORD(v55);
          }

          v60 = &decode_chroma9 + 2 * (v55 >> 23);
          if (!v58)
          {
            v60 = v59;
          }

          v61 = v47 + *v60;
          v51 += v60[1];
          *v46 = v51;
          v62 = *(v7 + 4 * (v61 >> 5));
          if ((v61 & 0x1F) != 0)
          {
            v63 = (v61 >> 5) + 1;
            if (v63 >= v12)
            {
              v64 = 0;
            }

            else
            {
              v64 = *(v7 + 4 * v63);
            }

            v62 = (v62 << v61) | (v64 >> 1 >> ~v61);
          }

          v65 = HIBYTE(v62);
          v66 = &decode_chroma26 + 2 * (v62 >> 6);
          if (v62 >> 10 >= 0xD)
          {
            v66 = &decode_chroma23 + 2 * (v62 >> 9);
          }

          if (v62 >= 0x40000)
          {
            v66 = &decode_chroma16 + 2 * HIWORD(v62);
          }

          v67 = &decode_chroma9 + 2 * (v62 >> 23);
          if (!v65)
          {
            v67 = v66;
          }

          v47 = v61 + *v67;
          v52 += v67[1];
          v68 = v46 + 2;
          v46[1] = v52;
          v54 += 2;
          v46 += 2;
        }

        while (v54 < v48);
      }

      v54 = 0;
      v46 = &v68[v53];
      ++v50;
    }

    while (v50 != v49);
    goto LABEL_121;
  }

LABEL_123:
  if (v13 > 1278226741)
  {
    if (v13 != 1278226742 && v13 != 2037741158)
    {
      if (v13 == 1650943796)
      {
        return (v5 - v7 + 4);
      }

      return (v6 >> 3) & 0x1FFFFFFC;
    }

    goto LABEL_130;
  }

  if (v13 == 825437747 || v13 == 1278226536)
  {
LABEL_130:
    v70 = (*a1 + 15) & 0xFFFFFFF0;
    v71 = a1[2] >> 1;
    v21 = v71 >= v70;
    v72 = v71 - v70;
    if (!v21 || (*v7 & 0xFFFE) != 0x5A02)
    {
      return 0;
    }

    v73 = v7 + a1[14];
    v74 = *(v7 + 2);
    v75 = v7 + 4;
    v76 = (v75 + 2 * v74);
    LODWORD(v77) = v8;
    if (v76 >= v73)
    {
      return (v77 - v8);
    }

    v78 = 0;
    v79 = 0;
    v80 = 0;
    v77 = v8;
    while (1)
    {
      v81 = *v76;
      if (!v79)
      {
        break;
      }

      v82 = v81 & 0xF;
      if (v82 > 0xC)
      {
        if (v82 != 15)
        {
          if (v82 == 13)
          {
            return (v77 - v8);
          }

          v85 = *++v76;
          v86 = (v85 >> 4) + 1;
          v87 = *(v75 + 2 * v80);
          do
          {
            *v77 = v87;
            if (v78 + 1 == v70)
            {
              v88 = v72;
            }

            else
            {
              v88 = 0;
            }

            v77 += v88 + 1;
            if (v78 + 1 == v70)
            {
              v78 = 0;
            }

            else
            {
              ++v78;
            }

            --v86;
          }

          while (v86);
LABEL_192:
          v79 = 1;
          goto LABEL_193;
        }

        v92 = v76[1];
        if ((v92 & 0x80) != 0)
        {
          v80 = v80 + v92 - 192;
          v93 = 1;
        }

        else
        {
          v80 = v76[2] | (v92 << 8);
          v93 = 2;
        }

        v79 = 0;
        *v77 = *(v75 + 2 * v80);
        if (v78 + 1 == v70)
        {
          v96 = v72;
        }

        else
        {
          v96 = 0;
        }

        v77 += v96 + 1;
        if (v78 + 1 == v70)
        {
          v78 = 0;
        }

        else
        {
          ++v78;
        }

        v76 += v93;
      }

      else
      {
        v79 = 0;
        v80 = v80 + v82 - 6;
        *v77 = *(v75 + 2 * v80);
        if (v78 + 1 == v70)
        {
          v83 = v72;
        }

        else
        {
          v83 = 0;
        }

        v77 += v83 + 1;
        if (v78 + 1 == v70)
        {
          v78 = 0;
        }

        else
        {
          ++v78;
        }
      }

      ++v76;
LABEL_193:
      if (v76 >= v73)
      {
        return (v77 - v8);
      }
    }

    if (v81 <= 0xCF)
    {
      v80 = v80 + (v81 >> 4) - 6;
      *v77 = *(v75 + 2 * v80);
      if (v78 + 1 == v70)
      {
        v84 = v72;
      }

      else
      {
        v84 = 0;
      }

      v77 += v84 + 1;
      if (v78 + 1 == v70)
      {
        v78 = 0;
      }

      else
      {
        ++v78;
      }

      v79 = 1;
      goto LABEL_193;
    }

    if (v81 <= 0xEF)
    {
      v89 = (v81 & 0xF) + 1;
      v90 = *(v75 + 2 * v80);
      do
      {
        *v77 = v90;
        if (v78 + 1 == v70)
        {
          v91 = v72;
        }

        else
        {
          v91 = 0;
        }

        v77 += v91 + 1;
        if (v78 + 1 == v70)
        {
          v78 = 0;
        }

        else
        {
          ++v78;
        }

        --v89;
      }

      while (v89);
      v79 = 0;
      ++v76;
      goto LABEL_193;
    }

    v94 = v76[1];
    if ((v81 & 8) != 0)
    {
      v80 = ((v94 >> 4) & 0xFFFFFF0F | (16 * (v81 & 0xF))) + v80 - 192;
      ++v76;
    }

    else
    {
      v95 = v76[2];
      v76 += 2;
      v80 = (v81 << 12) | (16 * v94) | (v95 >> 4);
    }

    *v77 = *(v75 + 2 * v80);
    if (v78 + 1 == v70)
    {
      v97 = v72;
    }

    else
    {
      v97 = 0;
    }

    v77 += v97 + 1;
    if (v78 + 1 == v70)
    {
      v78 = 0;
    }

    else
    {
      ++v78;
    }

    goto LABEL_192;
  }

  return (v6 >> 3) & 0x1FFFFFFC;
}
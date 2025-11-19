uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t **std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>>::__node_handle_insert_unique[abi:ne200100]<std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>,std::allocator<std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>,std::__map_node_handle_specifics>,std::__insert_return_type<std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>*,long>>,std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>,std::allocator<std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>,std::__map_node_handle_specifics>>>@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = *a2;
  if (!*a2)
  {
    *a3 = result + 1;
    *(a3 + 8) = 0;
LABEL_9:
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    return result;
  }

  result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(result, &v8, (v5 + 32));
  if (!*result)
  {
    result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v3, v8, result, v5);
    *a2 = 0;
    if (*(a2 + 9) == 1)
    {
      *(a2 + 9) = 0;
    }

    *a3 = v5;
    *(a3 + 8) = 1;
    goto LABEL_9;
  }

  *a3 = *result;
  *(a3 + 8) = 0;
  *(a3 + 16) = *a2;
  v7 = *(a2 + 4);
  *(a3 + 24) = v7;
  *a2 = 0;
  if ((v7 & 0x100) != 0)
  {
    *(a2 + 9) = 0;
  }

  return result;
}

uint64_t std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::resolvePlaceholder(uint64_t a1, uint64_t **a2, std::mutex **a3, uint64_t a4, uint64_t a5, int a6)
{
  quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPlaceholder(a1, &v60);
  size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v60.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (!a2)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "No regional model map from 1st pass GeoContext available", 56);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a2, &v60.__r_.__value_.__l.__data_);
    v14 = v13;
    if (a2 + 1 == v13)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "placeholder ", 12);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v60;
      }

      else
      {
        v33 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v60.__r_.__value_.__l.__size_;
      }

      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " not found in model-map for region ", 35);
      v37 = *(a4 + 23);
      if (v37 >= 0)
      {
        v38 = a4;
      }

      else
      {
        v38 = *a4;
      }

      if (v37 >= 0)
      {
        v39 = *(a4 + 23);
      }

      else
      {
        v39 = *(a4 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v38, v39);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v16 = v13[7];
    v15 = v13[8];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a6)
    {
      std::__tree<std::string>::__remove_node_pointer(a2, v13);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>((v14 + 4));
      operator delete(v14);
    }

    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getOriginStr(v16, __p);
    v17 = (a1 + 24);
    if (*(a1 + 48) == 1)
    {
      if (*(a1 + 47) < 0)
      {
        operator delete(*v17);
      }

      *v17 = *__p;
      *(a1 + 40) = v44;
    }

    else
    {
      *v17 = *__p;
      *(a1 + 40) = v44;
      *(a1 + 48) = 1;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getCachedModel(v16, __p, &v41);
    v18 = *(a5 + 24);
    if (!v18)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v18 + 48))(&v40);
    v19 = *&v40.__r_.__value_.__l.__data_;
    *&v40.__r_.__value_.__l.__data_ = 0uLL;
    v20 = *(a1 + 64);
    *(a1 + 56) = v19;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      if (v40.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40.__r_.__value_.__l.__size_);
      }
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (SBYTE7(v44) < 0)
    {
      operator delete(__p[0]);
    }

    if (quasar::gLogLevel >= 4)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Using location-specific bigG for ", 33);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v60;
      }

      else
      {
        v22 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v60.__r_.__value_.__l.__size_;
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " from region ", 13);
      v26 = *(a1 + 47);
      if (v26 >= 0)
      {
        v27 = a1 + 24;
      }

      else
      {
        v27 = *(a1 + 24);
      }

      if (v26 >= 0)
      {
        v28 = *(a1 + 47);
      }

      else
      {
        v28 = *(a1 + 32);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    v29 = *a3;
    std::operator+<char>();
    v30 = std::string::append(&v40, "]");
    v31 = *&v30->__r_.__value_.__l.__data_;
    *&v44 = *(&v30->__r_.__value_.__l + 2);
    *__p = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    quasar::SpeechRequestResultData::addDumpAA(v29, __p, (a1 + 24));
    if (SBYTE7(v44) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }
}

void sub_1B5071578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (*(v24 - 81) < 0)
  {
    operator delete(*(v24 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D35B28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::resolvePlaceholder(uint64_t a1, uint64_t **a2, std::mutex **a3, uint64_t a4, uint64_t a5, int a6)
{
  quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPlaceholder(a1, &v60);
  size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v60.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (!a2)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "No regional model map from 1st pass GeoContext available", 56);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a2, &v60.__r_.__value_.__l.__data_);
    v14 = v13;
    if (a2 + 1 == v13)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "placeholder ", 12);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v60;
      }

      else
      {
        v33 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v60.__r_.__value_.__l.__size_;
      }

      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " not found in model-map for region ", 35);
      v37 = *(a4 + 23);
      if (v37 >= 0)
      {
        v38 = a4;
      }

      else
      {
        v38 = *a4;
      }

      if (v37 >= 0)
      {
        v39 = *(a4 + 23);
      }

      else
      {
        v39 = *(a4 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v38, v39);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v16 = v13[7];
    v15 = v13[8];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a6)
    {
      std::__tree<std::string>::__remove_node_pointer(a2, v13);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>((v14 + 4));
      operator delete(v14);
    }

    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getOriginStr(v16, __p);
    v17 = (a1 + 24);
    if (*(a1 + 48) == 1)
    {
      if (*(a1 + 47) < 0)
      {
        operator delete(*v17);
      }

      *v17 = *__p;
      *(a1 + 40) = v44;
    }

    else
    {
      *v17 = *__p;
      *(a1 + 40) = v44;
      *(a1 + 48) = 1;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v16, __p, &v41);
    v18 = *(a5 + 24);
    if (!v18)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v18 + 48))(&v40);
    v19 = *&v40.__r_.__value_.__l.__data_;
    *&v40.__r_.__value_.__l.__data_ = 0uLL;
    v20 = *(a1 + 64);
    *(a1 + 56) = v19;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      if (v40.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40.__r_.__value_.__l.__size_);
      }
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (SBYTE7(v44) < 0)
    {
      operator delete(__p[0]);
    }

    if (quasar::gLogLevel >= 4)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Using location-specific bigG for ", 33);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v60;
      }

      else
      {
        v22 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v60.__r_.__value_.__l.__size_;
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " from region ", 13);
      v26 = *(a1 + 47);
      if (v26 >= 0)
      {
        v27 = a1 + 24;
      }

      else
      {
        v27 = *(a1 + 24);
      }

      if (v26 >= 0)
      {
        v28 = *(a1 + 47);
      }

      else
      {
        v28 = *(a1 + 32);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    v29 = *a3;
    std::operator+<char>();
    v30 = std::string::append(&v40, "]");
    v31 = *&v30->__r_.__value_.__l.__data_;
    *&v44 = *(&v30->__r_.__value_.__l + 2);
    *__p = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    quasar::SpeechRequestResultData::addDumpAA(v29, __p, (a1 + 24));
    if (SBYTE7(v44) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }
}

void sub_1B5071AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (*(v24 - 81) < 0)
  {
    operator delete(*(v24 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void quasar::OnlineLatticeBiglmLmeFasterDecoder::filterOutUnsupportedPlaceholders(uint64_t a1@<X0>, const void ***a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2944), v5 + 4))
      {
        std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>> const&>(a3, v5 + 4);
      }

      else if (quasar::gLogLevel >= 4)
      {
        memset(v14, 0, sizeof(v14));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Filtering out unsupported / unused placeholder ", 47);
        v8 = *(v5 + 55);
        if (v8 >= 0)
        {
          v9 = (v5 + 4);
        }

        else
        {
          v9 = v5[4];
        }

        if (v8 >= 0)
        {
          v10 = *(v5 + 55);
        }

        else
        {
          v10 = v5[5];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v14);
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v4);
  }
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__assign_with_size[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 16);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 32;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(&v17, a2, a2 + v12, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(a1, a2 + v12, a3, a1[1]);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *v4 = *a2;
      v5 = *(a2 + 16);
      *(v4 + 8) = *(a2 + 8);
      *(v4 + 16) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      *(v4 + 24) = *(a2 + 24);
      a2 += 32;
      v4 += 32;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::LmeInfo>,quasar::LmeInfo*,quasar::LmeInfo*,quasar::LmeInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 1;
    do
    {
      v8 = v6 - 1;
      v7 = *(v6 - 2);
      *(v4 + 8) = *(v6 - 2);
      *v4 = v7;
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 16), *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 32) = *(v6 + 2);
        *(v4 + 16) = v9;
      }

      v4 += 40;
      v14 = v4;
      v6 = (v6 + 40);
    }

    while ((v8 + 40) != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeInfo>,quasar::LmeInfo*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::vector<quasar::SymbolTableList::Data>::__init_with_size[abi:ne200100]<quasar::SymbolTableList::Data*,quasar::SymbolTableList::Data*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::SymbolTableList::Data>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5072144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::SymbolTableList::Data>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<quasar::SymbolTableList>::__shared_ptr_emplace[abi:ne200100]<quasar::SymbolTableList&,std::allocator<quasar::SymbolTableList>,0>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_1F2D07738;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  std::vector<quasar::SymbolTableList::Data>::__init_with_size[abi:ne200100]<quasar::SymbolTableList::Data*,quasar::SymbolTableList::Data*>(a1 + 24, *a2, a2[1], (a2[1] - *a2) >> 5);
  return a1;
}

void std::vector<quasar::SymbolTableList::Data>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::SymbolTableList::Data>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<quasar::FeatureExtractor>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void quasar::OnlineLatticeBiglmFasterDecoder::setUpDecoderPassData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 1240;
  *(a2 + 96) = *(a1 + 1240);
  v6 = a2 + 96;
  v7 = *(a1 + 1248);
  *(a2 + 112) = *(a1 + 1256);
  *(a2 + 104) = v7;
  std::vector<BOOL>::operator=(a2 + 120, a1 + 1264);
  if (v6 != v5)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a2 + 144), *(a1 + 1288), *(a1 + 1296), (*(a1 + 1296) - *(a1 + 1288)) >> 2);
  }

  v8 = *(a1 + 1176);
  v9 = *(a1 + 1184);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 176);
  *(a2 + 168) = v8;
  *(a2 + 176) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(a1 + 1176);
  v12 = *(a1 + 1184);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 192);
  *(a2 + 184) = v11;
  *(a2 + 192) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  *(a2 + 832) = *(a1 + 2160);
  v14 = *(a1 + 1376);
  v15 = *(a1 + 1384);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a2 + 224);
  *(a2 + 216) = v14;
  *(a2 + 224) = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(a1 + 1312);
  *(a2 + 208) = *(a1 + 1320);
  *(a2 + 200) = v17;
  v18 = *(a1 + 2184);
  v19 = (*(**(v18 + 96) + 112))(*(v18 + 96));
  if ((v19 & 0x8000000000000000) == 0)
  {
    v19 += *(v18 + 120);
  }

  *(a2 + 448) = v19;
  *(a2 + 672) = *(a1 + 2152);
  if (a2 + 680 != a1 + 2112)
  {
    *(a2 + 712) = *(a1 + 2144);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>((a2 + 680), *(a1 + 2128), 0);
  }

  *(a2 + 664) = *(a1 + 2157);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100]((a2 + 248));
  v20 = *(a1 + 2232);
  for (i = *(a1 + 2240); v20 != i; v20 += 2)
  {
    v22 = v20[1];
    *&v37 = *v20;
    *(&v37 + 1) = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    if ((*(a1 + 2308) & 1) != 0 || *(a1 + 448) == 1)
    {
      v23 = *v20;
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getCachedModel(v23, &__p, &lpsrc);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (lpsrc)
      {
        if (v24)
        {
          v25 = v24;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPath(*v20, &__p);
          quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getOriginStr(*v20, &v33);
          quasar::StateAccessRecordingFst::getWrappedFst(v25, &v32);
          std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::string,std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,0>();
        }
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }
    }

    std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100]((a2 + 248), &v37);
    if (*(&v37 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
    }
  }

  if (a2 + 272 != a1 + 2280)
  {
    std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>((a2 + 272), *(a1 + 2280), *(a1 + 2288), (*(a1 + 2288) - *(a1 + 2280)) >> 4);
  }

  v26 = (a2 + 296);
  if (v26 != (a1 + 1104))
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v26, *(a1 + 1104), *(a1 + 1112), (*(a1 + 1112) - *(a1 + 1104)) >> 2);
  }

  if (*(a1 + 2304) > 0.0)
  {
    v27 = *(*a3 + 24);
    v28 = *(v27 + 272);
    v29 = *(v27 + 280);
    while (v28 != v29)
    {
      v30 = *v28;
      v28 += 2;
      LODWORD(__p.__r_.__value_.__l.__data_) = *(v30 + 12);
      std::vector<float>::push_back[abi:ne200100](v26, &__p);
    }
  }
}

void sub_1B50726C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

uint64_t **std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,float>,std::__tree_node<std::__value_type<int,float>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          *(v8 + 8) = *(v9 + 8);
          std::__tree<int>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_multi<std::pair<int const,float> const&>();
  }

  return result;
}

void sub_1B5072C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AddBackoffFst(uint64_t a1, unsigned int *a2, uint64_t *a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 1);
  if (v8 && (*(*v8 + 24))(v8) != -1)
  {
    v14 = *a2;
    LOBYTE(v20[0].__locale_) = 1;
    v20[1].__locale_ = a6;
    v20[2].__locale_ = 0;
    v20[3].__locale_ = v14;
    v20[4].__locale_ = 0x100000002;
    v21 = xmmword_1B5AE71B0;
    v22 = 0;
    v23 = 0;
    std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::vector[abi:ne200100](v19, 1uLL);
    std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>,std::__wrap_iter<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>(v19, v19[1], *a3, a3[1], (a3[1] - *a3) >> 5);
    end = 0;
    memset(&__p, 0, sizeof(__p));
    if (a4)
    {
      fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetLabels(a3, &v17);
      __p = v17;
      end = v17.__end_;
    }

    std::vector<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,0>(&__p, end, *a8, (a8 + 8));
    operator new();
  }

  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v20, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "the base LM is NULL or empty", 28);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v20);
  }

  return 0;
}

void sub_1B5072EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, char *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  __p = &a15;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

quasar::Geography *quasar::Geography::Geography(quasar::Geography *this)
{
  *this = 0;
  quasar::GeoMemoriesConfig::GeoMemoriesConfig(this + 4);
  *(this + 8) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = this + 64;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 10) = this + 88;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 120) = 0;
  return this;
}

void sub_1B5073058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  quasar::PTree::~PTree(va);
  _Unwind_Resume(a1);
}

void std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>,std::__wrap_iter<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 5)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 5;
      if (v18 >= a5)
      {
        std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__move_range(a1, a2, a1[1], a2 + 32 * a5);
        v19 = v7 + 32 * a5;
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(a1, v17 + a3, a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__move_range(a1, v5, v10, v5 + 32 * a5);
        v19 = v17 + v7;
      }

      std::__copy_impl::operator()[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(v23, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    v23[4] = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, v15);
    }

    v20 = 32 * v16;
    v23[0] = 0;
    v23[1] = (32 * v16);
    v23[3] = 0;
    do
    {
      *v20 = *v7;
      *(v20 + 8) = *(v7 + 8);
      v21 = *(v7 + 16);
      *(v20 + 16) = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      *(v20 + 24) = *(v7 + 24);
      v20 += 32;
      v7 += 32;
    }

    while (v20 != 32 * v16 + 32 * a5);
    v23[2] = (32 * v16 + 32 * a5);
    v5 = std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(a1, v7, a3, v9);
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

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(void *a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v6 = a5;
  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 2)
  {
    v16 = (v10 - __src) >> 2;
    if (v16 >= a5)
    {
      v28 = &__src[4 * a5];
      v29 = &v10[-4 * a5];
      v30 = a1[1];
      while (v29 < v10)
      {
        v31 = *v29;
        v29 += 4;
        *v30++ = v31;
      }

      a1[1] = v30;
      if (v10 != v28)
      {
        memmove(&__src[4 * a5], __src, v10 - v28);
      }

      *__src = *(v7 + 7);
      if (v6 != 1)
      {
        v32 = __src;
        do
        {
          v33 = v7[1];
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = v7[2];
              v23 = *v34 == v7;
              v7 = v34;
            }

            while (!v23);
          }

          *(v32 + 1) = *(v34 + 7);
          v32 += 4;
          v7 = v34;
        }

        while (v6-- > 2);
      }
    }

    else
    {
      v50 = a3;
      std::__advance[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(&v50, (v10 - __src) >> 2);
      v18 = v50;
      v19 = a1[1];
      if (v50 != a4)
      {
        v20 = v50;
        do
        {
          *v19 = *(v20 + 7);
          v21 = v20[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v20[2];
              v23 = *v22 == v20;
              v20 = v22;
            }

            while (!v23);
          }

          v19 += 4;
          v20 = v22;
        }

        while (v22 != a4);
      }

      a1[1] = v19;
      if (v16 >= 1)
      {
        v24 = &__src[4 * v6];
        v25 = &v19[-4 * v6];
        v26 = v19;
        while (v25 < v10)
        {
          v27 = *v25;
          v25 += 4;
          *v26 = v27;
          v26 += 4;
        }

        a1[1] = v26;
        if (v19 != v24)
        {
          memmove(&__src[4 * v6], __src, v19 - v24);
        }

        if (v18 != v7)
        {
          v46 = __src;
          do
          {
            *v46 = *(v7 + 7);
            v47 = v7[1];
            if (v47)
            {
              do
              {
                v48 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v7[2];
                v23 = *v48 == v7;
                v7 = v48;
              }

              while (!v23);
            }

            ++v46;
            v7 = v48;
          }

          while (v48 != v18);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v10[-*a1] >> 2);
  if (v12 >> 62)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 1 > v12)
  {
    v12 = v14 >> 1;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v15 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
  }

  v36 = 4 * (v13 >> 2);
  v37 = (v36 + 4 * a5);
  v38 = v36;
  do
  {
    *v38 = *(v7 + 7);
    v38 += 4;
    v39 = v7[1];
    if (v39)
    {
      do
      {
        v40 = v39;
        v39 = *v39;
      }

      while (v39);
    }

    else
    {
      do
      {
        v40 = v7[2];
        v23 = *v40 == v7;
        v7 = v40;
      }

      while (!v23);
    }

    v7 = v40;
  }

  while (v38 != v37);
  memcpy(v37, __src, a1[1] - __src);
  v41 = *a1;
  v42 = &v37[a1[1] - __src];
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v36 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v36;
}

void fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::BackoffDeterministicOnDemandFst(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_1F2D06D18;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__init_with_size[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(a1 + 8, *a2, a2[1], (a2[1] - *a2) >> 5);
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 48, *a4, a4[1], (a4[1] - *a4) >> 2);
  v7 = 0uLL;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 104) = 1065353216;
  v27 = 0;
  v26 = 0u;
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    v10 = 1;
    do
    {
      if (v10)
      {
        v11 = *(v8 + 8);
        if (!v11 || (*(*v11 + 24))(v11) == -1)
        {
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "the base LM is NULL or empty", 28);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(v25);
          }

          operator new();
        }
      }

      v12 = *(v8 + 8);
      if (!v12 || (*(*v12 + 24))(v12) == -1)
      {
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>((a1 + 72), v8);
      }

      else
      {
        v13 = *(v8 + 8);
        v14 = *v8;
        v15 = *(&v26 + 1);
        if (*(&v26 + 1) >= v27)
        {
          v17 = (*(&v26 + 1) - v26) >> 4;
          v18 = v17 + 1;
          if ((v17 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v19 = v27 - v26;
          if ((v27 - v26) >> 3 > v18)
          {
            v18 = v19 >> 3;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF0)
          {
            v20 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>>(&v26, v20);
          }

          v21 = 16 * v17;
          *v21 = v14;
          *(v21 + 8) = v13;
          v16 = 16 * v17 + 16;
          memcpy((16 * v17 - (*(&v26 + 1) - v26)), v26, *(&v26 + 1) - v26);
          v22 = v26;
          *&v26 = 16 * v17 - (*(&v26 + 1) - v26);
          *(&v26 + 1) = v16;
          v27 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          **(&v26 + 1) = v14;
          *(v15 + 8) = v13;
          v16 = v15 + 16;
        }

        *(&v26 + 1) = v16;
      }

      v10 = 0;
      v8 += 32;
    }

    while (v8 != v9);
    v7 = v26;
  }

  v24 = *(&v7 + 1);
  v23 = v7;
  do
  {
    (*(**(v23 + 8) + 64))(*(v23 + 8), 268697600, 1);
    (*(**(v23 + 8) + 64))(*(v23 + 8), 268697600, 0);
    v23 += 16;
  }

  while (v23 != v24);
  if (*(&v26 + 1) - v26 > 0x10uLL)
  {
    operator new();
  }

  if (*(&v26 + 1) - v26 != 16)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  *(a1 + 32) = *(v26 + 8);
  operator new();
}

void sub_1B5073AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, void **a11)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a11);
  v16 = *(v14 - 112);
  if (v16)
  {
    *(v14 - 104) = v16;
    operator delete(v16);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v13);
  v17 = *v12;
  if (*v12)
  {
    *(v11 + 56) = v17;
    operator delete(v17);
  }

  a11 = a9;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__init_with_size[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5073C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = -1431699456;
  v9 = 1431633920;
  v10 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v11 = v10;
  if (!a4 || (v12 = v10 & 0x3FFFFFFF0000 | (2 * v10) & 0x2AAAAAAA0000 | (v10 >> 1) & 0x155555550000 | 7, (a2 & ~v12) != 0))
  {
    v11 = v10 & 7;
    v48 = v11;
    v13 = (*(*a1 + 16))(a1);
    if ((a2 & 0xF3C00000000) != 0 && v13)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = &v48;
      fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, &v43);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v37 = a3;
      v14 = a2 & 0xC0000;
      v15 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v15 = 0x10425A850000;
      }

      v16 = v11 | v15;
      v17 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v16 |= 0x100000uLL;
      }

      v48 = v16;
      memset(&v42, 0, sizeof(v42));
      memset(&v41, 0, sizeof(v41));
      v40 = 0;
      (*(*a1 + 128))(a1, &v38);
      v18 = 0;
LABEL_12:
      if (v38)
      {
        if (!(*(*v38 + 16))(v38))
        {
          if (v38)
          {
            v19 = (*(*v38 + 24))();
LABEL_18:
            v20 = (*(*a1 + 40))(a1, v19);
            v42.__end_ = v42.__begin_;
            v41.__end_ = v41.__begin_;
            if (v14)
            {
              std::vector<int>::reserve(&v42, v20);
            }

            if (v17)
            {
              std::vector<int>::reserve(&v41, v20);
            }

            v47 = 0;
            (*(*a1 + 136))(a1, v19, &v43);
            v21 = 1;
            while (1)
            {
              if (v43)
              {
                if ((*(*v43 + 24))(v43))
                {
                  if (v43)
                  {
                    (*(*v43 + 8))();
                    goto LABEL_62;
                  }

LABEL_60:
                  if (v46)
                  {
                    --*v46;
                  }

LABEL_62:
                  if (v14 && (std::__sort<std::__less<int,int> &,int *>(), v29 = v42.__end_ - v42.__begin_, v29 >= 2))
                  {
                    v30 = v29 - 1;
                    v31 = v42.__begin_ + 1;
                    while (*v31 != *(v31 - 1))
                    {
                      ++v31;
                      if (!--v30)
                      {
                        goto LABEL_67;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v17)
                    {
LABEL_76:
                      if (v18 >= 1)
                      {
                        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      v35 = (*(*a1 + 32))(a1, v19);
                      *&v43 = v35;
                      v50 = 2139095040;
                      if (v35 == INFINITY)
                      {
                        if ((*(*a1 + 40))(a1, v19, INFINITY, v35) != 1)
                        {
                          v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        *&v43 = v35;
                        v50 = 0;
                        if (v35 != 0.0)
                        {
                          v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        ++v18;
                      }

                      if (v38)
                      {
                        (*(*v38 + 32))(v38);
                      }

                      else
                      {
                        ++v40;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_67:
                    if (!v17)
                    {
                      goto LABEL_76;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v32 = v41.__end_ - v41.__begin_;
                  if (v32 >= 2)
                  {
                    v33 = v32 - 1;
                    v34 = v41.__begin_ + 1;
                    while (*v34 != *(v34 - 1))
                    {
                      ++v34;
                      if (!--v33)
                      {
                        goto LABEL_76;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_76;
                }

                if (v43)
                {
                  v22 = (*(*v43 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v47 >= v45)
              {
                goto LABEL_60;
              }

              v22 = v44 + 16 * v47;
LABEL_29:
              v23 = *v22;
              v24 = (v22 + 4);
              v25 = *v22;
              if (*v22 != *(v22 + 4))
              {
                v48 = v48 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v25 = *v24;
              }

              if (v23 | v25)
              {
                if (v23)
                {
                  if (!v25)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_35;
                }

                v26 = v48;
              }

              else
              {
                v26 = v48 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v48 = v26 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (!v25)
              {
LABEL_39:
                v48 = v48 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
                if (v21)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_35:
              if (v21)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v23 < v9)
              {
                v48 = v48 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v25 < v8)
              {
                v48 = v48 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v27 = *(v22 + 8);
              v50 = LODWORD(v27);
              v49 = 0;
              if (v27 != 0.0)
              {
                v50 = LODWORD(v27);
                v49 = 2139095040;
                if (v27 != INFINITY)
                {
                  v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v28 = *(v22 + 12);
              if (v28 <= v19)
              {
                v48 = v48 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v28 != v19 + 1)
              {
                v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v9 = *v22;
              v8 = *(v22 + 4);
              if (v14)
              {
                std::vector<int>::push_back[abi:ne200100](&v42.__begin_, v22);
              }

              if (v17)
              {
                std::vector<int>::push_back[abi:ne200100](&v41.__begin_, v24);
              }

              if (v43)
              {
                (*(*v43 + 40))(v43);
                v21 = 0;
              }

              else
              {
                v21 = 0;
                ++v47;
              }
            }
          }

LABEL_17:
          v19 = v40;
          goto LABEL_18;
        }

        if (v38)
        {
          (*(*v38 + 8))();
        }
      }

      else if (v40 < v39)
      {
        goto LABEL_17;
      }

      a3 = v37;
      if ((*(*a1 + 24))(a1) != -1 && (*(*a1 + 24))(a1))
      {
        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v41.__begin_)
      {
        v41.__end_ = v41.__begin_;
        operator delete(v41.__begin_);
      }

      if (v42.__begin_)
      {
        v42.__end_ = v42.__begin_;
        operator delete(v42.__begin_);
      }

      v11 = v48;
    }

    v12 = v11 & 0x3FFFFFFF0000 | (2 * v11) & 0x2AAAAAAA0000 | (v11 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v12;
  return v11;
}

void sub_1B5074640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, a3, 1);
  }
}

void sub_1B5074848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5074990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Clear(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Destroy(*(v2 + 8 * v3++));
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return std::__list_imp<char *>::clear(a1 + 4);
}

uint64_t fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::DefaultCacheStore(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a1 + 32;
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Clear(a1);
  *(a1 + 56) = *(a1 + 40);
  v4 = *(a2 + 8);
  *(a1 + 72) = v4 == 0;
  *(a1 + 76) = -1;
  *(a1 + 80) = 0;
  *(a1 + 88) = *a2;
  if (v4 <= 0x1FA0)
  {
    v4 = 8096;
  }

  *(a1 + 96) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void *fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>::DefaultReplaceStateTable(void *a1)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), 0, a1 + 1, a1 + 2);
  a1[15] = a1 + 14;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  a1[16] = a1 + 14;
  std::unordered_set<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashEqual,std::allocator<long>>::unordered_set((a1 + 17), 0, a1 + 15, a1 + 16);
  a1[24] = 0;
  a1[25] = 0;
  a1[26] = 0;
  return a1;
}

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

void std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 40));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::vector<TVertex const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(a1, v10);
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

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 48);
  if (result != a2)
  {
    if (result)
    {
      (*(*result + 8))(result);
    }

    if (a2)
    {
      result = (*(*a2 + 16))(a2);
    }

    else
    {
      result = 0;
    }

    *(a1 + 48) = result;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

BOOL fst::CompatSymbols(fst *this, const fst::SymbolTable *a2, const fst::SymbolTable *a3)
{
  if (FLAGS_fst_compat_symbols != 1)
  {
    return 1;
  }

  v4 = 1;
  if (this && a2)
  {
    v6 = a3;
    (*(*this + 64))(v24, this);
    (*(*a2 + 64))(__p, a2);
    v7 = v25;
    if ((v25 & 0x80u) == 0)
    {
      v8 = v25;
    }

    else
    {
      v8 = v24[1];
    }

    v9 = v23;
    v10 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v9 = __p[1];
    }

    if (v8 == v9)
    {
      if ((v25 & 0x80u) == 0)
      {
        v11 = v24;
      }

      else
      {
        v11 = v24[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      v4 = memcmp(v11, v12, v8) == 0;
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 0;
      if ((v23 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v7 & 0x80) != 0)
        {
          operator delete(v24[0]);
        }

        if (!(v4 | v6 ^ 1u))
        {
          std::string::basic_string[abi:ne200100]<0>(v24, "WARNING");
          v14 = fst::LogMessage::LogMessage(__p, v24);
          v15 = fst::cerr(v14);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "CompatSymbols: Symbol table check sums do not match. ", 53);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Table sizes are ", 16);
          v18 = (*(*this + 120))(this);
          v19 = MEMORY[0x1B8C84C30](v17, v18);
          v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " and ", 5);
          v21 = (*(*a2 + 120))(a2);
          MEMORY[0x1B8C84C30](v20, v21);
          fst::LogMessage::~LogMessage(__p);
          if (v25 < 0)
          {
            operator delete(v24[0]);
          }

          return 0;
        }

        return v4;
      }
    }

    operator delete(__p[0]);
    v7 = v25;
    goto LABEL_22;
  }

  return v4;
}

void sub_1B50752A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(void *a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    v4 = a1[30];
    if ((a1[31] - v4) >= 9)
    {
      v5 = 1;
      do
      {
        if ((*(**(v4 + 8 * v5) + 64))(*(v4 + 8 * v5), 4, 0))
        {
          a1[1] |= 4uLL;
        }

        ++v5;
        v4 = a1[30];
      }

      while (v5 < (a1[31] - v4) >> 3);
    }
  }

  return a1[1] & a2;
}

void fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SortedMatcher(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F2D070B8;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_1B5AE3080;
  *(a1 + 74) = 0;
  fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::MemoryPool((a1 + 80), 1);
}

void sub_1B5075588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~MemoryPool((v18 + 80));
  _Unwind_Resume(a1);
}

void **kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::CacheAddedDfst(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }

  return std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](a1, (*(a1 + 32) - 16));
}

void sub_1B5075730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AddNnlm(uint64_t a1, const void *a2, unsigned int **a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int8 a9, uint64_t a10)
{
  memset(v39, 0, 24);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v14 = *a3;
  v13 = a3[1];
  if (*a3 != v13)
  {
    do
    {
      if (!a7)
      {
        goto LABEL_8;
      }

      v15 = *a5;
      v16 = a5[1];
      if (*a5 != v16)
      {
        while (*v15 != *v14)
        {
          if (++v15 == v16)
          {
            goto LABEL_8;
          }
        }
      }

      if (v15 == v16)
      {
LABEL_8:
        __p[0] = 0;
        __p[1] = 0;
        *&v29 = 0;
        v34 = 0;
        v35 = 0;
        v33 = &v34;
        v17 = kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AddBackoffFst(a1, v14, __p, 0, a9, a10, 0x20000, &v33);
        std::__tree<int>::destroy(&v33, v34);
        v33 = __p;
        std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&v33);
        if (v17)
        {
          std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](v39, (*(a1 + 8) - 16));
          v18 = *(a1 + 8);
          v19 = *(v18 - 8);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          *(a1 + 8) = v18 - 16;
          std::vector<int>::push_back[abi:ne200100](&v36, v14);
        }
      }

      v14 += 8;
    }

    while (v14 != v13);
  }

  if (a7 && *a5 != a5[1])
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v32[0] = 0;
    v32[1] = 0;
    v31 = v32;
    *__p = 0u;
    v29 = 0u;
    v30 = 1065353216;
    kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AddNnlm(a1, a7, &v33, a4, a5, &v31, 0, a8, -1.0, a9, a10, __p);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(__p);
    std::__tree<int>::destroy(&v31, v32[0]);
    __p[0] = &v33;
    std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
    v21 = *a5;
    v20 = a5[1];
    while (v21 != v20)
    {
      std::vector<int>::push_back[abi:ne200100](&v36, v21);
      std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](v39, (*(a1 + 8) - 16));
      ++v21;
    }

    v22 = *(a1 + 8);
    v23 = *(v22 - 8);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    *(a1 + 8) = v22 - 16;
  }

  if (a2)
  {
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v29 = 0;
      if (!a7)
      {
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *a5, a5[1], (a5[1] - *a5) >> 2);
      }

      operator new();
    }

    {
      operator new();
    }
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "the provided NnlmEvaluator is neither DNN nor RNN", 49);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  __p[0] = v39;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](__p);
  return 0;
}

void sub_1B5075C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v20 = *(v18 - 152);
  if (v20)
  {
    *(v18 - 144) = v20;
    operator delete(v20);
  }

  __p = (v18 - 128);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D01190;
  a1[1] = 48 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B5075E48(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::RecurrentNeuralDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::RecurrentNeuralDeterministicFst(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, char a6, int **a7, uint64_t a8, float a9, uint64_t a10)
{
  v14 = a1;
  *a1 = &unk_1F2D07348;
  *(a1 + 8) = a2;
  v15 = *(a2 + 8);
  *(a1 + 16) = v15;
  *(a1 + 40) = 0u;
  v51 = (a1 + 40);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  v50 = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x100000000;
  *(a1 + 120) = 0u;
  v57 = (a1 + 120);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  v59 = (a1 + 160);
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 0u;
  v60 = (a1 + 200);
  *(a1 + 216) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 232) = 1065353216;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  v55 = (a1 + 280);
  v56 = (a1 + 240);
  *(a1 + 296) = 0u;
  *(a1 + 320) = 0u;
  v54 = (a1 + 320);
  *(a1 + 312) = 1065353216;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0;
  v58 = (a1 + 360);
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = a6;
  *(a1 + 388) = a9;
  *(a1 + 24) = *(a2 + 464);
  v16 = Ngram::getorder(v15);
  *(v14 + 28) = kaldi::quasar::NnlmDecoderWord::GetWordId(v15, v16);
  if (v59 != a10)
  {
    *(v14 + 192) = *(a10 + 32);
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(v59, *(a10 + 16), 0);
  }

  if (a4[1] != *a4)
  {
    v17 = 0;
    v18 = 0;
    v19 = (a8 + 8);
    v52 = v14;
    v53 = a3;
    do
    {
      WordId = kaldi::quasar::NnlmDecoderWord::GetWordId(*(v14 + 16), *(*a3 + 4 * v17));
      if (WordId == *(v14 + 28))
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "The LME class ", 14);
          v21 = MEMORY[0x1B8C84C00](v20, *(*a3 + 4 * v17));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " is not modeled by the NNLM", 27);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
        }
      }

      else
      {
        std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](v58, (*a4 + 16 * v17));
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v57, (*a3 + 4 * v17));
        p_WordId = &WordId;
        *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v56, &WordId) + 5) = v18;
        if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a5, (*a3 + 4 * v17)))
        {
          v22 = (*a3 + 4 * v17);
          v23 = a5;
          v24 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a5, v22);
          v25 = v24;
          if (!v24)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v26 = v19;
          v27 = *v22;
          p_WordId = (v24 + 20);
          v28 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v55, v24 + 5);
          *(v28 + 5) = v27;
          *(v28 + 6) = 1;
          v29 = *v22;
          p_WordId = (v25 + 3);
          v30 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v55, v25 + 6);
          *(v30 + 5) = v29;
          *(v30 + 6) = 2;
          p_WordId = v22;
          v31 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v55, v22);
          *(v31 + 5) = v18;
          *(v31 + 6) = 0;
          v19 = v26;
          v32 = *v26;
          a5 = v23;
          v14 = v52;
          a3 = v53;
          if (!v32)
          {
            goto LABEL_17;
          }

          v33 = *v22;
          v34 = v19;
          do
          {
            if (*(v32 + 28) >= v33)
            {
              v34 = v32;
            }

            v32 = *(v32 + 8 * (*(v32 + 28) < v33));
          }

          while (v32);
          if (v34 != v19 && v33 >= *(v34 + 7))
          {
            v35 = v34[8];
          }

          else
          {
LABEL_17:
            v35 = 1.0;
          }

          __p = v18;
          v62 = v35;
          std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::pair<int,double>>(v54, &__p);
        }

        __p = *(*a3 + 4 * v17);
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>(v59, &__p);
        ++v18;
      }

      ++v17;
    }

    while (v17 < (a4[1] - *a4) >> 4);
  }

  v36 = *a7;
  v37 = a7[1];
  if (*a7 != v37)
  {
    do
    {
      v38 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a5, v36);
      v39 = v38;
      if (!v38)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v40 = *v36;
      p_WordId = (v38 + 20);
      v41 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v60, v38 + 5);
      *(v41 + 5) = v40;
      *(v41 + 6) = 1;
      v42 = *v36;
      p_WordId = (v39 + 3);
      v43 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v60, v39 + 6);
      *(v43 + 5) = v42;
      *(v43 + 6) = 2;
      ++v36;
    }

    while (v36 != v37);
  }

  if (*(v14 + 264) < ((*(v14 + 368) - *(v14 + 360)) >> 4))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "multiple LME FSTs are mapped into the same non-terminals classes, wrong config?", 79);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

    std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100](v58);
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(v57);
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(v56);
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(v55);
  }

  *(v14 + 112) = kaldi::MatrixBase<float>::NumCols(*(v14 + 16)) + 1;
  v44 = *(v14 + 16);
  v45 = kaldi::quasar::NnlmDecoderWord::BosSymbol(v44);
  LODWORD(p_WordId) = kaldi::quasar::NnlmDecoderWord::GetWordId(v44, v45);
  std::vector<int>::vector[abi:ne200100](&__p, 1uLL);
  LODWORD(v44) = *(v14 + 104);
  p_WordId = &__p;
  *(std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(v51, &__p) + 10) = v44;
  std::vector<std::vector<int>>::push_back[abi:ne200100](v50, &__p);
  LODWORD(v44) = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(*(v14 + 16));
  v46 = kaldi::MatrixBase<float>::NumCols(*(v14 + 16));
  v47 = log((v44 - v46 + 1));
  *(v14 + 32) = v47;
  if (__p)
  {
    v62 = *&__p;
    operator delete(__p);
  }

  return v14;
}

void sub_1B5076450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
  __p = a19;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a15);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a16);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a17);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a21);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a20);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a18);
  __p = a11;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(a12);
  _Unwind_Resume(a1);
}

void std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(void *a1, int *a2)
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
    if (*&v2 <= v3)
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

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
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
  }

  return result;
}

uint64_t *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a1, a2);
  if (result)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(void *a1, unint64_t *a2)
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
        if (result[2] == v3)
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
      if (v3 == v8)
      {
        if (result[2] == v3)
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

void *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::pair<int,double>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B5076E0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1B5076F1C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B5077054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

quasar::EagerDecision *quasar::EagerDecision::EagerDecision(quasar::EagerDecision *this, const quasar::EagerConfig *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v5;
  *(this + 32) = a3;
  std::ostringstream::basic_ostringstream[abi:ne200100](this + 5);
  *(this + 304) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 46) = 0;
  *(this + 308) = 0;
  *(this + 316) = 0;
  *(this + 188) = 1;
  *(this + 378) = 0;
  *(this + 98) = 0;
  *(this + 396) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 56) = 0;
  *(this + 228) = 1;
  *(this + 458) = 0;
  *(this + 116) = 0;
  *(this + 468) = 0;
  *(this + 65) = 0;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 472) = 0u;
  *(this + 264) = 1;
  *(this + 530) = 0;
  *(this + 67) = 0;
  *(this + 136) = 0;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 150) = 0;
  if (quasar::gLogLevel >= 5)
  {
    memset(v11, 0, sizeof(v11));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "ENABLED ", 8);
    v7 = quasar::operator<<(v6, this);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " hasSilencePosterior=", 21);
    MEMORY[0x1B8C84BD0](v8, a3);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v11);
  }

  *(this + 48) = this;
  if (a3)
  {
    v9 = *(this + 1);
    if (v9 >= 1)
    {
      quasar::MovingAverage::init((this + 536), v9);
    }
  }

  return this;
}

void sub_1B5077274(_Unwind_Exception *a1)
{
  std::deque<int>::~deque[abi:ne200100](v2);
  quasar::EagerFeatures::~EagerFeatures((v1 + 464));
  quasar::EagerFeatures::~EagerFeatures((v1 + 392));
  quasar::EagerFeatures::~EagerFeatures((v1 + 312));
  std::ostringstream::~ostringstream(v1 + 40);
  _Unwind_Resume(a1);
}

void quasar::MovingAverage::init(quasar::MovingAverage *this, uint64_t a2)
{
  if (!a2)
  {
    memset(v2, 0, sizeof(v2));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "n must be positive");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v2);
  }

  *this = a2;

  quasar::MovingAverage::clear(this);
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN6quasar23LatticeGenerationOutputENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D14968;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 24) = 0x2FFFFFFFFLL;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 64));
  return a1;
}

void sub_1B50774E0(_Unwind_Exception *a1)
{
  shared_owners = v1[2].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>&,std::allocator<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D149B8;
  std::allocator<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>&>(&v2, (a1 + 3), a2);
}

void sub_1B50775D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 24;
    v4 = *(v1 - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 24;
    }
  }
}

uint64_t fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InterpolateDeterministicOnDemandFst(uint64_t a1, uint64_t *a2, int a3, char a4)
{
  *a1 = &unk_1F2D07528;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  v6 = (a1 + 40);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  v7 = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 32) = a3;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v9 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
LABEL_14:
    *(a1 + 108) = -1;
  }

  else
  {
    v12 = 0.0;
    do
    {
      v13 = *(v9 + 16);
      if (v13 >= 0.00097656 || (a4 & 1) == 0)
      {
        if (!*v9 || (***v9)(*v9) == -1)
        {
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "the individual DeterministicOnDemandFst is NULL or empty", 56);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(v20);
          }

          goto LABEL_14;
        }

        LODWORD(v20[0]) = (***v9)();
        std::vector<int>::push_back[abi:ne200100](&v21, v20);
        std::vector<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::push_back[abi:ne200100](v5, v9);
        v12 = v12 + v13;
        v8 = a2[1];
      }

      v9 += 24;
    }

    while (v9 != v8);
    v14 = *(a1 + 8);
    if (*(a1 + 16) == v14)
    {
      goto LABEL_14;
    }

    if (!*(a1 + 32))
    {
      if (v12 != 1.0)
      {
        v16 = fabs(v12 + -1.0);
        v17 = fabsf(v12 + -1.0) <= ((fabsf(v12) + 1.0) * 0.01) && SLODWORD(v16) < 2139095040;
        if (!v17 && kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "you are requesting linear interpolation, but the total weight is not 1: ", 72);
          std::ostream::operator<<();
          kaldi::KaldiWarnMessage::~KaldiWarnMessage(v20);
          v14 = *v5;
        }
      }

      v19 = *(a1 + 16);
      while (v14 != v19)
      {
        v14[4] = -logf(v14[4]);
        v14 += 6;
      }
    }

    *(a1 + 108) = 0;
    v24 = &v21;
    *(std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(v6, &v21) + 10) = 0;
    std::vector<std::vector<int>>::push_back[abi:ne200100](v7, &v21);
    *(a1 + 104) = 1;
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return a1;
}

void sub_1B5077B24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *(v3 - 136);
  if (v5)
  {
    *(v3 - 128) = v5;
    operator delete(v5);
  }

  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v2);
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>>::__emplace_back_slow_path<fst::ReplaceStackPrefix<int,int> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  *&v16 = v16 + 24;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B5077D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__shared_ptr_emplace<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::__shared_ptr_emplace[abi:ne200100]<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,std::vector<int> &,std::allocator<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>,0>(void *a1, uint64_t (****a2)(void), unsigned int **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14A58;
  fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::LeftContextDeterministicOnDemandFst((a1 + 3), *a2, a3);
  return a1;
}

uint64_t fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::LeftContextDeterministicOnDemandFst(uint64_t a1, uint64_t (***a2)(void), unsigned int **a3)
{
  *a1 = &unk_1F2D14AA8;
  *(a1 + 8) = a2;
  v5 = (**a2)(a2);
  *(a1 + 16) = v5;
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v8 = v5;
    do
    {
      if ((*(**(a1 + 8) + 32))(*(a1 + 8), v8, *v6, v11))
      {
        v8 = v12;
      }

      else
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Invalid word symbol, clipping left context", 42);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v10);
        }

        v8 = (***(a1 + 8))(*(a1 + 8));
      }

      *(a1 + 16) = v8;
      ++v6;
    }

    while (v6 != v7);
  }

  return a1;
}

uint64_t fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeDeterministicOnDemandFst(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v6 = *a2;
  v5 = a2[1];
  *a1 = &unk_1F2D14B60;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 72) = 1065353216;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = *a4;
  if ((***(a1 + 8))() == -1 || (***(a1 + 24))(*(a1 + 24)) == -1)
  {
    *(a1 + 104) = 0xFFFFFFFF00000000;
  }

  else
  {
    *(a1 + 108) = 0;
    v8 = (***(a1 + 8))(*(a1 + 8));
    v9 = (***(a1 + 24))(*(a1 + 24));
    v12[0] = v8;
    v12[1] = v9;
    v10 = *(a1 + 108);
    *&v12[3] = v12;
    *(std::__hash_table<std::__hash_value_type<std::pair<int,int>,int>,std::__unordered_map_hasher<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,kaldi::PairHasher<int>,std::equal_to<std::pair<int,int>>,true>,std::__unordered_map_equal<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,std::equal_to<std::pair<int,int>>,kaldi::PairHasher<int>,true>,std::allocator<std::__hash_value_type<std::pair<int,int>,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int> const&>,std::tuple<>>((a1 + 40), v12) + 6) = v10;
    std::vector<std::pair<int,int>>::push_back[abi:ne200100](a1 + 80, v12);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_1B5078130(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[11] = v5;
    operator delete(v5);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2);
  v6 = v1[4];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = v1[2];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void std::allocator<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::shared_ptr<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a3[1];
  v14 = *a3;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a4[1];
  v12 = *a4;
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __asm { FMOV            V0.2S, #1.0 }

  v11 = _D0;
  fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeDeterministicOnDemandFst(a2, &v14, &v12, &v11);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1B5078200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::shared_ptr<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>> &,std::allocator<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14B10;
  std::allocator<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::shared_ptr<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>> &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<int,int>,int>,std::__unordered_map_hasher<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,kaldi::PairHasher<int>,std::equal_to<std::pair<int,int>>,true>,std::__unordered_map_equal<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,std::equal_to<std::pair<int,int>>,kaldi::PairHasher<int>,true>,std::allocator<std::__hash_value_type<std::pair<int,int>,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int> const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v2 + 7853 * v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 + 7853 * v3;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

void std::vector<std::pair<int,int>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
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

void std::vector<std::pair<int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::pair<int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 20 * a2;
  }
}

uint64_t *fst::MultiWayArcCache<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::MultiWayArcCache(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = 1 << -__clz(a3 >> 1);
  a1[2] = 0;
  a1[3] = v4;
  v5 = __clz(a2 >> 1);
  if (1 << -v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1 << -v5;
  }

  std::vector<std::pair<int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::resize(a1, v6);
  v8 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    v9 = 0;
    v10 = v7 - v8 - 20;
    v11 = vdupq_n_s64(v10 / 0x14);
    v12 = (v8 + 40);
    do
    {
      v13 = vdupq_n_s64(v9);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_1B5AE0060)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 10) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 5) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_1B5AE0050)))).i32[1])
      {
        *v12 = -1;
        v12[5] = -1;
      }

      v9 += 4;
      v12 += 20;
    }

    while (((v10 / 0x14 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v9);
  }

  return a1;
}

void sub_1B50786FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheDeterministicOnDemandFst(void *a1, uint64_t *a2, unint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = &unk_1F2D07280;
  a1[1] = v5;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  fst::MultiWayArcCache<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::MultiWayArcCache(a1 + 3, a3, 8uLL);
  a1[7] = 0;
  a1[8] = 0;
  return a1;
}

void sub_1B5078784(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,unsigned long const&,std::allocator<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,0>(void *a1, uint64_t *a2, unint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14BC8;
  std::allocator<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,unsigned long const&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::LatticeBiglmFasterTraceBackDecoder(uint64_t a1, uint64_t a2, __int128 *a3, void (***a4)(void), uint64_t a5)
{
  *a1 = &unk_1F2D14CB8;
  *(a1 + 8) = 0;
  v9 = a1 + 8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 16) = xmmword_1B5AE71B0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = a4;
  v10 = *a3;
  v11 = a3[2];
  *(a1 + 192) = a3[1];
  *(a1 + 208) = v11;
  *(a1 + 176) = v10;
  v12 = a3[3];
  v13 = a3[4];
  v14 = a3[5];
  *(a1 + 272) = *(a3 + 24);
  *(a1 + 240) = v13;
  *(a1 + 256) = v14;
  *(a1 + 224) = v12;
  *(a1 + 280) = a5;
  *(a1 + 288) = 0;
  *(a1 + 295) = (*(*a2 + 64))(a2, 0x10000000, 0) == 0x10000000;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = a1 + 312;
  kaldi::quasar::TokenHeap::TokenHeap((a1 + 328), *(a3 + 17), *(a3 + 18));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 520) = 1065353216;
  *(a1 + 528) = 0;
  (*(*a2 + 24))(a2);
  (**a4)(a4);
  v15 = *(a1 + 280);
  if (v15 && 0xAAAAAAAAAAAAAAABLL * ((*(v15 + 48) - *(v15 + 40)) >> 2) >= 0x40)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "dynamic_class_tag_dict_->getNumOfClasses() <= TokenHeap::MAX_CLASS_ID", 69);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::SetSize(v9, 0x3E8uLL);
  return a1;
}

uint64_t kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::OnlineLatticeBiglmFasterDecoder(uint64_t a1, uint64_t a2, __int128 *a3, void (***a4)(void), uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v13 = kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::LatticeBiglmFasterTraceBackDecoder(a1, a2, a3, a4, a8);
  *v13 = &unk_1F2D14C68;
  v14 = a3[1];
  *(v13 + 536) = *a3;
  *(v13 + 552) = v14;
  v15 = a3[2];
  v16 = a3[3];
  v17 = a3[5];
  *(v13 + 600) = a3[4];
  *(v13 + 616) = v17;
  *(v13 + 568) = v15;
  *(v13 + 584) = v16;
  v18 = a3[6];
  v19 = a3[7];
  v20 = a3[9];
  *(v13 + 664) = a3[8];
  *(v13 + 680) = v20;
  *(v13 + 632) = v18;
  *(v13 + 648) = v19;
  *(v13 + 696) = a5;
  *(v13 + 704) = *a6;
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(v13 + 712, (a6 + 2));
  *(a1 + 776) = a7;
  *(a1 + 784) = *a3;
  *(a1 + 792) = a1 + 176;
  *(a1 + 800) = 1;
  *(a1 + 840) = 0;
  *(a1 + 872) = 0;
  *(a1 + 804) = 0u;
  kaldi::Timer::Reset((a1 + 848), v21);
  *(a1 + 880) = 0;
  return a1;
}

void sub_1B5078C9C(_Unwind_Exception *a1)
{
  kaldi::SilencePhoneSet::~SilencePhoneSet((v1 + 704));
  kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~LatticeBiglmFasterTraceBackDecoder(v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>&,kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig &,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*,kaldi::DecodableInterface *,kaldi::SilencePhoneSet &,kaldi::TransitionModel const&,kaldi::quasar::DynamicClassTagDict *,std::allocator<kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,0>(void *a1, uint64_t a2, __int128 *a3, void (****a4)(void), uint64_t *a5, _DWORD *a6, uint64_t a7, uint64_t *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14C18;
  kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::OnlineLatticeBiglmFasterDecoder((a1 + 3), a2, a3, *a4, *a5, a6, a7, *a8);
  return a1;
}

uint64_t fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

kaldi::quasar::TokenHeap *kaldi::quasar::TokenHeap::TokenHeap(kaldi::quasar::TokenHeap *this, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::Token>::LazyBuffer(this, a2, 0);
  kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::ForwardLink>::LazyBuffer(v6 + 16, a3, 0);
  *(this + 8) = v4;
  *(this + 9) = a3;
  if (v4 >> 26)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "max_total_tokens <= MAX_TOK_ID", 30);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  return this;
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::Token>::LazyBuffer(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0;
  *(a1 + 12) = 1;
  if (!a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "count > 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  *(a1 + 8) = a2;
  if (a3)
  {
    *(a1 + 12) = a2;
  }

  address = 0;
  v5 = vm_allocate(*MEMORY[0x1E69E9A60], &address, 32 * a2, 1711276033);
  if (v5)
  {
    v16 = v5;
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
      v7 = MEMORY[0x1B8C84BB0](v18, a1);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": Could not vm_allocate ", 24);
      v9 = MEMORY[0x1B8C84C10](v8, a2);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " of ", 4);
      v11 = strlen((0x80000001B5B028AELL & 0x7FFFFFFFFFFFFFFFLL));
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, 0x80000001B5B028AELL & 0x7FFFFFFFFFFFFFFFLL, v11);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
      MEMORY[0x1B8C84C00](v13, v16);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v18);
    }

    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  *a1 = address;
  return a1;
}

void sub_1B5079008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::ForwardLink>::LazyBuffer(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0;
  *(a1 + 12) = 1;
  if (!a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "count > 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  *(a1 + 8) = a2;
  if (a3)
  {
    *(a1 + 12) = a2;
  }

  address = 0;
  v5 = vm_allocate(*MEMORY[0x1E69E9A60], &address, 24 * a2, 1711276033);
  if (v5)
  {
    v16 = v5;
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
      v7 = MEMORY[0x1B8C84BB0](v18, a1);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": Could not vm_allocate ", 24);
      v9 = MEMORY[0x1B8C84C10](v8, a2);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " of ", 4);
      v11 = strlen((0x80000001B5B028CELL & 0x7FFFFFFFFFFFFFFFLL));
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, 0x80000001B5B028CELL & 0x7FFFFFFFFFFFFFFFLL, v11);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
      MEMORY[0x1B8C84C00](v13, v16);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v18);
    }

    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  *a1 = address;
  return a1;
}

void sub_1B5079198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::SetSize(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 24);
  v4 = (a1 + 24);
  *(v4 - 1) = a2;
  if (a2 > (v4[1] - v5) >> 4)
  {
    v7 = v2;
    v8 = v3;
    v6 = 0uLL;
    std::vector<kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::HashBucket,std::allocator<kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::HashBucket>>::resize(v4, a2, &v6);
  }
}

void std::vector<kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::HashBucket,std::allocator<kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::HashBucket>>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 16;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 4;
    v10 = v6 - *a1;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::HashBucket>>(a1, v11);
    }

    v14 = 16 * v9;
    v15 = 16 * v9 + 16 * a2;
    v16 = 16 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 16;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void std::vector<kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::HashBucket,std::allocator<kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::HashBucket>>::resize(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::HashBucket,std::allocator<kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::HashBucket>>::__append(a1, a2 - v3, a3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::HashBucket>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t kaldi::ConstIntegerSet<int>::ConstIntegerSet(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 40, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  kaldi::ConstIntegerSet<int>::InitInternal(a1);
  return a1;
}

void sub_1B5079430(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  if (*v2)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ConstIntegerSet<int>::InitInternal(int *a1)
{
  *(a1 + 3) = 0;
  v3 = *(a1 + 5);
  v2 = *(a1 + 6);
  v4 = v2 - v3;
  if (v2 == v3)
  {
    v8 = 0;
    *a1 = 1;
    *(a1 + 8) = 0;
  }

  else
  {
    v5 = *v3;
    *a1 = v5;
    v6 = *(v2 - 1);
    a1[1] = v6;
    v7 = v6 - v5 + 1;
    if (v7 == v4 >> 2)
    {
      v8 = 0;
      *(a1 + 8) = 1;
    }

    else
    {
      v8 = 0;
      *(a1 + 8) = 0;
      if (v7 < 8 * v4)
      {
        std::vector<BOOL>::resize((a1 + 4), v7, 0);
        v9 = *(a1 + 5);
        v10 = *(a1 + 6) - v9;
        if (v10)
        {
          v11 = v10 >> 2;
          v12 = *a1;
          v13 = *(a1 + 2);
          if (v11 <= 1)
          {
            v14 = 1;
          }

          else
          {
            v14 = v11;
          }

          do
          {
            v15 = *v9++;
            v8 = 1;
            *(v13 + (((v15 - v12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v15 - v12);
            --v14;
          }

          while (v14);
        }

        else
        {
          v8 = 1;
        }
      }
    }
  }

  *(a1 + 9) = v8;
}

uint64_t kaldi::quasar::TokenHeap::Clear(kaldi::quasar::TokenHeap *this)
{
  kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::Token>::Clear(this);
  kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::ForwardLink>::Clear(this + 16);
  kaldi::quasar::TokenHeap::TokenHeap(v3, *(this + 8), *(this + 9));
  kaldi::quasar::TokenHeap::operator=(this, v3);
  kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::ForwardLink>::Clear(&v4);
  return kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::Token>::Clear(v3);
}

void sub_1B50795B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::quasar::TokenHeap::~TokenHeap(va);
  _Unwind_Resume(a1);
}

double kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ResetDecoder(uint64_t a1)
{
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 888) = 0u;
  v2 = (a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != -1)
  {
    v4 = *(a1 + 32);
    do
    {
      v5 = (v4 + 16 * v3);
      v5[1] = 0;
      v3 = *v5;
    }

    while (v3 != -1);
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  if (v6)
  {
    v7 = *(a1 + 56);
    do
    {
      v8 = v6;
      v6 = *(v6 + 16);
      *(v8 + 16) = v7;
      v7 = v8;
    }

    while (v6);
    *(a1 + 56) = v8;
  }

  kaldi::quasar::TokenHeap::Clear((a1 + 328));
  v9 = *(a1 + 88);
  *(a1 + 384) = *(a1 + 376);
  *(a1 + 408) = *(a1 + 400);
  *(a1 + 96) = v9;
  *(a1 + 296) = 0;
  *(a1 + 288) = 0;
  *(a1 + 291) = 0;
  std::__tree<int>::destroy(a1 + 304, *(a1 + 312));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = a1 + 312;
  *(a1 + 288) = 0;
  v10 = (*(**(a1 + 160) + 24))(*(a1 + 160));
  v11 = ((***(a1 + 168))() << 32) + v10;
  std::vector<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList,std::allocator<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList>>::resize((a1 + 88), 1uLL);
  v12 = kaldi::quasar::TokenHeap::NewToken((a1 + 328), 0.0, 0.0, 0, 0, 0);
  **(a1 + 88) = v12;
  v13 = v11 % *(a1 + 24);
  v14 = (*(a1 + 32) + 16 * v13);
  v15 = kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::New(v2);
  *v15 = v11;
  *(v15 + 8) = v12;
  v17 = v14[1];
  if (v17)
  {
    *(v15 + 16) = *(v17 + 16);
    *(v17 + 16) = v15;
    v14[1] = v15;
  }

  else
  {
    v18 = *(a1 + 16);
    if (v18 != -1)
    {
      v2 = (*(*(a1 + 32) + 16 * v18 + 8) + 16);
    }

    *v2 = v15;
    *(v15 + 16) = 0;
    *v14 = v18;
    v14[1] = v15;
    *(a1 + 16) = v13;
  }

  ++*(a1 + 288);
  *(a1 + 424) = 0;
  *(a1 + 440) = *(a1 + 432);
  *(a1 + 384) = *(a1 + 376);
  *(a1 + 408) = *(a1 + 400);
  kaldi::Timer::Reset((a1 + 848), v16);
  kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ProcessNonemitting(a1, 0, *(a1 + 536));
  kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::UpdateTime(a1, 1u);
  result = 0.0;
  *(a1 + 804) = 0u;
  return result;
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::Token>::Clear(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = 32 * v2;
      result = MEMORY[0x1B8C874F0](*MEMORY[0x1E69E9A60]);
      if (result)
      {
        v11 = result;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
        v4 = MEMORY[0x1B8C84BB0](v12, v1);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": Could not vm_deallocate ", 26);
        v6 = MEMORY[0x1B8C84C30](v5, v3);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " bytes of ", 10);
        v8 = strlen((0x80000001B5B028AELL & 0x7FFFFFFFFFFFFFFFLL));
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, 0x80000001B5B028AELL & 0x7FFFFFFFFFFFFFFFLL, v8);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": ", 2);
        MEMORY[0x1B8C84C00](v10, v11);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
      }

      *v1 = 0;
      v1[1] = 0;
    }
  }

  return result;
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::ForwardLink>::Clear(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = 24 * v2;
      result = MEMORY[0x1B8C874F0](*MEMORY[0x1E69E9A60]);
      if (result)
      {
        v11 = result;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
        v4 = MEMORY[0x1B8C84BB0](v12, v1);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": Could not vm_deallocate ", 26);
        v6 = MEMORY[0x1B8C84C30](v5, v3);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " bytes of ", 10);
        v8 = strlen((0x80000001B5B028CELL & 0x7FFFFFFFFFFFFFFFLL));
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, 0x80000001B5B028CELL & 0x7FFFFFFFFFFFFFFFLL, v8);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": ", 2);
        MEMORY[0x1B8C84C00](v10, v11);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
      }

      *v1 = 0;
      v1[1] = 0;
    }
  }

  return result;
}

void *kaldi::quasar::TokenHeap::operator=(void *a1, void *a2)
{
  if (a1 != a2)
  {
    kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::Token>::Clear(a1);
    *a1 = *a2;
    a1[1] = a2[1];
    *a2 = 0;
    a2[1] = 0;
    kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::ForwardLink>::Clear((a1 + 2));
    a1[2] = a2[2];
    a1[3] = a2[3];
    a2[2] = 0;
    a2[3] = 0;
  }

  a1[4] = a2[4];
  return a1;
}

void std::vector<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList,std::allocator<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList,std::allocator<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList>>::__append(a1, a2 - v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList,std::allocator<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 3)
  {
    if (a2)
    {
      v11 = v4 + 8 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 4) = 257;
        v4 += 8;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 3;
    v9 = v5 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList>>(a1, v10);
    }

    v12 = 8 * v8;
    v13 = 8 * v8 + 8 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      *(v14 + 4) = 257;
      v14 += 8;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

uint64_t kaldi::quasar::TokenHeap::NewToken(kaldi::quasar::TokenHeap *this, float a2, float a3, int a4, int a5, int a6)
{
  v7 = *(this + 1);
  result = HIDWORD(v7);
  if (HIDWORD(v7) == v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    kaldi::quasar::TooManyTokensError::TooManyTokensError(exception, "Ran out of token storage");
  }

  *(this + 3) = HIDWORD(v7) + 1;
  v9 = *this + 32 * HIDWORD(v7);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 12) = a2;
  *(v9 + 16) = a3;
  *(v9 + 20) = a4;
  *(v9 + 24) = a5;
  *(v9 + 8) = a6;
  return result;
}

void sub_1B5079D18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::TokenHeap::NewForwardLink(kaldi::quasar::TokenHeap *this, int a2, int a3, int a4, float a5, float a6, int a7)
{
  v8 = *(this + 3);
  result = HIDWORD(v8);
  if (HIDWORD(v8) == v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    kaldi::quasar::TooManyForwardLinksError::TooManyForwardLinksError(exception, "Ran out of forward links in storage");
  }

  *(this + 7) = HIDWORD(v8) + 1;
  v10 = *(this + 2) + 24 * HIDWORD(v8);
  *(v10 + 4) = a2;
  *(v10 + 8) = a4;
  *(v10 + 12) = a5;
  *(v10 + 16) = a6;
  *(v10 + 20) = a7;
  *v10 = 2 * a3;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__emplace_unique_key_args<int,std::pair<int const,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetArc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v4 = (*(*a1 + 24))(a1, a2, a3, a4, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1B507A0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetArc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v29 = a3;
  v27 = 0;
  v28 = 0;
  if (*a5)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN3fst14BackoffArcInfoENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 72), &v29))
  {
    goto LABEL_4;
  }

  if (fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetNonPhiArc(a1, a2, v29, a4, &v27))
  {
    goto LABEL_44;
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v9 == v10)
  {
LABEL_4:
    v8 = 0;
    goto LABEL_45;
  }

  while (a2 == -1)
  {
LABEL_27:
    if (++v9 == v10)
    {
      goto LABEL_4;
    }
  }

  v11 = 0.0;
  v12 = a2;
  while (1)
  {
    LODWORD(v26) = *v9;
    if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 72), &v26))
    {
      if (*(a1 + 40) == 1)
      {
        fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(*(a1 + 128), v12);
        if (!fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(*(a1 + 128), v26))
        {
          goto LABEL_10;
        }

        v16 = fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(*(a1 + 128));
      }

      else
      {
        fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(*(a1 + 112), v12);
        if (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(*(a1 + 112), v26))
        {
          goto LABEL_10;
        }

        v16 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(*(a1 + 112));
      }

      v17 = *(v16 + 12);
      if (v17 != -1)
      {
        v18 = *(v16 + 8);
        if (fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetNonPhiArc(a1, v17, v29, a4, &v27))
        {
          break;
        }
      }
    }

LABEL_10:
    BackoffState = fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetBackoffState(a1, v12, &v26);
    v12 = BackoffState;
    v14 = NAN;
    if (v11 != -INFINITY)
    {
      v14 = NAN;
      if (*&v26 != -INFINITY)
      {
        v14 = INFINITY;
        if (*&v26 != INFINITY && v11 != INFINITY)
        {
          v14 = v11 + *&v26;
        }
      }
    }

    v11 = v14;
    if (BackoffState == -1)
    {
      goto LABEL_27;
    }
  }

  v19 = *(a4 + 8);
  v20 = NAN;
  if (v19 != -INFINITY && v18 != -INFINITY)
  {
    v21 = v19 == INFINITY || v18 == INFINITY;
    v22 = v18 + v19;
    if (v21)
    {
      v22 = INFINITY;
    }

    v20 = NAN;
    if (v22 != -INFINITY && v11 != -INFINITY)
    {
      v20 = INFINITY;
      v23 = v22 == INFINITY || v11 == INFINITY;
      v24 = v11 + v22;
      if (!v23)
      {
        v20 = v24;
      }
    }
  }

  *(a4 + 8) = v20;
LABEL_44:
  v8 = 1;
LABEL_45:
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  return v8;
}

void sub_1B507A388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    v3 = result;
    *(result + 16) = a2;
    if (*(result + 32) == 3)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v11, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SortedMatcher: bad match type", 29);
      fst::LogMessage::~LogMessage(&v11);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      *(v3 + 74) = 1;
    }

    v6 = *(v3 + 24);
    if (v6)
    {
      fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Reinit(v6, *(v3 + 8), a2);
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = *(v3 + 136);
      if (v7)
      {
        *(v3 + 136) = v7[5];
      }

      else
      {
        v7 = fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::Allocate((v3 + 88), 1);
        v7[5] = 0;
      }

      v8 = *(v3 + 8);
      v7[4] = 0;
      (*(*v8 + 136))(v8, a2, v7);
      *(v3 + 24) = v7;
    }

    if (*v7)
    {
      (*(**v7 + 80))(*v7, 16, 16);
    }

    result = (*(**(v3 + 8) + 40))(*(v3 + 8), a2);
    *(v3 + 48) = result;
    *(v3 + 68) = a2;
  }

  return result;
}

void sub_1B507A568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetNonPhiArc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 40) == 1)
  {
    fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(*(a1 + 128), a2);
    if (fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(*(a1 + 128), a3))
    {
      v10 = fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(*(a1 + 128));
LABEL_6:
      *a4 = *v10;
      return 1;
    }
  }

  else
  {
    fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(*(a1 + 112), a2);
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(*(a1 + 112), a3))
    {
      v10 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(*(a1 + 112));
      goto LABEL_6;
    }
  }

  BackoffState = fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetBackoffState(a1, a2, v17);
  if (BackoffState == -1)
  {
    return 0;
  }

  v17[2] = v17[0];
  v17[1] = INFINITY;
  if (v17[0] == INFINITY)
  {
    result = 0;
    *(a4 + 8) = 2139095040;
  }

  else
  {
    result = fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetNonPhiArc(a1, BackoffState, a3, a4, a5, v17[0]);
    if (result)
    {
      v13 = *(a4 + 8);
      v14 = NAN;
      if (v13 != -INFINITY)
      {
        v14 = NAN;
        if (v17[0] != -INFINITY)
        {
          v14 = INFINITY;
          v15 = v17[0] == INFINITY || v13 == INFINITY;
          v16 = v13 + v17[0];
          if (!v15)
          {
            v14 = v16;
          }
        }
      }

      *(a4 + 8) = v14;
      if (*a5)
      {
        ++*(*a5 + 8);
      }

      return 1;
    }
  }

  return result;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 48 * a2;
  v4 = a1[1];
  if (192 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ArcIterator(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D26AC0;
  *(a1 + 8) = a2;
  v4 = *(a2 + 72);
  v5 = *(v4 + 4 * a3);
  v6 = v5;
  if (v5 <= 0)
  {
    v6 = *(*(a2 + 104) + 8 * -v5 + 4);
  }

  *(a1 + 16) = *(a2 + 88) + 8 * v6 - 8;
  if (*(a2 + 112) - 1 == a3)
  {
    if (v5 <= 0)
    {
      v5 = *(*(a2 + 104) + 8 * -v5 + 4);
    }

    v8 = *(a2 + 120) - v5 + 1;
  }

  else
  {
    v7 = *(v4 + 4 * a3 + 4);
    if (v7 <= 0)
    {
      v7 = *(*(a2 + 104) + 8 * -v7 + 4);
    }

    if (v5 <= 0)
    {
      v5 = *(*(a2 + 104) + 8 * -v5 + 4);
    }

    v8 = v7 - v5;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 15;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(a1);
  return a1;
}

{
  v4 = *(a2 + 8);
  *a1 = &unk_1F2D26AC0;
  *(a1 + 8) = v4;
  v5 = *(v4 + 72);
  v6 = *(v5 + 4 * a3);
  v7 = v6;
  if (v6 <= 0)
  {
    v7 = *(*(v4 + 104) + 8 * -v6 + 4);
  }

  *(a1 + 16) = *(v4 + 88) + 8 * v7 - 8;
  if (*(v4 + 112) - 1 == a3)
  {
    if (v6 <= 0)
    {
      v6 = *(*(v4 + 104) + 8 * -v6 + 4);
    }

    v9 = *(v4 + 120) - v6 + 1;
  }

  else
  {
    v8 = *(v5 + 4 * a3 + 4);
    if (v8 <= 0)
    {
      v8 = *(*(v4 + 104) + 8 * -v8 + 4);
    }

    if (v6 <= 0)
    {
      v6 = *(*(v4 + 104) + 8 * -v6 + 4);
    }

    v9 = v8 - v6;
  }

  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 56) = 15;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(a1);
  return a1;
}

float fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 < *(a1 + 40))
  {
    v2 = (*(a1 + 16) + 8 * v1);
    v3 = *(*(a1 + 8) + 144);
    v4 = *(v3 + 8);
    if ((*(a1 + 56) & 0xF) == 2)
    {
      *(a1 + 28) = *v2 >> (v4 + 1);
    }

    else if ((*(a1 + 56) & 0xF) == 1)
    {
      *(a1 + 24) = *v2 >> (v4 + 1);
    }

    else
    {
      v6 = *v2;
      v5 = v2[1];
      v7 = v6 >> (v4 + 1);
      v8 = ((v6 & *(v3 + 12)) >> 1);
      if (v6)
      {
        v8 = -v8;
      }

      result = *(v3 + 4) * v8;
      *(a1 + 24) = v7 | (v7 << 32);
      *(a1 + 32) = LODWORD(result) | (v5 << 32);
    }
  }

  return result;
}

uint64_t fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 112) - 1 == a2)
  {
    v9[1] = v2;
    v9[2] = v3;
    fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(v4, a2, v9);
    return v9[0];
  }

  else
  {
    v5 = *(v4 + 72);
    v6 = *(v5 + 4 * a2 + 4);
    if (v6 <= 0)
    {
      v6 = *(*(v4 + 104) + 8 * -v6 + 4);
    }

    v7 = *(v5 + 4 * a2);
    if (v7 <= 0)
    {
      v7 = *(*(v4 + 104) + 8 * -v7 + 4);
    }

    return v6 - v7;
  }
}

float fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFlags_(uint64_t a1, char a2, int a3)
{
  v3 = *(a1 + 56);
  v4 = v3 & ~a3 | a2 & 0xF;
  *(a1 + 56) = v4;
  if (v3 != 15 && v3 != v4)
  {
    return fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(a1);
  }

  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_3()
{

  JUMPOUT(0x1B8C85310);
}

void OUTLINED_FUNCTION_0_8()
{

  JUMPOUT(0x1B8C85310);
}

void OUTLINED_FUNCTION_0_14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Search(uint64_t a1)
{
  v2 = **(a1 + 24);
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    (*(*v2 + 80))(v2, v3, 15);
  }

  if (*(a1 + 40) < *(a1 + 36))
  {
    v4 = *(a1 + 24);
    if (*v4)
    {
      (*(**v4 + 56))(*v4);
    }

    else
    {
      v4[4] = 0;
    }

    while (1)
    {
      v19 = *(a1 + 24);
      if (*v19)
      {
        if ((*(**v19 + 24))(*v19))
        {
          return 0;
        }
      }

      else if (v19[4] >= v19[2])
      {
        return 0;
      }

      v20 = *(a1 + 24);
      v21 = *v20;
      if (*(a1 + 32))
      {
        v22 = v21 ? (*(*v21 + 32))(v21) : v20[1] + 16 * v20[4];
        v23 = (v22 + 4);
      }

      else
      {
        v23 = (v21 ? (*(*v21 + 32))(v21) : v20[1] + 16 * v20[4]);
      }

      v24 = *(a1 + 40);
      v25 = *v23 <= v24 ? 0 : 7;
      if (*v23 == v24)
      {
        v25 = 1;
      }

      if (v25)
      {
        break;
      }

      v26 = *(a1 + 24);
      if (*v26)
      {
        (*(**v26 + 40))(*v26);
      }

      else
      {
        ++v26[4];
      }
    }

    return v25 == 1;
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
LABEL_68:
    v28 = *(a1 + 24);
    result = *v28;
    if (!*v28)
    {
      v28[4] = v6;
      return result;
    }

    (*(*result + 64))(result, v6);
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = (v6 + v5) >> 1;
    v8 = *(a1 + 24);
    if (*v8)
    {
      (*(**v8 + 64))(*v8, (v6 + v5) >> 1);
    }

    else
    {
      v8[4] = v7;
    }

    v9 = *(a1 + 24);
    v10 = *v9;
    if (*(a1 + 32))
    {
      v11 = v10 ? (*(*v10 + 32))(v10) : v9[1] + 16 * v9[4];
      v12 = (v11 + 4);
    }

    else
    {
      v12 = (v10 ? (*(*v10 + 32))(v10) : v9[1] + 16 * v9[4]);
    }

    v13 = *(a1 + 40);
    if (*v12 <= v13)
    {
      break;
    }

    v5 = (v6 + v5) >> 1;
LABEL_25:
    if (v6 >= v5)
    {
      goto LABEL_68;
    }
  }

  if (*v12 < v13)
  {
    v6 = v7 + 1;
    goto LABEL_25;
  }

  while (v7 > v6)
  {
    v14 = *(a1 + 24);
    --v7;
    if (*v14)
    {
      (*(**v14 + 64))(*v14, v7);
    }

    else
    {
      v14[4] = v7;
    }

    v15 = *(a1 + 24);
    v16 = *v15;
    if (*(a1 + 32))
    {
      if (v16)
      {
        v17 = (*(*v16 + 32))(v16);
      }

      else
      {
        v17 = v15[1] + 16 * v15[4];
      }

      v18 = (v17 + 4);
    }

    else if (v16)
    {
      v18 = (*(*v16 + 32))(v16);
    }

    else
    {
      v18 = (v15[1] + 16 * v15[4]);
    }

    if (*v18 != *(a1 + 40))
    {
      v29 = *(a1 + 24);
      v30 = v7 + 1;
      if (*v29)
      {
        (*(**v29 + 64))(*v29, v30);
      }

      else
      {
        v29[4] = v30;
      }

      return 1;
    }
  }

  return 1;
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 73) = 1;
  if (*(a1 + 74) == 1)
  {
    v3 = 0;
    *(a1 + 72) = 0;
    *(a1 + 40) = -1;
  }

  else
  {
    *(a1 + 72) = a2 == 0;
    if (a2 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + 40) = v4;
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Search(a1))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + 72);
    }
  }

  return v3 & 1;
}

uint64_t fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetBackoffState(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 40) != 1)
  {
    v6 = *(a1 + 120);
    if (!v6)
    {
      operator new();
    }

    fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Reinit(v6, *(a1 + 32), a2);
    v7 = *(a1 + 120);
    if (*v7)
    {
      if (((*(**v7 + 24))(*v7) & 1) == 0)
      {
        v7 = *(a1 + 120);
        if (*v7)
        {
          v9 = (*(**v7 + 32))(*v7);
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else if (v7[4] < v7[2])
    {
LABEL_15:
      v9 = (v7[1] + 16 * v7[4]);
      goto LABEL_16;
    }

    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 136);
  if (!v5)
  {
    operator new();
  }

  fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Reinit(v5, *(a1 + 32), a2);
  fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFlags(*(a1 + 136), 16, 16);
  fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFlags(*(a1 + 136), 1, 15);
  fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFlags(*(a1 + 136), 8, 8);
  v8 = *(a1 + 136);
  if (v8[4] >= v8[6])
  {
    return 0xFFFFFFFFLL;
  }

  v9 = fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(v8);
LABEL_16:
  if (*v9)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v9[2];
  return v9[3];
}

uint64_t fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Reinit(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!v6)
  {
    goto LABEL_5;
  }

  result = (*(*v6 + 16))(v6, a3);
  if (result)
  {
    return result;
  }

  if (*a1)
  {
    (*(**a1 + 8))(*a1);
  }

  else
  {
LABEL_5:
    v8 = a1[3];
    if (v8)
    {
      --*v8;
    }
  }

  a1[4] = 0;
  v9 = *(*a2 + 136);

  return v9(a2, a3, a1);
}

uint64_t fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Reinit(void *a1, int a2)
{
  v2 = a1[1];
  v3 = *(v2 + 72);
  v4 = *(v3 + 4 * a2);
  v5 = v4;
  if (v4 <= 0)
  {
    v5 = *(*(v2 + 104) + 8 * -v4 + 4);
  }

  a1[2] = *(v2 + 88) + 8 * v5 - 8;
  if (*(v2 + 112) - 1 == a2)
  {
    if (v4 <= 0)
    {
      v4 = *(*(v2 + 104) + 8 * -v4 + 4);
    }

    v7 = *(v2 + 120) - v4 + 1;
  }

  else
  {
    v6 = *(v3 + 4 * a2 + 4);
    if (v6 <= 0)
    {
      v6 = *(*(v2 + 104) + 8 * -v6 + 4);
    }

    if (v4 <= 0)
    {
      v4 = *(*(v2 + 104) + 8 * -v4 + 4);
    }

    v7 = v6 - v4;
  }

  a1[5] = v7;
  a1[6] = 0;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(a1);
  return 1;
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    return a1 + 56;
  }

  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 16 * v3[4];
  }

  (*(**v3 + 80))(*v3, 15, 15);
  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 16 * v3[4];
  }

  v4 = *(**v3 + 32);

  return v4();
}

uint64_t fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetArc(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a3;
  if (*a5)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN3fst13InterpArcInfoENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v8 = *(a1 + 80);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  __p = 0;
  v42 = 0;
  v43 = 0;
  v9 = *(a1 + 8);
  if (v9 == *(a1 + 16))
  {
    v31 = 0;
  }

  else
  {
    v10 = 0;
    v34 = a3;
    v35 = 0;
    v11 = (v8 + 24 * a2);
    v12 = -1;
    do
    {
      if (*a5)
      {
        _ZNSt3__115allocate_sharedB8ne200100IN3fst7ArcInfoENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      v40 = 0uLL;
      v13 = (*(**v9 + 24))(*v9, *(*v11 + v10), v6, &v36, &v40);
      v14 = v42;
      if (v13)
      {
        if (v42 >= v43)
        {
          v17 = (v42 - __p) >> 2;
          if ((v17 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v18 = (v43 - __p) >> 1;
          if (v18 <= v17 + 1)
          {
            v18 = v17 + 1;
          }

          if (v43 - __p >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v19 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v19);
          }

          v23 = (4 * v17);
          *v23 = v37[0];
          v15 = 4 * v17 + 4;
          v24 = v23 - (v42 - __p);
          memcpy(v24, __p, v42 - __p);
          v25 = __p;
          __p = v24;
          v42 = v15;
          v43 = 0;
          if (v25)
          {
            operator delete(v25);
          }

          v6 = v34;
        }

        else
        {
          *v42 = v37[0];
          v15 = (v14 + 4);
        }

        v42 = v15;
        if (v12 == -1)
        {
          v12 = HIDWORD(v36);
        }

        std::vector<int>::push_back[abi:ne200100](&v44, v37 + 1);
        if (*a5)
        {
          std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](8, &v40);
          v39 = v37[0];
          std::vector<float>::push_back[abi:ne200100](0x20, &v39);
        }

        v35 = 1;
      }

      else
      {
        if (v42 >= v43)
        {
          v20 = (v42 - __p) >> 2;
          if ((v20 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v21 = (v43 - __p) >> 1;
          if (v21 <= v20 + 1)
          {
            v21 = v20 + 1;
          }

          if (v43 - __p >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v22 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v22);
          }

          v26 = (4 * v20);
          *v26 = 2139095040;
          v16 = 4 * v20 + 4;
          v27 = v26 - (v42 - __p);
          memcpy(v27, __p, v42 - __p);
          v28 = __p;
          __p = v27;
          v42 = v16;
          v43 = 0;
          if (v28)
          {
            operator delete(v28);
          }

          v6 = v34;
        }

        else
        {
          *v42 = 2139095040;
          v16 = (v14 + 4);
        }

        v42 = v16;
        std::vector<int>::push_back[abi:ne200100](&v44, (*v11 + v10));
        if (*a5)
        {
          std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](8, &v40);
          v39 = 2139095040;
          std::vector<float>::push_back[abi:ne200100](0x20, &v39);
        }
      }

      if (*(&v40 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
      }

      v9 += 3;
      v10 += 4;
    }

    while (v9 != *(a1 + 16));
    if (v35)
    {
      *a4 = v6;
      *(a4 + 4) = v12;
      InterpolatedWeight = fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetInterpolatedWeight(a1, &__p);
      *(a4 + 8) = InterpolatedWeight;
      if (*a5)
      {
        MEMORY[0x38] = v12;
        MEMORY[0x40] = LODWORD(InterpolatedWeight);
      }

      v36 = 0;
      v37[0] = 0;
      v37[1] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v36, v44, v45, (v45 - v44) >> 2);
      v38 = *(a1 + 104);
      *(a4 + 12) = *(std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::pair<std::vector<int>,int> &>((a1 + 40), &v36) + 10);
      if (v30)
      {
        ++*(a1 + 104);
        std::vector<std::vector<int>>::push_back[abi:ne200100](a1 + 80, &v44);
      }

      if (v36)
      {
        v37[0] = v36;
        operator delete(v36);
      }

      v31 = 1;
    }

    else
    {
      v31 = 0;
    }
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  return v31;
}

void sub_1B507BB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::RecurrentNeuralDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetArc(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v89[0] = a3;
  v7 = a1 + 80;
  v8 = (*(a1 + 80) + 24 * a2);
  __p = 0;
  v87 = 0;
  v88 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v8, v8[1], (v8[1] - *v8) >> 2);
  v78[0] = a3;
  if (std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((v7 + 80), v78))
  {
    goto LABEL_2;
  }

  v12 = (a1 + 112);
  v11 = *(a1 + 112);
  v13 = *__p / v11;
  v85 = v13 - 1;
  if (v13 >= 1)
  {
    *__p %= v11;
    if ((v85 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 384) == 1)
  {
    v14 = v89[0];
    if (v14 >= quasar::artifact::AppLmArtifactLifeCycleStage::operator int(*(a1 + 16)))
    {
      goto LABEL_12;
    }

    if (*(a1 + 384))
    {
      goto LABEL_18;
    }
  }

  if (!kaldi::quasar::NnlmDecoderWord::IsPhoneWord(*(a1 + 16), v89[0]))
  {
LABEL_18:
    v16 = v87;
    if ((v87 - __p) >= 0xD && *(v87 - 2) == *v12)
    {
      v17 = *(v87 - 1);
      v87 -= 2;
      v78[0] = v16 - 3;
      v18 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 240), v16 - 3) + 5);
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
      v18 = -1;
    }

    if (*(a1 + 384) == 1)
    {
      *(a4 + 4) = v89[0];
      if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 280), v89))
      {
        v78[0] = v89;
        if (*(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 280), v89) + 6) == 1)
        {
          v78[0] = v89;
          v89[0] = *(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 280), v89) + 5);
          v78[0] = v89;
          v85 = *(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 280), v89) + 5);
        }
      }
    }

    WordId = kaldi::quasar::NnlmDecoderWord::GetWordId(*(a1 + 16), v89[0]);
    LODWORD(v80) = WordId;
    v20 = *(a1 + 28);
    if (WordId == v20)
    {
      if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 200), v89))
      {
        v78[0] = v89;
        if (*(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 200), v89) + 6) == 1)
        {
          v21 = *(a1 + 16);
          v78[0] = v89;
          v22 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 200), v89);
          LODWORD(v80) = kaldi::quasar::NnlmDecoderWord::GetWordId(v21, *(v22 + 5));
          std::vector<int>::push_back[abi:ne200100](&__p, &v80);
        }

        else
        {
          v78[0] = v89;
          if (*(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 200), v89) + 6) != 2)
          {
LABEL_94:
            if (v17 != -1)
            {
              v54 = *(*(a1 + 360) + 16 * v18);
              (*(*v54 + 16))(v54, v17);
              v56 = *(a4 + 8);
              v57 = NAN;
              if (v56 != -INFINITY && v55 != -INFINITY)
              {
                v57 = INFINITY;
                v58 = v56 == INFINITY || v55 == INFINITY;
                v59 = v55 + v56;
                if (!v58)
                {
                  v57 = v59;
                }
              }

              *(a4 + 8) = v57;
            }

            if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 120), v89))
            {
              *(a4 + 4) = 0;
              v78[0] = v87 - 1;
              v60 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 240), v87 - 1) + 5);
              std::vector<int>::push_back[abi:ne200100](&__p, (a1 + 112));
              v61 = *(*(a1 + 360) + 16 * v60);
              LODWORD(v78[0]) = (**v61)(v61);
              std::vector<int>::push_back[abi:ne200100](&__p, v78);
              if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 280), v89))
              {
                v78[0] = v89;
                if (!*(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 280), v89) + 6))
                {
                  v78[0] = v89;
                  v85 = *(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 280), v89) + 5);
                }
              }
            }

            else
            {
              *(a4 + 4) = a3;
            }

            goto LABEL_108;
          }
        }

        *(a4 + 8) = 0;
        goto LABEL_94;
      }

      if (*(a1 + 224))
      {
        goto LABEL_2;
      }
    }

    std::vector<int>::push_back[abi:ne200100](&__p, &v80);
    v23 = (*(**(a1 + 8) + 16))(*(a1 + 8), &__p);
    *(a4 + 8) = v23;
    if (WordId == v20)
    {
      v24 = NAN;
      if (v23 != -INFINITY)
      {
        v25 = *(a1 + 32);
        v24 = NAN;
        if (v25 != -INFINITY)
        {
          v24 = INFINITY;
          v26 = v25 == INFINITY || v23 == INFINITY;
          v27 = v23 + v25;
          if (!v26)
          {
            v24 = v27;
          }
        }
      }

      *(a4 + 8) = v24;
    }

    goto LABEL_94;
  }

LABEL_12:
  if (v85 < 0)
  {
    goto LABEL_43;
  }

LABEL_13:
  if ((kaldi::quasar::NnlmDecoderWord::IsPhoneWord(*(a1 + 16), v89[0]) & 1) != 0 || std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 120), v89))
  {
    goto LABEL_2;
  }

  if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 280), v89))
  {
    v15 = v85;
    goto LABEL_41;
  }

  v80 = v89;
  v80 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 280), v89) + 20;
  v15 = *(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 280), v80) + 5);
  if (v15 != v85)
  {
LABEL_2:
    v9 = 0;
    goto LABEL_3;
  }

LABEL_41:
  if ((v15 & 0x80000000) == 0)
  {
    v28 = 1;
    goto LABEL_45;
  }

LABEL_43:
  if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 280), v89))
  {
    goto LABEL_2;
  }

  v28 = v85 >= 0;
LABEL_45:
  v84 = 0;
  LmeArc = kaldi::quasar::RecurrentNeuralDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetLmeArc(a1, &__p, v89[0], v28, v78, &v84);
  v30 = LmeArc;
  v83 = LmeArc;
  if (LmeArc < 0)
  {
    goto LABEL_2;
  }

  v31 = *(a1 + 28);
  if ((v87 - __p) >= 0xD && *(v87 - 2) == *v12)
  {
    if (LmeArc == *(v87 - 3) && (v84 & 1) == 0)
    {
      *(v87 - 1) = HIDWORD(v78[1]);
      *(a4 + 4) = *(v78 + 4);
      if ((v85 & 0x80000000) == 0)
      {
        v77 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 320), &v85);
        if (v77)
        {
          *(a4 + 8) = *(a4 + 8) * *(v77 + 5);
        }

        if ((v85 & 0x80000000) == 0)
        {
          if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 280), v89))
          {
            v80 = v89;
            if (*(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 280), v89) + 6) == 2)
            {
              v85 = -1;
              v87 -= 2;
            }
          }
        }
      }
    }

    else
    {
      v32 = *(v87 - 1);
      v80 = v87 - 3;
      v33 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 240), v87 - 3) + 5);
      v87 -= 2;
      std::vector<int>::push_back[abi:ne200100](&__p, &v83);
      v34 = (*(**(a1 + 8) + 16))(*(a1 + 8), &__p);
      v35 = v34;
      if (v30 == v31)
      {
        v35 = NAN;
        if (v34 != -INFINITY)
        {
          v36 = *(a1 + 32);
          v35 = NAN;
          if (v36 != -INFINITY)
          {
            v37 = v36 == INFINITY || v34 == INFINITY;
            v38 = v34 + v36;
            if (v37)
            {
              v35 = INFINITY;
            }

            else
            {
              v35 = v38;
            }
          }
        }
      }

      std::vector<int>::push_back[abi:ne200100](&__p, (a1 + 112));
      std::vector<int>::push_back[abi:ne200100](&__p, &v78[1] + 1);
      *(a4 + 4) = HIDWORD(v78[0]);
      v39 = *(*(a1 + 360) + 16 * v33);
      v40 = (*(*v39 + 16))(v39, v32);
      *&v80 = v40;
      v89[1] = 2139095040;
      if (v40 == INFINITY)
      {
        goto LABEL_2;
      }

      v41 = NAN;
      if (v40 != -INFINITY)
      {
        v41 = NAN;
        if (*&v78[1] != -INFINITY)
        {
          v42 = *&v78[1] == INFINITY || v40 == INFINITY;
          v43 = v40 + *&v78[1];
          if (v42)
          {
            v43 = INFINITY;
          }

          v41 = NAN;
          if (v43 != -INFINITY && v35 != -INFINITY)
          {
            v41 = INFINITY;
            v44 = v43 == INFINITY || v35 == INFINITY;
            v45 = v35 + v43;
            if (!v44)
            {
              v41 = v45;
            }
          }
        }
      }

      *(a4 + 8) = v41;
    }
  }

  else
  {
    std::vector<int>::push_back[abi:ne200100](&__p, &v83);
    v46 = (*(**(a1 + 8) + 16))(*(a1 + 8), &__p);
    v47 = NAN;
    if (v46 != -INFINITY)
    {
      v47 = NAN;
      if (*&v78[1] != -INFINITY)
      {
        v47 = INFINITY;
        v48 = *&v78[1] == INFINITY || v46 == INFINITY;
        v49 = v46 + *&v78[1];
        if (!v48)
        {
          v47 = v49;
        }
      }
    }

    *(a4 + 8) = v47;
    if (v30 == v31)
    {
      v50 = NAN;
      if (v47 != -INFINITY)
      {
        v51 = *(a1 + 32);
        v50 = NAN;
        if (v51 != -INFINITY)
        {
          v50 = INFINITY;
          v52 = v51 == INFINITY || v47 == INFINITY;
          v53 = v47 + v51;
          if (!v52)
          {
            v50 = v53;
          }
        }
      }

      *(a4 + 8) = v50;
    }

    std::vector<int>::push_back[abi:ne200100](&__p, (a1 + 112));
    std::vector<int>::push_back[abi:ne200100](&__p, &v78[1] + 1);
    *(a4 + 4) = HIDWORD(v78[0]);
  }

LABEL_108:
  if (v89[0] == a3)
  {
    v62 = v87;
  }

  else
  {
    LOBYTE(v80) = 0;
    kaldi::quasar::RecurrentNeuralDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetLmeArc(a1, &__p, a3, v85 >= 0, v78, &v80);
    if ((v85 & 0x80000000) == 0)
    {
      v63 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 320), &v85);
      if (v63)
      {
        *&v78[1] = *&v78[1] * *(v63 + 5);
      }
    }

    v62 = v87;
    *(v87 - 1) = HIDWORD(v78[1]);
    *(a4 + 4) = HIDWORD(v78[0]);
    v64 = *(a4 + 8);
    v65 = NAN;
    if (v64 != -INFINITY)
    {
      v65 = NAN;
      if (*&v78[1] != -INFINITY)
      {
        v65 = INFINITY;
        v66 = *&v78[1] == INFINITY || v64 == INFINITY;
        v67 = v64 + *&v78[1];
        if (!v66)
        {
          v65 = v67;
        }
      }
    }

    *(a4 + 8) = v65;
  }

  v80 = 0;
  v81 = 0;
  v82 = 0;
  v68 = __p;
  v69 = (v62 - __p) >> 2;
  v70 = v69 - 1;
  if (v69 >= 4)
  {
    v71 = v69 - 3;
    if (*(v62 - 2) == *v12)
    {
      v70 = v71;
    }
  }

  v72 = *(a1 + 24);
  v73 = __OFSUB__(v70, v72);
  v74 = v70 - v72;
  if ((v74 < 0) ^ v73 | (v74 == 0))
  {
    v80 = __p;
    v81 = v62;
    __p = 0;
    v87 = 0;
    v82 = v88;
    v88 = 0;
  }

  else
  {
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v80, 0, __p + 4 * v74, v62, (v62 - (__p + 4 * v74)) >> 2);
    v68 = v80;
  }

  if ((v85 & 0x80000000) == 0)
  {
    *v68 += *v12 + *v12 * v85;
  }

  memset(v78, 0, sizeof(v78));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v78, v68, v81, (v81 - v68) >> 2);
  v79 = *(a1 + 108);
  v75 = std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::pair<std::vector<int>,int> &>((a1 + 40), v78);
  if (v76)
  {
    ++*(a1 + 108);
    std::vector<std::vector<int>>::push_back[abi:ne200100](v7, v78);
  }

  *a4 = a3;
  *(a4 + 12) = *(v75 + 10);
  if (v78[0])
  {
    v78[1] = v78[0];
    operator delete(v78[0]);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  v9 = 1;
LABEL_3:
  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_1B507C7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(uint64_t result, int a2)
{
  if (*(result + 16) != a2)
  {
    v3 = result;
    *(result + 16) = a2;
    if (*(result + 32) == 3)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v10, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SortedMatcher: bad match type", 29);
      fst::LogMessage::~LogMessage(&v10);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      *(v3 + 74) = 1;
    }

    v6 = *(v3 + 24);
    if (v6)
    {
      fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Reinit(v6, *(v3 + 8), a2);
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = *(v3 + 136);
      if (v7)
      {
        *(v3 + 136) = *(v7 + 200);
      }

      else
      {
        v7 = fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Link>::Allocate((v3 + 88), 1);
        *(v7 + 200) = 0;
      }

      *v7 = *(v3 + 8);
      *(v7 + 8) = a2;
      *(v7 + 16) = -1;
      *(v7 + 24) = -1;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 56) = 15;
      *(v7 + 196) = 0;
      *(v7 + 80) = 0;
      *(v7 + 136) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 152) = 0;
      *(v7 + 176) = 0;
      fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Reinit_(v7);
      *(v3 + 24) = v7;
    }

    fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFlags(v7, 16, 16);
    result = fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(*(*(v3 + 8) + 8), a2);
    *(v3 + 48) = result;
    *(v3 + 68) = a2;
  }

  return result;
}

void sub_1B507CA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 208 * a2;
  v4 = a1[1];
  if (832 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Reinit_(int *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (*(v3 + 160) == 1)
  {
    HasArcs = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(v3, a1[2]);
    v2 = *a1;
    if ((HasArcs & 1) == 0)
    {
      fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Expand(*(v2 + 8), a1[2]);
      v2 = *a1;
    }
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(v2 + 8), a1[2]);
  v6 = *a1;
  result = *(*a1 + 8);
  if (v5)
  {
    result = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(result, a1[2], a1 + 10);
    *(a1 + 6) = *(a1 + 12);
    *(a1 + 20) = a1 + 20;
    a1[44] = 15;
    *(a1 + 14) = 0;
    *(a1 + 17) = 0;
    return result;
  }

  *(a1 + 1) = *(*(*(result + 168) + 80) + 16 * a1[2]);
  v8 = a1[7];
  if (v8 == -1)
  {
    *(a1 + 6) = 0;
    return result;
  }

  v10 = (a1 + 28);
  v9 = *(a1 + 14);
  v11 = *(*(*(v6 + 8) + 240) + 8 * a1[6]);
  if (v9)
  {
    if (v11 != *(a1 + 18))
    {
      goto LABEL_9;
    }

    if ((*(*v9 + 16))(v9))
    {
      goto LABEL_12;
    }

    v9 = *v10;
    if (*v10)
    {
LABEL_9:
      (*(*v9 + 8))(v9);
    }

    *(a1 + 14) = 0;
    v8 = a1[7];
  }

  (*(*v11 + 136))(v11, v8, a1 + 14);
  *(a1 + 18) = v11;
LABEL_12:
  *(a1 + 20) = v10;
  v12 = fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeFinalArc(*(*a1 + 8), a1 + 2, (a1 + 45), 7);
  a1[49] = 7;
  if (*(a1 + 14))
  {
    result = (*(*v11 + 40))(v11, a1[7]);
  }

  else
  {
    result = *(a1 + 16);
  }

  *(a1 + 19) = result;
  *(a1 + 5) = v12;
  *(a1 + 6) = result + v12;
  a1[44] = 0;
  *(a1 + 10) = 0;
  *(a1 + 13) = 0;
  return result;
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 76) == a2)
  {
    v3 = (v2 + 80);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 48);
  if ((v8 & 2) == 0)
  {
    return 0;
  }

  *(v7 + 48) = v8 | 8;
  return 1;
}

uint64_t fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeFinalArc(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v4 = *(a2 + 3);
  if (v4 == -1)
  {
    return 0;
  }

  v9 = *(*(a1 + 240) + 8 * *(a2 + 2));
  LODWORD(v19) = (*(*v9 + 32))(v9, *(a2 + 3));
  v23 = 2139095040;
  if (*&v19 == INFINITY)
  {
    return 0;
  }

  v10 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (a3)
  {
    v11 = *(a1 + 136);
    if ((v11 & 0xFFFFFFFD) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a1 + 152);
    }

    *a3 = v12;
    if ((v11 - 1) >= 2)
    {
      v14 = *(a1 + 152);
    }

    else
    {
      v14 = 0;
    }

    *(a3 + 4) = v14;
    if ((a4 & 8) != 0)
    {
      v15 = (*(*(a1 + 168) + 192) + 24 * v10);
      v21 = 0;
      v22 = 0;
      __p = 0;
      std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(&__p, *v15, v15[1], (v15[1] - *v15) >> 3);
      v21 -= 8;
      Id = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::FindId((*(a1 + 168) + 112), &__p, 1);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      v17 = v15[1];
      v18 = *(a1 + 168);
      *&v19 = Id;
      *(&v19 + 1) = *(v17 - 8);
      *(a3 + 12) = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::FindId(v18, &v19, 1);
    }

    if ((a4 & 4) != 0)
    {
      *(a3 + 8) = (*(*v9 + 32))(v9, v4);
    }
  }

  return 1;
}

void sub_1B507CFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Final(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(*(v2 + 72) + 4 * a2);
  if (v3 <= 0)
  {
    return *(*(v2 + 104) + 8 * -v3);
  }

  else
  {
    return INFINITY;
  }
}

uint64_t fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFlags(int *a1, int a2, int a3)
{
  v3 = a2;
  v5 = a1[14] & ~a3;
  result = *(*a1 + 8);
  if (*(result + 160))
  {
    v7 = 15;
  }

  else
  {
    v7 = 31;
  }

  v8 = v7 & a2 | v5;
  a1[14] = v8;
  if ((v8 & 0x10) == 0 && a1[44] != 15)
  {
    result = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(result, a1[2]);
    if ((result & 1) == 0)
    {
      a1[44] = 0;
    }
  }

  if ((v3 & 0x10) != 0 && !a1[44])
  {

    return fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Init(a1);
  }

  return result;
}

uint64_t fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(uint64_t a1, int a2)
{
  if (!fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2))
  {
    if (*(a1 + 160) != 1)
    {
      v9 = *(*(*(a1 + 168) + 80) + 16 * a2);
      if (HIDWORD(v9) == -1)
      {
        return 0;
      }

      v7 = *(*(a1 + 240) + 8 * SDWORD2(v9));
      v8 = (*(*v7 + 40))(v7);
      return v8 + fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeFinalArc(a1, &v9, 0, 15);
    }

    fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Search(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFlags(v2, v3, 15);
  if (*(a1 + 40) < *(a1 + 36))
  {
    v4 = *(a1 + 24);
    v4[4] = 0;
    if (v4[6] >= 1)
    {
      while (1)
      {
        v5 = *(a1 + 32) != 0;
        v6 = fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(v4)[v5];
        v7 = *(a1 + 40);
        v8 = v6 == v7;
        v9 = v6 <= v7 ? 0 : 7;
        if (v8)
        {
          v9 = 1;
        }

        if (v9)
        {
          break;
        }

        v4 = *(a1 + 24);
        v10 = v4[4] + 1;
        v4[4] = v10;
        if (v10 >= v4[6])
        {
          return 0;
        }
      }

      if (v9 == 1)
      {
        return 1;
      }
    }

    return 0;
  }

  v11 = *(a1 + 48);
  if (!v11)
  {
    v12 = 0;
LABEL_29:
    result = 0;
    *(*(a1 + 24) + 32) = v12;
    return result;
  }

  v12 = 0;
  while (1)
  {
    v13 = (v12 + v11) >> 1;
    v14 = *(a1 + 24);
    v14[4] = v13;
    v15 = *(a1 + 32) != 0;
    v16 = fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(v14)[v15];
    v17 = *(a1 + 40);
    if (v16 <= v17)
    {
      break;
    }

    v11 = (v12 + v11) >> 1;
LABEL_21:
    if (v12 >= v11)
    {
      goto LABEL_29;
    }
  }

  if (v16 < v17)
  {
    v12 = v13 + 1;
    goto LABEL_21;
  }

  while (v13 > v12)
  {
    v18 = *(a1 + 24);
    v18[4] = --v13;
    v19 = *(a1 + 32) != 0;
    if (fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(v18)[v19] != *(a1 + 40))
    {
      *(*(a1 + 24) + 32) = v13 + 1;
      return 1;
    }
  }

  return 1;
}

uint64_t fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 73) = 1;
  if (*(a1 + 74) == 1)
  {
    v3 = 0;
    *(a1 + 72) = 0;
    *(a1 + 40) = -1;
  }

  else
  {
    *(a1 + 72) = a2 == 0;
    if (a2 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + 40) = v4;
    if (fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Search(a1))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + 72);
    }
  }

  return v3 & 1;
}

_BYTE *fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Init(_BYTE *result)
{
  v1 = result;
  if ((result[56] & 0x10) != 0)
  {
    *(result + 20) = result + 112;
    if ((*(*(*result + 8) + 132) & 0xFFFFFFFD) == 1)
    {
      v3 = 4;
    }

    else
    {
      v3 = 5;
    }

    *(result + 44) = v3;
    v2 = *(result + 6) - *(result + 19);
  }

  else
  {
    result = (*(**result + 136))();
    v2 = 0;
    *(v1 + 20) = v1 + 80;
    *(v1 + 44) = 15;
  }

  *(v1 + 5) = v2;
  return result;
}

int *fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(void *a1)
{
  v2 = *(a1 + 44);
  if (v2)
  {
    v3 = a1[5];
  }

  else
  {
    if ((a1[7] & 0x10) != 0)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v13, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ReplaceFst: inconsistent arc iterator flags", 43);
      fst::LogMessage::~LogMessage(&v13);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(**a1 + 136))(*a1, *(a1 + 2), a1 + 10);
    v3 = 0;
    a1[20] = a1 + 10;
    v2 = 15;
    *(a1 + 44) = 15;
    a1[5] = 0;
  }

  v6 = a1[4] - v3;
  if (v6 < 0)
  {
    v9 = *(a1 + 14);
    if (((*(a1 + 49) ^ 0xF) & v9) != 0)
    {
      fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeFinalArc(*(*a1 + 8), a1 + 2, a1 + 180, v9 & 0xF);
      *(a1 + 49) = a1[7] & 0xF;
    }

    return a1 + 45;
  }

  else
  {
    v7 = a1[20];
    if (*v7)
    {
      (*(**v7 + 64))(*v7, v6);
      v8 = (*(**a1[20] + 32))(*a1[20]);
      v2 = *(a1 + 44);
    }

    else
    {
      v8 = (v7[1] + 16 * v6);
    }

    if (((v2 ^ 0xF) & a1[7]) != 0)
    {
      fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeArc(*(*a1 + 8), (a1 + 2), v8, a1 + 60, a1[7] & 0xF);
      return a1 + 15;
    }
  }

  return v8;
}

void sub_1B507D670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

int *fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    return (a1 + 56);
  }

  fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFlags(*(a1 + 24), 15, 15);
  v3 = *(a1 + 24);

  return fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(v3);
}

uint64_t fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeArc(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int a5)
{
  v7 = (a5 & 0xFFFFFFFA) != 0 || (*(a1 + 132) & 0xFFFFFFFD) == 1;
  if (!v7)
  {
    *a4 = *a3;
    return 1;
  }

  v8 = a5;
  v12 = a3 + 1;
  LODWORD(v11) = a3[1];
  if (!v11 || v11 < *(*(a1 + 176) + 28))
  {
    goto LABEL_13;
  }

  v13 = a1 + 184;
  v14 = *(a1 + 184);
  if (v14)
  {
    do
    {
      v15 = v14;
      v14 = *(v14 + 8);
    }

    while (v14);
  }

  else
  {
    do
    {
      v15 = *(v13 + 16);
      v7 = *v15 == v13;
      v13 = v15;
    }

    while (v7);
  }

  if (v11 > *(v15 + 28))
  {
LABEL_13:
    if ((a5 & 8) != 0)
    {
      v17 = *(a1 + 168);
      v18 = *(a2 + 8);
      v19 = a3[3];
      *&v48 = *a2;
      *(&v48 + 1) = __PAIR64__(v19, v18);
      Id = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::FindId(v17, &v48, 1);
      LODWORD(v11) = a3[1];
    }

    else
    {
      Id = -1;
    }

    v20 = *a3;
LABEL_17:
    v21 = a3[2];
    *a4 = v20;
    *(a4 + 4) = v11;
    *(a4 + 8) = v21;
LABEL_18:
    *(a4 + 12) = Id;
    return 1;
  }

  v23 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 200), a3 + 1);
  if (!v23)
  {
    if ((v8 & 8) != 0)
    {
      v34 = *(a1 + 168);
      v35 = *(a2 + 8);
      v36 = a3[3];
      *&v48 = *a2;
      *(&v48 + 1) = __PAIR64__(v36, v35);
      Id = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::FindId(v34, &v48, 1);
    }

    else
    {
      Id = -1;
    }

    v37 = a3[2];
    *a4 = *a3;
    *(a4 + 8) = v37;
    goto LABEL_18;
  }

  v24 = *(v23 + 5);
  v25 = *(*(a1 + 240) + 8 * v24);
  v26 = (*(*(a1 + 168) + 192) + 24 * *a2);
  __p = 0;
  v46 = 0;
  v47 = 0;
  std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(&__p, *v26, v26[1], (v26[1] - *v26) >> 3);
  v27 = *(a2 + 8);
  v28 = a3[3];
  v29 = v46;
  if (v46 >= v47)
  {
    v31 = (v46 - __p) >> 3;
    if ((v31 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v32 = (v47 - __p) >> 2;
    if (v32 <= v31 + 1)
    {
      v32 = v31 + 1;
    }

    if (v47 - __p >= 0x7FFFFFFFFFFFFFF8)
    {
      v33 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v32;
    }

    if (v33)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v33);
    }

    v38 = (8 * v31);
    *v38 = v27 | (v28 << 32);
    v30 = 8 * v31 + 8;
    v39 = v38 - (v46 - __p);
    memcpy(v39, __p, v46 - __p);
    v40 = __p;
    __p = v39;
    v46 = v30;
    v47 = 0;
    if (v40)
    {
      operator delete(v40);
    }
  }

  else
  {
    *v46 = v27 | (v28 << 32);
    v30 = (v29 + 8);
  }

  v46 = v30;
  v41 = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::FindId((*(a1 + 168) + 112), &__p, 1);
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  v42 = (*(*v25 + 24))(v25);
  if (v42 != -1)
  {
    if ((v8 & 8) != 0)
    {
      v43 = *(a1 + 168);
      *&v48 = v41;
      *(&v48 + 1) = __PAIR64__(v42, v24);
      Id = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::FindId(v43, &v48, 1);
    }

    else
    {
      Id = -1;
    }

    LODWORD(v11) = 0;
    v44 = *(a1 + 132);
    if ((v44 & 0xFFFFFFFD) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *a3;
    }

    if ((v44 - 1) >= 2)
    {
      v11 = *(a1 + 144);
      if (v11 == -1)
      {
        LODWORD(v11) = *v12;
      }
    }

    goto LABEL_17;
  }

  return 0;
}

void sub_1B507DA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Reinit(int *a1, uint64_t a2, int a3)
{
  if (a1[2] != a3)
  {
    v3 = *(a1 + 13);
    if (v3)
    {
      --*v3;
    }

    v4 = *(a1 + 17);
    if (v4)
    {
      --*v4;
    }

    a1[14] = 0;
    a1[44] = 0;
    a1[49] = 0;
    *(a1 + 19) = 0;
    *(a1 + 4) = 0;
    *(a1 + 5) = 0;
    a1[2] = a3;
    return fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Reinit_(a1);
  }

  return a1;
}

uint64_t kaldi::quasar::NnlmDecoderWord::IsPhoneWord(kaldi::quasar::NnlmDecoderWord *this, signed int a2)
{
  if (a2 < 0 || *(this + 4) <= a2)
  {
    if (kaldi::g_kaldi_verbose_level >= 4)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v6, 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Word passed to NNLM doesn't exist in wordmap. The decoder will use <oos> to score instead", 89);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v6);
    }

    a2 = *(this + 44);
  }

  if (a2 <= *(this + 19) && a2 >= *(this + 18))
  {
    for (i = *(this + 7); i; i = *i)
    {
      v4 = *(i + 7);
      if (a2 >= v4)
      {
        if (v4 >= a2)
        {
          return 1;
        }

        ++i;
      }
    }
  }

  return 0;
}

void sub_1B507DB6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

float kaldi::quasar::DnnlmEvaluator::CalculateSingleNgram(uint64_t a1, uint64_t *a2)
{
  if ((*(*a1 + 32))(a1))
  {
    v7 = 0;
    if (kaldi::LRUCacheMap<std::vector<int>,float,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(a1 + 48, a2, &v7))
    {
      result = *v7;
      ++*(a1 + 128);
    }

    else
    {
      ++*(a1 + 132);
      result = (*(*a1 + 40))(a1, a2);
      v6 = result;
      if (*(a1 + 48))
      {
        kaldi::LRUCacheMap<std::vector<int>,float,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::vector<int>,float,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Insert(std::vector<int> const&,float const&)::{lambda(float &)#1}>((a1 + 48), a2, &v6);
        return v6;
      }
    }
  }

  else
  {
    ++*(a1 + 132);
    v5 = *(*a1 + 40);

    v5(a1, a2);
  }

  return result;
}

BOOL kaldi::LRUCacheMap<std::vector<int>,float,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "v != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v12[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>((a1 + 8), v12);
  if (v5)
  {
    v6 = v5[3];
    v7 = *(a1 + 64);
    if (v6 != v7)
    {
      v8 = v6[1];
      if (v8 != v7)
      {
        v9 = *v6;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = *v7;
        *(v10 + 8) = v6;
        *v6 = v10;
        *v7 = v6;
        v6[1] = v7;
      }
    }

    *a3 = v6 + 5;
  }

  return v5 != 0;
}

void *std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>(void *a1, uint64_t *a2)
{
  v4 = **a2;
  v5 = *(*a2 + 8);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 = v7 + 7853 * v6;
    }

    while (v4 != v5);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    do
    {
      v14 = v13[1];
      if (v14 == v6)
      {
        if (std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>::operator()[abi:ne200100]((a1 + 5), v13 + 2, a2))
        {
          return v13;
        }
      }

      else
      {
        if (v10 > 1)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

float kaldi::quasar::DnnlmEvaluator::CalculateSingleNgramAfterCacheMiss(uint64_t a1, uint64_t *a2)
{
  v21 = 0.0;
  v4 = *a2;
  v5 = a2[1] - 4;
  v19 = 0;
  v20 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v4, v5, (v5 - v4) >> 2);
  if (*(a1 + 40) != 1)
  {
    v17 = 0;
    v8 = kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(a1 + 136, &__p, &v17);
    if (!v8)
    {
      v17 = kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace((a1 + 136), &__p);
      memset(&v16[1], 0, 24);
      v16[0] = &unk_1F2D3AC18;
      v9 = kaldi::quasar::DnnlmEvaluator::PrepareContext(v17, &__p, v16);
      (*(**(a1 + 24) + 104))(*(a1 + 24), v16, v17, 1, v9);
      kaldi::CuVector<float>::~CuVector(v16);
    }

    v21 = (*(**(a1 + 24) + 136))(*(a1 + 24), v17, *(a2[1] - 4)) - *(a1 + 44);
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_7:
    ++*(a1 + 300);
    goto LABEL_16;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
  }

  else
  {
    v7 = 0;
  }

  v16[0] = 0;
  v10 = kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(a1 + 216, &__p, v16);
  if (!v10)
  {
    v16[0] = kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace((a1 + 216), &__p);
    kaldi::quasar::CEInferenceNet::Feedforward(v7, &__p, v16[0], 1);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    UnitOutput = kaldi::quasar::CEInferenceNet::GetUnitOutput(v12, v16[0], *(a2[1] - 4));
  }

  else
  {
    UnitOutput = kaldi::quasar::CEInferenceNet::GetUnitOutput(v7, v16[0], *(a2[1] - 4));
  }

  v21 = UnitOutput - *(a1 + 44);
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_15:
  ++*(a1 + 296);
LABEL_16:
  kaldi::quasar::NnlmEvaluatorBase::FixNnetOut(a1, &v21);
  v14 = v21;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return -v14;
}

void sub_1B507E164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B507E1F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float kaldi::quasar::FofeLmEvaluator::CalculateSingleNgramAfterCacheMiss(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40) == 1)
  {

    return kaldi::quasar::DnnlmEvaluator::CalculateSingleNgramAfterCacheMiss(a1, a2);
  }

  else
  {
    v5 = *a2;
    v6 = a2[1] - 4;
    v7 = (v6 - *a2) >> 2;
    __p = 0;
    v29 = 0;
    v30 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v5, v6, v7);
    v27 = 0;
    if (kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(a1 + 136, &__p, &v27))
    {
      ++*(a1 + 296);
    }

    else
    {
      ++*(a1 + 300);
      v9 = *a2;
      v8 = a2[1];
      v10 = (*(**(a1 + 24) + 48))(*(a1 + 24));
      v11 = v10;
      v12 = ((v8 - v9) >> 2) - 1;
      kaldi::CuMatrix<float>::Resize((a1 + 520), v12, v10, 1, 0);
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 4 - 4 * v11;
        do
        {
          if (v12 >= 1)
          {
            v16 = 0;
            v17 = (*(a1 + 528) + v13);
            v18 = 4 * *(a1 + 544);
            v19 = v15;
            do
            {
              v20 = (*a2 + v19);
              if (v16 < v11 + ~v14)
              {
                v20 = (a1 + 468);
              }

              *v17 = *v20;
              ++v16;
              v19 += 4;
              v17 = (v17 + v18);
            }

            while (v12 != v16);
          }

          ++v14;
          v15 += 4;
          v13 += 4;
        }

        while (v14 != v11);
      }

      v27 = kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace((a1 + 136), &__p);
      (*(**(a1 + 24) + 96))(*(a1 + 24), a1 + 520, a1 + 472, 1);
      kaldi::CuVector<float>::Resize(v27, *(a1 + 488), 1);
      v21 = *(a1 + 480);
      v22 = *(a1 + 504);
      DWORD2(v25) = *(a1 + 488);
      HIDWORD(v25) = 1;
      *&v26 = *(a1 + 496);
      *(&v26 + 1) = v22;
      v24 = &unk_1F2CFA908;
      *&v25 = v21;
      kaldi::CuVectorBase<float>::CopyRowsFromMat(v27, &v24);
      v24 = &unk_1F2CFA908;
      v25 = 0u;
      v26 = 0u;
      quasar::Bitmap::~Bitmap(&v24);
    }

    *&v24 = (*(**(a1 + 24) + 136))(*(a1 + 24), v27, *(a2[1] - 4)) - *(a1 + 44);
    kaldi::quasar::NnlmEvaluatorBase::FixNnetOut(a1, &v24);
    v23 = -*&v24;
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    return v23;
  }
}

void sub_1B507E4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a10);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "v != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v12[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>((a1 + 8), v12);
  if (v5)
  {
    v6 = v5[3];
    v7 = *(a1 + 64);
    if (v6 != v7)
    {
      v8 = v6[1];
      if (v8 != v7)
      {
        v9 = *v6;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = *v7;
        *(v10 + 8) = v6;
        *v6 = v10;
        *v7 = v6;
        v6[1] = v7;
      }
    }

    *a3 = v6 + 5;
  }

  return v5 != 0;
}

uint64_t *kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(std::vector<int> const&)::{lambda(std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>&)#1}>(unint64_t *a1, uint64_t *a2)
{
  v22 = &v22;
  v23 = &v22;
  v24 = 0;
  *&v20 = a2;
  v4 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>(a1 + 1, &v20);
  if (v4)
  {
    v5 = v4[3];
    if (&v22 != v5)
    {
      v6 = v5[1];
      if (v6 != &v22)
      {
        v7 = *v5;
        *(v7 + 8) = v6;
        *v6 = v7;
        v8 = v22;
        v22[1] = v5;
        *v5 = v8;
        v5[1] = &v22;
        --a1[9];
        v22 = v5;
        ++v24;
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1 + 1, v4);
  }

  else
  {
    v9 = a1[9];
    if (v9 < *a1)
    {
      v20 = 0uLL;
      v21 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, *a2, a2[1], (a2[1] - *a2) >> 2);
      operator new();
    }

    v10 = a1[7];
    if (&v22 != v10)
    {
      v11 = v10[1];
      if (v11 != &v22)
      {
        v12 = *v10;
        *(v12 + 8) = v11;
        *v11 = v12;
        v13 = v22;
        v22[1] = v10;
        *v10 = v13;
        v10[1] = &v22;
        a1[9] = v9 - 1;
        v22 = v10;
        ++v24;
      }
    }

    *&v20 = v23 + 2;
    std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__erase_unique<std::vector<int> const*>(a1 + 1, &v20);
    if (v23 + 2 != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v23 + 2, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  v14 = v23;
  *&v20 = v23 + 2;
  *(&v20 + 1) = v23;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__emplace_unique_key_args<std::vector<int> const*,std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>(a1 + 1, &v20);
  v15 = a1[8];
  if (v15 != v14)
  {
    v16 = v14[1];
    if (v16 != v15)
    {
      v17 = *v14;
      *(v17 + 8) = v16;
      *v16 = v17;
      v18 = *v15;
      *(v18 + 8) = v14;
      *v14 = v18;
      *v15 = v14;
      v14[1] = v15;
      --v24;
      ++a1[9];
    }
  }

  std::__list_imp<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear(&v22);
  return v14 + 5;
}

uint64_t *kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(unint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "capacity_ > 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(std::vector<int> const&)::{lambda(std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>&)#1}>(a1, a2);
}

void *std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__emplace_unique_key_args<std::vector<int> const*,std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>(void *a1, uint64_t *a2)
{
  v4 = **a2;
  v5 = *(*a2 + 8);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 = v7 + 7853 * v6;
    }

    while (v4 != v5);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v6)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_23;
    }

LABEL_22:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (!std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>::operator()[abi:ne200100]((a1 + 5), v13 + 2, a2))
  {
    goto LABEL_22;
  }

  return v13;
}

void std::__list_imp<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t kaldi::quasar::CEInferenceNet::Feedforward(uint64_t a1, void *a2, uint64_t *a3, int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 496);
  v13 = (a2[1] - *a2) >> 2;
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v13, &v14, 1uLL);
  (*(*v7 + 64))(&v12, v7, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  (*(*v12 + 80))(v12);
  kaldi::quasar::CEInferenceNet::Feedforward(a1, &v12, a3, a4);
  result = v12;
  v12 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1B507ED10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B507EDA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::quasar::BNNSGraphData::BNNSGraphData(void *a1, uint64_t *a2, char a3)
{
  v6 = kaldi::quasar::ComputeEngineBufferItf::ComputeEngineBufferItf(a1);
  *v6 = &unk_1F2D2A148;
  v6[4] = 0;
  v7 = (v6 + 4);
  v6[5] = 0;
  v6[6] = 0;
  *(v6 + 14) = 0;
  v6[9] = 0;
  v6[10] = 0;
  v6[11] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((v6 + 9), *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = *a2;
  v9 = 1;
  while (v8 != a2[1])
  {
    v10 = *v8++;
    v9 *= v10;
  }

  if (a3)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEEC2B8ne200100Em(&__p, v9);
    _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm0ES6_S6_EEvRNS0_5__altIXT_ET0_EEOT1_(v7, v7, &__p);
  }

  else
  {
    std::vector<float>::vector[abi:ne200100](&__p, v9);
    _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm1ES8_S8_EEvRNS0_5__altIXT_ET0_EEOT1_(v7, v7, &__p);
  }

  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  return a1;
}

void sub_1B507EF34(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v2);
  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(v1);
  _Unwind_Resume(a1);
}

__n128 _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm1ES8_S8_EEvRNS0_5__altIXT_ET0_EEOT1_(uint64_t a1, std::vector<int> *this, __n128 *__c)
{
  if (*(a1 + 24) == 1)
  {

    result.n128_u64[0] = std::vector<int>::__move_assign(this, __c).n128_u64[0];
  }

  else
  {
    _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *__c;
    *a1 = *__c;
    *(a1 + 16) = __c[1].n128_u64[0];
    __c->n128_u64[0] = 0;
    __c->n128_u64[1] = 0;
    __c[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1F2D2A210[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS8_IfNS9_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

float kaldi::quasar::BNNSGraphData::FlatRangeCopy(kaldi::quasar::BNNSGraphData *this, int *a2, unsigned int a3, int a4)
{
  if ((*(*this + 168))(this))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "FlatRangeCopy(const int32 *ptr, int length, int destStart) not implemented for fp16");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  if ((a3 & 0x80000000) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "length >= 0");
    goto LABEL_8;
  }

  WritableDataFloat = kaldi::quasar::BNNSGraphData::GetWritableDataFloat(this);
  if (a3)
  {
    v10 = (WritableDataFloat + 4 * a4);
    v11 = a3;
    do
    {
      v12 = *a2++;
      result = v12;
      *v10++ = v12;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v16);
  return v15;
}
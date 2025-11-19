uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v10[0] = *v5;
      v11 = *(v5 + 8);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
      *v5 = 0;
      *(v5 + 8) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      v7 = *a4;
      *a4 = v10[0];
      v10[0] = v7;
      v8 = *(a4 + 8);
      *(a4 + 8) = v11;
      v11 = v8;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v11, v10[0]);
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_258918AC8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8nlohmann10basic_jsonINS_3mapENS_6vectorES6_bxydS4_NS8_14adl_serializerENSB_IhNS4_IhEEEEEEEC2B8nn200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSK_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENST_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&this[1]);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&this[1]);
  return this;
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30[0] = 7;
    v31 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30[0];
        v29 = v31;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
        v30[0] = 0;
        v31 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v12 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:nn200100](*(v8 + 1), v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v30[0]);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30[0];
              v27 = v31;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
              v30[0] = 0;
              v31 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v19 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_258918E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(uint64_t *a1, unsigned __int8 *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30[0] = 4;
    v31 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30[0];
        v29 = v31;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
        v30[0] = 0;
        v31 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v12 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:nn200100](*(v8 + 1), v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v30[0]);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30[0];
              v27 = v31;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
              v30[0] = 0;
              v31 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v19 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_258919118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v29[0] = 0;
    v30 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v27[0] = v29[0];
        v28 = v30;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
        v29[0] = 0;
        v30 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        v11 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        v12 = *v11;
        *v11 = v27[0];
        v27[0] = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v28;
        v28 = v13;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27[0]);
        v14 = *a1;
        goto LABEL_16;
      }

      v7 = *(v6 - 8);
      if (v7)
      {
        v8 = *v7;
        if (v8 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:nn200100](*(v7 + 1), v29);
          v9 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v10 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v30, v29[0]);
          return v10;
        }

        if (v8 == 1)
        {
          v15 = a1[8];
          if (v15)
          {
            v16 = v15 - 1;
            v17 = *(a1[7] + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v16;
            if ((v17 >> v16))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v25[0] = v29[0];
              v26 = v30;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
              v29[0] = 0;
              v30 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
              v18 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
              v19 = *v18;
              *v18 = v25[0];
              v25[0] = v19;
              v20 = *(v18 + 8);
              *(v18 + 8) = v26;
              v26 = v20;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v26, v25[0]);
              v21 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v23 = "not key_keep_stack.empty()";
          v24 = 615;
        }

        else
        {
          v23 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v24 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v24, v23);
      }
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_2589193CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30[0] = 5;
    v31 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30[0];
        v29 = v31;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
        v30[0] = 0;
        v31 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v12 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:nn200100](*(v8 + 1), v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v30[0]);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30[0];
              v27 = v31;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
              v30[0] = 0;
              v31 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v19 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_258919688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(*(a1 + 32) + (((v1 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v1 - 1)))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v3);
  }

  return 0;
}

void sub_25891992C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30[0] = 6;
    v31 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30[0];
        v29 = v31;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
        v30[0] = 0;
        v31 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v12 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:nn200100](*(v8 + 1), v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v30[0]);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30[0];
              v27 = v31;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
              v30[0] = 0;
              v31 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v19 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_258919BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

nlohmann::detail::parse_error *nlohmann::detail::parse_error::parse_error(nlohmann::detail::parse_error *this, const nlohmann::detail::parse_error *a2)
{
  *this = &unk_2869C5DF8;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x259C8E5C0](this + 16, a2 + 16);
  *this = &unk_2869C6040;
  *(this + 4) = *(a2 + 4);
  return this;
}

nlohmann::detail::out_of_range *nlohmann::detail::out_of_range::out_of_range(nlohmann::detail::out_of_range *this, const nlohmann::detail::out_of_range *a2)
{
  *this = &unk_2869C5DF8;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x259C8E5C0](this + 16, a2 + 16);
  *this = &unk_2869C6000;
  return this;
}

nlohmann::detail::invalid_iterator *nlohmann::detail::invalid_iterator::invalid_iterator(nlohmann::detail::invalid_iterator *this, const nlohmann::detail::invalid_iterator *a2)
{
  *this = &unk_2869C5DF8;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x259C8E5C0](this + 16, a2 + 16);
  *this = &unk_2869C5FD8;
  return this;
}

nlohmann::detail::type_error *nlohmann::detail::type_error::type_error(nlohmann::detail::type_error *this, const nlohmann::detail::type_error *a2)
{
  *this = &unk_2869C5DF8;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x259C8E5C0](this + 16, a2 + 16);
  *this = &unk_2869C5DD0;
  return this;
}

nlohmann::detail::other_error *nlohmann::detail::other_error::other_error(nlohmann::detail::other_error *this, const nlohmann::detail::other_error *a2)
{
  *this = &unk_2869C5DF8;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x259C8E5C0](this + 16, a2 + 16);
  *this = &unk_2869C5E38;
  return this;
}

void nlohmann::detail::parse_error::position_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v12, *(a1 + 16) + 1);
  v4 = std::string::insert(&v12, 0, " at line ", 9uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, ", column ", 9uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(a1 + 8));
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

  v10 = std::string::append(&v14, p_p, size);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_258919FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

const char *nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown token";
  }

  else
  {
    return off_2798A8898[a1];
  }
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(uint64_t a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 136));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a1 + 144), *(a1 + 136));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:nn200100](a1 + 96);
  v2 = *(a1 + 56);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(void *a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v20[0] = v9;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v21, v9);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    v10 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    v11 = *v10;
    *v10 = v20[0];
    v20[0] = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v21;
    v21 = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v21, v20[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::detail::value_t>(v6, a2);
      }

      else
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__construct_one_at_end[abi:nn200100]<nlohmann::detail::value_t>(v6, a2);
        v8 = v7 + 16;
      }

      *(v6 + 8) = v8;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v14 = *a2;
      v18[0] = v14;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v19, v14);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      v15 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      v16 = *v15;
      *v15 = v18[0];
      v18[0] = v16;
      v17 = *(v15 + 8);
      *(v15 + 8) = v19;
      v19 = v17;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v19, v18[0]);
      return a1[4];
    }
  }
}

unsigned __int8 *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__construct_one_at_end[abi:nn200100]<nlohmann::detail::value_t>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v3 = *(a1 + 8);
  *v3 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value((v3 + 8), v4);
  result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
  *(a1 + 8) = v3 + 16;
  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::detail::value_t>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  v18 = v8;
  v9 = *a2;
  *v8 = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value((v8 + 8), v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v18 + 16;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_25891A380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 7;
    v22 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<double &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 7;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 7;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<double &>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 7;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_25891A64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(void *a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 4;
    v22 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<BOOL &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 4;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 4;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<BOOL &>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 4;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_25891A918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(void *a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v17[0] = 0;
    v18 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    v8 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    v9 = *v8;
    *v8 = v17[0];
    v17[0] = v9;
    v10 = *(v8 + 8);
    *(v8 + 8) = v18;
    v18 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v18, v17[0]);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 8);
    v4 = *v3;
    if (v4 == 2)
    {
      v5 = *(v3 + 1);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v7 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<decltype(nullptr)>(v5);
      }

      else
      {
        *v6 = 0;
        *(v6 + 8) = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        v7 = v6 + 16;
      }

      *(v5 + 8) = v7;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v4 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15[0] = 0;
      v16 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      v12 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      v13 = *v12;
      *v12 = v15[0];
      v15[0] = v13;
      v14 = *(v12 + 8);
      *(v12 + 8) = v16;
      v16 = v14;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v16, v15[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<decltype(nullptr)>(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 4;
  v2 = v1 + 1;
  if ((v1 + 1) >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 3 > v2)
  {
    v2 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v5);
  }

  v6 = 16 * v1;
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
  *&v15 = v6 + 16;
  v7 = *(a1 + 8);
  v8 = v6 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v13);
  return v12;
}

void sub_25891ABB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 5;
    v22 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<long long &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 5;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 5;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<long long &>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 5;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_25891AE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(void *a1)
{
  v1 = a1[2];
  if (a1[1] != v1)
  {
    v2 = *(v1 - 8);
    v3 = *v2;
    if (v3 == 2)
    {
      v4 = *(v2 + 1);
      if (v4[1] < v4[2])
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v4[1]);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&>(v4);
    }

    if (v3 == 1)
    {
      if (a1[4])
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v5);
      }

      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
    }

    nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v6);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&>(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v6 = a1;
    if (v4)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v4);
    }

    v5 = (16 * v1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(16 * v1);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void sub_25891B0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 6;
    v22 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<unsigned long long &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 6;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 6;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<unsigned long long &>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 6;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_25891B3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string>(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v6 = a1;
    if (v4)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v4);
    }

    v5 = (16 * v1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(16 * v1);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void sub_25891B4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[27],char [27],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[27]>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[14],char [14],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[14]>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[7],char [7],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[7]>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[35],char [35],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[35]>();
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>();
  }

  return result;
}

uint64_t Nightingale::fwPredictorWrapper_t::init(Nightingale::fwPredictorWrapper_t *this, const Nightingale::ngt_Config *a2)
{
  if ((*(a2 + 296) & 1) == 0)
  {
    v22 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v22);
  }

  if (*(a2 + 295) >= 0)
  {
    v4 = a2 + 272;
  }

  else
  {
    v4 = *(a2 + 34);
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v7 = objc_opt_new();
  v8 = *(this + 2);
  *(this + 2) = v7;

  v9 = *(this + 2);
  if (v9)
  {
    [v9 setComputeUnits:0];
    v24 = 0;
    v10 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2869C9E08 dataType:65600 error:&v24];
    v11 = v24;
    v12 = *this;
    *this = v10;

    if (*this)
    {
      v13 = [model_fwEnd_10pct alloc];
      v14 = *(this + 2);
      v23 = v11;
      v15 = [(model_fwEnd_10pct *)v13 initWithContentsOfURL:v6 configuration:v14 error:&v23];
      v16 = v23;

      v17 = *(this + 4);
      *(this + 4) = v15;

      if (v16)
      {
        v18 = 0;
        v11 = v16;
      }

      else
      {
        v19 = [[model_fwEnd_10pctInput alloc] initWithIn:*this lstm_1_h_in:0 lstm_1_c_in:0];
        v20 = *(this + 3);
        *(this + 3) = v19;

        v11 = 0;
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v11 = 0;
  }

  return v18;
}

id **std::unique_ptr<Nightingale::fwPredictorWrapper_t>::~unique_ptr[abi:nn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x259C8E7C0](v2, 0x80C402FCC0CB6);
  }

  return a1;
}

double Nightingale::fwPredictorWrapper_t::fwPredictorWrapper_t(Nightingale::fwPredictorWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void sub_25891BFC0(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x259C8E7C0](v3, 0x10B0C40F68B3361);

  _Unwind_Resume(a1);
}

void sub_25891C388(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t ha_phase_to_algs_phase(uint64_t result)
{
  if ((result - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_25891D110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _Unwind_Exception *exception_objecta, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41, void *a42, void *a43, void *a44, void *a45, void *a46, void *a47, uint64_t a48, uint64_t a49, char a50)
{
  STACK[0x228] = &a50;
  std::vector<Nightingale::ngt_HistoricCycle>::__destroy_vector::operator()[abi:nn200100](&STACK[0x228]);

  _Unwind_Resume(a1);
}

void std::vector<Nightingale::ngt_HistoricCycle>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Nightingale::ngt_HistoricCycle>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Nightingale::ngt_HistoricCycle>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

Nightingale::ngt_HistoricalAnalyzer *std::unique_ptr<Nightingale::ngt_HistoricalAnalyzer>::reset[abi:nn200100](Nightingale::ngt_HistoricalAnalyzer **a1, Nightingale::ngt_HistoricalAnalyzer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Nightingale::ngt_HistoricalAnalyzer::~ngt_HistoricalAnalyzer(result);

    JUMPOUT(0x259C8E7C0);
  }

  return result;
}

void *Nightingale::fwEstimatorBase::fwEstimatorBase(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void Nightingale::fwEstimatorBase::~fwEstimatorBase(Nightingale::fwEstimatorBase *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void Nightingale::fwEstimatorBase::suppressHistFWOverCycleBoundary(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 4) != 1)
  {
    goto LABEL_4;
  }

  if (*a4 < a2)
  {
    goto LABEL_3;
  }

  if ((a3 & 0x100000000) != 0)
  {
    if ((*(a4 + 12) & 1) == 0)
    {
      v4 = std::__throw_bad_optional_access[abi:nn200100]();
      Nightingale::fill_bundled_model_paths(v4, v5);
      return;
    }

    if (*(a4 + 8) > a3)
    {
LABEL_3:
      *(a4 + 4) = 0;
LABEL_4:
      if (*(a4 + 12) == 1)
      {
        *(a4 + 12) = 0;
      }
    }
  }
}

void Nightingale::fill_bundled_model_paths(Nightingale *this, Nightingale::ngt_Config *a2)
{
  if (*(this + 200))
  {
    v3 = 0;
  }

  else
  {
    v4 = +[fwEnddet_lstm URLOfModelInThisBundle];
    v5 = [v4 path];
    v21[0] = [v5 UTF8String];
    std::optional<std::string>::operator=[abi:nn200100]<char const*,void>((this + 176), v21);

    v3 = v4;
  }

  if ((*(this + 232) & 1) == 0)
  {
    v6 = +[fwEnddet_rf URLOfModelInThisBundle];

    v7 = [v6 path];
    v21[0] = [v7 UTF8String];
    std::optional<std::string>::operator=[abi:nn200100]<char const*,void>((this + 208), v21);

    v3 = v6;
  }

  if ((*(this + 296) & 1) == 0)
  {
    v8 = +[model_fwEnd_10pct URLOfModelInThisBundle];

    v9 = [v8 path];
    v21[0] = [v9 UTF8String];
    std::optional<std::string>::operator=[abi:nn200100]<char const*,void>((this + 272), v21);

    v3 = v8;
  }

  if ((*(this + 264) & 1) == 0)
  {
    v10 = +[model_period_10pct URLOfModelInThisBundle];

    v11 = [v10 path];
    v21[0] = [v11 UTF8String];
    std::optional<std::string>::operator=[abi:nn200100]<char const*,void>(this + 10, v21);

    v3 = v10;
  }

  if ((*(this + 168) & 1) == 0)
  {
    v12 = +[period_lstm URLOfModelInThisBundle];

    v13 = [v12 path];
    v21[0] = [v13 UTF8String];
    std::optional<std::string>::operator=[abi:nn200100]<char const*,void>(this + 6, v21);

    v3 = v12;
  }

  if (*(this + 360))
  {
    v14 = v3;
  }

  else
  {
    v14 = +[WBEnsembleFunctionTF URLOfModelInThisBundle];

    v15 = [v14 path];
    v21[0] = [v15 UTF8String];
    std::optional<std::string>::operator=[abi:nn200100]<char const*,void>(this + 14, v21);
  }

  if ((*(this + 328) & 1) == 0)
  {
    memset(v21, 0, sizeof(v21));
    v16 = +[TFModel1 URLOfModelInThisBundle];

    v17 = [v16 path];
    std::string::basic_string[abi:nn200100]<0>(__p, [v17 UTF8String]);
    std::vector<std::string>::push_back[abi:nn200100](v21, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = +[TFModel2 URLOfModelInThisBundle];

    v18 = [v14 path];
    std::string::basic_string[abi:nn200100]<0>(__p, [v18 UTF8String]);
    std::vector<std::string>::push_back[abi:nn200100](v21, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    std::optional<std::vector<std::string>>::operator=[abi:nn200100]<std::vector<std::string>&,void>(this + 304, v21);
    __p[0] = v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](__p);
  }
}

void sub_25891D9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__p);

  _Unwind_Resume(a1);
}

std::string *std::optional<std::string>::operator=[abi:nn200100]<char const*,void>(std::string *a1, std::string::value_type **a2)
{
  v3 = *a2;
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::__assign_external(a1, v3);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(a1, v3);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, v11);
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

uint64_t std::optional<std::vector<std::string>>::operator=[abi:nn200100]<std::vector<std::string>&,void>(uint64_t a1, std::string **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    *(a1 + 24) = 1;
  }

  return a1;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
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

void Nightingale::fwEstimatorCalendar::getHistFwCal(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 4) = 0;
  *(a5 + 12) = 0;
  *(a5 + 16) = 3;
  *(a5 + 32) = 0;
  *(a5 + 20) = 0;
  *(a5 + 28) = 0;
  v6.i64[0] = 0x3F0000003FLL;
  v6.i64[1] = 0x3F0000003FLL;
  *(a5 + 36) = vnegq_f32(v6);
  *(a5 + 52) = 0;
  *(a5 + 56) = 0;
  *(a5 + 60) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 128) = 0;
  *(a5 + 136) = 0;
  *(a5 + 140) = 0;
  *(a5 + 144) = 0x17FC00000;
  *(a5 + 152) = 0;
  *(a5 + 156) = 0;
  if ((a3 & 0x100000000) != 0)
  {
    *(a5 + 4) = 1;
    *a5 = ((a3 + -18.0) + 1.0);
    *(a5 + 12) = 1;
    *(a5 + 8) = ((a3 + -13.0) + 1.0);
    *(a5 + 16) = 3;
    *(a5 + 29) = Nightingale::phaseFactorProcessor::suppressFWStEnd(a1, a5, (a5 + 8), a4);
    v10 = *a2;

    Nightingale::fwEstimatorBase::suppressHistFWOverCycleBoundary(a1, v10, a3, a5);
  }
}

uint64_t Nightingale::fwEstimatorCalendar::getjDayFwCal(Nightingale::fwEstimatorCalendar *this, int a2, int a3)
{
  LODWORD(v3) = (a3 + -18.0);
  LODWORD(v4) = (a3 + -13.0);
  v5 = v3 < a2;
  if (v3 < a2)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = v3;
  }

  if (v5)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = v4;
  }

  return v3 | (v4 << 32);
}

uint64_t Nightingale::fwEstimatorCalendar::getjDayFwEndCal(Nightingale::fwEstimatorCalendar *this, int a2, int a3)
{
  v3 = (a3 + -18.0);
  v4 = v3 < a2;
  v5 = v3 >= a2;
  LODWORD(v6) = (a3 + -13.0);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v6;
  }

  return v6 | (v5 << 32);
}

uint64_t ha_sensitive_logging_is_enabled()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"HKShowSensitiveLogItems"];

  return v1;
}

id ha_get_log()
{
  if (ha_get_log_onceToken != -1)
  {
    ha_get_log_cold_1();
  }

  v1 = ha_get_log_log;

  return v1;
}

uint64_t __ha_get_log_block_invoke()
{
  ha_get_log_log = os_log_create("com.apple.HealthAlgorithms", "framework");

  return MEMORY[0x2821F96F8]();
}

void *Nightingale::uiLogProcessor::uiLogProcessor(void *a1, uint64_t a2)
{
  v8 = 1798;
  v9 = 5;
  result = std::vector<Nightingale::Phase>::vector[abi:nn200100](a1, &v8, 3);
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  *(result + 9) = 0u;
  *(result + 11) = 0u;
  *(result + 13) = 0u;
  *(result + 15) = 0u;
  *(result + 17) = 0u;
  *(result + 19) = 0u;
  *(result + 21) = 0u;
  result[23] = 0;
  result[4] = 0x3F80000040400000;
  if ((a2 & 0x100000000) != 0)
  {
    v6 = *&a2 > 17.0;
    v7 = *&a2 < 45.0;
    v5 = 36.0;
    if (v6 && v7)
    {
      v5 = 16.0;
    }

    v4 = 9.0;
    if (v6 && v7)
    {
      v4 = 4.0;
    }
  }

  else
  {
    v4 = 4.0;
    v5 = 16.0;
  }

  *(result + 6) = v5;
  *(result + 7) = v4;
  return result;
}

{
  v8 = 1798;
  v9 = 5;
  result = std::vector<Nightingale::Phase>::vector[abi:nn200100](a1, &v8, 3);
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  *(result + 9) = 0u;
  *(result + 11) = 0u;
  *(result + 13) = 0u;
  *(result + 15) = 0u;
  *(result + 17) = 0u;
  *(result + 19) = 0u;
  *(result + 21) = 0u;
  result[23] = 0;
  result[4] = 0x3F80000040400000;
  if ((a2 & 0x100000000) != 0)
  {
    v6 = *&a2 > 17.0;
    v7 = *&a2 < 45.0;
    v5 = 36.0;
    if (v6 && v7)
    {
      v5 = 16.0;
    }

    v4 = 9.0;
    if (v6 && v7)
    {
      v4 = 4.0;
    }
  }

  else
  {
    v4 = 4.0;
    v5 = 16.0;
  }

  *(result + 6) = v5;
  *(result + 7) = v4;
  return result;
}

double Nightingale::uiLogProcessor::uiLogProcessor(Nightingale::uiLogProcessor *this)
{
  v3 = 1798;
  v4 = 5;
  v1 = std::vector<Nightingale::Phase>::vector[abi:nn200100](this, &v3, 3);
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = 0;
  *(v1 + 9) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 21) = 0u;
  v1[23] = 0;
  result = 0.00781250187;
  v1[4] = 0x3F80000040400000;
  return result;
}

{
  v3 = 1798;
  v4 = 5;
  v1 = std::vector<Nightingale::Phase>::vector[abi:nn200100](this, &v3, 3);
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = 0;
  *(v1 + 9) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 21) = 0u;
  v1[23] = 0;
  result = 0.00781250187;
  v1[4] = 0x3F80000040400000;
  return result;
}

void Nightingale::uiLogProcessor::~uiLogProcessor(Nightingale::uiLogProcessor *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 6) = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

void Nightingale::uiLogProcessor::guardConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 4) != 1 || *(a2 + 12) != 1)
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 8);
  if (*a2 > v3)
  {
    if (v3)
    {
      goto LABEL_11;
    }

    v4 = (a2 + 28);
    v5 = *(a2 + 28);
    *(a2 + 12) = 0;
    if (v5 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *(a2 + 4) = 0;
  *(a2 + 12) = 0;
  if (*(a2 + 28) == 1)
  {
    *(a2 + 28) = 0;
  }

  v4 = (a2 + 20);
  if (*(a2 + 20))
  {
LABEL_10:
    *v4 = 0;
  }

LABEL_11:
  if (*(a2 + 44) != 1 || (*(a3 + 36) == 1 ? (v6 = *(a2 + 40) < *(a3 + 32)) : (v6 = 0), v6))
  {
    v7 = *(a3 + 32);
    *(a2 + 44) = *(a3 + 36);
    *(a2 + 40) = v7;
  }

  if (*(a2 + 36) != 1 || *(a3 + 20) == 1 && *(a2 + 32) < *(a3 + 16))
  {
    v8 = *(a3 + 16);
    *(a2 + 36) = *(a3 + 20);
    *(a2 + 32) = v8;
  }

  if ((*(a2 + 52) & 1) == 0)
  {
    *(a2 + 52) = 1;
    *(a2 + 48) = 1106247680;
  }
}

void Nightingale::uiLogProcessor::periodListToCycleInfo(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  LOBYTE(v12) = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v4 + v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = 1;
      if (a3[1] <= v9)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v18 = (*(*a3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1;
      std::vector<Nightingale::cycleInfo>::push_back[abi:nn200100](a4, &v11);
      ++v9;
      v4 = *a2;
      v8 += 8;
    }

    while (v9 < (a2[1] - *a2) >> 3);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }
}

void Nightingale::uiLogProcessor::extractPeriods(uint64_t a1, unsigned int **a2, int **a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v11 = *a3;
    v12 = *v7;
    LOBYTE(v29) = (*v7 - a4) >= 10;
    std::vector<BOOL>::push_back(&v33, &v29);
    v13 = a2[1];
    if (v7 == v13)
    {
      LODWORD(v16) = -1;
    }

    else
    {
      v14 = 0xFFFFFFFFLL;
      do
      {
        v15 = *v11++;
        if ((v15 - 1) > 3)
        {
          v16 = v14;
        }

        else
        {
          v16 = *v7;
          v17 = v14 == -1;
          if (v14 == -1)
          {
            LODWORD(v14) = *v7;
          }

          if (v17)
          {
            v12 = *v7;
          }

          if (v16 - v14 >= 3)
          {
            v29 = __PAIR64__(v14, v12);
            std::vector<std::pair<int,int>>::push_back[abi:nn200100](&v30, &v29);
            v13 = a2[1];
            v12 = v16;
          }
        }

        ++v7;
        v14 = v16;
      }

      while (v7 != v13);
    }

    v29 = __PAIR64__(v16, v12);
    std::vector<std::pair<int,int>>::push_back[abi:nn200100](&v30, &v29);
    Nightingale::uiCycleFactorProcess::suppressPeriodReproductive(&v39, &v30, a5);
    if (v31 == v30)
    {
      std::vector<Nightingale::cycleInfo>::clear[abi:nn200100](a6);
    }

    else
    {
      std::vector<std::pair<int,int>>::push_back[abi:nn200100](&v36, v30);
      v18 = (v31 - v30) >> 3;
      if (v18 < 2)
      {
        std::vector<std::pair<int,int>>::__assign_with_size[abi:nn200100]<std::pair<int,int>*,std::pair<int,int>*>(&v36, v30, v31, v18);
        std::vector<std::pair<int,int>>::vector[abi:nn200100](v28, &v36);
        v24 = std::vector<BOOL>::vector(v27, &v33);
        Nightingale::uiLogProcessor::periodListToCycleInfo(v24, v28, v27, a6);
        if (v27[0])
        {
          operator delete(v27[0]);
        }

        v23 = v28[0];
        if (!v28[0])
        {
          goto LABEL_41;
        }

        v28[1] = v28[0];
      }

      else
      {
        v20 = v30 + 8;
        v19 = *v30;
        if (v30 + 8 != v31)
        {
          while (1)
          {
            v21 = *v20;
            if (*v20 - v19 >= 10)
            {
              break;
            }

            if (((*(v33 + (((v34 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v34 - 1)) & 1) == 0)
            {
              std::vector<std::pair<int,int>>::push_back[abi:nn200100](&v36, v20);
              LOBYTE(v29) = 0;
              goto LABEL_26;
            }

LABEL_27:
            if (++v20 == v31)
            {
              goto LABEL_28;
            }
          }

          std::vector<std::pair<int,int>>::push_back[abi:nn200100](&v36, v20);
          LOBYTE(v29) = 1;
LABEL_26:
          std::vector<BOOL>::push_back(&v33, &v29);
          v19 = v21;
          goto LABEL_27;
        }

LABEL_28:
        if ((*v33 & 1) == 0 && *v36 - a4 >= 10)
        {
          *v33 |= 1uLL;
        }

        std::vector<std::pair<int,int>>::vector[abi:nn200100](v26, &v36);
        v22 = std::vector<BOOL>::vector(__p, &v33);
        Nightingale::uiLogProcessor::periodListToCycleInfo(v22, v26, __p, a6);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        v23 = v26[0];
        if (!v26[0])
        {
          goto LABEL_41;
        }

        v26[1] = v26[0];
      }

      operator delete(v23);
    }

LABEL_41:
    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v33)
    {
      operator delete(v33);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    return;
  }

  std::vector<Nightingale::cycleInfo>::clear[abi:nn200100](a6);
}

void *Nightingale::uiCycleFactorProcess::uiCycleFactorProcess(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void std::vector<std::pair<int,int>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseSet>>(a1, v10);
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

void *Nightingale::uiCycleFactorProcess::suppressPeriodReproductive(uint64_t a1, void *a2, uint64_t *a3)
{
  std::vector<std::pair<int,int>>::vector[abi:nn200100](&v18, a2);
  v6 = v18;
  if (v19 != v18)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *&v6[8 * v7];
      v16 = 0;
      std::vector<Nightingale::Phase>::vector[abi:nn200100](__p, &v16, 1);
      v10 = Nightingale::phaseFactorProcessor::detectPhases(a1, v9, __p, a3);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if ((((v10 & 0x100) == 0) & v10) != 0 || (v10 & 0x10000) != 0)
      {
        v11 = a2[1];
        v12 = *a2 + 8 * v8;
        v13 = (v12 + 8);
        if ((v12 + 8) != v11)
        {
          do
          {
            v14 = v13[1];
            *(v13 - 2) = *v13;
            *(v13 - 1) = v14;
            v13 += 2;
          }

          while (v13 != v11);
          v12 = (v13 - 2);
        }

        a2[1] = v12;
      }

      else
      {
        ++v8;
      }

      ++v7;
      v6 = v18;
    }

    while (v7 < (v19 - v18) >> 3);
  }

  if (v6)
  {
    v19 = v6;
    operator delete(v6);
  }

  return a2;
}

void Nightingale::uiCycleFactorProcess::~uiCycleFactorProcess(Nightingale::uiCycleFactorProcess *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void Nightingale::uiLogProcessor::addCycleEnd(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
  if (v3 >= 2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (v3 <= ++v5)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v6 = v2 + v4;
      *(v6 + 20) = *(v6 + 96) - 1;
      *(v6 + 24) = 1;
      v2 = *a2;
      v3 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
      v4 += 96;
    }

    while (v3 - 1 > v5);
  }
}

void Nightingale::uiLogProcessor::opk2Cycles(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a3[1];
  if (*a3 != v3)
  {
    v5 = *a2;
    v4 = a2[1];
    if (v4 != *a2)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = (v5 + (v6 << 6));
        if (v8[3] == 2)
        {
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a3) >> 5);
          v10 = v9 - 1;
          if (v9 - 1 > v7)
          {
            v11 = *v8;
            v12 = v7;
            if (v9 <= v7)
            {
              v9 = v7;
            }

            v13 = (*a3 + 96 * v7 + 24);
            v14 = -1;
            while (1)
            {
              if (v9 == v12)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v15 = *v13 == 1 && v11 <= *(v13 - 1);
              if (v15 && v11 >= *(v13 - 6))
              {
                break;
              }

              ++v12;
              --v14;
              v13 += 96;
              if (v10 <= v12)
              {
                goto LABEL_19;
              }
            }

            *(v13 - 3) = v11;
            *(v13 - 8) = 1;
            v7 -= v14;
            v5 = *a2;
            v4 = a2[1];
          }

LABEL_19:
          if (v6 >= (v4 - v5) >> 6)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v16 = *(v5 + (v6 << 6));
          v3 = a3[1];
          if (v16 >= *(v3 - 96))
          {
            break;
          }
        }

        if (++v6 >= (v4 - v5) >> 6)
        {
          return;
        }
      }

      *(v3 - 84) = v16;
      *(v3 - 80) = 1;
    }
  }
}

uint64_t Nightingale::uiLogProcessor::getJDayLastNoFlowAftLastPeriodStart(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1] - *a2;
  v4 = v3 >> 6;
  if ((v3 >> 6) < 1)
  {
LABEL_7:
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v5 = (v3 >> 6) & 0x7FFFFFFF;
    v6 = v5 + 1;
    v7 = (*a2 + (v5 << 6) - 64);
    while (1)
    {
      if (v4 <= v6 - 2)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v7[1] == 5)
      {
        v8 = *v7;
        if (v8 > *(*(a3 + 8) - 96))
        {
          break;
        }
      }

      --v6;
      v7 -= 16;
      if (v6 <= 1)
      {
        goto LABEL_7;
      }
    }

    v9 = 0x100000000;
  }

  return v8 | v9;
}

uint64_t Nightingale::uiLogProcessor::getJDay1stOPKAftLastPeriodStart(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  v5 = v4 >> 6;
  if ((v4 >> 6) < 1)
  {
LABEL_7:
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v6 = (v4 >> 6) & 0x7FFFFFFF;
    while (1)
    {
      if (!v5)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (*(v3 + 3) == 2)
      {
        v7 = *v3;
        if (v7 >= *(*(a3 + 8) - 96))
        {
          break;
        }
      }

      --v5;
      v3 += 64;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    v8 = 0x100000000;
  }

  return v7 | v8;
}

uint64_t Nightingale::uiLogProcessor::get_jDayLastOPKPosBfr1stPeriodSt(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (*a3 != v3)
  {
    v4 = 1;
    v5 = *a3;
    while (*v5 != a2)
    {
      v5 += 16;
      ++v4;
      if (v5 == v3)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (v4 != 1)
    {
      v7 = (v3 - *a3) >> 6;
      v8 = v4 - 2;
      while (--v4 >= 1)
      {
        if (v8 >= v7)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v9 = v5 - 16;
        v10 = *(v5 - 13);
        v5 -= 16;
        if (v10 == 2)
        {
          return *v9;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void Nightingale::uiLogProcessor::getJDay1stFlow(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1] - *a2;
  v4 = v3 >> 6;
  if ((v3 >> 6) >= 1)
  {
    v5 = (v3 >> 6) & 0x7FFFFFFF;
    for (i = (*a2 + 4); ; i += 16)
    {
      if (!v4)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if ((*i - 1) <= 4)
      {
        break;
      }

      --v4;
      if (!--v5)
      {
        return;
      }
    }

    *(a3 + 8) = *(i - 1);
    *(a3 + 12) = 1;
  }
}

void Nightingale::uiLogProcessor::getJDayLastFlowNoFlow(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a2[1] - *a2) >> 6;
  v5 = v4;
  v6 = *a2 + (v4 << 6);
  v7 = v4;
  while (v7 >= 1)
  {
    if (v4 <= --v7)
    {
LABEL_17:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = (v6 - 64);
    v9 = *(v6 - 60);
    v6 -= 64;
    if (v9 == 5)
    {
      *(a3 + 24) = *v8;
      *(a3 + 28) = 1;
      v3 = *a2;
      v4 = (a2[1] - *a2) >> 6;
      v5 = v4;
      break;
    }
  }

  v10 = v3 + (v5 << 6);
  v11 = v5;
  while (v11 >= 1)
  {
    if (v4 <= --v11)
    {
      goto LABEL_17;
    }

    v12 = (v10 - 64);
    v13 = *(v10 - 60) - 1;
    v10 -= 64;
    if (v13 <= 4)
    {
      *(a3 + 32) = *v12;
      *(a3 + 36) = 1;
      v3 = *a2;
      v4 = (a2[1] - *a2) >> 6;
      v5 = v4;
      break;
    }
  }

  v14 = v3 + (v5 << 6);
  while (v5 >= 1)
  {
    if (v4 <= --v5)
    {
      goto LABEL_17;
    }

    v15 = (v14 - 64);
    v16 = *(v14 - 60) - 1;
    v14 -= 64;
    if (v16 <= 3)
    {
      *(a3 + 40) = *v15;
      *(a3 + 44) = 1;
      return;
    }
  }
}

void Nightingale::uiLogProcessor::getJDayFirstOPK(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8) - *a2;
  if (v4)
  {
    v5 = v4 >> 6;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    while (v3[3] != 2)
    {
      v3 += 16;
      if (!--v5)
      {
        return;
      }
    }

    *(a3 + 48) = *v3;
    *(a3 + 52) = 1;
  }
}

void Nightingale::uiLogProcessor::getJDayUILog(uint64_t a1, char **a2, void *a3, uint64_t a4)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v7 = std::vector<Nightingale::cycleInfo>::__init_with_size[abi:nn200100]<Nightingale::cycleInfo*,Nightingale::cycleInfo*>(&v21, *a4, *(a4 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 5));
  v8 = v21;
  v9 = v22 - v21;
  if (v22 != v21)
  {
    *(a4 + 80) = *(v22 - 96);
    *(a4 + 84) = 1;
    if (0xAAAAAAAAAAAAAAABLL * (v9 >> 5) >= 2)
    {
      *(a4 + 88) = *(v8 + v9 - 192);
      *(a4 + 92) = 1;
    }
  }

  JDayLastNoFlowAftLastPeriodStart = Nightingale::uiLogProcessor::getJDayLastNoFlowAftLastPeriodStart(v7, a2, &v21);
  JDay1stOPKAftLastPeriodStart = Nightingale::uiLogProcessor::getJDay1stOPKAftLastPeriodStart(JDayLastNoFlowAftLastPeriodStart, a2, &v21);
  Nightingale::uiLogProcessor::getJDay1stFlow(JDay1stOPKAftLastPeriodStart, a2, a4 + 24);
  v13 = *a2;
  v14 = a2[1] - *a2;
  if (v14)
  {
    v15 = v14 >> 6;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    while (*(v13 + 3) != 2)
    {
      v13 += 64;
      if (!--v15)
      {
        goto LABEL_11;
      }
    }

    *(a4 + 72) = *v13;
    *(a4 + 76) = 1;
  }

LABEL_11:
  Nightingale::uiLogProcessor::getJDayLastFlowNoFlow(v12, a2, a4 + 24);
  if ((JDayLastNoFlowAftLastPeriodStart & 0x100000000) != 0)
  {
    if ((JDay1stOPKAftLastPeriodStart & 0x100000000) == 0)
    {
      *(a4 + 112) = JDayLastNoFlowAftLastPeriodStart;
      *(a4 + 116) = BYTE4(JDayLastNoFlowAftLastPeriodStart);
      goto LABEL_19;
    }

    v16 = JDay1stOPKAftLastPeriodStart + 9;
    if (JDay1stOPKAftLastPeriodStart + 9 <= JDayLastNoFlowAftLastPeriodStart)
    {
      v16 = JDayLastNoFlowAftLastPeriodStart;
    }
  }

  else
  {
    if ((JDay1stOPKAftLastPeriodStart & 0x100000000) == 0)
    {
      goto LABEL_19;
    }

    v16 = JDay1stOPKAftLastPeriodStart + 9;
  }

  *(a4 + 112) = v16;
  *(a4 + 116) = 1;
LABEL_19:
  *(a4 + 96) = JDayLastNoFlowAftLastPeriodStart;
  *(a4 + 100) = BYTE4(JDayLastNoFlowAftLastPeriodStart);
  *(a4 + 104) = JDay1stOPKAftLastPeriodStart;
  *(a4 + 108) = BYTE4(JDay1stOPKAftLastPeriodStart);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  Nightingale::phaseFactorProcessor::getCCVec(__p);
  *(a4 + 120) = Nightingale::phaseFactorProcessor::jDayFirstStartLastEndOfAPhaseSet(&v18, a3, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  v18 = &v21;
  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:nn200100](&v18);
}

void Nightingale::uiLogProcessor::getInPeriodNow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 8) - 92);
  *(a2 + 128) = 0;
  if (*(a3 + 44) == 1 && (v3 & 0x100000000) != 0)
  {
    v5 = *(a3 + 40);
    if (v5 == v3)
    {
      goto LABEL_6;
    }

    v6 = v3 + 1;
    if (*(a2 + 52) != 1)
    {
      if (v5 != v6)
      {
        return;
      }

      goto LABEL_6;
    }

    if (v5 == v6 && v5 != *(a2 + 48))
    {
LABEL_6:
      *(a2 + 128) = 1;
    }
  }
}

uint64_t Nightingale::uiLogProcessor::getNumPeriodsToKeepUR(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v3 = *(a3 + 8);
  result = -1431655765 * ((v3 - *a3) >> 5);
  if (result && v4 != v3)
  {
    v6 = *(a2 + 24);
    do
    {
      if (*(a2 + 28))
      {
        result = result - (*v4 <= v6);
        if (*v4 > v6)
        {
          break;
        }
      }

      v4 += 24;
    }

    while (v4 != v3);
  }

  return result;
}

unint64_t Nightingale::uiLogProcessor::getWhatShouldBeInSlideCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 5);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (HIDWORD(a4) != -2)
  {
    if (HIDWORD(a4) != -1 && v5 >= 1)
    {
      v6 = v5 & 0x7FFFFFFF;
      v7 = (v4 + 8);
      v8 = 1;
      do
      {
        if (!v5)
        {
          goto LABEL_22;
        }

        if (*v7 == 1 && *(v7 - 1) >= SHIDWORD(a4))
        {
          return v8 | (v5 << 32);
        }

        --v5;
        v7 += 96;
        --v6;
      }

      while (v6);
      v5 = 0;
      return v8 | (v5 << 32);
    }

LABEL_11:
    v8 = 1;
    return v8 | (v5 << 32);
  }

  if (v5 == 1)
  {
    goto LABEL_14;
  }

  if (v5 < 2)
  {
    goto LABEL_18;
  }

  v10 = (v5 - 2);
  if (v5 <= v10)
  {
LABEL_22:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (*(v4 + 96 * v10) < a4)
  {
LABEL_14:
    v8 = 2;
    v5 = 2;
  }

  else
  {
LABEL_18:
    if (v5 >= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = v5;
    }

    v8 = 3;
  }

  return v8 | (v5 << 32);
}

void Nightingale::uiLogProcessor::removeOutlier(char **a1@<X1>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  v6 = (v4 - v3) >> 2;
  if (v6 > 2)
  {
    std::vector<int>::vector[abi:nn200100](__p, a1);
    Nightingale::get_mad(__p, 1);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v7 = a1[1] - *a1;
    Nightingale::vMedian<double>();
  }

  if (a2 != a1)
  {

    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a2, v3, v4, v6);
  }
}

void Nightingale::uiLogProcessor::genPeriodSlide(void *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, const void **a5@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = -1431655765 * ((a1[1] - *a1) >> 5);
  if (v6)
  {
    if (v6 - a2 >= v6 - a4)
    {
      v14 = 0;
      v13 = 0;
    }

    else
    {
      v9 = v6 - a2;
      v10 = 96 * v6 - 96 * a2;
      v11 = a2 + (a4 << 31 >> 31);
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) <= v9)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v12 = *a1 + v10;
        if (*(v12 + 8) == 1)
        {
          *buf = (*(v12 + 4) - *v12 + 1);
          std::vector<float>::push_back[abi:nn200100](a5, buf);
        }

        ++v9;
        v10 += 96;
        --v11;
      }

      while (v11);
      v14 = *a5;
      v13 = a5[1];
    }

    if ((v13 - v14) > 0x30 && (v13 - v14) << 30 != 0xC00000000)
    {
      v15 = &v14[(((v13 - v14) << 30) - 0xC00000000) >> 30];
      v16 = v13 - v15;
      if (v13 != v15)
      {
        memmove(v14, v15, v13 - v15);
      }

      a5[1] = &v14[v16];
    }

    v17 = *(a3 + 8);
    if (!*(a3 + 12))
    {
      v17 = 5.0;
    }

    *buf = v17;
    std::vector<float>::push_back[abi:nn200100](a5, buf);
    if (ha_sensitive_logging_is_enabled())
    {
      log = ha_get_log();
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::genPeriodSlide();
      }
    }

    if (a5[1] - *a5 != 4)
    {
      v24 = 0;
      do
      {
        if (ha_sensitive_logging_is_enabled())
        {
          v25 = ha_get_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            if (v24 >= (a5[1] - *a5) >> 2)
            {
LABEL_49:
              std::string::__throw_length_error[abi:nn200100]();
            }

            v26 = *(*a5 + v24);
            *buf = 134217984;
            *&buf[4] = v26;
            _os_log_debug_impl(&dword_2588F5000, v25, OS_LOG_TYPE_DEBUG, "%3.1f, ", buf, 0xCu);
          }
        }

        ++v24;
      }

      while (v24 < ((a5[1] - *a5) >> 2) - 1);
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v19 = ha_get_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::genPeriodSlide(a5 + 1);
      }
    }

    Nightingale::uiLogProcessor::removeOutlier(a5, buf);
    v20 = *a5;
    if (*a5)
    {
      a5[1] = v20;
      operator delete(v20);
    }

    *a5 = *buf;
    a5[2] = v31;
    if (ha_sensitive_logging_is_enabled())
    {
      v21 = ha_get_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::genPeriodSlide();
      }
    }

    if (a5[1] - *a5 != 4)
    {
      for (i = 0; i < ((a5[1] - *a5) >> 2) - 1; ++i)
      {
        if (ha_sensitive_logging_is_enabled())
        {
          v28 = ha_get_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            if (i >= (a5[1] - *a5) >> 2)
            {
              goto LABEL_49;
            }

            v29 = *(*a5 + i);
            *buf = 134217984;
            *&buf[4] = v29;
            _os_log_debug_impl(&dword_2588F5000, v28, OS_LOG_TYPE_DEBUG, "%3.1f, ", buf, 0xCu);
          }
        }
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v22 = ha_get_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::genPeriodSlide(a5 + 1);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

BOOL Nightingale::uiLogProcessor::vecPhaseContains(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (!v4)
  {
    return 0;
  }

  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2[1] - *a2;
  }

  if (*v3 == a3)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v7;
    if (v5 == v7)
    {
      break;
    }

    v9 = v3[v7++];
  }

  while (v9 != a3);
  return v4 > v8;
}

void Nightingale::uiLogProcessor::genCycleSlide(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _DWORD *a4@<X4>, char a5@<W5>, char **a6@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v7 = -1431655765 * ((a1[1] - *a1) >> 5);
  if (!v7)
  {
    goto LABEL_59;
  }

  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a2 == 3)
  {
    goto LABEL_5;
  }

  v12 = 0;
  if (a2 == 2)
  {
    a6[1] = 0;
    *buf = 1105199104;
    v24 = a2;
    std::vector<float>::push_back[abi:nn200100](a6, buf);
    LODWORD(a2) = v24;
    v12 = *a6;
  }

  else if (a2 == 1)
  {
LABEL_5:
    v54 = v7 - 1;
    if (v7 - HIDWORD(a2) < v7 - 1)
    {
      v50 = a2;
      v13 = v7 - HIDWORD(a2);
      while (1)
      {
        v14 = *a1;
        v15 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
        if (v15 <= v13)
        {
LABEL_74:
          std::string::__throw_length_error[abi:nn200100]();
        }

        v16 = v14 + 96 * v13;
        v18 = *(v16 + 72);
        v17 = *(v16 + 80);
        if (v17 != v18)
        {
          break;
        }

        if (v15 <= v13)
        {
          goto LABEL_74;
        }

        v19 = v14 + 96 * v13;
        v21 = *(v19 + 72);
        v20 = *(v19 + 80);
        if (v20 != v21)
        {
          if (v20 - v21 >= 0)
          {
            operator new();
          }

LABEL_75:
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v15 <= v13)
        {
          goto LABEL_74;
        }

        v22 = v14 + 96 * v13;
        v23 = *(v22 + 24);
        if (((v23 ^ 1) & 1) == 0)
        {
          if ((v23 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:nn200100]();
          }

          *buf = (*(v22 + 20) - *v22 + 1);
          std::vector<float>::push_back[abi:nn200100](a6, buf);
        }

        if (v54 == ++v13)
        {
          v12 = *a6;
          v8 = a5;
          v9 = a4;
          LODWORD(a2) = v50;
          goto LABEL_22;
        }
      }

      if (v17 - v18 >= 0)
      {
        operator new();
      }

      goto LABEL_75;
    }

    v12 = 0;
LABEL_22:
    v10 = a3;
  }

  v26 = a6 + 1;
  v25 = a6[1];
  if ((v25 - v12) >= 0x31 && (v25 - v12) << 30 != 0xC00000000)
  {
    v27 = &v12[(((v25 - v12) << 30) - 0xC00000000) >> 30];
    v28 = v25 - v27;
    if (v25 != v27)
    {
      v29 = a2;
      memmove(v12, v27, v25 - v27);
      LODWORD(a2) = v29;
    }

    *v26 = &v12[v28];
  }

  if (a2 == 1 && *(v10 + 4) == 1)
  {
    *buf = *v10;
    std::vector<float>::push_back[abi:nn200100](a6, buf);
  }

  if (ha_sensitive_logging_is_enabled())
  {
    log = ha_get_log();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::uiLogProcessor::genCycleSlide();
    }
  }

  v31 = a6[1];
  if (*a6 == v31)
  {
    if (ha_sensitive_logging_is_enabled())
    {
      v33 = ha_get_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::genCycleSlide();
      }
    }
  }

  else
  {
    if (v31 - *a6 != 4)
    {
      v44 = 0;
      do
      {
        if (ha_sensitive_logging_is_enabled())
        {
          v45 = ha_get_log();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            if (v44 >= (a6[1] - *a6) >> 2)
            {
LABEL_76:
              std::string::__throw_length_error[abi:nn200100]();
            }

            v46 = *&(*a6)[4 * v44];
            *buf = 134217984;
            *&buf[4] = v46;
            _os_log_debug_impl(&dword_2588F5000, v45, OS_LOG_TYPE_DEBUG, "%3.1f, ", buf, 0xCu);
          }
        }

        ++v44;
      }

      while (v44 < ((a6[1] - *a6) >> 2) - 1);
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v32 = ha_get_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::genPeriodSlide(a6 + 1);
      }
    }
  }

  v35 = *a6;
  v34 = a6[1];
  Nightingale::uiLogProcessor::removeOutlier(a6, buf);
  v36 = *a6;
  if (*a6)
  {
    *v26 = v36;
    operator delete(v36);
  }

  v37 = *buf;
  *a6 = *buf;
  v38 = *&buf[8];
  *(a6 + 1) = *&buf[8];
  if ((v8 & 1) != 0 && v9)
  {
    *v9 = ((v34 - v35) >> 2) - ((v38 - v37) >> 2);
  }

  if (ha_sensitive_logging_is_enabled())
  {
    v39 = ha_get_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::uiLogProcessor::genCycleSlide();
    }
  }

  v40 = a6[1];
  if (*a6 == v40)
  {
    if (ha_sensitive_logging_is_enabled())
    {
      v42 = ha_get_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::genCycleSlide();
      }
    }
  }

  else
  {
    if (v40 - *a6 != 4)
    {
      for (i = 0; i < ((a6[1] - *a6) >> 2) - 1; ++i)
      {
        if (ha_sensitive_logging_is_enabled())
        {
          v48 = ha_get_log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            if (i >= (a6[1] - *a6) >> 2)
            {
              goto LABEL_76;
            }

            v49 = *&(*a6)[4 * i];
            *buf = 134217984;
            *&buf[4] = v49;
            _os_log_debug_impl(&dword_2588F5000, v48, OS_LOG_TYPE_DEBUG, "%3.1f, ", buf, 0xCu);
          }
        }
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v41 = ha_get_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::genPeriodSlide(v26);
      }
    }
  }

LABEL_59:
  v43 = *MEMORY[0x277D85DE8];
}

void Nightingale::uiLogProcessor::getCenter(uint64_t a1, void *a2, int a3)
{
  v3 = (a2[1] - *a2) >> 2;
  if (a3)
  {
    Nightingale::vMedian<double>();
  }

  Nightingale::vMean<double>();
}

double Nightingale::uiLogProcessor::getVariance(double a1, double a2, uint64_t a3, void *a4)
{
  if (((a4[1] - *a4) >> 2) >= 2)
  {
    Nightingale::vVar<double>();
  }

  return a2;
}

void Nightingale::uiLogProcessor::calSlideMeanStd(void *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a1[1] != *a1)
  {
    v4 = std::vector<int>::vector[abi:nn200100](&__p, a1);
    Nightingale::uiLogProcessor::getCenter(v4, &__p, a2);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
}

float Nightingale::uiLogProcessor::getACyclePeriodSlideMeanStd(_DWORD *a1, void *a2, void *a3, uint64_t a4)
{
  std::vector<int>::vector[abi:nn200100](__p, a2);
  v7 = a1[6];
  v8 = a1[7];
  Nightingale::uiLogProcessor::calSlideMeanStd(__p, 1, &v22);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*(a4 + 36) == v23)
  {
    if (*(a4 + 36))
    {
      v9 = v22;
      *(a4 + 32) = v9;
    }
  }

  else if (*(a4 + 36))
  {
    *(a4 + 36) = 0;
  }

  else
  {
    v10 = v22;
    *(a4 + 32) = v10;
    *(a4 + 36) = 1;
  }

  if (*(a4 + 44) == v25)
  {
    if (*(a4 + 44))
    {
      v11 = v24;
      *(a4 + 40) = v11;
    }
  }

  else if (*(a4 + 44))
  {
    *(a4 + 44) = 0;
  }

  else
  {
    v12 = v24;
    *(a4 + 40) = v12;
    *(a4 + 44) = 1;
  }

  std::vector<int>::vector[abi:nn200100](v16, a3);
  v13 = a1[8];
  v14 = a1[9];
  Nightingale::uiLogProcessor::calSlideMeanStd(v16, 1, &v17);
  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (*(a4 + 52) == v18)
  {
    if (*(a4 + 52))
    {
      result = v17;
      *(a4 + 48) = result;
    }
  }

  else if (*(a4 + 52))
  {
    *(a4 + 52) = 0;
  }

  else
  {
    result = v17;
    *(a4 + 48) = result;
    *(a4 + 52) = 1;
  }

  if (*(a4 + 60) == v20)
  {
    if (*(a4 + 60))
    {
      result = v19;
      *(a4 + 56) = result;
    }
  }

  else if (*(a4 + 60))
  {
    *(a4 + 60) = 0;
  }

  else
  {
    result = v19;
    *(a4 + 56) = result;
    *(a4 + 60) = 1;
  }

  return result;
}

void Nightingale::uiLogProcessor::getDLStartProcDate(uint64_t a1, uint64_t a2, uint64_t a3, int **a4, uint64_t a5)
{
  v5 = *(a3 + 60);
  v6 = *(a3 + 56) - 39;
  if (!*(a3 + 60))
  {
    v6 = 0;
  }

  *a5 = v6;
  *(a5 + 4) = v5;
  v7 = *a4;
  v8 = a4[1];
  v9 = v8 - *a4;
  if (v8 != *a4)
  {
    v10 = 0;
    v11 = v9 >> 6;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while (1)
    {
      v13 = *v7;
      v7 += 16;
      v12 = v13;
      if (v5)
      {
        if (v12 == v6)
        {
          break;
        }
      }

      if (v11 == ++v10)
      {
        return;
      }
    }

    *(a5 + 8) = v10;
    *(a5 + 12) = 1;
  }
}

void Nightingale::uiLogProcessor::getCyclePeriodMeanStdAllCycles(_DWORD *a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = a2[1];
  if (v7 != v8)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v11 = std::vector<Nightingale::cycleInfo>::__init_with_size[abi:nn200100]<Nightingale::cycleInfo*,Nightingale::cycleInfo*>(&v54, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 5));
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
    if (v13 >= 1)
    {
      v14 = v13 & 0x7FFFFFFF;
      do
      {
        v16 = *a2;
        v15 = a2[1];
        v17 = -1431655765 * ((v15 - *a2) >> 5);
        if (v17 && v16 != v15)
        {
          v18 = *(a3 + 24);
          do
          {
            if (*(a3 + 28))
            {
              v17 -= *v16 <= v18;
              if (*v16 > v18)
              {
                break;
              }
            }

            v16 += 24;
          }

          while (v16 != v15);
        }

        ShouldBeInSlideCC = Nightingale::uiLogProcessor::getWhatShouldBeInSlideCC(v11, v12, &v54, a5);
        v20 = HIDWORD(ShouldBeInSlideCC);
        Nightingale::uiLogProcessor::genCycleSlide(&v54, ShouldBeInSlideCC, a3, 0, 0, &v52);
        if (v17 < v20)
        {
          LODWORD(v20) = v17;
        }

        memset(v49, 0, sizeof(v49));
        std::vector<Nightingale::cycleInfo>::__init_with_size[abi:nn200100]<Nightingale::cycleInfo*,Nightingale::cycleInfo*>(v49, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
        Nightingale::uiLogProcessor::genPeriodSlide(v49, v20, a3, a4, &v50);
        *buf = v49;
        std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:nn200100](buf);
        __dst = 0;
        v48 = 0;
        v46 = 0;
        if (v53 != v52)
        {
          std::vector<int>::__vallocate[abi:nn200100](&v46, (v53 - v52) >> 2);
        }

        __p = 0;
        v44 = 0;
        v45 = 0;
        if (v51 != v50)
        {
          std::vector<int>::__vallocate[abi:nn200100](&__p, (v51 - v50) >> 2);
        }

        Nightingale::uiLogProcessor::getACyclePeriodSlideMeanStd(a1, &v46, &__p, v55 - 96);
        if (__p)
        {
          v44 = __p;
          operator delete(__p);
        }

        if (v46)
        {
          __dst = v46;
          operator delete(v46);
        }

        v21 = v14 - 1;
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v14 - 1)
        {
          goto LABEL_52;
        }

        v22 = *a2 + 96 * v21;
        v23 = *(v55 - 64);
        *(v22 + 36) = *(v55 - 60);
        *(v22 + 32) = v23;
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v21)
        {
          goto LABEL_52;
        }

        v24 = *a2 + 96 * v21;
        v25 = *(v55 - 56);
        *(v24 + 44) = *(v55 - 52);
        *(v24 + 40) = v25;
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v21 || (v26 = *a2 + 96 * v21, v27 = *(v55 - 48), *(v26 + 52) = *(v55 - 44), *(v26 + 48) = v27, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v21))
        {
LABEL_52:
          std::string::__throw_length_error[abi:nn200100]();
        }

        v28 = *a2 + 96 * v21;
        v29 = *(v55 - 40);
        *(v28 + 60) = *(v55 - 36);
        *(v28 + 56) = v29;
        v30 = v55;
        v31 = *(v55 - 24);
        if (v31)
        {
          *(v55 - 16) = v31;
          operator delete(v31);
        }

        v55 = v30 - 96;
        if (ha_sensitive_logging_is_enabled())
        {
          log = ha_get_log();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v21)
            {
              goto LABEL_52;
            }

            v35 = *a2 + 96 * v21;
            v36 = -1.0;
            v37 = -1.0;
            if (*(v35 + 36) == 1)
            {
              v37 = *(v35 + 32);
            }

            if (*(v35 + 44) == 1)
            {
              v36 = *(v35 + 40);
            }

            *buf = 134218240;
            *&buf[4] = v37;
            v58 = 2048;
            v59 = v36;
            _os_log_debug_impl(&dword_2588F5000, log, OS_LOG_TYPE_DEBUG, "\t cycleLenMean: %6.4f, cycleLenVar: %6.4f, ", buf, 0x16u);
          }
        }

        if (v14 != 1)
        {
          if (ha_sensitive_logging_is_enabled())
          {
            v33 = ha_get_log();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v21)
              {
                goto LABEL_52;
              }

              v38 = *a2 + 96 * v21;
              v39 = -1.0;
              v40 = -1.0;
              if (*(v38 + 52) == 1)
              {
                v40 = *(v38 + 48);
              }

              if (*(v38 + 60) == 1)
              {
                v39 = *(v38 + 56);
              }

              *buf = 134218240;
              *&buf[4] = v40;
              v58 = 2048;
              v59 = v39;
              _os_log_debug_impl(&dword_2588F5000, v33, OS_LOG_TYPE_DEBUG, "periodLenMean: %6.4f, periodLenVar: %6.4f},", buf, 0x16u);
            }
          }
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        v11 = v52;
        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }
      }

      while (v14-- > 1);
    }

    v52 = &v54;
    std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:nn200100](&v52);
  }

  v41 = *MEMORY[0x277D85DE8];
}

void Nightingale::uiLogProcessor::getAvgCycleLenForSomeCycleReproductive(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  __p = 0;
  v23 = 0;
  v24 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = a4;
    v8 = 0;
    v9 = -a4;
    v20 = a2[1];
    do
    {
      if (Nightingale::phaseFactorProcessor::vPhasesContainsAPhase(&__p, (v4 + 72), 0))
      {
        v10 = -1 - 1431655765 * ((a2[1] - *a2) >> 5);
        if (v8 + v6 >= v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = (v8 + v6);
        }

        if ((*(v4 + 68) & 1) == 0)
        {
          *(v4 + 68) = 1;
        }

        *(v4 + 64) = 0;
        if (((v8 - v6) & ~((v8 - v6) >> 31)) <= v11)
        {
          v12 = 0;
          v13 = 0;
          v14 = v9 & ~(v9 >> 31);
          v15 = 96 * v14;
          do
          {
            if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v14)
            {
LABEL_25:
              std::string::__throw_length_error[abi:nn200100]();
            }

            v16 = *a2 + v15;
            if (*(v16 + 24) == 1 && !Nightingale::phaseFactorProcessor::vPhasesContainsAPhase(&__p, (v16 + 72), 0))
            {
              if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v14)
              {
                goto LABEL_25;
              }

              v17 = *a2 + v15;
              if ((*(v17 + 24) & 1) == 0)
              {
                v19 = std::__throw_bad_optional_access[abi:nn200100]();
                Nightingale::uiLogProcessor::hist_process(v19);
                return;
              }

              v13 = v13 + *(v17 + 20) - *v17 + 1;
              ++v12;
            }

            v15 += 96;
          }

          while (v14++ < v11);
          v6 = a4;
          v5 = v20;
          if (v12 > 0)
          {
            *(v4 + 64) = v13 / v12;
            *(v4 + 68) = 1;
          }
        }
      }

      ++v8;
      v4 += 96;
      ++v9;
    }

    while (v4 != v5);
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }
  }
}

void Nightingale::uiLogProcessor::hist_process(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 28) = 0;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 44) = 0;
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 76) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0;
  *(a3 + 96) = 0;
  *(a3 + 100) = 0;
  *(a3 + 104) = 0;
  *(a3 + 108) = 0;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  if (*a1 != *(a1 + 8))
  {
    Nightingale::uiLogProcessor::process(a1, a2, __p);
    std::vector<Nightingale::cycleInfo>::__vdeallocate(a3);
    *a3 = *__p;
    *(a3 + 16) = v14;
    __p[1] = 0;
    v14 = 0;
    __p[0] = 0;
    *(a3 + 72) = v18;
    *(a3 + 88) = v19;
    *(a3 + 104) = v20[0];
    *(a3 + 113) = *(v20 + 9);
    *(a3 + 24) = v15;
    *(a3 + 40) = v16;
    *(a3 + 56) = v17;
    v21 = __p;
    std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:nn200100](&v21);
    Nightingale::uiLogProcessor::addCycleEnd(v6, a3);
    Nightingale::uiLogProcessor::opk2Cycles(v7, a1, a3);
    v8 = *a1;
    v9 = *(a1 + 8) - *a1;
    if (v9)
    {
      v10 = v9 >> 6;
      if (v10 <= 1)
      {
        v10 = 1;
      }

      while (v8[3] != 2)
      {
        v8 += 16;
        if (!--v10)
        {
          goto LABEL_9;
        }
      }

      *(a3 + 72) = *v8;
      *(a3 + 76) = 1;
    }

LABEL_9:
    __p[0] = 0;
    __p[1] = 0;
    v14 = 0;
    Nightingale::uiCycleFactorProcess::tagCycleInfoReproductive(__p, a3, a2);
    Nightingale::uiLogProcessor::getAvgCycleLenForSomeCycleReproductive(v11, a3, v12, 6);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void Nightingale::uiLogProcessor::process(int **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v92 = *MEMORY[0x277D85DE8];
  *(a3 + 28) = 0;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 44) = 0;
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 76) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0;
  *(a3 + 96) = 0;
  *(a3 + 100) = 0;
  *(a3 + 104) = 0;
  *(a3 + 108) = 0;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  __src = 0;
  v88 = 0;
  v89 = 0;
  __p = 0;
  v85 = 0;
  v86 = 0;
  v5 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v7 = *a1;
    while (v7[1] > 5)
    {
      v7 += 16;
      if (v7 == v4)
      {
        v77 = *v5;
        goto LABEL_7;
      }
    }

    v77 = *v7;
LABEL_7:
    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = &v5[v9];
        if ((v5[v9 + 1] - 1) <= 3)
        {
          v13 = v88;
          if (v88 >= v89)
          {
            v15 = __src;
            v16 = v88 - __src;
            v17 = (v88 - __src) >> 2;
            v18 = v17 + 1;
            if ((v17 + 1) >> 62)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v19 = v89 - __src;
            if ((v89 - __src) >> 1 > v18)
            {
              v18 = v19 >> 1;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v20 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(&__src, v20);
            }

            v21 = (4 * v17);
            v22 = *v12;
            v23 = &v21[-((v88 - __src) >> 2)];
            *v21 = v22;
            v14 = v21 + 1;
            memcpy(v23, v15, v16);
            v24 = __src;
            __src = v23;
            v88 = v14;
            v89 = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v88 = *v12;
            v14 = v13 + 1;
          }

          v88 = v14;
          if (v11 >= (a1[1] - *a1) >> 6)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v25 = &(*a1)[v9];
          v26 = v85;
          if (v85 >= v86)
          {
            v27 = __p;
            v28 = v85 - __p;
            v29 = (v85 - __p) >> 2;
            v30 = v29 + 1;
            if ((v29 + 1) >> 62)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v31 = v86 - __p;
            if ((v86 - __p) >> 1 > v30)
            {
              v30 = v31 >> 1;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v32 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(&__p, v32);
            }

            v33 = (4 * v29);
            v34 = v25[1];
            v35 = &v33[-((v85 - __p) >> 2)];
            *v33 = v34;
            v10 = v33 + 1;
            memcpy(v35, v27, v28);
            v36 = __p;
            __p = v35;
            v85 = v10;
            v86 = 0;
            if (v36)
            {
              operator delete(v36);
            }
          }

          else
          {
            *v85 = v25[1];
            v10 = v26 + 1;
          }

          v85 = v10;
          v5 = *a1;
          v4 = a1[1];
        }

        ++v11;
        v9 += 16;
      }

      while (v11 < (v4 - v5) >> 6);
      if (__src != v88)
      {
        v37 = __p;
        if (__p == v10)
        {
          goto LABEL_103;
        }

        if (ha_sensitive_logging_is_enabled())
        {
          log = ha_get_log();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::process();
          }
        }

        if (__src == v88)
        {
          if (ha_sensitive_logging_is_enabled())
          {
            v40 = ha_get_log();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              Nightingale::uiLogProcessor::genCycleSlide();
            }
          }
        }

        else
        {
          if (v88 - __src != 4)
          {
            v58 = 0;
            do
            {
              if (ha_sensitive_logging_is_enabled())
              {
                v59 = ha_get_log();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                {
                  v60 = *(__src + v58);
                  *buf = 67109120;
                  v91 = v60;
                  _os_log_debug_impl(&dword_2588F5000, v59, OS_LOG_TYPE_DEBUG, "%d, ", buf, 8u);
                }
              }

              ++v58;
            }

            while (v58 < ((v88 - __src) >> 2) - 1);
          }

          if (ha_sensitive_logging_is_enabled())
          {
            v39 = ha_get_log();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              Nightingale::uiLogProcessor::process(&v88);
            }
          }
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v41 = ha_get_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::process();
          }
        }

        if (__p == v85)
        {
          is_enabled = ha_sensitive_logging_is_enabled();
          if (is_enabled)
          {
            v44 = ha_get_log();
            is_enabled = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);
            if (is_enabled)
            {
              Nightingale::uiLogProcessor::genCycleSlide();
            }
          }
        }

        else
        {
          if (v85 - __p != 4)
          {
            v61 = 0;
            do
            {
              if (ha_sensitive_logging_is_enabled())
              {
                v62 = ha_get_log();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                {
                  v63 = *(__p + v61);
                  *buf = 67109120;
                  v91 = v63;
                  _os_log_debug_impl(&dword_2588F5000, v62, OS_LOG_TYPE_DEBUG, "%d, ", buf, 8u);
                }
              }

              ++v61;
            }

            while (v61 < ((v85 - __p) >> 2) - 1);
          }

          is_enabled = ha_sensitive_logging_is_enabled();
          if (is_enabled)
          {
            v43 = ha_get_log();
            is_enabled = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
            if (is_enabled)
            {
              Nightingale::uiLogProcessor::process(&v85);
            }
          }
        }

        v81 = 0;
        __dst = 0;
        v83 = 0;
        if (v88 != __src)
        {
          std::vector<int>::__vallocate[abi:nn200100](&v81, (v88 - __src) >> 2);
        }

        v78 = 0;
        v79 = 0;
        v80 = 0;
        if (v85 != __p)
        {
          std::vector<int>::__vallocate[abi:nn200100](&v78, (v85 - __p) >> 2);
        }

        Nightingale::uiLogProcessor::extractPeriods(is_enabled, &v81, &v78, v77, a2, a3);
        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (v81)
        {
          __dst = v81;
          operator delete(v81);
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v45 = ha_get_log();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::process();
          }
        }

        v46 = *(a3 + 8);
        if (*a3 == v46)
        {
          if (ha_sensitive_logging_is_enabled())
          {
            v48 = ha_get_log();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              Nightingale::uiLogProcessor::genCycleSlide();
            }
          }
        }

        else
        {
          if (v46 - *a3 != 96)
          {
            v64 = 0;
            v65 = 0;
            do
            {
              if (ha_sensitive_logging_is_enabled())
              {
                v66 = ha_get_log();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                {
                  if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 5) <= v65)
                  {
LABEL_147:
                    std::string::__throw_length_error[abi:nn200100]();
                  }

                  v67 = *(*a3 + v64);
                  *buf = 67109120;
                  v91 = v67;
                  _os_log_debug_impl(&dword_2588F5000, v66, OS_LOG_TYPE_DEBUG, "%d, ", buf, 8u);
                }
              }

              ++v65;
              v64 += 96;
            }

            while (v65 < -1 - 0x5555555555555555 * ((*(a3 + 8) - *a3) >> 5));
          }

          if (ha_sensitive_logging_is_enabled())
          {
            v47 = ha_get_log();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              Nightingale::uiLogProcessor::process((a3 + 8));
            }
          }
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v49 = ha_get_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::process();
          }
        }

        v50 = *(a3 + 8);
        if (*a3 == v50)
        {
          if (ha_sensitive_logging_is_enabled())
          {
            v52 = ha_get_log();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              Nightingale::uiLogProcessor::genCycleSlide();
            }
          }
        }

        else
        {
          if (v50 - *a3 != 96)
          {
            v68 = 0;
            for (i = 0; i < -1 - 0x5555555555555555 * ((*(a3 + 8) - *a3) >> 5); ++i)
            {
              if (ha_sensitive_logging_is_enabled())
              {
                v70 = ha_get_log();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
                {
                  if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 5) <= i)
                  {
                    goto LABEL_147;
                  }

                  v71 = *a3 + v68;
                  if (*(v71 + 8) == 1)
                  {
                    v72 = *(v71 + 4);
                  }

                  else
                  {
                    v72 = -1;
                  }

                  *buf = 67109120;
                  v91 = v72;
                  _os_log_debug_impl(&dword_2588F5000, v70, OS_LOG_TYPE_DEBUG, "%d, ", buf, 8u);
                }
              }

              v68 += 96;
            }
          }

          if (ha_sensitive_logging_is_enabled())
          {
            v51 = ha_get_log();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              Nightingale::uiLogProcessor::process((a3 + 8));
            }
          }
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v53 = ha_get_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::process();
          }
        }

        v54 = *(a3 + 8);
        if (*a3 == v54)
        {
          if (ha_sensitive_logging_is_enabled())
          {
            v56 = ha_get_log();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              Nightingale::uiLogProcessor::process();
            }
          }
        }

        else
        {
          if (v54 - *a3 != 96)
          {
            v73 = 0;
            v74 = 28;
            do
            {
              if (ha_sensitive_logging_is_enabled())
              {
                v75 = ha_get_log();
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                {
                  if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 5) <= v73)
                  {
                    goto LABEL_147;
                  }

                  v76 = *(*a3 + v74);
                  *buf = 67109120;
                  v91 = v76;
                  _os_log_debug_impl(&dword_2588F5000, v75, OS_LOG_TYPE_DEBUG, "%d, ", buf, 8u);
                }
              }

              ++v73;
              v74 += 96;
            }

            while (v73 < -1 - 0x5555555555555555 * ((*(a3 + 8) - *a3) >> 5));
          }

          if (ha_sensitive_logging_is_enabled())
          {
            v55 = ha_get_log();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              Nightingale::uiLogProcessor::process((a3 + 8));
            }
          }
        }
      }
    }
  }

  v37 = __p;
LABEL_103:
  if (v37)
  {
    v85 = v37;
    operator delete(v37);
  }

  if (__src)
  {
    v88 = __src;
    operator delete(__src);
  }

  v57 = *MEMORY[0x277D85DE8];
}

void Nightingale::uiCycleFactorProcess::tagCycleInfoReproductive(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a3 != a3[1])
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
    v4 = a2[1];
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 5);
    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = (v5 - 1);
        do
        {
          if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v9)
          {
LABEL_17:
            std::string::__throw_length_error[abi:nn200100]();
          }

          v11 = (*a2 + v8);
          if (*(v11 + 24) == 1)
          {
            Nightingale::phaseFactorProcessor::tagPhaseJDayRange(a1, *v11 | (v11[5] << 32), a3, &__p);
            if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) <= v9)
            {
              goto LABEL_17;
            }

            v12 = (*a2 + v8 + 72);
            if (v12 != &__p)
            {
              std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(v12, __p, v16, v16 - __p);
            }
          }

          ++v9;
          v8 += 96;
        }

        while (v10 != v9);
        v4 = a2[1];
      }

      Nightingale::phaseFactorProcessor::tagPhaseJDayRange(a1, *(v4 - 96) | 0xFFFFFFFF00000000, a3, &__p);
      v13 = (a2[1] - 24);
      v14 = __p;
      if (v13 != &__p)
      {
        std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(v13, __p, v16, v16 - __p);
        v14 = __p;
      }

      if (v14)
      {
        v16 = v14;
        operator delete(v14);
      }
    }
  }
}

void Nightingale::uiLogProcessor::extractCycles(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 28) = 0;
  *(a5 + 32) = 0;
  *(a5 + 36) = 0;
  *(a5 + 40) = 0;
  *(a5 + 44) = 0;
  *(a5 + 48) = 0;
  *(a5 + 52) = 0;
  *(a5 + 56) = 0;
  *(a5 + 60) = 0;
  *(a5 + 64) = 0;
  *(a5 + 68) = 0;
  *(a5 + 72) = 0;
  *(a5 + 76) = 0;
  *(a5 + 80) = 0;
  *(a5 + 84) = 0;
  *(a5 + 88) = 0;
  *(a5 + 92) = 0;
  *(a5 + 96) = 0;
  *(a5 + 100) = 0;
  *(a5 + 104) = 0;
  *(a5 + 108) = 0;
  *(a5 + 112) = 0;
  *(a5 + 116) = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  if (*a2 != *(a2 + 8))
  {
    Nightingale::uiLogProcessor::process(a2, a3, __p);
    std::vector<Nightingale::cycleInfo>::__vdeallocate(a5);
    *a5 = *__p;
    *(a5 + 16) = v16;
    __p[1] = 0;
    v16 = 0;
    __p[0] = 0;
    *(a5 + 72) = v20;
    *(a5 + 88) = v21;
    *(a5 + 104) = v22[0];
    *(a5 + 113) = *(v22 + 9);
    *(a5 + 24) = v17;
    *(a5 + 40) = v18;
    *(a5 + 56) = v19;
    v23 = __p;
    std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:nn200100](&v23);
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    if (*a5 != *(a5 + 8))
    {
      Nightingale::uiLogProcessor::addCycleEnd(v10, a5);
      Nightingale::uiCycleFactorProcess::tagCycleInfoReproductive(__p, a5, a3);
      Nightingale::uiLogProcessor::opk2Cycles(v11, a2, a5);
      Nightingale::uiLogProcessor::getJDayUILog(v12, a2, a3, a5);
      Nightingale::uiLogProcessor::guardConfig(v13, a4, a5 + 24);
      Nightingale::uiLogProcessor::getInPeriodNow(v14, a5, a4);
      Nightingale::uiLogProcessor::getCyclePeriodMeanStdAllCycles(a1, a5, a4, *(a5 + 128), *(a5 + 120));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void Nightingale::uiLogProcessor::getEnsembleInput(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5.i64[0] = 0x3F0000003FLL;
  v5.i64[1] = 0x3F0000003FLL;
  v6 = vnegq_f32(v5);
  *a4 = v6;
  *(a4 + 16) = v6;
  *(a4 + 32) = v6;
  *(a4 + 48) = v6;
  *(a4 + 64) = v6;
  *(a4 + 80) = vneg_f32(0x3F0000003FLL);
  if (*a2 != a2[1])
  {
    ShouldBeInSlideCC = Nightingale::uiLogProcessor::getWhatShouldBeInSlideCC(a1, a2, a2, a2[15]);
    v21 = 0;
    Nightingale::uiLogProcessor::genCycleSlide(a2, ShouldBeInSlideCC, a3, &v21, 1, &v19);
    __dst = 0;
    v14 = 0;
    __p = 0;
    if (v20 != v19)
    {
      std::vector<int>::__vallocate[abi:nn200100](&__p, (v20 - v19) >> 2);
    }

    Nightingale::uiLogProcessor::calSlideMeanStd(&__p, 1, &v15);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    v10 = v17;
    if (!v18)
    {
      v10 = NAN;
    }

    *a4 = (-1431655765 * ((a2[1] - *a2) >> 5) - 1);
    *(a4 + 4) = sqrtf(v10);
    v11 = v15;
    if (!v16)
    {
      v11 = NAN;
    }

    *(a4 + 8) = v11;
    *(a4 + 84) = v21;
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }
  }
}

__n128 Nightingale::getEnsembleInputArray@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<float>::resize(a2, 0x16uLL);
  v4 = *a2;
  result = *a1;
  *(v4 + 16) = *(a1 + 16);
  v7 = *(a1 + 48);
  v6 = *(a1 + 64);
  v8 = *(a1 + 32);
  *(v4 + 80) = *(a1 + 80);
  *(v4 + 48) = v7;
  *(v4 + 64) = v6;
  *(v4 + 32) = v8;
  *v4 = result;
  return result;
}

void std::vector<float>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v2);
  }
}

void Nightingale::uiLogProcessor::print_anUILog(uint64_t a1, uint64_t *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  if (*a2 != a2[1])
  {
    if (ha_sensitive_logging_is_enabled())
    {
      log = ha_get_log();
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog();
      }
    }

    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      v6 = 0;
      do
      {
        if (ha_sensitive_logging_is_enabled())
        {
          v7 = ha_get_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v24 = *v4;
            v25 = *(v4 + 28);
            *buf = 67109376;
            v67 = v24;
            v68 = 1024;
            v69 = v25;
            _os_log_debug_impl(&dword_2588F5000, v7, OS_LOG_TYPE_DEBUG, "\t{jDayPeriodStart: %d, isDeterminant: %d", buf, 0xEu);
          }
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v8 = ha_get_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::print_anUILog(&v64, v4, v65);
          }
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v9 = ha_get_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::print_anUILog(&v62, v4, v63);
          }
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v10 = ha_get_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::print_anUILog(&v60, v4, v61);
          }
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v11 = ha_get_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::print_anUILog(&v58, v4, &v59, v11);
          }
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v12 = ha_get_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::print_anUILog(&v56, v4, &v57, v12);
          }
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v13 = ha_get_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::print_anUILog(&v54, v4, &v55, v13);
          }
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v14 = ha_get_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::print_anUILog(&v52, v4, &v53, v14);
          }
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v15 = ha_get_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::print_anUILog(&v50, v51);
          }
        }

        v17 = *(v4 + 72);
        v16 = *(v4 + 80);
        if (v17 != v16)
        {
          v18 = 0;
          do
          {
            if (ha_sensitive_logging_is_enabled())
            {
              v19 = ha_get_log();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v21 = *(v17 + v18);
                *buf = 67109120;
                v67 = v21;
                _os_log_debug_impl(&dword_2588F5000, v19, OS_LOG_TYPE_DEBUG, "%d ", buf, 8u);
              }
            }

            if (~*(v4 + 72) + *(v4 + 80) > v18)
            {
              if (ha_sensitive_logging_is_enabled())
              {
                v20 = ha_get_log();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  Nightingale::uiLogProcessor::print_anUILog(&v48, v49);
                }
              }
            }

            ++v18;
          }

          while (v17 + v18 != v16);
        }

        if (ha_sensitive_logging_is_enabled())
        {
          v22 = ha_get_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            Nightingale::uiLogProcessor::print_anUILog(&v46, v47);
          }
        }

        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) - 1 > v6)
        {
          if (ha_sensitive_logging_is_enabled())
          {
            v23 = ha_get_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              Nightingale::uiLogProcessor::print_anUILog(&v44, v45);
            }
          }
        }

        ++v6;
        v4 += 96;
      }

      while (v4 != v5);
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v26 = ha_get_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog();
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v27 = ha_get_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog();
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v28 = ha_get_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v29 = ha_get_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v30 = ha_get_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v31 = ha_get_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v32 = ha_get_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v33 = ha_get_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v34 = ha_get_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v35 = ha_get_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v36 = ha_get_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v37 = ha_get_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v38 = ha_get_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v39 = ha_get_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v40 = ha_get_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v41 = ha_get_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v42 = ha_get_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::uiLogProcessor::print_anUILog(a2);
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

void *Nightingale::PhaseSet::add(void *result, unsigned int a2)
{
  if (a2 >= 9)
  {
    abort();
  }

  *result |= 1 << a2;
  return result;
}

void *Nightingale::PhaseSet::remove(void *result, unsigned int a2)
{
  if (a2 >= 9)
  {
    abort();
  }

  *result &= ~(1 << a2);
  return result;
}

uint64_t Nightingale::PhaseSet::contains(void *a1, unsigned int a2)
{
  if (a2 >= 9)
  {
    abort();
  }

  return (*a1 >> a2) & 1;
}

void Nightingale::PhaseSet::phasesOnInPhaseSet2Vec(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0x706050403020100;
  v21 = 8;
  std::vector<Nightingale::Phase>::vector[abi:nn200100](&v18, &v20, 9);
  v5 = v18;
  v4 = v19;
  if (v19 != v18)
  {
    v6 = 0;
    do
    {
      v7 = v5[v6];
      if (v7 >= 9)
      {
        abort();
      }

      if ((*a1 >> v7))
      {
        v9 = *(a2 + 8);
        v8 = *(a2 + 16);
        if (v9 >= v8)
        {
          v11 = *a2;
          v12 = &v9[-*a2];
          v13 = (v12 + 1);
          if ((v12 + 1) < 0)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v14 = v8 - v11;
          if (2 * v14 > v13)
          {
            v13 = 2 * v14;
          }

          if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            operator new();
          }

          v16 = &v9[-*a2];
          *v12 = v7;
          v10 = v12 + 1;
          memcpy(0, v11, v16);
          *a2 = 0;
          *(a2 + 8) = v12 + 1;
          *(a2 + 16) = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          *v9 = v7;
          v10 = v9 + 1;
        }

        *(a2 + 8) = v10;
        v5 = v18;
        v4 = v19;
      }

      ++v6;
    }

    while (v4 - v5 > v6);
  }

  if (v5)
  {
    v19 = v5;
    operator delete(v5);
  }

  v17 = *MEMORY[0x277D85DE8];
}

__n128 Nightingale::uiProcessForLstm::uiProcessForLstm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  result = *a5;
  *(a1 + 40) = a5[1].n128_u64[0];
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  result = *a5;
  *(a1 + 40) = a5[1].n128_u64[0];
  *(a1 + 24) = result;
  return result;
}

void Nightingale::uiProcessForLstm::prepareUiLogForDL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 4) == 1 && *(a2 + 12) == 1 && *(a2 + 20) == 1)
  {
    *(a1 + 56) = *(a2 + 16);
    *(a1 + 48) = *a2;
    *(a1 + 52) = *(a2 + 8);
    Nightingale::uiProcessForLstm::prepareDLSliceFlow(a1, a2, a3);

    Nightingale::uiProcessForLstm::prepareDLSliceCycleMeanStd(a1, v9, a4, a5);
  }
}

void Nightingale::uiProcessForLstm::prepareDLSliceFlow(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[2];
  if (*(v5 + 12))
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = &Nightingale::DEFAULT_PERIOD_LEN_EXTEND_1DAYPERIOD;
  }

  v7 = *v6;
  IdxOfDailyInGreaterThanJayDay = Nightingale::getIdxOfDailyInGreaterThanJayDay(*a1, *(a1 + 12));
  if ((IdxOfDailyInGreaterThanJayDay & 0x100000000) != 0)
  {
    v44 = IdxOfDailyInGreaterThanJayDay;
    v45 = a3;
    __src = 0;
    v48 = 0;
    v49 = 0;
    v9 = a1[1];
    v10 = *v9;
    v11 = v9[1];
    if (*v9 != v11)
    {
      v12 = 0;
      do
      {
        v14 = *(v10 + 8) != 1 || *v10 != *(v10 + 4) || v7 < 2;
        if (!v14)
        {
          v15 = 1;
          do
          {
            v16 = v15 + *v10;
            if (v16 >= *(a1 + 12) && v16 <= *(a1 + 13))
            {
              if (v12 >= v49)
              {
                v17 = __src;
                v18 = v12 - __src;
                v19 = (v12 - __src) >> 2;
                v20 = v19 + 1;
                if ((v19 + 1) >> 62)
                {
                  std::string::__throw_length_error[abi:nn200100]();
                }

                v21 = v49 - __src;
                if ((v49 - __src) >> 1 > v20)
                {
                  v20 = v21 >> 1;
                }

                if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v22 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v22 = v20;
                }

                if (v22)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(&__src, v22);
                }

                v23 = v19;
                v24 = (4 * v19);
                v25 = &v24[-v23];
                *v24 = v16;
                v12 = (v24 + 1);
                memcpy(v25, v17, v18);
                v26 = __src;
                __src = v25;
                v48 = v12;
                v49 = 0;
                if (v26)
                {
                  operator delete(v26);
                }
              }

              else
              {
                *v12 = v16;
                v12 += 4;
              }

              v48 = v12;
            }

            ++v15;
          }

          while (v7 != v15);
        }

        v10 += 96;
      }

      while (v10 != v11);
    }

    v27 = *(a1 + 12);
    if (v27 <= *(a1 + 13))
    {
      v28 = v44;
      do
      {
        v29 = **a1;
        if (v28 < (((*a1)[1] - v29) >> 6) && (v30 = (v29 + (v28 << 6)), v27 == *v30))
        {
          v31 = v30[1];
          v32 = 0;
          if (v31 <= 4)
          {
            v32 = dword_2589510A8[v31];
          }

          v46 = v32;
          std::vector<float>::push_back[abi:nn200100](v45, &v46);
          ++v28;
        }

        else
        {
          std::vector<float>::push_back[abi:nn200100](v45, &Nightingale::HkDlFlowMap::flow_unknown);
        }

        v34 = __src;
        v33 = v48;
        if (__src != v48 && v27 == *__src && v28 >= 1)
        {
          v36 = (v28 - 1);
          v37 = **a1;
          if (v36 >= ((*a1)[1] - v37) >> 6)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          if ((*(v37 + (v36 << 6) + 4) - 5) <= 0xFFFFFFFB)
          {
            *(*(v45 + 8) - 4) = 0x40000000;
          }

          v38 = v33 - (v34 + 4);
          if (v33 != v34 + 4)
          {
            memmove(v34, v34 + 4, v33 - (v34 + 4));
          }

          v48 = &v34[v38];
        }

        v14 = v27++ < *(a1 + 13);
      }

      while (v14);
    }

    v39 = *v45;
    v40 = *(v45 + 8);
    if (*v45 != v40)
    {
      v41 = *(a1 + 7);
      if (v41 != 0.0)
      {
        v42 = *(a1 + 6);
        v43 = (v40 - v39) >> 2;
        if (v43 <= 1)
        {
          v43 = 1;
        }

        do
        {
          *v39 = (*v39 - v42) / v41;
          ++v39;
          --v43;
        }

        while (v43);
      }
    }

    if (__src)
    {
      v48 = __src;
      operator delete(__src);
    }
  }
}

void Nightingale::uiProcessForLstm::prepareDLSliceCycleMeanStd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = **(a1 + 8);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 8) - v4) >> 5);
  if (v5 >= 2)
  {
    v9 = v5 - 1;
    v10 = v5 & 0x7FFFFFFF;
    v11 = (96 * v10) | 0x18;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 8) - v4) >> 5);
    while (1)
    {
      v13 = (v12 - 1);
      if (v5 <= v13)
      {
        goto LABEL_35;
      }

      v14 = v4 + 96 * v13;
      v15 = *(a1 + 48);
      if (v15 >= *v14)
      {
        break;
      }

      --v10;
      v11 -= 96;
      LODWORD(v12) = v12 - 1;
      if (v13 <= 0)
      {
        return;
      }
    }

    if (*(v14 + 36) == 1 && *(v14 + 44) == 1)
    {
      v16 = roundf(*(v14 + 32)) - (v15 - *v14);
      v17 = sqrtf(*(v14 + 40));
      v18 = *(a1 + 52);
      if (*(v14 + 24) == 1 && v18 >= *(v14 + 20))
      {
        v18 = *(v14 + 20);
      }

      Nightingale::uiProcessForLstm::fillUpMeanStdVec(v16, v17, a1, v15, v18, a3, a4);
      if (v12 < v9)
      {
        v20 = 0;
        while (1)
        {
          v21 = **(a1 + 8);
          if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 8) - v21) >> 5) <= v10 + v20)
          {
            break;
          }

          v22 = v21 + v11;
          if (*(v21 + v11 + 12) == 1 && *(v22 + 20) == 1 && *(v21 + v11) == 1)
          {
            Nightingale::uiProcessForLstm::fillUpMeanStdVec(roundf(*(v22 + 8)), sqrtf(*(v22 + 16)), v19, *(v22 - 24), *(v21 + v11 - 4), a3, a4);
          }

          v23 = v10 + v20++;
          v11 += 96;
          if (v9 <= v23 + 1)
          {
            goto LABEL_20;
          }
        }

LABEL_35:
        std::string::__throw_length_error[abi:nn200100]();
      }

LABEL_20:
      v24 = *(*(a1 + 8) + 8);
      v25 = *(v24 - 96);
      if (*(a1 + 48) < v25 && *(v24 - 60) == 1 && *(v24 - 52) == 1)
      {
        Nightingale::uiProcessForLstm::fillUpMeanStdVec(roundf(*(v24 - 64)), sqrtf(*(v24 - 56)), v19, v25, *(a1 + 52), a3, a4);
      }

      v26 = *a3;
      v27 = *(a3 + 8);
      if (*a3 != v27)
      {
        v28 = *(a1 + 36);
        if (v28 != 0.0)
        {
          v29 = *(a1 + 32);
          v30 = (v27 - v26) >> 2;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          do
          {
            *v26 = (*v26 - v29) / v28;
            ++v26;
            --v30;
          }

          while (v30);
        }
      }

      v31 = *a4;
      v32 = *(a4 + 8);
      if (*a4 != v32)
      {
        v33 = *(a1 + 44);
        if (v33 != 0.0)
        {
          v34 = *(a1 + 40);
          v35 = (v32 - v31) >> 2;
          if (v35 <= 1)
          {
            v35 = 1;
          }

          do
          {
            *v31 = (*v31 - v34) / v33;
            ++v31;
            --v35;
          }

          while (v35);
        }
      }
    }
  }
}

void Nightingale::uiProcessForLstm::fillUpMeanStdVec(float a1, float a2, uint64_t a3, int a4, int a5, const void **a6, const void **a7)
{
  v10 = a2;
  v11 = a1;
  if (a4 <= a5)
  {
    v9 = a5 - a4 + 1;
    do
    {
      std::vector<float>::push_back[abi:nn200100](a6, &v11);
      v11 = v11 + -1.0;
      std::vector<float>::push_back[abi:nn200100](a7, &v10);
      --v9;
    }

    while (v9);
  }
}

char *std::vector<std::pair<int,int>>::__assign_with_size[abi:nn200100]<std::pair<int,int>*,std::pair<int,int>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      std::vector<Nightingale::PhaseSet>::__vallocate[abi:nn200100](a1, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result = v17;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 8;
        v12 -= 8;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11 = v16;
        v11 += 8;
        v15 += 8;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void *std::vector<std::pair<int,int>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<Nightingale::PhaseSet>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

void std::vector<Nightingale::cycleInfo>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<Nightingale::cycleInfo>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

_BYTE *OUTLINED_FUNCTION_5(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

unint64_t Nightingale::phaseFactorProcessor::detectPhaseJDayRange(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (v4 == *a3)
  {
    v17 = -1;
  }

  else
  {
    v5 = &v4[-*a3] >> 2;
    v6 = v5;
    v7 = *a3;
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[4 * (v6 >> 1)];
      v11 = *v9;
      v10 = (v9 + 1);
      v6 += ~(v6 >> 1);
      if (v11 > a2)
      {
        v6 = v8;
      }

      else
      {
        v7 = v10;
      }
    }

    while (v6);
    v12 = ((v7 - v3) >> 2) + 0xFFFFFFFF;
    v4 = *a3;
    do
    {
      v13 = v5 >> 1;
      v14 = &v4[4 * (v5 >> 1)];
      v16 = *v14;
      v15 = (v14 + 1);
      v5 += ~(v5 >> 1);
      if (v16 > SHIDWORD(a2))
      {
        v5 = v13;
      }

      else
      {
        v4 = v15;
      }
    }

    while (v5);
    v17 = v12;
  }

  return (v17 | (((v4 - v3) >> 2) << 32)) - 0x100000000;
}

uint64_t Nightingale::phaseFactorProcessor::detectPhases(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = HIDWORD(a2);
  v8 = Nightingale::phaseFactorProcessor::detectPhaseJDayRange(a1, a2, a4);
  v9 = HIDWORD(v8);
  if (v8 == -1 && v9 == 0xFFFFFFFF && v7 != 0xFFFFFFFF)
  {
    return 0;
  }

  if (v8 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v7 == 0xFFFFFFFF)
  {
    LODWORD(v9) = ((a4[1] - *a4) >> 2) - 1;
  }

  if (v11 <= v9)
  {
    isEndOfAPhase = 0;
    isStartOfAPhase = 0;
    v12 = 0;
    v15 = v11;
    v16 = *a3;
    v17 = a3[1];
    v18 = v9 + 1;
    do
    {
      if (v17 == v16)
      {
        v17 = v16;
      }

      else
      {
        v19 = 0;
        do
        {
          v20 = a4[3];
          if (v15 >= (a4[4] - v20) >> 3)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v22 = *(v20 + 8 * v15);
          v21 = Nightingale::PhaseSet::contains(&v22, *(v16 + v19));
          if (v21)
          {
            if (!isStartOfAPhase)
            {
              isStartOfAPhase = Nightingale::phaseFactorProcessor::isStartOfAPhase(v21, v15, a2, a4, 0);
            }

            v12 = 1;
          }

          else if ((isEndOfAPhase & 1) == 0)
          {
            isEndOfAPhase = Nightingale::phaseFactorProcessor::isEndOfAPhase(v21, v15, a2, a4, 0);
          }

          ++v19;
          v16 = *a3;
          v17 = a3[1];
        }

        while (v17 - *a3 > v19);
      }

      ++v15;
    }

    while (v18 != v15);
  }

  else
  {
    v12 = 0;
    isStartOfAPhase = 0;
    isEndOfAPhase = 0;
  }

  return v12 | (isStartOfAPhase << 8) | (isEndOfAPhase << 16);
}

BOOL Nightingale::phaseFactorProcessor::isStartOfAPhase(uint64_t a1, int a2, uint64_t a3, void *a4, unsigned int a5)
{
  if (a2 >= ((a4[1] - *a4) >> 2))
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = *(*a4 + 4 * a2);
  if (v5 < a3 || v5 > SHIDWORD(a3))
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v7 = a2 - 1;
  v8 = a4[3];
  if (v7 >= (a4[4] - v8) >> 3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  return !Nightingale::PhaseSet::contains((v8 + 8 * v7), a5);
}

BOOL Nightingale::phaseFactorProcessor::isEndOfAPhase(uint64_t a1, int a2, uint64_t a3, void *a4, unsigned int a5)
{
  if (a2 >= ((a4[1] - *a4) >> 2))
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = *(*a4 + 4 * a2);
  v6 = v5 >= a3 && v5 <= SHIDWORD(a3);
  if (!v6 || !a2)
  {
    return 0;
  }

  v7 = a2 - 1;
  v8 = a4[3];
  if (v7 >= (a4[4] - v8) >> 3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  return (Nightingale::PhaseSet::contains((v8 + 8 * v7), a5) & 1) != 0;
}

uint64_t Nightingale::phaseFactorProcessor::jDayLastEndOfAPhaseSet(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1] - *a2;
  v4 = v3 >> 2;
  if (!(v3 >> 2))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a3;
  v8 = a3[1];
  if (v8 == *a3)
  {
LABEL_7:
    if (v4 >= 2)
    {
      v12 = (v4 - 2);
      while (v8 == v7)
      {
        v8 = v7;
LABEL_19:
        if (v12-- <= 0)
        {
          goto LABEL_25;
        }
      }

      v13 = 0;
      v14 = v12 + 1;
      while (1)
      {
        v15 = a2[3];
        if (v12 >= (a2[4] - v15) >> 3)
        {
          goto LABEL_38;
        }

        if (Nightingale::PhaseSet::contains((v15 + 8 * v12), *(v7 + v13)))
        {
          v16 = a2[3];
          if (v14 >= (a2[4] - v16) >> 3)
          {
            goto LABEL_38;
          }

          if (a3[1] - *a3 <= v13)
          {
LABEL_39:
            std::string::__throw_length_error[abi:nn200100]();
          }

          if ((Nightingale::PhaseSet::contains((v16 + 8 * v14), *(*a3 + v13)) & 1) == 0)
          {
            break;
          }
        }

        ++v13;
        v7 = *a3;
        v8 = a3[1];
        if (v8 - *a3 <= v13)
        {
          goto LABEL_19;
        }
      }

      if (v14 >= (a2[1] - *a2) >> 2)
      {
LABEL_40:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v18 = *(*a2 + 4 * v14);
      if (v18 != -1)
      {
        return v18;
      }
    }

LABEL_25:
    v19 = *a3;
    if (a3[1] != *a3)
    {
      v20 = 0;
      v18 = 0xFFFFFFFFLL;
      while (1)
      {
        v21 = a2[3];
        if (a2[4] == v21)
        {
          break;
        }

        if (Nightingale::PhaseSet::contains(v21, *(v19 + v20)))
        {
          v22 = a2[3];
          if ((a2[4] - v22) <= 8)
          {
            break;
          }

          if (a3[1] - *a3 <= v20)
          {
            goto LABEL_39;
          }

          if ((Nightingale::PhaseSet::contains((v22 + 8), *(*a3 + v20)) & 1) == 0)
          {
            if (a2[1] - *a2 <= 4uLL)
            {
              goto LABEL_40;
            }

            v18 = *(*a2 + 4);
          }
        }

        ++v20;
        v19 = *a3;
        if (a3[1] - *a3 <= v20)
        {
          return v18;
        }
      }

LABEL_38:
      std::string::__throw_length_error[abi:nn200100]();
    }

    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  v10 = ((v3 << 30) - 0x100000000) >> 32;
  while (1)
  {
    v11 = a2[3];
    if (v10 >= (a2[4] - v11) >> 3)
    {
      goto LABEL_38;
    }

    if (Nightingale::PhaseSet::contains((v11 + 8 * v10), *(v7 + v9)))
    {
      return 4294967294;
    }

    ++v9;
    v7 = *a3;
    v8 = a3[1];
    if (v8 - *a3 <= v9)
    {
      goto LABEL_7;
    }
  }
}

float Nightingale::phaseFactorProcessor::getjDayStartOfAPhasetojDayRangeStart(uint64_t a1, unint64_t a2, uint64_t *a3, unsigned int a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == v5)
  {
    return NAN;
  }

  v7 = a3[3];
  v8 = a3[4];
  if (v7 == v8)
  {
    return NAN;
  }

  v9 = (v5 - v4) >> 2;
  if (v9 != (v8 - v7) >> 3 || v9 < 1)
  {
    return NAN;
  }

  v12 = a2;
  v13 = 0;
  v14 = 0;
  v15 = HIDWORD(a2);
  while (1)
  {
    if (v9 <= v14)
    {
      goto LABEL_23;
    }

    v16 = *(v4 + 4 * v14);
    if (v16 >= v12 && v16 < v15)
    {
      v18 = a3[3];
      if (v14 >= (a3[4] - v18) >> 3)
      {
        goto LABEL_24;
      }

      if (Nightingale::PhaseSet::contains((v18 + v13), a4))
      {
        if (!v14)
        {
          break;
        }

        v19 = a3[3];
        if (v14 - 1 >= (a3[4] - v19) >> 3)
        {
LABEL_24:
          std::string::__throw_length_error[abi:nn200100]();
        }

        if ((Nightingale::PhaseSet::contains((v19 + v13 - 8), a4) & 1) == 0)
        {
          break;
        }
      }
    }

    ++v14;
    v4 = *a3;
    v20 = a3[1] - *a3;
    v9 = v20 >> 2;
    v13 += 8;
    if (v14 >= (v20 >> 2))
    {
      return NAN;
    }
  }

  if (v14 >= (a3[1] - *a3) >> 2)
  {
LABEL_23:
    std::string::__throw_length_error[abi:nn200100]();
  }

  return (*(*a3 + 4 * v14) - v12);
}

float Nightingale::phaseFactorProcessor::getjDayEndOfAPhasetojDayRangeEnd(uint64_t a1, unint64_t a2, void *a3, unsigned int a4)
{
  v4 = a3[1];
  if (*a3 == v4)
  {
    return NAN;
  }

  v6 = a3[3];
  v7 = a3[4];
  if (v6 == v7)
  {
    return NAN;
  }

  v8 = v4 - *a3;
  if (v8 >> 2 != (v7 - v6) >> 3 || (v8 >> 2) < 2)
  {
    return NAN;
  }

  v11 = a2;
  v12 = HIDWORD(a2);
  v13 = (v8 >> 2) & 0x7FFFFFFF;
  for (i = 8 * v13 - 16; ; i -= 8)
  {
    v15 = v13 - 1;
    if (v13 - 1 >= ((a3[1] - *a3) >> 2))
    {
      goto LABEL_22;
    }

    v16 = *(*a3 + 4 * v13 - 4);
    if (v16 >= v11 && v16 < v12)
    {
      v18 = a3[3];
      if (v15 >= (a3[4] - v18) >> 3)
      {
        goto LABEL_23;
      }

      if ((Nightingale::PhaseSet::contains((v18 + i + 8), a4) & 1) == 0)
      {
        v19 = a3[3];
        if (v13 - 2 >= ((a3[4] - v19) >> 3))
        {
LABEL_23:
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (Nightingale::PhaseSet::contains((v19 + i), a4))
        {
          break;
        }
      }
    }

    --v13;
    if (v15 + 1 <= 2)
    {
      return NAN;
    }
  }

  if (v15 >= (a3[1] - *a3) >> 2)
  {
LABEL_22:
    std::string::__throw_length_error[abi:nn200100]();
  }

  return (v12 - *(*a3 + 4 * v13 - 4));
}

void Nightingale::phaseFactorProcessor::getjDayStartOfVPhasestojDayRangeStart(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v6 = *a4;
  if (a4[1] != *a4)
  {
    v10 = 0;
    do
    {
      v11 = Nightingale::phaseFactorProcessor::getjDayStartOfAPhasetojDayRangeStart(a1, a2, a3, *(v6 + v10));
      v12 = 1;
      std::vector<float>::push_back[abi:nn200100](a5, &v11);
      ++v10;
      v6 = *a4;
    }

    while (a4[1] - *a4 > v10);
  }
}

void Nightingale::phaseFactorProcessor::getjDayEndOfVPhasestojDayRangeEnd(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v6 = *a4;
  if (a4[1] != *a4)
  {
    v10 = 0;
    do
    {
      v11 = Nightingale::phaseFactorProcessor::getjDayEndOfAPhasetojDayRangeEnd(a1, a2, a3, *(v6 + v10));
      v12 = 1;
      std::vector<float>::push_back[abi:nn200100](a5, &v11);
      ++v10;
      v6 = *a4;
    }

    while (a4[1] - *a4 > v10);
  }
}

uint64_t Nightingale::phaseFactorProcessor::findEndOfReproductiveBfrADate(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v5 = *a2;
  v4 = a2[1];
  if (*a2 == v4 || a2[3] == a2[4])
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v4 - v5;
  v7 = (v4 - v5) >> 2;
  if (v7 <= 0)
  {
    v22 = 0;
    __dst = 0;
    v24 = 0;
  }

  else
  {
    v8 = 0;
    v9 = (v6 >> 2) & 0x7FFFFFFF;
    while (1)
    {
      if (v7 == v8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (*(v5 + 4 * v8) > a4)
      {
        break;
      }

      if (v9 == ++v8)
      {
        goto LABEL_12;
      }
    }

    LODWORD(v7) = v8;
LABEL_12:
    v22 = 0;
    __dst = 0;
    v24 = 0;
    if (v7)
    {
      std::vector<int>::__vallocate[abi:nn200100](&v22, v7);
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v11 = Nightingale::phaseFactorProcessor::jDayLastEndOfAPhaseSet(a1, &v13, a3);
  if (v11 < 0)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v11;
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    __dst = v22;
    operator delete(v22);
  }

  return v10;
}

uint64_t Nightingale::phaseFactorProcessor::ccMenstCycleLen_handling(uint64_t *a1, void *a2, uint64_t *a3)
{
  EndOfAPhaseSet = Nightingale::phaseFactorProcessor::jDayLastEndOfAPhaseSet(a1, a2, a3);
  v6 = *a1;
  v5 = a1[1];
  if (ha_sensitive_logging_is_enabled())
  {
    log = ha_get_log();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::phaseFactorProcessor::ccMenstCycleLen_handling(EndOfAPhaseSet, log);
    }
  }

  v9 = *a1;
  v8 = a1[1];
  if (*a1 == v8)
  {
    return 0;
  }

  if (EndOfAPhaseSet == -2)
  {
    v16 = (v8 - v9) >> 3;
    if (v16 >= 2)
    {
      return 2;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    result = (v5 - v6) >> 3;
    if (EndOfAPhaseSet != -1)
    {
      v11 = v8 - v9;
      v12 = (v8 - v9) >> 3;
      if (v12 >= 1)
      {
        v13 = (result - v12);
        v14 = (v11 >> 3) & 0x7FFFFFFF;
        for (i = (v9 + 4); ; i += 2)
        {
          if (!v12)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          if (*i >= EndOfAPhaseSet)
          {
            break;
          }

          result = (result - 1);
          --v12;
          if (!--v14)
          {
            return v13;
          }
        }
      }
    }
  }

  return result;
}

void Nightingale::phaseFactorProcessor::tagPhaseJDayRange(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v5 = HIDWORD(a2);
  v6 = Nightingale::phaseFactorProcessor::detectPhaseJDayRange(a1, a2, a3);
  v7 = HIDWORD(v6);
  a4[1] = *a4;
  __p = 0;
  v45 = 0;
  v46 = 0;
  if (v6 != -1 || v7 != 0xFFFFFFFF || v5 == 0xFFFFFFFF)
  {
    if (v6 == -1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    if (v5 == 0xFFFFFFFF)
    {
      LODWORD(v7) = ((a3[1] - *a3) >> 2) - 1;
    }

    if (v8 <= v7)
    {
      v9 = v8;
      v37 = v7 + 1;
      do
      {
        v10 = a3[3];
        if (v9 >= (a3[4] - v10) >> 3)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v11 = *(v10 + 8 * v9);
        v42 = 0;
        v43 = v11;
        v40 = 0;
        v41 = 0;
        Nightingale::PhaseSet::phasesOnInPhaseSet2Vec(&v43, &v40);
        v12 = v40;
        v13 = v41;
        if (v41 != v40)
        {
          v14 = 0;
          do
          {
            v15 = v12[v14];
            v39 = v12[v14];
            v16 = __p;
            v17 = v45 - __p;
            if (v45 != __p)
            {
              do
              {
                v18 = &v16[v17 >> 1];
                v20 = *v18;
                v19 = v18 + 1;
                v21 = v17 >> 1;
                v17 += ~(v17 >> 1);
                if (v20 < v15)
                {
                  v16 = v19;
                }

                else
                {
                  v17 = v21;
                }
              }

              while (v17);
            }

            if (v16 == v45 || v15 < *v16)
            {
              v23 = a4[1];
              v22 = a4[2];
              if (v23 >= v22)
              {
                v25 = *a4;
                v26 = &v23[-*a4];
                v27 = (v26 + 1);
                if ((v26 + 1) < 0)
                {
                  std::string::__throw_length_error[abi:nn200100]();
                }

                v28 = v22 - v25;
                if (2 * v28 > v27)
                {
                  v27 = 2 * v28;
                }

                if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v29 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v29 = v27;
                }

                if (v29)
                {
                  operator new();
                }

                v30 = &v23[-*a4];
                *v26 = v15;
                v24 = v26 + 1;
                memcpy(0, v25, v30);
                *a4 = 0;
                a4[1] = v26 + 1;
                a4[2] = 0;
                if (v25)
                {
                  operator delete(v25);
                }
              }

              else
              {
                *v23 = v15;
                v24 = v23 + 1;
              }

              a4[1] = v24;
              v31 = __p;
              v32 = v45 - __p;
              if (v45 != __p)
              {
                do
                {
                  v33 = &v31[v32 >> 1];
                  v35 = *v33;
                  v34 = v33 + 1;
                  v36 = v32 >> 1;
                  v32 += ~(v32 >> 1);
                  if (v39 < v35)
                  {
                    v32 = v36;
                  }

                  else
                  {
                    v31 = v34;
                  }
                }

                while (v32);
              }

              std::vector<Nightingale::Phase>::insert(&__p, v31, &v39);
              v12 = v40;
              v13 = v41;
            }

            ++v14;
          }

          while (v13 - v12 > v14);
        }

        if (v12)
        {
          v41 = v12;
          operator delete(v12);
        }

        ++v9;
      }

      while (v37 != v9);
      if (__p)
      {
        v45 = __p;
        operator delete(__p);
      }
    }
  }
}

char *std::vector<Nightingale::Phase>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1 + 1];
    if (v11 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = v7 - v10;
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

    v26 = a1;
    if (v13)
    {
      operator new();
    }

    v23 = 0;
    v24 = (__src - v10);
    v25 = (__src - v10);
    std::__split_buffer<Nightingale::Phase>::emplace_back<Nightingale::Phase const&>(&v23, a3);
    v14 = v24;
    memcpy(v25, v4, a1[1] - v4);
    v15 = *a1;
    v16 = v24;
    *&v25 = v25 + a1[1] - v4;
    a1[1] = v4;
    v17 = &v16[v15 - v4];
    memcpy(v17, v15, v4 - v15);
    v18 = *a1;
    *a1 = v17;
    v19 = a1[2];
    *(a1 + 1) = v25;
    *&v25 = v18;
    *(&v25 + 1) = v19;
    v23 = v18;
    v24 = v18;
    if (v18)
    {
      operator delete(v18);
    }

    return v14;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 1;
    }

    else
    {
      v9 = 0;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 1, __src, v6 - v8);
      v9 = a1[1];
    }

    v21 = v4 <= a3 && v9 > a3;
    *v4 = a3[v21];
  }

  return v4;
}

uint64_t Nightingale::phaseFactorProcessor::suppressFWStEnd(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  v12 = 84148994;
  v13 = 1798;
  std::vector<Nightingale::Phase>::vector[abi:nn200100](&__p, &v12, 6);
  if (*(a2 + 4) != 1 || *(a3 + 4) != 1)
  {
    goto LABEL_12;
  }

  v8 = *a2 | (*a3 << 32);
  memset(v11, 0, sizeof(v11));
  if (v15 != __p)
  {
    if (v15 - __p >= 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (Nightingale::phaseFactorProcessor::detectPhases(a1, v8, v11, a4))
  {
    if (*(a2 + 4) == 1)
    {
      *(a2 + 4) = 0;
    }

    if (*(a3 + 4) == 1)
    {
      *(a3 + 4) = 0;
    }

    v9 = 1;
  }

  else
  {
LABEL_12:
    v9 = 0;
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v9;
}

void *Nightingale::phaseFactorProcessor::getCCVec@<X0>(void *a1@<X8>)
{
  v3 = 1798;
  v4 = 5;
  return std::vector<Nightingale::Phase>::vector[abi:nn200100](a1, &v3, 3);
}

void *Nightingale::phaseFactorProcessor::getAllCycleVec@<X0>(void *a1@<X8>)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0x706050403020100;
  result = std::vector<Nightingale::Phase>::vector[abi:nn200100](a1, v4, 8);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Nightingale::phaseFactorProcessor::aPhase_contains_phaseTobeDetected(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a2;
  v3 = a3[1];
  if (*a3 == v3)
  {
    return 0;
  }

  v4 = *a3 + 1;
  do
  {
    result = Nightingale::PhaseSet::contains(&v7, *(v4 - 1));
    if (result)
    {
      break;
    }
  }

  while (v4++ != v3);
  return result;
}

unint64_t Nightingale::phaseFactorProcessor::jDayFirstStartLastEndOfAPhaseSet(uint64_t a1, void *a2, unsigned __int8 **a3)
{
  v3 = (a2[1] - *a2) >> 2;
  if (v3)
  {
    v6 = -1;
    v7 = v3 - 1;
    if (v3 >= 1)
    {
      v8 = (v3 - 1);
      while (1)
      {
        v9 = a2[3];
        if (v8 >= (a2[4] - v9) >> 3)
        {
          break;
        }

        v28 = *(v9 + 8 * v8);
        v10 = *a3;
        v11 = a3[1];
        while (1)
        {
          if (v10 == v11)
          {
            goto LABEL_12;
          }

          if (Nightingale::PhaseSet::contains(&v28, *v10))
          {
            break;
          }

          ++v10;
        }

        if (v8 >= (a2[1] - *a2) >> 2)
        {
          goto LABEL_51;
        }

        v6 = *(*a2 + 4 * v8);
        v12 = v8-- <= 0;
        if (v12)
        {
          goto LABEL_12;
        }
      }

LABEL_49:
      std::string::__throw_length_error[abi:nn200100]();
    }

LABEL_12:
    v13 = *a3;
    v14 = a3[1];
    if (v14 == *a3)
    {
LABEL_17:
      if (v3 < 2)
      {
        goto LABEL_36;
      }

      v17 = (v3 - 2);
      while (v14 == v13)
      {
        v14 = v13;
LABEL_29:
        v12 = v17-- <= 0;
        if (v12)
        {
          goto LABEL_36;
        }
      }

      v18 = 0;
      v19 = v17 + 1;
      while (1)
      {
        v20 = a2[3];
        if (v17 >= (a2[4] - v20) >> 3)
        {
          goto LABEL_49;
        }

        if (Nightingale::PhaseSet::contains((v20 + 8 * v17), v13[v18]))
        {
          v21 = a2[3];
          if (v19 >= (a2[4] - v21) >> 3)
          {
            goto LABEL_49;
          }

          if (a3[1] - *a3 <= v18)
          {
LABEL_50:
            std::string::__throw_length_error[abi:nn200100]();
          }

          if ((Nightingale::PhaseSet::contains((v21 + 8 * v19), (*a3)[v18]) & 1) == 0)
          {
            break;
          }
        }

        ++v18;
        v13 = *a3;
        v14 = a3[1];
        if (v14 - *a3 <= v18)
        {
          goto LABEL_29;
        }
      }

      if (v19 >= (a2[1] - *a2) >> 2)
      {
LABEL_51:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v22 = *(*a2 + 4 * v19);
      if (v22 == -1)
      {
LABEL_36:
        v23 = *a3;
        if (a3[1] != *a3)
        {
          v24 = 0;
          v22 = 0xFFFFFFFFLL;
          while (1)
          {
            v25 = a2[3];
            if (a2[4] == v25)
            {
              goto LABEL_49;
            }

            if (Nightingale::PhaseSet::contains(v25, v23[v24]))
            {
              v26 = a2[3];
              if ((a2[4] - v26) <= 8)
              {
                goto LABEL_49;
              }

              if (a3[1] - *a3 <= v24)
              {
                goto LABEL_50;
              }

              if ((Nightingale::PhaseSet::contains((v26 + 8), (*a3)[v24]) & 1) == 0)
              {
                if (a2[1] - *a2 <= 4uLL)
                {
                  goto LABEL_51;
                }

                v22 = *(*a2 + 4);
              }
            }

            ++v24;
            v23 = *a3;
            if (a3[1] - *a3 <= v24)
            {
              return v6 | (v22 << 32);
            }
          }
        }

        v22 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v15 = 0;
      while (1)
      {
        v16 = a2[3];
        if (v7 >= ((a2[4] - v16) >> 3))
        {
          goto LABEL_49;
        }

        if (Nightingale::PhaseSet::contains((v16 + 8 * v7), v13[v15]))
        {
          break;
        }

        ++v15;
        v13 = *a3;
        v14 = a3[1];
        if (v14 - *a3 <= v15)
        {
          goto LABEL_17;
        }
      }

      v22 = 4294967294;
    }
  }

  else
  {
    v22 = 0xFFFFFFFFLL;
    v6 = -1;
  }

  return v6 | (v22 << 32);
}

BOOL Nightingale::phaseFactorProcessor::containContraceptiveCycleFactors(uint64_t a1, unsigned __int8 **a2)
{
  v10 = 84148994;
  v11 = 1798;
  std::vector<Nightingale::Phase>::vector[abi:nn200100](&__p, &v10, 6);
  v3 = *a2;
  v4 = a2[1];
  v5 = *a2;
  if (*a2 == v4 || __p == v13)
  {
    v8 = 0;
  }

  else
  {
    v6 = __p;
    do
    {
      v7 = v5;
      while (*v7 != *v6)
      {
        if (++v7 == v4)
        {
          v7 = v4;
          break;
        }
      }

      v8 = v7 != v4;
      if (v7 != v4)
      {
        break;
      }

      ++v6;
    }

    while (v6 != v13);
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v8;
}

BOOL Nightingale::phaseFactorProcessor::vPhasesContainsAPhase(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    while (*v3 != a3)
    {
      if (++v3 == v4)
      {
        v3 = a2[1];
        return v3 != v4;
      }
    }
  }

  return v3 != v4;
}

BOOL Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return 0;
  }

  v5 = a3[1];
  do
  {
    v6 = *a3;
    if (*a3 != v5)
    {
      v6 = *a3;
      while (*v6 != *v3)
      {
        if (++v6 == v5)
        {
          v6 = a3[1];
          break;
        }
      }
    }

    result = v6 != v5;
    if (v6 != v5)
    {
      break;
    }

    ++v3;
  }

  while (v3 != v4);
  return result;
}

void *std::__split_buffer<Nightingale::Phase>::emplace_back<Nightingale::Phase const&>(void *result, char *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if ((2 * &v4[-*result]) > 1)
      {
        v10 = 2 * &v4[-*result];
      }

      operator new();
    }

    v7 = (v6 + 1) / -2;
    v8 = &v5[-((v6 + 1) / 2)];
    v9 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-((v6 + 1) / 2)], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v8[v9];
    v3[1] = &v5[v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 1;
  return result;
}

void Nightingale::periodEstimatorAggregation::deriveRestPeriodProjs(Nightingale::ngt_Config *a1@<X3>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t *a8@<X8>)
{
  v15 = &v55;
  Nightingale::periodEstimatorCalendarWithEnd::periodEstimatorCalendarWithEnd(v69, a1);
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  v16 = *(a3 + 8);
  v63[0] = *(v16 - 96);
  v17 = *(v16 - 80);
  v18 = *(v16 - 64);
  v19 = *(v16 - 48);
  *&v65[13] = *(v16 - 35);
  v64 = v18;
  *v65 = v19;
  v63[1] = v17;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v21 = *(v16 - 24);
  v20 = *(v16 - 16);
  if (v20 != v21)
  {
    if (v20 - v21 >= 0)
    {
      operator new();
    }

LABEL_59:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!Nightingale::CGradient::get_vGrad_empty(a2) && *(a2 + 76) == 1 && BYTE4(v64) == 1 && BYTE12(v64) == 1)
  {
    v44 = *(a3 + 124);
    Nightingale::CGradient::CGradient(&v59);
    v62[0] = 0;
    v62[4] = 0;
    v62[8] = 0;
    v62[12] = 0;
    v62[16] = 0;
    v62[20] = 0;
    Nightingale::CGradient::CGradient(&v55);
    v58[0] = 0;
    v58[4] = 0;
    v58[8] = 0;
    v58[12] = 0;
    v58[16] = 0;
    v58[20] = 0;
    Nightingale::CGradient::CGradient(__p);
    if ((*(a2 + 76) & 1) == 0 || (expectation = *(a2 + 72), (BYTE12(v64) & 1) == 0))
    {
LABEL_58:
      std::__throw_bad_optional_access[abi:nn200100]();
      goto LABEL_59;
    }

    v71 = *(&v64 + 2);
    if (a7)
    {
      v22 = *(a2 + 44);
      if ((v22 & 0x100000000) != 0)
      {
        variance = (*&v22 * *&v22);
      }

      else
      {
        variance = Nightingale::CGradient::get_variance(a2);
      }

      v71 = variance;
    }

    if (a4 >= 1)
    {
      v24 = 0;
      v43 = a5 - *(a3 + 128);
      while ((BYTE4(v64) & 1) != 0)
      {
        v25 = expectation + *&v64;
        expectation = v25;
        if ((BYTE12(v64) & 1) == 0)
        {
          break;
        }

        v26 = v71 + *(&v64 + 2);
        if (v44 == -2)
        {
          v26 = 0.0;
        }

        v71 = v26;
        v27 = v25;
        v28 = v26;
        v29 = (*(a3 + 112) - LOBYTE(v63[0]));
        if (*(a3 + 116))
        {
          LODWORD(v15) = (*(a3 + 112) - LODWORD(v63[0])) >> 8;
        }

        else
        {
          v29 = 0;
        }

        Nightingale::periodEstimatorCalendar::getCalBasedPeriodStartGradient(v69, v29 | (v15 << 8) | (*(a3 + 116) << 32), __dst, v27, v28);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = *__dst;
        v53 = __dst[2];
        v54[0] = v46[0];
        *(v54 + 9) = *(v46 + 9);
        if (a6)
        {
          expectation = Nightingale::CGradient::get_expectation(__p);
          std = Nightingale::CGradient::get_std(__p);
        }

        else
        {
          std = sqrt(v71);
        }

        v31 = std;
        if (v31 < 7.8125 || v24 < v43)
        {
          std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(&v59, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
          v61[0] = v54[0];
          *(v61 + 9) = *(v54 + 9);
          if ((v62[20] & 1) == 0)
          {
            v62[20] = 1;
          }

          v33 = expectation;
          *&v62[16] = v33;
          Nightingale::periodEstimatorCalendarWithEnd::getPeriodEndProjection(v63, __p, __dst);
          if (v55)
          {
            *&v56 = v55;
            operator delete(v55);
          }

          v34 = __dst[0];
          v55 = __dst[0];
          v35 = __dst[1];
          v56 = *&__dst[1];
          v57[0] = v46[0];
          *(v57 + 9) = *(v46 + 9);
          *v58 = *v47;
          *&v58[13] = *&v47[13];
          memset(__dst, 0, sizeof(__dst));
          if (v60 != v59)
          {
            std::vector<int>::__vallocate[abi:nn200100](__dst, (v60 - v59) >> 2);
          }

          v46[0] = v61[0];
          *(v46 + 9) = *(v61 + 9);
          *v47 = *v62;
          *&v47[13] = *&v62[13];
          v48[1] = 0;
          v49 = 0;
          v48[0] = 0;
          if (v35 != v34)
          {
            std::vector<int>::__vallocate[abi:nn200100](v48, (v35 - v34) >> 2);
          }

          v50[0] = v57[0];
          *(v50 + 9) = *(v57 + 9);
          *v51 = *v58;
          *&v51[13] = *&v58[13];
          v36 = a8[1];
          if (v36 >= a8[2])
          {
            v41 = std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__emplace_back_slow_path<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>(a8, __dst);
            v42 = v48[0];
            a8[1] = v41;
            if (v42)
            {
              v48[1] = v42;
              operator delete(v42);
            }
          }

          else
          {
            *v36 = 0;
            *(v36 + 8) = 0;
            *(v36 + 16) = 0;
            *v36 = *__dst;
            *(v36 + 16) = __dst[2];
            memset(__dst, 0, sizeof(__dst));
            v37 = *(v46 + 9);
            *(v36 + 24) = v46[0];
            *(v36 + 33) = v37;
            v38 = *&v47[13];
            *(v36 + 56) = *v47;
            *(v36 + 69) = v38;
            *(v36 + 80) = 0;
            *(v36 + 88) = 0;
            *(v36 + 96) = 0;
            *(v36 + 80) = *v48;
            *(v36 + 96) = v49;
            v48[0] = 0;
            v48[1] = 0;
            v49 = 0;
            v39 = v50[0];
            *(v36 + 113) = *(v50 + 9);
            *(v36 + 104) = v39;
            v40 = *v51;
            *(v36 + 149) = *&v51[13];
            *(v36 + 136) = v40;
            a8[1] = v36 + 160;
          }

          if (__dst[0])
          {
            __dst[1] = __dst[0];
            operator delete(__dst[0]);
          }

          if (a4 != ++v24)
          {
            continue;
          }
        }

        goto LABEL_49;
      }

      goto LABEL_58;
    }

LABEL_49:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v55)
    {
      *&v56 = v55;
      operator delete(v55);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  Nightingale::periodEstimatorCalendarWithEnd::~periodEstimatorCalendarWithEnd(v69);
}

uint64_t std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__emplace_back_slow_path<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v6 = 0x199999999999999;
  }

  else
  {
    v6 = v3;
  }

  v18[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>>(a1, v6);
  }

  v7 = 160 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a2 + 24);
  *(v7 + 33) = *(a2 + 33);
  *(v7 + 24) = v8;
  v9 = *(a2 + 56);
  *(v7 + 69) = *(a2 + 69);
  *(v7 + 56) = v9;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 80) = 0;
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 104);
  *(v7 + 113) = *(a2 + 113);
  *(v7 + 104) = v10;
  v11 = *(a2 + 136);
  *(v7 + 149) = *(a2 + 149);
  *(v7 + 136) = v11;
  v12 = 160 * v2 + 160;
  v13 = a1[1];
  v14 = 160 * v2 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(a1, *a1, v13, v7 + *a1 - v13);
  v15 = *a1;
  *a1 = v14;
  a1[1] = v12;
  v16 = a1[2];
  a1[2] = 0;
  v18[2] = v15;
  v18[3] = v16;
  v18[0] = v15;
  v18[1] = v15;
  std::__split_buffer<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::~__split_buffer(v18);
  return v12;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 24);
      *(a4 + 33) = *(v6 + 33);
      *(a4 + 24) = v7;
      v8 = *(v6 + 56);
      *(a4 + 69) = *(v6 + 69);
      *(a4 + 56) = v8;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      v9 = *(v6 + 104);
      *(a4 + 113) = *(v6 + 113);
      *(a4 + 104) = v9;
      v10 = *(v6 + 136);
      *(a4 + 149) = *(v6 + 149);
      *(a4 + 136) = v10;
      v6 += 160;
      a4 += 160;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(v5);
      v5 += 160;
    }
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    std::__destroy_at[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t Nightingale::slidingWindowBaseLuna::slidingWindowBaseLuna(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2869C6088;
  v6[0] = xmmword_2589510F0;
  *(v6 + 12) = *(&xmmword_2589510F0 + 12);
  std::vector<int>::vector[abi:nn200100]((a1 + 8), v6, 7uLL);
  *(a1 + 32) = a2;
  Nightingale::slidingWindowBaseLuna::slidingWinConfigStruct::slidingWinConfigStruct((a1 + 40));
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  Nightingale::wristTemperatureInputValidation::wristTemperatureInputValidation((a1 + 152));
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 236) = 0xFFFFFFFFLL;
  *(a1 + 244) = vneg_f32(0x3F0000003FLL);
  *(a1 + 252) = 2143289344;
  *(a1 + 256) = 0;
  *(a1 + 260) = 0x800000008;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void Nightingale::slidingWindowBaseLuna::~slidingWindowBaseLuna(Nightingale::slidingWindowBaseLuna *this)
{
  *this = &unk_2869C6088;
  v2 = *(this + 34);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    operator delete(v3);
  }

  v6 = (this + 160);
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation((this + 152));
  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

void Nightingale::slidingWindowBaseLuna::process(_BYTE *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = vneg_f32(0x3F0000003FLL);
  *(a4 + 16) = 2143289344;
  *(a4 + 20) = 0;
  *(a4 + 24) = 8;
  if (Nightingale::slidingWindowBaseLuna::validateConfigurationPass(a1))
  {
    (*(*a1 + 8))(a1);
    if (a1[124] == 1 && a1[132] == 1)
    {
      Nightingale::slidingWindowBaseLuna::acquireWTmp(a1, a2, *(a1 + 30) + **(a1 + 4) - *(a1 + 10) + 1, *(a1 + 32) + *(a1 + 11) + **(a1 + 4), v10);
      if (Nightingale::assertVectorOfVectors(v10))
      {
        Nightingale::slidingWindowBaseLuna::validateWTmp(a1, v10, *(a1 + 10), a1 + 6, &v8);
        std::vector<std::vector<float>>::__vdeallocate(a1 + 20);
        *(a1 + 10) = v8;
        *(a1 + 22) = v9;
        v9 = 0;
        v8 = 0uLL;
        v11 = &v8;
        std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v11);
        (*(*a1 + 16))(a1, v10);
        if (a1[232] == 1 && a1[124] == 1)
        {
          *(a1 + 59) = *(a1 + 30) + *(a1 + 54) + **(a1 + 4);
        }

        *(a1 + 66) = (*(*a1 + 40))(a1);
        (*(*a1 + 48))(a1);
        if (a3)
        {
          (*(*a1 + 32))(a1);
        }

        *a4 = *(a1 + 236);
        *(a4 + 12) = *(a1 + 248);
        Nightingale::slidingWindowBaseLuna::reset(a1);
      }

      else
      {
        *(a4 + 4) = 1;
        *(a4 + 24) = 1;
      }

      *&v8 = v10;
      std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v8);
    }
  }
}

BOOL Nightingale::slidingWindowBaseLuna::validateConfigurationPass(Nightingale::slidingWindowBaseLuna *this)
{
  if ((*(this + 10) & 0x80000000) != 0 || (*(this + 11) & 0x80000000) != 0 || *(this + 19) < 1)
  {
    return 0;
  }

  v1 = *(this + 4);
  v2 = *(v1 + 4);
  if (v2)
  {
    if (v2 >= 1 && *v1 > v2)
    {
      return 0;
    }
  }

  else if ((*(v1 + 12) & 1) == 0)
  {
    return 0;
  }

  return *(this + 6) != *(this + 7);
}

void Nightingale::slidingWindowBaseLuna::acquireWTmp(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v25);
  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess(&v24);
  memset(v23, 0, sizeof(v23));
  if (a4 - a3 < 0 || *(a1 + 132) != 1 || (*(a1 + 124) & 1) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
LABEL_17:
    v18[0] = v23;
    std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](v18);
    Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(&v24);
    Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v25);
    return;
  }

  v10 = *(a1 + 32);
  if (*(v10 + 24))
  {
    Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(v25, a4 - a3 + 1, a4, a3 - 43, a2, *(v10 + 16), v18);
    if (*(a1 + 132) & 1) != 0 && (*(a1 + 124))
    {
      Nightingale::wristTemperatureInputProcess::constructVectorOfSlicesFromMultipleWatches(v18, *(a1 + 44) + *(a1 + 40), *(a1 + 128) - *(a1 + 120) + 1, a3, &v12);
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:nn200100]<std::vector<float>*,std::vector<float>*>(a5, v12, v13, 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3));
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      v26 = &v12;
      std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v26);
      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      v12 = v18;
      std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v12);
      goto LABEL_17;
    }
  }

  v11 = std::__throw_bad_optional_access[abi:nn200100]();
  Nightingale::slidingWindowBaseLuna::validateWTmp(v11);
}

void Nightingale::slidingWindowBaseLuna::validateWTmp(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = a3;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if (*a4 != a4[1] && Nightingale::assertVectorOfVectors(a2))
  {
    memset(v15, 0, sizeof(v15));
    v17 = &unk_2869C5CD8;
    v18 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpMissingCntHigh;
    v19 = 0;
    v20 = &v17;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:nn200100](v15, &v17);
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](&v17);
    v17 = &unk_2869C5CD8;
    v18 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpEarlyWinMissingCntHigh;
    v19 = 0;
    v20 = &v17;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:nn200100](v15, &v17);
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](&v17);
    v17 = &unk_2869C5CD8;
    v18 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpLaterWinMissingCntHigh;
    v19 = 0;
    v20 = &v17;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:nn200100](v15, &v17);
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](&v17);
    v17 = &unk_2869C5CD8;
    v18 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpDay2dayNoiseHigh;
    v19 = 0;
    v20 = &v17;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:nn200100](v15, &v17);
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](&v17);
    v17 = &unk_2869C5CD8;
    v18 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpSnrLow;
    v19 = 0;
    v20 = &v17;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:nn200100](v15, &v17);
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](&v17);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v14 = (*(*a2 + 8) - **a2) >> 2;
    std::vector<int>::push_back[abi:nn200100](&v17, &v14);
    std::vector<int>::push_back[abi:nn200100](&v17, &v16);
    std::vector<int>::push_back[abi:nn200100](&v17, &v16);
    std::vector<int>::push_back[abi:nn200100](&v17, &v16);
    std::vector<int>::push_back[abi:nn200100](&v17, &v16);
    *(a1 + 156) = (v18 - v17) >> 2;
    Nightingale::wristTemperatureInputValidation::wristTemperatureInputValidation(&v13);
    v10 = *a2;
    v9 = a2[1];
    while (v10 != v9)
    {
      Nightingale::wristTemperatureInputValidation::checkListOfConditions(&v13, v15, v10, &v17, a4, *(a1 + 72), __p);
      std::vector<std::vector<std::pair<BOOL,float>>>::push_back[abi:nn200100](a5, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v10 += 24;
    }

    Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation(&v13);
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    v17 = v15;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:nn200100](&v17);
  }

  v11 = *MEMORY[0x277D85DE8];
}

float32x2_t Nightingale::slidingWindowBaseLuna::reset(Nightingale::slidingWindowBaseLuna *this)
{
  std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](this + 20);
  *(this + 25) = 0;
  if (*(this + 232) == 1)
  {
    *(this + 232) = 0;
  }

  *(this + 120) = 0;
  *(this + 124) = 0;
  *(this + 128) = 0;
  *(this + 132) = 0;
  *(this + 136) = 0;
  *(this + 140) = 0;
  *(this + 144) = 0;
  *(this + 148) = 0;
  *(this + 236) = 0xFFFFFFFFLL;
  result = vneg_f32(0x3F0000003FLL);
  *(this + 244) = result;
  *(this + 63) = 2143289344;
  *(this + 256) = 0;
  *(this + 260) = 0x800000008;
  *(this + 35) = 0;
  *(this + 74) = 0;
  return result;
}

float Nightingale::slidingWindowBaseLuna::getRollingScoreASlice(uint64_t a1, uint64_t *a2)
{
  std::vector<float>::vector[abi:nn200100]<float const*,0>(v7, *a2, *a2 + 4 * *(a1 + 40));
  std::vector<float>::vector[abi:nn200100]<float const*,0>(__p, *a2 + 4 * *(a1 + 40), a2[1]);
  SlidingWinScore = Nightingale::getSlidingWinScore(v7, __p, -1.0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  return SlidingWinScore;
}

void Nightingale::slidingWindowBaseLuna::updateRollingBufferWithAVal(float a1, uint64_t a2, const void **a3, int a4)
{
  v8 = a1;
  v6 = *a3;
  v5 = a3[1];
  if (*a3 != v5 && a4 <= ((v5 - v6) >> 2))
  {
    v7 = v5 - (v6 + 4);
    if (v5 != v6 + 4)
    {
      memmove(v6, v6 + 4, v5 - (v6 + 4));
    }

    a3[1] = &v6[v7];
  }

  std::vector<float>::push_back[abi:nn200100](a3, &v8);
}

uint64_t Nightingale::slidingWindowBaseLuna::applyAlgorithm(uint64_t a1, uint64_t *a2)
{
  v3 = ~(*(a1 + 100) + *(a1 + 96)) - 1431655765 * ((a2[1] - *a2) >> 3);
  v4 = v3 & ~(v3 >> 31);
  *(a1 + 184) = v4;
  Nightingale::slidingWindowBaseLuna::findRollingOfRolling(a1, a2, *(a1 + 88), v4, 1, 0, &v6);
  *(a1 + 216) = v6;
  *(a1 + 232) = v7;

  return Nightingale::slidingWindowBaseLuna::updateSearchRsltWeakSignal(a1);
}

void Nightingale::slidingWindowBaseLuna::findRollingOfRolling(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, _BYTE *a7@<X8>)
{
  v13 = a7;
  *a7 = 0;
  a7[16] = 0;
  if (Nightingale::assertVectorOfVectors(a2))
  {
    OverallWTmpValidationRsltASlice = (*(*a1 + 56))(a1);
    if ((OverallWTmpValidationRsltASlice & 1) == 0)
    {
      v29 = a6;
      v30 = a3;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v16 = *a2;
      v15 = a2[1];
      if (*a2 == v15)
      {
        v27 = 0;
        LODWORD(v18) = 0;
        v21 = -1.0;
        Mean = 0.0;
        RollingScoreASlice = -1.0;
      }

      else
      {
        v28 = v13;
        v17 = 0;
        v18 = 0;
        Mean = 0.0;
        RollingScoreASlice = -1.0;
        v21 = -1.0;
        do
        {
          v22 = *(a1 + 160);
          v23 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 168) - v22) >> 3);
          if (v23 <= v18)
          {
            goto LABEL_41;
          }

          if (**(v22 + v17))
          {
            if (a5)
            {
              v21 = -1.0;
              RollingScoreASlice = -1.0;
            }
          }

          else
          {
            RollingScoreASlice = Nightingale::slidingWindowBaseLuna::getRollingScoreASlice(a1, (v16 + v17));
            v21 = v24;
            v22 = *(a1 + 160);
            v23 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 168) - v22) >> 3);
          }

          if (v23 <= v18)
          {
LABEL_41:
            std::string::__throw_length_error[abi:nn200100]();
          }

          if (**(v22 + v17) != 1 || a5 != 0)
          {
            Nightingale::slidingWindowBaseLuna::updateRollingBufferWithAVal(RollingScoreASlice, OverallWTmpValidationRsltASlice, &v38, *(a1 + 76));
            Nightingale::slidingWindowBaseLuna::updateRollingBufferWithAVal(v21, v26, &v35, *(a1 + 76));
          }

          if (v18 >= a4)
          {
            OverallWTmpValidationRsltASlice = Nightingale::slidingWindowBaseLuna::getOverallWTmpValidationRsltASlice(a1, v18);
            if ((OverallWTmpValidationRsltASlice & 1) == 0)
            {
              __p = 0;
              __dst = 0;
              v34 = 0;
              if (v39 != v38)
              {
                std::vector<int>::__vallocate[abi:nn200100](&__p, (v39 - v38) >> 2);
              }

              Mean = Nightingale::getMeanWin<float>(&__p, -1);
              if (__p)
              {
                __dst = __p;
                operator delete(__p);
              }

              if (Mean <= *(a1 + 80) || Mean >= *(a1 + 84))
              {
                v31 = 1;
                OverallWTmpValidationRsltASlice = std::vector<BOOL>::push_back(a1 + 272, &v31);
              }

              else
              {
                v31 = 0;
                OverallWTmpValidationRsltASlice = std::vector<BOOL>::push_back(a1 + 272, &v31);
                if (a3)
                {
                  v13 = v28;
                  *v28 = v18 | (LODWORD(RollingScoreASlice) << 32);
                  *(v28 + 1) = LODWORD(v21) | (LODWORD(Mean) << 32);
                  v27 = 1;
                  v28[16] = 1;
                  goto LABEL_31;
                }
              }
            }
          }

          ++v18;
          v17 += 24;
        }

        while (v16 + v17 != v15);
        v27 = 0;
        v13 = v28;
      }

LABEL_31:
      if (v29)
      {
        *(a1 + 280) = 0;
        v31 = Mean <= *(a1 + 80);
        std::vector<BOOL>::push_back(a1 + 272, &v31);
      }

      if ((v30 & 1) == 0)
      {
        *v13 = v18 | (LODWORD(RollingScoreASlice) << 32);
        *(v13 + 1) = LODWORD(v21) | (LODWORD(Mean) << 32);
        if ((v27 & 1) == 0)
        {
          v13[16] = 1;
        }
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }
    }
  }
}

uint64_t Nightingale::slidingWindowBaseLuna::updateSearchRsltWeakSignal(uint64_t this)
{
  if (*(this + 140) == 1 && *(this + 124) == 1 && *(this + 232) == 1 && *(this + 220) < *(this + 108))
  {
    v1 = *(this + 136) - *(this + 120);
    v2 = *(this + 160);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 168) - v2) >> 3) <= v1)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if ((**(v2 + 24 * v1) & 1) == 0)
    {
      *(this + 216) = v1;
    }
  }

  return this;
}

uint64_t Nightingale::slidingWindowBaseLuna::getOverallWTmpValidationRsltASlice(Nightingale::slidingWindowBaseLuna *this, int a2)
{
  v2 = *(this + 20);
  v3 = *(this + 21);
  if (v2 == v3 || 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3) <= a2)
  {
    return 1;
  }

  v4 = (v2 + 24 * a2);
  v6 = *v4;
  v5 = v4[1];
  if (v6 == v5)
  {
    return 0;
  }

  v7 = v6 + 8;
  do
  {
    result = *(v7 - 8);
    if (result)
    {
      break;
    }

    v9 = v7 == v5;
    v7 += 8;
  }

  while (!v9);
  return result;
}

uint64_t Nightingale::slidingWindowBaseLuna::checkNumContinuousSlicesFailAvailabilityOverThreshold(Nightingale::slidingWindowBaseLuna *this)
{
  if (*(this + 148) != 1)
  {
    return 0;
  }

  v1 = *(this + 20);
  v2 = *(this + 21);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = -1;
  while (1)
  {
    if (**v1 != 1)
    {
      LODWORD(v2) = 0;
      v4 = 1;
      return v4 & v2;
    }

    if (++v3 >= *(this + 36))
    {
      break;
    }

    v1 += 3;
    if (v1 == v2)
    {
      v4 = 0;
      return v4 & v2;
    }
  }

  v4 = 1;
  LODWORD(v2) = 1;
  return v4 & v2;
}

uint64_t Nightingale::slidingWindowBaseLuna::getSliceCenterOffsetRange(uint64_t this)
{
  v1 = *(*(this + 32) + 4) - **(this + 32);
  v2 = ((v1 + 1) + -13.0);
  v3 = (v2 - *(this + 76) - 8) & ~((v2 - *(this + 76) - 8) >> 31);
  v4 = v3 + 6;
  if (v1 >= v2 + 10)
  {
    v1 = v2 + 10;
  }

  v5 = v1 - 5;
  if (v1 - 5 >= v4)
  {
    *(this + 120) = v4;
    *(this + 124) = 1;
    *(this + 128) = v5;
    *(this + 132) = 1;
    if (v5 >= v2 && v4 <= v2)
    {
      *(this + 136) = v2;
      *(this + 140) = 1;
      *(this + 144) = v2 - v3 + *(this + 116) - 6;
      *(this + 148) = 1;
    }
  }

  return this;
}

void Nightingale::slidingWindowBaseLuna::accumulateFailureReasonOverSlices(Nightingale::slidingWindowBaseLuna *this, char a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(this + 39);
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (v2)
  {
    std::vector<int>::__vallocate[abi:nn200100](&v13, v2);
  }

  v3 = *(this + 20);
  v4 = *(this + 21);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      if (v5 >= *(this + 46))
      {
        v6 = *v3;
        v7 = *(v3 + 8);
        if (*v3 != v7)
        {
          v8 = 0;
          v9 = v13;
          v10 = (v14 - v13) >> 2;
          while (1)
          {
            if (*v6 == 1)
            {
              if (v10 <= v8)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              ++v9[v8];
              if (a2)
              {
                break;
              }
            }

            v6 += 8;
            if (v6 == v7)
            {
              break;
            }

            ++v8;
          }
        }
      }

      ++v5;
      v3 += 24;
    }

    while (v3 != v4);
  }

  v11 = *(this + 35);
  __p = *(this + 34);
  LODWORD(v17) = 0;
  v12 = std::__count_BOOL[abi:nn200100]<true,std::vector<BOOL>,false>(&__p, v11);
  std::vector<int>::push_back[abi:nn200100](&v13, &v12);
  operator new();
}
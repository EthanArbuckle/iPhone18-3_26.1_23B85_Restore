void sub_1C1C00F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v15[0] = 6;
    v16 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(*a1, v15);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v16, v15[0]);
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

      v12 = *a2;
      v13[0] = 6;
      v14 = v12;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(a1[4], v13);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v14, v13[0]);
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
    std::vector<MIOFunctionInfo>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
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
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
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

void sub_1C1C011EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void nlohmann::detail::input_stream_adapter::~input_stream_adapter(nlohmann::detail::input_stream_adapter *this)
{
  if (*this)
  {
    std::ios_base::clear((*this + *(**this - 24)), *(*this + *(**this - 24) + 32) & 2);
  }
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(void (****a1)(void), uint64_t **a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if (v10 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v10 != 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            v12 = *a1;
            v13 = (**a1)[1];
            *(a2 + 8);
            goto LABEL_71;
          }

LABEL_148:
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v25 = *a1;
        (***a1)();
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, a2[1], a4);
        v13 = ***a1;
LABEL_134:

        return v13();
      }

      v33 = *a1;
      v34 = **a1;
      if (*a2[1] != a2[1][1])
      {
        if (!a3)
        {
          (*v34)();
          v56 = a2[1];
          v58 = *v56;
          v57 = v56[1];
          if (v58 != v57 - 16)
          {
            do
            {
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v58, 0, a4, a5, a6);
              (***a1)();
              v58 += 16;
              v59 = a2[1];
              v57 = v59[1];
            }

            while (v58 != v57 - 16);
            v58 = *v59;
          }

          if (v58 == v57)
          {
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v57 - 16, 0, a4, a5, a6);
          goto LABEL_117;
        }

        v34[1]();
        v35 = a6 + a5;
        v36 = a1 + 76;
        v37 = *(a1 + 631);
        if ((v37 & 0x80000000) != 0)
        {
          v38 = a1[77];
          if (v38 < v35)
          {
            goto LABEL_144;
          }
        }

        else if (v35 > v37)
        {
          v38 = *(a1 + 631);
LABEL_144:
          std::string::resize((a1 + 76), 2 * v38, 32);
        }

        v78 = a2[1];
        v80 = *v78;
        v79 = v78[1];
        if (v80 != v79 - 16)
        {
          do
          {
            v81 = a1 + 76;
            if (*(a1 + 631) < 0)
            {
              v81 = *v36;
            }

            ((**a1)[1])(*a1, v81, (a6 + a5));
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v80, 1, a4, a5, (a6 + a5));
            ((**a1)[1])(*a1, ",\n", 2);
            v80 += 16;
            v82 = a2[1];
            v79 = v82[1];
          }

          while (v80 != v79 - 16);
          v80 = *v82;
        }

        if (v80 == v79)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v83 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v83 = *v36;
        }

        ((**a1)[1])(*a1, v83, (a6 + a5));
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, a2[1][1] - 16, 1, a4, a5, (a6 + a5));
        (***a1)();
        if (*(a1 + 631) < 0)
        {
          v36 = *v36;
        }

        ((**a1)[1])(*a1, v36, a6);
LABEL_117:
        v13 = ***a1;
        goto LABEL_134;
      }

      v44 = v34[1];
      goto LABEL_45;
    }

    if (*a2)
    {
      v15 = *a1;
      v16 = **a1;
      if (!a2[1][2])
      {
        v44 = v16[1];
LABEL_45:

        return v44();
      }

      if (!a3)
      {
        (*v16)();
        v47 = a2[1];
        v48 = *v47;
        if (v47[2] != 1)
        {
          v49 = 0;
          do
          {
            (***a1)(*a1, 34);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v48 + 4, a4);
            ((**a1)[1])(*a1, ":", 2);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v48 + 7, 0, a4, a5, a6);
            (***a1)();
            v50 = v48[1];
            v51 = v48;
            if (v50)
            {
              do
              {
                v48 = v50;
                v50 = *v50;
              }

              while (v50);
            }

            else
            {
              do
              {
                v48 = v51[2];
                v52 = *v48 == v51;
                v51 = v48;
              }

              while (!v52);
            }

            ++v49;
            v47 = a2[1];
          }

          while (v49 < v47[2] - 1);
        }

        v53 = v47 + 1;
        if (v48 == v53)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v54 = v48[1];
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54);
        }

        else
        {
          v84 = v48;
          do
          {
            v55 = v84[2];
            v52 = *v55 == v84;
            v84 = v55;
          }

          while (!v52);
        }

        if (v55 != v53)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        (***a1)(*a1, 34);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v48 + 4, a4);
        ((**a1)[1])(*a1, ":", 2);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v48 + 7, 0, a4, a5, a6);
        goto LABEL_133;
      }

      v16[1]();
      v17 = a6 + a5;
      v18 = a1 + 76;
      v19 = *(a1 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = a1[77];
        if (v20 < v17)
        {
          goto LABEL_142;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(a1 + 631);
LABEL_142:
        std::string::resize((a1 + 76), 2 * v20, 32);
      }

      v69 = a2[1];
      v70 = *v69;
      if (v69[2] == 1)
      {
        v71 = *v69;
      }

      else
      {
        v72 = 0;
        do
        {
          v73 = a1 + 76;
          if (*(a1 + 631) < 0)
          {
            v73 = *v18;
          }

          ((**a1)[1])(*a1, v73, (a6 + a5));
          (***a1)();
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v70 + 4, a4);
          ((**a1)[1])(*a1, ": ", 3);
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v70 + 7, 1, a4, a5, (a6 + a5));
          ((**a1)[1])(*a1, ",\n", 2);
          v74 = v70[1];
          if (v74)
          {
            do
            {
              v71 = v74;
              v74 = *v74;
            }

            while (v74);
          }

          else
          {
            do
            {
              v71 = v70[2];
              v52 = *v71 == v70;
              v70 = v71;
            }

            while (!v52);
          }

          ++v72;
          v69 = a2[1];
          v70 = v71;
        }

        while (v72 < v69[2] - 1);
      }

      v75 = v69 + 1;
      if (v71 == v75)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
      }

      v76 = v71[1];
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        v85 = v71;
        do
        {
          v77 = v85[2];
          v52 = *v77 == v85;
          v85 = v77;
        }

        while (!v52);
      }

      if (v77 != v75)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
      }

      v86 = a1 + 76;
      if (*(a1 + 631) < 0)
      {
        v86 = *v18;
      }

      ((**a1)[1])(*a1, v86, (a6 + a5));
      (***a1)();
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v71 + 4, a4);
      ((**a1)[1])(*a1, ": ", 3);
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v71 + 7, 1, a4, a5, (a6 + a5));
      (***a1)();
      if (*(a1 + 631) < 0)
      {
        v87 = *v18;
      }

      v68 = (**a1)[1];
LABEL_132:
      v68();
LABEL_133:
      v13 = ***a1;
      goto LABEL_134;
    }

    v23 = *a1;
    v13 = (**a1)[1];
LABEL_71:

    return v13();
  }

  if (*a2 <= 6u)
  {
    if (v10 == 5)
    {
      v24 = a2[1];

      return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(a1, v24);
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_148;
      }

      v21 = a2[1];

      return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(a1, v21);
    }
  }

  else
  {
    switch(v10)
    {
      case 7u:
        v39 = *(a2 + 1);

        return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_float(a1, v39);
      case 8u:
        v26 = *a1;
        v27 = (**a1)[1];
        if (a3)
        {
          v27();
          v28 = (a6 + a5);
          v29 = a1 + 76;
          v30 = *(a1 + 631);
          if ((v30 & 0x80000000) != 0)
          {
            v60 = a1[77];
            if (v60 >= v28)
            {
              v31 = *a1;
LABEL_76:
              v32 = *v29;
              goto LABEL_77;
            }
          }

          else
          {
            if (v28 <= v30)
            {
              v31 = *a1;
              v32 = a1 + 76;
LABEL_77:
              ((*v31)[1])(v31, v32, v28);
              ((**a1)[1])(*a1, "bytes: [", 10);
              v61 = *a2[1];
              v62 = a2[1][1];
              v63 = *a2[1];
              if (v63 != v62)
              {
                for (; v63 != v62 - 1; v62 = a2[1][1])
                {
                  v64 = *v63++;
                  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v64);
                  ((**a1)[1])(*a1, ", ", 2);
                }

                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v62 - 1));
              }

              ((**a1)[1])(*a1, "],\n", 3);
              v65 = a1 + 76;
              if (*(a1 + 631) < 0)
              {
                v65 = *v29;
              }

              ((**a1)[1])(*a1, v65, v28);
              ((**a1)[1])(*a1, "subtype: ", 11);
              v66 = a2[1];
              if (*(v66 + 25) == 1)
              {
                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v66 + 24));
              }

              else
              {
                ((**a1)[1])(*a1, "null", 4);
              }

              (***a1)(*a1, 10);
              if (*(a1 + 631) < 0)
              {
                v67 = *v29;
              }

              v68 = (**a1)[1];
              goto LABEL_132;
            }

            v60 = *(a1 + 631);
          }

          std::string::resize((a1 + 76), 2 * v60, 32);
          v31 = *a1;
          v32 = a1 + 76;
          if ((*(a1 + 631) & 0x80000000) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        v27();
        v40 = *a2[1];
        v41 = a2[1][1];
        v42 = *a2[1];
        if (v42 != v41)
        {
          while (v42 != v41 - 1)
          {
            v43 = *v42++;
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v43);
            (***a1)(*a1, 44);
            v41 = a2[1][1];
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v41 - 1));
        }

        ((**a1)[1])(*a1, "],subtype:", 12);
        v45 = a2[1];
        if (*(v45 + 25) != 1)
        {
          v13 = (**a1)[1];
          goto LABEL_71;
        }

        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v45 + 24));
        v46 = ***a1;

        return v46();
      case 9u:
        v14 = *a1;
        v13 = (**a1)[1];
        goto LABEL_71;
      default:
        goto LABEL_148;
    }
  }
}

void std::__shared_ptr_emplace<nlohmann::detail::output_stream_adapter<char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F415CC60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::serializer(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = localeconv();
  *(a1 + 80) = v5;
  thousands_sep = v5->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v5->decimal_point;
  if (v5->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  operator new();
}

void sub_1C1C02558(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(uint64_t result, uint64_t *a2, int a3)
{
  v47 = 0;
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (!v4)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v3 >> 63;
  v48[0] = 0;
  v13 = result + 90;
  do
  {
    v14 = *a2;
    if ((v12 & 1) == 0)
    {
      v14 = a2;
    }

    v15 = *(v14 + v9);
    result = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(&v47, v48, v15);
    if (result == 1)
    {
      v17 = *(v7 + 158);
      if ((v17 - 1) >= 2)
      {
        if (!v17)
        {
          v46 = 3;
          *__str = 0;
          snprintf(__str, 3uLL, "%.2X", v15);
          exception = __cxa_allocate_exception(0x20uLL);
          std::to_string(&v39, v9);
          v28 = std::string::insert(&v39, 0, "invalid UTF-8 byte at index ");
          v29 = *&v28->__r_.__value_.__l.__data_;
          v40.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v40.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          v30 = std::string::append(&v40, ": 0x");
          v31 = *&v30->__r_.__value_.__l.__data_;
          v41.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&v41.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          if (v46 >= 0)
          {
            v32 = __str;
          }

          else
          {
            v32 = *__str;
          }

          if (v46 >= 0)
          {
            v33 = v46;
          }

          else
          {
            v33 = v45;
          }

          v34 = std::string::append(&v41, v32, v33);
          v35 = *&v34->__r_.__value_.__l.__data_;
          v43 = v34->__r_.__value_.__r.__words[2];
          v42 = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v38);
          nlohmann::detail::type_error::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(316, &v42, exception);
        }

        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped();
      }

      v18 = v10 != 0;
      if (v17 == 1)
      {
        v19 = v13 + v11;
        if (a3)
        {
          *v19 = 1717990748;
          *(v19 + 4) = 25702;
          v11 += 6;
        }

        else
        {
          v11 += 3;
          *v19 = -16401;
          *(v19 + 2) = -67;
        }

        if ((v11 - 500) <= 0xC)
        {
          result = (*(**v7 + 8))(*v7, v13, v11);
          v11 = 0;
        }
      }

      v10 = 0;
      v9 -= v18;
      v47 = 0;
LABEL_52:
      v8 = v11;
      goto LABEL_53;
    }

    if (!result)
    {
      if (v48[0] <= 11)
      {
        switch(v48[0])
        {
          case 8u:
            v16 = 25180;
            goto LABEL_48;
          case 9u:
            v16 = 29788;
            goto LABEL_48;
          case 0xAu:
            v16 = 28252;
            goto LABEL_48;
        }
      }

      else if (v48[0] > 33)
      {
        if (v48[0] == 34)
        {
          v16 = 8796;
          goto LABEL_48;
        }

        if (v48[0] == 92)
        {
          v16 = 23644;
          goto LABEL_48;
        }
      }

      else
      {
        if (v48[0] == 12)
        {
          v16 = 26204;
          goto LABEL_48;
        }

        if (v48[0] == 13)
        {
          v16 = 29276;
LABEL_48:
          *(v13 + v8) = v16;
          v11 = v8 + 2;
LABEL_49:
          if ((v11 - 500) <= 0xC)
          {
            result = (*(**v7 + 8))(*v7, v13, v11);
            v11 = 0;
            v10 = 0;
            v8 = 0;
            goto LABEL_53;
          }

          v10 = 0;
          goto LABEL_52;
        }
      }

      if (v48[0] > 0x7E)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0;
      }

      if (v48[0] < 0x20 || v21)
      {
        if (HIWORD(v48[0]))
        {
          result = snprintf((v13 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v48[0] >> 10) - 10304), v48[0] & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v13 + v8), 7uLL, "\\u%04x", v48[0]);
          v11 = v8 + 6;
        }
      }

      else
      {
        if (*(a2 + 23) >= 0)
        {
          v22 = a2;
        }

        else
        {
          v22 = *a2;
        }

        v11 = v8 + 1;
        *(v13 + v8) = *(v22 + v9);
      }

      goto LABEL_49;
    }

    if ((a3 & 1) == 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      *(v13 + v8++) = *(v20 + v9);
    }

    ++v10;
LABEL_53:
    ++v9;
    v23 = *(a2 + 23);
    v12 = v23 >> 63;
    v24 = a2[1];
    if ((v23 & 0x80000000) == 0)
    {
      v24 = *(a2 + 23);
    }
  }

  while (v9 < v24);
  if (v47)
  {
    v26 = *(v7 + 158);
    switch(v26)
    {
      case 1:
        (*(**v7 + 8))(*v7, v13, v11);
        v25 = *(**v7 + 8);
        break;
      case 2:
        v25 = *(**v7 + 8);
        break;
      case 0:
        v46 = 3;
        *__str = 0;
        if ((v23 & 0x80000000) == 0)
        {
          v36 = a2;
        }

        else
        {
          v36 = *a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v36 + v24 - 1));
        v37 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&v41);
        nlohmann::detail::type_error::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(316, &v42, v37);
      default:
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped();
    }

    return v25();
  }

  else if (v8)
  {
    v25 = *(**v7 + 8);
    return v25();
  }

  return result;
}

void sub_1C1C02B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a29);
  if (a41 < 0)
  {
    operator delete(__p);
    if ((v42 & 1) == 0)
    {
LABEL_6:
      if (*(v43 - 97) < 0)
      {
        operator delete(*(v43 - 120));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v42)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v41);
  goto LABEL_6;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  LOBYTE(v2) = a2;
  if (a2 >= 0xA)
  {
    if (a2 >= 0x64)
    {
      *(a1 + 17) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[(a2 - 100 * ((41 * a2) >> 12))];
      v5 = a1 + 17;
      v2 = (41 * a2) >> 12;
      goto LABEL_10;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = a1 + 16 + v3;
  if (a2 < 0xA)
  {
LABEL_10:
    *(v5 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  *(v5 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[a2];
  return (*(**a1 + 8))();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + 2;
    if ((v2 & 0x8000000000000000) != 0)
    {
      *v3 = 45;
      v2 = -v2;
      if (v2 >= 0xA)
      {
        v7 = 4;
        v11 = v2;
        while (1)
        {
          if (v11 <= 0x63)
          {
            v7 -= 2;
            goto LABEL_26;
          }

          if (v11 <= 0x3E7)
          {
            break;
          }

          if (v11 >> 4 < 0x271)
          {
            goto LABEL_26;
          }

          v7 += 4;
          v10 = v11 >= 0x186A0;
          v11 /= 0x2710uLL;
          if (!v10)
          {
            v7 -= 3;
            goto LABEL_26;
          }
        }

        --v7;
      }

      else
      {
        v7 = 1;
      }

LABEL_26:
      v8 = v7 + 1;
    }

    else
    {
      if (v2 < 0xA)
      {
        v4 = a1 + 17;
        goto LABEL_35;
      }

      v8 = 4;
      v9 = v2;
      while (1)
      {
        if (v9 <= 0x63)
        {
          v8 -= 2;
          goto LABEL_27;
        }

        if (v9 <= 0x3E7)
        {
          break;
        }

        if (v9 >> 4 < 0x271)
        {
          goto LABEL_27;
        }

        v8 += 4;
        v10 = v9 >= 0x186A0;
        v9 /= 0x2710uLL;
        if (!v10)
        {
          v8 -= 3;
          goto LABEL_27;
        }
      }

      --v8;
    }

LABEL_27:
    if (v8 >= 0x3F)
    {
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>();
    }

    v4 = &v3[v8];
    if (v2 < 0x64)
    {
      v12 = v2;
    }

    else
    {
      do
      {
        v12 = v2 / 0x64;
        *(v4 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(long long)::digits_to_99[v2 % 0x64];
        v4 -= 2;
        v13 = v2 >> 4;
        v2 /= 0x64uLL;
      }

      while (v13 > 0x270);
    }

    if (v12 >= 0xA)
    {
      *(v4 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(long long)::digits_to_99[v12];
LABEL_36:
      v14 = (**a1)[1];

      return v14();
    }

    LOBYTE(v2) = v12;
LABEL_35:
    *(v4 - 1) = v2 | 0x30;
    goto LABEL_36;
  }

  v5 = ***a1;

  return v5();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (a2 >= 0xA)
    {
      v6 = 4;
      v7 = a2;
      while (1)
      {
        if (v7 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_15;
        }

        if (v7 <= 0x3E7)
        {
          break;
        }

        if (v7 >> 4 < 0x271)
        {
          goto LABEL_15;
        }

        v8 = v7 >> 5;
        v7 /= 0x2710uLL;
        v6 += 4;
        if (v8 <= 0xC34)
        {
          v6 -= 3;
          goto LABEL_15;
        }
      }

      --v6;
LABEL_15:
      if (v6 >= 0x3F)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>();
      }

      v3 = a1 + v6 + 16;
      if (a2 < 0x64)
      {
        v9 = a2;
      }

      else
      {
        do
        {
          v9 = v2 / 0x64;
          *(v3 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (v2 % 0x64)];
          v3 -= 2;
          v10 = v2 >> 4;
          v2 /= 0x64uLL;
        }

        while (v10 > 0x270);
      }

      if (v9 >= 0xA)
      {
        *(v3 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * v9];
LABEL_24:
        v11 = (**a1)[1];

        return v11();
      }

      LOBYTE(v2) = v9;
    }

    else
    {
      v3 = a1 + 17;
    }

    *(v3 - 1) = v2 | 0x30;
    goto LABEL_24;
  }

  v4 = ***a1;

  return v4();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_float(_BYTE *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    nlohmann::detail::to_chars<double>(a1 + 16, (a1 + 80), a2);
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(**a1 + 8);

  return v4();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(_BYTE *a1, unsigned int *a2, int a3)
{
  v3 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[a3];
  if (*a1)
  {
    v4 = a3 & 0x3F | (*a2 << 6);
  }

  else
  {
    v4 = (0xFFu >> v3) & a3;
  }

  *a2 = v4;
  v5 = 16 * *a1 + v3 + 256;
  if (v5 >= 0x190)
  {
    __assert_rtn("decode", "json.hpp", 16606, "index < 400");
  }

  v6 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v5];
  *a1 = v6;
  return v6;
}

uint64_t nlohmann::detail::to_chars<double>(_BYTE *a1, uint64_t a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::to_chars<double>();
  }

  v3 = a1;
  if ((*&a3 & 0x8000000000000000) != 0)
  {
    a3 = -a3;
    *a1 = 45;
    v3 = (a1 + 1);
  }

  if (a3 == 0.0)
  {
    *v3 = 11824;
    result = v3 + 3;
    *(v3 + 2) = 48;
  }

  else
  {
    v5 = a2 - v3;
    if (a2 - v3 <= 16)
    {
      nlohmann::detail::to_chars<double>();
    }

    v6 = 0;
    nlohmann::detail::dtoa_impl::grisu2<double>(v3, &v6 + 1, &v6, a3);
    if (SHIDWORD(v6) >= 18)
    {
      nlohmann::detail::to_chars<double>();
    }

    if (v5 <= 0x15)
    {
      nlohmann::detail::to_chars<double>();
    }

    if (v5 == 22)
    {
      nlohmann::detail::to_chars<double>();
    }

    return nlohmann::detail::dtoa_impl::format_buffer(v3, HIDWORD(v6), v6, -4, 15);
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2<double>(uint64_t a1, unsigned int *a2, _DWORD *a3, double a4)
{
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::dtoa_impl::grisu2<double>();
  }

  if (a4 <= 0.0)
  {
    nlohmann::detail::dtoa_impl::grisu2<double>();
  }

  nlohmann::detail::dtoa_impl::compute_boundaries<double>(v9, a4);
  return nlohmann::detail::dtoa_impl::grisu2(a1, a2, a3, v9[2], v9[3], v9[0], v9[1], v7, v9[4], v9[5]);
}

uint64_t nlohmann::detail::dtoa_impl::format_buffer(nlohmann::detail::dtoa_impl *this, char *a2, int a3, int a4, int a5)
{
  if ((a4 & 0x80000000) == 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  if (a5 <= 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  v5 = this;
  v6 = a2;
  v7 = a3 + a2;
  if ((a3 & 0x80000000) == 0 && v7 <= a5)
  {
    memset(this + a2, 48, a3);
    *(v5 + v7) = 12334;
    return v5 + v7 + 2;
  }

  if (v7 < 1 || v7 > a5)
  {
    if (v7 > a4 && v7 <= 0)
    {
      v10 = -v7;
      memmove(this + v10 + 2, this, a2);
      *v5 = 11824;
      memset(v5 + 2, 48, v10);
      return v5 + v10 + v6 + 2;
    }

    if (a2 != 1)
    {
      memmove(this + 2, this + 1, a2 - 1);
      *(v5 + 1) = 46;
      v5 = (v5 + v6);
    }

    *(v5 + 1) = 101;
    if (v7 <= -999)
    {
      nlohmann::detail::dtoa_impl::format_buffer();
    }

    if (v7 >= 1001)
    {
      nlohmann::detail::dtoa_impl::format_buffer();
    }

    if (v7 >= 1)
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    if (v7 - 1 >= 0)
    {
      v12 = v7 - 1;
    }

    else
    {
      v12 = 1 - v7;
    }

    *(v5 + 2) = v11;
    if (v12 > 9)
    {
      if (v12 > 0x63)
      {
        *(v5 + 3) = v12 / 0x64u + 48;
        v15 = v12 % 0x64u;
        v13 = v5 + 5;
        *(v5 + 4) = (v15 / 0xAu) | 0x30;
        LOBYTE(v12) = v15 % 0xAu;
        v14 = 4;
        goto LABEL_29;
      }

      v13 = v5 + 4;
      *(v5 + 3) = (v12 / 0xAu) | 0x30;
      LOBYTE(v12) = v12 % 0xAu;
    }

    else
    {
      v13 = v5 + 4;
      *(v5 + 3) = 48;
    }

    v14 = 3;
LABEL_29:
    result = v5 + v14 + 2;
    *v13 = v12 | 0x30;
    return result;
  }

  if ((a3 & 0x80000000) == 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  v9 = this + v7;
  memmove(v9 + 1, v9, a2 - v7);
  *v9 = 46;
  return v5 + v6 + 1;
}

uint64_t nlohmann::detail::dtoa_impl::compute_boundaries<double>@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::dtoa_impl::compute_boundaries<double>();
  }

  if (a2 <= 0.0)
  {
    nlohmann::detail::dtoa_impl::compute_boundaries<double>();
  }

  v3 = 4294966221;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!(*&a2 >> 52))
  {
    v5 = 2 * *&a2;
    v6 = (2 * (*&a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v7 = 4294966222;
    v8 = -1075;
LABEL_9:
    v9 = v5 - 1;
    goto LABEL_10;
  }

  v7 = (*&a2 >> 52) - 1075;
  v5 = 2 * (v4 | 0x10000000000000);
  v6 = (2 * (*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
  v3 = (*&a2 >> 52) - 1076;
  v8 = (*&a2 >> 52) - 1076;
  if (!(*&a2 >> 53) || v4)
  {
    v4 |= 0x10000000000000uLL;
    goto LABEL_9;
  }

  v8 = (*&a2 >> 52) - 1077;
  v4 = 0x10000000000000;
  v9 = 0x3FFFFFFFFFFFFFLL;
LABEL_10:
  v18 = v9;
  v19 = v8;
  v10 = nlohmann::detail::dtoa_impl::diyfp::normalize(v6, v3);
  v12 = v11;
  v13 = nlohmann::detail::dtoa_impl::diyfp::normalize_to(&v18, v11);
  v15 = v14;
  result = nlohmann::detail::dtoa_impl::diyfp::normalize(v4, v7);
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, nlohmann::detail::dtoa_impl *a10)
{
  v31[0] = a4;
  v31[1] = a5;
  v30[0] = a6;
  v30[1] = a7;
  v29[0] = a9;
  v29[1] = a10;
  if (a10 != a5)
  {
    nlohmann::detail::dtoa_impl::grisu2();
  }

  if (a10 != a7)
  {
    nlohmann::detail::dtoa_impl::grisu2();
  }

  cached_power_for_binary_exponent = nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(a10);
  v15 = v14;
  v27 = cached_power_for_binary_exponent;
  v28 = v16;
  v17 = nlohmann::detail::dtoa_impl::diyfp::mul(v30, &v27);
  v19 = v18;
  v20 = nlohmann::detail::dtoa_impl::diyfp::mul(v31, &v27);
  v22 = v21;
  v23 = nlohmann::detail::dtoa_impl::diyfp::mul(v29, &v27);
  *a3 = -v15;
  return nlohmann::detail::dtoa_impl::grisu2_digit_gen(a1, a2, a3, v20 + 1, v22, v17, v19, v25, v23 - 1, v24);
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::normalize(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    __assert_rtn("normalize", "json.hpp", 14760, "x.f != 0");
  }

  for (; (result & 0x8000000000000000) == 0; a2 = (a2 - 1) | a2 & 0xFFFFFFFF00000000)
  {
    result *= 2;
  }

  return result;
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::normalize_to(uint64_t *a1, int a2)
{
  v2 = *(a1 + 2) - a2;
  if (v2 < 0)
  {
    v5 = "delta >= 0";
    v6 = 14779;
    goto LABEL_6;
  }

  v3 = *a1;
  result = *a1 << v2;
  if (result >> v2 != v3)
  {
    v5 = "((x.f << delta) >> delta) == x.f";
    v6 = 14780;
LABEL_6:
    __assert_rtn("normalize_to", "json.hpp", v6, v5);
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(nlohmann::detail::dtoa_impl *this)
{
  if (this <= -1501)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  if (this >= 1501)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v1 = 78913 * (-61 - this) / 0x40000;
  if (this < -61)
  {
    ++v1;
  }

  if (v1 <= -315)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v2 = ((v1 + 307 + (((v1 + 307) >> 28) & 7)) << 16) >> 19;
  if (v2 >= 0x4F)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v3 = (&nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * v2);
  v4 = v3[1] + this;
  if (v4 <= -125)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  if (v4 >= -95)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  return *v3;
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::mul(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = ((*a2 * *a1) >> 32) + v4 + v5;
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((v6 + 0x80000000) >> 32);
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_digit_gen(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v47[0] = a4;
  v47[1] = a5;
  v46[0] = a6;
  v46[1] = a7;
  v44 = a9;
  v45 = a10;
  if (a10 <= -61)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  if (a10 >= -31)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v13 = nlohmann::detail::dtoa_impl::diyfp::sub(&v44, v47);
  v14 = nlohmann::detail::dtoa_impl::diyfp::sub(&v44, v46);
  v15 = -v45;
  v16 = v44 >> -v45;
  if (!v16)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v17 = v14;
  v18 = 1 << v15;
  v19 = (1 << v15) - 1;
  v20 = v19 & v44;
  if (v16 <= 0x3B9AC9FF)
  {
    if (v16 <= 0x5F5E0FF)
    {
      if (v16 <= 0x98967F)
      {
        if (v16 <= 0xF423F)
        {
          v23 = v16 >> 5;
          v24 = v16 >> 4;
          if (v16 <= 9)
          {
            v25 = 1;
          }

          else
          {
            v25 = 10;
          }

          if (v16 <= 9)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          if (v16 <= 0x63)
          {
            v27 = v26;
          }

          else
          {
            v27 = 3;
          }

          if (v16 <= 0x63)
          {
            v28 = v25;
          }

          else
          {
            v28 = 100;
          }

          if (v16 <= 0x3E7)
          {
            v29 = v27;
          }

          else
          {
            v29 = 4;
          }

          if (v16 <= 0x3E7)
          {
            v30 = v28;
          }

          else
          {
            v30 = 1000;
          }

          if (v24 <= 0x270)
          {
            v31 = v29;
          }

          else
          {
            v31 = 5;
          }

          if (v24 <= 0x270)
          {
            v32 = v30;
          }

          else
          {
            v32 = 10000;
          }

          if (v23 <= 0xC34)
          {
            v22 = v31;
          }

          else
          {
            v22 = 6;
          }

          if (v23 > 0xC34)
          {
            v21 = 100000;
          }

          else
          {
            v21 = v32;
          }
        }

        else
        {
          v21 = 1000000;
          v22 = 7;
        }
      }

      else
      {
        v21 = 10000000;
        v22 = 8;
      }
    }

    else
    {
      v21 = 100000000;
      v22 = 9;
    }
  }

  else
  {
    v21 = 1000000000;
    v22 = 10;
  }

  v33 = v22 + 1;
  do
  {
    v34 = v16 / v21;
    if (v16 / v21 >= 0xA)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v16 = v16 % v21;
    v35 = *a2;
    *a2 = v35 + 1;
    *(a1 + v35) = v34 | 0x30;
    if ((v16 << v15) + v20 <= v13)
    {
      *a3 = *a3 + v33 - 2;
      v18 = v21 << v15;
      v40 = *a2;
      v41 = a1;
      v42 = v13;
      v20 += v16 << v15;
      return nlohmann::detail::dtoa_impl::grisu2_round(v41, v40, v17, v42, v20, v18);
    }

    v21 /= 0xAu;
    --v33;
  }

  while (v33 > 1);
  if (v20 <= v13)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v36 = 0;
  do
  {
    if (v20 >= 0x199999999999999ALL)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v37 = (10 * v20) >> v15;
    if (v37 >= 0xA)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v38 = *a2;
    *a2 = v38 + 1;
    *(a1 + v38) = v37 | 0x30;
    v39 = 5 * v13;
    v20 = (10 * v20) & v19;
    v13 *= 10;
    v17 *= 10;
    --v36;
  }

  while (v20 > 2 * v39);
  *a3 += v36;
  v40 = *a2;
  v41 = a1;
  v42 = v13;
  return nlohmann::detail::dtoa_impl::grisu2_round(v41, v40, v17, v42, v20, v18);
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::sub(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    v4 = "x.e == y.e";
    v5 = 14683;
LABEL_6:
    __assert_rtn("sub", "json.hpp", v5, v4);
  }

  v2 = *a1 >= *a2;
  result = *a1 - *a2;
  if (!v2)
  {
    v4 = "x.f >= y.f";
    v5 = 14684;
    goto LABEL_6;
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_round(uint64_t this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 0)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (a3 > a4)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (a4 < a5)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (!a6)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  v6 = a3 - a5;
  if (a3 > a5 && a4 - a5 >= a6)
  {
    v7 = this - 1;
    v8 = a6 + a5;
    v9 = a4 - (a6 + a5);
    do
    {
      if (v8 >= a3 && v6 <= v8 - a3)
      {
        break;
      }

      v10 = *(v7 + a2);
      if (v10 == 48)
      {
        nlohmann::detail::dtoa_impl::grisu2_round();
      }

      *(v7 + a2) = v10 - 1;
      if (v8 >= a3)
      {
        break;
      }

      v6 -= a6;
      v8 += a6;
      v11 = v9 >= a6;
      v9 -= a6;
    }

    while (v11);
  }

  return this;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string()
{
  __assert_rtn("scan_string", "json.hpp", 6460, "current == '\\'");
}

{
  __assert_rtn("scan_string", "json.hpp", 6580, "0x00 <= codepoint && codepoint <= 0x10FFFF");
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number()
{
  __assert_rtn("scan_number", "json.hpp", 7472, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "json.hpp", 7456, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "json.hpp", 7489, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "json.hpp", 7209, "false");
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_codepoint(int64x2_t *this, int *a2, unsigned int *a3)
{
  v6 = 0;
  v7 = 0;
  v14 = *MEMORY[0x1E69E9840];
  v13 = xmmword_1C1C32300;
  do
  {
    v8 = *(&v13 + v7);
    result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(this);
    v10 = *a2;
    v11 = *a2 - 48;
    if (v11 > 9)
    {
      if ((v10 - 65) > 5)
      {
        if ((v10 - 97) > 5)
        {
          v6 = -1;
          goto LABEL_9;
        }

        v11 = v10 - 87;
      }

      else
      {
        v11 = v10 - 55;
      }
    }

    v6 += v11 << v8;
    v7 += 4;
  }

  while (v7 != 16);
  if (v6 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "json.hpp", 6398, "0x0000 <= codepoint && codepoint <= 0xFFFF");
  }

LABEL_9:
  *a3 = v6;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::next_byte_in_range(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  std::string::push_back((a3 + 80), *(a3 + 20));
  v9 = &a1[a4];
  while (1)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a3);
    v10 = *(a3 + 20);
    if (*a1 > v10 || v10 > a1[1])
    {
      break;
    }

    std::string::push_back((a3 + 80), v10);
    a1 += 2;
    if (a1 == v9)
    {
      v11 = 1;
      goto LABEL_6;
    }
  }

  v11 = 0;
  *(a3 + 104) = "invalid string: ill-formed UTF-8 byte";
LABEL_6:
  *a5 = v11;
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object()
{
  __assert_rtn("end_object", "json.hpp", 5939, "!keep_stack.empty()");
}

{
  __assert_rtn("end_object", "json.hpp", 5938, "!ref_stack.empty()");
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array()
{
  __assert_rtn("end_array", "json.hpp", 5995, "!keep_stack.empty()");
}

{
  __assert_rtn("end_array", "json.hpp", 5994, "!ref_stack.empty()");
}

void nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->()
{
  __assert_rtn("operator->", "json.hpp", 11385, "m_it.array_iterator != m_object->m_value.array->end()");
}

{
  __assert_rtn("operator->", "json.hpp", 11379, "m_it.object_iterator != m_object->m_value.object->end()");
}

{
  __assert_rtn("operator->", "json.hpp", 11373, "m_object != nullptr");
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>()
{
  __assert_rtn("handle_value", "json.hpp", 5802, "object_element");
}

{
  __assert_rtn("handle_value", "json.hpp", 5793, "ref_stack.back()->is_array() || ref_stack.back()->is_object()");
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump()
{
  __assert_rtn("dump", "json.hpp", 15941, "!val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "json.hpp", 15920, "!val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "json.hpp", 15879, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "json.hpp", 15878, "i != val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "json.hpp", 15851, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "json.hpp", 15850, "i != val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "json.hpp", 16075, "false");
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped()
{
  __assert_rtn("dump_escaped", "json.hpp", 16274, "false");
}

{
  __assert_rtn("dump_escaped", "json.hpp", 16337, "false");
}

void nlohmann::detail::to_chars<double>()
{
  __assert_rtn("to_chars", "json.hpp", 15716, "last - first >= std::numeric_limits<FloatType>::max_digits10 + 6");
}

{
  __assert_rtn("to_chars", "json.hpp", 15715, "last - first >= 2 + (-kMinExp - 1) + std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "json.hpp", 15707, "len <= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "json.hpp", 15697, "last - first >= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "json.hpp", 15679, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2<double>()
{
  __assert_rtn("grisu2", "json.hpp", 15505, "value > 0");
}

{
  __assert_rtn("grisu2", "json.hpp", 15504, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::format_buffer()
{
  __assert_rtn("format_buffer", "json.hpp", 15621, "k > n");
}

{
  __assert_rtn("append_exponent", "json.hpp", 15542, "e < 1000");
}

{
  __assert_rtn("append_exponent", "json.hpp", 15541, "e > -1000");
}

{
  __assert_rtn("format_buffer", "json.hpp", 15595, "max_exp > 0");
}

{
  __assert_rtn("format_buffer", "json.hpp", 15594, "min_exp < 0");
}

void nlohmann::detail::dtoa_impl::compute_boundaries<double>()
{
  __assert_rtn("compute_boundaries", "json.hpp", 14803, "value > 0");
}

{
  __assert_rtn("compute_boundaries", "json.hpp", 14802, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2()
{
  __assert_rtn("grisu2", "json.hpp", 15442, "m_plus.e == m_minus.e");
}

{
  __assert_rtn("grisu2", "json.hpp", 15443, "m_plus.e == v.e");
}

void nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent()
{
  __assert_rtn("get_cached_power_for_binary_exponent", "json.hpp", 15090, "static_cast<std::size_t>(index) < kCachedPowers.size()");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "json.hpp", 15094, "kGamma >= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "json.hpp", 15093, "kAlpha <= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "json.hpp", 15089, "index >= 0");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "json.hpp", 15084, "e <= 1500");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "json.hpp", 15083, "e >= -1500");
}

void nlohmann::detail::dtoa_impl::grisu2_digit_gen()
{
  __assert_rtn("grisu2_digit_gen", "json.hpp", 15361, "p2 > delta");
}

{
  __assert_rtn("grisu2_digit_gen", "json.hpp", 15381, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "json.hpp", 15372, "p2 <= (std::numeric_limits<std::uint64_t>::max)() / 10");
}

{
  __assert_rtn("grisu2_digit_gen", "json.hpp", 15274, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "json.hpp", 15238, "p1 > 0");
}

{
  __assert_rtn("grisu2_digit_gen", "json.hpp", 15217, "M_plus.e <= kGamma");
}

{
  __assert_rtn("grisu2_digit_gen", "json.hpp", 15216, "M_plus.e >= kAlpha");
}

void nlohmann::detail::dtoa_impl::grisu2_round()
{
  __assert_rtn("grisu2_round", "json.hpp", 15188, "buf[len - 1] != '0'");
}

{
  __assert_rtn("grisu2_round", "json.hpp", 15163, "ten_k > 0");
}

{
  __assert_rtn("grisu2_round", "json.hpp", 15162, "rest <= delta");
}

{
  __assert_rtn("grisu2_round", "json.hpp", 15161, "dist <= delta");
}

{
  __assert_rtn("grisu2_round", "json.hpp", 15160, "len >= 1");
}

std::string *MPL::detail::ModelPackageItemInfoImpl::ModelPackageItemInfoImpl(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v11;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v12;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v13;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *a5, *(a5 + 1));
  }

  else
  {
    v14 = *a5;
    this[3].__r_.__value_.__r.__words[2] = *(a5 + 2);
    *&this[3].__r_.__value_.__l.__data_ = v14;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *a6, *(a6 + 1));
  }

  else
  {
    v15 = *a6;
    this[4].__r_.__value_.__r.__words[2] = *(a6 + 2);
    *&this[4].__r_.__value_.__l.__data_ = v15;
  }

  return this;
}

void sub_1C1C04B88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MPL::detail::ModelPackageItemInfoImpl::~ModelPackageItemInfoImpl(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void MPL::ModelPackageItemInfo::~ModelPackageItemInfo(MPL::ModelPackageItemInfo *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void MPL::detail::ModelPackageImpl::ModelPackageImpl(std::string *this, const std::__fs::filesystem::path *a2, int a3, std::string::value_type a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = *&a2->__pn_.__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = a2->__pn_.__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v8;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, kModelPackageManifestFileName);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, a2, &this[1]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &kModelPackageDataDir);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, a2, &this[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__s.__data_[8] = a4;
  std::__fs::filesystem::__status(this, 0);
  if (!__p.__r_.__value_.__s.__data_[0] || __p.__r_.__value_.__s.__data_[0] == 255)
  {
    if (a3)
    {
      if (std::__fs::filesystem::__create_directory(this, 0))
      {
        if (std::__fs::filesystem::__create_directory(&this[2], 0))
        {
          operator new();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        if (SHIBYTE(this[2].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v22, this[2].__r_.__value_.__l.__data_, this[2].__r_.__value_.__l.__size_);
        }

        else
        {
          v22 = this[2];
        }

        v20 = std::string::insert(&v22, 0, "Failed to create data directory at path: ");
        v21 = *&v20->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        MEMORY[0x1C69087C0](exception, &__p);
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
      }

      else
      {
        v22 = *this;
      }

      v18 = std::string::insert(&v22, 0, "Failed to create model package at path: ");
      v19 = *&v18->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x1C69087C0](v12, &__p);
      __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = *this;
    }

    v14 = std::string::insert(&v22, 0, "Failed to open model package at path: ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x1C69087C0](v10, &__p);
    __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  std::__fs::filesystem::__status(&this[1], 0);
  if (__p.__r_.__value_.__s.__data_[0] && __p.__r_.__value_.__s.__data_[0] != 255)
  {
    if ((this[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      data = this[1].__r_.__value_.__l.__data_;
    }

    std::ifstream::basic_ifstream(&__p);
    operator new();
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  if (SHIBYTE(this[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, this[1].__r_.__value_.__l.__data_, this[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = this[1];
  }

  v16 = std::string::insert(&v22, 0, "A valid manifest does not exist at path: ");
  v17 = *&v16->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x1C69087C0](v11, &__p);
  __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1C1C053B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  __cxa_free_exception(v31);
  std::unique_ptr<JsonMap>::reset[abi:ne200100](v30, 0);
  if (*(v28 + 71) < 0)
  {
    operator delete(*(v28 + 48));
  }

  if (*(v28 + 47) < 0)
  {
    operator delete(*v29);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(a1);
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a3, this);
}

void sub_1C1C055D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MPL::detail::ModelPackageImpl::validate(MPL::detail::ModelPackageImpl *this)
{
  v2 = *(this + 9);
  std::string::basic_string[abi:ne200100]<0>(__p, "fileFormatVersion");
  JsonMap::getString(v2, __p, &v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::istringstream::basic_istringstream[abi:ne200100](__p, &v17, 8);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v10 = 0uLL;
  v11 = 0;
  while (1)
  {
    v3 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v10, 0x2Eu);
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::vector<std::string>::push_back[abi:ne200100](&v12, &v10);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  if (v13 - v12 == 72)
  {
    v4 = std::stoi(v12, 0, 10);
    v5 = std::stoi(v12 + 1, 0, 10);
    v6 = std::stoi(v12 + 2, 0, 10);
    if ((v4 & 0x80000000) == 0 && (v5 & 0x80000000) == 0 && (v6 & 0x80000000) == 0)
    {
      if (v4 <= 1 && (v4 != 1 || !v5) && (v5 || !v6))
      {
        MPL::detail::ModelPackageImpl::getItemInfoEntries(this);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      MEMORY[0x1C69087C0](exception, &v10);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x1C69087C0](v9, &v10);
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  MEMORY[0x1C69087C0](v8, &v10);
  __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1C1C05C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((v54 & 1) == 0)
    {
LABEL_6:
      __p = &a32;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::istringstream::~istringstream(&a35, MEMORY[0x1E69E54E0]);
      MEMORY[0x1C6908AC0](&a53);
      if (*(v55 - 81) < 0)
      {
        operator delete(*(v55 - 104));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v54)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v53);
  goto LABEL_6;
}

void sub_1C1C05CD0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, JsonMap *a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  std::unique_ptr<JsonMap>::reset[abi:ne200100](&a21, 0);
  JUMPOUT(0x1C1C05F64);
}

void sub_1C1C05DD0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v37 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v37)
  {
LABEL_10:
    __cxa_end_catch();
    JUMPOUT(0x1C1C05F80);
  }

  __cxa_free_exception(v36);
  goto LABEL_10;
}

void sub_1C1C05E84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      JUMPOUT(0x1C1C05F58);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

void sub_1C1C05EBC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      if (a29 < 0)
      {
        operator delete(a24);
      }

      std::unique_ptr<JsonMap>::reset[abi:ne200100](&a15, 0);
      JUMPOUT(0x1C1C05F64);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v30);
  goto LABEL_6;
}

void sub_1C1C05F08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1C1C05F54);
  }

  JUMPOUT(0x1C1C05F58);
}

void sub_1C1C05FC4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C1C05F80);
}

void MPL::detail::ModelPackageImpl::~ModelPackageImpl(MPL::detail::ModelPackageImpl *this)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((*(this + 80) & 1) == 0)
  {
    if (*(this + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v4, *(this + 3), *(this + 4));
    }

    else
    {
      v4 = *(this + 1);
    }

    MPL::detail::ModelPackageImpl::generateIdentifier(v5);
    __replacement = v5[0];
    std::__fs::filesystem::path::replace_extension(&v4, &__replacement);
    std::ofstream::basic_ofstream(v5);
    JsonMap::serialize(*(this + 9), v5);
  }

  std::unique_ptr<JsonMap>::reset[abi:ne200100](this + 9, 0);
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1C1C06250(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

_BYTE *MPL::detail::ModelPackageImpl::generateIdentifier@<X0>(_BYTE *a1@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v7 = 0;
  memset(v5, 0, sizeof(v5));
  MEMORY[0x1C6909170](uu);
  uuid_unparse(uu, v5);
  result = std::string::basic_string[abi:ne200100]<0>(a1, v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
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

void sub_1C1C06440(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1C6908AC0](v1);
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1C69088F0](&v11, a1, 1);
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

void sub_1C1C065CC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1C1C0658CLL);
  }

  __cxa_rethrow();
}

void MPL::detail::ModelPackageImpl::getItemInfoEntries(MPL::detail::ModelPackageImpl *this)
{
  v2 = *(this + 9);
  std::string::basic_string[abi:ne200100]<0>(__p, "itemInfoEntries");
  hasKey = JsonMap::hasKey(v2, __p);
  v4 = hasKey;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
LABEL_3:
      v5 = *(this + 9);
      std::string::basic_string[abi:ne200100]<0>(__p, "itemInfoEntries");
      JsonMap::getObject(v5, __p);
    }
  }

  else if (hasKey)
  {
    goto LABEL_3;
  }

  operator new();
}

void sub_1C1C067E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<JsonMap>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void sub_1C1C06A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, JsonMap *a25)
{
  MEMORY[0x1C6908B60](v26, v25);
  std::unique_ptr<JsonMap>::reset[abi:ne200100](&a25, 0);
  _Unwind_Resume(a1);
}

void MPL::detail::ModelPackageImpl::getItemPath(std::string *a1@<X1>, std::string *a2@<X2>, std::__fs::filesystem::path *a3@<X8>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v6, a2);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a1);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &v6, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1C1C06B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C1C06F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v41 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v40);
  goto LABEL_10;
}

void MPL::detail::ModelPackageImpl::findItem(MPL::detail::ModelPackageImpl *a1)
{
  MPL::detail::ModelPackageImpl::getItemInfoEntries(a1);
}

{
  MPL::detail::ModelPackageImpl::getItemInfoEntry(a1);
}

void sub_1C1C07278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, JsonMap *a13, void **a14)
{
  a14 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::unique_ptr<JsonMap>::reset[abi:ne200100](&a13, 0);
  _Unwind_Resume(a1);
}

double std::__fs::filesystem::path::parent_path[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void sub_1C1C07570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  std::unique_ptr<JsonMap>::reset[abi:ne200100]((v33 - 48), 0);
  _Unwind_Resume(a1);
}

void sub_1C1C07878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void MPL::detail::ModelPackageImpl::setRootModel(MPL::detail::ModelPackageImpl *a1)
{
  v2 = *(a1 + 9);
  std::string::basic_string[abi:ne200100]<0>(__p, "rootModelIdentifier");
  hasKey = JsonMap::hasKey(v2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (!hasKey)
  {
    MPL::detail::ModelPackageImpl::addItem(a1);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x1C69087B0](exception, "A root model already exists in this package");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void MPL::detail::ModelPackageImpl::getRootModel(MPL::detail::ModelPackageImpl *this)
{
  v2 = *(this + 9);
  std::string::basic_string[abi:ne200100]<0>(&__p, "rootModelIdentifier");
  hasKey = JsonMap::hasKey(v2, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (hasKey)
  {
    v4 = *(this + 9);
    std::string::basic_string[abi:ne200100]<0>(v6, "rootModelIdentifier");
    JsonMap::getString(v4, v6, &__p);
    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    MPL::detail::ModelPackageImpl::findItem(this);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x1C69087B0](exception, "Failed to look up root model");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1C1C07C50(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1C1C07C44);
}

void MPL::ModelPackage::setRootModel(MPL::detail::ModelPackageImpl **a1, std::string *a2)
{
  v2 = *a1;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a2);
  MPL::detail::ModelPackageImpl::setRootModel(v2);
}

void sub_1C1C07D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C1C07DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1C69088E0](a1 + 2);

  return std::istream::~istream();
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1C69088E0](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_1C1C08134(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1C1C082AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

JsonMap *std::unique_ptr<JsonMap>::reset[abi:ne200100](JsonMap **a1, JsonMap *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    JsonMap::~JsonMap(result);

    JUMPOUT(0x1C6908B60);
  }

  return result;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1C69088D0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C1C08550(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1C6908AC0](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v3 = *(MEMORY[0x1E69E54D0] + 16);
  v4 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x1C69088D0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C1C08710(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1C6908AC0](v1);
  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_1C1C08794(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<MPL::detail::ModelPackageItemInfoImpl>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::__fs::filesystem::path &,std::string&,std::string&,std::string&,std::allocator<MPL::detail::ModelPackageItemInfoImpl>,0>(std::string *a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F415CCD0;
  std::allocator<MPL::detail::ModelPackageItemInfoImpl>::construct[abi:ne200100]<MPL::detail::ModelPackageItemInfoImpl,std::string const&,std::__fs::filesystem::path &,std::string&,std::string&,std::string&>(&v8, a1 + 1, a2, a3, a4, a5, a6);
  return a1;
}

void std::__shared_ptr_emplace<MPL::detail::ModelPackageItemInfoImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F415CCD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

void std::allocator<MPL::detail::ModelPackageItemInfoImpl>::construct[abi:ne200100]<MPL::detail::ModelPackageItemInfoImpl,std::string const&,std::__fs::filesystem::path &,std::string&,std::string&,std::string&>(int a1, std::string *this, __int128 *a3, uint64_t a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  MPL::detail::ModelPackageItemInfoImpl::ModelPackageItemInfoImpl(this, a3, &__p, a5, a6, a7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C1C089E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<MPL::ModelPackageItemInfo>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<MPL::detail::ModelPackageItemInfoImpl>,std::allocator<MPL::ModelPackageItemInfo>,0>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_1F415CD40;
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0u;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void std::__shared_ptr_emplace<MPL::ModelPackageItemInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F415CD40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

void std::__shared_ptr_emplace<MPL::ModelPackageItemInfo>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<MPL::detail::ModelPackageImpl>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL &,BOOL &,std::allocator<MPL::detail::ModelPackageImpl>,0>(std::string *a1, std::string *a2, unsigned __int8 *a3, std::string::value_type *a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F415CD08;
  std::allocator<MPL::detail::ModelPackageImpl>::construct[abi:ne200100]<MPL::detail::ModelPackageImpl,std::string const&,BOOL &,BOOL &>(&v4, a1 + 1, a2, a3, a4);
}

void std::__shared_ptr_emplace<MPL::detail::ModelPackageImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F415CD08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

void sub_1C1C08D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::SerialArena::AllocateAlignedWithCleanupFallback(void *a1, uint64_t a2, uint64_t *a3)
{
  google::protobuf::internal::SerialArena::AllocateNewBlock(a1, a2 + 16, a3);
  result = a1[5];
  v6 = a1[6] - 16;
  a1[5] = result + a2;
  a1[6] = v6;
  return result;
}

void *google::protobuf::internal::SerialArena::AllocateNewBlock(void *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = a1[5];
  *(v4 + 16) = a1[6];
  a1[3] = v5 - v4 + a1[3] - 24;
  result = google::protobuf::internal::AllocateMemory(a3, *(v4 + 8), a2);
  a1[4] += v7;
  *result = a1[1];
  result[1] = v7;
  result[2] = 0;
  a1[1] = result;
  a1[5] = result + 3;
  a1[6] = result + v7;
  return result;
}

void *google::protobuf::internal::AllocateMemory(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
  }

  else
  {
    v6 = 0;
    v5 = 0x2000;
    v4 = 256;
  }

  if (v5 >= 2 * a2)
  {
    v5 = 2 * a2;
  }

  if (a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (a3 >= 0xFFFFFFFFFFFFFFE8)
  {
    v11 = 3;
    v12 = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/arena.cc";
    v13 = 67;
    memset(&__p, 0, sizeof(__p));
    v8 = std::string::append(&__p, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - SerialArena::kBlockHeaderSize): ");
    google::protobuf::internal::LogFinisher::operator=(v8, &v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v7 <= a3 + 24)
  {
    v9 = a3 + 24;
  }

  else
  {
    v9 = v7;
  }

  if (v6)
  {
    return v6(v9);
  }

  else
  {
    return operator new(v9);
  }
}

void sub_1C1C08F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::SerialArena::AllocateAlignedFallback(void *a1, unint64_t a2, uint64_t *a3)
{
  google::protobuf::internal::SerialArena::AllocateNewBlock(a1, a2, a3);
  result = a1[5];
  a1[5] = result + a2;
  return result;
}

void *google::protobuf::internal::ThreadSafeArena::thread_cache(google::protobuf::internal::ThreadSafeArena *this)
{
  {
    operator new();
  }

  v1 = google::protobuf::internal::ThreadSafeArena::thread_cache(void)::thread_cache_;
  v2 = pthread_getspecific(*google::protobuf::internal::ThreadSafeArena::thread_cache(void)::thread_cache_);
  if (!v2)
  {
    v2 = operator new(0x40uLL, 0x40uLL);
    *v2 = xmmword_1C1C32EC0;
    v2[2] = 0;
    pthread_setspecific(*v1, v2);
  }

  return v2;
}

void sub_1C1C09030(_Unwind_Exception *a1)
{
  MEMORY[0x1C6908B60](v1, 0x1000C4000313F17);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ThreadSafeArena::ThreadCache>::Delete(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x1C6908B50);
  }

  return result;
}

uint64_t google::protobuf::internal::SerialArena::AllocateAlignedWithCleanup(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[5];
  v4 = a1[6];
  if (v4 - v3 < (a2 + 16))
  {
    return google::protobuf::internal::SerialArena::AllocateAlignedWithCleanupFallback(a1, a2, a3);
  }

  a1[5] = v3 + a2;
  a1[6] = v4 - 16;
  return v3;
}

uint64_t google::protobuf::internal::ThreadSafeArena::AllocateAlignedWithCleanupFallback(google::protobuf::internal::ThreadSafeArena *this, uint64_t a2, const std::type_info *a3)
{
  v4 = this;
  v5 = *(this + 1);
  if ((v5 & 2) == 0)
  {
    goto LABEL_2;
  }

  v7 = (*(**((v5 & 0xFFFFFFFFFFFFFFF8) + 32) + 16))(*((v5 & 0xFFFFFFFFFFFFFFF8) + 32), a3, a2);
  v8 = google::protobuf::internal::ThreadSafeArena::thread_cache(v7);
  if (*(v8 + 1) == *v4)
  {
    this = *(v8 + 2);
  }

  else
  {
    v11 = google::protobuf::internal::ThreadSafeArena::thread_cache(v8);
    this = atomic_load_explicit(v4 + 3, memory_order_acquire);
    if (!this || *this != v11)
    {
LABEL_2:
      v6 = google::protobuf::internal::ThreadSafeArena::thread_cache(this);
      this = google::protobuf::internal::ThreadSafeArena::GetSerialArenaFallback(v4, v6);
    }
  }

  v9 = (v4[1] & 0xFFFFFFFFFFFFFFF8);

  return google::protobuf::internal::SerialArena::AllocateAlignedWithCleanup(this, a2, v9);
}

char *google::protobuf::internal::ThreadSafeArena::GetSerialArenaFallback(atomic_ullong *this, void *a2)
{
  v3 = this;
  v4 = this + 2;
  explicit = atomic_load_explicit(this + 2, memory_order_acquire);
  if (explicit)
  {
    while (*explicit != a2)
    {
      explicit = *(explicit + 2);
      if (!explicit)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    this = google::protobuf::internal::AllocateMemory((this[1] & 0xFFFFFFFFFFFFFFF8), 0, 0x38uLL);
    *this = 0;
    this[1] = v6;
    this[2] = 0;
    this[3] = a2;
    explicit = (this + 3);
    this[6] = 0;
    this[7] = v6;
    this[4] = this;
    this[8] = (this + 10);
    this[9] = this + (v6 & 0xFFFFFFFFFFFFFFF8);
    v7 = v3[2];
    this[5] = v7;
    v8 = v7;
    atomic_compare_exchange_strong_explicit(v4, &v8, (this + 3), memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      v9 = v8;
      do
      {
        this[5] = v8;
        atomic_compare_exchange_strong_explicit(v3 + 2, &v9, explicit, memory_order_release, memory_order_relaxed);
        v10 = v9 == v8;
        v8 = v9;
      }

      while (!v10);
    }
  }

  v11 = google::protobuf::internal::ThreadSafeArena::thread_cache(this);
  *(v11 + 2) = explicit;
  v12 = *v3;
  google::protobuf::internal::ThreadSafeArena::thread_cache(v11)[1] = v12;
  atomic_store(explicit, v3 + 3);
  return explicit;
}

google::protobuf::internal::ThreadSafeArena *google::protobuf::internal::ThreadSafeArena::AddCleanup(atomic_ullong *this, void *a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ThreadSafeArena::thread_cache(this);
  if (*(v6 + 1) == *this)
  {
    result = *(v6 + 2);
  }

  else
  {
    v10 = google::protobuf::internal::ThreadSafeArena::thread_cache(v6);
    result = atomic_load_explicit(this + 3, memory_order_acquire);
    if (!result || *result != v10)
    {
      v11 = google::protobuf::internal::ThreadSafeArena::thread_cache(result);
      result = google::protobuf::internal::ThreadSafeArena::GetSerialArenaFallback(this, v11);
    }
  }

  v8 = *(result + 6);
  if ((v8 - *(result + 5)) <= 0xF)
  {
    result = google::protobuf::internal::SerialArena::AllocateAlignedWithCleanupFallback(result, 0, (this[1] & 0xFFFFFFFFFFFFFFF8));
  }

  else
  {
    v9 = (v8 - 16);
    *(result + 6) = v8 - 16;
  }

  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t google::protobuf::internal::ThreadSafeArena::AllocateAlignedFallback(google::protobuf::internal::ThreadSafeArena *this, unint64_t a2, const std::type_info *a3)
{
  v4 = this;
  v5 = *(this + 1);
  if ((v5 & 2) == 0)
  {
    goto LABEL_2;
  }

  v7 = (*(**((v5 & 0xFFFFFFFFFFFFFFF8) + 32) + 16))(*((v5 & 0xFFFFFFFFFFFFFFF8) + 32), a3, a2);
  v8 = google::protobuf::internal::ThreadSafeArena::thread_cache(v7);
  if (*(v8 + 1) == *v4)
  {
    this = *(v8 + 2);
  }

  else
  {
    v12 = google::protobuf::internal::ThreadSafeArena::thread_cache(v8);
    this = atomic_load_explicit(v4 + 3, memory_order_acquire);
    if (!this || *this != v12)
    {
LABEL_2:
      v6 = google::protobuf::internal::ThreadSafeArena::thread_cache(this);
      this = google::protobuf::internal::ThreadSafeArena::GetSerialArenaFallback(v4, v6);
    }
  }

  v9 = *(this + 5);
  if (*(this + 6) - v9 < a2)
  {
    v11 = (v4[1] & 0xFFFFFFFFFFFFFFF8);

    return google::protobuf::internal::SerialArena::AllocateAlignedFallback(this, a2, v11);
  }

  else
  {
    *(this + 5) = v9 + a2;
    return v9;
  }
}

uint64_t google::protobuf::Arena::AllocateAlignedWithHook(atomic_ullong *this, unint64_t a2, const std::type_info *a3)
{
  if ((this[1] & 2) == 0)
  {
    v6 = google::protobuf::internal::ThreadSafeArena::thread_cache(this);
    if (*(v6 + 1) == *this)
    {
      explicit = *(v6 + 2);
      goto LABEL_4;
    }

    v10 = google::protobuf::internal::ThreadSafeArena::thread_cache(v6);
    explicit = atomic_load_explicit(this + 3, memory_order_acquire);
    if (explicit && *explicit == v10)
    {
LABEL_4:
      v8 = explicit[5];
      if (explicit[6] - v8 < a2)
      {
        v11 = (this[1] & 0xFFFFFFFFFFFFFFF8);

        return google::protobuf::internal::SerialArena::AllocateAlignedFallback(explicit, a2, v11);
      }

      else
      {
        explicit[5] = v8 + a2;
        return v8;
      }
    }
  }

  return google::protobuf::internal::ThreadSafeArena::AllocateAlignedFallback(this, a2, a3);
}

uint64_t google::protobuf::Arena::AllocateAlignedWithCleanup(atomic_ullong *this, uint64_t a2, const std::type_info *a3)
{
  if ((this[1] & 2) == 0)
  {
    v6 = google::protobuf::internal::ThreadSafeArena::thread_cache(this);
    if (*(v6 + 1) == *this)
    {
      explicit = *(v6 + 2);
      goto LABEL_4;
    }

    v10 = google::protobuf::internal::ThreadSafeArena::thread_cache(v6);
    explicit = atomic_load_explicit(this + 3, memory_order_acquire);
    if (explicit && *explicit == v10)
    {
LABEL_4:
      v8 = (this[1] & 0xFFFFFFFFFFFFFFF8);

      return google::protobuf::internal::SerialArena::AllocateAlignedWithCleanup(explicit, a2, v8);
    }
  }

  return google::protobuf::internal::ThreadSafeArena::AllocateAlignedWithCleanupFallback(this, a2, a3);
}

void google::protobuf::stringpiece_internal::StringPiece::LogFatalSizeTooBig(google::protobuf::stringpiece_internal::StringPiece *this, unint64_t a2, const char *a3)
{
  LODWORD(v6.__r_.__value_.__l.__data_) = 3;
  v6.__r_.__value_.__l.__size_ = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/stubs/stringpiece.cc";
  LODWORD(v6.__r_.__value_.__r.__words[2]) = 50;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "size too big: ");
  google::protobuf::internal::LogMessage::operator<<(&v6, this, v4);
  std::string::append(&__p, " details: ");
  v5 = std::string::append(&__p, "string length exceeds max size");
  google::protobuf::internal::LogFinisher::operator=(v5, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C1C0965C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1C6908940](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1C6908950](v13);
  return a1;
}

void sub_1C1C09800(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1C6908950](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1C1C097E0);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1C1C09A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1C6908A70](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1C1C09AE4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v2 + a2;
  v5 = *(this + 2);
  if (v3 < v2 + a2)
  {
    v7 = *this;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      AlignedWithHook = google::protobuf::Arena::AllocateAlignedWithHook(*this, (v10 + 15) & 0x7FFFFFFF8, MEMORY[0x1E69E5450]);
    }

    else
    {
      AlignedWithHook = operator new(v10 + 8);
    }

    *(this + 2) = AlignedWithHook;
    *(this + 3) = v9;
    if (v5 && (v12 = *v5, v12 >= 1))
    {
      memcpy(AlignedWithHook + 2, v5 + 2, 8 * v12);
      AlignedWithHook = *(this + 2);
      *AlignedWithHook = *v5;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *AlignedWithHook = 0;
      if (!v7)
      {
LABEL_15:
        operator delete(v5);
        AlignedWithHook = *(this + 2);
      }
    }

    v2 = *(this + 2);
    v5 = AlignedWithHook;
  }

  return &v5[2 * v2 + 2];
}

void google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(google::protobuf::internal::RepeatedPtrFieldBase *this)
{
  v2 = *(this + 2);
  v3 = v2 + 2;
  v4 = *v2;
  if (v4 >= 1)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
      --v4;
    }

    while (v4);
    v2 = *(this + 2);
  }

  operator delete(v2);
  *(this + 2) = 0;
}

void *google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper(google::protobuf::internal::RepeatedPtrFieldBase *this, void *a2)
{
  v4 = *(this + 2);
  if (!v4 || (v5 = *v4, *v4 == *(this + 3)))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, 1);
    v4 = *(this + 2);
    v5 = *v4;
  }

  *v4 = v5 + 1;
  v6 = *(this + 2);
  *(this + 2) = v6 + 1;
  *&v4[2 * v6 + 2] = a2;
  return a2;
}

BOOL google::protobuf::internal::IsStructurallyValidUTF8(google::protobuf::internal *this, const char *a2)
{
  if (!a2)
  {
    v22 = 0;
    return v22 == a2;
  }

  v2 = (this + a2);
  if (a2 >= 7)
  {
    v3 = (v2 - 7);
  }

  else
  {
    v3 = this;
  }

  v4 = this;
  v5 = this & 7;
  if ((this & 7) != 0 && a2 >= 1)
  {
    v6 = this + 1;
    v4 = this;
    while ((*v4 & 0x80000000) == 0)
    {
      v4 = (v4 + 1);
      v5 = v6 & 7;
      if ((v6 & 7) != 0)
      {
        ++v6;
        if (v4 < v2)
        {
          continue;
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
LABEL_11:
    if (!v5 && v4 < v3)
    {
      do
      {
        if (((*(v4 + 1) | *v4) & 0x80808080) != 0)
        {
          break;
        }

        v4 = (v4 + 8);
      }

      while (v4 < v3);
    }
  }

  if (v4 < v2)
  {
    v7 = ((this + a2) - v4);
    while ((*v4 & 0x80000000) == 0)
    {
      v4 = (v4 + 1);
      if (!--v7)
      {
        LODWORD(v4) = this + a2;
        break;
      }
    }
  }

  v8 = v4 - this;
  if (a2 == v4 - this)
  {
    goto LABEL_61;
  }

  v9 = this + v8;
  v10 = a2 - v8;
  v11 = &v9[v10];
  if (v10 >= 7)
  {
    v12 = &v9[v10 - 7];
  }

  else
  {
    v12 = v9;
  }

  v13 = v9;
  while (1)
  {
    v14 = v13 & 7;
    if ((v13 & 7) != 0 && v13 < v11)
    {
      v15 = v13 + 1;
      while (!google::protobuf::internal::utf8acceptnonsurrogates_fast[*v13])
      {
        v13 = (v13 + 1);
        v14 = v15 & 7;
        if ((v15 & 7) != 0)
        {
          ++v15;
          if (v13 < v11)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

LABEL_39:
      v16 = v13;
      goto LABEL_40;
    }

LABEL_31:
    if (v14 || v13 >= v12)
    {
      goto LABEL_39;
    }

    v16 = v13;
    while (1)
    {
      v17 = v16[1];
      if ((((*v16 - 538976288) | (v17 - 538976288) | *v16 | v17) & 0x80808080) != 0)
      {
        if (google::protobuf::internal::utf8acceptnonsurrogates_fast[BYTE1(*v16)] | google::protobuf::internal::utf8acceptnonsurrogates_fast[*v16] | google::protobuf::internal::utf8acceptnonsurrogates_fast[BYTE2(*v16)] | google::protobuf::internal::utf8acceptnonsurrogates_fast[*v16 >> 24])
        {
          goto LABEL_40;
        }

        if (google::protobuf::internal::utf8acceptnonsurrogates_fast[BYTE1(v17)] | google::protobuf::internal::utf8acceptnonsurrogates_fast[v17] | google::protobuf::internal::utf8acceptnonsurrogates_fast[BYTE2(v17)] | google::protobuf::internal::utf8acceptnonsurrogates_fast[v17 >> 24])
        {
          break;
        }
      }

      v16 += 2;
      if (v16 >= v12)
      {
        goto LABEL_40;
      }
    }

    ++v16;
LABEL_40:
    if (v16 >= v11)
    {
      break;
    }

    v18 = ((this + a2) - v16);
    v19 = (v16 - 1);
    v20 = &google::protobuf::internal::utf8acceptnonsurrogates;
    v13 = v16;
    while (1)
    {
      v21 = v20[*v13];
      if (v21 > 0xEF)
      {
        break;
      }

      v13 = (v13 + 1);
      v20 = &google::protobuf::internal::utf8acceptnonsurrogates + 256 * v21;
      v19 = (v19 + 1);
      if (!--v18)
      {
        goto LABEL_53;
      }
    }

    if (v20 - &google::protobuf::internal::utf8acceptnonsurrogates >= 0x100)
    {
      do
      {
        v13 = v19;
        if (v19 <= v9)
        {
          break;
        }

        v19 = (v19 - 1);
      }

      while ((*v13 & 0xC0) == 0x80);
    }

    if (v21 != 253)
    {
      v25 = v13 - v9;
      goto LABEL_60;
    }
  }

  LODWORD(v11) = v16;
  v20 = &google::protobuf::internal::utf8acceptnonsurrogates;
LABEL_53:
  if (v20 - &google::protobuf::internal::utf8acceptnonsurrogates >= 0x100)
  {
    if (v16 > v2)
    {
      v2 = v16;
    }

    v23 = v2 - 1;
    do
    {
      v11 = v23;
      if (v23 <= v9)
      {
        break;
      }

      --v23;
    }

    while ((*v11 & 0xC0) == 0x80);
  }

  v25 = v11 - v9;
LABEL_60:
  LODWORD(v4) = v4 + v25;
LABEL_61:
  v22 = v4 - this;
  return v22 == a2;
}

void google::protobuf::io::CodedInputStream::~CodedInputStream(google::protobuf::io::CodedInputStream *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (*(this + 7) + *(this + 11) + *(this + 2) - *this >= 1)
    {
      (*(*v2 + 24))(v2);
      v3 = *(this + 6) - *(this + 11) + *this - *(this + 2);
      *(this + 1) = *this;
      *(this + 11) = 0;
      *(this + 3) = v3;
    }
  }
}

uint64_t google::protobuf::io::CodedInputStream::PushLimit(google::protobuf::io::CodedInputStream *this, unsigned int a2)
{
  result = *(this + 10);
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(this + 6);
    v5 = *(this + 1);
    v6 = *(this + 11);
    v7 = v4 - v6 + *this - v5;
    if ((v7 ^ 0x7FFFFFFFu) >= a2 && result - v7 > a2)
    {
      v9 = v7 + a2;
      *(this + 10) = v9;
      v10 = v5 + v6;
      *(this + 1) = v10;
      v11 = *(this + 12);
      if (v11 >= v9)
      {
        v11 = v9;
      }

      v12 = __OFSUB__(v4, v11);
      v13 = v4 - v11;
      if ((v13 < 0) ^ v12 | (v13 == 0))
      {
        v13 = 0;
      }

      else
      {
        *(this + 1) = v10 - v13;
      }

      *(this + 11) = v13;
    }
  }

  return result;
}

uint64_t google::protobuf::io::CodedInputStream::PopLimit(uint64_t this, int a2)
{
  *(this + 40) = a2;
  v2 = *(this + 48);
  v3 = *(this + 8) + *(this + 44);
  *(this + 8) = v3;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(this + 24);
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if ((v7 < 0) ^ v6 | (v7 == 0))
  {
    v7 = 0;
  }

  else
  {
    *(this + 8) = v3 - v7;
  }

  *(this + 44) = v7;
  *(this + 36) = 0;
  return this;
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarint64Fallback(char **this)
{
  v2 = *this;
  v3 = this[1];
  if ((v3 - *this) <= 9 && (v3 <= v2 || *(v3 - 1) < 0))
  {
    v7 = 0;
    v5 = 0;
    while (1)
    {
      v8 = v7;
      if (v7 == 10)
      {
        break;
      }

      while (1)
      {
        v9 = *this;
        if (*this != this[1])
        {
          break;
        }

        if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
        {
          return 0;
        }
      }

      v10 = *v9;
      v5 |= (*v9 & 0x7F) << (7 * v8);
      *this = v9 + 1;
      v7 = v8 + 1;
      if ((v10 & 0x80) == 0)
      {
        return v5;
      }
    }

    return 0;
  }

  else
  {
    v4 = v2[1];
    if (v4 < 0)
    {
      v11 = v2[2];
      if (v11 < 0)
      {
        v12 = v2[3];
        if (v12 < 0)
        {
          v16 = v2[4];
          if (v16 < 0)
          {
            v20 = v2[5];
            if (v20 < 0)
            {
              v24 = v2[6];
              if (v24 < 0)
              {
                v28 = v2[7];
                if (v28 < 0)
                {
                  v32 = v2[8];
                  if (v32 < 0)
                  {
                    v36 = v2[9];
                    if (v36 < 0)
                    {
                      return 0;
                    }

                    v37 = 0;
                    v5 = v36 << 63;
                    v6 = 10;
                    v38 = *this;
                    do
                    {
                      v39 = *v38++;
                      v5 += (v39 - 128) << v37;
                      v37 += 7;
                    }

                    while (v37 != 63);
                  }

                  else
                  {
                    v33 = 0;
                    v5 = v32 << 56;
                    v6 = 9;
                    v34 = *this;
                    do
                    {
                      v35 = *v34++;
                      v5 += (v35 - 128) << v33;
                      v33 += 7;
                    }

                    while (v33 != 56);
                  }
                }

                else
                {
                  v29 = 0;
                  v5 = v28 << 49;
                  v6 = 8;
                  v30 = *this;
                  do
                  {
                    v31 = *v30++;
                    v5 += (v31 - 128) << v29;
                    v29 += 7;
                  }

                  while (v29 != 49);
                }
              }

              else
              {
                v25 = 0;
                v5 = v24 << 42;
                v6 = 7;
                v26 = *this;
                do
                {
                  v27 = *v26++;
                  v5 += (v27 - 128) << v25;
                  v25 += 7;
                }

                while (v25 != 42);
              }
            }

            else
            {
              v21 = 0;
              v5 = v20 << 35;
              v6 = 6;
              v22 = *this;
              do
              {
                v23 = *v22++;
                v5 += (v23 - 128) << v21;
                v21 += 7;
              }

              while (v21 != 35);
            }
          }

          else
          {
            v17 = 0;
            v5 = v16 << 28;
            v6 = 5;
            v18 = *this;
            do
            {
              v19 = *v18++;
              v5 += (v19 - 128) << v17;
              v17 += 7;
            }

            while (v17 != 28);
          }
        }

        else
        {
          v13 = 0;
          v5 = v12 << 21;
          v6 = 4;
          v14 = *this;
          do
          {
            v15 = *v14++;
            v5 += (v15 - 128) << v13;
            v13 += 7;
          }

          while (v13 != 21);
        }
      }

      else
      {
        v5 = (v2[1] << 7) + (v11 << 14) + *v2 - 16512;
        v6 = 3;
      }
    }

    else
    {
      v5 = *v2 + (v4 << 7) - 128;
      v6 = 2;
    }

    *this = &v2[v6];
  }

  return v5;
}

uint64_t google::protobuf::io::CodedInputStream::Refresh(google::protobuf::io::CodedInputStream *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(this + 11);
  if (v2 > 0 || *(this + 7) > 0 || *(this + 6) == *(this + 10))
  {
    v3 = *(this + 6) - v2;
    v4 = *(this + 12);
    if (v3 >= v4 && v4 != *(this + 10))
    {
      LODWORD(v26[0]) = 2;
      v26[1] = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/io/coded_stream.cc";
      v27 = 193;
      memset(&__p, 0, sizeof(__p));
      std::string::append(&__p, "A protocol message was rejected because it was too big (more than ");
      v6 = *(this + 12);
      __s = &v31;
      if ((v6 & 0x80000000) != 0)
      {
        v7 = (&v31 + 1);
        LOBYTE(v31) = 45;
        v6 = -v6;
      }

      else
      {
        v7 = &v31;
      }

      v30 = (google::protobuf::FastUInt32ToBufferLeft(v6, v7, v5) - &v31);
      std::string::append(&__p, __s, v30);
      v8 = std::string::append(&__p, " bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in third_party/protobuf/src/google/protobuf/io/coded_stream.h.");
      google::protobuf::internal::LogFinisher::operator=(v8, v26);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v9 = 0;
  }

  else
  {
    v26[0] = 0;
    v25 = 0;
    v12 = *(this + 2);
    do
    {
      v9 = (*(*v12 + 16))(v12, v26, &v25);
      if (!v9)
      {
        *this = 0;
        *(this + 1) = 0;
        goto LABEL_12;
      }

      v13 = v25;
    }

    while (!v25);
    v14 = v26[0] + v25;
    *this = v26[0];
    *(this + 1) = v14;
    if (v13 < 0)
    {
      LODWORD(__s) = 3;
      v30 = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/io/coded_stream.cc";
      v31 = 638;
      memset(&v32, 0, sizeof(v32));
      v15 = std::string::append(&v32, "CHECK failed: (buffer_size) >= (0): ");
      google::protobuf::internal::LogFinisher::operator=(v15, &__s);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      v13 = v25;
    }

    v16 = *(this + 6);
    v17 = v16 - (v13 ^ 0x7FFFFFFF);
    if (v16 <= (v13 ^ 0x7FFFFFFF))
    {
      v19 = v13 + v16;
      v18 = *(this + 1);
    }

    else
    {
      *(this + 7) = v17;
      v18 = *(this + 1) - v17;
      *(this + 1) = v18;
      v19 = 0x7FFFFFFF;
    }

    *(this + 6) = v19;
    v20 = *(this + 10);
    v21 = v18 + *(this + 11);
    *(this + 1) = v21;
    v22 = *(this + 12);
    if (v22 >= v20)
    {
      v22 = v20;
    }

    v23 = __OFSUB__(v19, v22);
    v24 = v19 - v22;
    if ((v24 < 0) ^ v23 | (v24 == 0))
    {
      v24 = 0;
    }

    else
    {
      *(this + 1) = v21 - v24;
    }

    *(this + 11) = v24;
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1C1C0A620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::CodedInputStream::BytesUntilLimit(google::protobuf::io::CodedInputStream *this)
{
  v1 = *(this + 10);
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - *(this + 6) + *(this + 11) + *(this + 2) - *this);
  }
}

uint64_t google::protobuf::io::CodedInputStream::SkipFallback(google::protobuf::io::CodedInputStream *this, int a2, int a3)
{
  if (*(this + 11) < 1)
  {
    v5 = (a2 - a3);
    *this = 0;
    *(this + 1) = 0;
    v6 = *(this + 12);
    if (v6 >= *(this + 10))
    {
      v6 = *(this + 10);
    }

    v7 = v6 - *(this + 6);
    if (v7 >= v5)
    {
      if ((*(**(this + 2) + 32))(*(this + 2), v5))
      {
        *(this + 6) += v5;
        return 1;
      }

      else
      {
        v8 = (*(**(this + 2) + 40))(*(this + 2));
        result = 0;
        *(this + 6) = v8;
      }
    }

    else
    {
      if (v7 >= 1)
      {
        *(this + 6) = v6;
        (*(**(this + 2) + 32))(*(this + 2));
      }

      return 0;
    }
  }

  else
  {
    result = 0;
    *this += a3;
  }

  return result;
}

uint64_t google::protobuf::io::CodedInputStream::GetDirectBufferPointer(google::protobuf::io::CodedInputStream *this, const void **a2, int *a3)
{
  v6 = *this;
  if (*(this + 2) == *this)
  {
    result = google::protobuf::io::CodedInputStream::Refresh(this);
    if (!result)
    {
      return result;
    }

    v6 = *this;
  }

  *a2 = v6;
  *a3 = *(this + 2) - *this;
  return 1;
}

BOOL google::protobuf::io::CodedInputStream::ReadRaw(google::protobuf::io::CodedInputStream *this, char *__dst, int a3)
{
  while (1)
  {
    v6 = a3;
    v7 = *this;
    v8 = *(this + 1) - *this;
    v9 = __OFSUB__(a3, v8);
    a3 -= v8;
    if ((a3 < 0) ^ v9 | (a3 == 0))
    {
      break;
    }

    memcpy(__dst, v7, v8);
    __dst += v8;
    *this += v8;
    if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
    {
      return v6 <= v8;
    }
  }

  memcpy(__dst, v7, v6);
  *this += v6;
  return v6 <= v8;
}

uint64_t google::protobuf::io::CodedInputStream::ReadString(uint64_t a1, std::string *this, std::string::size_type __requested_capacity)
{
  if ((__requested_capacity & 0x80000000) != 0)
  {
    return 0;
  }

  LODWORD(v3) = __requested_capacity;
  v4 = this;
  if (*(a1 + 8) - *a1 >= __requested_capacity)
  {
    v3 = __requested_capacity;
    std::string::resize(this, __requested_capacity, 0);
    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = v4->__r_.__value_.__r.__words[0];
    }

    memcpy(v4, *a1, v3);
  }

  else
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      if (this->__r_.__value_.__l.__size_)
      {
        *this->__r_.__value_.__l.__data_ = 0;
        this->__r_.__value_.__l.__size_ = 0;
      }
    }

    else if (*(&this->__r_.__value_.__s + 23))
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }

    v7 = *(a1 + 48);
    if (v7 >= *(a1 + 40))
    {
      v7 = *(a1 + 40);
    }

    if (v7 != 0x7FFFFFFF)
    {
      v8 = v7 - *(a1 + 24) + *(a1 + 44) + *(a1 + 8) - *a1;
      v9 = v8 < __requested_capacity || __requested_capacity == 0;
      if (!v9 && v8 >= 1)
      {
        std::string::reserve(this, __requested_capacity);
      }
    }

    while (1)
    {
      v11 = *a1;
      v12 = *(a1 + 8) - *a1;
      v13 = v3 - v12;
      if (v3 <= v12)
      {
        break;
      }

      if (v12)
      {
        v3 = v12;
        std::string::append(v4, v11, v12);
        v11 = *a1;
      }

      else
      {
        v3 = 0;
      }

      *a1 = &v11[v3];
      LODWORD(v3) = v13;
      if ((google::protobuf::io::CodedInputStream::Refresh(a1) & 1) == 0)
      {
        return 0;
      }
    }

    v3 = v3;
    std::string::append(v4, v11, v3);
  }

  *a1 += v3;
  return 1;
}

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(unsigned int **this, unsigned int *a2)
{
  v3 = *this;
  if ((*(this + 2) - *this) < 4)
  {
    v3 = __dst;
    result = google::protobuf::io::CodedInputStream::ReadRaw(this, __dst, 4);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *this = v3 + 1;
  }

  *a2 = *v3;
  return 1;
}

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(unint64_t **this, unint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *this;
  if ((*(this + 2) - *this) >= 8)
  {
    *this = v3 + 1;
LABEL_4:
    *a2 = *v3;
    result = 1;
    goto LABEL_5;
  }

  v3 = v6;
  result = google::protobuf::io::CodedInputStream::ReadRaw(this, v6, 8);
  if (result)
  {
    goto LABEL_4;
  }

LABEL_5:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(char **this)
{
  v2 = *this;
  v1 = this[1];
  if ((v1 - *this) > 9 || v1 > v2 && (*(v1 - 1) & 0x80000000) == 0)
  {
    v3 = v2[1];
    if (v3 < 0)
    {
      v8 = v2[2];
      if (v8 < 0)
      {
        v9 = v2[3];
        if (v9 < 0)
        {
          v13 = v2[4];
          if (v13 < 0)
          {
            v17 = v2[5];
            if (v17 < 0)
            {
              v21 = v2[6];
              if (v21 < 0)
              {
                v25 = v2[7];
                if (v25 < 0)
                {
                  v29 = v2[8];
                  if (v29 < 0)
                  {
                    v33 = v2[9];
                    if (v33 < 0)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v34 = 0;
                    v4 = v33 << 63;
                    v5 = 10;
                    v35 = *this;
                    do
                    {
                      v36 = *v35++;
                      v4 += (v36 - 128) << v34;
                      v34 += 7;
                    }

                    while (v34 != 63);
                  }

                  else
                  {
                    v30 = 0;
                    v4 = v29 << 56;
                    v5 = 9;
                    v31 = *this;
                    do
                    {
                      v32 = *v31++;
                      v4 += (v32 - 128) << v30;
                      v30 += 7;
                    }

                    while (v30 != 56);
                  }
                }

                else
                {
                  v26 = 0;
                  v4 = v25 << 49;
                  v5 = 8;
                  v27 = *this;
                  do
                  {
                    v28 = *v27++;
                    v4 += (v28 - 128) << v26;
                    v26 += 7;
                  }

                  while (v26 != 49);
                }
              }

              else
              {
                v22 = 0;
                v4 = v21 << 42;
                v5 = 7;
                v23 = *this;
                do
                {
                  v24 = *v23++;
                  v4 += (v24 - 128) << v22;
                  v22 += 7;
                }

                while (v22 != 42);
              }
            }

            else
            {
              v18 = 0;
              v4 = v17 << 35;
              v5 = 6;
              v19 = *this;
              do
              {
                v20 = *v19++;
                v4 += (v20 - 128) << v18;
                v18 += 7;
              }

              while (v18 != 35);
            }
          }

          else
          {
            v14 = 0;
            v4 = v13 << 28;
            v5 = 5;
            v15 = *this;
            do
            {
              v16 = *v15++;
              v4 += (v16 - 128) << v14;
              v14 += 7;
            }

            while (v14 != 28);
          }
        }

        else
        {
          v10 = 0;
          v4 = v9 << 21;
          v5 = 4;
          v11 = *this;
          do
          {
            v12 = *v11++;
            v4 += (v12 - 128) << v10;
            v10 += 7;
          }

          while (v10 != 21);
        }
      }

      else
      {
        v4 = (v2[1] << 7) + (v8 << 14) + *v2 - 16512;
        v5 = 3;
      }
    }

    else
    {
      v4 = *v2 + (v3 << 7) - 128;
      v5 = 2;
    }

    if (!(v4 >> 31))
    {
      *this = &v2[v5];
      return v4;
    }

    return 0xFFFFFFFFLL;
  }

  Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
  if ((v7 & (Varint64Fallback >> 31 == 0)) != 0)
  {
    return Varint64Fallback;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t google::protobuf::io::CodedInputStream::ReadTagFallback(google::protobuf::io::CodedInputStream *this, int a2)
{
  v3 = *this;
  v4 = *(this + 1);
  v5 = v4 - *this;
  if (v5 <= 9)
  {
    if (v5 < 1)
    {
      if (!v5)
      {
        v10 = *(this + 11);
        v11 = *(this + 6);
        if ((v10 > 0 || v11 == *(this + 10)) && v11 - v10 < *(this + 12))
        {
          goto LABEL_26;
        }
      }
    }

    else if ((*(v4 - 1) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    if (v3 != v4)
    {
LABEL_12:
      if (v3 >= v4 || (result = *v3, (result & 0x80000000) != 0))
      {
        result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
        if ((v9 & 1) == 0)
        {
          return 0;
        }

        return result;
      }

LABEL_14:
      *this = v3 + 1;
      return result;
    }

    if (google::protobuf::io::CodedInputStream::Refresh(this))
    {
      v3 = *this;
      v4 = *(this + 1);
      goto LABEL_12;
    }

    v12 = *(this + 12);
    if (*(this + 6) - *(this + 11) >= v12)
    {
      result = 0;
      v13 = *(this + 10) == v12;
      goto LABEL_28;
    }

LABEL_26:
    result = 0;
    v13 = 1;
LABEL_28:
    *(this + 36) = v13;
    return result;
  }

LABEL_4:
  if (!a2)
  {
    result = 0;
    goto LABEL_14;
  }

  v6 = a2 + (v3[1] << 7) - 128;
  if (v3[1] < 0)
  {
    v6 = v6 + (v3[2] << 14) - 0x4000;
    if (v3[2] < 0)
    {
      v6 = v6 + (v3[3] << 21) - 0x200000;
      if (v3[3] < 0)
      {
        v14 = v3[4];
        v6 = (v6 + (v14 << 28) - 0x10000000);
        if (v14 < 0)
        {
          v7 = v3 + 6;
          v15 = 5;
          while (*(v7 - 1) < 0)
          {
            result = 0;
            ++v7;
            if (!--v15)
            {
              return result;
            }
          }
        }

        else
        {
          v7 = v3 + 5;
        }
      }

      else
      {
        v7 = v3 + 4;
      }
    }

    else
    {
      v7 = v3 + 3;
    }
  }

  else
  {
    v7 = v3 + 2;
  }

  *this = v7;
  return v6;
}

unint64_t google::protobuf::io::EpsCopyOutputStream::Flush(google::protobuf::io::EpsCopyOutputStream *this, unsigned __int8 *a2)
{
  v4 = (this + 16);
  v6 = this + 32;
  v5 = *this;
  while (1)
  {
    v7 = *(this + 1);
    if (!v7)
    {
      result = v5 - a2 + 16;
      *(this + 1) = a2;
      return result;
    }

    v8 = a2 - v5;
    if (a2 <= v5)
    {
      memcpy(v7, v4, a2 - v4);
      v12 = *this;
      *(this + 1) += a2 - v4;
      return v12 - a2;
    }

    if (!*(this + 6))
    {
      break;
    }

    memcpy(v7, v4, v5 - v4);
    v15 = 0;
    do
    {
      v14 = 0;
      if (((*(**(this + 6) + 16))(*(this + 6), &v14, &v15) & 1) == 0)
      {
        *(this + 56) = 1;
        *this = v6;
        v5 = v6;
        goto LABEL_13;
      }

      v9 = v15;
    }

    while (!v15);
    v10 = v14;
    v11 = *this;
    if (v15 >= 17)
    {
      *v14 = *v11;
      v5 = v10 + v9 - 16;
      *this = v5;
      *(this + 1) = 0;
      goto LABEL_10;
    }

    *v4 = *v11;
    v5 = v4 + v9;
    *this = v5;
    *(this + 1) = v10;
LABEL_13:
    v10 = v4;
LABEL_10:
    a2 = v10 + v8;
    if (*(this + 56))
    {
      return 0;
    }
  }

  result = 0;
  *(this + 56) = 1;
  *this = v6;
  return result;
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::Trim(google::protobuf::io::EpsCopyOutputStream *this, unsigned __int8 *a2)
{
  if ((*(this + 56) & 1) == 0)
  {
    v3 = google::protobuf::io::EpsCopyOutputStream::Flush(this, a2);
    if (v3)
    {
      (*(**(this + 6) + 24))(*(this + 6), v3);
    }

    a2 = this + 16;
    *this = this + 16;
    *(this + 1) = this + 16;
  }

  return a2;
}

_OWORD *google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(google::protobuf::io::EpsCopyOutputStream *this, unsigned __int8 *a2)
{
  LODWORD(v2) = a2;
  v4 = (this + 16);
  v5 = this + 32;
  while ((*(this + 56) & 1) == 0)
  {
    v6 = *this;
    if (*(this + 6))
    {
      v7 = *(this + 1);
      if (!v7)
      {
        *v4 = *v6;
        *(this + 1) = v6;
        goto LABEL_11;
      }

      memcpy(v7, v4, v6 - v4);
      v14 = 0;
      while (1)
      {
        v13 = 0;
        if (((*(**(this + 6) + 16))(*(this + 6), &v13, &v14) & 1) == 0)
        {
          break;
        }

        v8 = v14;
        if (v14)
        {
          v9 = v13;
          v10 = *this;
          if (v14 >= 17)
          {
            *v13 = *v10;
            v11 = v9 + v8 - 16;
            *this = v11;
            *(this + 1) = 0;
            goto LABEL_13;
          }

          *v4 = *v10;
          v11 = v4 + v8;
          *this = v11;
          *(this + 1) = v9;
          goto LABEL_12;
        }
      }
    }

    *(this + 56) = 1;
LABEL_11:
    *this = v5;
    v11 = v5;
LABEL_12:
    v9 = v4;
LABEL_13:
    v2 = v9 + v2 - v6;
    if (v2 < v11)
    {
      return v2;
    }
  }

  return v4;
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(google::protobuf::io::EpsCopyOutputStream *this, char *__src, int a3, unsigned __int8 *__dst)
{
  v4 = __dst;
  v5 = a3;
  v7 = *this - __dst + 16;
  if (v7 < a3)
  {
    do
    {
      memcpy(v4, __src, v7);
      v5 -= v7;
      __src += v7;
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, &v4[v7]);
      v7 = *this - v4 + 16;
    }

    while (v5 > v7);
  }

  memcpy(v4, __src, v5);
  return &v4[v5];
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(google::protobuf::io::EpsCopyOutputStream *this, unsigned int a2, void *a3, unsigned __int8 *a4)
{
  if (*this <= a4)
  {
    a4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
  }

  if (*(a3 + 23) >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  *a4 = (8 * a2) | 2;
  v8 = 1;
  if (a2 >= 0x10)
  {
    *a4 = (8 * a2) | 0x82;
    a4[1] = 1;
    v8 = 2;
  }

  v9 = &a4[v8];
  if (v7 >= 0x80)
  {
    v15 = v7;
    do
    {
      *v9++ = v15 | 0x80;
      v10 = v15 >> 7;
      v16 = v15 >> 14;
      v15 >>= 7;
    }

    while (v16);
  }

  else
  {
    LOBYTE(v10) = v7;
  }

  *v9 = v10;
  v11 = v9 + 1;
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (*(this + 57) == 1)
  {
    v12 = *this - v11;
    if (v12 + 16 <= v7)
    {
      v13 = google::protobuf::io::EpsCopyOutputStream::Trim(this, v11);
      if (((*(**(this + 6) + 40))(*(this + 6), a3, v7) & 1) == 0)
      {
        *(this + 56) = 1;
        v13 = this + 16;
        *this = this + 32;
      }

      return v13;
    }

    if (v12 >= v7)
    {
LABEL_15:
      memcpy(v11, a3, v7);
      return &v11[v7];
    }
  }

  else if (*this - v11 >= v7)
  {
    goto LABEL_15;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, a3, v7, v11);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(google::protobuf::io::EpsCopyOutputStream *this, char a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  if (*this <= a4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
  }

  if (*(a3 + 23) >= 0)
  {
    LODWORD(v8) = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  *v4 = (8 * a2) | 2;
  v9 = v4 + 1;
  if (v8 >= 0x80)
  {
    v15 = v8;
    do
    {
      *v9++ = v15 | 0x80;
      v10 = v15 >> 7;
      v16 = v15 >> 14;
      v15 >>= 7;
    }

    while (v16);
  }

  else
  {
    LOBYTE(v10) = v8;
  }

  *v9 = v10;
  v11 = v9 + 1;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (*this - v11 < v8)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, v12, v8, v11);
  }

  else
  {
    v13 = v8;
    memcpy(v11, v12, v8);
    return &v11[v13];
  }
}

uint64_t google::protobuf::io::CodedOutputStream::CodedOutputStream(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a1 + 16;
  *a1 = a1 + 16;
  *(a1 + 8) = a1 + 16;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 58) = 0;
  *(a1 + 64) = a1 + 16;
  *(a1 + 72) = (*(*a2 + 32))(a2);
  if (a3)
  {
    v13 = 0;
    v12 = 0;
    if ((*(*a2 + 16))(a2, &v13, &v12) && v12 != 0)
    {
      v8 = v13;
      if (v12 <= 16)
      {
        v9 = v6 + v12;
      }

      else
      {
        v9 = v13 + v12 - 16;
      }

      if (v12 <= 16)
      {
        v10 = v13;
      }

      else
      {
        v10 = 0;
      }

      if (v12 <= 16)
      {
        v8 = v6;
      }

      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 64) = v8;
    }
  }

  return a1;
}

uint64_t google::protobuf::FatalException::what(google::protobuf::FatalException *this)
{
  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

void google::protobuf::FatalException::~FatalException(std::exception *this)
{
  google::protobuf::FatalException::~FatalException(this);

  JUMPOUT(0x1C6908B60);
}

{
  this->__vftable = &unk_1F415D400;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t google::protobuf::FatalException::FatalException(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_1F415D400;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

uint64_t google::protobuf::internal::DefaultLogHandler(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = MEMORY[0x1E69E9848];
    if (*(a4 + 23) >= 0)
    {
      v5 = a4;
    }

    else
    {
      v5 = *a4;
    }

    fprintf(*MEMORY[0x1E69E9848], "[libprotobuf %s %s:%d] %s\n", google::protobuf::internal::DefaultLogHandler(google::protobuf::LogLevel,char const*,int,std::string const&)::level_names[result], a2, a3, v5);
    v6 = *v4;

    return fflush(v6);
  }

  return result;
}

uint64_t google::protobuf::internal::LogMessage::LogMessage(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t google::protobuf::internal::LogFinisher::operator=(uint64_t a1, unsigned int *a2)
{
  result = google::protobuf::internal::DefaultLogHandler(*a2, *(a2 + 1), a2[4], (a2 + 6));
  if (*a2 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    google::protobuf::FatalException::FatalException(exception, *(a2 + 1), a2[4], (a2 + 6));
  }

  return result;
}

void google::protobuf::internal::LogMessage::~LogMessage(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, google::protobuf *this, char *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = google::protobuf::FastUInt64ToBufferLeft(this, v7, a3) - v7;
  std::string::append(a1 + 1, v7, v6);
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t google::protobuf::internal::WireFormatLite::SkipField(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  if (a2 < 8)
  {
    return 0;
  }

  v4 = a2;
  v3 = 0;
  v6 = v4 & 7;
  if (v6 <= 1)
  {
    if ((v4 & 7) != 0)
    {
      if (v6 != 1)
      {
        return v3;
      }

      if ((*(this + 2) - *this) >= 8)
      {
        v7 = *this + 8;
        goto LABEL_35;
      }

      return google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v29);
    }

    v19 = *this;
    if (*this >= *(this + 1) || *v19 < 0)
    {
      google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
      return v3;
    }

    v7 = (v19 + 1);
LABEL_35:
    *this = v7;
    return 1;
  }

  if (v6 == 2)
  {
    v9 = *this;
    v8 = *(this + 1);
    if (*this >= v8)
    {
      if (v8 - v9 > 9)
      {
        LODWORD(v10) = 0;
LABEL_40:
        v20 = v10 + (v9[1] << 7) - 128;
        if (v9[1] < 0)
        {
          v20 = v20 + (v9[2] << 14) - 0x4000;
          if (v9[2] < 0)
          {
            v20 = v20 + (v9[3] << 21) - 0x200000;
            if (v9[3] < 0)
            {
              v23 = v9[4];
              v20 = v20 + (v23 << 28) - 0x10000000;
              if (v23 < 0)
              {
                v21 = (v9 + 6);
                v24 = 5;
                while (*(v21 - 1) < 0)
                {
                  v3 = 0;
                  ++v21;
                  if (!--v24)
                  {
                    return v3;
                  }
                }
              }

              else
              {
                v21 = (v9 + 5);
              }
            }

            else
            {
              v21 = (v9 + 4);
            }
          }

          else
          {
            v21 = (v9 + 3);
          }
        }

        else
        {
          v21 = (v9 + 2);
        }

        v10 = v20;
        *this = v21;
        goto LABEL_52;
      }
    }

    else
    {
      LODWORD(v10) = *v9;
      if ((*v9 & 0x80000000) == 0)
      {
        v11 = (v9 + 1);
        *this = v11;
LABEL_16:
        if (v10 > v8 - v11)
        {

          return google::protobuf::io::CodedInputStream::SkipFallback(this, v10, v8 - v11);
        }

        v7 = &v11[v10];
        goto LABEL_35;
      }

      if (v8 - v9 > 9 || (*(v8 - 1) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }
    }

    Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
    if (v26)
    {
      v10 = Varint64Fallback;
    }

    else
    {
      v10 = -1;
    }

LABEL_52:
    if ((v10 & 0x8000000080000000) != 0)
    {
      return 0;
    }

    v11 = *this;
    v8 = *(this + 1);
    goto LABEL_16;
  }

  if (v6 != 3)
  {
    if (v6 != 5)
    {
      return v3;
    }

    if ((*(this + 2) - *this) >= 4)
    {
      v7 = *this + 4;
      goto LABEL_35;
    }

    return google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v28);
  }

  v13 = *(this + 13);
  v14 = __OFSUB__(v13--, 1);
  *(this + 13) = v13;
  if (v13 < 0 != v14)
  {
    return 0;
  }

  v15 = v4 & 0xFFFFFFF8;
  while (1)
  {
    v16 = *this;
    if (*this >= *(this + 1))
    {
      LODWORD(TagFallback) = 0;
LABEL_26:
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
      goto LABEL_27;
    }

    TagFallback = *v16;
    if (*v16 < 0)
    {
      goto LABEL_26;
    }

    *this = v16 + 1;
LABEL_27:
    *(this + 8) = TagFallback;
    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    v18 = google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3);
    v3 = 0;
    if ((v18 & 1) == 0)
    {
      return v3;
    }
  }

  v22 = *(this + 13);
  if (v22 < *(this + 14))
  {
    *(this + 13) = v22 + 1;
  }

  return TagFallback == (v15 | 4);
}

void google::protobuf::internal::PrintUTF8ErrorLog(google::protobuf::internal *this, const char *a2, const char *a3)
{
  *__s = 0;
  v11 = 0;
  v12 = 0;
  *(&v9.__r_.__value_.__s + 23) = 0;
  v9.__r_.__value_.__s.__data_[0] = 0;
  if (this)
  {
    google::protobuf::StringPrintf(&v7, this);
    v9 = v7;
  }

  LODWORD(v7.__r_.__value_.__l.__data_) = 2;
  v7.__r_.__value_.__l.__size_ = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/wire_format_lite.cc";
  LODWORD(v7.__r_.__value_.__r.__words[2]) = 581;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "String field");
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v9;
  }

  else
  {
    v4 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  std::string::append(&__p, v4, size);
  std::string::append(&__p, " contains invalid ");
  std::string::append(&__p, "UTF-8 data when ");
  std::string::append(&__p, a2);
  std::string::append(&__p, " a protocol ");
  std::string::append(&__p, "buffer. Use the 'bytes' type if you intend to send raw ");
  std::string::append(&__p, "bytes. ");
  v6 = std::string::append(&__p, __s, 0);
  google::protobuf::internal::LogFinisher::operator=(v6, &v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(*__s);
  }
}

void sub_1C1C0BE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 17) < 0)
  {
    operator delete(*(v25 - 40));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  JUMPOUT(0x1C6908B60);
}

void google::protobuf::internal::ArenaStringPtr::Set(uint64_t **a1, __int128 *a2, atomic_ullong *this)
{
  if (*a1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v5 = *a2;
      v6 = *(a2 + 1);
    }

    JUMPOUT(0x1C6908840);
  }

  if (!this)
  {
    operator new();
  }

  v8 = AlignedWithCleanup;
  *v9 = AlignedWithCleanup;
  v9[1] = google::protobuf::internal::arena_destruct_object<std::string>;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(AlignedWithCleanup, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    AlignedWithCleanup->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&AlignedWithCleanup->__r_.__value_.__l.__data_ = v10;
  }

  *a1 = v8;
}

void google::protobuf::internal::arena_destruct_object<std::string>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t *google::protobuf::internal::ArenaStringPtr::Mutable(uint64_t **a1, atomic_ullong *this)
{
  result = *a1;
  if (result == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (!this)
    {
      operator new();
    }

    *v4 = result;
    v4[1] = google::protobuf::internal::arena_destruct_object<std::string>;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    *a1 = result;
  }

  return result;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadString(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  v5 = __s;
  v6 = a3;
  if (*(a1 + 8) - __s + 16 >= a3)
  {
    MEMORY[0x1C6908840](this, __s, a3);
    return &v5[v6];
  }

  else
  {
    v7 = a3;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }

    v10 = *(a1 + 8);
    if (v10 - __s + *(a1 + 28) >= a3)
    {
      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = this->__r_.__value_.__l.__size_;
      }

      if (a3 >= 50000000)
      {
        v12 = 50000000;
      }

      else
      {
        v12 = a3;
      }

      std::string::reserve(this, size + v12);
      v10 = *(a1 + 8);
    }

    v13 = v10 - v5 + 16;
    while (*(a1 + 16))
    {
      std::string::append(this, v5, v13);
      if (*(a1 + 28) < 17)
      {
        break;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v7 -= v13;
      v5 = result + 16;
      v13 = *(a1 + 8) - result;
      if (v7 <= v13)
      {
        std::string::append(this, v5, v7);
        return &v5[v7];
      }
    }

    return 0;
  }
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::WriteAliasedRaw(google::protobuf::io::CopyingOutputStreamAdaptor *this, char *a2, uint64_t a3)
{
  v3 = a3;
  if (*(this + 10) > a3)
  {
    memset(__n, 0, sizeof(__n));
    result = (*(*this + 16))(this, &__n[1], __n);
    if (!result)
    {
      return result;
    }

    while (v3 > __n[0])
    {
      memcpy(*&__n[1], a2, __n[0]);
      a2 += __n[0];
      LODWORD(v3) = v3 - __n[0];
      if (((*(*this + 16))(this, &__n[1], __n) & 1) == 0)
      {
        return 0;
      }
    }

    memcpy(*&__n[1], a2, v3);
    (*(*this + 24))(this, (__n[0] - v3));
    return 1;
  }

  result = google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this);
  if (result)
  {
    result = (*(**(this + 1) + 16))(*(this + 1), a2, v3);
    if (result)
    {
      *(this + 3) += v3;
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  if (*(this + 17))
  {
    return 0;
  }

  if (!*(this + 11))
  {
    return 1;
  }

  if ((*(**(this + 1) + 16))(*(this + 1), *(this + 4)))
  {
    *(this + 3) += *(this + 11);
    *(this + 11) = 0;
    return 1;
  }

  *(this + 17) = 1;
  *(this + 11) = 0;
  result = *(this + 4);
  *(this + 4) = 0;
  if (result)
  {
    MEMORY[0x1C6908B30](result, 0x1000C8077774924);
    return 0;
  }

  return result;
}

void google::protobuf::io::CopyingOutputStreamAdaptor::BackUp(google::protobuf::io::CopyingOutputStreamAdaptor *this, int a2)
{
  if (a2 < 0)
  {
    v8 = 3;
    v9 = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
    v10 = 331;
    memset(&__p, 0, sizeof(__p));
    v4 = std::string::append(&__p, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(v4, &v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v5 = *(this + 11);
  if (v5 != *(this + 10))
  {
    v8 = 3;
    v9 = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
    v10 = 332;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: (buffer_used_) == (buffer_size_): ");
    v6 = std::string::append(&__p, " BackUp() can only be called after Next().");
    google::protobuf::internal::LogFinisher::operator=(v6, &v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 = *(this + 11);
  }

  if (v5 < a2)
  {
    v8 = 3;
    v9 = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
    v10 = 334;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: (count) <= (buffer_used_): ");
    v7 = std::string::append(&__p, " Can't back up over more bytes than were returned by the last call to Next().");
    google::protobuf::internal::LogFinisher::operator=(v7, &v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 = *(this + 11);
  }

  *(this + 11) = v5 - a2;
}

void sub_1C1C0C56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::Next(google::protobuf::io::CopyingOutputStreamAdaptor *this, void **a2, int *a3)
{
  if (*(this + 11) != *(this + 10) || (result = google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this), result))
  {
    v7 = *(this + 4);
    if (!v7)
    {
      v8 = *(this + 10);
      operator new[]();
    }

    v9 = *(this + 10);
    v10 = *(this + 11);
    *a2 = (v7 + v10);
    *a3 = v9 - v10;
    *(this + 11) = *(this + 10);
    return 1;
  }

  return result;
}

void google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(this);

  JUMPOUT(0x1C6908B60);
}

{
  *this = &unk_1F415D348;
  google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this);
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    MEMORY[0x1C6908B30](v3, 0x1000C8077774924);
  }
}

std::string *google::protobuf::StringPrintf@<X0>(std::string *a1@<X8>, ...)
{
  va_start(va, a1);
  v7 = *MEMORY[0x1E69E9840];
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  result = vsnprintf(__str, 0x400uLL, " '%s'", va);
  if (result > 1023)
  {
    operator new[]();
  }

  if ((result & 0x80000000) == 0)
  {
    result = std::string::append(a1, __str, result);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C1C0C840(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result, std::string **a2, const std::string **a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      if (!v9)
      {
        operator new();
      }

      *v11 = result;
      v11[1] = google::protobuf::internal::arena_destruct_object<std::string>;
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      result = std::string::operator=(v14, v12);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(uint64_t *a1)
{
  v2 = (*a1 & 0xFFFFFFFFFFFFFFFCLL);
  if (*a1)
  {
    v2 = *v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v4 = AlignedWithCleanup;
  v4[1] = google::protobuf::internal::arena_destruct_object<google::protobuf::internal::InternalMetadata::Container<std::string>>;
  *AlignedWithCleanup = 0u;
  *(AlignedWithCleanup + 16) = 0u;
  *a1 = *a1 & 2 | AlignedWithCleanup | 1;
  *AlignedWithCleanup = v2;
  return AlignedWithCleanup + 8;
}

void google::protobuf::internal::arena_destruct_object<google::protobuf::internal::InternalMetadata::Container<std::string>>(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

uint64_t google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(google::protobuf::internal::EpsCopyInputStream *this, const char **a2, int a3)
{
  if (*a2 >= *this)
  {
    v6 = *a2 - *(this + 2);
    if (*(this + 7) == v6)
    {
      if (v6 >= 1 && !*(this + 2))
      {
        *a2 = 0;
      }

      v3 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v6, a3);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
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

_BYTE *google::protobuf::FastUInt32ToBufferLeft(google::protobuf *this, _BYTE *a2, char *a3)
{
  if (this >= 0x3B9ACA00)
  {
    v3 = this / 0x5F5E100uLL;
    *a2 = google::protobuf::two_ASCII_digits[v3];
    a2 += 2;
    goto LABEL_3;
  }

  if (this > 0x63)
  {
    if (this >> 4 <= 0x270)
    {
      if (this <= 0x3E7)
      {
        LODWORD(v6) = this / 0x64u;
        *a2++ = v6 | 0x30;
        goto LABEL_9;
      }

LABEL_8:
      v6 = this / 0x64uLL;
      *a2 = google::protobuf::two_ASCII_digits[v6];
      a2 += 2;
LABEL_9:
      LODWORD(this) = this - 100 * v6;
      goto LABEL_10;
    }

    if (this <= 0xF423F)
    {
      if (this >> 5 <= 0xC34)
      {
        LODWORD(v5) = this / 0x2710;
        *a2++ = (this / 0x2710) | 0x30;
        goto LABEL_7;
      }

LABEL_6:
      v5 = this / 0x2710uLL;
      *a2 = google::protobuf::two_ASCII_digits[v5];
      a2 += 2;
LABEL_7:
      LODWORD(this) = this - 10000 * v5;
      goto LABEL_8;
    }

    if (this <= 0x5F5E0FF)
    {
      if (this <= 0x98967F)
      {
        LODWORD(v4) = this / 0xF4240;
        *a2++ = this / 0xF4240 + 48;
        goto LABEL_5;
      }

LABEL_4:
      v4 = this / 0xF4240uLL;
      *a2 = google::protobuf::two_ASCII_digits[v4];
      a2 += 2;
LABEL_5:
      LODWORD(this) = this - 1000000 * v4;
      goto LABEL_6;
    }

    LODWORD(v3) = this / 0x5F5E100;
    *a2++ = (this / 0x5F5E100) | 0x30;
LABEL_3:
    LODWORD(this) = this - 100000000 * v3;
    goto LABEL_4;
  }

  if (this <= 9)
  {
    *a2 = this | 0x30;
    v7 = a2 + 1;
    goto LABEL_11;
  }

LABEL_10:
  *a2 = google::protobuf::two_ASCII_digits[this];
  v7 = a2 + 2;
LABEL_11:
  *v7 = 0;
  return v7;
}

_BYTE *google::protobuf::FastUInt64ToBufferLeft(google::protobuf *this, _BYTE *a2, char *a3)
{
  v3 = this;
  if (this >> 32)
  {
    v5 = this / 0x3B9ACA00;
    v6 = google::protobuf::FastUInt64ToBufferLeft((this / 0x3B9ACA00), a2, a3);
    v7 = v3 - 1000000000 * v5;
    *v6 = google::protobuf::two_ASCII_digits[v7 / 0x989680uLL];
    v7 %= 0x989680u;
    v6[1] = google::protobuf::two_ASCII_digits[v7 / 0x186A0uLL];
    v7 %= 0x186A0u;
    v6[2] = google::protobuf::two_ASCII_digits[v7 / 0x3E8uLL];
    v7 %= 0x3E8u;
    v6[3] = google::protobuf::two_ASCII_digits[v7 / 0xAuLL];
    v6[4] = (v7 % 0xA + 48);
    return v6 + 9;
  }

  else
  {

    return google::protobuf::FastUInt32ToBufferLeft(this, a2, a3);
  }
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void google::protobuf::internal::DestroyString(void **this, const void *a2)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void google::protobuf::internal::InternalMetadata::~InternalMetadata(google::protobuf::internal::InternalMetadata *this)
{
  v1 = *this;
  if ((*this & 2) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFCLL);
    if (v1)
    {
      v2 = *v2;
      if (!v2)
      {
        return;
      }
    }

    else if (!v2)
    {
      return;
    }

    for (i = v2[2]; i; i = i[2])
    {
      v4 = i[1];
      v4[2] = i[6];
      do
      {
        v5 = v4[2];
        v6 = v4 + (v4[1] & 0xFFFFFFFFFFFFFFF8);
        if (&v6[-v5] >= 1 && v5 < v6)
        {
          do
          {
            (*(v5 + 8))(*v5);
            v5 += 16;
          }

          while (v5 < v6);
        }

        v4 = *v4;
      }

      while (v4);
    }

    v8 = v2[1];
    if ((v8 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFFF8) + 24);
    }

    else
    {
      v9 = 0;
    }

    v10 = v2[2];
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        if (v12)
        {
          if (v9)
          {
            (v9)(v12, v13);
          }

          else
          {
            operator delete(v12);
          }

          v11 += v13;
        }

        v14 = *(v10 + 8);
        v15 = *v14;
        v13 = v14[1];
        if (*v14)
        {
          do
          {
            v12 = v15;
            if (v9)
            {
              v9();
            }

            else
            {
              operator delete(v14);
            }

            v11 += v13;
            v15 = *v12;
            v13 = v12[1];
            v14 = v12;
          }

          while (*v12);
        }

        else
        {
          v12 = *(v10 + 8);
        }

        v10 = *(v10 + 16);
      }

      while (v10);
      v8 = v2[1];
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }

    v16 = v8 & 0xFFFFFFFFFFFFFFF8;
    if ((v8 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v17 = *(v16 + 32);
      if (v8)
      {
        goto LABEL_37;
      }

      v18 = *(v16 + 24);
      if (v18)
      {
        v18(v12, v13);
LABEL_37:
        if (!v17)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    else
    {
      if (v8)
      {
        goto LABEL_43;
      }

      v17 = 0;
    }

    operator delete(v12);
    if (v17)
    {
LABEL_42:
      (**v17)(v17, v11 + v13);
    }

LABEL_43:
    MEMORY[0x1C6908B60](v2, 0x1020C40AB73632BLL);
  }
}

void google::protobuf::RepeatedField<long long>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = v4 - 1;
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 8 * v6;
  if (v4)
  {
    AlignedWithHook = google::protobuf::Arena::AllocateAlignedWithHook(v4, (v8 + 15) & 0x7FFFFFFF8, MEMORY[0x1E69E5450]);
  }

  else
  {
    AlignedWithHook = operator new(v8 + 8);
  }

  *AlignedWithHook = v4;
  v10 = AlignedWithHook + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 8 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void google::protobuf::RepeatedField<long long>::Add(unsigned int *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 == a1[1])
  {
    v5 = v4 + 1;
    google::protobuf::RepeatedField<long long>::Reserve(a1, v4 + 1);
    *(*(a1 + 1) + 8 * v4) = a2;
  }

  else
  {
    *(*(a1 + 1) + 8 * v4) = a2;
    v5 = v4 + 1;
  }

  *a1 = v5;
}

void google::protobuf::io::FileOutputStream::~FileOutputStream(google::protobuf::io::FileOutputStream *this)
{
  google::protobuf::io::FileOutputStream::~FileOutputStream(this);

  JUMPOUT(0x1C6908B60);
}

{
  *this = &unk_1F415D390;
  google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this);
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream((this + 48));

  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(this);
}

void google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  *this = &unk_1F415D3D8;
  if (*(this + 12) == 1)
  {
    if (*(this + 13) == 1)
    {
      v7 = 3;
      v8 = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc";
      v9 = 200;
      memset(&__p, 0, sizeof(__p));
      v2 = std::string::append(&__p, "CHECK failed: !is_closed_: ");
      google::protobuf::internal::LogFinisher::operator=(v2, &v7);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *(this + 13) = 1;
    v3 = *(this + 2);
    while (1)
    {
      v4 = close(v3);
      if ((v4 & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_10;
      }
    }

    if (!v4)
    {
      return;
    }

LABEL_10:
    *(this + 4) = *__error();
    v7 = 2;
    v8 = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc";
    v9 = 194;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "close() failed: ");
    v5 = strerror(*(this + 4));
    v6 = std::string::append(&__p, v5);
    google::protobuf::internal::LogFinisher::operator=(v6, &v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

{
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(this);

  JUMPOUT(0x1C6908B60);
}

void sub_1C1C0D570(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

BOOL google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Write(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this, char *a2, int a3)
{
  if (*(this + 13) == 1)
  {
    v13 = 3;
    v14 = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc";
    v15 = 216;
    memset(&__p, 0, sizeof(__p));
    v6 = std::string::append(&__p, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(v6, &v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a3 < 1)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    while (1)
    {
      v8 = write(*(this + 2), &a2[v7], a3 - v7);
      v9 = v8;
      if (v8 < 0)
      {
        break;
      }

      result = v8 != 0;
      v7 += v9;
      if (v9)
      {
        v10 = v7 < a3;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        return result;
      }
    }
  }

  while (*__error() == 4);
  v11 = __error();
  result = 0;
  *(this + 4) = *v11;
  return result;
}

void sub_1C1C0D6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double google::protobuf::io::FileOutputStream::FileOutputStream(google::protobuf::io::FileOutputStream *this, int a2)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *&result = 0x2000;
  *(this + 5) = 0x2000;
  *this = &unk_1F415D390;
  *(this + 1) = this + 48;
  *(this + 6) = &unk_1F415D3D8;
  *(this + 14) = a2;
  *(this + 30) = 0;
  *(this + 16) = 0;
  return result;
}

uint64_t google::protobuf::ZeroCopyCodedInputStream::Skip(google::protobuf::ZeroCopyCodedInputStream *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(this + 1);
  v3 = *(v2 + 2) - *v2;
  if (v3 < a2)
  {
    return google::protobuf::io::CodedInputStream::SkipFallback(v2, a2, v3);
  }

  *v2 += a2;
  return 1;
}

uint64_t google::protobuf::ZeroCopyCodedInputStream::Next(google::protobuf::io::CodedInputStream **this, const void **a2, int *a3)
{
  DirectBufferPointer = google::protobuf::io::CodedInputStream::GetDirectBufferPointer(this[1], a2, a3);
  if (DirectBufferPointer)
  {
    v6 = *a3;
    if ((v6 & 0x80000000) == 0)
    {
      v7 = this[1];
      v8 = *(v7 + 2) - *v7;
      if (v6 <= v8)
      {
        *v7 += v6;
      }

      else
      {
        google::protobuf::io::CodedInputStream::SkipFallback(v7, v6, v8);
      }
    }
  }

  return DirectBufferPointer;
}

uint64_t google::protobuf::MessageLite::ParseFromCodedStream(google::protobuf::MessageLite *this, google::protobuf::io::CodedInputStream *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  (*(*this + 32))(this);
  v19[0] = &unk_1F415FD18;
  v19[1] = a2;
  v4 = *(a2 + 13);
  v5 = *(a2 + 37);
  v33 = 0u;
  v34 = 0u;
  v36 = -NAN;
  v37 = v4;
  v38 = 0x80000000;
  v40 = 0;
  v39 = 0uLL;
  v35 = v5;
  v32 = v19;
  __src[0] = 0;
  LODWORD(__p) = 0;
  v31 = 0x7FFFFFFF;
  if (google::protobuf::ZeroCopyCodedInputStream::Next(v19, __src, &__p))
  {
    HIDWORD(v36) = __p ^ 0x7FFFFFFF;
    if (__p < 17)
    {
      v27 = &v34;
      v28 = &v34;
      v29 = &v33;
      v6 = &v35 - __p;
      memcpy(v6, __src[0], __p);
    }

    else
    {
      v6 = __src[0];
      v31 = -2147483633 - __p;
      v27 = (__src[0] + __p - 16);
      v28 = v27;
      v29 = &v33;
      if (v5)
      {
        v35 = 2;
      }
    }
  }

  else
  {
    v28 = &v33;
    v29 = 0;
    HIDWORD(v36) = 0;
    v30 = 0;
    v6 = &v33;
    v27 = &v33;
  }

  v38 = 0;
  v39 = *(a2 + 4);
  v7 = (*(*this + 80))(this, v6, &v27);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_47;
  }

  if (v29 == &v33)
  {
    v9 = (v28 - v7 + 16);
  }

  else
  {
    v9 = (v30 + v28 - v7);
  }

  if (v9 >= 1)
  {
    (*(*v32 + 3))(v32, v9);
    HIDWORD(v36) += v9;
  }

  if (LODWORD(v36) == 1)
  {
    *(a2 + 36) = 1;
  }

  else
  {
    if (v27 < v8 && (!v29 || (v8 - v28) > v31))
    {
LABEL_47:
      result = 0;
      goto LABEL_48;
    }

    *(a2 + 8) = LODWORD(v36) + 1;
  }

  if (((*(*this + 40))(this) & 1) == 0)
  {
    LODWORD(__src[0]) = 2;
    __src[1] = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/message_lite.cc";
    v22 = 134;
    memset(&v23, 0, sizeof(v23));
    memset(&v20, 0, sizeof(v20));
    std::string::append(&v20, "Can't ");
    std::string::append(&v20, "parse");
    std::string::append(&v20, " message of type ");
    (*(*this + 16))(&__p, this);
    if ((v26 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v26 & 0x80u) == 0)
    {
      v12 = v26;
    }

    else
    {
      v12 = v25;
    }

    std::string::append(&v20, p_p, v12);
    if (v26 < 0)
    {
      operator delete(__p);
    }

    std::string::append(&v20, " because it is missing required fields: ");
    (*(*this + 48))(&__p, this);
    if ((v26 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v26 & 0x80u) == 0)
    {
      v14 = v26;
    }

    else
    {
      v14 = v25;
    }

    std::string::append(&v20, v13, v14);
    if (v26 < 0)
    {
      operator delete(__p);
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v20;
    }

    else
    {
      v15 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v23, v15, size);
    google::protobuf::internal::LogFinisher::operator=(v17, __src);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    goto LABEL_47;
  }

  result = 1;
LABEL_48:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C1C0DD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::MessageLite::SerializeToCodedStream(google::protobuf::MessageLite *this, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = (*(*this + 64))(this);
  if (v4 >> 31)
  {
    LODWORD(v32.__r_.__value_.__l.__data_) = 2;
    v32.__r_.__value_.__l.__size_ = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/message_lite.cc";
    LODWORD(v32.__r_.__value_.__r.__words[2]) = 373;
    memset(&v33, 0, sizeof(v33));
    (*(*this + 16))(&__p, this);
    if ((v31 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v31 & 0x80u) == 0)
    {
      v6 = v31;
    }

    else
    {
      v6 = v30;
    }

    std::string::append(&v33, p_p, v6);
    std::string::append(&v33, " exceeded maximum protobuf size of 2GB: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(&v32, v4, v7);
    google::protobuf::internal::LogFinisher::operator=(v8, &v32);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  else
  {
    v10 = *(a2 + 8);
    v11 = *a2;
    if (*(a2 + 1))
    {
      v12 = 0;
    }

    else
    {
      v12 = -16;
    }

    v13 = (*(**(a2 + 6) + 32))(*(a2 + 6));
    v14 = *(a2 + 9);
    v15 = (*(*this + 88))(this, *(a2 + 8), a2);
    *(a2 + 8) = v15;
    if ((*(a2 + 56) & 1) != 0 || (v16 = google::protobuf::io::EpsCopyOutputStream::Flush(a2, v15), *(a2 + 56) == 1))
    {
      *(a2 + 8) = a2 + 16;
      v17 = 1;
    }

    else
    {
      v18 = v10 - v11 + v12 + v13;
      v19 = *(a2 + 1);
      v20 = &v19[v16 - 16];
      if (v16 > 16)
      {
        v21 = 0;
      }

      else
      {
        v20 = a2 + v16 + 16;
        v21 = *(a2 + 1);
      }

      if (v16 <= 16)
      {
        v19 = a2 + 16;
      }

      *a2 = v20;
      *(a2 + 1) = v21;
      *(a2 + 8) = v19;
      if (v4 != ((*(**(a2 + 6) + 32))(*(a2 + 6)) + v14 - (v18 + *(a2 + 18)) - (v20 - v19 + 16 * (v21 == 0))))
      {
        if (v4 != (*(*this + 64))(this))
        {
          LODWORD(v32.__r_.__value_.__l.__data_) = 3;
          v32.__r_.__value_.__l.__size_ = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/message_lite.cc";
          LODWORD(v32.__r_.__value_.__r.__words[2]) = 84;
          memset(&v33, 0, sizeof(v33));
          std::string::append(&v33, "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): ");
          (*(*this + 16))(&__p, this);
          if ((v31 & 0x80u) == 0)
          {
            v22 = &__p;
          }

          else
          {
            v22 = __p;
          }

          if ((v31 & 0x80u) == 0)
          {
            v23 = v31;
          }

          else
          {
            v23 = v30;
          }

          std::string::append(&v33, v22, v23);
          v24 = std::string::append(&v33, " was modified concurrently during serialization.");
          google::protobuf::internal::LogFinisher::operator=(v24, &v32);
          if (v31 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }
        }

        LODWORD(v32.__r_.__value_.__l.__data_) = 3;
        v32.__r_.__value_.__l.__size_ = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/message_lite.cc";
        LODWORD(v32.__r_.__value_.__r.__words[2]) = 87;
        memset(&v33, 0, sizeof(v33));
        std::string::append(&v33, "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): ");
        std::string::append(&v33, "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of ");
        (*(*this + 16))(&__p, this);
        if ((v31 & 0x80u) == 0)
        {
          v25 = &__p;
        }

        else
        {
          v25 = __p;
        }

        if ((v31 & 0x80u) == 0)
        {
          v26 = v31;
        }

        else
        {
          v26 = v30;
        }

        std::string::append(&v33, v25, v26);
        v27 = std::string::append(&v33, ".");
        google::protobuf::internal::LogFinisher::operator=(v27, &v32);
        if (v31 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        LODWORD(v32.__r_.__value_.__l.__data_) = 3;
        v32.__r_.__value_.__l.__size_ = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/message_lite.cc";
        LODWORD(v32.__r_.__value_.__r.__words[2]) = 92;
        memset(&v33, 0, sizeof(v33));
        v28 = std::string::append(&v33, "This shouldn't be called if all the sizes are equal.");
        google::protobuf::internal::LogFinisher::operator=(v28, &v32);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }

      v17 = 0;
    }

    return v17 ^ 1u;
  }
}

void sub_1C1C0E1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::InternalMetadata::DoClear<std::string>(uint64_t *a1)
{
  if (*a1)
  {
    result = (*a1 & 0xFFFFFFFFFFFFFFFCLL) + 8;
  }

  else
  {
    result = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a1);
  }

  if (*(result + 23) < 0)
  {
    **result = 0;
    *(result + 8) = 0;
  }

  else
  {
    *result = 0;
    *(result + 23) = 0;
  }

  return result;
}

std::string *google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  else
  {
    v3 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a1);
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  return std::string::append(v3, v5, v6);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::Next(google::protobuf::internal::EpsCopyInputStream *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = (this + 40);
    if (v2 == (this + 40))
    {
      *v3 = **(this + 1);
      if (*(this + 21) < 1)
      {
LABEL_15:
        if (*(this + 9) == 2)
        {
          *(this + 9) = *(this + 1) - v2;
        }

        v4 = this + 56;
        *(this + 1) = this + 56;
        *(this + 2) = 0;
        *(this + 6) = 0;
      }

      else
      {
        __src = 0;
        while (1)
        {
          if (!(*(**(this + 4) + 16))(*(this + 4), &__src, this + 24))
          {
            *(this + 21) = 0;
            goto LABEL_15;
          }

          v5 = *(this + 6);
          *(this + 21) -= v5;
          if (v5 >= 17)
          {
            break;
          }

          if (v5 >= 1)
          {
            memcpy(this + 56, __src, v5);
            v6 = (this + 72);
            v7 = *(this + 9);
            v4 = v3 + v5;
            *(this + 1) = v3 + v5;
            *(this + 2) = v3;
            if (v7 < 2)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }
        }

        v6 = (this + 72);
        v8 = *(this + 9);
        v4 = this + 56;
        v9 = __src;
        *(this + 56) = *__src;
        *(this + 1) = this + 56;
        *(this + 2) = v9;
        if (v8 <= 1)
        {
          goto LABEL_20;
        }

LABEL_19:
        *v6 = 1;
      }
    }

    else
    {
      v4 = v2 + *(this + 6) - 16;
      *(this + 1) = v4;
      *(this + 2) = v3;
      if (*(this + 9) == 1)
      {
        *(this + 9) = 2;
      }

      v3 = v2;
    }

LABEL_20:
    v10 = *(this + 7) + v3 - v4;
    *(this + 7) = v10;
    *this = &v4[v10 & (v10 >> 31)];
  }

  else
  {
    v3 = 0;
    *this = *(this + 1);
    *(this + 20) = 1;
  }

  return v3;
}

uint64_t google::protobuf::internal::EpsCopyInputStream::DoneFallback(google::protobuf::internal::EpsCopyInputStream *this, int a2, int a3)
{
  if (*(this + 7) < a2)
  {
    return 0;
  }

  __src[9] = v3;
  __src[10] = v4;
  v6 = a2;
  v8 = (this + 40);
  v9 = (this + 56);
  v10 = *(this + 2);
  while (v10)
  {
    if (v10 == v8)
    {
      *v8 = **(this + 1);
      if (*(this + 21) < 1)
      {
LABEL_49:
        if (*(this + 9) == 2)
        {
          *(this + 9) = *(this + 1) - v8;
        }

        v12 = 0;
        *(this + 1) = v9;
        *(this + 2) = 0;
        v11 = v9;
        v10 = v8;
        *(this + 6) = 0;
      }

      else
      {
        if ((a3 & 0x80000000) == 0 && v6 <= 15)
        {
          v13 = (v8 + v6);
          v14 = a3;
          v15 = v13;
          do
          {
            v16 = *v15;
            v15 = (v15 + 1);
            v17 = v16;
            if (v16 < 0)
            {
              v17 = v17 + (*v15 << 7) - 128;
              if (*v15 < 0)
              {
                v18 = 14;
                v19 = 2;
                while (1)
                {
                  v17 += (*(v13 + v19) - 1) << v18;
                  if ((*(v13 + v19) & 0x80000000) == 0)
                  {
                    break;
                  }

                  ++v19;
                  v18 += 7;
                  if (v19 == 5)
                  {
                    goto LABEL_42;
                  }
                }

                v15 = (v13 + v19 + 1);
              }

              else
              {
                v15 = (v13 + 2);
              }
            }

            if (v15 > v9)
            {
              break;
            }

            if (!v17)
            {
              goto LABEL_49;
            }

            v20 = v17 & 7;
            if (v20 > 2)
            {
              switch(v20)
              {
                case 3:
                  ++v14;
                  break;
                case 4:
                  v23 = __OFSUB__(v14--, 1);
                  if (v14 < 0 != v23)
                  {
                    goto LABEL_49;
                  }

                  break;
                case 5:
                  v15 = (v15 + 4);
                  break;
                default:
                  goto LABEL_42;
              }
            }

            else if (v20)
            {
              if (v20 == 1)
              {
                v15 = (v15 + 8);
              }

              else
              {
                v21 = *v15;
                if (*v15 < 0)
                {
                  SizeFallback = google::protobuf::internal::ReadSizeFallback(v15, v21);
                  if (!SizeFallback)
                  {
                    break;
                  }
                }

                else
                {
                  SizeFallback = v15 + 1;
                }

                if (v9 - SizeFallback < v21)
                {
                  break;
                }

                v15 = &SizeFallback[v21];
              }
            }

            else
            {
              __src[0] = 0;
              v15 = google::protobuf::internal::VarintParse<unsigned long long>(v15, __src);
              if (!v15)
              {
                break;
              }
            }

            v13 = v15;
          }

          while (v15 < v9);
        }

LABEL_42:
        __src[0] = 0;
        while (1)
        {
          if (!(*(**(this + 4) + 16))(*(this + 4), __src, this + 24))
          {
            *(this + 21) = 0;
            goto LABEL_49;
          }

          v24 = *(this + 6);
          *(this + 21) -= v24;
          if (v24 >= 17)
          {
            break;
          }

          if (v24 >= 1)
          {
            memcpy(v9, __src[0], v24);
            v11 = v8 + v24;
            *(this + 1) = v8 + v24;
            *(this + 2) = v8;
            v12 = v8;
            if (*(this + 9) < 2uLL)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

        v12 = __src[0];
        *v9 = *__src[0];
        *(this + 1) = v9;
        *(this + 2) = v12;
        v11 = v9;
        if (*(this + 9) <= 1uLL)
        {
          goto LABEL_54;
        }

LABEL_53:
        *(this + 9) = 1;
LABEL_54:
        v10 = v8;
      }
    }

    else
    {
      v11 = v10 + *(this + 6) - 16;
      *(this + 1) = v11;
      *(this + 2) = v8;
      if (*(this + 9) == 1)
      {
        *(this + 9) = 2;
      }

      v12 = v8;
    }

    v25 = *(this + 7) + v10 - v11;
    *(this + 7) = v25;
    result = v10 + v6;
    v10 = v12;
    v6 = result - v11;
    if (result - v11 < 0)
    {
      *this = v11 + (v25 & (v25 >> 31));
      return result;
    }
  }

  if (v6)
  {
    return 0;
  }

  result = *(this + 1);
  *this = result;
  *(this + 20) = 1;
  return result;
}

uint64_t google::protobuf::internal::VarintParse<unsigned long long>(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      v5 = 2;
      v6 = 14;
      while (1)
      {
        v4 += (a1[v5] - 1) << v6;
        if ((a1[v5] & 0x80000000) == 0)
        {
          break;
        }

        ++v5;
        v6 += 7;
        if (v5 == 10)
        {
          result = 0;
          v4 = 0;
          goto LABEL_10;
        }
      }

      result = &a1[v5 + 1];
LABEL_10:
      *a2 = v4;
    }

    else
    {
      *a2 = v4;
      return (a1 + 2);
    }
  }

  else
  {
    *a2 = v2;
    return (a1 + 1);
  }

  return result;
}

char *google::protobuf::internal::ReadSizeFallback(google::protobuf::internal *this, const char *a2)
{
  v2 = 7;
  for (i = 1; i != 4; ++i)
  {
    LODWORD(a2) = ((*(this + i) - 1) << v2) + a2;
    if ((*(this + i) & 0x80000000) == 0)
    {
      return this + i + 1;
    }

    v2 += 7;
  }

  v4 = *(this + 4);
  v5 = this + 5;
  if (a2 + (v4 << 28) - 0x10000000 > 0x7FFFFFEF)
  {
    v5 = 0;
  }

  if (v4 <= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

char *google::protobuf::internal::ParseContext::ReadSizeAndPushLimitAndDepth(google::protobuf::internal::ParseContext *this, google::protobuf::internal *a2, int *a3)
{
  v6 = *a2;
  v7 = *a2;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a2, v7);
    if (!result)
    {
      *a3 = 0;
      return result;
    }
  }

  else
  {
    result = a2 + 1;
  }

  v9 = *(this + 1);
  v10 = v7 + result - v9;
  *this = v9 + (v10 & (v10 >> 31));
  LODWORD(v9) = *(this + 7);
  *(this + 7) = v10;
  *a3 = v9 - v10;
  LODWORD(v9) = *(this + 22);
  v11 = __OFSUB__(v9, 1);
  LODWORD(v9) = v9 - 1;
  *(this + 22) = v9;
  if (v9 < 0 != v11)
  {
    return 0;
  }

  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage(google::protobuf::internal::ParseContext *this, google::protobuf::MessageLite *a2, google::protobuf::internal *a3)
{
  v7 = 0;
  result = google::protobuf::internal::ParseContext::ReadSizeAndPushLimitAndDepth(this, a3, &v7);
  if (result)
  {
    result = (*(*a2 + 80))(a2, result, this);
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v6 = *(this + 7) + v7;
  *(this + 7) = v6;
  *this = *(this + 1) + (v6 & (v6 >> 31));
  return result;
}

BOOL google::protobuf::internal::VerifyUTF8(google::protobuf::internal *a1, const char *a2)
{
  IsStructurallyValidUTF8 = google::protobuf::internal::IsStructurallyValidUTF8(a1, a2);
  if (!IsStructurallyValidUTF8)
  {
    google::protobuf::internal::PrintUTF8ErrorLog(0, "parsing", v2);
  }

  return IsStructurallyValidUTF8;
}

char *google::protobuf::internal::InlineGreedyStringParser(std::string *this, std::string::value_type *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v6, v5, this);
}

char *google::protobuf::internal::PackedInt64Parser(google::protobuf::internal *this, google::protobuf::internal *a2, char *a3, google::protobuf::internal::ParseContext *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    result = a2 + 1;
    goto LABEL_5;
  }

  result = google::protobuf::internal::ReadSizeFallback(a2, *a2);
  if (result)
  {
    v6 = v8;
    while (1)
    {
LABEL_5:
      v9 = *(a3 + 1);
      v10 = v9 - result;
      if (v6 <= v9 - result)
      {
        v14 = &result[v6];
        result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v14, this);
        if (v14 != result)
        {
          result = 0;
        }

        goto LABEL_16;
      }

      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v9, this);
      if (!result)
      {
        goto LABEL_16;
      }

      v11 = *(a3 + 1);
      v12 = result - v11;
      v13 = v6 - v10;
      if (v6 - v10 <= 16)
      {
        break;
      }

      if (*(a3 + 7) < 17)
      {
        goto LABEL_15;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a3);
      if (!result)
      {
        goto LABEL_16;
      }

      v6 = v6 - v10 - v12;
      result += v12;
    }

    v18 = 0;
    v17 = 0;
    v16 = *v11;
    if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v16 + v12, &v16 + v13, this) != &v16 + v13)
    {
LABEL_15:
      result = 0;
      goto LABEL_16;
    }

    result = (*(a3 + 1) + v13);
  }

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<long long>::Reserve(a3, v7 + 1);
      *(*(a3 + 1) + 8 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 8 * v7) = v10;
      v8 = v7 + 1;
    }
  }

  return i;
}

uint64_t google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(unint64_t a1, std::string **a2, char *a3, int32x2_t *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  if (a1 < 8)
  {
    goto LABEL_2;
  }

  v6 = a3;
  result = 0;
  v9 = a1 & 7;
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3uLL:
        v22 = *a2;
        v23 = a1 & 0xFFFFFFF8;
        if (*a2)
        {
          v24 = v23 | 3u;
          if (a1 < 0x80)
          {
            LOBYTE(v25) = v23 | 3;
          }

          else
          {
            do
            {
              std::string::push_back(v22, v24 | 0x80);
              v25 = v24 >> 7;
              v26 = v24 >> 14;
              v24 >>= 7;
            }

            while (v26);
          }

          std::string::push_back(v22, v25);
        }

        v39 = a4[11].i32[0];
        v40 = __OFSUB__(v39--, 1);
        a4[11].i32[0] = v39;
        if (v39 < 0 != v40)
        {
          goto LABEL_2;
        }

        ++a4[11].i32[1];
        *__s = v6;
        while (1)
        {
          if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a4, __s, a4[11].i32[1]))
          {
            v6 = *__s;
            goto LABEL_87;
          }

          v6 = (*__s + 1);
          v41 = **__s;
          if (**__s < 0)
          {
            v41 = v41 + (*v6 << 7) - 128;
            if (*v6 < 0)
            {
              v42 = 14;
              v43 = 2;
              while (1)
              {
                v41 += (*(*__s + v43) - 1) << v42;
                if ((*(*__s + v43) & 0x80000000) == 0)
                {
                  break;
                }

                ++v43;
                v42 += 7;
                if (v43 == 5)
                {
                  goto LABEL_61;
                }
              }

              v6 = (*__s + v43 + 1);
            }

            else
            {
              v6 = (*__s + 2);
            }
          }

          if (!v41 || (v41 & 7) == 4)
          {
            break;
          }

          *__s = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v41, a2, v6, a4);
          if (!*__s)
          {
LABEL_61:
            v6 = 0;
            goto LABEL_87;
          }
        }

        a4[10].i32[0] = v41 - 1;
LABEL_87:
        a4[11] = vadd_s32(a4[11], 0xFFFFFFFF00000001);
        v55 = a4[10].i32[0];
        a4[10].i32[0] = 0;
        if (v55 != (v23 | 3) || v6 == 0)
        {
          goto LABEL_2;
        }

        v57 = *a2;
        if (v57)
        {
          v58 = v23 | 4u;
          if (a1 >= 0x80)
          {
            do
            {
              v59 = v58;
              std::string::push_back(v57, v58 | 0x80);
              v58 = v59 >> 7;
            }

            while (v59 >> 14);
            v60 = (v59 << 17) >> 24;
            goto LABEL_101;
          }

LABEL_100:
          LOBYTE(v60) = v58;
LABEL_101:
          std::string::push_back(v57, v60);
        }

        break;
      case 4uLL:
        *__s = 3;
        v64 = "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/parse_context.h";
        v65 = 825;
        memset(&__p, 0, sizeof(__p));
        v32 = std::string::append(&__p, "Can't happen");
        google::protobuf::internal::LogFinisher::operator=(v32, __s);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        break;
      case 5uLL:
        v6 = a3 + 4;
        v12 = *a3;
        v13 = *a2;
        if (*a2)
        {
          v14 = a1 & 0xFFFFFFF8 | 5;
          if (a1 < 0x80)
          {
            LOBYTE(v15) = a1 & 0xF8 | 5;
          }

          else
          {
            do
            {
              std::string::push_back(v13, v14 | 0x80);
              v15 = v14 >> 7;
              v16 = v14 >> 14;
              v14 >>= 7;
            }

            while (v16);
          }

          std::string::push_back(v13, v15);
          *__s = v12;
          std::string::append(*a2, __s, 4uLL);
        }

        break;
      default:
        goto LABEL_106;
    }

LABEL_105:
    result = v6;
    goto LABEL_106;
  }

  if ((a1 & 7) == 0)
  {
    *__s = 0;
    result = google::protobuf::internal::VarintParse<unsigned long long>(a3, __s);
    if (!result)
    {
      goto LABEL_106;
    }

    v6 = result;
    v17 = *a2;
    if (*a2)
    {
      v18 = *__s;
      v19 = a1 & 0xFFFFFFF8;
      if (a1 < 0x80)
      {
        LOBYTE(v20) = a1 & 0x78;
      }

      else
      {
        do
        {
          std::string::push_back(v17, v19 | 0x80);
          v20 = v19 >> 7;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
      }

      std::string::push_back(v17, v20);
      v57 = *a2;
      if (v18 < 0x80)
      {
        LOBYTE(v58) = v18;
      }

      else
      {
        do
        {
          std::string::push_back(v57, v18 | 0x80);
          v58 = v18 >> 7;
          v61 = v18 >> 14;
          v18 >>= 7;
        }

        while (v61);
      }

      goto LABEL_100;
    }

    goto LABEL_105;
  }

  if (v9 == 1)
  {
    v6 = a3 + 8;
    v27 = *a3;
    v28 = *a2;
    if (*a2)
    {
      v29 = a1 & 0xFFFFFFF8 | 1;
      if (a1 < 0x80)
      {
        LOBYTE(v30) = a1 & 0xF8 | 1;
      }

      else
      {
        do
        {
          std::string::push_back(v28, v29 | 0x80);
          v30 = v29 >> 7;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
      }

      std::string::push_back(v28, v30);
      *__s = v27;
      std::string::append(*a2, __s, 8uLL);
    }

    goto LABEL_105;
  }

  if (v9 != 2)
  {
    goto LABEL_106;
  }

  v10 = *a3;
  if (*a3 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, *a3);
    if (!result)
    {
      goto LABEL_106;
    }

    v11 = result;
    v10 = v33;
  }

  else
  {
    v11 = a3 + 1;
  }

  v34 = *a2;
  if (*a2)
  {
    v35 = a1 & 0xFFFFFFF8 | 2;
    if (a1 < 0x80)
    {
      LOBYTE(v36) = a1 & 0xF8 | 2;
    }

    else
    {
      do
      {
        std::string::push_back(v34, v35 | 0x80);
        v36 = v35 >> 7;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
    }

    std::string::push_back(v34, v36);
    v45 = v10;
    v46 = *a2;
    LOBYTE(v47) = v10;
    if (v10 >= 0x80)
    {
      v48 = v10;
      do
      {
        std::string::push_back(v46, v48 | 0x80);
        v47 = v48 >> 7;
        v49 = v48 >> 14;
        v48 >>= 7;
      }

      while (v49);
    }

    std::string::push_back(v46, v47);
    v50 = *a2;
    v51 = a4[1];
    if (*&v51 - v11 + 16 < v10)
    {
      if (*&v51 - v11 + a4[3].i32[1] >= v10)
      {
        size = SHIBYTE(v50->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) != 0)
        {
          size = v50->__r_.__value_.__l.__size_;
        }

        if (v10 >= 50000000)
        {
          v53 = 50000000;
        }

        else
        {
          v53 = v10;
        }

        std::string::reserve(v50, size + v53);
        v51 = a4[1];
      }

      v54 = v51.i32[0] - v11 + 16;
      while (a4[2])
      {
        std::string::append(v50, v11, v54);
        if (a4[3].i32[1] < 17)
        {
          break;
        }

        result = google::protobuf::internal::EpsCopyInputStream::Next(a4);
        if (!result)
        {
          goto LABEL_106;
        }

        v10 -= v54;
        v11 = (result + 16);
        v54 = a4[1].i32[0] - result;
        if (v10 <= v54)
        {
          std::string::append(v50, v11, v10);
          v6 = &v11[v10];
          goto LABEL_105;
        }
      }

      goto LABEL_2;
    }

    std::string::append(v50, v11, v10);
  }

  else
  {
    v38 = *&a4[1] - v11 + 16;
    if (v38 < v10)
    {
      while (*&a4[2] && a4[3].i32[1] >= 17)
      {
        result = google::protobuf::internal::EpsCopyInputStream::Next(a4);
        if (!result)
        {
          goto LABEL_106;
        }

        v10 -= v38;
        LODWORD(v38) = a4[1].i32[0] - result;
        if (v10 <= v38)
        {
          v6 = (result + 16 + v10);
          goto LABEL_105;
        }
      }

      goto LABEL_2;
    }

    v45 = v10;
  }

  if (v11)
  {
    v6 = &v11[v45];
    goto LABEL_105;
  }

LABEL_2:
  result = 0;
LABEL_106:
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C1C0F29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreML::MIL::Operators::CoreML::Classify::Make()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = 0;
  operator new();
}

void sub_1C1C0FA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v39 = *(v37 - 96);
  *(v37 - 96) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a28, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v3);

    JUMPOUT(0x1C6908B60);
  }

  return result;
}

size_t *std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](size_t *result, __int128 *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<MIOFunctionInfo>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v16[4] = result;
    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *result;
    v13 = result[1] - *result;
    v14 = 16 * v6 - v13;
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v10 - v13, v12, v13);
    *v2 = v14;
    v2[1] = v5;
    v15 = v2[2];
    v2[2] = 0;
    v16[2] = v12;
    v16[3] = v15;
    v16[0] = v12;
    v16[1] = v12;
    result = std::__split_buffer<std::shared_ptr<MIL::IRParameter>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  v2[1] = v5;
  return result;
}

uint64_t std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(result);

    JUMPOUT(0x1C6908B60);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__function::__func<MIL::ValidationResult (*)(MIL::IROperation const&),std::allocator<MIL::ValidationResult (*)(MIL::IROperation const&)>,MIL::ValidationResult ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::ValidationResult (*)(MIL::IROperation const&),std::allocator<MIL::ValidationResult (*)(MIL::IROperation const&)>,MIL::ValidationResult ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415D140;
  a2[1] = v2;
  return result;
}

uint64_t std::__shared_ptr_pointer<std::vector<std::shared_ptr<MIL::IRParameter>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<std::vector<std::shared_ptr<MIL::IRParameter>> *>::__on_zero_shared(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 24);
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v1);

    JUMPOUT(0x1C6908B60);
  }

  return result;
}

void std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_pointer<std::vector<std::shared_ptr<MIL::IRParameter>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(result);

    JUMPOUT(0x1C6908B60);
  }

  return result;
}

void std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

uint64_t std::__split_buffer<std::shared_ptr<MIL::IRParameter>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}
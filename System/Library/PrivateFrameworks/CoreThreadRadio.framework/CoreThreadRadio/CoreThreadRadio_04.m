void sub_100054D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CAMetricsHandlers_handle_getprop_allTriggerMetrics(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  a1;
  v5 = a2;
  LOBYTE(a2) = byte_10052A8F2;
  xarray = v5;
  type = xpc_get_type(v5);
  v202 = (a2 & 1) == 0;
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (type != &_xpc_type_array)
  {
    v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_threadmle();
    }

    goto LABEL_5;
  }

  count = xpc_array_get_count(xarray);
  v14 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = count;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "CAMetrics : CAMetricsHandlers_handle_getprop_threadmle - reading array with size %ld.", buf, 0xCu);
  }

  if (!count)
  {
LABEL_5:
    v8 = (&s_CATriggerBasedInternalDB + 13848 * v202);
    v9 = v8[1] + *v8;
    if (v9)
    {
      v10 = 100 * *v8;
      v11 = (v10 / v9);
      v12 = 0.0;
      if (v9 > v10)
      {
        goto LABEL_379;
      }
    }

    else
    {
      v11 = 100.0;
    }

    v199 = log10(v11) + 1.0;
    v200 = v199 - 4;
    if (v199 <= 4)
    {
      v200 = 0;
    }

    v12 = v200;
LABEL_379:
    v201 = __exp10(v12);
    v8[8] = (v201 * (v11 / v201));
    v208 = 15;
    strcpy(buf, "tx_success_perc");
    __str.__r_.__value_.__r.__words[0] = buf;
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, buf);
    operator new();
  }

  v15 = 0;
  v16 = 0;
  v17 = &s_CATriggerBasedInternalDB + 13848 * v202;
  while (1)
  {
    v18 = xpc_array_get_dictionary(xarray, v15);

    v16 = v18;
    string = xpc_dictionary_get_string(v18, "key");
    v20 = strlen(string);
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      operator new();
    }

    v208 = v20;
    if (v20)
    {
      memmove(buf, string, v20);
    }

    buf[v21] = 0;
    uint64 = xpc_dictionary_get_uint64(v16, "value");
    v23 = uint64;
    if (v208 < 0)
    {
      break;
    }

    if (v208 > 0x10u)
    {
      if (v208 == 17)
      {
        if (*buf == 0x725F726574756F72 && *&buf[8] == 0x6E756F635F656C6FLL && buf[16] == 116)
        {
          goto LABEL_163;
        }

        if (*buf == 0x725F72656461656CLL && *&buf[8] == 0x6E756F635F656C6FLL && buf[16] == 116)
        {
          goto LABEL_175;
        }
      }

      else if (v208 == 19)
      {
        if (*buf == 0x64656C6261736964 && *&buf[8] == 0x6F635F656C6F725FLL && *&buf[11] == 0x746E756F635F656CLL)
        {
          goto LABEL_167;
        }

        if (*buf == 0x6465686361746564 && *&buf[8] == 0x6F635F656C6F725FLL && *&buf[11] == 0x746E756F635F656CLL)
        {
          goto LABEL_179;
        }
      }

      if (v208 == 20)
      {
        v47 = *buf == 0x635F746E65726170 && *&buf[8] == 0x635F7365676E6168;
        if (v47 && *&buf[16] == 1953396079)
        {
LABEL_103:
          v49 = uint64;
          if (uint64)
          {
            v50 = log10(uint64) + 1.0;
            v51 = v50 - 3;
            if (v50 <= 3)
            {
              v51 = 0;
            }

            v52 = v51;
          }

          else
          {
            v52 = 0.0;
          }

          v104 = __exp10(v52);
          *(v17 + 22) = (v104 * (v49 / v104));
          __str.__r_.__value_.__r.__words[0] = buf;
          std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
          operator new();
        }
      }

      goto LABEL_218;
    }

    v24 = buf;
    if (v208 != 11)
    {
      if (v208 != 15)
      {
        if (v208 == 16 && *buf == 0x6F725F646C696863 && *&buf[8] == 0x746E756F635F656CLL)
        {
          goto LABEL_124;
        }

        goto LABEL_218;
      }

LABEL_71:
      v37 = *v24;
      v38 = *(v24 + 7);
      if (v37 == 0x615F686361747461 && v38 == 0x7374706D65747461)
      {
        v85 = uint64;
        if (uint64)
        {
          v86 = log10(uint64) + 1.0;
          v87 = v86 - 3;
          if (v86 <= 3)
          {
            v87 = 0;
          }

          v88 = v87;
        }

        else
        {
          v88 = 0.0;
        }

        v99 = __exp10(v88);
        *(v17 + 19) = (v99 * (v85 / v99));
        __str.__r_.__value_.__r.__words[0] = buf;
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
        operator new();
      }

      goto LABEL_75;
    }

LABEL_214:
    v107 = *v24;
    v108 = *(v24 + 3);
    if (v107 == 0x79616C65645F7874 && v108 == 0x6E696D79616C6564)
    {
      v123 = uint64;
      if (uint64)
      {
        v124 = log10(uint64) + 1.0;
        v125 = v124 - 3;
        if (v124 <= 3)
        {
          v125 = 0;
        }

        v126 = v125;
      }

      else
      {
        v126 = 0.0;
      }

      v132 = __exp10(v126);
      *(v17 + 11) = (v132 * (v123 / v132));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
LABEL_276:
      boost::any::operator=<unsigned int &>();
    }

LABEL_218:
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "tx_delaymax"))
    {
      if (v23)
      {
        v110 = log10(v23) + 1.0;
        v111 = v110 - 3;
        if (v110 <= 3)
        {
          v111 = 0;
        }

        v112 = v111;
      }

      else
      {
        v112 = 0.0;
      }

      v119 = __exp10(v112);
      *(v17 + 12) = (v119 * (v23 / v119));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "tx_delayavg"))
    {
      if (v23)
      {
        v113 = log10(v23) + 1.0;
        v114 = v113 - 3;
        if (v113 <= 3)
        {
          v114 = 0;
        }

        v115 = v114;
      }

      else
      {
        v115 = 0.0;
      }

      v127 = __exp10(v115);
      *(v17 + 13) = (v127 * (v23 / v127));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "tx_success"))
    {
      if (v23)
      {
        v116 = log10(v23) + 1.0;
        v117 = v116 - 3;
        if (v116 <= 3)
        {
          v117 = 0;
        }

        v118 = v117;
      }

      else
      {
        v118 = 0.0;
      }

      v131 = __exp10(v118);
      *v17 = (v131 * (v23 / v131));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "tx_failure"))
    {
      if (v23)
      {
        v120 = log10(v23) + 1.0;
        v121 = v120 - 3;
        if (v120 <= 3)
        {
          v121 = 0;
        }

        v122 = v121;
      }

      else
      {
        v122 = 0.0;
      }

      v136 = __exp10(v122);
      *(v17 + 1) = (v136 * (v23 / v136));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "rx_success"))
    {
      if (v23)
      {
        v128 = log10(v23) + 1.0;
        v129 = v128 - 3;
        if (v128 <= 3)
        {
          v129 = 0;
        }

        v130 = v129;
      }

      else
      {
        v130 = 0.0;
      }

      v142 = __exp10(v130);
      *(v17 + 5) = (v142 * (v23 / v142));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "rx_failure"))
    {
      if (v23)
      {
        v133 = log10(v23) + 1.0;
        v134 = v133 - 3;
        if (v133 <= 3)
        {
          v134 = 0;
        }

        v135 = v134;
      }

      else
      {
        v135 = 0.0;
      }

      v149 = __exp10(v135);
      *(v17 + 6) = (v149 * (v23 / v149));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "coex_tx_granted_requests"))
    {
      v137 = *(&s_CATriggerBasedInternalDB + 3462 * byte_10052A8F2 + 26);
      if (v137 >= v23)
      {
        if (v23)
        {
          v150 = log10(v23) + 1.0;
          v151 = v150 - 4;
          if (v150 <= 4)
          {
            v151 = 0;
          }

          v152 = v151;
        }

        else
        {
          v152 = 0.0;
        }

        v167 = __exp10(v152);
        v141 = v137 - (v167 * (v23 / v167));
      }

      else
      {
        v138 = log10(v23) + 1.0;
        v139 = v138 - 4;
        if (v138 <= 4)
        {
          v139 = 0;
        }

        v140 = __exp10(v139);
        v141 = (v140 * (v23 / v140)) - v137;
      }

      *(v17 + 26) = v141;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      boost::any::operator=<unsigned int &>();
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "coex_tx_denied_requests"))
    {
      v143 = *(&s_CATriggerBasedInternalDB + 3462 * byte_10052A8F2 + 24);
      v144 = v23;
      if (v143 >= v23)
      {
        if (v23)
        {
          v159 = log10(v23) + 1.0;
          v160 = v159 - 4;
          if (v159 <= 4)
          {
            v160 = 0;
          }

          v161 = v160;
        }

        else
        {
          v161 = 0.0;
        }

        v174 = __exp10(v161);
        v148 = v143 - (v174 * (v144 / v174));
      }

      else
      {
        v145 = log10(v23) + 1.0;
        v146 = v145 - 4;
        if (v145 <= 4)
        {
          v146 = 0;
        }

        v147 = __exp10(v146);
        v148 = (v147 * (v144 / v147)) - v143;
      }

      *(v17 + 24) = v148;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      boost::any::operator=<unsigned int &>();
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "coex_rx_granted_requests"))
    {
      v153 = *(&s_CATriggerBasedInternalDB + 3462 * byte_10052A8F2 + 30);
      v154 = v23;
      if (v153 >= v23)
      {
        if (v23)
        {
          v168 = log10(v23) + 1.0;
          v169 = v168 - 4;
          if (v168 <= 4)
          {
            v169 = 0;
          }

          v170 = v169;
        }

        else
        {
          v170 = 0.0;
        }

        v185 = __exp10(v170);
        v158 = v153 - (v185 * (v154 / v185));
      }

      else
      {
        v155 = log10(v23) + 1.0;
        v156 = v155 - 4;
        if (v155 <= 4)
        {
          v156 = 0;
        }

        v157 = __exp10(v156);
        v158 = (v157 * (v154 / v157)) - v153;
      }

      *(v17 + 30) = v158;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      boost::any::operator=<unsigned int &>();
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "coex_rx_denied_requests"))
    {
      v162 = *(&s_CATriggerBasedInternalDB + 3462 * byte_10052A8F2 + 28);
      v163 = v23;
      if (v23)
      {
        v164 = log10(v23) + 1.0;
        v165 = v164 - 4;
        if (v164 <= 4)
        {
          v165 = 0;
        }

        v166 = v165;
      }

      else
      {
        v166 = 0.0;
      }

      v178 = __exp10(v166);
      if (v162 >= (v178 * (v163 / v178)))
      {
        if (v23)
        {
          v182 = log10(v23) + 1.0;
          v183 = v182 - 4;
          if (v182 <= 4)
          {
            v183 = 0;
          }

          v184 = v183;
        }

        else
        {
          v184 = 0.0;
        }

        v194 = __exp10(v184);
        v193 = v162 - (v194 * (v163 / v194));
      }

      else
      {
        if (v23)
        {
          v179 = log10(v23) + 1.0;
          v180 = v179 - 4;
          if (v179 <= 4)
          {
            v180 = 0;
          }

          v181 = v180;
        }

        else
        {
          v181 = 0.0;
        }

        v192 = __exp10(v181);
        v193 = (v192 * (v163 / v192)) - v162;
      }

      *(v17 + 28) = v193;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      boost::any::operator=<unsigned int &>();
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "numRouters"))
    {
      if (v23)
      {
        v171 = log10(v23) + 1.0;
        v172 = v171 - 3;
        if (v171 <= 3)
        {
          v172 = 0;
        }

        v173 = v172;
      }

      else
      {
        v173 = 0.0;
      }

      v189 = __exp10(v173);
      v190 = (v189 * (v23 / v189));
      *(v17 + 40) = v190;
      v191 = "small";
      if (v190 >= 4)
      {
        v191 = "medium";
        if (v190 >= 0xA)
        {
          if (v190 >= 0xF)
          {
            v191 = "very large";
          }

          else
          {
            v191 = "large";
          }
        }
      }

      std::string::assign(v17 + 7, v191);
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      boost::any::operator=<unsigned int &>();
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "numOnMeshPrefixes"))
    {
      if (v23)
      {
        v175 = log10(v23) + 1.0;
        v176 = v175 - 3;
        if (v175 <= 3)
        {
          v176 = 0;
        }

        v177 = v176;
      }

      else
      {
        v177 = 0.0;
      }

      v198 = __exp10(v177);
      *(v17 + 41) = (v198 * (v23 / v198));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "last_known_device_role"))
    {
      v186 = xpc_dictionary_get_string(v16, "value");
      std::string::basic_string[abi:ne200100]<0>(&__str, v186);
      memset(&v206, 0, sizeof(v206));
      std::string::operator=(v17 + 8, &__str);
      v187 = &s_CATriggerBasedInternalDB + 13848 * byte_10052A8F2;
      v188 = v187[215];
      if (v188 < 0)
      {
        v188 = *(v187 + 25);
      }

      if (v188)
      {
        v205 = buf;
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
        boost::any::operator=<std::string &>();
      }

      std::string::assign(&v206, "unknown");
      v205 = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      boost::any::operator=<std::string &>();
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "statsTimestamp"))
    {
      *(v17 + 18) = v23;
      v195 = *(&s_CATriggerBasedInternalDB + 1731 * byte_10052A8F2 + 18);
      v196 = v23 - v195;
      if (v195)
      {
        v197 = v196;
      }

      else
      {
        v197 = 0;
      }

      *(v17 + 19) = v197;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      boost::any::operator=<unsigned long long &>();
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "ca_trigger_based_counters_num_firmware_resets"))
    {
      *(v17 + 54) = v23;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "ca_trigger_based_counters_num_daemon_restart_due_to_reboots"))
    {
      *(v17 + 55) = v23;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "ca_trigger_based_counters_num_daemon_restart_due_to_crashes_or_jetsams"))
    {
      *(v17 + 56) = v23;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "is_border_router_advertised"))
    {
      v17[228] = v23 != 0;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_367;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "is_anycast_srp_service_advertised"))
    {
      v17[231] = v23 != 0;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_367;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "is_unicast_srp_service_advertised"))
    {
      v17[230] = v23 != 0;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
LABEL_367:
      boost::any::operator=<BOOL &>();
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "num_anycast_srp_services_advertised"))
    {
      *(v17 + 60) = v23;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "num_unicast_srp_services_advertised"))
    {
      *(v17 + 59) = v23;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "num_border_routers_advertised"))
    {
      *(v17 + 31) = v23;
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      goto LABEL_276;
    }

    if (v208 < 0)
    {
      operator delete(*buf);
    }

    if (count == ++v15)
    {
      goto LABEL_5;
    }
  }

  v26 = *&buf[8];
  if (*&buf[8] == 16)
  {
    if (**buf == 0x6F725F646C696863 && *(*buf + 8) == 0x746E756F635F656CLL)
    {
LABEL_124:
      v60 = uint64;
      v61 = 0.0;
      v62 = 0.0;
      if (uint64)
      {
        v63 = log10(uint64) + 1.0;
        v64 = v63 - 3;
        if (v63 <= 3)
        {
          v64 = 0;
        }

        v62 = v64;
      }

      v65 = __exp10(v62);
      *(v17 + 16) = (v65 * (v60 / v65));
      v66 = *(&s_CATriggerBasedInternalDB + 3462 * byte_10052A8F2 + 16);
      if (v66)
      {
        v67 = log10(v66) + 1.0;
        v68 = v67 - 3;
        if (v67 <= 3)
        {
          v68 = 0;
        }

        v61 = v68;
      }

      __exp10(v61);
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      operator new();
    }

    v26 = *&buf[8];
  }

  else if (*&buf[8] == 19)
  {
    if (**buf == 0x64656C6261736964 && *(*buf + 8) == 0x6F635F656C6F725FLL && *(*buf + 11) == 0x746E756F635F656CLL)
    {
LABEL_167:
      v81 = uint64;
      if (uint64)
      {
        v82 = log10(uint64) + 1.0;
        v83 = v82 - 3;
        if (v82 <= 3)
        {
          v83 = 0;
        }

        v84 = v83;
      }

      else
      {
        v84 = 0.0;
      }

      v98 = __exp10(v84);
      *(v17 + 14) = (v98 * (v81 / v98));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      operator new();
    }

    if (**buf == 0x6465686361746564 && *(*buf + 8) == 0x6F635F656C6F725FLL && *(*buf + 11) == 0x746E756F635F656CLL)
    {
LABEL_179:
      v93 = uint64;
      if (uint64)
      {
        v94 = log10(uint64) + 1.0;
        v95 = v94 - 3;
        if (v94 <= 3)
        {
          v95 = 0;
        }

        v96 = v95;
      }

      else
      {
        v96 = 0.0;
      }

      v101 = __exp10(v96);
      *(v17 + 15) = (v101 * (v93 / v101));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      operator new();
    }
  }

  if (v26 == 17)
  {
    v32 = **buf == 0x725F726574756F72 && *(*buf + 8) == 0x6E756F635F656C6FLL;
    if (v32 && *(*buf + 16) == 116)
    {
LABEL_163:
      v77 = uint64;
      if (uint64)
      {
        v78 = log10(uint64) + 1.0;
        v79 = v78 - 3;
        if (v78 <= 3)
        {
          v79 = 0;
        }

        v80 = v79;
      }

      else
      {
        v80 = 0.0;
      }

      v97 = __exp10(v80);
      *(v17 + 17) = (v97 * (v77 / v97));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      operator new();
    }
  }

  v34 = *&buf[8];
  if (*&buf[8] == 17)
  {
    if (**buf == 0x725F72656461656CLL && *(*buf + 8) == 0x6E756F635F656C6FLL && *(*buf + 16) == 116)
    {
LABEL_175:
      v89 = uint64;
      if (uint64)
      {
        v90 = log10(uint64) + 1.0;
        v91 = v90 - 3;
        if (v90 <= 3)
        {
          v91 = 0;
        }

        v92 = v91;
      }

      else
      {
        v92 = 0.0;
      }

      v100 = __exp10(v92);
      *(v17 + 18) = (v100 * (v89 / v100));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      operator new();
    }

    v34 = *&buf[8];
  }

  if (v34 == 15)
  {
    v24 = *buf;
    goto LABEL_71;
  }

LABEL_75:
  if (v208 < 0 && *&buf[8] == 26)
  {
    if (**buf == 0x6F69746974726170 && *(*buf + 8) == 0x6168635F64695F6ELL && *(*buf + 16) == 0x756F635F7365676ELL && *(*buf + 24) == 29806)
    {
      v43 = uint64;
      if (uint64)
      {
        v44 = log10(uint64) + 1.0;
        v45 = v44 - 3;
        if (v44 <= 3)
        {
          v45 = 0;
        }

        v46 = v45;
      }

      else
      {
        v46 = 0.0;
      }

      v105 = __exp10(v46);
      *(v17 + 20) = (v105 * (v43 / v105));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      operator new();
    }

    goto LABEL_218;
  }

  if (v208 < 0 && *&buf[8] == 32)
  {
    if (**buf == 0x705F726574746562 && *(*buf + 8) == 0x6E6F697469747261 && *(*buf + 16) == 0x5F6863617474615FLL && *(*buf + 24) == 0x7374706D65747461)
    {
      v56 = uint64;
      if (uint64)
      {
        v57 = log10(uint64) + 1.0;
        v58 = v57 - 3;
        if (v57 <= 3)
        {
          v58 = 0;
        }

        v59 = v58;
      }

      else
      {
        v59 = 0.0;
      }

      v106 = __exp10(v59);
      *(v17 + 21) = (v106 * (v56 / v106));
      __str.__r_.__value_.__r.__words[0] = buf;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, buf);
      operator new();
    }

    goto LABEL_218;
  }

  if (v208 < 0)
  {
    if (*&buf[8] != 11)
    {
      if (*&buf[8] == 20)
      {
        v102 = **buf == 0x635F746E65726170 && *(*buf + 8) == 0x635F7365676E6168;
        if (v102 && *(*buf + 16) == 1953396079)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_218;
    }

    v24 = *buf;
  }

  else
  {
    if (v208 != 11)
    {
      goto LABEL_218;
    }

    v24 = buf;
  }

  goto LABEL_214;
}

void sub_100058344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v37 - 137) < 0)
  {
    operator delete(*(v37 - 160));
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(a24, *(a24 + 8));

  _Unwind_Resume(a1);
}

uint64_t CAMetricsHandlers_handle_get_CTCSNumberOfThirdPartyBRs(unsigned int *a1)
{
  if (a1)
  {
    *a1 = dword_10052AD94;
  }

  return 0;
}

uint64_t CAMetricsHandlers_handle_get_CTCSNumberOfPreferredNWs(unsigned int *a1, unsigned int *a2)
{
  if (a1 && a2)
  {
    *a1 = dword_10052AD9C;
    *a2 = dword_10052ADA0;
  }

  return 0;
}

void CAMetricsHandlers_Get_HealthInfo(void)
{
  memset(&v35, 0, sizeof(v35));
  std::string::append(&v35, "Daemon Restart = ");
  std::to_string(&v34, dword_10052AC28);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v0 = &v34;
  }

  else
  {
    v0 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  std::string::append(&v35, v0, size);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::string::append(&v35, ". ");
  std::string::append(&v35, "RCP FW Resets = ");
  std::to_string(&v34, xmmword_10052AC2C);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v34;
  }

  else
  {
    v2 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v3 = v34.__r_.__value_.__l.__size_;
  }

  std::string::append(&v35, v2, v3);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::string::append(&v35, ". ");
  std::string::append(&v35, "Time since last reset= ");
  if (!xmmword_10052AC2C)
  {
    std::string::append(&v35, "N.A");
    goto LABEL_80;
  }

  v4 = qword_10052AC40;
  if (qword_10052AC40 >= 0xE3C7A73401)
  {
    v4 = (qword_10052AC40 - 978307200000) / 0x3E8uLL;
  }

  v5 = CFAbsoluteTimeGetCurrent() - v4;
  if (v5 > 0.0)
  {
    std::to_string(&v34, v5);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v34;
    }

    else
    {
      v6 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = v34.__r_.__value_.__l.__size_;
    }

    std::string::append(&v35, v6, v7);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    std::string::append(&v35, "sec. ");
  }

  std::to_string(&v32, DWORD1(xmmword_10052AC2C));
  v8 = std::string::insert(&v32, 0, "#Asserts= ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v33, ". ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v34;
  }

  else
  {
    v12 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v34.__r_.__value_.__l.__size_;
  }

  std::string::append(&v35, v12, v13);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_38:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

LABEL_70:
      operator delete(v32.__r_.__value_.__l.__data_);
LABEL_39:
      std::to_string(&v32, DWORD2(xmmword_10052AC2C));
      v14 = std::string::insert(&v32, 0, "#HardFaults= ");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = std::string::append(&v33, ". ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v34;
      }

      else
      {
        v18 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v34.__r_.__value_.__l.__size_;
      }

      std::string::append(&v35, v18, v19);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_47:
          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

LABEL_73:
          operator delete(v32.__r_.__value_.__l.__data_);
LABEL_48:
          std::to_string(&v32, HIDWORD(xmmword_10052AC2C));
          v20 = std::string::insert(&v32, 0, "#StackOverflows= ");
          v21 = *&v20->__r_.__value_.__l.__data_;
          v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&v33.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          v22 = std::string::append(&v33, ". ");
          v23 = *&v22->__r_.__value_.__l.__data_;
          v34.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
          *&v34.__r_.__value_.__l.__data_ = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &v34;
          }

          else
          {
            v24 = v34.__r_.__value_.__r.__words[0];
          }

          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v25 = v34.__r_.__value_.__l.__size_;
          }

          std::string::append(&v35, v24, v25);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_56:
              if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_57;
              }

LABEL_76:
              operator delete(v32.__r_.__value_.__l.__data_);
LABEL_57:
              std::to_string(&v32, dword_10052AC3C);
              v26 = std::string::insert(&v32, 0, "#UnknownFaults= ");
              v27 = *&v26->__r_.__value_.__l.__data_;
              v33.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
              *&v33.__r_.__value_.__l.__data_ = v27;
              v26->__r_.__value_.__l.__size_ = 0;
              v26->__r_.__value_.__r.__words[2] = 0;
              v26->__r_.__value_.__r.__words[0] = 0;
              v28 = std::string::append(&v33, ". ");
              v29 = *&v28->__r_.__value_.__l.__data_;
              v34.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
              *&v34.__r_.__value_.__l.__data_ = v29;
              v28->__r_.__value_.__l.__size_ = 0;
              v28->__r_.__value_.__r.__words[2] = 0;
              v28->__r_.__value_.__r.__words[0] = 0;
              if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v30 = &v34;
              }

              else
              {
                v30 = v34.__r_.__value_.__r.__words[0];
              }

              if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v31 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v31 = v34.__r_.__value_.__l.__size_;
              }

              std::string::append(&v35, v30, v31);
              if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v34.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_65:
                  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_80;
                  }

LABEL_79:
                  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_80:
                  operator new();
                }
              }

              else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_65;
              }

              operator delete(v33.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }
          }

          else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          operator delete(v33.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_76;
        }
      }

      else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      operator delete(v33.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_73;
    }
  }

  else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  goto LABEL_70;
}

void sub_100058AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  _Unwind_Resume(exception_object);
}

double CAMetricsHandlers_handle_restore_stabilityData(void)
{
  v0 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "CAMetrics : Inside CAMetricsHandlers_handle_restore_stabilityData", v2, 2u);
  }

  result = *&stability_settings;
  xmmword_10052AC2C = stability_settings;
  dword_10052AC3C = xmmword_1004E5768;
  qword_10052AC40 = *(&xmmword_1004E5768 + 1);
  return result;
}

void CAMetricsHandlers_handle_restore_daemon_reset(void)
{
  v0 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "CAMetrics : Inside CAMetricsHandlers_handle_restore_daemon_reset", __p, 2u);
  }

  v4 = 18;
  strcpy(__p, "num_daemon_restart");
  v5 = __p;
  v1 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
  v2 = (v1 + 7);
  if ((*(v1 + 79) & 0x80000000) == 0)
  {
    dword_10052AC28 = atoi(v2);
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(*__p);
    return;
  }

  dword_10052AC28 = atoi(*v2);
  if (v4 < 0)
  {
    goto LABEL_7;
  }
}

void sub_100058DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double CAMetricsHandlers_handle_reset_stabilityData(void)
{
  xmmword_10052AC2C = 0uLL;
  dword_10052AC3C = 0;
  qword_10052AC40 = 0x7FFFFFFFFFFFFFFFLL;
  result = 0.0;
  *&qword_10052AC48 = 0u;
  *&algn_10052AC50[8] = 0u;
  return result;
}

uint64_t CAMetricsHandlers_handle_getprop_connectednodes(void *a1, void *a2)
{
  object = a1;
  v3 = a2;
  memset(v55, 0, 96);
  memset(v54, 0, sizeof(v54));
  v46 = v3;
  v50 = +[NSMutableArray array];
  v49 = +[NSMutableArray array];
  if (xpc_get_type(object) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_connectednodes();
    }

    v5 = 0;
    v6 = 1;
    goto LABEL_101;
  }

  count = xpc_array_get_count(object);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CAMetrics : ConnectedNodesHistogram array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = xpc_array_get_dictionary(object, v8);

      v11 = v10;
      v51 = v10;
      string = xpc_dictionary_get_string(v10, "key");
      v13 = strlen(string);
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v13;
      if (v13)
      {
        memmove(&buf, string, v13);
      }

      buf.__r_.__value_.__s.__data_[v14] = 0;
      uint64 = xpc_dictionary_get_uint64(v11, "value");
      v15 = std::string::find(&buf, 91, 0);
      v16 = std::string::find(&buf, 93, 0);
      v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v18 = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = buf.__r_.__value_.__l.__size_;
      }

      v22 = (p_buf + v21);
      if (v21 > 19)
      {
        v23 = v21;
        v24 = p_buf;
        do
        {
          v25 = memchr(v24, 67, v23 - 19);
          if (!v25)
          {
            break;
          }

          if (v25->__r_.__value_.__r.__words[0] == 0x657463656E6E6F43 && v25->__r_.__value_.__l.__size_ == 0x43726574756F5264 && LODWORD(v25->__r_.__value_.__r.__words[2]) == 1953396079)
          {
            goto LABEL_35;
          }

          v24 = (&v25->__r_.__value_.__l.__data_ + 1);
          v23 = v22 - v24;
        }

        while (v22 - v24 > 19);
      }

      v25 = (p_buf + v21);
LABEL_35:
      v29 = v25 != v22 && v25 == p_buf;
      if (v21 >= 19)
      {
        v30 = p_buf;
        do
        {
          v31 = memchr(v30, 67, v21 - 18);
          if (!v31)
          {
            break;
          }

          if (v31->__r_.__value_.__r.__words[0] == 0x657463656E6E6F43 && v31->__r_.__value_.__l.__size_ == 0x6F43646C69684364 && *(&v31->__r_.__value_.__r.__words[1] + 3) == 0x746E756F43646C69)
          {
            goto LABEL_53;
          }

          v30 = (&v31->__r_.__value_.__l.__data_ + 1);
          v21 = v22 - v30;
        }

        while (v22 - v30 > 18);
      }

      v31 = v22;
LABEL_53:
      v34 = v15 != -1 && v29;
      if (v34 && v16 != -1)
      {
        break;
      }

      if (v31 != v22 && v31 == p_buf && v15 != -1 && v16 != -1)
      {
        if ((v17 & 0x80000000) != 0)
        {
          if (size <= v15)
          {
LABEL_105:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v15 >= v17)
          {
            goto LABEL_105;
          }

          v18 = &buf;
          size = v17;
        }

        if (size - (v15 + 1) >= v16 - 1)
        {
          v39 = v16 - 1;
        }

        else
        {
          v39 = size - (v15 + 1);
        }

        if (v39 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v39 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v39;
        if (v39)
        {
          memmove(&__dst, &v18->__r_.__value_.__l.__data_ + v15 + 1, v39);
        }

        __dst.__r_.__value_.__s.__data_[v39] = 0;
        v40 = std::stoi(&__dst, 0, 10);
        if ((v40 & 0xF8u) <= 0x17)
        {
          v37 = v40;
          v38 = v54;
LABEL_94:
          *&v38[4 * v37] = uint64;
        }

LABEL_95:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        ++v8;
        v3 = v46;
        v9 = v51;
        if (v8 == count)
        {
          goto LABEL_98;
        }
      }

      else
      {
        ++v8;
        v3 = v46;
        v9 = v51;
        if (v8 == count)
        {
          goto LABEL_98;
        }
      }
    }

    if ((v17 & 0x80000000) != 0)
    {
      if (size <= v15)
      {
LABEL_103:
        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else
    {
      if (v15 >= v17)
      {
        goto LABEL_103;
      }

      v18 = &buf;
      size = v17;
    }

    if (size - (v15 + 1) >= v16 - 1)
    {
      v35 = v16 - 1;
    }

    else
    {
      v35 = size - (v15 + 1);
    }

    if (v35 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v35;
    if (v35)
    {
      memmove(&__dst, &v18->__r_.__value_.__l.__data_ + v15 + 1, v35);
    }

    __dst.__r_.__value_.__s.__data_[v35] = 0;
    v36 = std::stoi(&__dst, 0, 10);
    if ((v36 & 0xF8u) <= 0x17)
    {
      v37 = v36;
      v38 = v55;
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v9 = 0;
LABEL_98:
  v5 = v9;
  for (i = 0; i != 96; i += 4)
  {
    v42 = [NSNumber numberWithUnsignedInt:*&v55[i], count];
    [v50 addObject:v42];

    v43 = [NSNumber numberWithUnsignedInt:*(v54 + i)];
    [v49 addObject:v43];
  }

  [v3 setObject:v49 forKey:@"child_nodes_count"];
  [v3 setObject:v50 forKey:@"router_nodes_count"];
  v6 = 0;
LABEL_101:

  return v6;
}

uint64_t CAMetricsHandlers_meshcop_nwparams_update(char a1, int a2, int a3, char a4, int a5)
{
  byte_10052A970 = a1;
  dword_10052A968 = a3;
  dword_10052A96C = a2;
  byte_10052A971 = a4;
  dword_10052A974 = a5;
  return 1;
}

uint64_t CAMetricsHandlers_ctcsmetrics_update(int a1, int a2, int a3)
{
  v4 = dword_10052AD94 == a1 && dword_10052AD9C == a2 && dword_10052ADA0 == a3;
  v5 = !v4;
  if (!v4)
  {
    dword_10052AD94 = a1;
    dword_10052AD9C = a2;
    dword_10052ADA0 = a3;
  }

  return v5;
}

void CAMetricsHandlers_topologymetrics_update(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v6 = a2 + a1 + a3;
  if (dword_10052AD80 == v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
    if (v6)
    {
      v9 = log10(v6) + 1.0;
      v10 = v9 - 4;
      if (v9 <= 4)
      {
        v10 = 0;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = __exp10(v11);
    v13 = [NSNumber numberWithUnsignedInt:(v12 * (v6 / v12))];
    [v8 setObject:v13 forKey:@"total_nodes"];

    if (a1)
    {
      v14 = log10(a1) + 1.0;
      v15 = v14 - 4;
      if (v14 <= 4)
      {
        v15 = 0;
      }

      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    v17 = __exp10(v16);
    v18 = [NSNumber numberWithUnsignedInt:(v17 * (a1 / v17))];
    [v8 setObject:v18 forKey:@"total_routers"];

    if (a2)
    {
      v19 = log10(a2) + 1.0;
      v20 = v19 - 4;
      if (v19 <= 4)
      {
        v20 = 0;
      }

      v21 = v20;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = __exp10(v21);
    v23 = [NSNumber numberWithUnsignedInt:(v22 * (a2 / v22))];
    [v8 setObject:v23 forKey:@"total_fed"];

    if (a3)
    {
      v24 = log10(a3) + 1.0;
      v25 = v24 - 4;
      if (v24 <= 4)
      {
        v25 = 0;
      }

      v26 = v25;
    }

    else
    {
      v26 = 0.0;
    }

    v27 = __exp10(v26);
    v28 = [NSNumber numberWithUnsignedInt:(v27 * (a3 / v27))];
    [v8 setObject:v28 forKey:@"total_sed"];

    v7 = v6 - dword_10052AD80;
    v29 = (v6 - dword_10052AD80);
    if (v6 == dword_10052AD80)
    {
      v32 = 0.0;
    }

    else
    {
      v30 = log10(v7) + 1.0;
      v31 = v30 - 4;
      if (v30 <= 4)
      {
        v31 = 0;
      }

      v32 = v31;
    }

    v33 = __exp10(v32);
    v34 = [NSNumber numberWithUnsignedInt:(v33 * (v29 / v33))];
    [v8 setObject:v34 forKey:@"total_node_changes"];

    v36 = v8;
    AnalyticsSendEventLazy();
    dword_10052AD80 = v6;
    unk_10052AD84 = a1;
    dword_10052AD88 = a3;
    unk_10052AD8C = a2;
  }

  v35 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 67110400;
    v38 = v6;
    v39 = 1024;
    v40 = a1;
    v41 = 1024;
    v42 = a2;
    v43 = 1024;
    v44 = a3;
    v45 = 1024;
    v46 = dword_10052AD74;
    v47 = 1024;
    v48 = v7;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "CAMetricsHandlers_topologymetrics_update::updateTopologyStats - totalNodes=%d totalRouters=%d totalFed=%d totalSed=%d mPrevTotalNodes=%d totalNodeChanges=%d", buf, 0x26u);
  }
}

void CAMetricsHandlers_handle_srp_update(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = dword_10052A968;
  v7 = byte_10052A971;
  v8 = +[NSMutableDictionary dictionary];
  v9 = a1;
  if (*(a1 + 23) < 0)
  {
    v9 = *a1;
  }

  v10 = [NSString stringWithUTF8String:v9];
  [v8 setObject:v10 forKey:@"type"];

  v11 = [NSNumber numberWithUnsignedInt:a2];
  [v8 setObject:v11 forKey:@"duration"];

  v12 = [NSNumber numberWithUnsignedInt:v6];
  [v8 setObject:v12 forKey:@"thirdparty_br_count"];

  if (v7)
  {
    [NSNumber numberWithBool:0];
  }

  else
  {
    [NSNumber numberWithBool:1];
  }
  v13 = ;
  [v8 setObject:v13 forKey:@"is_thirdparty_leader"];

  if (a3)
  {
    [NSNumber numberWithBool:0];
  }

  else
  {
    [NSNumber numberWithBool:1];
  }
  v14 = ;
  [v8 setObject:v14 forKey:@"is_first_hour"];

  v15 = v8;
  AnalyticsSendEventLazy();
  v16 = log_get_logging_obg("com.apple.wpantund.nm", "default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    *buf = 136315394;
    v18 = a1;
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "type[%s] flagstoneSrpServiceConvergenceDuration[%d sec]", buf, 0x12u);
  }
}

uint64_t get_homekit_metrics_index(unsigned int a1)
{
  if (a1 < 0x15)
  {
    v1 = 6;
  }

  else
  {
    v1 = 7;
  }

  if (a1 >= 0xB)
  {
    v2 = v1;
  }

  else
  {
    v2 = 5;
  }

  if (a1 < 5)
  {
    return a1;
  }

  return v2;
}

void CAMetricsHandlers_handle_periodic_netdata_update(unsigned int *a1)
{
  v3 = dword_10052A968;
  v2 = dword_10052A96C;
  v4 = byte_10052A971;
  word_10052AD90 = *(a1 + 30);
  word_10052AD92 = *(a1 + 39);
  v5 = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithUnsignedInt:a1[2]];
  [v5 setObject:v6 forKey:@"netdata_srp_unicast_multi_sec"];

  v7 = [NSNumber numberWithUnsignedInt:a1[1]];
  [v5 setObject:v7 forKey:@"netdata_srp_unicast_one_sec"];

  v8 = [NSNumber numberWithUnsignedInt:*a1];
  [v5 setObject:v8 forKey:@"netdata_srp_unicast_zero_sec"];

  v9 = [NSNumber numberWithUnsignedInt:a1[5]];
  [v5 setObject:v9 forKey:@"netdata_srp_anycast_multi_sec"];

  v10 = [NSNumber numberWithUnsignedInt:a1[4]];
  [v5 setObject:v10 forKey:@"netdata_srp_anycast_one_sec"];

  v11 = [NSNumber numberWithUnsignedInt:a1[3]];
  [v5 setObject:v11 forKey:@"netdata_srp_anycast_zero_sec"];

  v12 = [NSNumber numberWithUnsignedInt:a1[8]];
  [v5 setObject:v12 forKey:@"netdata_srp_prefix_multi_sec"];

  v13 = [NSNumber numberWithUnsignedInt:a1[7]];
  [v5 setObject:v13 forKey:@"netdata_srp_prefix_one_sec"];

  v14 = [NSNumber numberWithUnsignedInt:a1[6]];
  [v5 setObject:v14 forKey:@"netdata_srp_prefix_zero_sec"];

  v15 = [NSNumber numberWithUnsignedInt:a1[11]];
  [v5 setObject:v15 forKey:@"netdata_misc_max_netdata_size"];

  v16 = [NSNumber numberWithUnsignedInt:a1[9]];
  [v5 setObject:v16 forKey:@"netdata_misc_netdata_converged_duration_sec"];

  v17 = [NSNumber numberWithUnsignedInt:a1[12]];
  [v5 setObject:v17 forKey:@"netdata_misc_partition_changes"];

  v18 = [NSNumber numberWithUnsignedInt:a1[14]];
  [v5 setObject:v18 forKey:@"netdata_misc_interval_count"];

  v19 = [NSNumber numberWithUnsignedInt:v3];
  [v5 setObject:v19 forKey:@"netdata_common_thirdparty_br_count"];

  v20 = [NSNumber numberWithUnsignedInt:v2];
  [v5 setObject:v20 forKey:@"netdata_common_apple_br_count"];

  v21 = [NSNumber numberWithUnsignedInt:*(a1 + 52)];
  [v5 setObject:v21 forKey:@"netdata_common_primary_resident_change"];

  v22 = v4 ^ 1;
  v23 = [NSNumber numberWithUnsignedInt:v4 ^ 1u];
  [v5 setObject:v23 forKey:@"netdata_common_thirdparty_leader"];

  v24 = [NSNumber numberWithUnsignedInt:*(a1 + 30)];
  [v5 setObject:v24 forKey:@"nm_netdata_matter_resolved_services"];

  v25 = [NSNumber numberWithUnsignedInt:*(a1 + 31)];
  [v5 setObject:v25 forKey:@"netdata_matter_ping_initiated"];

  v26 = [NSNumber numberWithUnsignedInt:*(a1 + 32)];
  [v5 setObject:v26 forKey:@"netdata_matter_ping_success"];

  v27 = [NSNumber numberWithUnsignedInt:*(a1 + 38)];
  [v5 setObject:v27 forKey:@"netdata_matter_ping_response_percent"];

  v28 = [NSNumber numberWithUnsignedInt:*(a1 + 35)];
  [v5 setObject:v28 forKey:@"netdata_matter_ping_avg_min_rtt_msec"];

  v29 = [NSNumber numberWithUnsignedInt:*(a1 + 36)];
  [v5 setObject:v29 forKey:@"netdata_matter_ping_avg_max_rtt_msec"];

  v30 = [NSNumber numberWithUnsignedInt:*(a1 + 37)];
  [v5 setObject:v30 forKey:@"netdata_matter_ping_avg_rtt_msec"];

  v31 = [NSNumber numberWithUnsignedInt:a1[35]];
  [v5 setObject:v31 forKey:@"nm_netdata_matter_subscription_count"];

  v32 = [NSNumber numberWithUnsignedInt:*(a1 + 39)];
  [v5 setObject:v32 forKey:@"nm_netdata_hap_resolved_services"];

  v33 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  [v5 setObject:v33 forKey:@"netdata_hap_ping_initiated"];

  v34 = [NSNumber numberWithUnsignedInt:*(a1 + 41)];
  [v5 setObject:v34 forKey:@"netdata_hap_ping_success"];

  v35 = [NSNumber numberWithUnsignedInt:*(a1 + 47)];
  [v5 setObject:v35 forKey:@"netdata_hap_ping_response_percent"];

  v36 = [NSNumber numberWithUnsignedInt:*(a1 + 44)];
  [v5 setObject:v36 forKey:@"netdata_hap_ping_avg_min_rtt_msec"];

  v37 = [NSNumber numberWithUnsignedInt:*(a1 + 45)];
  [v5 setObject:v37 forKey:@"netdata_hap_ping_avg_max_rtt_msec"];

  v38 = [NSNumber numberWithUnsignedInt:*(a1 + 46)];
  [v5 setObject:v38 forKey:@"netdata_hap_ping_avg_rtt_msec"];

  v39 = [NSNumber numberWithUnsignedInt:*(a1 + 53)];
  [v5 setObject:v39 forKey:@"netdata_rcp_state"];

  v40 = [NSNumber numberWithUnsignedInt:a1[10]];
  [v5 setObject:v40 forKey:@"netdata_rcp_state_associated_duration_sec"];

  v41 = [NSNumber numberWithUnsignedInt:*(a1 + 96)];
  [v5 setObject:v41 forKey:@"devices_response_count"];

  v42 = [NSNumber numberWithUnsignedInt:*(a1 + 97)];
  [v5 setObject:v42 forKey:@"devices_status_green"];

  v43 = [NSNumber numberWithUnsignedInt:*(a1 + 98)];
  [v5 setObject:v43 forKey:@"devices_status_orange"];

  v44 = [NSNumber numberWithUnsignedInt:*(a1 + 99)];
  [v5 setObject:v44 forKey:@"devices_status_red"];

  v45 = [NSNumber numberWithUnsignedInt:*(a1 + 100)];
  [v5 setObject:v45 forKey:@"devices_stability_rebooted"];

  v46 = [NSNumber numberWithUnsignedInt:*(a1 + 101)];
  [v5 setObject:v46 forKey:@"devices_stability_software_updated"];

  v47 = [NSNumber numberWithUnsignedInt:*(a1 + 102)];
  [v5 setObject:v47 forKey:@"devices_stability_daemon_crash"];

  v48 = [NSNumber numberWithUnsignedInt:*(a1 + 103)];
  [v5 setObject:v48 forKey:@"devices_stability_firmware_reset"];

  v49 = [NSNumber numberWithUnsignedInt:*(a1 + 104)];
  [v5 setObject:v49 forKey:@"devices_data_stall_buffer_full"];

  v50 = [NSNumber numberWithUnsignedInt:*(a1 + 105)];
  [v5 setObject:v50 forKey:@"devices_data_stall_radio_tx_timeout"];

  v51 = [NSNumber numberWithUnsignedInt:*(a1 + 106)];
  [v5 setObject:v51 forKey:@"devices_data_stall_high_tx_failure_rate"];

  v52 = [NSNumber numberWithUnsignedInt:*(a1 + 107)];
  [v5 setObject:v52 forKey:@"devices_data_stall_high_rx_failure_rate"];

  v53 = [NSNumber numberWithUnsignedInt:*(a1 + 108)];
  [v5 setObject:v53 forKey:@"devices_data_stall_tx_matter_dup_packets"];

  v54 = [NSNumber numberWithUnsignedInt:*(a1 + 109)];
  [v5 setObject:v54 forKey:@"devices_data_stall_rx_matter_dup_packets"];

  v55 = [NSNumber numberWithUnsignedInt:*(a1 + 110)];
  [v5 setObject:v55 forKey:@"devices_data_stall_high_matter_err_rate"];

  v56 = [NSNumber numberWithUnsignedInt:*(a1 + 111)];
  [v5 setObject:v56 forKey:@"devices_data_stall_medium_matter_err_rate"];

  v57 = [NSNumber numberWithUnsignedInt:*(a1 + 112)];
  [v5 setObject:v57 forKey:@"devices_data_stall_tx_hap_dup_packets"];

  v58 = [NSNumber numberWithUnsignedInt:*(a1 + 113)];
  [v5 setObject:v58 forKey:@"devices_data_stall_rx_hap_dup_packets"];

  v59 = [NSNumber numberWithUnsignedInt:*(a1 + 114)];
  [v5 setObject:v59 forKey:@"devices_data_stall_high_hap_err_rate"];

  v60 = [NSNumber numberWithUnsignedInt:*(a1 + 115)];
  [v5 setObject:v60 forKey:@"devices_data_stall_medium_hap_err_rate"];

  v61 = [NSNumber numberWithUnsignedInt:*(a1 + 116)];
  [v5 setObject:v61 forKey:@"devices_link_tx_coex_denied_high"];

  v62 = [NSNumber numberWithUnsignedInt:*(a1 + 117)];
  [v5 setObject:v62 forKey:@"devices_link_rx_coex_denied_high"];

  v63 = [NSNumber numberWithUnsignedInt:*(a1 + 118)];
  [v5 setObject:v63 forKey:@"devices_link_cca_failure_rate_high"];

  v64 = [NSNumber numberWithUnsignedInt:*(a1 + 119)];
  [v5 setObject:v64 forKey:@"devices_link_address_query_failure"];

  v65 = [NSNumber numberWithUnsignedInt:*(a1 + 120)];
  [v5 setObject:v65 forKey:@"devices_link_security_error_router_15_4"];

  v66 = [NSNumber numberWithUnsignedInt:*(a1 + 121)];
  [v5 setObject:v66 forKey:@"devices_link_security_error_router_trel"];

  v67 = [NSNumber numberWithUnsignedInt:*(a1 + 122)];
  [v5 setObject:v67 forKey:@"devices_link_security_error_child_rx"];

  v68 = [NSNumber numberWithUnsignedInt:*(a1 + 123)];
  [v5 setObject:v68 forKey:@"devices_trel_enabled"];

  v69 = [NSNumber numberWithUnsignedInt:*(a1 + 124)];
  [v5 setObject:v69 forKey:@"devices_trel_interface_changes"];

  v70 = [NSNumber numberWithUnsignedInt:*(a1 + 125)];
  [v5 setObject:v70 forKey:@"devices_children_sed_count"];

  v71 = [NSNumber numberWithUnsignedInt:*(a1 + 126)];
  [v5 setObject:v71 forKey:@"devices_children_ssed_count"];

  v72 = [NSNumber numberWithUnsignedInt:*(a1 + 127)];
  [v5 setObject:v72 forKey:@"devices_children_fed_count"];

  v73 = [NSNumber numberWithUnsignedInt:*(a1 + 128)];
  [v5 setObject:v73 forKey:@"devices_children_no_traffic_count"];

  v74 = [NSNumber numberWithUnsignedInt:*(a1 + 129)];
  [v5 setObject:v74 forKey:@"devices_children_rx_packet_reassembly_Timout"];

  v75 = [NSNumber numberWithUnsignedInt:*(a1 + 130)];
  [v5 setObject:v75 forKey:@"devices_link_num_sed_queue_size_high"];

  v76 = [NSNumber numberWithUnsignedInt:*(a1 + 131)];
  [v5 setObject:v76 forKey:@"devices_link_num_sed_last_heard_gap_high"];

  v77 = *(a1 + 132);
  if (v77 >= 5)
  {
    if (v77 >= 0xB)
    {
      if (v77 < 0x15)
      {
        v77 = 6;
      }

      else
      {
        v77 = 7;
      }
    }

    else
    {
      v77 = 5;
    }
  }

  v78 = [NSNumber numberWithUnsignedInt:v77];
  [v5 setObject:v78 forKey:@"homekit_num_residents"];

  v79 = *(a1 + 133);
  if (v79 >= 5)
  {
    if (v79 >= 0xB)
    {
      if (v79 < 0x15)
      {
        v79 = 6;
      }

      else
      {
        v79 = 7;
      }
    }

    else
    {
      v79 = 5;
    }
  }

  v80 = [NSNumber numberWithUnsignedInt:v79];
  [v5 setObject:v80 forKey:@"homekit_num_thread_capable_residents"];

  v81 = *(a1 + 134);
  if (v81 >= 5)
  {
    if (v81 >= 0xB)
    {
      if (v81 < 0x15)
      {
        v81 = 6;
      }

      else
      {
        v81 = 7;
      }
    }

    else
    {
      v81 = 5;
    }
  }

  v82 = [NSNumber numberWithUnsignedInt:v81];
  [v5 setObject:v82 forKey:@"homekit_num_hap_accessories"];

  v83 = *(a1 + 135);
  if (v83 >= 5)
  {
    if (v83 >= 0xB)
    {
      if (v83 < 0x15)
      {
        v83 = 6;
      }

      else
      {
        v83 = 7;
      }
    }

    else
    {
      v83 = 5;
    }
  }

  v84 = [NSNumber numberWithUnsignedInt:v83];
  [v5 setObject:v84 forKey:@"homekit_num_matter_accessories"];

  v85 = *(a1 + 136);
  if (v85 >= 5)
  {
    if (v85 >= 0xB)
    {
      if (v85 < 0x15)
      {
        v85 = 6;
      }

      else
      {
        v85 = 7;
      }
    }

    else
    {
      v85 = 5;
    }
  }

  v86 = [NSNumber numberWithUnsignedInt:v85];
  [v5 setObject:v86 forKey:@"homekit_num_sleepy_hap_accessories"];

  v87 = *(a1 + 137);
  if (v87 >= 5)
  {
    if (v87 >= 0xB)
    {
      if (v87 < 0x15)
      {
        v87 = 6;
      }

      else
      {
        v87 = 7;
      }
    }

    else
    {
      v87 = 5;
    }
  }

  v88 = [NSNumber numberWithUnsignedInt:v87];
  [v5 setObject:v88 forKey:@"homekit_num_sleepy_matter_accessories"];

  v89 = v5;
  AnalyticsSendEventLazy();
  v90 = log_get_logging_obg("com.apple.wpantund.nm", "default");
  if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
  {
    v91 = a1[11];
    *buf = 67109888;
    v93 = v91;
    v94 = 1024;
    v95 = v3;
    v96 = 1024;
    v97 = v2;
    v98 = 1024;
    v99 = v22;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "periodic_netdata_update MaxSize[%d] numThirdPartyBRs[%d] numAppleBRs[%d] isThirdPartyLeader[%d] ", buf, 0x1Au);
  }
}

void CAMetricsHandlers_handle_matter_resident_reboot_update(unsigned __int16 *a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = a1[24];
  if (v3 == 2)
  {
    v4 = [NSString stringWithUTF8String:"swupdate"];
    [v2 setObject:v4 forKey:@"respawn_reason"];
  }

  else if (v3 == 1)
  {
    v4 = [NSString stringWithUTF8String:"crash"];
    [v2 setObject:v4 forKey:@"respawn_reason"];
  }

  else
  {
    if (a1[24])
    {
      [NSString stringWithUTF8String:"invalid"];
    }

    else
    {
      [NSString stringWithUTF8String:"reboot"];
    }
    v4 = ;
    [v2 setObject:v4 forKey:@"respawn_reason"];
  }

  if (a1[18])
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v5 = ;
  [v2 setObject:v5 forKey:@"is_primary"];

  if (*(a1 + 37))
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v6 = ;
  [v2 setObject:v6 forKey:@"was_primary"];

  v7 = a1[19];
  if (v7 == 9)
  {
    v8 = [NSString stringWithUTF8String:"child"];
    [v2 setObject:v8 forKey:@"current_role"];
  }

  else if (v7 == 7)
  {
    v8 = [NSString stringWithUTF8String:"leader"];
    [v2 setObject:v8 forKey:@"current_role"];
  }

  else
  {
    if (v7 == 1)
    {
      [NSString stringWithUTF8String:"router"];
    }

    else
    {
      [NSString stringWithUTF8String:"invalid"];
    }
    v8 = ;
    [v2 setObject:v8 forKey:@"current_role"];
  }

  v9 = a1[20];
  if (v9 == 9)
  {
    v10 = [NSString stringWithUTF8String:"child"];
    [v2 setObject:v10 forKey:@"last_role"];
  }

  else if (v9 == 7)
  {
    v10 = [NSString stringWithUTF8String:"leader"];
    [v2 setObject:v10 forKey:@"last_role"];
  }

  else
  {
    if (v9 == 1)
    {
      [NSString stringWithUTF8String:"router"];
    }

    else
    {
      [NSString stringWithUTF8String:"invalid"];
    }
    v10 = ;
    [v2 setObject:v10 forKey:@"last_role"];
  }

  v11 = [NSNumber numberWithUnsignedInt:a1[12]];
  [v2 setObject:v11 forKey:@"num_partition_changes"];

  if (a1[21])
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v12 = ;
  [v2 setObject:v12 forKey:@"is_converged"];

  v13 = [NSNumber numberWithUnsignedInt:*(a1 + 11)];
  [v2 setObject:v13 forKey:@"total_convergence_duration"];

  if (a1[13])
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v14 = ;
  [v2 setObject:v14 forKey:@"is_rcp_state_associated"];

  v15 = [NSNumber numberWithUnsignedInt:*(a1 + 8)];
  [v2 setObject:v15 forKey:@"rcp_state_associated_duration"];

  v16 = [NSNumber numberWithUnsignedInt:*(a1 + 7)];
  [v2 setObject:v16 forKey:@"rcp_state_time_to_last_associate"];

  v17 = [NSNumber numberWithUnsignedInt:*(a1 + 3)];
  [v2 setObject:v17 forKey:@"srp_anycast_converge_duration"];

  v18 = [NSNumber numberWithUnsignedInt:a1[4]];
  [v2 setObject:v18 forKey:@"srp_anycast_num_service"];

  v19 = [NSNumber numberWithUnsignedInt:*(a1 + 5)];
  [v2 setObject:v19 forKey:@"srp_prefix_converge_duration"];

  v20 = [NSNumber numberWithUnsignedInt:a1[8]];
  [v2 setObject:v20 forKey:@"srp_prefix_num_onmesh_prefix"];

  v21 = [NSNumber numberWithUnsignedInt:*(a1 + 1)];
  [v2 setObject:v21 forKey:@"srp_unicast_converge_duration"];

  v22 = [NSNumber numberWithUnsignedInt:*a1];
  [v2 setObject:v22 forKey:@"srp_unicast_num_service"];

  v23 = [NSNumber numberWithUnsignedInt:a1[32]];
  [v2 setObject:v23 forKey:@"matter_acc_converged"];

  v24 = [NSNumber numberWithUnsignedInt:a1[26]];
  [v2 setObject:v24 forKey:@"matter_last_ping_success"];

  v25 = [NSNumber numberWithUnsignedInt:a1[25]];
  [v2 setObject:v25 forKey:@"matter_last_resolved_services"];

  v26 = [NSNumber numberWithUnsignedInt:a1[39]];
  [v2 setObject:v26 forKey:@"matter_ping_avg_max_rtt"];

  v27 = [NSNumber numberWithUnsignedInt:a1[38]];
  [v2 setObject:v27 forKey:@"matter_ping_avg_min_rtt"];

  v28 = [NSNumber numberWithUnsignedInt:a1[40]];
  [v2 setObject:v28 forKey:@"matter_ping_avg_rtt"];

  v29 = [NSNumber numberWithUnsignedInt:a1[34]];
  [v2 setObject:v29 forKey:@"matter_ping_initiated"];

  v30 = [NSNumber numberWithUnsignedInt:a1[41]];
  [v2 setObject:v30 forKey:@"matter_ping_response_percent"];

  v31 = [NSNumber numberWithUnsignedInt:a1[35]];
  [v2 setObject:v31 forKey:@"matter_ping_success"];

  v32 = [NSNumber numberWithUnsignedInt:a1[33]];
  [v2 setObject:v32 forKey:@"matter_resolved_services"];

  v33 = [NSNumber numberWithUnsignedInt:a1[44]];
  [v2 setObject:v33 forKey:@"hap_acc_converged"];

  v34 = [NSNumber numberWithUnsignedInt:a1[43]];
  [v2 setObject:v34 forKey:@"hap_last_ping_success"];

  v35 = [NSNumber numberWithUnsignedInt:a1[42]];
  [v2 setObject:v35 forKey:@"hap_last_resolved_services"];

  v36 = [NSNumber numberWithUnsignedInt:a1[51]];
  [v2 setObject:v36 forKey:@"hap_ping_avg_max_rtt"];

  v37 = [NSNumber numberWithUnsignedInt:a1[50]];
  [v2 setObject:v37 forKey:@"hap_ping_avg_min_rtt"];

  v38 = [NSNumber numberWithUnsignedInt:a1[52]];
  [v2 setObject:v38 forKey:@"hap_ping_avg_rtt"];

  v39 = [NSNumber numberWithUnsignedInt:a1[46]];
  [v2 setObject:v39 forKey:@"hap_ping_initiated"];

  v40 = [NSNumber numberWithUnsignedInt:a1[53]];
  [v2 setObject:v40 forKey:@"hap_ping_response_percent"];

  v41 = [NSNumber numberWithUnsignedInt:a1[47]];
  [v2 setObject:v41 forKey:@"hap_ping_success"];

  v42 = [NSNumber numberWithUnsignedInt:a1[45]];
  [v2 setObject:v42 forKey:@"hap_resolved_services"];

  v43 = [NSNumber numberWithUnsignedInt:*(a1 + 54)];
  [v2 setObject:v43 forKey:@"homekit_num_residents"];

  v44 = [NSNumber numberWithUnsignedInt:*(a1 + 55)];
  [v2 setObject:v44 forKey:@"homekit_num_thread_capable_residents"];

  v45 = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  [v2 setObject:v45 forKey:@"homekit_num_hap_accessories"];

  v46 = [NSNumber numberWithUnsignedInt:*(a1 + 57)];
  [v2 setObject:v46 forKey:@"homekit_num_matter_accessories"];

  v47 = [NSNumber numberWithUnsignedInt:*(a1 + 58)];
  [v2 setObject:v47 forKey:@"homekit_num_sleepy_hap_accessories"];

  v48 = [NSNumber numberWithUnsignedInt:*(a1 + 59)];
  [v2 setObject:v48 forKey:@"homekit_num_sleepy_matter_accessories"];

  v49 = [NSNumber numberWithUnsignedInt:a1[54]];
  [v2 setObject:v49 forKey:@"matter_acc_converge_time_sec"];

  v50 = [NSNumber numberWithUnsignedInt:a1[55]];
  [v2 setObject:v50 forKey:@"hap_acc_converge_time_sec"];

  v51 = v2;
  AnalyticsSendEventLazy();
}

void CAMetricsHandlers_handle_accessory_periodic_update(uint64_t *a1)
{
  v2 = +[NSMutableDictionary dictionary];
  if (*(a1 + 28) == 1)
  {
    v3 = [NSString stringWithUTF8String:"matter"];
    [v2 setObject:v3 forKey:@"accessory_vendor_name"];
  }

  else
  {
    v4 = a1;
    if (*(a1 + 23) < 0)
    {
      v4 = *a1;
    }

    v3 = [NSString stringWithUTF8String:v4];
    [v2 setObject:v3 forKey:@"accessory_vendor_name"];
  }

  if (*(a1 + 27))
  {
    [NSString stringWithUTF8String:"router"];
  }

  else
  {
    [NSString stringWithUTF8String:"child"];
  }
  v5 = ;
  [v2 setObject:v5 forKey:@"accessory_role"];

  if (*(a1 + 26))
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v6 = ;
  [v2 setObject:v6 forKey:@"accessory_registered_to_srp"];

  if (*(a1 + 50))
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v7 = ;
  [v2 setObject:v7 forKey:@"accessory_entry_resolved"];

  if (a1[6])
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v8 = ;
  [v2 setObject:v8 forKey:@"accessory_empty_ip"];

  if (*(a1 + 49))
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v9 = ;
  [v2 setObject:v9 forKey:@"accessory_duplicate_ip_detected"];

  v10 = [NSNumber numberWithUnsignedInt:*(a1 + 15)];
  [v2 setObject:v10 forKey:@"total_reachability_hours"];

  v11 = [NSNumber numberWithUnsignedInt:*(a1 + 16)];
  [v2 setObject:v11 forKey:@"consecutive_max_reachability_hours"];

  v12 = [NSNumber numberWithUnsignedInt:*(a1 + 17)];
  [v2 setObject:v12 forKey:@"consecutive_min_reachability_hours"];

  v13 = [NSNumber numberWithUnsignedInt:*(a1 + 18)];
  [v2 setObject:v13 forKey:@"browse_fail_consecutive_hours"];

  v14 = [NSNumber numberWithUnsignedInt:*(a1 + 19)];
  [v2 setObject:v14 forKey:@"browse_fail_total_hours"];

  v15 = [NSNumber numberWithUnsignedInt:*(a1 + 20)];
  [v2 setObject:v15 forKey:@"resolve_fail_consecutive_hours"];

  v16 = [NSNumber numberWithUnsignedInt:*(a1 + 21)];
  [v2 setObject:v16 forKey:@"resolve_fail_total_hours"];

  v17 = [NSNumber numberWithUnsignedInt:*(a1 + 22)];
  [v2 setObject:v17 forKey:@"ping_fail_consecutive_hours"];

  v18 = [NSNumber numberWithUnsignedInt:*(a1 + 23)];
  [v2 setObject:v18 forKey:@"ping_fail_total_hours"];

  v19 = [NSNumber numberWithUnsignedInt:*(a1 + 51)];
  [v2 setObject:v19 forKey:@"homekit_num_residents"];

  v20 = [NSNumber numberWithUnsignedInt:*(a1 + 52)];
  [v2 setObject:v20 forKey:@"homekit_num_thread_capable_residents"];

  v21 = [NSNumber numberWithUnsignedInt:*(a1 + 53)];
  [v2 setObject:v21 forKey:@"homekit_num_hap_accessories"];

  v22 = [NSNumber numberWithUnsignedInt:*(a1 + 54)];
  [v2 setObject:v22 forKey:@"homekit_num_matter_accessories"];

  v23 = [NSNumber numberWithUnsignedInt:*(a1 + 55)];
  [v2 setObject:v23 forKey:@"homekit_num_sleepy_hap_accessories"];

  v24 = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  [v2 setObject:v24 forKey:@"homekit_num_sleepy_matter_accessories"];

  v25 = v2;
  AnalyticsSendEventLazy();
}

uint64_t CAMetricsHandlers_handle_get_PowerHistogramData(NSMutableDictionary *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  for (i = 0; i != 92; i += 4)
  {
    v4 = [NSNumber numberWithUnsignedInt:*(&_MergedGlobals_2 + i + 892)];
    [v2 addObject:v4];
  }

  [(NSMutableDictionary *)v1 setObject:v2 forKey:@"host_wakeups_count_histogram"];

  return 0;
}

void sub_10005C218(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t CAMetricsHandlers_handle_get_PowerCountersData(NSMutableDictionary *a1)
{
  v1 = a1;
  v2 = [NSNumber numberWithUnsignedInt:xmmword_10052AC68];
  [(NSMutableDictionary *)v1 setObject:v2 forKey:@"host_wakeups_count"];

  return 0;
}

double CAMetricsHandlers_handle_reset_PowerCountersData(void)
{
  dword_10052A9C4 = 0;
  result = 0.0;
  xmmword_10052AC68 = 0u;
  unk_10052AC78 = 0u;
  xmmword_10052AC88 = 0u;
  unk_10052AC98 = 0u;
  xmmword_10052ACA8 = 0u;
  unk_10052ACB8 = 0u;
  return result;
}

uint64_t CAMetricsHandlers_get_spinel_prop_category(unsigned int a1)
{
  result = 1;
  if (a1 - 114 >= 2 && a1 != 5412)
  {
    if (a1 == 7 || a1 - 1 >= 0xB)
    {
      if (a1 <= 0xD && ((1 << a1) & 0x3080) != 0)
      {
        return 3;
      }

      else if (a1 - 4096 >= 5)
      {
        if (a1)
        {
          if ((a1 & 0xFFFFFFFE) == 0x1006)
          {
            return 6;
          }

          else if ((a1 & 0xFFFFFFFE) == 0x1008)
          {
            return 7;
          }

          else
          {
            v3 = a1 & 0xFFFFFFF0;
            result = 8;
            if ((a1 & 0xFFFFFFF0) != 0x20)
            {
              v4 = a1 & 0xFFFFFF00;
              if ((a1 & 0xFFFFFF00) != 0x1200)
              {
                result = 9;
                if (v3 != 48 && v4 != 4864)
                {
                  result = 10;
                  if (v3 != 64 && v4 != 5120)
                  {
                    result = 11;
                    if (v3 != 80 && v4 != 5376)
                    {
                      result = 12;
                      if (v3 != 96 && v4 != 5632)
                      {
                        result = 13;
                        if (v3 != 112 && v4 != 5888)
                        {
                          result = 14;
                          if (v3 != 128 && v4 != 6144)
                          {
                            if (a1 - 6400 >= 0x700)
                            {
                              if (v3 == 160)
                              {
                                return 16;
                              }

                              else if (v4 == 256)
                              {
                                return 17;
                              }

                              else if (v4 == 1024)
                              {
                                return 18;
                              }

                              else if (a1 - 1280 >= 0x300)
                              {
                                if (a1 >> 6 == 239)
                                {
                                  return 20;
                                }

                                else
                                {
                                  v5 = a1 & 0xFFFFFC00;
                                  if (v5 == 15360)
                                  {
                                    return 21;
                                  }

                                  else if (v5 == 0x4000)
                                  {
                                    return 22;
                                  }

                                  else
                                  {
                                    return 23;
                                  }
                                }
                              }

                              else
                              {
                                return 19;
                              }
                            }

                            else
                            {
                              return 15;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          return 5;
        }
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t CAMetricsHandlers_handle_update_PowerCounter_HostWakeup(unsigned int a1)
{
  result = CAMetricsHandlers_get_spinel_prop_category(a1);
  LODWORD(xmmword_10052AC68) = xmmword_10052AC68 + 1;
  ++*(&xmmword_10052A978 + (result - 1) + 189);
  return result;
}

uint64_t CAMetricsHandlers_handle_getprop_RCP2_generic_hist(void *a1, void *a2, unsigned int a3, void *a4)
{
  v7 = a1;
  v68 = a2;
  v8 = a4;
  v9 = v8;
  v69 = a3;
  if (a3)
  {
    v73[0] = 0;
    v73[1] = 0;
    v72 = v73;
    v10 = v8;
    v67 = v7;
    if (!strcmp([v9 UTF8String], "rcp2PcapState"))
    {
      if (a3 != 13)
      {
        v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v15 = v9;
          CAMetricsHandlers_handle_getprop_RCP2_generic_hist([v9 UTF8String], &buf);
        }

        goto LABEL_17;
      }
    }

    else
    {
      v11 = v9;
      if (strcmp([v9 UTF8String], "streamRawRespTimeHist"))
      {
        v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = v9;
          CAMetricsHandlers_handle_getprop_RCP2_generic_hist([v9 UTF8String], &buf);
        }

LABEL_17:
        v14 = 1;
LABEL_87:

        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v72, v73[0]);
        goto LABEL_88;
      }

      if (a3 != 50)
      {
        v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v18 = v9;
          CAMetricsHandlers_handle_getprop_RCP2_generic_hist([v9 UTF8String], &buf);
        }

        goto LABEL_17;
      }
    }

    v12 = +[NSMutableArray array];
    v63 = v12;
    if (xpc_get_type(v7) != &_xpc_type_array)
    {
      v16 = log_get_logging_obg("com.apple.wpantund.awd", "default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = v9;
        CAMetricsHandlers_handle_getprop_RCP2_generic_hist([v9 UTF8String], &buf, v16);
      }

      v14 = 1;
LABEL_86:

      goto LABEL_87;
    }

    count = xpc_array_get_count(v7);
    v19 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v9;
      v21 = [v9 UTF8String];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v21;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = count;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "RCP2 CAMetrics : now onto %s array with size %ld.", &buf, 0x16u);
    }

    if (!count)
    {
      v16 = 0;
LABEL_83:
      v53 = v69;
      v54 = v75;
      do
      {
        v55 = *v54++;
        v56 = [NSNumber numberWithUnsignedInt:v55];
        [v12 addObject:v56];

        --v53;
      }

      while (v53);
      v57 = v9;
      v58 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v9 UTF8String]);
      [v68 setObject:v12 forKey:v58];

      v14 = 0;
      goto LABEL_86;
    }

    v22 = 0;
    v16 = 0;
    v61 = v9;
    while (1)
    {
      v23 = xpc_array_get_dictionary(v7, v22);

      v70 = v23;
      string = xpc_dictionary_get_string(v23, "key");
      v25 = strlen(string);
      if (v25 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v26 = v25;
      if (v25 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v25;
      if (v25)
      {
        memmove(&buf, string, v25);
      }

      buf.__r_.__value_.__s.__data_[v26] = 0;
      uint64 = xpc_dictionary_get_uint64(v23, "value");
      v28 = v9;
      v66 = uint64;
      v29 = [v9 UTF8String];
      v30 = std::string::find(&buf, 91, 0);
      v31 = std::string::find(&buf, 93, 0);
      v32 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      v33 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      v34 = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      size = buf.__r_.__value_.__l.__size_;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = buf.__r_.__value_.__l.__size_;
      }

      v37 = strlen(v29);
      if (v37)
      {
        v38 = v37;
        v65 = buf.__r_.__value_.__r.__words[0];
        v39 = (p_buf + v36);
        if (v36 < v37)
        {
          v16 = v70;
LABEL_58:
          v7 = v67;
          v9 = v61;
          v12 = v63;
          if ((v33 & 0x80) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        v60 = v31;
        v40 = *v29;
        v41 = p_buf;
        do
        {
          if (v36 - v38 == -1)
          {
            break;
          }

          v42 = memchr(v41, v40, v36 - v38 + 1);
          if (!v42)
          {
            break;
          }

          v43 = v42;
          if (!memcmp(v42, v29, v38))
          {
            goto LABEL_46;
          }

          v41 = (&v43->__r_.__value_.__l.__data_ + 1);
          v36 = v39 - (&v43->__r_.__value_.__l.__data_ + 1);
        }

        while (v36 >= v38);
        v43 = v39;
LABEL_46:
        v31 = v60;
        v45 = v43 != v39 && v43 == p_buf;
        v34 = v65;
        v16 = v70;
        if (!v45)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v16 = v70;
      }

      if (v30 == -1 || v31 == -1)
      {
        goto LABEL_58;
      }

      if (v33 < 0)
      {
        v32 = size;
        if (size <= v30)
        {
LABEL_90:
          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        if (v30 >= v32)
        {
          goto LABEL_90;
        }

        v34 = &buf;
      }

      v46 = v30 + 1;
      if (v32 - (v30 + 1) >= v31 - 1)
      {
        v47 = v31 - 1;
      }

      else
      {
        v47 = v32 - (v30 + 1);
      }

      if (v47 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v7 = v67;
      v9 = v61;
      v12 = v63;
      if (v47 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v47;
      if (v47)
      {
        memmove(&__dst, v34 + v46, v47);
      }

      __dst.__r_.__value_.__s.__data_[v47] = 0;
      v48 = std::stoi(&__dst, 0, 10);
      if (v48 < v69)
      {
        if (v66)
        {
          v49 = log10(v66) + 1.0;
          v50 = v49 - 4;
          if (v49 <= 4)
          {
            v50 = 0;
          }

          v51 = v50;
        }

        else
        {
          v51 = 0.0;
        }

        v52 = __exp10(v51);
        v75[v48] = (v52 * (v66 / v52));
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((*(&buf.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_23;
        }
      }

      else if ((*(&buf.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_23;
      }

LABEL_22:
      operator delete(buf.__r_.__value_.__l.__data_);
LABEL_23:
      if (++v22 == count)
      {
        goto LABEL_83;
      }
    }
  }

  v14 = 1;
LABEL_88:

  return v14;
}

void sub_10005CC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, char *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a27, a28);

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

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
  return result;
}

void *std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,boost::any>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,boost::any>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t boost::any::holder<std::string>::~holder(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void boost::any::holder<std::string>::~holder(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_10005D4F4(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v2, v1[3]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_10005D5DC(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,boost::any>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,boost::any>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_10005D7A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,boost::any>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,boost::any>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_2_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *(a2 + 14) = a3;
  *(a2 + 18) = 2080;
  *(a2 + 20) = result;
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0x1Cu);
}

void __cxx_global_array_dtor()
{
  v0 = -13600;
  v1 = &byte_10052A897;
  do
  {
    if (*v1 < 0)
    {
      operator delete(*(v1 - 23));
      if ((*(v1 - 24) & 0x80000000) == 0)
      {
        goto LABEL_2;
      }
    }

    else if ((*(v1 - 24) & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

    operator delete(*(v1 - 47));
LABEL_2:
    v1 -= 136;
    v0 += 136;
  }

  while (v0);
  if (byte_1005273AF < 0)
  {
    operator delete(qword_100527398);
    if (byte_100527397 < 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((byte_100527397 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    operator delete(qword_100527380);
  }

LABEL_10:
  v2 = -13600;
  v3 = &byte_10052727F;
  while (2)
  {
    if (*v3 < 0)
    {
      operator delete(*(v3 - 23));
      if (*(v3 - 24) < 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(v3 - 24) < 0)
    {
LABEL_16:
      operator delete(*(v3 - 47));
    }

    v3 -= 136;
    v2 += 136;
    if (v2)
    {
      continue;
    }

    break;
  }

  if (byte_100523D97 < 0)
  {
    operator delete(qword_100523D80);
    if (byte_100523D7F < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((byte_100523D7F & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    v4 = qword_100523D68;

    operator delete(v4);
  }
}

void _GLOBAL__sub_I_CAMetricsHandlers_mm()
{
  context = objc_autoreleasePoolPush();
  for (i = 0; i != 27696; i += 13848)
  {
    *(&s_CATriggerBasedInternalDB + i + 248) = 0uLL;
    v1 = (&s_CATriggerBasedInternalDB + i + 248);
    *(&s_CATriggerBasedInternalDB + i + 2320) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 656) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 672) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 688) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 960) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 944) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 928) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 1232) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 1216) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 1200) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 1504) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 1488) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 1472) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 1744) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 1760) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 1776) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 2048) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 2032) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 2016) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 2288) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 2304) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 2560) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 2576) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 2592) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 2864) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 2848) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 2832) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3104) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3120) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3136) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3376) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3392) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3408) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3680) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3664) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3648) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3920) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3936) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 3952) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 4192) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 4208) = 0uLL;
    *(&s_CATriggerBasedInternalDB + i + 4224) = 0uLL;
    v1[1] = 0uLL;
    v1[2] = 0uLL;
    *(v1 + 136) = 0uLL;
    *(v1 + 152) = 0uLL;
    *(v1 + 168) = 0uLL;
    v1[17] = 0uLL;
    v1[18] = 0uLL;
    v1[19] = 0uLL;
    v1[34] = 0uLL;
    v1[35] = 0uLL;
    v1[36] = 0uLL;
    v1[52] = 0uLL;
    v1[53] = 0uLL;
    v1[51] = 0uLL;
    v1[70] = 0uLL;
    v1[69] = 0uLL;
    v1[68] = 0uLL;
    v1[87] = 0uLL;
    v1[86] = 0uLL;
    v1[85] = 0uLL;
    v1[104] = 0uLL;
    v1[103] = 0uLL;
    v1[102] = 0uLL;
    v1[121] = 0uLL;
    v1[119] = 0uLL;
    v1[120] = 0uLL;
    v1[136] = 0uLL;
    v1[137] = 0uLL;
    v1[138] = 0uLL;
    v1[155] = 0uLL;
    v1[154] = 0uLL;
    v1[153] = 0uLL;
    v1[172] = 0uLL;
    v1[170] = 0uLL;
    v1[171] = 0uLL;
    v1[187] = 0uLL;
    v1[188] = 0uLL;
    v1[189] = 0uLL;
    v1[206] = 0uLL;
    v1[205] = 0uLL;
    v1[204] = 0uLL;
    v1[223] = 0uLL;
    v1[221] = 0uLL;
    v1[222] = 0uLL;
    v1[238] = 0uLL;
    v1[239] = 0uLL;
    v1[240] = 0uLL;
    v1[257] = 0uLL;
    v1[256] = 0uLL;
    *(v1 + 4248) = 0uLL;
    *(v1 + 4232) = 0uLL;
    *(v1 + 4216) = 0uLL;
    v1[255] = 0uLL;
    v1[274] = 0uLL;
    v1[272] = 0uLL;
    v1[273] = 0uLL;
    *(v1 + 4488) = 0uLL;
    *(v1 + 4504) = 0uLL;
    *(v1 + 4520) = 0uLL;
    v1[289] = 0uLL;
    v1[290] = 0uLL;
    *(v1 + 4760) = 0uLL;
    *(v1 + 4776) = 0uLL;
    *(v1 + 4792) = 0uLL;
    v1[291] = 0uLL;
    v1[308] = 0uLL;
    v1[307] = 0uLL;
    v1[306] = 0uLL;
    *(v1 + 5064) = 0uLL;
    *(v1 + 5048) = 0uLL;
    *(v1 + 5032) = 0uLL;
    v1[325] = 0uLL;
    v1[323] = 0uLL;
    *(v1 + 5304) = 0uLL;
    *(v1 + 5320) = 0uLL;
    *(v1 + 5336) = 0uLL;
    v1[324] = 0uLL;
    v1[340] = 0uLL;
    v1[341] = 0uLL;
    v1[342] = 0uLL;
    *(v1 + 5576) = 0uLL;
    *(v1 + 5592) = 0uLL;
    *(v1 + 5608) = 0uLL;
    v1[359] = 0uLL;
    v1[358] = 0uLL;
    *(v1 + 5880) = 0uLL;
    *(v1 + 5864) = 0uLL;
    *(v1 + 5848) = 0uLL;
    v1[357] = 0uLL;
    v1[376] = 0uLL;
    v1[374] = 0uLL;
    v1[375] = 0uLL;
    *(v1 + 6120) = 0uLL;
    *(v1 + 6136) = 0uLL;
    *(v1 + 6152) = 0uLL;
    v1[391] = 0uLL;
    v1[392] = 0uLL;
    *(v1 + 6392) = 0uLL;
    *(v1 + 6408) = 0uLL;
    *(v1 + 6424) = 0uLL;
    v1[393] = 0uLL;
    v1[410] = 0uLL;
    v1[409] = 0uLL;
    v1[408] = 0uLL;
    *(v1 + 6696) = 0uLL;
    *(v1 + 6680) = 0uLL;
    *(v1 + 6664) = 0uLL;
    v1[427] = 0uLL;
    v1[425] = 0uLL;
    *(v1 + 6936) = 0uLL;
    *(v1 + 6952) = 0uLL;
    *(v1 + 6968) = 0uLL;
    v1[426] = 0uLL;
    v1[442] = 0uLL;
    v1[443] = 0uLL;
    v1[444] = 0uLL;
    *(v1 + 7208) = 0uLL;
    *(v1 + 7224) = 0uLL;
    *(v1 + 7240) = 0uLL;
    v1[461] = 0uLL;
    v1[460] = 0uLL;
    *(v1 + 7512) = 0uLL;
    *(v1 + 7496) = 0uLL;
    *(v1 + 7480) = 0uLL;
    v1[459] = 0uLL;
    v1[478] = 0uLL;
    v1[476] = 0uLL;
    v1[477] = 0uLL;
    *(v1 + 7752) = 0uLL;
    *(v1 + 7768) = 0uLL;
    *(v1 + 7784) = 0uLL;
    v1[493] = 0uLL;
    v1[494] = 0uLL;
    *(v1 + 8024) = 0uLL;
    *(v1 + 8040) = 0uLL;
    *(v1 + 8056) = 0uLL;
    v1[495] = 0uLL;
    v1[512] = 0uLL;
    v1[511] = 0uLL;
    v1[510] = 0uLL;
    *(v1 + 8328) = 0uLL;
    *(v1 + 8312) = 0uLL;
    *(v1 + 8296) = 0uLL;
    v1[529] = 0uLL;
    v1[527] = 0uLL;
    *(v1 + 8568) = 0uLL;
    *(v1 + 8584) = 0uLL;
    *(v1 + 8600) = 0uLL;
    v1[528] = 0uLL;
    v1[544] = 0uLL;
    v1[545] = 0uLL;
    v1[546] = 0uLL;
    *(v1 + 8840) = 0uLL;
    *(v1 + 8856) = 0uLL;
    *(v1 + 8872) = 0uLL;
    v1[563] = 0uLL;
    v1[562] = 0uLL;
    *(v1 + 9144) = 0uLL;
    *(v1 + 9128) = 0uLL;
    *(v1 + 9112) = 0uLL;
    v1[561] = 0uLL;
    v1[580] = 0uLL;
    v1[578] = 0uLL;
    v1[579] = 0uLL;
    *(v1 + 9384) = 0uLL;
    *(v1 + 9400) = 0uLL;
    *(v1 + 9416) = 0uLL;
    v1[595] = 0uLL;
    v1[596] = 0uLL;
    *(v1 + 9656) = 0uLL;
    *(v1 + 9672) = 0uLL;
    *(v1 + 9688) = 0uLL;
    v1[597] = 0uLL;
    v1[614] = 0uLL;
    v1[613] = 0uLL;
    v1[612] = 0uLL;
    *(v1 + 9960) = 0uLL;
    *(v1 + 9944) = 0uLL;
    *(v1 + 9928) = 0uLL;
    v1[631] = 0uLL;
    v1[629] = 0uLL;
    *(v1 + 10200) = 0uLL;
    *(v1 + 10216) = 0uLL;
    *(v1 + 10232) = 0uLL;
    v1[630] = 0uLL;
    v1[646] = 0uLL;
    v1[647] = 0uLL;
    v1[648] = 0uLL;
    *(v1 + 10472) = 0uLL;
    *(v1 + 10488) = 0uLL;
    *(v1 + 10504) = 0uLL;
    v1[665] = 0uLL;
    v1[664] = 0uLL;
    *(v1 + 10776) = 0uLL;
    *(v1 + 10760) = 0uLL;
    *(v1 + 10744) = 0uLL;
    v1[663] = 0uLL;
    v1[682] = 0uLL;
    v1[680] = 0uLL;
    v1[681] = 0uLL;
    *(v1 + 11016) = 0uLL;
    *(v1 + 11032) = 0uLL;
    *(v1 + 11048) = 0uLL;
    *(v1 + 11288) = 0uLL;
    *(v1 + 11304) = 0uLL;
    *(v1 + 11320) = 0uLL;
    *(v1 + 11592) = 0uLL;
    v1[697] = 0uLL;
    *(v1 + 11576) = 0uLL;
    *(v1 + 11560) = 0uLL;
    v1[733] = 0uLL;
    v1[731] = 0uLL;
    v1[732] = 0uLL;
    *(v1 + 11832) = 0uLL;
    *(v1 + 11848) = 0uLL;
    *(v1 + 11864) = 0uLL;
    v1[748] = 0uLL;
    v1[749] = 0uLL;
    *(v1 + 12104) = 0uLL;
    v1[750] = 0uLL;
    *(v1 + 12120) = 0uLL;
    *(v1 + 12136) = 0uLL;
    v1[767] = 0uLL;
    v1[766] = 0uLL;
    v1[765] = 0uLL;
    *(v1 + 12408) = 0uLL;
    *(v1 + 12392) = 0uLL;
    *(v1 + 12376) = 0uLL;
    v1[784] = 0uLL;
    v1[782] = 0uLL;
    *(v1 + 12648) = 0uLL;
    v1[783] = 0uLL;
    *(v1 + 12664) = 0uLL;
    *(v1 + 12680) = 0uLL;
    v1[799] = 0uLL;
    v1[800] = 0uLL;
    v1[801] = 0uLL;
    *(v1 + 12920) = 0uLL;
    *(v1 + 12936) = 0uLL;
    *(v1 + 12952) = 0uLL;
    v1[818] = 0uLL;
    v1[817] = 0uLL;
    *(v1 + 13224) = 0uLL;
    v1[816] = 0uLL;
    *(v1 + 13208) = 0uLL;
    *(v1 + 13192) = 0uLL;
    v1[835] = 0uLL;
    v1[833] = 0uLL;
    v1[834] = 0uLL;
    *(v1 + 13464) = 0uLL;
    *(v1 + 13480) = 0uLL;
    v1[698] = 0uLL;
    *(v1 + 13496) = 0uLL;
    *(v1 - 5) = 0uLL;
    *(v1 - 4) = 0uLL;
    *(v1 - 3) = 0uLL;
    v1[699] = 0uLL;
    v1[716] = 0uLL;
    v1[715] = 0uLL;
    v1[714] = 0uLL;
  }

  __cxa_atexit(__cxx_global_array_dtor, 0, &_mh_execute_header);
  qword_10052AC48 = 0;
  *algn_10052AC50 = 0u;
  word_10052AC60 = 0;
  unk_10052AD84 = 0u;

  objc_autoreleasePoolPop(context);
}

uint64_t AWDFlagstoneCTCSNumberOfThirdPartyBRsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_5:
  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    LOBYTE(v31[0]) = 0;
    v9 = [a2 position] + 1;
    if (v9 < [a2 position] || (v10 = objc_msgSend(a2, "position") + 1, v10 > objc_msgSend(a2, "length")))
    {
      [a2 _setError];
      v8 |= (v31[0] & 0x7F) << v6;
      if ((v31[0] & 0x80) == 0)
      {
        break;
      }

      goto LABEL_12;
    }

    v11 = [a2 data];
    [v11 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
    v8 |= (v31[0] & 0x7F) << v6;
    if ((v31[0] & 0x80) == 0)
    {
      break;
    }

LABEL_12:
    v6 += 7;
    v12 = v7++ >= 9;
    if (v12)
    {
      v13 = 0;
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

LABEL_20:
      if ((v13 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v25 |= (v31[0] & 0x7F) << v23;
            if ((v31[0] & 0x80) == 0)
            {
LABEL_45:
              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v25;
              }

              goto LABEL_48;
            }
          }

          else
          {
            [a2 _setError];
            v25 |= (v31[0] & 0x7F) << v23;
            if ((v31[0] & 0x80) == 0)
            {
              goto LABEL_45;
            }
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v29 = 0;
LABEL_48:
            *(a1 + 24) = v29;
            goto LABEL_4;
          }
        }
      }

      if (v14 == 2)
      {
        v22 = objc_alloc_init(AWDHeaderInfoS);
        objc_storeStrong((a1 + 16), v22);
        v31[0] = 0;
        v31[1] = 0;
        if (PBReaderPlaceMark() && AWDHeaderInfoSReadFrom(v22, a2))
        {
          PBReaderRecallMark();

          goto LABEL_4;
        }

        return 0;
      }

      if (v14 != 1)
      {
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_4;
        }

        return 0;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 28) |= 1u;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v17 |= (v31[0] & 0x7F) << v15;
          if ((v31[0] & 0x80) == 0)
          {
LABEL_49:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_52:
            *(a1 + 8) = v21;
LABEL_4:
            v5 = [a2 position];
            if (v5 >= [a2 length])
            {
              return [a2 hasError] ^ 1;
            }

            goto LABEL_5;
          }
        }

        else
        {
          [a2 _setError];
          v17 |= (v31[0] & 0x7F) << v15;
          if ((v31[0] & 0x80) == 0)
          {
            goto LABEL_49;
          }
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_52;
        }
      }
    }
  }

  if ([a2 hasError])
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  if (([a2 hasError] & 1) == 0)
  {
    goto LABEL_20;
  }

  return [a2 hasError] ^ 1;
}

void sub_10005F2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PowerEventListener;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _PowerEventListenerSystemPowerChanged(void *a1, unsigned int a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v7)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "_PowerEventListenerSystemPowerChanged";
      v10 = 1024;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Power Assertion: %s Received Message %x", &v8, 0x12u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  [v6 _powerNotificationMessage:a3 argument:a4];
}

void sendApStateNotification()
{
  if (RcpHostContext::sRcpHostContext)
  {
    operator new();
  }
}

void _GLOBAL__sub_I_PowerEventListener_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t AWDFlagstoneCTCSNumberPreferredNetworksByBorderRoutersReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v12 = [a2 position] + 1;
        if (v12 < [a2 position] || (v13 = objc_msgSend(a2, "position") + 1, v13 > objc_msgSend(a2, "length")))
        {
          [a2 _setError];
          v10 |= (v38[0] & 0x7F) << v8;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          goto LABEL_10;
        }

        v14 = [a2 data];
        [v14 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v10 |= (v38[0] & 0x7F) << v8;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

LABEL_10:
        v8 += 7;
        v11 = v9++ >= 9;
        if (v11)
        {
          v15 = 0;
          if ([a2 hasError])
          {
            return [a2 hasError] ^ 1;
          }

          goto LABEL_20;
        }
      }

      if ([a2 hasError])
      {
        v15 = 0;
      }

      else
      {
        v15 = v10;
      }

      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

LABEL_20:
      if ((v15 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 2)
      {
        if (v16 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 < [a2 position] || (v35 = objc_msgSend(a2, "position") + 1, v35 > objc_msgSend(a2, "length")))
            {
              [a2 _setError];
              v33 |= (v38[0] & 0x7F) << v31;
              if ((v38[0] & 0x80) == 0)
              {
                goto LABEL_55;
              }
            }

            else
            {
              v36 = [a2 data];
              [v36 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v33 |= (v38[0] & 0x7F) << v31;
              if ((v38[0] & 0x80) == 0)
              {
LABEL_55:
                if ([a2 hasError])
                {
                  v5 = 0;
                }

                else
                {
                  v5 = v33;
                }

                goto LABEL_61;
              }
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v5 = 0;
LABEL_61:
              v6 = 28;
              goto LABEL_5;
            }
          }
        }

        if (v16 == 4)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v21 = [a2 position] + 1;
            if (v21 < [a2 position] || (v22 = objc_msgSend(a2, "position") + 1, v22 > objc_msgSend(a2, "length")))
            {
              [a2 _setError];
              v20 |= (v38[0] & 0x7F) << v18;
              if ((v38[0] & 0x80) == 0)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v23 = [a2 data];
              [v23 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v20 |= (v38[0] & 0x7F) << v18;
              if ((v38[0] & 0x80) == 0)
              {
LABEL_35:
                if ([a2 hasError])
                {
                  v5 = 0;
                }

                else
                {
                  v5 = v20;
                }

LABEL_4:
                v6 = 24;
LABEL_5:
                *(a1 + v6) = v5;
                goto LABEL_6;
              }
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v5 = 0;
              goto LABEL_4;
            }
          }
        }

        goto LABEL_38;
      }

      if (v16 != 1)
      {
        if (v16 == 2)
        {
          v17 = objc_alloc_init(AWDHeaderInfoS);
          objc_storeStrong((a1 + 16), v17);
          v38[0] = 0;
          v38[1] = 0;
          if (PBReaderPlaceMark() && AWDHeaderInfoSReadFrom(v17, a2))
          {
            PBReaderRecallMark();

            goto LABEL_6;
          }

          return 0;
        }

LABEL_38:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_6;
        }

        return 0;
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      *(a1 + 32) |= 1u;
      while (2)
      {
        LOBYTE(v38[0]) = 0;
        v27 = [a2 position] + 1;
        if (v27 < [a2 position] || (v28 = objc_msgSend(a2, "position") + 1, v28 > objc_msgSend(a2, "length")))
        {
          [a2 _setError];
          v26 |= (v38[0] & 0x7F) << v24;
          if ((v38[0] & 0x80) == 0)
          {
            goto LABEL_46;
          }

LABEL_42:
          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_59;
          }

          continue;
        }

        break;
      }

      v29 = [a2 data];
      [v29 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v26 |= (v38[0] & 0x7F) << v24;
      if ((v38[0] & 0x80) != 0)
      {
        goto LABEL_42;
      }

LABEL_46:
      if ([a2 hasError])
      {
        v30 = 0;
      }

      else
      {
        v30 = v26;
      }

LABEL_59:
      *(a1 + 8) = v30;
LABEL_6:
      v7 = [a2 position];
    }

    while (v7 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFlagstoneCTCSStabilityMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_5:
  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    LOBYTE(v24) = 0;
    v9 = [a2 position] + 1;
    if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
    {
      v11 = [a2 data];
      [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
LABEL_16:
        if ([a2 hasError])
        {
          v13 = 0;
        }

        else
        {
          v13 = v8;
        }

        if (([a2 hasError] & 1) == 0)
        {
          goto LABEL_20;
        }

        return [a2 hasError] ^ 1;
      }
    }

    else
    {
      [a2 _setError];
      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_16;
      }
    }

    v6 += 7;
    v12 = v7++ >= 9;
  }

  while (!v12);
  v13 = 0;
  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_20:
  if ((v13 & 7) == 4)
  {
    return [a2 hasError] ^ 1;
  }

  v14 = v13 >> 3;
  if ((v13 >> 3) == 3)
  {
    v22 = objc_alloc_init(AWDCtcsReadWriteStabilityS);
    objc_storeStrong((a1 + 24), v22);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !AWDCtcsReadWriteStabilitySReadFrom(v22, a2))
    {
LABEL_46:

      return 0;
    }

LABEL_3:
    PBReaderRecallMark();

    goto LABEL_4;
  }

  if (v14 == 2)
  {
    v22 = objc_alloc_init(AWDHeaderInfoS);
    objc_storeStrong((a1 + 16), v22);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !AWDHeaderInfoSReadFrom(v22, a2))
    {
      goto LABEL_46;
    }

    goto LABEL_3;
  }

  if (v14 == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      LOBYTE(v24) = 0;
      v18 = [a2 position] + 1;
      if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v17 |= (v24 & 0x7F) << v15;
        if ((v24 & 0x80) == 0)
        {
LABEL_41:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_44:
          *(a1 + 8) = v21;
LABEL_4:
          v5 = [a2 position];
          if (v5 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          goto LABEL_5;
        }
      }

      else
      {
        [a2 _setError];
        v17 |= (v24 & 0x7F) << v15;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_41;
        }
      }

      v15 += 7;
      v12 = v16++ >= 9;
      if (v12)
      {
        v21 = 0;
        goto LABEL_44;
      }
    }
  }

  if (PBReaderSkipValueWithTag())
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t AWDFlagstoneEngagementMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
LABEL_5:
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v24) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v8 |= (v24 & 0x7F) << v6;
        if ((v24 & 0x80) == 0)
        {
LABEL_16:
          if ([a2 hasError])
          {
            v13 = 0;
          }

          else
          {
            v13 = v8;
          }

          if (([a2 hasError] & 1) == 0)
          {
            goto LABEL_20;
          }

          return [a2 hasError] ^ 1;
        }
      }

      else
      {
        [a2 _setError];
        v8 |= (v24 & 0x7F) << v6;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_16;
        }
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        if ([a2 hasError])
        {
          return [a2 hasError] ^ 1;
        }

LABEL_20:
        if ((v13 & 7) == 4)
        {
          return [a2 hasError] ^ 1;
        }

        v14 = v13 >> 3;
        if ((v13 >> 3) > 2)
        {
          switch(v14)
          {
            case 3:
              v15 = objc_alloc_init(AWDCountersEngagementS);
              objc_storeStrong((a1 + 32), v15);
              v24 = 0;
              v25 = 0;
              if (PBReaderPlaceMark() && AWDCountersEngagementSReadFrom(v15, a2))
              {
                goto LABEL_3;
              }

              break;
            case 4:
              v15 = objc_alloc_init(AWDCountersDiscoveryJoinS);
              objc_storeStrong((a1 + 24), v15);
              v24 = 0;
              v25 = 0;
              if (PBReaderPlaceMark() && AWDCountersDiscoveryJoinSReadFrom(v15, a2))
              {
                goto LABEL_3;
              }

              break;
            case 5:
              v15 = objc_alloc_init(AWDCountersReachabilityS);
              objc_storeStrong((a1 + 40), v15);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !AWDCountersReachabilitySReadFrom(v15, a2))
              {
                break;
              }

LABEL_3:
              PBReaderRecallMark();

              goto LABEL_4;
            default:
LABEL_48:
              if (PBReaderSkipValueWithTag())
              {
                goto LABEL_4;
              }

              return 0;
          }

LABEL_55:

          return 0;
        }

        if (v14 != 1)
        {
          if (v14 != 2)
          {
            goto LABEL_48;
          }

          v15 = objc_alloc_init(AWDHeaderInfoS);
          objc_storeStrong((a1 + 16), v15);
          v24 = 0;
          v25 = 0;
          if (PBReaderPlaceMark() && AWDHeaderInfoSReadFrom(v15, a2))
          {
            goto LABEL_3;
          }

          goto LABEL_55;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
LABEL_50:
              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v18;
              }

LABEL_53:
              *(a1 + 8) = v22;
LABEL_4:
              v5 = [a2 position];
              if (v5 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              goto LABEL_5;
            }
          }

          else
          {
            [a2 _setError];
            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
              goto LABEL_50;
            }
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_53;
          }
        }
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFlagstoneIPMLEMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
LABEL_5:
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v24) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v8 |= (v24 & 0x7F) << v6;
        if ((v24 & 0x80) == 0)
        {
LABEL_16:
          if ([a2 hasError])
          {
            v13 = 0;
          }

          else
          {
            v13 = v8;
          }

          if (([a2 hasError] & 1) == 0)
          {
            goto LABEL_20;
          }

          return [a2 hasError] ^ 1;
        }
      }

      else
      {
        [a2 _setError];
        v8 |= (v24 & 0x7F) << v6;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_16;
        }
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        if ([a2 hasError])
        {
          return [a2 hasError] ^ 1;
        }

LABEL_20:
        if ((v13 & 7) == 4)
        {
          return [a2 hasError] ^ 1;
        }

        v14 = v13 >> 3;
        if ((v13 >> 3) > 2)
        {
          if (v14 == 3)
          {
            v15 = objc_alloc_init(AWDCountersIpv6S);
            objc_storeStrong((a1 + 24), v15);
            v24 = 0;
            v25 = 0;
            if (PBReaderPlaceMark() && AWDCountersIpv6SReadFrom(v15, a2))
            {
              goto LABEL_3;
            }
          }

          else
          {
            if (v14 != 4)
            {
              goto LABEL_32;
            }

            v15 = objc_alloc_init(AWDCountersThreadMleS);
            objc_storeStrong((a1 + 32), v15);
            v24 = 0;
            v25 = 0;
            if (PBReaderPlaceMark() && AWDCountersThreadMleSReadFrom(v15, a2))
            {
              goto LABEL_3;
            }
          }

LABEL_51:

          return 0;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            v15 = objc_alloc_init(AWDHeaderInfoS);
            objc_storeStrong((a1 + 16), v15);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !AWDHeaderInfoSReadFrom(v15, a2))
            {
              goto LABEL_51;
            }

LABEL_3:
            PBReaderRecallMark();

            goto LABEL_4;
          }

LABEL_32:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_4;
          }

          return 0;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
LABEL_46:
              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v18;
              }

LABEL_49:
              *(a1 + 8) = v22;
LABEL_4:
              v5 = [a2 position];
              if (v5 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              goto LABEL_5;
            }
          }

          else
          {
            [a2 _setError];
            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
              goto LABEL_46;
            }
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_49;
          }
        }
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFlagstoneMACMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
LABEL_5:
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v24) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v8 |= (v24 & 0x7F) << v6;
        if ((v24 & 0x80) == 0)
        {
LABEL_16:
          if ([a2 hasError])
          {
            v13 = 0;
          }

          else
          {
            v13 = v8;
          }

          if (([a2 hasError] & 1) == 0)
          {
            goto LABEL_20;
          }

          return [a2 hasError] ^ 1;
        }
      }

      else
      {
        [a2 _setError];
        v8 |= (v24 & 0x7F) << v6;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_16;
        }
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        if ([a2 hasError])
        {
          return [a2 hasError] ^ 1;
        }

LABEL_20:
        if ((v13 & 7) == 4)
        {
          return [a2 hasError] ^ 1;
        }

        v14 = v13 >> 3;
        if ((v13 >> 3) > 2)
        {
          if (v14 == 3)
          {
            v15 = objc_alloc_init(AWDCountersMacTxS);
            objc_storeStrong((a1 + 32), v15);
            v24 = 0;
            v25 = 0;
            if (PBReaderPlaceMark() && AWDCountersMacTxSReadFrom(v15, a2))
            {
              goto LABEL_3;
            }
          }

          else
          {
            if (v14 != 4)
            {
              goto LABEL_32;
            }

            v15 = objc_alloc_init(AWDCountersMacRxS);
            objc_storeStrong((a1 + 24), v15);
            v24 = 0;
            v25 = 0;
            if (PBReaderPlaceMark() && AWDCountersMacRxSReadFrom(v15, a2))
            {
              goto LABEL_3;
            }
          }

LABEL_51:

          return 0;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            v15 = objc_alloc_init(AWDHeaderInfoS);
            objc_storeStrong((a1 + 16), v15);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !AWDHeaderInfoSReadFrom(v15, a2))
            {
              goto LABEL_51;
            }

LABEL_3:
            PBReaderRecallMark();

            goto LABEL_4;
          }

LABEL_32:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_4;
          }

          return 0;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
LABEL_46:
              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v18;
              }

LABEL_49:
              *(a1 + 8) = v22;
LABEL_4:
              v5 = [a2 position];
              if (v5 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              goto LABEL_5;
            }
          }

          else
          {
            [a2 _setError];
            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
              goto LABEL_46;
            }
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_49;
          }
        }
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFlagstoneNetworkRadioMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
LABEL_5:
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v24) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v8 |= (v24 & 0x7F) << v6;
        if ((v24 & 0x80) == 0)
        {
LABEL_16:
          if ([a2 hasError])
          {
            v13 = 0;
          }

          else
          {
            v13 = v8;
          }

          if (([a2 hasError] & 1) == 0)
          {
            goto LABEL_20;
          }

          return [a2 hasError] ^ 1;
        }
      }

      else
      {
        [a2 _setError];
        v8 |= (v24 & 0x7F) << v6;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_16;
        }
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        if ([a2 hasError])
        {
          return [a2 hasError] ^ 1;
        }

LABEL_20:
        if ((v13 & 7) == 4)
        {
          return [a2 hasError] ^ 1;
        }

        v14 = v13 >> 3;
        if ((v13 >> 3) > 2)
        {
          if (v14 == 3)
          {
            v15 = objc_alloc_init(AWDCountersNetworkS);
            objc_storeStrong((a1 + 24), v15);
            v24 = 0;
            v25 = 0;
            if (PBReaderPlaceMark() && AWDCountersNetworkSReadFrom(v15, a2))
            {
              goto LABEL_3;
            }
          }

          else
          {
            if (v14 != 4)
            {
              goto LABEL_32;
            }

            v15 = objc_alloc_init(AWDCountersRadioS);
            objc_storeStrong((a1 + 32), v15);
            v24 = 0;
            v25 = 0;
            if (PBReaderPlaceMark() && AWDCountersRadioSReadFrom(v15, a2))
            {
              goto LABEL_3;
            }
          }

LABEL_51:

          return 0;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            v15 = objc_alloc_init(AWDHeaderInfoS);
            objc_storeStrong((a1 + 16), v15);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !AWDHeaderInfoSReadFrom(v15, a2))
            {
              goto LABEL_51;
            }

LABEL_3:
            PBReaderRecallMark();

            goto LABEL_4;
          }

LABEL_32:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_4;
          }

          return 0;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
LABEL_46:
              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v18;
              }

LABEL_49:
              *(a1 + 8) = v22;
LABEL_4:
              v5 = [a2 position];
              if (v5 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              goto LABEL_5;
            }
          }

          else
          {
            [a2 _setError];
            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
              goto LABEL_46;
            }
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_49;
          }
        }
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFlagstonePowerMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_5:
  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    LOBYTE(v24) = 0;
    v9 = [a2 position] + 1;
    if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
    {
      v11 = [a2 data];
      [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
LABEL_16:
        if ([a2 hasError])
        {
          v13 = 0;
        }

        else
        {
          v13 = v8;
        }

        if (([a2 hasError] & 1) == 0)
        {
          goto LABEL_20;
        }

        return [a2 hasError] ^ 1;
      }
    }

    else
    {
      [a2 _setError];
      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_16;
      }
    }

    v6 += 7;
    v12 = v7++ >= 9;
  }

  while (!v12);
  v13 = 0;
  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_20:
  if ((v13 & 7) == 4)
  {
    return [a2 hasError] ^ 1;
  }

  v14 = v13 >> 3;
  if ((v13 >> 3) == 3)
  {
    v22 = objc_alloc_init(AWDCountersPowerS);
    objc_storeStrong((a1 + 24), v22);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !AWDCountersPowerSReadFrom(v22, a2))
    {
LABEL_46:

      return 0;
    }

LABEL_3:
    PBReaderRecallMark();

    goto LABEL_4;
  }

  if (v14 == 2)
  {
    v22 = objc_alloc_init(AWDHeaderInfoS);
    objc_storeStrong((a1 + 16), v22);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !AWDHeaderInfoSReadFrom(v22, a2))
    {
      goto LABEL_46;
    }

    goto LABEL_3;
  }

  if (v14 == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      LOBYTE(v24) = 0;
      v18 = [a2 position] + 1;
      if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v17 |= (v24 & 0x7F) << v15;
        if ((v24 & 0x80) == 0)
        {
LABEL_41:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_44:
          *(a1 + 8) = v21;
LABEL_4:
          v5 = [a2 position];
          if (v5 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          goto LABEL_5;
        }
      }

      else
      {
        [a2 _setError];
        v17 |= (v24 & 0x7F) << v15;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_41;
        }
      }

      v15 += 7;
      v12 = v16++ >= 9;
      if (v12)
      {
        v21 = 0;
        goto LABEL_44;
      }
    }
  }

  if (PBReaderSkipValueWithTag())
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t AWDFlagstoneStabilityMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_5:
  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    LOBYTE(v24) = 0;
    v9 = [a2 position] + 1;
    if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
    {
      v11 = [a2 data];
      [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
LABEL_16:
        if ([a2 hasError])
        {
          v13 = 0;
        }

        else
        {
          v13 = v8;
        }

        if (([a2 hasError] & 1) == 0)
        {
          goto LABEL_20;
        }

        return [a2 hasError] ^ 1;
      }
    }

    else
    {
      [a2 _setError];
      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_16;
      }
    }

    v6 += 7;
    v12 = v7++ >= 9;
  }

  while (!v12);
  v13 = 0;
  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_20:
  if ((v13 & 7) == 4)
  {
    return [a2 hasError] ^ 1;
  }

  v14 = v13 >> 3;
  if ((v13 >> 3) == 3)
  {
    v22 = objc_alloc_init(AWDCountersStabilityS);
    objc_storeStrong((a1 + 24), v22);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !AWDCountersStabilitySReadFrom(v22, a2))
    {
LABEL_46:

      return 0;
    }

LABEL_3:
    PBReaderRecallMark();

    goto LABEL_4;
  }

  if (v14 == 2)
  {
    v22 = objc_alloc_init(AWDHeaderInfoS);
    objc_storeStrong((a1 + 16), v22);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !AWDHeaderInfoSReadFrom(v22, a2))
    {
      goto LABEL_46;
    }

    goto LABEL_3;
  }

  if (v14 == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      LOBYTE(v24) = 0;
      v18 = [a2 position] + 1;
      if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v17 |= (v24 & 0x7F) << v15;
        if ((v24 & 0x80) == 0)
        {
LABEL_41:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_44:
          *(a1 + 8) = v21;
LABEL_4:
          v5 = [a2 position];
          if (v5 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          goto LABEL_5;
        }
      }

      else
      {
        [a2 _setError];
        v17 |= (v24 & 0x7F) << v15;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_41;
        }
      }

      v15 += 7;
      v12 = v16++ >= 9;
      if (v12)
      {
        v21 = 0;
        goto LABEL_44;
      }
    }
  }

  if (PBReaderSkipValueWithTag())
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t AWDFlagstoneTopologyMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  v5 = &selRef_setJoinerLatencyHistograms_count_;
  while (1)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      LOBYTE(v92) = 0;
      v10 = [a2 position] + 1;
      if (v10 >= [a2 position])
      {
        v11 = [a2 position] + 1;
        if (v11 <= [a2 length])
        {
          v12 = [a2 data];
          [v12 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v9 |= (v92 & 0x7F) << v7;
          if ((v92 & 0x80) != 0)
          {
            goto LABEL_12;
          }

LABEL_16:
          if ([a2 hasError])
          {
            v14 = 0;
          }

          else
          {
            v14 = v9;
          }

          if (([a2 hasError] & 1) == 0)
          {
            goto LABEL_20;
          }

          return [a2 hasError] ^ 1;
        }
      }

      [a2 _setError];
      v9 |= (v92 & 0x7F) << v7;
      if ((v92 & 0x80) == 0)
      {
        goto LABEL_16;
      }

LABEL_12:
      v7 += 7;
      v13 = v8++ >= 9;
    }

    while (!v13);
    v14 = 0;
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

LABEL_20:
    v15 = v14 & 7;
    if (v15 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v16 = v14 >> 3;
    if ((v14 >> 3) > 4)
    {
      if (v16 > 6)
      {
        if (v16 == 7)
        {
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + *(v5 + 966)) |= 2u;
          while (1)
          {
            LOBYTE(v92) = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v63 |= (v92 & 0x7F) << v61;
              if ((v92 & 0x80) == 0)
              {
LABEL_132:
                if ([a2 hasError])
                {
                  v25 = 0;
                }

                else
                {
                  v25 = v63;
                }

                goto LABEL_135;
              }
            }

            else
            {
              [a2 _setError];
              v63 |= (v92 & 0x7F) << v61;
              if ((v92 & 0x80) == 0)
              {
                goto LABEL_132;
              }
            }

            v61 += 7;
            v13 = v62++ >= 9;
            if (v13)
            {
              v25 = 0;
LABEL_135:
              v67 = 120;
              goto LABEL_140;
            }
          }
        }

        if (v16 == 8)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + *(v5 + 966)) |= 4u;
          while (1)
          {
            LOBYTE(v92) = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v21 |= (v92 & 0x7F) << v19;
              if ((v92 & 0x80) == 0)
              {
LABEL_136:
                if ([a2 hasError])
                {
                  v25 = 0;
                }

                else
                {
                  v25 = v21;
                }

LABEL_139:
                v67 = 124;
LABEL_140:
                *(a1 + v67) = v25;
                goto LABEL_4;
              }
            }

            else
            {
              [a2 _setError];
              v21 |= (v92 & 0x7F) << v19;
              if ((v92 & 0x80) == 0)
              {
                goto LABEL_136;
              }
            }

            v19 += 7;
            v13 = v20++ >= 9;
            if (v13)
            {
              v25 = 0;
              goto LABEL_139;
            }
          }
        }

        goto LABEL_126;
      }

      if (v16 == 5)
      {
        if (v15 != 2)
        {
          v68 = 0;
          v69 = 0;
          v70 = 0;
          while (1)
          {
            LOBYTE(v92) = 0;
            v71 = [a2 position] + 1;
            if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
            {
              v73 = [a2 data];
              [v73 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v70 |= (v92 & 0x7F) << v68;
              if ((v92 & 0x80) == 0)
              {
LABEL_177:
                [a2 hasError];
                goto LABEL_178;
              }
            }

            else
            {
              [a2 _setError];
              v70 |= (v92 & 0x7F) << v68;
              if ((v92 & 0x80) == 0)
              {
                goto LABEL_177;
              }
            }

            v68 += 7;
            v13 = v69++ >= 9;
            if (v13)
            {
              goto LABEL_178;
            }
          }
        }

        v92 = 0;
        v93 = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
LABEL_90:
          v47 = [a2 position];
          if (v47 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
LABEL_3:
            PBReaderRecallMark();
            goto LABEL_4;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          while (1)
          {
            v94 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v50 |= (v94 & 0x7F) << v48;
              if ((v94 & 0x80) == 0)
              {
LABEL_88:
                [a2 hasError];
LABEL_89:
                PBRepeatedUInt32Add();
                goto LABEL_90;
              }
            }

            else
            {
              [a2 _setError];
              v50 |= (v94 & 0x7F) << v48;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_88;
              }
            }

            v48 += 7;
            v13 = v49++ >= 9;
            if (v13)
            {
              goto LABEL_89;
            }
          }
        }

        return result;
      }

      if (v16 != 6)
      {
        goto LABEL_126;
      }

      if (v15 == 2)
      {
        v92 = 0;
        v93 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

LABEL_52:
        v26 = [a2 position];
        if (v26 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
          goto LABEL_3;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          v94 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v29 |= (v94 & 0x7F) << v27;
            if ((v94 & 0x80) == 0)
            {
LABEL_50:
              [a2 hasError];
LABEL_51:
              PBRepeatedUInt32Add();
              goto LABEL_52;
            }
          }

          else
          {
            [a2 _setError];
            v29 |= (v94 & 0x7F) << v27;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_50;
            }
          }

          v27 += 7;
          v13 = v28++ >= 9;
          if (v13)
          {
            goto LABEL_51;
          }
        }
      }

      v80 = 0;
      v81 = 0;
      v82 = 0;
      do
      {
        LOBYTE(v92) = 0;
        v83 = [a2 position] + 1;
        if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
        {
          v85 = [a2 data];
          [v85 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v82 |= (v92 & 0x7F) << v80;
          if ((v92 & 0x80) == 0)
          {
            goto LABEL_177;
          }
        }

        else
        {
          [a2 _setError];
          v82 |= (v92 & 0x7F) << v80;
          if ((v92 & 0x80) == 0)
          {
            goto LABEL_177;
          }
        }

        v80 += 7;
        v13 = v81++ >= 9;
      }

      while (!v13);
LABEL_178:
      PBRepeatedUInt32Add();
      v5 = &selRef_setJoinerLatencyHistograms_count_;
      goto LABEL_4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        if (v15 == 2)
        {
          v92 = 0;
          v93 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

LABEL_106:
          v54 = [a2 position];
          if (v54 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_3;
          }

          v55 = 0;
          v56 = 0;
          v57 = 0;
          while (1)
          {
            v94 = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v57 |= (v94 & 0x7F) << v55;
              if ((v94 & 0x80) == 0)
              {
LABEL_104:
                [a2 hasError];
LABEL_105:
                PBRepeatedUInt32Add();
                goto LABEL_106;
              }
            }

            else
            {
              [a2 _setError];
              v57 |= (v94 & 0x7F) << v55;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_104;
              }
            }

            v55 += 7;
            v13 = v56++ >= 9;
            if (v13)
            {
              goto LABEL_105;
            }
          }
        }

        v74 = 0;
        v75 = 0;
        v76 = 0;
        do
        {
          LOBYTE(v92) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v76 |= (v92 & 0x7F) << v74;
            if ((v92 & 0x80) == 0)
            {
              goto LABEL_177;
            }
          }

          else
          {
            [a2 _setError];
            v76 |= (v92 & 0x7F) << v74;
            if ((v92 & 0x80) == 0)
            {
              goto LABEL_177;
            }
          }

          v74 += 7;
          v13 = v75++ >= 9;
        }

        while (!v13);
      }

      else
      {
        if (v16 != 4)
        {
          goto LABEL_126;
        }

        if (v15 == 2)
        {
          v92 = 0;
          v93 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

LABEL_65:
          v33 = [a2 position];
          if (v33 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_3;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          while (1)
          {
            v94 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v36 |= (v94 & 0x7F) << v34;
              if ((v94 & 0x80) == 0)
              {
LABEL_63:
                [a2 hasError];
LABEL_64:
                PBRepeatedUInt32Add();
                goto LABEL_65;
              }
            }

            else
            {
              [a2 _setError];
              v36 |= (v94 & 0x7F) << v34;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_63;
              }
            }

            v34 += 7;
            v13 = v35++ >= 9;
            if (v13)
            {
              goto LABEL_64;
            }
          }
        }

        v86 = 0;
        v87 = 0;
        v88 = 0;
        do
        {
          LOBYTE(v92) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v88 |= (v92 & 0x7F) << v86;
            if ((v92 & 0x80) == 0)
            {
              goto LABEL_177;
            }
          }

          else
          {
            [a2 _setError];
            v88 |= (v92 & 0x7F) << v86;
            if ((v92 & 0x80) == 0)
            {
              goto LABEL_177;
            }
          }

          v86 += 7;
          v13 = v87++ >= 9;
        }

        while (!v13);
      }

      goto LABEL_178;
    }

    if (v16 != 1)
    {
      break;
    }

    v40 = 0;
    v41 = 0;
    v42 = 0;
    *(a1 + *(v5 + 966)) |= 1u;
    while (1)
    {
      LOBYTE(v92) = 0;
      v43 = [a2 position] + 1;
      if (v43 >= [a2 position])
      {
        v44 = [a2 position] + 1;
        if (v44 <= [a2 length])
        {
          break;
        }
      }

      [a2 _setError];
      v42 |= (v92 & 0x7F) << v40;
      if ((v92 & 0x80) == 0)
      {
        goto LABEL_128;
      }

LABEL_82:
      v40 += 7;
      v13 = v41++ >= 9;
      if (v13)
      {
        v46 = 0;
        goto LABEL_131;
      }
    }

    v45 = [a2 data];
    [v45 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
    v42 |= (v92 & 0x7F) << v40;
    if ((v92 & 0x80) != 0)
    {
      goto LABEL_82;
    }

LABEL_128:
    if ([a2 hasError])
    {
      v46 = 0;
    }

    else
    {
      v46 = v42;
    }

LABEL_131:
    *(a1 + 104) = v46;
LABEL_4:
    v6 = [a2 position];
    if (v6 >= [a2 length])
    {
      return [a2 hasError] ^ 1;
    }
  }

  if (v16 == 2)
  {
    v17 = objc_alloc_init(AWDHeaderInfoS);
    objc_storeStrong((a1 + 112), v17);
    v92 = 0;
    v93 = 0;
    if (PBReaderPlaceMark() && AWDHeaderInfoSReadFrom(v17, a2))
    {
      PBReaderRecallMark();

      goto LABEL_4;
    }

    return 0;
  }

LABEL_126:
  if (PBReaderSkipValueWithTag())
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t AWDHeaderInfoSReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v19 = 0;
        v13 = [a2 position] + 1;
        if (v13 >= [a2 position])
        {
          v14 = [a2 position] + 1;
          if (v14 <= [a2 length])
          {
            break;
          }
        }

        [a2 _setError];
        v12 |= (v19 & 0x7F) << v10;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

LABEL_13:
        v10 += 7;
        if (v11++ >= 9)
        {
          v17 = 0;
          if ([a2 hasError])
          {
            return [a2 hasError] ^ 1;
          }

          goto LABEL_21;
        }
      }

      v15 = [a2 data];
      [v15 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v12 |= (v19 & 0x7F) << v10;
      if (v19 < 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      if ([a2 hasError])
      {
        v17 = 0;
      }

      else
      {
        v17 = v12;
      }

      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

LABEL_21:
      if ((v17 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v17 >> 3) == 1)
      {
        v5 = &OBJC_IVAR___AWDHeaderInfoS__daemonVersion;
        goto LABEL_4;
      }

      if ((v17 >> 3) == 2)
      {
        v5 = &OBJC_IVAR___AWDHeaderInfoS__vendorVersion;
LABEL_4:
        v6 = PBReaderReadString();
        v7 = *v5;
        v8 = *(a1 + v7);
        *(a1 + v7) = v6;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v9 = [a2 position];
    }

    while (v9 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDHistogramsCoexSReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (1)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      LOBYTE(v94) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position])
      {
        v9 = [a2 position] + 1;
        if (v9 <= [a2 length])
        {
          v10 = [a2 data];
          [v10 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v7 |= (v94 & 0x7F) << v5;
          if ((v94 & 0x80) != 0)
          {
            goto LABEL_12;
          }

LABEL_16:
          if ([a2 hasError])
          {
            v12 = 0;
          }

          else
          {
            v12 = v7;
          }

          if (([a2 hasError] & 1) == 0)
          {
            goto LABEL_20;
          }

          return [a2 hasError] ^ 1;
        }
      }

      [a2 _setError];
      v7 |= (v94 & 0x7F) << v5;
      if ((v94 & 0x80) == 0)
      {
        goto LABEL_16;
      }

LABEL_12:
      v5 += 7;
      v11 = v6++ >= 9;
    }

    while (!v11);
    v12 = 0;
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

LABEL_20:
    v13 = v12 & 7;
    if (v13 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v14 = v12 >> 3;
    if ((v12 >> 3) > 3)
    {
      break;
    }

    if (v14 == 1)
    {
      if (v13 != 2)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        do
        {
          LOBYTE(v94) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v60 |= (v94 & 0x7F) << v58;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_180;
            }
          }

          else
          {
            [a2 _setError];
            v60 |= (v94 & 0x7F) << v58;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_180;
            }
          }

          v58 += 7;
          v11 = v59++ >= 9;
        }

        while (!v11);
        goto LABEL_181;
      }

      v94 = 0;
      v95 = 0;
      result = PBReaderPlaceMark();
      if (result)
      {
LABEL_65:
        v30 = [a2 position];
        if (v30 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
          goto LABEL_3;
        }

        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          v96 = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v33 |= (v96 & 0x7F) << v31;
            if ((v96 & 0x80) == 0)
            {
LABEL_63:
              [a2 hasError];
LABEL_64:
              PBRepeatedUInt32Add();
              goto LABEL_65;
            }
          }

          else
          {
            [a2 _setError];
            v33 |= (v96 & 0x7F) << v31;
            if ((v96 & 0x80) == 0)
            {
              goto LABEL_63;
            }
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            goto LABEL_64;
          }
        }
      }

      return result;
    }

    if (v14 == 2)
    {
      if (v13 != 2)
      {
        v82 = 0;
        v83 = 0;
        v84 = 0;
        do
        {
          LOBYTE(v94) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v84 |= (v94 & 0x7F) << v82;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_180;
            }
          }

          else
          {
            [a2 _setError];
            v84 |= (v94 & 0x7F) << v82;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_180;
            }
          }

          v82 += 7;
          v11 = v83++ >= 9;
        }

        while (!v11);
        goto LABEL_181;
      }

      v94 = 0;
      v95 = 0;
      result = PBReaderPlaceMark();
      if (result)
      {
LABEL_99:
        v44 = [a2 position];
        if (v44 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
          goto LABEL_3;
        }

        v45 = 0;
        v46 = 0;
        v47 = 0;
        while (1)
        {
          v96 = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v47 |= (v96 & 0x7F) << v45;
            if ((v96 & 0x80) == 0)
            {
LABEL_97:
              [a2 hasError];
LABEL_98:
              PBRepeatedUInt32Add();
              goto LABEL_99;
            }
          }

          else
          {
            [a2 _setError];
            v47 |= (v96 & 0x7F) << v45;
            if ((v96 & 0x80) == 0)
            {
              goto LABEL_97;
            }
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            goto LABEL_98;
          }
        }
      }

      return result;
    }

    if (v14 != 3)
    {
      goto LABEL_92;
    }

    if (v13 == 2)
    {
      v94 = 0;
      v95 = 0;
      result = PBReaderPlaceMark();
      if (!result)
      {
        return result;
      }

LABEL_36:
      v16 = [a2 position];
      if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
      {
        goto LABEL_3;
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v96 = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v19 |= (v96 & 0x7F) << v17;
          if ((v96 & 0x80) == 0)
          {
LABEL_34:
            [a2 hasError];
LABEL_35:
            PBRepeatedUInt32Add();
            goto LABEL_36;
          }
        }

        else
        {
          [a2 _setError];
          v19 |= (v96 & 0x7F) << v17;
          if ((v96 & 0x80) == 0)
          {
            goto LABEL_34;
          }
        }

        v17 += 7;
        v11 = v18++ >= 9;
        if (v11)
        {
          goto LABEL_35;
        }
      }
    }

    v70 = 0;
    v71 = 0;
    v72 = 0;
    do
    {
      LOBYTE(v94) = 0;
      v73 = [a2 position] + 1;
      if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
      {
        v75 = [a2 data];
        [v75 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v72 |= (v94 & 0x7F) << v70;
        if ((v94 & 0x80) == 0)
        {
          goto LABEL_180;
        }
      }

      else
      {
        [a2 _setError];
        v72 |= (v94 & 0x7F) << v70;
        if ((v94 & 0x80) == 0)
        {
          goto LABEL_180;
        }
      }

      v70 += 7;
      v11 = v71++ >= 9;
    }

    while (!v11);
LABEL_181:
    PBRepeatedUInt32Add();
LABEL_4:
    v4 = [a2 position];
    if (v4 >= [a2 length])
    {
      return [a2 hasError] ^ 1;
    }
  }

  switch(v14)
  {
    case 4:
      if (v13 != 2)
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        while (1)
        {
          LOBYTE(v94) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v66 |= (v94 & 0x7F) << v64;
            if ((v94 & 0x80) == 0)
            {
LABEL_180:
              [a2 hasError];
              goto LABEL_181;
            }
          }

          else
          {
            [a2 _setError];
            v66 |= (v94 & 0x7F) << v64;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_180;
            }
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            goto LABEL_181;
          }
        }
      }

      v94 = 0;
      v95 = 0;
      result = PBReaderPlaceMark();
      if (result)
      {
LABEL_81:
        v37 = [a2 position];
        if (v37 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
LABEL_3:
          PBReaderRecallMark();
          goto LABEL_4;
        }

        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (1)
        {
          v96 = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v40 |= (v96 & 0x7F) << v38;
            if ((v96 & 0x80) == 0)
            {
LABEL_79:
              [a2 hasError];
LABEL_80:
              PBRepeatedUInt32Add();
              goto LABEL_81;
            }
          }

          else
          {
            [a2 _setError];
            v40 |= (v96 & 0x7F) << v38;
            if ((v96 & 0x80) == 0)
            {
              goto LABEL_79;
            }
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            goto LABEL_80;
          }
        }
      }

      break;
    case 5:
      if (v13 != 2)
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
        do
        {
          LOBYTE(v94) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v90 |= (v94 & 0x7F) << v88;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_180;
            }
          }

          else
          {
            [a2 _setError];
            v90 |= (v94 & 0x7F) << v88;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_180;
            }
          }

          v88 += 7;
          v11 = v89++ >= 9;
        }

        while (!v11);
        goto LABEL_181;
      }

      v94 = 0;
      v95 = 0;
      result = PBReaderPlaceMark();
      if (result)
      {
LABEL_115:
        v51 = [a2 position];
        if (v51 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
          goto LABEL_3;
        }

        v52 = 0;
        v53 = 0;
        v54 = 0;
        while (1)
        {
          v96 = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v54 |= (v96 & 0x7F) << v52;
            if ((v96 & 0x80) == 0)
            {
LABEL_113:
              [a2 hasError];
LABEL_114:
              PBRepeatedUInt32Add();
              goto LABEL_115;
            }
          }

          else
          {
            [a2 _setError];
            v54 |= (v96 & 0x7F) << v52;
            if ((v96 & 0x80) == 0)
            {
              goto LABEL_113;
            }
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            goto LABEL_114;
          }
        }
      }

      break;
    case 6:
      if (v13 != 2)
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
        do
        {
          LOBYTE(v94) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v78 |= (v94 & 0x7F) << v76;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_180;
            }
          }

          else
          {
            [a2 _setError];
            v78 |= (v94 & 0x7F) << v76;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_180;
            }
          }

          v76 += 7;
          v11 = v77++ >= 9;
        }

        while (!v11);
        goto LABEL_181;
      }

      v94 = 0;
      v95 = 0;
      result = PBReaderPlaceMark();
      if (result)
      {
LABEL_49:
        v23 = [a2 position];
        if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
          goto LABEL_3;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v96 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v26 |= (v96 & 0x7F) << v24;
            if ((v96 & 0x80) == 0)
            {
LABEL_47:
              [a2 hasError];
LABEL_48:
              PBRepeatedUInt32Add();
              goto LABEL_49;
            }
          }

          else
          {
            [a2 _setError];
            v26 |= (v96 & 0x7F) << v24;
            if ((v96 & 0x80) == 0)
            {
              goto LABEL_47;
            }
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            goto LABEL_48;
          }
        }
      }

      break;
    default:
LABEL_92:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_4;
  }

  return result;
}

uint64_t AWDRadioStatsSReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if (([a2 hasError] & 1) == 0)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      do
      {
        v94 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v7 |= (v94 & 0x7F) << v5;
          if ((v94 & 0x80) == 0)
          {
LABEL_13:
            if ([a2 hasError])
            {
              v12 = 0;
            }

            else
            {
              v12 = v7;
            }

            if ([a2 hasError])
            {
              return [a2 hasError] ^ 1;
            }

            goto LABEL_17;
          }
        }

        else
        {
          [a2 _setError];
          v7 |= (v94 & 0x7F) << v5;
          if ((v94 & 0x80) == 0)
          {
            goto LABEL_13;
          }
        }

        v5 += 7;
      }

      while (v6++ < 9);
      v12 = 0;
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

LABEL_17:
      if ((v12 & 7) != 4)
      {
        switch((v12 >> 3))
        {
          case 1u:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x200u;
            while (1)
            {
              v94 = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                v18 = [a2 data];
                [v18 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v13;
                if ((v94 & 0x80) == 0)
                {
LABEL_164:
                  v21 = &OBJC_IVAR___AWDRadioStatsS__rttMinVal;
                  goto LABEL_171;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v13;
                if ((v94 & 0x80) == 0)
                {
                  goto LABEL_164;
                }
              }

              v13 += 7;
              v19 = v14++ > 8;
              if (v19)
              {
                v20 = 0;
                v21 = &OBJC_IVAR___AWDRadioStatsS__rttMinVal;
                goto LABEL_174;
              }
            }

          case 2u:
            v62 = 0;
            v63 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x100u;
            while (2)
            {
              v94 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v62;
                if (v94 < 0)
                {
LABEL_108:
                  v62 += 7;
                  v19 = v63++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__rttMaxVal;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v62;
                if (v94 < 0)
                {
                  goto LABEL_108;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__rttMaxVal;
            goto LABEL_171;
          case 3u:
            v47 = 0;
            v48 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x80u;
            while (2)
            {
              v94 = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v47;
                if (v94 < 0)
                {
LABEL_79:
                  v47 += 7;
                  v19 = v48++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__rttAvgVal;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v47;
                if (v94 < 0)
                {
                  goto LABEL_79;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__rttAvgVal;
            goto LABEL_171;
          case 4u:
            v52 = 0;
            v53 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x40u;
            while (2)
            {
              v94 = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v52;
                if (v94 < 0)
                {
LABEL_90:
                  v52 += 7;
                  v19 = v53++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__rtt90perc;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v52;
                if (v94 < 0)
                {
                  goto LABEL_90;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__rtt90perc;
            goto LABEL_171;
          case 5u:
            v32 = 0;
            v33 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x20u;
            while (2)
            {
              v94 = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v32;
                if (v94 < 0)
                {
LABEL_52:
                  v32 += 7;
                  v19 = v33++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__retryIntervalMin;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v32;
                if (v94 < 0)
                {
                  goto LABEL_52;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__retryIntervalMin;
            goto LABEL_171;
          case 6u:
            v67 = 0;
            v68 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x10u;
            while (2)
            {
              v94 = 0;
              v69 = [a2 position] + 1;
              if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
              {
                v71 = [a2 data];
                [v71 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v67;
                if (v94 < 0)
                {
LABEL_117:
                  v67 += 7;
                  v19 = v68++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__retryIntervalMax;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v67;
                if (v94 < 0)
                {
                  goto LABEL_117;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__retryIntervalMax;
            goto LABEL_171;
          case 7u:
            v77 = 0;
            v78 = 0;
            v15 = 0;
            *(a1 + 68) |= 8u;
            while (2)
            {
              v94 = 0;
              v79 = [a2 position] + 1;
              if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
              {
                v81 = [a2 data];
                [v81 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v77;
                if (v94 < 0)
                {
LABEL_135:
                  v77 += 7;
                  v19 = v78++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__retryIntervalAvg;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v77;
                if (v94 < 0)
                {
                  goto LABEL_135;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__retryIntervalAvg;
            goto LABEL_171;
          case 8u:
            v57 = 0;
            v58 = 0;
            v15 = 0;
            *(a1 + 68) |= 4u;
            while (2)
            {
              v94 = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v57;
                if (v94 < 0)
                {
LABEL_99:
                  v57 += 7;
                  v19 = v58++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__retryInterval90perc;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v57;
                if (v94 < 0)
                {
                  goto LABEL_99;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__retryInterval90perc;
            goto LABEL_171;
          case 9u:
            v87 = 0;
            v88 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x4000u;
            while (2)
            {
              v94 = 0;
              v89 = [a2 position] + 1;
              if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
              {
                v91 = [a2 data];
                [v91 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v87;
                if (v94 < 0)
                {
LABEL_153:
                  v87 += 7;
                  v19 = v88++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__txDelayMin;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v87;
                if (v94 < 0)
                {
                  goto LABEL_153;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__txDelayMin;
LABEL_171:
            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v15;
            }

LABEL_174:
            *(a1 + *v21) = v20;
LABEL_175:
            v92 = [a2 position];
            if (v92 >= [a2 length])
            {
              return [a2 hasError] ^ 1;
            }

            continue;
          case 0xAu:
            v42 = 0;
            v43 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x2000u;
            while (2)
            {
              v94 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v42;
                if (v94 < 0)
                {
LABEL_70:
                  v42 += 7;
                  v19 = v43++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__txDelayMax;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v42;
                if (v94 < 0)
                {
                  goto LABEL_70;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__txDelayMax;
            goto LABEL_171;
          case 0xBu:
            v82 = 0;
            v83 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x1000u;
            while (2)
            {
              v94 = 0;
              v84 = [a2 position] + 1;
              if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
              {
                v86 = [a2 data];
                [v86 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v82;
                if (v94 < 0)
                {
LABEL_144:
                  v82 += 7;
                  v19 = v83++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__txDelayAvg;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v82;
                if (v94 < 0)
                {
                  goto LABEL_144;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__txDelayAvg;
            goto LABEL_171;
          case 0xCu:
            v27 = 0;
            v28 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x800u;
            while (2)
            {
              v94 = 0;
              v29 = [a2 position] + 1;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v27;
                if (v94 < 0)
                {
LABEL_43:
                  v27 += 7;
                  v19 = v28++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__txDelay90perc;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v27;
                if (v94 < 0)
                {
                  goto LABEL_43;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__txDelay90perc;
            goto LABEL_171;
          case 0xDu:
            v37 = 0;
            v38 = 0;
            v15 = 0;
            *(a1 + 68) |= 1u;
            while (2)
            {
              v94 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v37;
                if (v94 < 0)
                {
LABEL_61:
                  v37 += 7;
                  v19 = v38++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__listeningTime;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v37;
                if (v94 < 0)
                {
                  goto LABEL_61;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__listeningTime;
            goto LABEL_171;
          case 0xEu:
            v72 = 0;
            v73 = 0;
            v15 = 0;
            *(a1 + 68) |= 2u;
            while (2)
            {
              v94 = 0;
              v74 = [a2 position] + 1;
              if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
              {
                v76 = [a2 data];
                [v76 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v72;
                if (v94 < 0)
                {
LABEL_126:
                  v72 += 7;
                  v19 = v73++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__receivingTime;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v72;
                if (v94 < 0)
                {
                  goto LABEL_126;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__receivingTime;
            goto LABEL_171;
          case 0xFu:
            v22 = 0;
            v23 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x400u;
            while (2)
            {
              v94 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v15 |= (v94 & 0x7F) << v22;
                if (v94 < 0)
                {
LABEL_34:
                  v22 += 7;
                  v19 = v23++ > 8;
                  if (v19)
                  {
                    v20 = 0;
                    v21 = &OBJC_IVAR___AWDRadioStatsS__transmittingTime;
                    goto LABEL_174;
                  }

                  continue;
                }
              }

              else
              {
                [a2 _setError];
                v15 |= (v94 & 0x7F) << v22;
                if (v94 < 0)
                {
                  goto LABEL_34;
                }
              }

              break;
            }

            v21 = &OBJC_IVAR___AWDRadioStatsS__transmittingTime;
            goto LABEL_171;
          default:
            if (PBReaderSkipValueWithTag())
            {
              goto LABEL_175;
            }

            return 0;
        }
      }
    }

    return [a2 hasError] ^ 1;
  }
}

void AWDMetricsLogger_EngagementMetrics(void *a1)
{
  v1 = a1;
  memset(&v89, 0, sizeof(v89));
  std::string::append(&v89, "AWDFlagstoneEngagementMetrics:: ");
  if ([v1 hasHeader])
  {
    v2 = [v1 header];
    v3 = [v2 hasDaemonVersion];

    if (v3)
    {
      std::string::append(&v89, "DaemonVersion=");
      v4 = [v1 header];
      v5 = [v4 daemonVersion];
      v6 = v5;
      std::string::append(&v89, [v5 UTF8String]);

      std::string::append(&v89, "::");
    }

    v7 = [v1 header];
    v8 = [v7 hasVendorVersion];

    if (v8)
    {
      std::string::append(&v89, "VendorVersion=");
      v9 = [v1 header];
      v10 = [v9 vendorVersion];
      v11 = v10;
      std::string::append(&v89, [v10 UTF8String]);

      std::string::append(&v89, "::");
    }
  }

  if ([v1 hasSCntrsEngagement])
  {
    std::string::append(&v89, "RouterNodesCount=");
    v12 = [v1 sCntrsEngagement];
    std::to_string(&v90, [v12 routerNodesCount]);
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v90;
    }

    else
    {
      v13 = v90.__r_.__value_.__r.__words[0];
    }

    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v90.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v90.__r_.__value_.__l.__size_;
    }

    std::string::append(&v89, v13, size);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    std::string::append(&v89, "::");
    std::string::append(&v89, "ChildNodesCount=");
    v15 = [v1 sCntrsEngagement];
    std::to_string(&v90, [v15 childNodesCount]);
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v90;
    }

    else
    {
      v16 = v90.__r_.__value_.__r.__words[0];
    }

    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v90.__r_.__value_.__l.__size_;
    }

    std::string::append(&v89, v16, v17);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    std::string::append(&v89, "::");
  }

  if ([v1 hasSCntrsDiscoveryJoin])
  {
    v18 = [v1 sCntrsDiscoveryJoin];
    v19 = [v18 accessoryNodesCountHistogramsCount] == 0;

    if (!v19)
    {
      std::string::append(&v89, "AccessoryNodesCountHistograms=");
      for (i = 0; ; ++i)
      {
        v21 = [v1 sCntrsDiscoveryJoin];
        v22 = [v21 accessoryNodesCountHistogramsCount] > i;

        if (!v22)
        {
          break;
        }

        std::string::append(&v89, "[");
        v23 = [v1 sCntrsDiscoveryJoin];
        std::to_string(&v90, *([v23 accessoryNodesCountHistograms] + i));
        if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v90;
        }

        else
        {
          v24 = v90.__r_.__value_.__r.__words[0];
        }

        if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = v90.__r_.__value_.__l.__size_;
        }

        std::string::append(&v89, v24, v25);
        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        std::string::append(&v89, "]");
      }

      std::string::append(&v89, "::");
    }

    v26 = [v1 sCntrsDiscoveryJoin];
    v27 = [v26 hasSCntrsJoiner];

    if (v27)
    {
      std::string::append(&v89, "JoinSuccessRate=");
      v28 = [v1 sCntrsDiscoveryJoin];
      v29 = [v28 sCntrsJoiner];
      [v29 joinSuccessRate];
      std::to_string(&v90, v30);
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v90;
      }

      else
      {
        v31 = v90.__r_.__value_.__r.__words[0];
      }

      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = v90.__r_.__value_.__l.__size_;
      }

      std::string::append(&v89, v31, v32);
      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      std::string::append(&v89, "::");
      std::string::append(&v89, "JoinAttempts=");
      v33 = [v1 sCntrsDiscoveryJoin];
      v34 = [v33 sCntrsJoiner];
      std::to_string(&v90, [v34 joinAttempts]);
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v90;
      }

      else
      {
        v35 = v90.__r_.__value_.__r.__words[0];
      }

      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = v90.__r_.__value_.__l.__size_;
      }

      std::string::append(&v89, v35, v36);
      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      std::string::append(&v89, "::");
      v37 = [v1 sCntrsDiscoveryJoin];
      v38 = [v37 sCntrsJoiner];
      v39 = [v38 attachLatencyHistogramsCount] == 0;

      if (!v39)
      {
        std::string::append(&v89, "AttachLatencyHistogramsCount=");
        for (j = 0; ; ++j)
        {
          v41 = [v1 sCntrsDiscoveryJoin];
          v42 = [v41 sCntrsJoiner];
          v43 = [v42 attachLatencyHistogramsCount] > j;

          if (!v43)
          {
            break;
          }

          std::string::append(&v89, "[");
          v44 = [v1 sCntrsDiscoveryJoin];
          v45 = [v44 sCntrsJoiner];
          std::to_string(&v90, *([v45 attachLatencyHistograms] + j));
          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = &v90;
          }

          else
          {
            v46 = v90.__r_.__value_.__r.__words[0];
          }

          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v47 = v90.__r_.__value_.__l.__size_;
          }

          std::string::append(&v89, v46, v47);
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          std::string::append(&v89, "]");
        }

        std::string::append(&v89, "::");
      }

      v48 = [v1 sCntrsDiscoveryJoin];
      v49 = [v48 sCntrsJoiner];
      v50 = [v49 joinerLatencyHistogramsCount] == 0;

      if (!v50)
      {
        std::string::append(&v89, "JoinerLatencyHistogramsCount=");
        for (k = 0; ; ++k)
        {
          v52 = [v1 sCntrsDiscoveryJoin];
          v53 = [v52 sCntrsJoiner];
          v54 = [v53 joinerLatencyHistogramsCount] > k;

          if (!v54)
          {
            break;
          }

          std::string::append(&v89, "[");
          v55 = [v1 sCntrsDiscoveryJoin];
          v56 = [v55 sCntrsJoiner];
          std::to_string(&v90, *([v56 joinerLatencyHistograms] + k));
          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = &v90;
          }

          else
          {
            v57 = v90.__r_.__value_.__r.__words[0];
          }

          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v58 = v90.__r_.__value_.__l.__size_;
          }

          std::string::append(&v89, v57, v58);
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          std::string::append(&v89, "]");
        }

        std::string::append(&v89, "::");
      }

      v59 = [v1 sCntrsDiscoveryJoin];
      v60 = [v59 sCntrsJoiner];
      v61 = [v60 attachFailLatencyHistogramsCount] == 0;

      if (!v61)
      {
        std::string::append(&v89, "AttachFailLatencyHistogramsCount=");
        for (m = 0; ; ++m)
        {
          v63 = [v1 sCntrsDiscoveryJoin];
          v64 = [v63 sCntrsJoiner];
          v65 = [v64 attachFailLatencyHistogramsCount] > m;

          if (!v65)
          {
            break;
          }

          std::string::append(&v89, "[");
          v66 = [v1 sCntrsDiscoveryJoin];
          v67 = [v66 sCntrsJoiner];
          std::to_string(&v90, *([v67 attachFailLatencyHistograms] + m));
          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v68 = &v90;
          }

          else
          {
            v68 = v90.__r_.__value_.__r.__words[0];
          }

          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v69 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v69 = v90.__r_.__value_.__l.__size_;
          }

          std::string::append(&v89, v68, v69);
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          std::string::append(&v89, "]");
        }

        std::string::append(&v89, "::");
      }

      v70 = [v1 sCntrsDiscoveryJoin];
      v71 = [v70 sCntrsJoiner];
      v72 = [v71 joinerFailLatencyHistogramsCount] == 0;

      if (!v72)
      {
        std::string::append(&v89, "JoinerFailLatencyHistogramsCount=");
        for (n = 0; ; ++n)
        {
          v74 = [v1 sCntrsDiscoveryJoin];
          v75 = [v74 sCntrsJoiner];
          v76 = [v75 joinerFailLatencyHistogramsCount] > n;

          if (!v76)
          {
            break;
          }

          std::string::append(&v89, "[");
          v77 = [v1 sCntrsDiscoveryJoin];
          v78 = [v77 sCntrsJoiner];
          std::to_string(&v90, *([v78 joinerFailLatencyHistograms] + n));
          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v79 = &v90;
          }

          else
          {
            v79 = v90.__r_.__value_.__r.__words[0];
          }

          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v80 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v80 = v90.__r_.__value_.__l.__size_;
          }

          std::string::append(&v89, v79, v80);
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          std::string::append(&v89, "]");
        }

        std::string::append(&v89, "::");
      }
    }
  }

  if ([v1 hasSCntrsReachability])
  {
    std::string::append(&v89, "LinkLossNbrChildCount=");
    v81 = [v1 sCntrsReachability];
    std::to_string(&v90, [v81 linkLossNbrChildCount]);
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = &v90;
    }

    else
    {
      v82 = v90.__r_.__value_.__r.__words[0];
    }

    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v83 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v83 = v90.__r_.__value_.__l.__size_;
    }

    std::string::append(&v89, v82, v83);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    std::string::append(&v89, "::");
    std::string::append(&v89, "LinkLossNbrRouterCount=");
    v84 = [v1 sCntrsReachability];
    std::to_string(&v90, [v84 linkLossNbrRouterCount]);
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = &v90;
    }

    else
    {
      v85 = v90.__r_.__value_.__r.__words[0];
    }

    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v86 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v86 = v90.__r_.__value_.__l.__size_;
    }

    std::string::append(&v89, v85, v86);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }
  }

  v87 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
  {
    v88 = &v89;
    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v88 = v89.__r_.__value_.__r.__words[0];
    }

    LODWORD(v90.__r_.__value_.__l.__data_) = 136315138;
    *(v90.__r_.__value_.__r.__words + 4) = v88;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "AWDMetricsLogger : %s", &v90, 0xCu);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }
}

void sub_10006E24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsLogger_NetworkRadioMetrics(void *a1)
{
  v1 = a1;
  memset(&v217, 0, sizeof(v217));
  std::string::append(&v217, "AWDFlagstoneNetworkRadioMetrics:: ");
  if ([v1 hasHeader])
  {
    v2 = [v1 header];
    v3 = [v2 hasDaemonVersion];

    if (v3)
    {
      std::string::append(&v217, "DaemonVersion=");
      v4 = [v1 header];
      v5 = [v4 daemonVersion];
      v6 = v5;
      std::string::append(&v217, [v5 UTF8String]);

      std::string::append(&v217, "::");
    }

    v7 = [v1 header];
    v8 = [v7 hasVendorVersion];

    if (v8)
    {
      std::string::append(&v217, "VendorVersion=");
      v9 = [v1 header];
      v10 = [v9 vendorVersion];
      v11 = v10;
      std::string::append(&v217, [v10 UTF8String]);

      std::string::append(&v217, "::");
    }
  }

  if ([v1 hasSCntrsNetwork])
  {
    v12 = [v1 sCntrsNetwork];
    v13 = [v12 packetRssiNbrRouterHistogramsCount] == 0;

    if (!v13)
    {
      std::string::append(&v217, "PacketRssiNbrRouterHistograms=");
      for (i = 0; ; ++i)
      {
        v15 = [v1 sCntrsNetwork];
        v16 = [v15 packetRssiNbrRouterHistogramsCount] > i;

        if (!v16)
        {
          break;
        }

        std::string::append(&v217, "[");
        v17 = [v1 sCntrsNetwork];
        std::to_string(&v218, *([v17 packetRssiNbrRouterHistograms] + i));
        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v218;
        }

        else
        {
          v18 = v218.__r_.__value_.__r.__words[0];
        }

        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v218.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v218.__r_.__value_.__l.__size_;
        }

        std::string::append(&v217, v18, size);
        if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v218.__r_.__value_.__l.__data_);
        }

        std::string::append(&v217, "]");
      }

      std::string::append(&v217, "::");
    }

    v20 = [v1 sCntrsNetwork];
    v21 = [v20 packetRssiNbrAccessoryHistogramsCount] == 0;

    if (!v21)
    {
      std::string::append(&v217, "PacketRssiNbrAccessoryHistograms=");
      for (j = 0; ; ++j)
      {
        v23 = [v1 sCntrsNetwork];
        v24 = [v23 packetRssiNbrAccessoryHistogramsCount] > j;

        if (!v24)
        {
          break;
        }

        std::string::append(&v217, "[");
        v25 = [v1 sCntrsNetwork];
        std::to_string(&v218, *([v25 packetRssiNbrAccessoryHistograms] + j));
        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v218;
        }

        else
        {
          v26 = v218.__r_.__value_.__r.__words[0];
        }

        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v218.__r_.__value_.__l.__size_;
        }

        std::string::append(&v217, v26, v27);
        if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v218.__r_.__value_.__l.__data_);
        }

        std::string::append(&v217, "]");
      }

      std::string::append(&v217, "::");
    }

    v28 = [v1 sCntrsNetwork];
    v29 = [v28 channelSelectionsHistogramsCount] == 0;

    if (!v29)
    {
      std::string::append(&v217, "ChannelSelectionsHistograms=");
      for (k = 0; ; ++k)
      {
        v31 = [v1 sCntrsNetwork];
        v32 = [v31 channelSelectionsHistogramsCount] > k;

        if (!v32)
        {
          break;
        }

        std::string::append(&v217, "[");
        v33 = [v1 sCntrsNetwork];
        std::to_string(&v218, *([v33 channelSelectionsHistograms] + k));
        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v218;
        }

        else
        {
          v34 = v218.__r_.__value_.__r.__words[0];
        }

        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v35 = v218.__r_.__value_.__l.__size_;
        }

        std::string::append(&v217, v34, v35);
        if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v218.__r_.__value_.__l.__data_);
        }

        std::string::append(&v217, "]");
      }

      std::string::append(&v217, "::");
    }

    v36 = [v1 sCntrsNetwork];
    v37 = [v36 packetLqiHistogramsCount] == 0;

    if (!v37)
    {
      std::string::append(&v217, "PacketLqiHistograms=");
      for (m = 0; ; ++m)
      {
        v39 = [v1 sCntrsNetwork];
        v40 = [v39 packetLqiHistogramsCount] > m;

        if (!v40)
        {
          break;
        }

        std::string::append(&v217, "[");
        v41 = [v1 sCntrsNetwork];
        std::to_string(&v218, *([v41 packetLqiHistograms] + m));
        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v218;
        }

        else
        {
          v42 = v218.__r_.__value_.__r.__words[0];
        }

        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v43 = v218.__r_.__value_.__l.__size_;
        }

        std::string::append(&v217, v42, v43);
        if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v218.__r_.__value_.__l.__data_);
        }

        std::string::append(&v217, "]");
      }

      std::string::append(&v217, "::");
    }
  }

  if ([v1 hasSCntrsRadio])
  {
    std::string::append(&v217, "cca_failed_attempts");
    std::string::append(&v217, "=");
    v44 = [v1 sCntrsRadio];
    std::to_string(&v218, [v44 ccaFailedAttempts]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &v218;
    }

    else
    {
      v45 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v45, v46);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "radio_received_frames");
    std::string::append(&v217, "=");
    v47 = [v1 sCntrsRadio];
    std::to_string(&v218, [v47 radioReceivedFrames]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v218;
    }

    else
    {
      v48 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v48, v49);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "received_energy_events");
    std::string::append(&v217, "=");
    v50 = [v1 sCntrsRadio];
    std::to_string(&v218, [v50 receivedEnergyEvents]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &v218;
    }

    else
    {
      v51 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v52 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v51, v52);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "received_preambles");
    std::string::append(&v217, "=");
    v53 = [v1 sCntrsRadio];
    std::to_string(&v218, [v53 receivedPreambles]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v218;
    }

    else
    {
      v54 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v55 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v54, v55);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "RttMinVal");
    std::string::append(&v217, "=");
    v56 = [v1 sCntrsRadio];
    std::to_string(&v218, [v56 rttMinVal]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v218;
    }

    else
    {
      v57 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v58 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v57, v58);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "RttMaxVal");
    std::string::append(&v217, "=");
    v59 = [v1 sCntrsRadio];
    std::to_string(&v218, [v59 rttMaxVal]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v218;
    }

    else
    {
      v60 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v61 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v60, v61);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "RttAvgVal");
    std::string::append(&v217, "=");
    v62 = [v1 sCntrsRadio];
    std::to_string(&v218, [v62 rttAvgVal]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v218;
    }

    else
    {
      v63 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v63, v64);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "Rtt90perc");
    std::string::append(&v217, "=");
    v65 = [v1 sCntrsRadio];
    std::to_string(&v218, [v65 rtt90perc]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = &v218;
    }

    else
    {
      v66 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v66, v67);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "RetryIntervalMin");
    std::string::append(&v217, "=");
    v68 = [v1 sCntrsRadio];
    std::to_string(&v218, [v68 retryIntervalMin]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &v218;
    }

    else
    {
      v69 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v69, v70);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "RetryIntervalMax");
    std::string::append(&v217, "=");
    v71 = [v1 sCntrsRadio];
    std::to_string(&v218, [v71 retryIntervalMax]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = &v218;
    }

    else
    {
      v72 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v73 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v72, v73);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "RetryIntervalAvg");
    std::string::append(&v217, "=");
    v74 = [v1 sCntrsRadio];
    std::to_string(&v218, [v74 retryIntervalAvg]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v218;
    }

    else
    {
      v75 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v75, v76);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "RetryInterval90Perc");
    std::string::append(&v217, "=");
    v77 = [v1 sCntrsRadio];
    std::to_string(&v218, [v77 retryInterval90perc]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = &v218;
    }

    else
    {
      v78 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v79 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v78, v79);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "TxDelayMin");
    std::string::append(&v217, "=");
    v80 = [v1 sCntrsRadio];
    std::to_string(&v218, [v80 txDelayMin]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = &v218;
    }

    else
    {
      v81 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v82 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v81, v82);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "TxDelayMax");
    std::string::append(&v217, "=");
    v83 = [v1 sCntrsRadio];
    std::to_string(&v218, [v83 txDelayMax]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v84 = &v218;
    }

    else
    {
      v84 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v85 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v84, v85);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "TxDelayAvg");
    std::string::append(&v217, "=");
    v86 = [v1 sCntrsRadio];
    std::to_string(&v218, [v86 txDelayAvg]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v87 = &v218;
    }

    else
    {
      v87 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v88 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v87, v88);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "TxDelay90Perc");
    std::string::append(&v217, "=");
    v89 = [v1 sCntrsRadio];
    std::to_string(&v218, [v89 txDelay90perc]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v90 = &v218;
    }

    else
    {
      v90 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v91 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v91 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v90, v91);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "ListeningTime");
    std::string::append(&v217, "=");
    v92 = [v1 sCntrsRadio];
    std::to_string(&v218, [v92 listeningTime]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = &v218;
    }

    else
    {
      v93 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v94 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v93, v94);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "ReceivingTime");
    std::string::append(&v217, "=");
    v95 = [v1 sCntrsRadio];
    std::to_string(&v218, [v95 receivingTime]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v96 = &v218;
    }

    else
    {
      v96 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v97 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v97 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v96, v97);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "::");
    std::string::append(&v217, "TrasmittingTime");
    std::string::append(&v217, "=");
    v98 = [v1 sCntrsRadio];
    std::to_string(&v218, [v98 transmittingTime]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v99 = &v218;
    }

    else
    {
      v99 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v100 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v100 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v99, v100);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "transmitted_frames");
    std::string::append(&v217, "=");
    v101 = [v1 sCntrsRadio];
    std::to_string(&v218, [v101 transmittedFrames]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v102 = &v218;
    }

    else
    {
      v102 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v103 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v102, v103);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_timeslot_ended");
    std::string::append(&v217, "=");
    v104 = [v1 sCntrsRadio];
    std::to_string(&v218, [v104 txErrorTimeslotEnded]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v105 = &v218;
    }

    else
    {
      v105 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v106 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v106 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v105, v106);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_timeslot_denied");
    std::string::append(&v217, "=");
    v107 = [v1 sCntrsRadio];
    std::to_string(&v218, [v107 txErrorTimeslotDenied]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v108 = &v218;
    }

    else
    {
      v108 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v109 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v109 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v108, v109);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_busy_channel_cca_not_started");
    std::string::append(&v217, "=");
    v110 = [v1 sCntrsRadio];
    std::to_string(&v218, [v110 txErrorBusyChannelCcaNotStarted]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v111 = &v218;
    }

    else
    {
      v111 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v112 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v112 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v111, v112);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_channel_access_cca_busy");
    std::string::append(&v217, "=");
    v113 = [v1 sCntrsRadio];
    std::to_string(&v218, [v113 txErrorChannelAccessCcaBusy]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v114 = &v218;
    }

    else
    {
      v114 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v115 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v115 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v114, v115);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_channel_access_failure");
    std::string::append(&v217, "=");
    v116 = [v1 sCntrsRadio];
    std::to_string(&v218, [v116 txErrorChannelAccessFailure]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v117 = &v218;
    }

    else
    {
      v117 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v118 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v118 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v117, v118);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_tx_aborted");
    std::string::append(&v217, "=");
    v119 = [v1 sCntrsRadio];
    std::to_string(&v218, [v119 txErrorTxAborted]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v120 = &v218;
    }

    else
    {
      v120 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v121 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v121 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v120, v121);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_tx_aborted_csma_cfg_backoff");
    std::string::append(&v217, "=");
    v122 = [v1 sCntrsRadio];
    std::to_string(&v218, [v122 txErrorTxAbortedCsmaCfgBackoff]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v123 = &v218;
    }

    else
    {
      v123 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v124 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v124 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v123, v124);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_tx_aborted_csma_backoff");
    std::string::append(&v217, "=");
    v125 = [v1 sCntrsRadio];
    std::to_string(&v218, [v125 txErrorTxAbortedCsmaBackoff]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v126 = &v218;
    }

    else
    {
      v126 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v127 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v127 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v126, v127);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_tx_aborted_csma_prepare");
    std::string::append(&v217, "=");
    v128 = [v1 sCntrsRadio];
    std::to_string(&v218, [v128 txErrorTxAbortedCsmaPrepare]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v129 = &v218;
    }

    else
    {
      v129 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v130 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v130 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v129, v130);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_tx_aborted_ifs");
    std::string::append(&v217, "=");
    v131 = [v1 sCntrsRadio];
    std::to_string(&v218, [v131 txErrorTxAbortedIfs]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v132 = &v218;
    }

    else
    {
      v132 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v133 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v133 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v132, v133);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_tx_aborted_rx_ack");
    std::string::append(&v217, "=");
    v134 = [v1 sCntrsRadio];
    std::to_string(&v218, [v134 txErrorTxAbortedRxAck]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v135 = &v218;
    }

    else
    {
      v135 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v136 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v136 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v135, v136);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_tx_aborted_cca_tx");
    std::string::append(&v217, "=");
    v137 = [v1 sCntrsRadio];
    std::to_string(&v218, [v137 txErrorTxAbortedCcaTx]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v138 = &v218;
    }

    else
    {
      v138 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v139 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v139 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v138, v139);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_tx_aborted_tx");
    std::string::append(&v217, "=");
    v140 = [v1 sCntrsRadio];
    std::to_string(&v218, [v140 txErrorTxAbortedTx]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v141 = &v218;
    }

    else
    {
      v141 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v142 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v142 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v141, v142);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_not_granted");
    std::string::append(&v217, "=");
    v143 = [v1 sCntrsRadio];
    std::to_string(&v218, [v143 txErrorNotGranted]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v144 = &v218;
    }

    else
    {
      v144 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v145 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v145 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v144, v145);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_invalid_ack");
    std::string::append(&v217, "=");
    v146 = [v1 sCntrsRadio];
    std::to_string(&v218, [v146 txErrorInvalidAck]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v147 = &v218;
    }

    else
    {
      v147 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v148 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v148 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v147, v148);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_no_ack");
    std::string::append(&v217, "=");
    v149 = [v1 sCntrsRadio];
    std::to_string(&v218, [v149 txErrorNoAck]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v150 = &v218;
    }

    else
    {
      v150 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v151 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v151 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v150, v151);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "tx_error_ack_no_mem");
    std::string::append(&v217, "=");
    v152 = [v1 sCntrsRadio];
    std::to_string(&v218, [v152 txErrorAckNoMem]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v153 = &v218;
    }

    else
    {
      v153 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v154 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v154 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v153, v154);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "received_frames");
    std::string::append(&v217, "=");
    v155 = [v1 sCntrsRadio];
    std::to_string(&v218, [v155 receivedFrames]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v156 = &v218;
    }

    else
    {
      v156 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v157 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v157 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v156, v157);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_receive_failed");
    std::string::append(&v217, "=");
    v158 = [v1 sCntrsRadio];
    std::to_string(&v218, [v158 rxErrorReceiveFailed]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v159 = &v218;
    }

    else
    {
      v159 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v160 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v160 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v159, v160);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_invalid_frame");
    std::string::append(&v217, "=");
    v161 = [v1 sCntrsRadio];
    std::to_string(&v218, [v161 rxErrorInvalidFrame]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v162 = &v218;
    }

    else
    {
      v162 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v163 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v163 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v162, v163);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_delayed_timeout");
    std::string::append(&v217, "=");
    v164 = [v1 sCntrsRadio];
    std::to_string(&v218, [v164 rxErrorDelayedTimeout]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v165 = &v218;
    }

    else
    {
      v165 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v166 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v166 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v165, v166);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_invalid_fcs");
    std::string::append(&v217, "=");
    v167 = [v1 sCntrsRadio];
    std::to_string(&v218, [v167 rxErrorInvalidFcs]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v168 = &v218;
    }

    else
    {
      v168 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v169 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v169 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v168, v169);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_dest_addr_filtered");
    std::string::append(&v217, "=");
    v170 = [v1 sCntrsRadio];
    std::to_string(&v218, [v170 rxErrorDestAddrFiltered]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v171 = &v218;
    }

    else
    {
      v171 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v172 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v172 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v171, v172);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_runtime_delay");
    std::string::append(&v217, "=");
    v173 = [v1 sCntrsRadio];
    std::to_string(&v218, [v173 rxErrorRuntimeDelay]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v174 = &v218;
    }

    else
    {
      v174 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v175 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v175 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v174, v175);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_timeslot_ended");
    std::string::append(&v217, "=");
    v176 = [v1 sCntrsRadio];
    std::to_string(&v218, [v176 rxErrorTimeslotEnded]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v177 = &v218;
    }

    else
    {
      v177 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v178 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v178 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v177, v178);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_aborted");
    std::string::append(&v217, "=");
    v179 = [v1 sCntrsRadio];
    std::to_string(&v218, [v179 rxErrorAborted]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v180 = &v218;
    }

    else
    {
      v180 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v181 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v181 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v180, v181);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_delayed_timeslot_ended");
    std::string::append(&v217, "=");
    v182 = [v1 sCntrsRadio];
    std::to_string(&v218, [v182 rxErrorDelayedTimeslotEnded]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v183 = &v218;
    }

    else
    {
      v183 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v184 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v184 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v183, v184);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_invalid_length");
    std::string::append(&v217, "=");
    v185 = [v1 sCntrsRadio];
    std::to_string(&v218, [v185 rxErrorInvalidLength]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v186 = &v218;
    }

    else
    {
      v186 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v187 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v187 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v186, v187);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_invalid_data");
    std::string::append(&v217, "=");
    v188 = [v1 sCntrsRadio];
    std::to_string(&v218, [v188 rxErrorInvalidData]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v189 = &v218;
    }

    else
    {
      v189 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v190 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v190 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v189, v190);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_ack_failed_radio_state");
    std::string::append(&v217, "=");
    v191 = [v1 sCntrsRadio];
    std::to_string(&v218, [v191 rxErrorAckFailedRadioState]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v192 = &v218;
    }

    else
    {
      v192 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v193 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v193 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v192, v193);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_ack_failed_radio_delay");
    std::string::append(&v217, "=");
    v194 = [v1 sCntrsRadio];
    std::to_string(&v218, [v194 rxErrorAckFailedRadioDelay]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v195 = &v218;
    }

    else
    {
      v195 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v196 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v196 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v195, v196);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_ack_denied");
    std::string::append(&v217, "=");
    v197 = [v1 sCntrsRadio];
    std::to_string(&v218, [v197 rxErrorAckDenied]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v198 = &v218;
    }

    else
    {
      v198 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v199 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v199 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v198, v199);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "rx_error_ack_aborted");
    std::string::append(&v217, "=");
    v200 = [v1 sCntrsRadio];
    std::to_string(&v218, [v200 rxErrorAckAborted]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v201 = &v218;
    }

    else
    {
      v201 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v202 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v202 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v201, v202);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "sleep_state");
    std::string::append(&v217, "=");
    v203 = [v1 sCntrsRadio];
    std::to_string(&v218, [v203 sleepState]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v204 = &v218;
    }

    else
    {
      v204 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v205 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v205 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v204, v205);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "energy_detected_requests");
    std::string::append(&v217, "=");
    v206 = [v1 sCntrsRadio];
    std::to_string(&v218, [v206 energyDetectedRequests]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v207 = &v218;
    }

    else
    {
      v207 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v208 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v208 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v207, v208);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "energy_detected_events");
    std::string::append(&v217, "=");
    v209 = [v1 sCntrsRadio];
    std::to_string(&v218, [v209 energyDetectedEvents]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v210 = &v218;
    }

    else
    {
      v210 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v211 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v211 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v210, v211);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    std::string::append(&v217, "radio_status_double_notification");
    std::string::append(&v217, "=");
    v212 = [v1 sCntrsRadio];
    std::to_string(&v218, [v212 radioStatusDoubleNotification]);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v213 = &v218;
    }

    else
    {
      v213 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v214 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v214 = v218.__r_.__value_.__l.__size_;
    }

    std::string::append(&v217, v213, v214);
    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }
  }

  v215 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v215, OS_LOG_TYPE_INFO))
  {
    v216 = &v217;
    if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v216 = v217.__r_.__value_.__r.__words[0];
    }

    LODWORD(v218.__r_.__value_.__l.__data_) = 136315138;
    *(v218.__r_.__value_.__r.__words + 4) = v216;
    _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_INFO, "AWDMetricsLogger : %s", &v218, 0xCu);
  }

  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v217.__r_.__value_.__l.__data_);
  }
}
void SVGDocument::SVGDocument(SVGDocument *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGDocument::kSVGDocumentClassName);
  CFRetained::CFRetained(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A441D8;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 18) = 0;
  operator new();
}

void sub_1DF10FE80(_Unwind_Exception *a1)
{
  v4 = v2;
  MEMORY[0x1E12CE5D0](v4, 0x10F3C40B1BF57FCLL);
  std::unique_ptr<SVGStyle>::reset[abi:ne200100](v3, 0);
  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t CFRetained::getTypeID(uint64_t a1)
{
  os_unfair_lock_lock(&CFRetained::getTypeID(std::string const&)::lock);
  if (GetClassRegistry(void)::onceToken != -1)
  {
    CFRetained::getTypeID();
  }

  v2 = GetClassRegistry(void)::classRegistry;
  if (std::__tree<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>>>::__count_unique<std::string>(GetClassRegistry(void)::classRegistry, a1))
  {
    v3 = *std::map<std::string,std::pair<unsigned long,__CFRuntimeClass *>>::at(v2, a1);
  }

  else
  {
    v4 = malloc_type_calloc(1uLL, 0x60uLL, 0x10D00408820D60FuLL);
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    v4[1] = strdup(v5);
    v4[4] = CFRetainedFinalize;
    v3 = _CFRuntimeRegisterClass();
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }

    v8 = v3;
    v9 = v4;
    std::__tree<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<unsigned long,__CFRuntimeClass *>>>(v2, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  os_unfair_lock_unlock(&CFRetained::getTypeID(std::string const&)::lock);
  return v3;
}

void sub_1DF1100FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CFRetained::CFRetained(void *a1, uint64_t a2)
{
  *a1 = &unk_1F5A44010;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  CFRetained::getTypeID(a2);
  Instance = _CFRuntimeCreateInstance();
  a1[5] = Instance;
  *(Instance + 16) = a1;
  return a1;
}

void sub_1DF110198(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
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

uint64_t std::__tree<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<unsigned long,__CFRuntimeClass *>>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>>>::__construct_node<std::pair<std::string const,std::pair<unsigned long,__CFRuntimeClass *>>>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
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

    v6 = 1;
    do
    {
      v7 = *(v2 + 55);
      if (v7 >= 0)
      {
        v8 = *(v2 + 55);
      }

      else
      {
        v8 = v2[5];
      }

      if (v7 >= 0)
      {
        v9 = (v2 + 4);
      }

      else
      {
        v9 = v2[4];
      }

      if (v8 >= v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = v8;
      }

      v11 = memcmp(v5, v9, v10);
      v12 = v4 < v8;
      if (v11)
      {
        v12 = v11 < 0;
      }

      if (!v12)
      {
        v13 = memcmp(v9, v5, v10);
        v14 = v8 < v4;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          return v6;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void *std::__tree<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_1DF1106FC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void SVGNode::SVGNode(SVGNode *this, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGNode::kSVGNodeClassName);
  CFRetained::CFRetained(this, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A443F8;
  *(this + 6) = 0;
  operator new();
}

void sub_1DF11083C(_Unwind_Exception *a1)
{
  v8 = v2;
  v10 = *v8;
  *v8 = 0;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8, v10);
  }

  v11 = *v6;
  *v6 = 0;
  if (v11)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6, v11);
  }

  v12 = *v5;
  *v5 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5, v12);
  }

  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(v4, *(v1 + 168));
  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(v3, *(v1 + 144));
  v13 = *(v1 + 112);
  if (v13)
  {
    *(v1 + 120) = v13;
    operator delete(v13);
  }

  v14 = *v7;
  if (*v7)
  {
    *(v1 + 96) = v14;
    operator delete(v14);
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void SVGAttributeMap::setAttribute(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 56);
  v7 = (a1 + 48);
  v8 = *(a2 + 48);
  if (v6)
  {
    v9 = a1 + 56;
    do
    {
      v10 = *(v6 + 32);
      v11 = v10 >= v8;
      v12 = v10 < v8;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * v12);
    }

    while (v6);
    if (v9 != a1 + 56 && v8 >= *(v9 + 32))
    {
      CFRetained::release(*(v9 + 40));
      std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::__remove_node_pointer(v7, v9);
      operator delete(v9);
      v8 = *(a2 + 48);
    }
  }

  v14 = v8;
  v15 = a2;
  std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::__emplace_unique_key_args<SVGAtom::Name,std::pair<SVGAtom::Name const,SVGAttribute *>>(v7, &v14);
  if (!a3)
  {
    CFRetained::retain(a2);
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    SVGNode::updatedAttribute(v13, a2);
  }
}

uint64_t std::map<std::string,std::pair<unsigned long,__CFRuntimeClass *>>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<unsigned long,__CFRuntimeClass *>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

_BYTE *SVGParser::FormatString@<X0>(SVGParser *this@<X0>, va_list *a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  if (vsnprintf(__str, 0x400uLL, this, *a2) >= 0x401)
  {
    SVGUtilities::error("Invalid format string or arguments provided", v5);
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, __str);
}

_BYTE *SVGParser::FormatString@<X0>(SVGParser *this@<X0>, _BYTE *a2@<X8>, ...)
{
  va_start(va, a2);
  va_copy(v4, va);
  return SVGParser::FormatString(this, v4, a2);
}

void *SVGAtom::ToString(unsigned int a1)
{
  if (SVGAtom::SharedInstance(void)::onceToken != -1)
  {
    SVGAtom::HasAtom();
  }

  v2 = SVGAtom::SharedInstance(void)::instance;

  return SVGAtom::toString(v2, a1);
}

BOOL SVGColor::GetColorWithString(SVGColor *this, double *a2, SVGColor *a3)
{
  *&v59[58] = *MEMORY[0x1E69E9840];
  v5 = strlen(this);
  if (!SVGParser::StripLeadingTrailingWhitespace(this, v5, &__s, 0x40))
  {
    return 0;
  }

  if (NameToColorMap(void)::__onceToken != -1)
  {
    SVGColor::GetColorWithString();
  }

  v6 = NameToColorMap(void)::__colorMap;
  std::string::basic_string[abi:ne200100]<0>(__p, &__s);
  v7 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(v6, __p);
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 + 8 != v7)
  {
    v8 = *(v7 + 56);
    v9 = vand_s8(vshl_u32(vdup_n_s32(v8), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v10.i64[0] = v9.u32[0];
    v10.i64[1] = v9.u32[1];
    *a2 = vdivq_f64(vcvtq_f64_u64(v10), vdupq_n_s64(0x406FE00000000000uLL));
    v11 = v8 / 255.0;
LABEL_8:
    a2[2] = v11;
    a2[3] = 1.0;
    return 1;
  }

  v13 = strlen(&__s);
  if (__s == 35)
  {
    v15 = v13;
    if (v13 == 7 || v13 == 4)
    {
      *__error() = 0;
      v16 = strtoul(v56, 0, 16);
      if (!*__error())
      {
        if (v15 == 4)
        {
          v21 = 15;
        }

        else
        {
          v21 = 255;
        }

        v22 = 255.0;
        if (v15 == 4)
        {
          v22 = 15.0;
        }

        v23 = vand_s8(vshl_u32(vdup_n_s32(v16), vneg_s32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v15 == 4), 0x1FuLL)), 0x400000008, 0x800000010))), vdup_n_s32(v21));
        v24.i64[0] = v23.u32[0];
        v24.i64[1] = v23.u32[1];
        *a2 = vdivq_f64(vcvtq_f64_u64(v24), vdupq_lane_s64(*&v22, 0));
        v11 = (v21 & v16) / v22;
        goto LABEL_8;
      }
    }
  }

  *a2 = 0.0;
  a2[1] = 0.0;
  a2[2] = 0.0;
  a2[3] = 1.0;
  if (SVGParser::StringBeginsWith(&__s, "rgb(", v14))
  {
    ColorValues = ReadColorValues(&v57, a2, 255.0);
  }

  else if (SVGParser::StringBeginsWith(&__s, "rgba(", v17))
  {
    ColorValues = ReadColorValues(&v58, a2, 255.0);
  }

  else
  {
    if (!SVGParser::StringBeginsWith(&__s, "color(", v19))
    {
      if (SVGParser::StringBeginsWith(&__s, "hsl(", v20))
      {
        if ((ReadColorValues(&v57, a2, 255.0) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (!SVGParser::StringBeginsWith(&__s, "hsla(", v25))
        {
          if (SVGParser::StringBeginsWith(&__s, "none", v26))
          {
            a2[3] = 0.0;
            return 1;
          }

          return 0;
        }

        if (!ReadColorValues(&v58, a2, 255.0))
        {
          return 0;
        }
      }

      v27 = *a2;
      v28 = a2[1];
      v29 = a2[2];
      v30 = v28 + v29 - v29 * v28;
      v31 = v29 * (v28 + 1.0);
      if (v29 > 0.5)
      {
        v31 = v30;
      }

      v32 = -(v31 - v29 * 2.0);
      v33 = v31 - v32;
      v34 = (v27 + -3.33333333 - floor(v27 + -3.33333333)) * 6.0;
      if (v34 + -4.0 >= 0.0)
      {
        v35 = v32;
      }

      else
      {
        v35 = v32 + (v31 - v32) * (4.0 - v34);
      }

      if (v34 + -3.0 < 0.0)
      {
        v35 = v31;
      }

      v36 = v34 + -1.0;
      v37 = v32 + v33 * v34;
      if (v36 >= 0.0)
      {
        v37 = v35;
      }

      v38.f64[1] = *a2;
      v38.f64[0] = v27 + 3.33333333;
      v39 = vsubq_f64(v38, vrndmq_f64(v38));
      __asm { FMOV            V4.2D, #6.0 }

      v45 = vmulq_f64(v39, _Q4);
      __asm
      {
        FMOV            V4.2D, #-4.0
        FMOV            V6.2D, #4.0
      }

      v48 = vdupq_lane_s64(*&v32, 0);
      v49 = vbslq_s8(vcltzq_f64(vaddq_f64(v45, _Q4)), vmlaq_n_f64(v48, vsubq_f64(_Q6, v45), v33), v48);
      __asm { FMOV            V6.2D, #-3.0 }

      v51 = vbslq_s8(vcltzq_f64(vaddq_f64(v45, _Q6)), vdupq_lane_s64(*&v31, 0), v49);
      __asm { FMOV            V4.2D, #-1.0 }

      *a2 = vbslq_s8(vcltzq_f64(vaddq_f64(v45, _Q4)), vmlaq_n_f64(v48, v45, v33), v51);
      a2[2] = v37;
      return 1;
    }

    ColorValues = ReadColorValues(v59, a2, 1.0);
  }

  return (ColorValues & 1) != 0;
}

void sub_1DF110F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGAttributeMap::SVGAttributeMap(SVGAttributeMap *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttributeMap::kSVGAttributeMapClassName);
  CFRetained::CFRetained(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A43F80;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
}

void sub_1DF111034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGAttribute::SVGAttribute(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 1;
  operator new();
}

{
  v6 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 1;
  operator new();
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 1;
  operator new();
}

{
  v6 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 1;
  operator new();
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 3;
  operator new();
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 3;
  operator new();
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 3;
  operator new();
}

{
  v6 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 1;
  operator new();
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 1;
  operator new();
}

void sub_1DF1111A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 79) < 0)
  {
    operator delete(*v22);
  }

  *v21 = &unk_1F5A44010;
  if (*(v21 + 31) < 0)
  {
    operator delete(*(v21 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DF11128C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SVGRootNode::SVGRootNode(SVGRootNode *this)
{
  v2 = 3;
  LODWORD(__p) = 6780531;
  SVGViewBoxNode::SVGViewBoxNode(this, &__p);
}

void sub_1DF111324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGViewBoxNode::SVGViewBoxNode(SVGNode *a1, const char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  SVGNode::SVGNode(a1, a2);
}

uint64_t *std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::__emplace_unique_key_args<SVGAtom::Name,std::pair<SVGAtom::Name const,SVGAttribute *>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void SVGPaint::SVGPaint(SVGPaint *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPaint::kSVGPaintClassName);
  CFRetained::CFRetained(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A44460;
  *(this + 12) = 0;
  SVGColor::SVGColor(this + 56, 3u, 0.0, 0.0, 0.0, 1.0);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0x3FF0000000000000;
}

void sub_1DF111B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v4 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v9.__r_.__value_.__r.__words[0];
    v6 = strcasecmp(v5, v9.__r_.__value_.__l.__data_);
    operator delete(v8);
    if ((*(&v10.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v6 >> 31;
    }

    goto LABEL_12;
  }

  v6 = strcasecmp(v5, &v9);
  if (v4 < 0)
  {
LABEL_12:
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6 >> 31;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v4 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v9.__r_.__value_.__r.__words[0];
    v6 = strcasecmp(v5, v9.__r_.__value_.__l.__data_);
    operator delete(v8);
    if ((*(&v10.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v6 >> 31;
    }

    goto LABEL_12;
  }

  v6 = strcasecmp(v5, &v9);
  if (v4 < 0)
  {
LABEL_12:
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6 >> 31;
}

void sub_1DF111CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGAtom::toName(os_unfair_lock_s *this, char *a2)
{
  if (!a2 || !*a2)
  {
    return 0;
  }

  os_unfair_lock_lock(this + 22);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::find<std::string>(this, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (&this[2] == v4)
  {
    os_unfair_lock_unlock(this + 22);
    return SVGAtom::insert(this, a2, 0);
  }

  v5 = v4[14];
  os_unfair_lock_unlock(this + 22);
  if (!v5)
  {
    return SVGAtom::insert(this, a2, 0);
  }

  return v5;
}

void sub_1DF111DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGAttributeMap::enumerate(uint64_t result, uint64_t a2)
{
  v8 = 0;
  v2 = *(result + 48);
  v3 = (result + 56);
  if (v2 != (result + 56))
  {
    do
    {
      result = (*(a2 + 16))(a2, *(v2 + 8), v2[5], &v8);
      if (v8)
      {
        break;
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

void SVGReader::parseXMLNodeStyle(SVGReader *this, _xmlNode *cur)
{
  Content = xmlNodeGetContent(cur);
  if (Content)
  {
    v4 = Content;
    if (*Content)
    {
      v5 = *(this + 2);
      if (!v5)
      {
        operator new();
      }

      SVGStyle::addDefinitionsFromCSS(v5, v4);
    }

    free(v4);
  }
}

void SVGReader::parseXMLNodeAttributes(SVGReader *this, _xmlNode *a2, SVGAttributeMap *a3)
{
  for (i = a2->properties; i; i = i->next)
  {
    v6 = SVGAtom::ToName(i->name, a2);
    if (*this && *(*this + 8) == 1 && v6 >= 0x9F)
    {
      SVGReader::report(v6, "Attribute: '%s' is not allowed in strict mode", a2->line, v7, i->name);
    }

    else if (v6)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, i->children->content);
      SVGAttributeMap::setAttribute();
    }
  }
}

void sub_1DF111FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGAtom::ToName(SVGAtom *this, const char *a2)
{
  if (SVGAtom::SharedInstance(void)::onceToken != -1)
  {
    SVGAtom::HasAtom();
  }

  v3 = SVGAtom::SharedInstance(void)::instance;

  return SVGAtom::toName(v3, this);
}

void SVGReader::parseXMLNode(SVGReader *this, _xmlNode *a2, SVGNode *a3)
{
  if (a2->type != XML_COMMENT_NODE && !xmlNodeIsText(a2))
  {
    if (a2->type == XML_CDATA_SECTION_NODE)
    {

      SVGUtilities::log("CDATA section node is not currently supported", v4);
    }

    else
    {
      name = a2->name;
      if (name && *name)
      {
        SVGAtom::ToName(name, v4);
        operator new();
      }

      line = a2->line;

      SVGReader::report(name, "Invalid node name", line, v5);
    }
  }
}

void SVGReader::SVGReader(SVGReader *this, CFDataRef theData, const SVGReaderOptions *a3)
{
  *this = a3;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  BytePtr = CFDataGetBytePtr(theData);
  if (BytePtr)
  {
    Length = CFDataGetLength(theData);
    v8 = Length;
    if (Length <= 0)
    {
      SVGReader::report(Length, "Got zero-length from CFDataRef", 0, v7);
    }

    else
    {
      Memory = xmlReadMemory(BytePtr, Length, 0, 0, 0);
      if (Memory || (Memory = xmlReadMemory(BytePtr, v8, 0, 0, 0x80000)) != 0)
      {
        RootElement = xmlDocGetRootElement(Memory);
        v13 = SVGAtom::ToName(RootElement->name, v12);
        if (v13 == 61)
        {
          operator new();
        }

        SVGReader::report(v13, "Root XML node does not have SVG type", 0, v14);
        xmlFreeDoc(Memory);
      }

      else
      {
        SVGReader::report(0, "Failed to parse with xmlReadMemory", 0, v10);
      }
    }
  }

  else
  {
    SVGReader::report(0, "Got null from CFDataGetBytePtr(...)", 0, v4);
  }
}

void sub_1DF112B48(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  std::unique_ptr<SVGStyle>::reset[abi:ne200100]((v1 + 16), 0);
  _Unwind_Resume(a1);
}

locale_t ___ZL10GetLocaleCv_block_invoke()
{
  result = newlocale(63, "C", 0);
  GetLocaleC(void)::localeC = result;
  return result;
}

SVGAttribute *SVGReader::applyStyleToAttributes(SVGReader *this, SVGNode *a2, SVGAttributeMap *a3)
{
  result = SVGAttributeMap::attribute(a3, 0x3Cu);
  if (result)
  {
    v5 = SVGAttribute::stringValue(result);
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *v5, *(v5 + 8));
    }

    else
    {
      v6 = *v5;
      v9.__r_.__value_.__r.__words[2] = *(v5 + 16);
      *&v9.__r_.__value_.__l.__data_ = v6;
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = v9;
    }

    SVGParser::ParseDeclarationBlockFromRuleset(&v7, 1, &v8);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  if (*(this + 2))
  {
    operator new();
  }

  return result;
}

void sub_1DF112F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGAtom::_mapInit(os_unfair_lock_s *a1, char *a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 22);
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  v10 = a3;
  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::__emplace_unique_key_args<std::string,std::pair<std::string,SVGAtom::Name>>(a1, &__p);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  LODWORD(__p) = a3;
  std::string::basic_string[abi:ne200100]<0>(&v8, a2);
  std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::__emplace_unique_key_args<SVGAtom::Name,std::pair<SVGAtom::Name,std::string>>(&a1[6], &__p);
  if (v11 < 0)
  {
    operator delete(v8);
  }

  os_unfair_lock_unlock(a1 + 22);
  return a3;
}

void sub_1DF113068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *SVGAtom::initializeTable(os_unfair_lock_s *this)
{
  SVGAtom::_mapInit(this, "accumulate", 142);
  v3 = 142;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "additive", 141);
  v3 = 141;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "animate", 131);
  v3 = 131;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "animateMotion", 133);
  v3 = 133;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "animateTransform", 134);
  v3 = 134;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "attributeName", 135);
  v3 = 135;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "attributeType", 136);
  v3 = 136;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "baseProfile", 106);
  v3 = 106;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "begin", 137);
  v3 = 137;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "bevel", 1);
  v3 = 1;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "bias", 124);
  v3 = 124;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "butt", 2);
  v3 = 2;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "by", 144);
  v3 = 144;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "calcMode", 152);
  v3 = 152;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "circle", 3);
  v3 = 3;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "class", 4);
  v3 = 4;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "clipPath", 5);
  v3 = 5;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "clip-path", 6);
  v3 = 6;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "clipPathUnits", 7);
  v3 = 7;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "clip-rule", 8);
  v3 = 8;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "color", 158);
  v3 = 158;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "cx", 9);
  v3 = 9;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "cy", 10);
  v3 = 10;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "d", 11);
  v3 = 11;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "defs", 14);
  v3 = 14;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "display-p3", 15);
  v3 = 15;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "divisor", 123);
  v3 = 123;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "dur", 138);
  v3 = 138;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "dx", 96);
  v3 = 96;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "dy", 97);
  v3 = 97;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "edgeMode", 127);
  v3 = 127;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "editable", 113);
  v3 = 113;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "ellipse", 16);
  v3 = 16;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "end", 146);
  v3 = 146;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "evenodd", 17);
  v3 = 17;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "extended-srgb", 73);
  v3 = 73;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "externalResourcesRequired", 108);
  v3 = 108;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "feBlend", 101);
  v3 = 101;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "feComposite", 114);
  v3 = 114;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "feConvolveMatrix", 120);
  v3 = 120;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "feFlood", 91);
  v3 = 91;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "feGaussianBlur", 103);
  v3 = 103;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "feImage", 94);
  v3 = 94;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "feMerge", 98);
  v3 = 98;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "feMergeNode", 99);
  v3 = 99;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "feOffset", 95);
  v3 = 95;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "feTile", 100);
  v3 = 100;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "fill", 18);
  v3 = 18;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "fill-opacity", 19);
  v3 = 19;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "fill-rule", 20);
  v3 = 20;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "fill-stroke", 21);
  v3 = 21;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "filter", 84);
  v3 = 84;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "filterRes", 87);
  v3 = 87;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "filterUnits", 85);
  v3 = 85;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "flood-color", 92);
  v3 = 92;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "flood-opacity", 93);
  v3 = 93;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "focusable", 109);
  v3 = 109;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "font", 22);
  v3 = 22;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "font-family", 23);
  v3 = 23;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "font-size", 24);
  v3 = 24;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "font-weight", 25);
  v3 = 25;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "from", 139);
  v3 = 139;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "fx", 26);
  v3 = 26;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "fy", 27);
  v3 = 27;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "g", 29);
  v3 = 29;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "gradientTransform", 78);
  v3 = 78;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "gradientUnits", 28);
  v3 = 28;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "spreadMethod", 130);
  v3 = 130;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "height", 30);
  v3 = 30;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "id", 31);
  v3 = 31;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "image", 77);
  v3 = 77;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "in", 88);
  v3 = 88;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "in2", 89);
  v3 = 89;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "k1", 116);
  v3 = 116;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "k2", 117);
  v3 = 117;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "k3", 118);
  v3 = 118;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "k4", 119);
  v3 = 119;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "kernelMatrix", 122);
  v3 = 122;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "kernelUnitLength", 128);
  v3 = 128;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "keySplines", 154);
  v3 = 154;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "keyTimes", 153);
  v3 = 153;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "keyPoints", 156);
  v3 = 156;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "line", 32);
  v3 = 32;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "linearGradient", 33);
  v3 = 33;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "mask", 74);
  v3 = 74;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "maskUnits", 75);
  v3 = 75;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "maskContentUnits", 76);
  v3 = 76;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "max", 148);
  v3 = 148;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "mesh", 36);
  v3 = 36;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "min", 147);
  v3 = 147;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "miter", 37);
  v3 = 37;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "mode", 102);
  v3 = 102;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "mpath", 155);
  v3 = 155;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "nonzero", 39);
  v3 = 39;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "offset", 40);
  v3 = 40;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "opacity", 41);
  v3 = 41;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "operator", 115);
  v3 = 115;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "order", 121);
  v3 = 121;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "path", 42);
  v3 = 42;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "pattern", 79);
  v3 = 79;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "patternContentUnits", 81);
  v3 = 81;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "patternTransform", 82);
  v3 = 82;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "patternUnits", 80);
  v3 = 80;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "playbackOrder", 111);
  v3 = 111;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "points", 43);
  v3 = 43;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "polygon", 44);
  v3 = 44;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "polyline", 45);
  v3 = 45;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "preserveAspectRatio", 46);
  v3 = 46;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "preserveAlpha", 129);
  v3 = 129;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "primitiveUnits", 86);
  v3 = 86;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "r", 47);
  v3 = 47;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "radialGradient", 48);
  v3 = 48;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "rect", 49);
  v3 = 49;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "repeatDuration", 151);
  v3 = 151;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "repeatCount", 150);
  v3 = 150;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "restart", 149);
  v3 = 149;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "result", 90);
  v3 = 90;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "round", 50);
  v3 = 50;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "rx", 51);
  v3 = 51;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "ry", 52);
  v3 = 52;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "set", 132);
  v3 = 132;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "srgb", 53);
  v3 = 53;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stdDeviation", 104);
  v3 = 104;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "square", 54);
  v3 = 54;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stop", 55);
  v3 = 55;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stop-color", 56);
  v3 = 56;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stop-opacity", 83);
  v3 = 83;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stroke", 57);
  v3 = 57;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stroke-dasharray", 12);
  v3 = 12;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stroke-dashoffset", 13);
  v3 = 13;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stroke-linecap", 34);
  v3 = 34;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stroke-linejoin", 35);
  v3 = 35;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stroke-miterlimit", 38);
  v3 = 38;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stroke-opacity", 58);
  v3 = 58;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "stroke-width", 59);
  v3 = 59;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "style", 60);
  v3 = 60;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "svg", 61);
  v3 = 61;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "snapShotTime", 110);
  v3 = 110;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "symbol", 62);
  v3 = 62;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "targetX", 125);
  v3 = 125;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "targetY", 126);
  v3 = 126;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "text-anchor", 157);
  v3 = 157;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "timelineBegin", 112);
  v3 = 112;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "to", 140);
  v3 = 140;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "transform", 63);
  v3 = 63;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "type", 143);
  v3 = 143;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "values", 145);
  v3 = 145;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "version", 64);
  v3 = 64;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "viewBox", 65);
  v3 = 65;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "width", 66);
  v3 = 66;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "x", 67);
  v3 = 67;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "xmlns", 105);
  v3 = 105;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "x1", 68);
  v3 = 68;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "x2", 69);
  v3 = 69;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "y", 70);
  v3 = 70;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "y1", 71);
  v3 = 71;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "y2", 72);
  v3 = 72;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "zoomAndPan", 107);
  v3 = 107;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "text", 10001);
  v3 = 10001;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "letter-spacing", 10000);
  v3 = 10000;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "href", 20000);
  v3 = 20000;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "use", 20001);
  v3 = 20001;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "xlink:href", 20000);
  v3 = 20000;
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
  SVGAtom::_mapInit(this, "unknown", 0);
  v3 = 0;
  return std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(&this[12]._os_unfair_lock_opaque, &v3);
}

uint64_t std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::__emplace_unique_key_args<std::string,std::pair<std::string,SVGAtom::Name>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v4 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v9.__r_.__value_.__r.__words[0];
    v6 = strcasecmp(v5, v9.__r_.__value_.__l.__data_);
    operator delete(v8);
    if ((*(&v10.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v6 >> 31;
    }

    goto LABEL_12;
  }

  v6 = strcasecmp(v5, &v9);
  if (v4 < 0)
  {
LABEL_12:
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6 >> 31;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v4 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v9.__r_.__value_.__r.__words[0];
    v6 = strcasecmp(v5, v9.__r_.__value_.__l.__data_);
    operator delete(v8);
    if ((*(&v10.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v6 >> 31;
    }

    goto LABEL_12;
  }

  v6 = strcasecmp(v5, &v9);
  if (v4 < 0)
  {
LABEL_12:
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6 >> 31;
}

void sub_1DF114E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF114F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL14NameToColorMapv_block_invoke()
{
  MEMORY[0x1EEE9AC00]();
  v0 = *MEMORY[0x1E69E9840];
  operator new();
}

void sub_1DF116424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = (v9 + 4759);
  v12 = -4768;
  v13 = v11;
  while (1)
  {
    v14 = *v13;
    v13 -= 32;
    if (v14 < 0)
    {
      operator delete(*(v11 - 23));
    }

    v11 = v13;
    v12 += 32;
    if (!v12)
    {
      MEMORY[0x1E12CE5D0](a9, 0x1020C4062D53EE8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(void *a1, void *a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__construct_node<std::pair<std::string const,unsigned int> const&>();
  }

  return result;
}

void *std::map<std::string,unsigned int,CaseInsensitiveStringLess,std::allocator<std::pair<std::string const,unsigned int>>>::map[abi:ne200100](void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(a1, v4, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void sub_1DF1168AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a5, (a2 + 4)))
  {
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(a1, a3, a5);
}

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void SVGAtom::SVGAtom(SVGAtom *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 22) = 0;
  SVGAtom::initializeTable(this);
}

void sub_1DF116B78(_Unwind_Exception *a1)
{
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::~__hash_table(v3);
  std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::destroy(v2, *(v1 + 32));
  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t SVGParser::StripLeadingTrailingWhitespace(SVGParser *this, const char *a2, uint64_t a3, char *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  v9 = a3 + 1;
  v10 = MEMORY[0x1E69E9830];
  while (1)
  {
    v11 = v8[this];
    if ((v11 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v10 + 4 * v11 + 60) & 0x4000) == 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    if (a2 == ++v8)
    {
      return 0;
    }
  }

  if (__maskrune(v11, 0x4000uLL))
  {
    goto LABEL_7;
  }

LABEL_10:
  v13 = this - 1;
  v14 = v9 - v8;
  v15 = v8;
  do
  {
    v16 = a2[v13];
    if ((v16 & 0x80000000) != 0)
    {
      result = __maskrune(v16, 0x4000uLL);
    }

    else
    {
      result = *(v10 + 4 * v16 + 60) & 0x4000;
    }

    --v13;
    ++v15;
    --v14;
  }

  while (result);
  if (a2 + 1 != v15 && a2 - v15 + 2 <= a4)
  {
    v17 = 0;
    do
    {
      *(a3 + v17) = v8[this + v17];
      ++v17;
    }

    while (v17 < a2 - v15 + 1);
    a2[v14] = 0;
    return 1;
  }

  return result;
}

uint64_t SVGAttribute::SVGAttribute(uint64_t a1, int a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 3;
  *(a1 + 88) = a3;
  CFRetained::retain(a3);
  return a1;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  MEMORY[0x1E12CE540](a1 + 56, a3);
  return a1;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 4;
  *(a1 + 88) = a3;
  CFRetained::retain(a3);
  return a1;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 7;
  *(a1 + 88) = a3;
  CFRetained::retain(a3);
  return a1;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 6;
  *(a1 + 88) = a3;
  CFRetained::retain(a3);
  return a1;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 8;
  *(a1 + 88) = a3;
  CFRetained::retain(a3);
  return a1;
}

void sub_1DF116D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*v16);
  }

  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CFRetained::retain(uint64_t a1)
{
  if (a1)
  {
    CFRetain(*(a1 + 40));
  }

  return a1;
}

void sub_1DF116F30(_Unwind_Exception *a1)
{
  v4 = v2;
  MEMORY[0x1E12CE5D0](v4, 0x80C40D6874129);
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t SVGAttribute::SVGAttribute(uint64_t a1, unsigned int a2, int a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 2;
  v6 = SVGAtom::ToString(a2);
  MEMORY[0x1E12CE540](a1 + 56, v6);
  *(a1 + 88) = a3;
  return a1;
}

void sub_1DF117074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void SVGPaint::SVGPaint(SVGPaint *this, const SVGColor *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPaint::kSVGPaintClassName);
  CFRetained::CFRetained(this, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A44460;
  *(this + 12) = 1;
  SVGColor::SVGColor(this + 56, 3u, 0.0, 0.0, 0.0, 1.0);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0x3FF0000000000000;
  SVGColor::SVGColor(v4, a2);
  SVGColor::operator=(this + 56, v4);
}

void sub_1DF1171BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  *v19 = &unk_1F5A44010;
  if (*(v19 + 31) < 0)
  {
    operator delete(*(v19 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF1172BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*v16);
  }

  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::__emplace_unique_key_args<SVGAtom::Name,std::pair<SVGAtom::Name,std::string>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__emplace_unique_key_args<SVGAtom::Name,SVGAtom::Name>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

void std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::__do_rehash<true>(a1, prime);
    }
  }
}

void sub_1DF11795C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void *std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::__find_equal<std::string>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t SVGColor::SVGColor(uint64_t result, unsigned int a2, double a3, double a4, double a5, double a6)
{
  *(result + 32) = 20003;
  *result = a3;
  *(result + 8) = a4;
  *(result + 16) = a5;
  *(result + 24) = a6;
  if (a2 <= 2)
  {
    *(result + 32) = dword_1DF145138[a2];
  }

  return result;
}

void SVGColor::SVGColor(SVGColor *this, SVGColor *a2, SVGColor *a3)
{
  *(this + 8) = 20003;
  if (!SVGColor::GetColorWithString(a2, this, a3))
  {
    *this = 0u;
    *(this + 1) = 0u;
  }
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

__n128 SVGColor::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

__n128 SVGColor::SVGColor(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 20003;
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

void *CGSVGDocumentGetRootNode(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGDocument>(a1, a2);
  if (result)
  {
    v3 = result[6];
    if (v3)
    {
      return *(v3 + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *CFRetained::getObject<SVGDocument>(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    SVGUtilities::error("NULL ref passed to getObject", a2, v2, v3);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }
}

void *CGSVGNodeEnumerate(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (result)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __CGSVGNodeEnumerate_block_invoke;
    v4[3] = &unk_1E86AADB8;
    v4[4] = a2;
    return SVGNode::enumerate(result, v4);
  }

  return result;
}

void *CFRetained::getObject<SVGNode>(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    SVGUtilities::error("NULL ref passed to getObject", a2, v2, v3);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }
}

uint64_t EnumerateNode(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  result = (*(a2 + 16))(a2, a1, 0, a3);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  while (v7 != v8)
  {
    v9 = *a3;
    if (v9)
    {
      goto LABEL_6;
    }

    v10 = *v7++;
    result = EnumerateNode(v10, a2, a3);
  }

  v9 = *a3;
LABEL_6:
  if (!v9)
  {
    v11 = *(a2 + 16);

    return v11(a2, a1, 1, a3);
  }

  return result;
}

uint64_t CGSVGNodeGetType(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGNode>(a1, a2);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  {
    v4 = v3 + 64;
    if (v3[87] < 0)
    {
      v4 = *v4;
    }

    v5 = SVGAtom::ToString(0x4Du);
    if (!strcmp(v4, v5))
    {
      return 9;
    }
  }

  {
    v6 = v3 + 64;
    if (v3[87] < 0)
    {
      v6 = *v6;
    }

    v7 = SVGAtom::ToString(0x4Fu);
    if (!strcmp(v6, v7))
    {
      return 8;
    }
  }

  {
    return 2;
  }

  {
    return 0;
  }

  v9 = (v3 + 64);
  v10 = v3 + 64;
  if (v3[87] < 0)
  {
    v10 = *v9;
  }

  v11 = SVGAtom::ToString(0x1Du);
  if (!strcmp(v10, v11))
  {
    return 1;
  }

  v12 = v3 + 64;
  if (v3[87] < 0)
  {
    v12 = *v9;
  }

  v13 = SVGAtom::ToString(0x21u);
  if (!strcmp(v12, v13))
  {
    return 4;
  }

  v14 = v3 + 64;
  if (v3[87] < 0)
  {
    v14 = *v9;
  }

  v15 = SVGAtom::ToString(0x30u);
  if (!strcmp(v14, v15))
  {
    return 5;
  }

  v16 = v3 + 64;
  if (v3[87] < 0)
  {
    v16 = *v9;
  }

  v17 = SVGAtom::ToString(5u);
  if (!strcmp(v16, v17))
  {
    return 6;
  }

  v18 = v3 + 64;
  if (v3[87] < 0)
  {
    v18 = *v9;
  }

  v19 = SVGAtom::ToString(0x4Au);
  if (!strcmp(v18, v19))
  {
    return 7;
  }

  v20 = v3 + 64;
  if (v3[87] < 0)
  {
    v20 = *v9;
  }

  v21 = SVGAtom::ToString(0x54u);
  if (!strcmp(v20, v21))
  {
    return 10;
  }

  if (v3[87] < 0)
  {
    v9 = *v9;
  }

  v23 = SVGAtom::ToName(v9, v22);
  if (SVGFilter::IsValidFilterPrimitive(v23))
  {
    return 11;
  }

  else
  {
    return 3;
  }
}

uint64_t CGSVGNodeFindAttribute(uint64_t a1, const char *a2)
{
  v2 = a2;
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (result)
  {
    result = SVGNode::findAttribute(result, v2);
    if (result)
    {
      return *(result + 40);
    }
  }

  return result;
}

uint64_t SVGNode::findAttribute(uint64_t a1, unsigned int a2)
{
  do
  {
    result = SVGAttributeMap::attribute(*(a1 + 56), a2);
    if (result)
    {
      break;
    }

    a1 = *(a1 + 48);
  }

  while (a1);
  return result;
}

CFStringRef CGSVGAttributeCopyString(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = SVGAttribute::stringValue(v2);
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    __p.__r_.__value_.__r.__words[2] = *(v3 + 16);
    *&__p.__r_.__value_.__l.__data_ = v4;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E4A8], p_p, 0x8000100u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1DF1182D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CFRetained::getObject<SVGAttribute>(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    SVGUtilities::error("NULL ref passed to getObject", a2, v2, v3);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }
}

void *SVGAtom::toString(uint64_t a1, unsigned int a2)
{
  os_unfair_lock_lock((a1 + 88));
  if (!*(a1 + 40))
  {
    v4 = *a1;
    if (*a1 != a1 + 8)
    {
      do
      {
        if (*(v4 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, v4[4], v4[5]);
        }

        else
        {
          v17 = *(v4 + 4);
        }

        v18 = *(v4 + 14);
        v15 = v18;
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v17;
        }

        std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::__emplace_unique_key_args<SVGAtom::Name,std::pair<SVGAtom::Name,std::string>>(a1 + 24, &v15);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        v5 = v4[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v4[2];
            v7 = *v6 == v4;
            v4 = v6;
          }

          while (!v7);
        }

        v4 = v6;
      }

      while (v6 != (a1 + 8));
    }
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = a1 + 32;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a1 + 32 && *(v9 + 32) <= a2)
  {
    v13 = (v9 + 40);
    if (*(v9 + 63) < 0)
    {
      v13 = *v13;
    }
  }

  else
  {
LABEL_27:
    v13 = 0;
  }

  os_unfair_lock_unlock((a1 + 88));
  return v13;
}

void sub_1DF1184F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGAttributeMap::attribute(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 56);
  v2 = a1 + 56;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    return *(v5 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t SVGAttribute::SVGAttribute(uint64_t a1, int a2, const std::string *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A43F60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  std::string::operator=((a1 + 56), a3);
  return a1;
}

void sub_1DF118614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*v16);
  }

  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

SVGStyle *std::unique_ptr<SVGStyle>::reset[abi:ne200100](SVGStyle **a1, SVGStyle *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    SVGStyle::~SVGStyle(result);

    JUMPOUT(0x1E12CE5D0);
  }

  return result;
}

void SVGStyle::SVGStyle(SVGStyle *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 24) = 0;
}

void SVGStyle::addDefinitionsFromCSS(SVGStyle *this, SVGParser *a2)
{
  SVGParser::ParseRulesetList(a2, v9);
  if (v9[0] != v9[1])
  {
    if (*(v9[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *v9[0], *(v9[0] + 8));
    }

    else
    {
      v2 = *v9[0];
      v8.__r_.__value_.__r.__words[2] = *(v9[0] + 16);
      *&v8.__r_.__value_.__l.__data_ = v2;
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v6, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = v8;
    }

    SVGParser::ParseSelectorListFromRuleset(&v6, &v7);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v4, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    }

    else
    {
      v4 = v8;
    }

    SVGParser::ParseDeclarationBlockFromRuleset(&v4, 0, &v5);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  v3.__r_.__value_.__r.__words[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void sub_1DF118AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  a15 = (v43 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void SVGParser::ParseRulesetList(SVGParser *this@<X0>, void *a2@<X8>)
{
  v3 = this;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = strlen(this);
  if (v5 >= 1)
  {
    v6 = (v3 + v5);
    v7 = (v3 + v5);
    v8 = v3 + v5 - 1;
    v9 = MEMORY[0x1E69E9830];
    do
    {
      v10 = v3;
      do
      {
        v11 = *v10;
        if ((v11 & 0x80000000) != 0)
        {
          v12 = __maskrune(v11, 0x4000uLL);
        }

        else
        {
          v12 = *(v9 + 4 * v11 + 60) & 0x4000;
        }

        if (!v12)
        {
          break;
        }

        v10 = (v10 + 1);
      }

      while (v10 < v6);
      if (v10 < v6)
      {
        v13 = v7 - v10;
        while (*v10 != 123)
        {
          v10 = (v10 + 1);
          if (!--v13)
          {
            v10 = v7;
            break;
          }
        }
      }

      if (v10 >= v6)
      {
        v14 = 0;
      }

      else if (*v10 == 125)
      {
        v14 = 1;
      }

      else
      {
        v15 = v7;
        v16 = (v10 + 1);
        v17 = v8 - v10;
        while (1)
        {
          v18 = v16;
          if (!v17)
          {
            break;
          }

          v16 = (v16 + 1);
          --v17;
          if (*v18 == 125)
          {
            v15 = v18;
            break;
          }
        }

        v14 = v18 < v6;
        v10 = v15;
      }

      v19 = (v10 + v14);
      std::string::basic_string[abi:ne200100](&__p, v3, v19 - v3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v22 = __p;
      }

      SVGParser::StripLeadingTrailingWhitespace(&v22, &v23);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v23;
      *(&v23.__r_.__value_.__s + 23) = 0;
      v23.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!__p.__r_.__value_.__l.__size_)
        {
          goto LABEL_40;
        }

        if (__p.__r_.__value_.__l.__size_ == 1)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
LABEL_37:
          if (!p_p->__r_.__value_.__s.__data_[0])
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        if (!*(&__p.__r_.__value_.__s + 23))
        {
          goto LABEL_41;
        }

        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
        {
          p_p = &__p;
          goto LABEL_37;
        }
      }

      std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
      v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_39:
      if (v20 < 0)
      {
LABEL_40:
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_41:
      v3 = v19;
    }

    while (v19 < v6);
  }
}

void sub_1DF118DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SVGParser::ParseDeclarationBlockIntoAttributeMap(__int128 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return;
  }

  v3 = MEMORY[0x1E69E9830];
  while (1)
  {
    if (*(v1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *v1, *(v1 + 1));
    }

    else
    {
      v4 = *v1;
      v23.__r_.__value_.__r.__words[2] = *(v1 + 2);
      *&v23.__r_.__value_.__l.__data_ = v4;
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = v23.__r_.__value_.__r.__words[0];
      v6 = strlen(v23.__r_.__value_.__l.__data_);
      if (!v6)
      {
        v17 = v23.__r_.__value_.__r.__words[0];
        goto LABEL_54;
      }
    }

    else
    {
      v5 = &v23;
      v6 = strlen(&v23);
      if (!v6)
      {
        return;
      }
    }

    v7 = v6;
    v8 = (v5 + v6);
    v9 = v5;
    if (v6 >= 1)
    {
      do
      {
        v10 = v9->__r_.__value_.__s.__data_[0];
        if ((v10 & 0x80000000) != 0)
        {
          v11 = __maskrune(v10, 0x4000uLL);
        }

        else
        {
          v11 = *(v3 + 4 * v10 + 60) & 0x4000;
        }

        if (v11)
        {
          break;
        }

        if (v9->__r_.__value_.__s.__data_[0] == 58)
        {
          break;
        }

        v9 = (v9 + 1);
      }

      while (v9 < v8);
    }

    std::string::basic_string[abi:ne200100](__dst, v5, v9 - v5);
    if (v9 < v8)
    {
      v12 = v5 + v7 - v9;
      while (v9->__r_.__value_.__s.__data_[0] != 58)
      {
        v9 = (v9 + 1);
        if (!--v12)
        {
          v9 = (v5 + v7);
          goto LABEL_22;
        }
      }

      goto LABEL_23;
    }

LABEL_22:
    if (!v9->__r_.__value_.__s.__data_[0])
    {
      break;
    }

LABEL_23:
    std::string::basic_string[abi:ne200100](&__p, &v9->__r_.__value_.__l.__data_ + 1, v8 + ~v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = __p;
    }

    SVGParser::StripLeadingTrailingWhitespace(&v18, &v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v19;
    *(&v19.__r_.__value_.__s + 23) = 0;
    v19.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if ((v22 & 0x80u) == 0)
    {
      v14 = v22;
    }

    else
    {
      v14 = __dst[1];
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (v14)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if ((v22 & 0x80u) == 0)
        {
          v16 = __dst;
        }

        else
        {
          v16 = __dst[0];
        }

        SVGAtom::ToName(v16, v13);
        operator new();
      }
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v1 = (v1 + 24);
    if (v1 == v2)
    {
      return;
    }
  }

  if (v22 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    v17 = v23.__r_.__value_.__r.__words[0];
LABEL_54:
    operator delete(v17);
  }
}

void sub_1DF119114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

BOOL ___ZN8SVGStyle21addDefinitionsFromCSSEPKc_block_invoke_2(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  v3 = SVGAtom::ToString(a2);
  result = SVGParser::StringBeginsWith(v3, "--", v4);
  if (result)
  {
    *(v2 + 24) = 1;
  }

  return result;
}

void SVGNode::SVGNode(void *a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGNode::kSVGNodeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A443F8;
  a1[6] = 0;
  operator new();
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGNode::kSVGNodeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A443F8;
  a1[6] = 0;
  operator new();
}

void sub_1DF119330(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x10B3C4084D8EEBALL);
  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

BOOL SVGAtom::IsKnown(unsigned int a1)
{
  if (SVGAtom::SharedInstance(void)::onceToken != -1)
  {
    SVGAtom::HasAtom();
  }

  v2 = SVGAtom::SharedInstance(void)::instance;

  return SVGAtom::isKnown(v2, a1);
}

void SVGReader::resolveUseDefinition(SVGNode **this, SVGNode *a2)
{
  v4 = (a2 + 64);
  if (*(a2 + 87) < 0)
  {
    v4 = *v4;
  }

  if (SVGAtom::ToName(v4, a2) == 20001)
  {
    v5 = *(a2 + 25);
    if (v5 && v5[23] < 0)
    {
      v5 = *v5;
    }

    DefinitionNode = SVGNode::findDefinitionNode(a2, v5);
    if (DefinitionNode)
    {
      goto LABEL_12;
    }

    v7 = *(a2 + 25);
    if (v7 && v7[23] < 0)
    {
      v7 = *v7;
    }

    DefinitionNode = SVGNode::findChildWithIdentifier(this[1], v7);
    if (DefinitionNode)
    {
LABEL_12:
      v8 = DefinitionNode;
      if (!SVGNode::isChildOf(a2, DefinitionNode))
      {
        v13 = (*(*v8 + 16))(v8);
        v14 = *(a2 + 7);
        v15 = *(v8 + 7);
        SVGReader::applyStyleToAttributes(this, v13, v14);
        v28 = vdupq_n_s64(0x7FF8000000000000uLL);
        v29 = v28;
        v33.__r_.__value_.__r.__words[0] = 0;
        v33.__r_.__value_.__l.__size_ = &v33;
        v33.__r_.__value_.__r.__words[2] = 0x2000000000;
        v34 = 0;
        *&v30.origin.x = MEMORY[0x1E69E9820];
        *&v30.origin.y = 0x40000000;
        *&v30.size.width = ___ZL28ConvertUseElementCoordinatesP15SVGAttributeMapR6CGRect_block_invoke;
        *&v30.size.height = &unk_1E86AACF8;
        v31 = &v33;
        v32 = &v28;
        SVGAttributeMap::enumerate(v14, &v30);
        if (*(v33.__r_.__value_.__l.__size_ + 24))
        {
          SVGAttributeMap::removeAttribute(v14, 0x43u);
          SVGAttributeMap::removeAttribute(v14, 0x46u);
          SVGAttributeMap::removeAttribute(v14, 0x42u);
          SVGAttributeMap::removeAttribute(v14, 0x1Eu);
          v16 = *(v33.__r_.__value_.__l.__size_ + 24);
          _Block_object_dispose(&v33, 8);
          if (v16)
          {
            v17 = SVGAttributeMap::attribute(v15, 0x41u);
            if (!v17 || (SVGAttribute::rectValue(v17, &v30) & 1) == 0)
            {
              v30.origin.x = (*(*v8 + 32))(v8, 0);
              v30.origin.y = v18;
              v30.size.width = v19;
              v30.size.height = v20;
            }

            memset(&v33, 0, sizeof(v33));
            SVGParser::FormatString("translate(%g,%g)", &__p, *&v28);
            if ((v27 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if ((v27 & 0x80u) == 0)
            {
              v22 = v27;
            }

            else
            {
              v22 = v26;
            }

            std::string::append(&v33, p_p, v22);
            if (v27 < 0)
            {
              operator delete(__p);
            }

            if (v30.size.width > 0.0 && v30.size.height > 0.0)
            {
              SVGParser::FormatString("scale(%g,%g)", &__p, *v29.i64 / v30.size.width, *&v29.i64[1] / v30.size.height);
              v23 = (v27 & 0x80u) == 0 ? &__p : __p;
              v24 = (v27 & 0x80u) == 0 ? v27 : v26;
              std::string::append(&v33, v23, v24);
              if (v27 < 0)
              {
                operator delete(__p);
              }
            }

            operator new();
          }
        }

        else
        {
          _Block_object_dispose(&v33, 8);
        }

        SVGAttributeMap::removeAttribute(v14, 0x4E20u);
        SVGAttributeMap::removeAttribute(v13[7], 0x1Fu);
        SVGNode::addUniqueAttributes(v13, v14);
      }

      v9 = SVGNode::identifier(a2);
      v10 = (v8 + 64);
      if (*(v8 + 87) < 0)
      {
        v10 = *v10;
      }

      v11 = SVGNode::identifier(v8);
      SVGUtilities::error("Cyclical dependency found when trying to resolve use definition: %s with %s(%s)", v12, v9, v10, v11);
    }
  }
}

void sub_1DF119954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 73) < 0)
  {
    operator delete(*(v17 - 96));
  }

  _Unwind_Resume(exception_object);
}

void SVGParser::ParseClassPropertyValue(SVGParser *this@<X0>, void *a2@<X8>)
{
  v3 = this;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = strlen(this);
  if (v5 >= 1)
  {
    v6 = v3 + v5;
    v7 = (v3 + v5);
    v8 = MEMORY[0x1E69E9830];
    do
    {
      do
      {
        v9 = *v3;
        if ((v9 & 0x80000000) != 0)
        {
          v10 = __maskrune(v9, 0x4000uLL);
        }

        else
        {
          v10 = *(v8 + 4 * v9 + 60) & 0x4000;
        }

        if (!v10)
        {
          break;
        }

        v3 = (v3 + 1);
      }

      while (v3 < v6);
      v11 = v3;
      if (v3 < v6)
      {
        v12 = v7 - v3;
        v11 = v3;
        while (1)
        {
          v13 = *v11;
          v14 = (v13 & 0x80000000) != 0 ? __maskrune(v13, 0x4000uLL) : *(v8 + 4 * v13 + 60) & 0x4000;
          if (v14 || *v11 == 44)
          {
            break;
          }

          v11 = (v11 + 1);
          if (!--v12)
          {
            v11 = v7;
            break;
          }
        }
      }

      std::string::basic_string[abi:ne200100](&__dst, v3, v11 - v3);
      std::string::insert(&__dst, 0, ".");
      std::vector<std::string>::push_back[abi:ne200100](a2, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v3 = (v11 + 1);
    }

    while (v11 + 1 < v6);
  }
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void SVGDocument::validateSizes(SVGNode **this)
{
  v2 = *SVGDocument::canvasSize(this).i64;
  v4 = this[6];
  *(v4 + 13) = *MEMORY[0x1E695EFF8];
  if (v2 < 1.0 || v3 < 1.0)
  {
    BoundingBox = SVGNode::getBoundingBox(v4, 0, 2);
    if (BoundingBox < 0.0)
    {
      BoundingBox = 0.0;
    }

    v10 = this[6];
    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    *(v10 + 30) = BoundingBox;
    *(v10 + 31) = v7;
    *(v10 + 32) = v8;
    *(v10 + 33) = v9;
  }
}

int8x16_t SVGDocument::canvasSize(SVGDocument *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    __asm { FMOV            V2.2D, #1.0 }

    return vbslq_s8(vandq_s8(vcgtq_f64(v1[16], _Q2), vcgtq_f64(_Q2, v1[14])), v1[16], v1[14]);
  }

  else
  {
    return *MEMORY[0x1E695F060];
  }
}

uint64_t std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v4 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v9.__r_.__value_.__r.__words[0];
    v6 = strcasecmp(v5, v9.__r_.__value_.__l.__data_);
    operator delete(v8);
    if ((*(&v10.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v6 >> 31;
    }

    goto LABEL_12;
  }

  v6 = strcasecmp(v5, &v9);
  if (v4 < 0)
  {
LABEL_12:
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6 >> 31;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v4 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v9.__r_.__value_.__r.__words[0];
    v6 = strcasecmp(v5, v9.__r_.__value_.__l.__data_);
    operator delete(v8);
    if ((*(&v10.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v6 >> 31;
    }

    goto LABEL_12;
  }

  v6 = strcasecmp(v5, &v9);
  if (v4 < 0)
  {
LABEL_12:
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6 >> 31;
}

void sub_1DF119D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGReader::ResolveAttributeDefinition(uint64_t a1, uint64_t a2, signed int a3)
{
  v6 = SVGAttributeMap::attribute(*(a2 + 56), a3);
  if (v6)
  {
    v8 = v6;
    if (!*(v6 + 20) && SVGAttribute::stringValueBeginsWith(v6, "url", v7))
    {
      __p = 0;
      v19 = 0;
      v20 = 0;
      if (!SVGAttribute::urlValue(v8, &__p))
      {
        goto LABEL_34;
      }

      if (SHIBYTE(v20) < 0)
      {
        if (!v19)
        {
          goto LABEL_34;
        }

        p_p = __p;
      }

      else
      {
        if (!HIBYTE(v20))
        {
          goto LABEL_34;
        }

        p_p = &__p;
      }

      DefinitionNode = SVGNode::findDefinitionNode(*(a1 + 8), p_p);
      if (DefinitionNode)
      {
        if (SVGNode::isChildOf(a2, DefinitionNode))
        {
          v11 = (a2 + 64);
          if (*(a2 + 87) < 0)
          {
            v11 = *v11;
          }

          v12 = SVGNode::identifier(a2);
          v13 = DefinitionNode + 64;
          if (DefinitionNode[87] < 0)
          {
            v13 = *v13;
          }

          v14 = SVGNode::identifier(DefinitionNode);
          SVGUtilities::error("Cyclical dependency found when trying to resolve node: %s(%s) attributes with %s(%s)", v15, v11, v12, v13, v14);
          goto LABEL_34;
        }

        if (a3 <= 56)
        {
          if (a3 == 6)
          {
            {
              operator new();
            }

            goto LABEL_34;
          }

          if (a3 != 18)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (a3 == 84)
          {
            {
              operator new();
            }

            goto LABEL_34;
          }

          if (a3 == 74)
          {
            {
              operator new();
            }

            goto LABEL_34;
          }

          if (a3 != 57)
          {
            goto LABEL_34;
          }
        }

        {
          ResolveGradientHrefDefinition(DefinitionNode, v16);
          operator new();
        }

        {
          ResolvePatternHrefDefinition(DefinitionNode, v17);
          operator new();
        }
      }

LABEL_34:
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p);
      }
    }
  }
}

void sub_1DF11A160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  MEMORY[0x1E12CE5D0](v19, 0x10B3C405B4D0908);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t SVGAttribute::stringValue(SVGAttribute *this)
{
  if ((*(this + 79) & 0x8000000000000000) != 0)
  {
    if (*(this + 8))
    {
      return this + 56;
    }
  }

  else if (*(this + 79))
  {
    return this + 56;
  }

  v2 = *(this + 20);
  if (v2 > 5)
  {
    switch(v2)
    {
      case 6:
        v4 = *(this + 11);
        if (!v4)
        {
          return this + 56;
        }

        break;
      case 7:
        v4 = *(this + 11);
        if (!v4)
        {
          return this + 56;
        }

        break;
      case 8:
        v4 = *(this + 11);
        if (!v4)
        {
          return this + 56;
        }

        break;
      default:
        return this + 56;
    }

    SVGMask::createStringRepresentation(v4, &__p);
    goto LABEL_27;
  }

  if (v2 != 1)
  {
    if (v2 == 3)
    {
      v10 = *(this + 11);
      if (!v10)
      {
        return this + 56;
      }

      SVGPaint::createStringRepresentation(v10, &__p);
    }

    else
    {
      if (v2 != 4)
      {
        return this + 56;
      }

      v3 = *(this + 11);
      if (!v3)
      {
        return this + 56;
      }

      SVGPath::createStringRepresentation(v3, &__p);
    }

LABEL_27:
    if (*(this + 79) < 0)
    {
      operator delete(*(this + 7));
    }

    *(this + 56) = __p;
    return this + 56;
  }

  v5 = *(this + 11);
  if (*(this + 26) != 9)
  {
    v6 = *v5;
    v7 = v5[1];
LABEL_32:
    while (v6 != v7)
    {
      SVGParser::FormatString("%g ", &__p, *v6);
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

      std::string::append((this + 56), p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v6;
    }

    goto LABEL_42;
  }

  v6 = *v5;
  v7 = v5[1];
  if ((v7 - *v5) != 8)
  {
    goto LABEL_32;
  }

  CGSVGLengthMakeWithType();
  SVGUtilities::CGSVGLengthToString(v8, v9, &__p);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  *(this + 56) = __p;
LABEL_42:
  if (*(this + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(this + 7), *(this + 8));
  }

  else
  {
    v14 = *(this + 56);
  }

  SVGParser::StripLeadingTrailingWhitespace(&v14, &__p);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  *(this + 56) = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return this + 56;
}

void sub_1DF11A408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF11A51C(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x10F3C40176D6E88);
  SVGNode::~SVGNode(v1, v4);
  _Unwind_Resume(a1);
}

void ___ZN15SVGAttributeMapD2Ev_block_invoke(int a1, int a2, CFTypeRef *this)
{
  if (this)
  {
    CFRetained::release(this);
  }
}

uint64_t std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

void SVGNode::updatedAttribute(SVGNode *this, SVGAttribute *a2)
{
  if (*(a2 + 12) == 31)
  {
    v3 = SVGAttribute::stringValue(a2);
    if (*(this + 6))
    {
      if (*(v3 + 23) >= 0)
      {
        v4 = v3;
      }

      else
      {
        v4 = *v3;
      }

      v5 = *(this + 6);

      SVGNode::updateChildIdentifer(v5, this, v4);
    }
  }
}

void CFRetained::release(CFTypeRef *this, CFRetained *a2)
{
  if (this)
  {
    CFRelease(this[5]);
  }
}

void SVGAttribute::~SVGAttribute(SVGAttribute *this, CFRetained *a2)
{
  SVGAttribute::~SVGAttribute(this, a2);

  JUMPOUT(0x1E12CE5D0);
}

{
  *this = &unk_1F5A43F60;
  v3 = *(this + 20);
  if (v3 <= 8)
  {
    if (((1 << v3) & 0x1D8) != 0)
    {
      CFRetained::release(*(this + 11), a2);
    }

    else if (v3 == 1)
    {
      v6 = *(this + 11);
      if (v6)
      {
        v7 = *v6;
        if (*v6)
        {
          *(v6 + 8) = v7;
          operator delete(v7);
        }

        MEMORY[0x1E12CE5D0](v6, 0x80C40D6874129);
      }
    }
  }

  v4 = *(this + 12);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x1E12CE5D0](v4, 0x20C40960023A9);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  *this = &unk_1F5A44010;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DF11A890(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CFRetainedFinalize(void *a1)
{
  result = a1[2];
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t SVGNode::setAttributes(SVGNode *this, CFTypeRef *a2)
{
  SVGAttributeMap::setOwnerNode(*(this + 7), 0);
  CFRetained::release(*(this + 7));
  if (!a2)
  {
    operator new();
  }

  *(this + 7) = a2;
  CFRetained::retain(a2);
  SVGAttributeMap::setOwnerNode(*(this + 7), this);
  v4 = *(*this + 24);

  return v4(this, a2);
}

void SVGAttributeMap::~SVGAttributeMap(SVGAttributeMap *this)
{
  *this = &unk_1F5A43F80;
  SVGAttributeMap::enumerate(this, &__block_literal_global_0);
  std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::destroy(this + 48, *(this + 7));
  *this = &unk_1F5A44010;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  SVGAttributeMap::~SVGAttributeMap(this);

  JUMPOUT(0x1E12CE5D0);
}

void std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

BOOL SVGDocument::read(SVGDocument *this, const __CFData *a2, SVGReaderOptions *a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = *(this + 6);
  if (!v6)
  {
LABEL_7:
    SVGReader::SVGReader(v17, a2, a3);
    v8 = v18;
    *(this + 6) = v18;
    CFRetained::retain(v8);
    if (v19)
    {
      std::map<std::string,SVGAttributeMap *,CaseInsensitiveStringLess,std::allocator<std::pair<std::string const,SVGAttributeMap *>>>::map[abi:ne200100](&v15, v19);
      v9 = v15;
      if (v15 != v16)
      {
        do
        {
          SVGDocument::addNamedStyle(this, (v9 + 4), v9[7]);
          v10 = v9[1];
          if (v10)
          {
            do
            {
              v11 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              v11 = v9[2];
              v12 = *v11 == v9;
              v9 = v11;
            }

            while (!v12);
          }

          v9 = v11;
        }

        while (v11 != v16);
      }

      std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(&v15, v16[0]);
    }

    if (a3)
    {
      if (*(a3 + 8) == 1 && !SVGDocument::checkProfileSettings(this, a2))
      {
        v7 = 0;
        goto LABEL_22;
      }

      v13 = *(a3 + 9);
      if (v13 != 3)
      {
        *(this + 18) = v13;
      }
    }

    v7 = *(this + 6) != 0;
LABEL_22:
    SVGReader::~SVGReader(v17);
    return v7;
  }

  if (*(v6 + 96) == *(v6 + 88))
  {
    CFRetained::release(v6);
    goto LABEL_7;
  }

  SVGUtilities::error("Root Node is already populated in SVGDocument. Skipping read.", a2);
  return 0;
}

void sub_1DF11AC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  SVGReader::~SVGReader(va);
  _Unwind_Resume(a1);
}

void sub_1DF11AD48(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x80C40D6874129);
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t SVGViewBoxNode::updatedAttributes(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN14SVGViewBoxNode17updatedAttributesEP15SVGAttributeMap_block_invoke;
  v3[3] = &__block_descriptor_tmp_12;
  v3[4] = a1;
  return SVGAttributeMap::enumerate(a2, v3);
}

void ___ZN14SVGViewBoxNode17updatedAttributesEP15SVGAttributeMap_block_invoke(uint64_t a1, signed int a2, SVGAttribute *a3)
{
  v5 = *(a1 + 32);
  if (((*(*v5 + 64))(v5) & 1) == 0)
  {
    if (a2 > 65)
    {
      switch(a2)
      {
        case 'B':
          v6 = (v5 + 224);
          break;
        case 'C':
          v6 = (v5 + 208);
          break;
        case 'F':
          v6 = (v5 + 216);
          break;
        default:
          return;
      }
    }

    else
    {
      if (a2 != 30)
      {
        if (a2 == 46)
        {
          v7 = SVGAttribute::stringValue(a3);
          if (SVGViewBoxNode::ParseAspectRatio(v5, v7))
          {
            return;
          }
        }

        else if (a2 != 65 || (SVGAttribute::rectValue(a3, (v5 + 240)) & 1) != 0)
        {
          return;
        }

LABEL_18:
        v8 = SVGAtom::ToString(a2);
        SVGUtilities::error("Failed to parse %s for node name svg", v9, v8);
        return;
      }

      v6 = (v5 + 232);
    }

    if (SVGAttribute::floatValue(a3, v6))
    {
      return;
    }

    goto LABEL_18;
  }
}

const __CFDictionary *CreateReadOptions@<X0>(const __CFDictionary *result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = CFDictionaryGetCount(result);
    if (result)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 28) = 1;
      *(a2 + 32) = 0;
      *(a2 + 36) = 0;
      *(a2 + 40) = 1;
      operator new();
    }
  }

  *a2 = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF11B178(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    SVGReaderOptions::~SVGReaderOptions(v1);
  }

  _Unwind_Resume(exception_object);
}

void SVGNode::~SVGNode(SVGNode *this, CFRetained *a2)
{
  *this = &unk_1F5A443F8;
  v3 = *(this + 7);
  if (v3)
  {
    SVGAttributeMap::setOwnerNode(v3, 0);
    v3 = *(this + 7);
  }

  CFRetained::release(v3, a2);
  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(this + 136, *(this + 18));
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = this + 144;
  v4 = *(this + 11);
  v5 = *(this + 12);
  while (v4 != v5)
  {
    v6 = *v4;
    *(v6 + 48) = 0;
    CFRetained::release(v6);
    ++v4;
  }

  v7 = *(this + 14);
  v8 = *(this + 15);
  while (v7 != v8)
  {
    v9 = *v7;
    *(v9 + 48) = 0;
    CFRetained::release(v9);
    ++v7;
  }

  v10 = *(this + 20);
  if (v10 != (this + 168))
  {
    do
    {
      CFRetained::release(*(v10 + 7));
      v11 = *(v10 + 1);
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
          v12 = *(v10 + 2);
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != (this + 168));
  }

  v14 = *(this + 25);
  *(this + 25) = 0;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](this + 200, v14);
  }

  v15 = *(this + 24);
  *(this + 24) = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](this + 192, v15);
  }

  v16 = *(this + 23);
  *(this + 23) = 0;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](this + 184, v16);
  }

  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(this + 160, *(this + 21));
  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(this + 136, *(this + 18));
  v17 = *(this + 14);
  if (v17)
  {
    *(this + 15) = v17;
    operator delete(v17);
  }

  v18 = *(this + 11);
  if (v18)
  {
    *(this + 12) = v18;
    operator delete(v18);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  *this = &unk_1F5A44010;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  SVGNode::~SVGNode(this, a2);

  JUMPOUT(0x1E12CE5D0);
}

uint64_t SVGAttribute::rectValue(os_unfair_lock_s *this, CGRect *a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v8, this + 27);
  if (SVGAttribute::resolveAsFloats(this) && (v4 = **&this[22]._os_unfair_lock_opaque, (*(*&this[22]._os_unfair_lock_opaque + 8) - v4) >= 0x19))
  {
    v5 = *(v4 + 16);
    a2->origin = *v4;
    a2->size = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v8);
  return v6;
}

void sub_1DF11B410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

BOOL SVGParser::ParseCGFloatList(char *a1, void *a2, uint64_t a3)
{
  v3 = 0;
  if (!a1 || !a3)
  {
    return v3;
  }

  v12 = a1;
  v6 = MEMORY[0x1E69E9830];
  while (1)
  {
    while (1)
    {
      v7 = *a1;
      if (v7 == 44)
      {
        goto LABEL_7;
      }

      if ((v7 & 0x80000000) == 0)
      {
        break;
      }

      v8 = __maskrune(*a1, 0x4000uLL);
      a1 = v12;
      if (!v8)
      {
        goto LABEL_9;
      }

LABEL_7:
      v12 = ++a1;
    }

    if ((*(v6 + 4 * v7 + 60) & 0x4000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v9 = *a1;
    if ((v9 - 45) >= 2 && v9 != 43 && (!*a1 || (v9 & 0x80) != 0 || (*(v6 + 4 * v9 + 60) & 0x400) == 0))
    {
      break;
    }

    v11 = 0;
    if ((SVGParser::ParseCGFloat(a1, &v11, &v12, 0) & 1) == 0)
    {
      break;
    }

    std::vector<double>::push_back[abi:ne200100](a3, &v11);
    a1 = v12;
  }

  if (a2)
  {
    *a2 = v12;
  }

  return *(a3 + 8) != *a3;
}

uint64_t SVGParser::ParseCGFloat(char *a1, double *a2, char **a3, _DWORD *a4)
{
  v7 = a1;
  v8 = MEMORY[0x1E69E9830];
  for (i = a1; ; ++i)
  {
    v10 = *i;
    if (v10 <= 0x2E && ((1 << v10) & 0x680000000000) != 0)
    {
      break;
    }

    if ((v10 & 0x80) != 0)
    {
      result = __maskrune(v10, 0x4000uLL);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v12 = *(v8 + 4 * v10 + 60);
      if ((v12 & 0x400) != 0)
      {
        break;
      }

      if (v10 != 44)
      {
        result = v12 & 0x4000;
        if ((v12 & 0x4000) == 0)
        {
          return result;
        }
      }
    }

    ++v7;
  }

  *__error() = 0;
  v17 = 0;
  if (GetLocaleC(void)::onceToken != -1)
  {
    SVGParser::ParseCGFloat();
  }

  v14 = strtod_l(i, &v17, GetLocaleC(void)::localeC);
  result = 0;
  v15 = v17;
  if (i != v17 && v17)
  {
    v16 = v14;
    if (a4)
    {
      *a4 = memchr(i, 46, v17 - v7) == 0;
    }

    if (a3)
    {
      *a3 = v15;
    }

    if (*__error())
    {
      return 0;
    }

    else
    {
      *a2 = v16;
      return 1;
    }
  }

  return result;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
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
      std::vector<double>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
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
}

void SVGRootNode::~SVGRootNode(SVGRootNode *this)
{
  *this = &unk_1F5A444B8;
  v2 = *(this + 35);
  if (v2)
  {
    CFRelease(v2);
  }

  SVGMask::~SVGMask(this);
}

{
  SVGRootNode::~SVGRootNode(this);

  JUMPOUT(0x1E12CE5D0);
}

void SVGPaint::~SVGPaint(SVGPaint *this, CFRetained *a2)
{
  *this = &unk_1F5A44460;
  CFRetained::release(*(this + 13), a2);
  CFRetained::release(*(this + 14), v3);
  *this = &unk_1F5A44010;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  SVGPaint::~SVGPaint(this, a2);

  JUMPOUT(0x1E12CE5D0);
}

void SVGReader::parseXMLNodeXmlNS(SVGReader *this, _xmlNode *a2, SVGAttributeMap *a3)
{
  if (a2)
  {
    nsDef = a2->nsDef;
    if (nsDef)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, nsDef->href);
      SVGAttributeMap::setAttribute();
    }
  }
}

void sub_1DF11B95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN15SVGAttributeMap19addUniqueAttributesEPKS__block_invoke(uint64_t a1, unsigned int a2, SVGAttribute *a3)
{
  v3 = *(a1 + 32);
  v6 = *(v3 + 56);
  v4 = v3 + 56;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 == v4 || *(v7 + 32) > a2 || (v11 = *(v7 + 40)) == 0 || (result = SVGAttribute::isEqual(v11, a3), (result & 1) == 0))
  {
LABEL_11:
    operator new();
  }

  return result;
}

void SVGAttribute::SVGAttribute(SVGAttribute *this, const SVGAttribute *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(this, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A43F60;
  *(this + 12) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 12) = *(a2 + 12);
  std::string::operator=((this + 56), (a2 + 56));
  v4 = *(a2 + 20);
  *(this + 20) = v4;
  *(this + 26) = *(a2 + 26);
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1:
        operator new();
      case 2:
        *(this + 22) = *(a2 + 22);
        break;
      case 3:
        operator new();
    }
  }

  else if (v4 > 6)
  {
    if (v4 == 7)
    {
      operator new();
    }

    if (v4 == 8)
    {
      operator new();
    }
  }

  else
  {
    if (v4 == 4)
    {
      operator new();
    }

    if (v4 == 6)
    {
      operator new();
    }
  }
}

void sub_1DF11BDD0(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v3, 0x10B3C40FABA7DC6);
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t SVGAttribute::resolveAsFloats(SVGAttribute *this)
{
  if (*(this + 20) != 1)
  {
    operator new();
  }

  return 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
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

uint64_t SVGStyle::getAttributeMapForClassAttribute(SVGStyle *this, SVGAttribute *a2, SVGAttributeMap *a3)
{
  if (a2 && *(a2 + 12) == 4)
  {
    v5 = SVGAttribute::stringValue(a2);
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *v5, *(v5 + 8));
    }

    else
    {
      v6 = *v5;
      v18.__r_.__value_.__r.__words[2] = *(v5 + 16);
      *&v18.__r_.__value_.__l.__data_ = v6;
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v18;
    }

    else
    {
      v8 = v18.__r_.__value_.__r.__words[0];
    }

    SVGParser::ParseClassPropertyValue(v8, &v16);
    v9 = v16;
    v10 = v17;
    if (v16 == v17)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        if (*(v9 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v9, *(v9 + 1));
        }

        else
        {
          v11 = *v9;
          __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
          *&__p.__r_.__value_.__l.__data_ = v11;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        AttributeMapForIdentifier = SVGStyle::getAttributeMapForIdentifier(this, p_p, a3);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 |= AttributeMapForIdentifier;
        v9 = (v9 + 24);
      }

      while (v9 != v10);
    }

    __p.__r_.__value_.__r.__words[0] = &v16;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1DF11C550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGPath::SVGPath(SVGPath *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPath::kSVGPathClassName);
  CFRetained::CFRetained(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A440E8;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v2 = MEMORY[0x1E695EFD0];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *(this + 5) = *MEMORY[0x1E695EFD0];
  *(this + 6) = v3;
  *(this + 7) = *(v2 + 32);
  *(this + 32) = 0;
}

void sub_1DF11C6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF11C788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*v16);
  }

  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

BOOL SVGStyle::getAttributeMapForIdentifier(SVGStyle *this, const char *__s, SVGAttributeMap *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v12 = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
  }

  *(&__dst + v7) = 0;
  v8 = std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::find<std::string>(this, &__dst);
  if ((this + 8) == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8[7];
  }

  if (v12 < 0)
  {
    operator delete(__dst);
  }

  if (v9)
  {
    SVGAttributeMap::setAttributes(a3, v9);
  }

  return v9 != 0;
}

void sub_1DF11C8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF11C9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t SVGAttributeMap::setAttributes(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN15SVGAttributeMap13setAttributesERKS__block_invoke;
  v3[3] = &__block_descriptor_tmp_15;
  v3[4] = a1;
  return SVGAttributeMap::enumerate(a2, v3);
}

uint64_t *std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

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

BOOL SVGStyle::getAttributeMapForIdentifierAttribute(SVGStyle *this, SVGAttribute *a2, SVGAttributeMap *a3)
{
  if (!a2 || *(a2 + 12) != 31)
  {
    return 0;
  }

  v5 = SVGAttribute::stringValue(a2);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    __p.__r_.__value_.__r.__words[2] = *(v5 + 16);
    *&__p.__r_.__value_.__l.__data_ = v6;
  }

  std::string::insert(&__p, 0, "#");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  AttributeMapForIdentifier = SVGStyle::getAttributeMapForIdentifier(this, p_p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return AttributeMapForIdentifier;
}

void sub_1DF11CFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGPath::~SVGPath(SVGPath *this)
{
  SVGPath::~SVGPath(this);

  JUMPOUT(0x1E12CE5D0);
}

{
  *this = &unk_1F5A440E8;
  v2 = *(this + 6);
  v3 = *(this + 7);
  while (v2 != v3)
  {
    CFRetained::release(*v2++);
  }

  v4 = *(this + 9);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  *this = &unk_1F5A44010;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t SVGShapeNode::updatedAttributes(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN12SVGShapeNode17updatedAttributesEP15SVGAttributeMap_block_invoke;
  v3[3] = &__block_descriptor_tmp_13;
  v3[4] = a1;
  return SVGAttributeMap::enumerate(a2, v3);
}

void ___ZN12SVGShapeNode17updatedAttributesEP15SVGAttributeMap_block_invoke(uint64_t a1, signed int a2, os_unfair_lock_s *this)
{
  v4 = *(a1 + 32);
  if (a2 <= 65)
  {
    if (a2 > 46)
    {
      switch(a2)
      {
        case '/':
          v5 = v4 + 36;
          break;
        case '3':
          v5 = v4 + 32;
          break;
        case '4':
          v5 = v4 + 33;
          break;
        default:
          return;
      }
    }

    else
    {
      switch(a2)
      {
        case 9:
          v5 = v4 + 34;
          break;
        case 10:
          v5 = v4 + 35;
          break;
        case 30:
          v5 = v4 + 31;
          break;
        default:
          return;
      }
    }
  }

  else if (a2 <= 68)
  {
    if ((a2 - 67) >= 2)
    {
      if (a2 != 66)
      {
        return;
      }

      v5 = v4 + 30;
    }

    else
    {
      v5 = v4 + 26;
    }
  }

  else if ((a2 - 70) < 2)
  {
    v5 = v4 + 27;
  }

  else if (a2 == 69)
  {
    v5 = v4 + 28;
  }

  else
  {
    if (a2 != 72)
    {
      return;
    }

    v5 = v4 + 29;
  }

  if ((SVGAttribute::floatValue(this, v5) & 1) == 0)
  {
    v6 = SVGAtom::ToString(a2);
    SVGUtilities::error("SVGShapeNode: Error parsing atom: %s", v7, v6);
  }
}

char *SVGNode::identifier(SVGNode *this)
{
  v1 = SVGAttributeMap::attribute(*(this + 7), 0x1Fu);
  if (!v1)
  {
    return &unk_1DF145996;
  }

  result = SVGAttribute::stringValue(v1);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,SVGNode *>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__construct_node<std::pair<std::string const,SVGNode *>>();
  }

  return result;
}

void sub_1DF11D3D0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__find_equal<std::string>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void SVGReader::resolveDefinitions(SVGNode **this, SVGNode *a2)
{
  SVGReader::ResolveAttributeDefinition(this, a2, 18);
  SVGReader::ResolveAttributeDefinition(this, a2, 57);
  SVGReader::ResolveAttributeDefinition(this, a2, 6);
  SVGReader::ResolveAttributeDefinition(this, a2, 74);
  SVGReader::ResolveAttributeDefinition(this, a2, 84);
  SVGReader::resolveUseDefinition(this, a2);
  v5 = *(a2 + 11);
  v6 = *(a2 + 12);
  while (v5 != v6)
  {
    v7 = *v5++;
    SVGReader::resolveDefinitions(this, v7);
  }

  v8 = *(a2 + 20);
  v9 = a2 + 168;
  if (v8 != a2 + 168)
  {
    do
    {
      v10 = *(v8 + 7);
      ResolvePatternHrefDefinition(v10, v4);
      v12 = *(v10 + 88);
      v11 = *(v10 + 96);
      while (v12 != v11)
      {
        v13 = *v12++;
        SVGReader::resolveDefinitions(this, v13);
      }

      v14 = *(v8 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v8 + 2);
          v16 = *v15 == v8;
          v8 = v15;
        }

        while (!v16);
      }

      v8 = v15;
    }

    while (v15 != v9);
  }
}

void *std::map<std::string,SVGAttributeMap *,CaseInsensitiveStringLess,std::allocator<std::pair<std::string const,SVGAttributeMap *>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,SVGAttributeMap *,CaseInsensitiveStringLess,std::allocator<std::pair<std::string const,SVGAttributeMap *>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,SVGAttributeMap *>,std::__tree_node<std::__value_type<std::string,SVGAttributeMap *>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<std::string,SVGAttributeMap *,CaseInsensitiveStringLess,std::allocator<std::pair<std::string const,SVGAttributeMap *>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,SVGAttributeMap *>,std::__tree_node<std::__value_type<std::string,SVGAttributeMap *>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,SVGAttributeMap *> const&>(v5, v5 + 1, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void SVGDocument::addNamedStyle(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (a3)
  {
    v3 = *(a1 + 64);
    if (!v3)
    {
      operator new();
    }

    SVGStyle::addNamedStyle(v3, a2, a3);
  }
}

void SVGStyle::addNamedStyle(uint64_t **a1, uint64_t a2, CFTypeRef *a3)
{
  v6 = std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::find<std::string>(a1, a2);
  if (a1 + 1 != v6)
  {
    v7 = v6;
    CFRetained::release(*(v6 + 56));
    std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::erase(a1, v7);
  }

  CFRetained::retain(a3);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = a3;
  std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,SVGAttributeMap *>>(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1DF11D7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,SVGAttributeMap *>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::__construct_node<std::pair<std::string const,SVGAttributeMap *>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::__find_equal<std::string>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_1DF11D9C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

double CGSVGDocumentGetCanvasSize(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGDocument>(a1, a2);
  if (!v2)
  {
    return *MEMORY[0x1E695F060];
  }

  *&result = SVGDocument::canvasSize(v2).u64[0];
  return result;
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

BOOL SVGStyle::getAttributeMapForElement(SVGStyle *this, SVGNode *a2, SVGAttributeMap *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2 + 64;
  if (*(a2 + 87) < 0)
  {
    v4 = *v4;
  }

  return SVGStyle::getAttributeMapForIdentifier(this, v4, a3);
}

void SVGAttributeMap::filter(uint64_t a1, uint64_t (*a2)(void, void))
{
  v2 = (a1 + 48);
  v3 = *(a1 + 48);
  v4 = (a1 + 56);
  if (v3 != (a1 + 56))
  {
    do
    {
      if (a2(*(v3 + 8), v3[5]))
      {
        v6 = v3[1];
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v3[2];
            v8 = *v7 == v3;
            v3 = v7;
          }

          while (!v8);
        }
      }

      else
      {
        CFRetained::release(v3[5]);
        v9 = v3[1];
        v10 = v3;
        if (v9)
        {
          do
          {
            v7 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v7 = v10[2];
            v8 = *v7 == v10;
            v10 = v7;
          }

          while (!v8);
        }

        std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::__remove_node_pointer(v2, v3);
        operator delete(v3);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }
}

BOOL SVGAtom::isKnown(uint64_t a1, unsigned int a2)
{
  v5 = a2;
  os_unfair_lock_lock((a1 + 88));
  v3 = std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::find<SVGAtom::Name>((a1 + 48), &v5) != 0;
  os_unfair_lock_unlock((a1 + 88));
  return v3;
}

uint64_t *std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::find<SVGAtom::Name>(void *a1, unsigned int *a2)
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
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
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

void SVGNode::addChild(CFTypeRef *this, CFTypeRef *a2)
{
  v8 = a2;
  if (a2 == this)
  {

    SVGUtilities::error("Warning: attempted to add a node to itself, causing a cycle. Ignoring.", a2);
  }

  else if (a2)
  {
    std::vector<SVGPathCommand *>::push_back[abi:ne200100]((this + 11), &v8);
    CFRetained::retain(v8);
    v3 = v8;
    v8[6] = this;
    if (SVGNode::identifier(v3))
    {
      if (*SVGNode::identifier(v8))
      {
        v4 = SVGNode::identifier(v8);
        std::string::basic_string[abi:ne200100]<0>(__p, v4);
        v7 = v8;
        std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,SVGNode *>>((this + 17), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_1DF11DD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SVGPathCommand *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<SVGPathCommand *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<SVGPathCommand *>>(a1, v10);
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

uint64_t std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,SVGAttributeMap *> const&>(void *a1, void *a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::__construct_node<std::pair<std::string const,SVGAttributeMap *> const&>();
  }

  return result;
}

void sub_1DF11DFE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::__find_equal<std::string>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a5, (a2 + 4)))
  {
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::__find_equal<std::string>(a1, a3, a5);
}

void SVGReader::~SVGReader(SVGReader *this, CFRetained *a2)
{
  CFRetained::release(*(this + 1), a2);
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  std::unique_ptr<SVGStyle>::reset[abi:ne200100](this + 2, 0);
}

void SVGStyle::~SVGStyle(char **this)
{
  v2 = (this + 1);
  v3 = *this;
  if (*this != (this + 1))
  {
    do
    {
      if (v3[55] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v3 + 4), *(v3 + 5));
      }

      else
      {
        __p = *(v3 + 32);
      }

      v8 = *(v3 + 7);
      CFRetained::release(v8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }

  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(this, this[1]);
}

std::string *SVGParser::StripLeadingTrailingWhitespace@<X0>(std::string *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    if (*(&this->__r_.__value_.__s + 23))
    {
      goto LABEL_3;
    }

LABEL_15:
    *a2 = *this;
    *&this->__r_.__value_.__r.__words[1] = 0uLL;
    this->__r_.__value_.__r.__words[0] = 0;
    return this;
  }

  size = this->__r_.__value_.__l.__size_;
  if (!size)
  {
    goto LABEL_15;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x1E69E9830];
  do
  {
    v7 = *std::string::at(v2, v5);
    if ((v7 & 0x80000000) != 0)
    {
      if (!__maskrune(v7, 0x4000uLL))
      {
        goto LABEL_10;
      }
    }

    else if ((*(v6 + 4 * v7 + 60) & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    ++v5;
  }

  while (size != v5);
  v5 = size;
LABEL_10:
  v8 = size - 1;
  if (v5 <= size - 1)
  {
    v9 = size - v5 + 1;
    do
    {
      v10 = *std::string::at(v2, v8);
      if ((v10 & 0x80000000) != 0)
      {
        v11 = __maskrune(v10, 0x4000uLL);
      }

      else
      {
        v11 = *(v6 + 4 * v10 + 60) & 0x4000;
      }

      --v8;
      --v9;
    }

    while (v11);
    return std::string::basic_string(a2, v2, v5, v9, &v12);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, &unk_1DF145996);
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

void SVGParser::ParseSelectorListFromRuleset(char *__s@<X0>, void *a2@<X8>)
{
  v2 = __s;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (__s[23] < 0)
  {
    v2 = *__s;
  }

  v4 = strlen(v2);
  if (v4)
  {
    v5 = &v2[v4];
    v6 = &v2[v4];
    v7 = MEMORY[0x1E69E9830];
    do
    {
      if (v2 >= v5)
      {
        break;
      }

      v8 = v6 - v2;
      v9 = v2;
      do
      {
        v10 = *v9;
        if ((v10 & 0x80000000) != 0)
        {
          v11 = __maskrune(v10, 0x4000uLL);
        }

        else
        {
          v11 = *(v7 + 4 * v10 + 60) & 0x4000;
        }

        if (v11)
        {
          break;
        }

        v12 = *v9;
        if (v12 == 44)
        {
          break;
        }

        if (v12 == 123)
        {
          break;
        }

        ++v9;
        --v8;
      }

      while (v8);
      std::string::basic_string[abi:ne200100](__p, v2, v9 - v2);
      std::vector<std::string>::push_back[abi:ne200100](a2, __p);
      if (v9 < v5)
      {
        v13 = v6 - v9;
        do
        {
          v14 = *v9;
          if ((v14 & 0x80000000) != 0)
          {
            v15 = __maskrune(v14, 0x4000uLL);
          }

          else
          {
            v15 = *(v7 + 4 * v14 + 60) & 0x4000;
          }

          v16 = *v9;
          if (v15)
          {
            if (v16 == 123)
            {
              goto LABEL_25;
            }
          }

          else if (v16 != 44)
          {
            goto LABEL_25;
          }

          ++v9;
          --v13;
        }

        while (v13);
      }

      v16 = *v9;
LABEL_25:
      v2 = v9;
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    while (v16 != 123);
  }
}

void sub_1DF11E5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SVGParser::ParseDeclarationBlockFromRuleset(char *__s@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = __s;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (__s[23] < 0)
  {
    v4 = *__s;
  }

  v6 = strlen(v4);
  if (v6)
  {
    v7 = &v4[v6];
    if ((a2 & 1) == 0)
    {
      v8 = v4;
      if (v6 >= 1)
      {
        do
        {
          if (*v8 == 123)
          {
            break;
          }

          ++v8;
        }

        while (v8 < v7);
      }

      v9 = v8 + 1;
      if (v8 + 1 >= v7)
      {
        return;
      }

      v10 = &v4[v6] - v8;
      v11 = &v4[v6];
      v12 = v10 - 1;
      v7 = v9;
      while (*v7 != 125)
      {
        ++v7;
        if (!--v12)
        {
          v4 = v9;
          v7 = v11;
          goto LABEL_14;
        }
      }

      v4 = v9;
    }

LABEL_14:
    if (v4 < v7)
    {
      v13 = MEMORY[0x1E69E9830];
      do
      {
        do
        {
          v14 = *v4;
          if ((v14 & 0x80000000) != 0)
          {
            v15 = __maskrune(v14, 0x4000uLL);
          }

          else
          {
            v15 = *(v13 + 4 * v14 + 60) & 0x4000;
          }

          if (!v15)
          {
            break;
          }

          ++v4;
        }

        while (v4 < v7);
        v16 = v4;
        if (v4 < v7)
        {
          v17 = v7 - v4;
          v16 = v4;
          while (*v16 != 59)
          {
            ++v16;
            if (!--v17)
            {
              v16 = v7;
              break;
            }
          }
        }

        v18 = v16 - v4;
        v19 = v16 - 1;
        do
        {
          v20 = v18;
          if (v19 <= v4)
          {
            break;
          }

          v21 = *v19;
          v22 = (v21 & 0x80000000) != 0 ? __maskrune(v21, 0x4000uLL) : *(v13 + 4 * v21 + 60) & 0x4000;
          v18 = v20 - 1;
          --v19;
        }

        while (v22);
        if ((v20 - 1) < -1)
        {
          break;
        }

        std::string::basic_string[abi:ne200100](__p, v4, v20);
        std::vector<std::string>::push_back[abi:ne200100](a3, __p);
        v23 = v16 + 1;
        do
        {
          v4 = v23;
          if (v23 >= v7)
          {
            break;
          }

          v24 = *v23;
          v25 = (v24 & 0x80000000) != 0 ? __maskrune(v24, 0x4000uLL) : *(v13 + 4 * v24 + 60) & 0x4000;
          v23 = v4 + 1;
        }

        while (v25);
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }
      }

      while (v4 < v7);
    }
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DF11E8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t SVGAtom::insert(uint64_t a1, char *a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 88));
  if (!a3)
  {
    v6 = *(a1 + 16);
    if ((v6 - 4294967294) < 0xFFFFFFFF00000001)
    {
      a3 = 0xFFFFFFFFLL;
      goto LABEL_15;
    }

    a3 = 0xFFFFFFFFLL;
    while (1)
    {
      v6 = (v6 + 1);
      if (!*(a1 + 32))
      {
LABEL_14:
        a3 = v6;
        goto LABEL_15;
      }

      v7 = *(a1 + 32);
      while (1)
      {
        v8 = *(v7 + 8);
        if (v6 >= v8)
        {
          break;
        }

LABEL_10:
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_14;
        }
      }

      if (v8 < v6)
      {
        break;
      }

      if (v6 == -1)
      {
        goto LABEL_15;
      }
    }

    ++v7;
    goto LABEL_10;
  }

LABEL_15:
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  v13 = a3;
  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::__emplace_unique_key_args<std::string,std::pair<std::string,SVGAtom::Name>>(a1, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  LODWORD(__p) = a3;
  std::string::basic_string[abi:ne200100]<0>(&v11, a2);
  std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::__emplace_unique_key_args<SVGAtom::Name,std::pair<SVGAtom::Name,std::string>>(a1 + 24, &__p);
  if (v14 < 0)
  {
    operator delete(v11);
  }

  os_unfair_lock_unlock((a1 + 88));
  return a3;
}

void sub_1DF11EB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGAttributeMap::SVGAttributeMap(SVGAttributeMap *this, const SVGAttributeMap *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttributeMap::kSVGAttributeMapClassName);
  CFRetained::CFRetained(this, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *this = &unk_1F5A43F80;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN15SVGAttributeMapC2ERKS__block_invoke;
  v4[3] = &__block_descriptor_tmp_0;
  v4[4] = this;
  SVGAttributeMap::enumerate(a2, v4);
}

void sub_1DF11EC54(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::destroy(v2, *(v1 + 56));
  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

BOOL SVGParser::StringBeginsWith(SVGParser *this, const char *a2, const char *a3)
{
  result = 0;
  if (this && a2)
  {
    v6 = strlen(this);
    v7 = strlen(a2);
    return v6 >= v7 && strncasecmp(this, a2, v7) == 0;
  }

  return result;
}

uint64_t ___ZL33ApplyUniqueAttributesToAttributesP15SVGAttributeMapS0__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = SVGAttributeMap::attribute(*(a1 + 32), *(a3 + 48));
  if (!result)
  {
    operator new();
  }

  return result;
}

SVGNode *CGSVGNodeFindChildWithStringIdentifier(uint64_t a1, const __CFString *this)
{
  if (!this)
  {
    return 0;
  }

  SVGUtilities::StringWithCFString(this, __p);
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  ChildWithCStringIdentifier = CGSVGNodeFindChildWithCStringIdentifier(a1, v3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return ChildWithCStringIdentifier;
}

void sub_1DF11EEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGUtilities::StringWithCFString(const __CFString *this@<X0>, _BYTE *a2@<X8>)
{
  if (!this || (v5 = CFGetTypeID(this), v5 != CFStringGetTypeID()))
  {
    v7 = &unk_1DF145996;
    goto LABEL_6;
  }

  CStringPtr = CFStringGetCStringPtr(this, 0x8000100u);
  if (CStringPtr)
  {
    v7 = CStringPtr;
LABEL_6:

    std::string::basic_string[abi:ne200100]<0>(a2, v7);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(a2, &unk_1DF145996);
  Length = CFStringGetLength(this);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (v10)
  {
    if (CFStringGetCString(this, v10, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      MEMORY[0x1E12CE550](a2, v10, MaximumSizeForEncoding + 1);
    }

    free(v10);
  }
}

void sub_1DF11F02C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

SVGNode *CGSVGNodeFindChildWithCStringIdentifier(uint64_t a1, char *a2)
{
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (result)
  {
    result = SVGNode::findChildWithIdentifier(result, a2);
    if (result)
    {
      return *(result + 5);
    }
  }

  return result;
}

uint64_t SVGNode::findChildWithIdentifier(SVGNode *this, char *a2)
{
  if (!a2)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__count_unique<std::string>(this + 136, __p);
  v5 = v4;
  if ((v12 & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  operator delete(__p[0]);
  if (!v5)
  {
LABEL_7:
    v7 = *(this + 11);
    v8 = *(this + 12);
    while (v7 != v8)
    {
      ChildWithIdentifier = SVGNode::findChildWithIdentifier(*v7, a2);
      if (ChildWithIdentifier)
      {
        return ChildWithIdentifier;
      }

      ++v7;
    }

    return 0;
  }

LABEL_4:
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v6 = *(std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::find<std::string>(this + 136, __p) + 56);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1DF11F150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__count_unique<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if ((std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a2, (v2 + 4)) & 1) == 0)
      {
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, (v2 + 4), a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v4 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v9.__r_.__value_.__r.__words[0];
    v6 = strcasecmp(v5, v9.__r_.__value_.__l.__data_);
    operator delete(v8);
    if ((*(&v10.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v6 >> 31;
    }

    goto LABEL_12;
  }

  v6 = strcasecmp(v5, &v9);
  if (v4 < 0)
  {
LABEL_12:
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6 >> 31;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v4 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v9.__r_.__value_.__r.__words[0];
    v6 = strcasecmp(v5, v9.__r_.__value_.__l.__data_);
    operator delete(v8);
    if ((*(&v10.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v6 >> 31;
    }

    goto LABEL_12;
  }

  v6 = strcasecmp(v5, &v9);
  if (v4 < 0)
  {
LABEL_12:
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6 >> 31;
}

void sub_1DF11F2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SVGAttribute::stringValueBeginsWith(SVGAttribute *this, const char *a2, const char *a3)
{
  v4 = (this + 56);
  if (*(this + 79) < 0)
  {
    v4 = *v4;
  }

  return SVGParser::StringBeginsWith(v4, a2, a3);
}

const __CFString *CGSVGDocumentGetNamedStyle(uint64_t a1, const char *a2)
{
  v2 = a2;
  v3 = CFRetained::getObject<SVGDocument>(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  SVGUtilities::StringWithCFString(v2, __p);
  NamedStyle = SVGDocument::findNamedStyle(v4, __p);
  v6 = NamedStyle;
  if (NamedStyle)
  {
    v2 = *(NamedStyle + 40);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      return v2;
    }

    return 0;
  }

  if (!NamedStyle)
  {
    return 0;
  }

  return v2;
}

void sub_1DF11F374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGAttribute::floatValue(os_unfair_lock_s *this, double *a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v7, this + 27);
  if (!SVGAttribute::resolveAsFloats(this) || (v4 = **&this[22]._os_unfair_lock_opaque, *(*&this[22]._os_unfair_lock_opaque + 8) == v4))
  {
    v5 = 0;
  }

  else
  {
    *a2 = *v4;
    v5 = 1;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v7);
  return v5;
}

void sub_1DF11F404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

uint64_t SVGDocument::findNamedStyle(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 64);
  if (result)
  {
    return SVGStyle::findNamedStyle(result, a2);
  }

  return result;
}

uint64_t SVGStyle::findNamedStyle(uint64_t a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::find<std::string>(a1, a2);
  if (a1 + 8 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

void *CGSVGNodeGetChildAtIndex(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (result)
  {
    v4 = result[11];
    if (a2 >= (result[12] - v4) >> 3)
    {
      return 0;
    }

    else
    {
      return *(*(v4 + 8 * a2) + 40);
    }
  }

  return result;
}

void *CGSVGNodeGetChildCount(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (result)
  {
    return ((result[12] - result[11]) >> 3);
  }

  return result;
}

void *CGSVGNodeGetAttributeMap(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (result)
  {
    return *(result[7] + 40);
  }

  return result;
}

void *CGSVGNodeGetParent(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (result)
  {
    v3 = result[6];
    if (v3)
    {
      return *(v3 + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGSVGAttributeMapGetAttribute(uint64_t a1, const char *a2)
{
  v2 = a2;
  result = CFRetained::getObject<SVGAttributeMap>(a1, a2);
  if (result)
  {
    result = SVGAttributeMap::attribute(result, v2);
    if (result)
    {
      return *(result + 40);
    }
  }

  return result;
}

void *CFRetained::getObject<SVGAttributeMap>(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    SVGUtilities::error("NULL ref passed to getObject", a2, v2, v3);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }
}

uint64_t SVGAttribute::transformValue(os_unfair_lock_s *this, CGAffineTransform *a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v9, this + 27);
  if (SVGAttribute::resolveAsFloats(this) && (v4 = **&this[22]._os_unfair_lock_opaque, *(*&this[22]._os_unfair_lock_opaque + 8) - v4 == 48))
  {
    v5 = v4[1];
    v6 = v4[2];
    *&a2->a = *v4;
    *&a2->c = v5;
    *&a2->tx = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v9);
  return v7;
}

void sub_1DF11F660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

os_unfair_lock_s *CGSVGAttributeGetTransform(uint64_t a1, char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {

    return SVGAttribute::transformValue(result, a2);
  }

  return result;
}

BOOL ParseTransformPrefix(uint64_t a1, char *__s, void *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = (a1 - 1);
  v8 = MEMORY[0x1E69E9830];
  do
  {
    v9 = v7[1];
    if ((v9 & 0x80000000) != 0)
    {
      v10 = __maskrune(v9, 0x4000uLL);
    }

    else
    {
      v10 = *(v8 + 4 * v9 + 60) & 0x4000;
    }

    ++v7;
  }

  while (v10);
  v11 = strlen(__s);
  if (strncasecmp(v7, __s, v11))
  {
    return 0;
  }

  while (1)
  {
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0 && (*(v8 + 4 * v13 + 60) & 0x400) != 0)
    {
      break;
    }

    v14 = v13 > 0x2E;
    v15 = (1 << v13) & 0x680000000001;
    if (!v14 && v15 != 0)
    {
      break;
    }

    ++v7;
  }

  return SVGParser::ParseCGFloatList(v7, a3, a4);
}

uint64_t SVGParser::ParseTransforms(SVGParser *this, char *a2, CGAffineTransform *a3, char **a4)
{
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&v18[8] = *MEMORY[0x1E695EFD0];
  *&v18[24] = v4;
  *&v18[40] = *(MEMORY[0x1E695EFD0] + 32);
  *v18 = 0;
  if (!*this)
  {
    return 0;
  }

  v6 = this;
  v7 = 0;
  do
  {
    if ((SVGParser::ParseTransformMatrix(v6, &v17, v18, a4) & 1) != 0 || (SVGParser::ParseTransformTranslate(v6, &v17, v18, v8) & 1) != 0 || (SVGParser::ParseTransformScale(v6, &v17, v18, v9) & 1) != 0 || (SVGParser::ParseTransformRotate(v6, &v17, v18, v10) & 1) != 0 || SVGParser::ParseTransformSkewX(v6, &v17.a, v18, v11) || SVGParser::ParseTransformSkewY(v6, &v17.a, v18, v12))
    {
      ++v7;
      t1 = v17;
      v15 = *&v18[8];
      CGAffineTransformConcat(&v18[8], &t1, &v15);
      v6 = *v18;
    }

    else
    {
      v6 = (v6 + 1);
    }
  }

  while (*v6);
  if (!v7)
  {
    return 0;
  }

  v13 = *&v18[24];
  *a2 = *&v18[8];
  *(a2 + 1) = v13;
  *(a2 + 2) = *&v18[40];
  return 1;
}

uint64_t SVGParser::ParseTransformMatrix(SVGParser *this, char *a2, CGAffineTransform *a3, char **a4)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  v5 = ParseTransformPrefix(this, "matrix", a3, &__p);
  v6 = __p;
  if (v5 && (v13 - __p) >= 0x30)
  {
    v9 = *(__p + 1);
    v10 = *(__p + 2);
    *a2 = *__p;
    *(a2 + 1) = v9;
    *(a2 + 2) = v10;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (!__p)
    {
      return v8;
    }
  }

  v13 = v6;
  operator delete(v6);
  return v7;
}

void sub_1DF11F990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGParser::ParseTransformRotate(SVGParser *this, char *a2, CGAffineTransform *a3, char **a4)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v5 = ParseTransformPrefix(this, "rotate", a3, &v21);
  v6 = v21;
  if (v5)
  {
    v7 = v22 - v21;
    if (v7)
    {
      if (v7 == 1)
      {
        CGAffineTransformMakeRotation(&v20, *v21 / 180.0 * 3.14159265);
        v10 = *&v20.c;
        *a2 = *&v20.a;
        *(a2 + 1) = v10;
        v11 = *&v20.tx;
      }

      else
      {
        if (v7 == 2)
        {
          goto LABEL_5;
        }

        memset(&v20, 0, sizeof(v20));
        v12 = v21[1];
        v13 = v21[2];
        CGAffineTransformMakeTranslation(&v20, -v12, -v13);
        memset(&v19, 0, sizeof(v19));
        CGAffineTransformMakeRotation(&v19, *v6 / 180.0 * 3.14159265);
        memset(&v18, 0, sizeof(v18));
        CGAffineTransformMakeTranslation(&v18, v12, v13);
        t1 = v20;
        v15 = v19;
        CGAffineTransformConcat(&v16, &t1, &v15);
        v15 = v18;
        CGAffineTransformConcat(&t1, &v16, &v15);
        v14 = *&t1.c;
        *a2 = *&t1.a;
        *(a2 + 1) = v14;
        v11 = *&t1.tx;
      }

      *(a2 + 2) = v11;
      v8 = 1;
      goto LABEL_10;
    }
  }

LABEL_5:
  v8 = 0;
  result = 0;
  if (v21)
  {
LABEL_10:
    v22 = v6;
    operator delete(v6);
    return v8;
  }

  return result;
}

void sub_1DF11FB48(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    *(v1 - 64) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGParser::ParseTransformScale(SVGParser *this, char *a2, CGAffineTransform *a3, char **a4)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v5 = ParseTransformPrefix(this, "scale", a3, &v13);
  v6 = v13;
  if (v5)
  {
    v7 = v14 - v13;
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = *v13;
      }

      else
      {
        v8 = v13[1];
      }

      CGAffineTransformMakeScale(&v12, *v13, v8);
      v11 = *&v12.c;
      *a2 = *&v12.a;
      *(a2 + 1) = v11;
      *(a2 + 2) = *&v12.tx;
      v9 = 1;
      goto LABEL_9;
    }
  }

  v9 = 0;
  result = 0;
  if (v13)
  {
LABEL_9:
    v14 = v6;
    operator delete(v6);
    return v9;
  }

  return result;
}

void sub_1DF11FC18(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGParser::ParseTransformTranslate(SVGParser *this, char *a2, CGAffineTransform *a3, char **a4)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v5 = ParseTransformPrefix(this, "translate", a3, &v13);
  v6 = v13;
  if (v5)
  {
    v7 = v14 - v13;
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v13[1];
      }

      CGAffineTransformMakeTranslation(&v12, *v13, v8);
      v11 = *&v12.c;
      *a2 = *&v12.a;
      *(a2 + 1) = v11;
      *(a2 + 2) = *&v12.tx;
      v9 = 1;
      goto LABEL_9;
    }
  }

  v9 = 0;
  result = 0;
  if (v13)
  {
LABEL_9:
    v14 = v6;
    operator delete(v6);
    return v9;
  }

  return result;
}

void sub_1DF11FCE8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL SVGParser::ParseTransformSkewX(SVGParser *this, double *a2, CGAffineTransform *a3, char **a4)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = ParseTransformPrefix(this, "skewX", a3, &v10);
  v6 = v10;
  v7 = v11 != v10 && v5;
  if (v7)
  {
    v8 = tan(*v10 / 180.0 * 3.14159265);
    *a2 = xmmword_1DF145190;
    a2[2] = v8;
    a2[4] = 0.0;
    a2[5] = 0.0;
    a2[3] = 1.0;
  }

  else if (!v10)
  {
    return 0;
  }

  v11 = v6;
  operator delete(v6);
  return v7;
}

void sub_1DF11FDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SVGParser::ParseTransformSkewY(SVGParser *this, double *a2, CGAffineTransform *a3, char **a4)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = ParseTransformPrefix(this, "skewY", a3, &v10);
  v6 = v10;
  v7 = v11 != v10 && v5;
  if (v7)
  {
    v8 = tan(*v10 / 180.0 * 3.14159265);
    *a2 = 1.0;
    a2[1] = v8;
    *(a2 + 1) = xmmword_1DF1452C0;
    a2[4] = 0.0;
    a2[5] = 0.0;
  }

  else if (!v10)
  {
    return 0;
  }

  v11 = v6;
  operator delete(v6);
  return v7;
}

void sub_1DF11FE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *CGSVGShapeNodeGetPrimitive(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (result)
  {
    return result[74];
  }

  return result;
}

void *CFRetained::getObject<SVGShapeNode>(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    SVGUtilities::error("NULL ref passed to getObject", a2, v2, v3);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }
}

SVGShapeNode *CGSVGShapeNodeGetPath(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (result)
  {
    result = SVGShapeNode::path(result);
    if (result)
    {
      return *(result + 5);
    }
  }

  return result;
}

uint64_t SVGAttribute::pathValue(os_unfair_lock_s *this, SVGPath **a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v7, this + 27);
  v5 = SVGAttribute::resolveAsPath(this, v4);
  if (v5)
  {
    *a2 = *&this[22]._os_unfair_lock_opaque;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v7);
  return v5;
}

void sub_1DF11FFD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

SVGPath *SVGShapeNode::path(SVGShapeNode *this)
{
  result = SVGAttributeMap::attribute(*(this + 7), 0xBu);
  v2 = 0;
  if (result)
  {
    if (SVGAttribute::pathValue(result, &v2))
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SVGAttribute::resolveAsPath(SVGAttribute *this, const char *a2)
{
  if (*(this + 20) != 4)
  {
    v4 = (this + 56);
    if (*(this + 79) < 0)
    {
      v4 = *v4;
    }

    SVGParser::ParseCommandList(v4, a2);
  }

  return 1;
}

uint64_t SVGPathCommand::ExpectedFloatCount(int a1)
{
  result = 0;
  if (a1 > 96)
  {
    v3 = a1 - 104;
    if ((a1 - 104) <= 0xE)
    {
      if (((1 << v3) & 0x1030) != 0)
      {
        return 2;
      }

      if (((1 << v3) & 0xA00) != 0)
      {
        return 4;
      }

      if (((1 << v3) & 0x4001) != 0)
      {
        return 1;
      }
    }

    if (a1 != 97)
    {
      if (a1 != 99)
      {
        return result;
      }

      return 6;
    }

    return 7;
  }

  if (a1 <= 80)
  {
    if (a1 <= 75)
    {
      if (a1 != 65)
      {
        if (a1 != 67)
        {
          if (a1 != 72)
          {
            return result;
          }

          return 1;
        }

        return 6;
      }

      return 7;
    }

    if ((a1 - 76) >= 2)
    {
      return result;
    }

    return 2;
  }

  if (a1 > 83)
  {
    if (a1 != 84)
    {
      if (a1 != 86)
      {
        return result;
      }

      return 1;
    }

    return 2;
  }

  if (a1 == 81 || a1 == 83)
  {
    return 4;
  }

  return result;
}

uint64_t SVGPathCommand::SVGPathCommand(uint64_t a1, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPathCommand::kSVGPathCommandClassName);
  CFRetained::CFRetained(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A440C8;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  if (SVGPathCommand::ExpectedFloatCount(a2))
  {
    operator new();
  }

  return a1;
}

void sub_1DF120438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

char *SVGPathCommand::appendFloats(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v5 = *(a1 + 56);
  if (!v5)
  {
    SVGPathCommand::appendFloats();
  }

  v6 = v5[1];

  return std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>(v5, v6, a3, a4, (a4 - a3) >> 3);
}

char *std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t SVGPath::addCommand(SVGPath *this, SVGPathCommand *a2)
{
  v3 = a2;
  std::vector<SVGPathCommand *>::push_back[abi:ne200100](this + 48, &v3);
  return CFRetained::retain(v3);
}

CGPath *CGSVGPathCreateCGPath(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGPath>(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Mutable = SVGPath::copyCachedCGPath(v3);
  if (!Mutable)
  {
    v151 = v4;
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    Mutable = CGPathCreateMutable();
    v9 = CFRetained::getObject<SVGPath>(a1, v8);
    if (v9)
    {
      v11 = v9[7] - v9[6];
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = v11 >> 3;
        __asm { FMOV            V0.2D, #0.5 }

        v150 = _Q0;
        x = v6;
        y = v7;
        v156 = v11 >> 3;
        do
        {
          v22 = CFRetained::getObject<SVGPath>(a1, v10);
          if (v22 && (v24 = v22[6], v13 < (v22[7] - v24) >> 3))
          {
            v25 = *(*(v24 + 8 * v13) + 40);
          }

          else
          {
            v25 = 0;
          }

          v26 = CFRetained::getObject<SVGPathCommand>(v25, v23);
          if (!v26)
          {
            v27 = 0;
            goto LABEL_19;
          }

          v27 = v26[12];
          if (v27 > 96)
          {
            if (v27 <= 112)
            {
              if (v27 > 107)
              {
                v39 = v27 - 108;
                goto LABEL_55;
              }

              if (v27 == 97)
              {
LABEL_87:
                v60 = CFRetained::getObject<SVGPathCommand>(v25, v10);
                if (v60)
                {
                  v61 = v60[7];
                  if (v61)
                  {
                    v63 = *v61;
                    v62 = *(v60[7] + 8);
                    v64 = (v62 - v63) >> 3;
                    if (0x6DB6DB6DB6DB6DB7 * v64 > 0x2492492492492492)
                    {
                      v28 = "A/a command was given the wrong number of floats.";
                      goto LABEL_20;
                    }

                    if (v62 == v63)
                    {
                      goto LABEL_21;
                    }

                    v101 = 0;
                    v149 = (v62 - v63) >> 3;
                    while (2)
                    {
                      FloatAtIndex = CGSVGPathCommandGetFloatAtIndex(v25, v101);
                      sx = CGSVGPathCommandGetFloatAtIndex(v25, v101 + 1);
                      v102 = CGSVGPathCommandGetFloatAtIndex(v25, v101 + 5);
                      v103 = CGSVGPathCommandGetFloatAtIndex(v25, v101 + 6);
                      v104 = CGSVGPathCommandGetFloatAtIndex(v25, v101 + 2);
                      v161 = CGSVGPathCommandGetFloatAtIndex(v25, v101 + 3);
                      v106 = CGSVGPathCommandGetFloatAtIndex(v25, v101 + 4);
                      v107 = x + v102;
                      v108 = y + v103;
                      if (((1 << (v27 - 97)) & 0x2D1885) == 0)
                      {
                        v108 = v103;
                        v107 = v102;
                      }

                      if ((v27 - 97) > 0x15)
                      {
                        v109 = v102;
                      }

                      else
                      {
                        v103 = v108;
                        v109 = v107;
                      }

                      if (FloatAtIndex == 0.0 || sx == 0.0)
                      {
                        SVGUtilities::log("Ellipses path has invalid rx or ry value. Drawing line.", v105, v106);
                        CGPathAddLineToPoint(Mutable, 0, v109, v103);
                        v135 = y;
                        v133 = x;
                      }

                      else
                      {
                        v159 = v106;
                        v110 = v106 > 0.0;
                        v111 = fabs(sx);
                        v157 = fabs(FloatAtIndex);
                        angle = v104 / 180.0 * 3.14159265;
                        v112 = __sincos_stret(angle);
                        v155 = v109;
                        v160 = v103;
                        v113.f64[0] = FloatAtIndex;
                        v113.f64[1] = sx;
                        v114 = vmulq_f64(v113, v113);
                        v113.f64[0] = v112.__cosval;
                        v113.f64[1] = -v112.__sinval;
                        _Q5 = vaddq_f64(vmulq_f64(vmulq_n_f64(v112, y - v103), v150), vmulq_f64(vmulq_n_f64(v113, x - v109), v150));
                        v116 = vaddvq_f64(vdivq_f64(vmulq_f64(_Q5, _Q5), v114));
                        v117 = sqrt(v116);
                        v118 = v157 * v117;
                        v119 = v111 * v117;
                        if (v116 <= 1.0)
                        {
                          v120 = v111;
                        }

                        else
                        {
                          v120 = v119;
                        }

                        if (v116 <= 1.0)
                        {
                          v121 = v157;
                        }

                        else
                        {
                          v121 = v118;
                        }

                        v122 = _Q5.f64[1];
                        _D2 = vmuld_lane_f64(v121 * v121, _Q5, 1);
                        __asm { FMLA            D1, D2, V5.D[1] }

                        v125 = sqrt((vmuld_lane_f64(-(_Q5.f64[1] * (v121 * v121)), _Q5, 1) + v120 * (v121 * v121) * v120 - _Q5.f64[0] * (v120 * v120 * _Q5.f64[0])) / _D1);
                        if (v161 > 0.0 == v110)
                        {
                          v125 = -v125;
                        }

                        v163 = vmuld_lane_f64(v121, _Q5, 1) / v120 * v125;
                        v152 = _Q5.f64[0];
                        sxa = v121;
                        v126 = (_Q5.f64[0] - v163) / v121;
                        v158 = -v120 * _Q5.f64[0] / v121 * v125;
                        v127 = (_Q5.f64[1] - v158) / v120;
                        v128 = (v126 + v127 * 0.0) / sqrt(v127 * v127 + v126 * v126);
                        v129 = -1.0;
                        if (v128 >= -1.0)
                        {
                          v129 = v128;
                          if (v128 > 1.0)
                          {
                            v129 = 1.0;
                          }
                        }

                        v130 = fabs(acos(v129));
                        if (v127 < v126 * 0.0)
                        {
                          v130 = -v130;
                        }

                        startAngle = v130;
                        v170.dx = (-v152 - v163) / sxa;
                        v170.dy = (-v122 - v158) / v120;
                        v169.dx = v126;
                        v169.dy = v127;
                        Vec2Angle(v169, v170);
                        v132 = v131;
                        if (v159 <= 0.0)
                        {
                          v134 = v161;
                          v133 = v155;
                          if (v161 <= 0.0 && v131 > 0.0)
                          {
                            v132 = v131 + -6.28318531;
                            goto LABEL_169;
                          }

                          cosval = v112.__cosval;
                          sinval = v112.__sinval;
                          if (v131 <= -6.28318531)
                          {
                            do
                            {
                              v132 = v132 + 6.28318531;
                            }

                            while (v132 <= -6.28318531);
                          }
                        }

                        else
                        {
                          v133 = v155;
                          v134 = v161;
                          if (v131 < 0.0)
                          {
                            do
                            {
                              v132 = v132 + 6.28318531;
                            }

                            while (v132 < 0.0);
                          }

                          v132 = fmod(v132, 6.28318531);
LABEL_169:
                          cosval = v112.__cosval;
                          sinval = v112.__sinval;
                        }

                        v138 = (x + v133) * 0.5 + cosval * v163 - sinval * v158;
                        v139 = cosval * v158 + sinval * v163;
                        v140 = *(MEMORY[0x1E695EFD0] + 16);
                        *&matrix.a = *MEMORY[0x1E695EFD0];
                        *&matrix.c = v140;
                        *&matrix.tx = *(MEMORY[0x1E695EFD0] + 32);
                        *&v166.a = *&matrix.a;
                        *&v166.c = v140;
                        *&v166.tx = *&matrix.tx;
                        CGAffineTransformTranslate(&v167, &v166, v138, (y + v160) * 0.5 + v139);
                        matrix = v167;
                        v166 = v167;
                        CGAffineTransformRotate(&v167, &v166, angle);
                        matrix = v167;
                        v166 = v167;
                        CGAffineTransformScale(&v167, &v166, sxa, v120);
                        matrix = v167;
                        if (v134 <= 0.0 || v159 <= 0.0 || v132 >= 0.0)
                        {
                          v141 = startAngle;
                          if (v134 <= 0.0 || v159 > 0.0 || v132 <= 0.0)
                          {
                            v135 = v160;
                            if (v132 == 0.0)
                            {
                              v132 = 6.28318531;
                            }
                          }

                          else
                          {
                            v132 = v132 + -6.28318531;
                            v135 = v160;
                          }
                        }

                        else
                        {
                          v132 = v132 + 6.28318531;
                          v135 = v160;
                          v141 = startAngle;
                        }

                        CGPathAddRelativeArc(Mutable, &matrix, 0.0, 0.0, 1.0, v141, v132);
                        y = v135;
                        x = v133;
                        v64 = v149;
                      }

                      v101 += 7;
                      if (v101 >= v64)
                      {
                        y = v135;
                        x = v133;
                        goto LABEL_21;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_21;
              }

              if (v27 != 99)
              {
                if (v27 != 104)
                {
                  goto LABEL_19;
                }

                goto LABEL_39;
              }

              goto LABEL_83;
            }

            if (v27 > 115)
            {
              if (v27 == 116)
              {
LABEL_91:
                if ((v12 - 81) > 0x23 || ((1 << (v12 - 81)) & 0x900000009) == 0)
                {
                  v7 = y;
                  v6 = x;
                }

                v65 = CFRetained::getObject<SVGPathCommand>(v25, v10);
                if (v65)
                {
                  v66 = v65[7];
                  if (v66)
                  {
                    v67 = *(v65[7] + 8) - *v66;
                    if (v67)
                    {
                      v68 = 0;
                      v69 = v67 >> 3;
                      do
                      {
                        v6 = x + x - v6;
                        v7 = y + y - v7;
                        v70 = CGSVGPathCommandGetFloatAtIndex(v25, v68);
                        v71 = v68 + 1;
                        v72 = CGSVGPathCommandGetFloatAtIndex(v25, v71);
                        v73 = v27 - 97;
                        v74 = x + v70;
                        v75 = y + v72;
                        if (((1 << (v27 - 97)) & 0x2D1885) == 0)
                        {
                          v74 = v70;
                          v75 = v72;
                        }

                        if (v73 <= 0x15)
                        {
                          x = v74;
                        }

                        else
                        {
                          x = v70;
                        }

                        if (v73 <= 0x15)
                        {
                          y = v75;
                        }

                        else
                        {
                          y = v72;
                        }

                        CGPathAddQuadCurveToPoint(Mutable, 0, v6, v7, x, y);
                        v68 = v71 + 1;
                      }

                      while (v68 < v69);
                    }
                  }
                }

                goto LABEL_21;
              }

              if (v27 != 118)
              {
                if (v27 == 122)
                {
                  goto LABEL_38;
                }

                goto LABEL_19;
              }

              goto LABEL_39;
            }

            if (v27 == 113)
            {
              goto LABEL_107;
            }

            if (v27 != 115)
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v27 <= 80)
            {
              if (v27 > 75)
              {
                v39 = v27 - 76;
LABEL_55:
                if (v39 >= 2)
                {
                  goto LABEL_19;
                }

                v40 = CFRetained::getObject<SVGPathCommand>(v25, v10);
                if (v40)
                {
                  v41 = v40[7];
                  if (v41)
                  {
                    v42 = *(v40[7] + 8) - *v41;
                    if (v42)
                    {
                      v43 = 0;
                      v44 = v42 >> 3;
                      do
                      {
                        v45 = CGSVGPathCommandGetFloatAtIndex(v25, v43);
                        v46 = v43 + 1;
                        v47 = CGSVGPathCommandGetFloatAtIndex(v25, v46);
                        v48 = v27 - 97;
                        v49 = x + v45;
                        v50 = y + v47;
                        if (((1 << (v27 - 97)) & 0x2D1885) == 0)
                        {
                          v50 = v47;
                          v49 = v45;
                        }

                        if (v48 <= 0x15)
                        {
                          y = v50;
                        }

                        else
                        {
                          y = v47;
                        }

                        if (v48 <= 0x15)
                        {
                          x = v49;
                        }

                        else
                        {
                          x = v45;
                        }

                        v51 = v46 - 1;
                        if ((v27 & 0xFFFFFFDF) == 0x4D && v46 == 1)
                        {
                          CGPathMoveToPoint(Mutable, 0, x, y);
                        }

                        else
                        {
                          CGPathAddLineToPoint(Mutable, 0, x, y);
                        }

                        v43 = v46 + 1;
                      }

                      while ((v51 + 2) < v44);
                      v14 = v156;
                    }
                  }
                }

                goto LABEL_21;
              }

              if (v27 == 65)
              {
                goto LABEL_87;
              }

              if (v27 != 67)
              {
                if (v27 != 72)
                {
                  goto LABEL_19;
                }

LABEL_39:
                v30 = CFRetained::getObject<SVGPathCommand>(v25, v10);
                if (v30 && (v31 = v30[7]) != 0 && (v32 = *(v30[7] + 8) - *v31) != 0)
                {
                  v33 = 0;
                  v34 = v27 & 0xFFFFFFDF;
                  v35 = v32 >> 3;
                  do
                  {
                    v36 = CGSVGPathCommandGetFloatAtIndex(v25, v33);
                    if ((((v27 - 97) < 0x16) & (0x2D1885u >> (v27 - 97))) != 0)
                    {
                      v37 = y + v36;
                      v38 = x + v36;
                      if (v34 == 72)
                      {
                        x = v38;
                      }

                      else
                      {
                        y = v37;
                      }
                    }

                    else if (v34 == 72)
                    {
                      x = v36;
                    }

                    else
                    {
                      y = v36;
                    }

                    CGPathAddLineToPoint(Mutable, 0, x, y);
                    ++v33;
                  }

                  while (v35 != v33);
                  v14 = v156;
                }

                else
                {
                  v14 = v156;
                }

                goto LABEL_21;
              }

LABEL_83:
              v55 = CFRetained::getObject<SVGPathCommand>(v25, v10);
              if (v55)
              {
                v56 = v55[7];
                if (v56)
                {
                  v58 = *v56;
                  v57 = *(v55[7] + 8);
                  v59 = (v57 - v58) >> 3;
                  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v59, 1) > 0x2AAAAAAAAAAAAAAAuLL)
                  {
                    v28 = "C/c command was given the wrong number of points.";
                    goto LABEL_20;
                  }

                  if (v57 != v58)
                  {
                    v94 = 0;
                    do
                    {
                      v95 = CGSVGPathCommandGetFloatAtIndex(v25, v94);
                      v96 = CGSVGPathCommandGetFloatAtIndex(v25, v94 + 1);
                      v6 = CGSVGPathCommandGetFloatAtIndex(v25, v94 + 2);
                      v7 = CGSVGPathCommandGetFloatAtIndex(v25, v94 + 3);
                      v97 = CGSVGPathCommandGetFloatAtIndex(v25, v94 + 4);
                      v98 = v94 + 5;
                      v99 = CGSVGPathCommandGetFloatAtIndex(v25, v98);
                      if ((v27 - 97) > 0x15)
                      {
                        x = v97;
                        y = v99;
                      }

                      else
                      {
                        v100 = 1 << (v27 - 97);
                        if ((v100 & 0x2D1885) != 0)
                        {
                          v95 = x + v95;
                          v96 = y + v96;
                          v6 = x + v6;
                          v7 = y + v7;
                          x = x + v97;
                        }

                        else
                        {
                          x = v97;
                        }

                        if ((v100 & 0x2D1885) != 0)
                        {
                          y = y + v99;
                        }

                        else
                        {
                          y = v99;
                        }
                      }

                      CGPathAddCurveToPoint(Mutable, 0, v95, v96, v6, v7, x, y);
                      v94 = v98 + 1;
                    }

                    while (v94 < v59);
                  }
                }
              }

              goto LABEL_21;
            }

            if (v27 > 83)
            {
              if (v27 == 84)
              {
                goto LABEL_91;
              }

              if (v27 != 86)
              {
                if (v27 == 90)
                {
LABEL_38:
                  CGPathCloseSubpath(Mutable);
                  CurrentPoint = CGPathGetCurrentPoint(Mutable);
                  x = CurrentPoint.x;
                  y = CurrentPoint.y;
                  v7 = CurrentPoint.y;
                  v6 = CurrentPoint.x;
                  goto LABEL_21;
                }

LABEL_19:
                v148 = v27;
                v28 = "Unhandled operator '%c'";
LABEL_20:
                SVGUtilities::log(v28, v10, v148);
                goto LABEL_21;
              }

              goto LABEL_39;
            }

            if (v27 == 81)
            {
LABEL_107:
              v76 = CFRetained::getObject<SVGPathCommand>(v25, v10);
              if (v76)
              {
                v77 = v76[7];
                if (v77)
                {
                  v79 = *v77;
                  v78 = v77[1];
                  v80 = v78 - *v77;
                  if ((v80 & 0x18) != 0)
                  {
                    v28 = "Q/q command was given the wrong number of points.";
                    goto LABEL_20;
                  }

                  if (v78 != v79)
                  {
                    v142 = 0;
                    v143 = v80 >> 3;
                    do
                    {
                      v6 = CGSVGPathCommandGetFloatAtIndex(v25, v142);
                      v7 = CGSVGPathCommandGetFloatAtIndex(v25, v142 + 1);
                      v144 = CGSVGPathCommandGetFloatAtIndex(v25, v142 + 2);
                      v145 = v142 + 3;
                      v146 = CGSVGPathCommandGetFloatAtIndex(v25, v145);
                      if (v27 == 113)
                      {
                        v6 = x + v6;
                        v7 = y + v7;
                        x = x + v144;
                      }

                      else
                      {
                        x = v144;
                      }

                      if (v27 == 113)
                      {
                        y = y + v146;
                      }

                      else
                      {
                        y = v146;
                      }

                      CGPathAddQuadCurveToPoint(Mutable, 0, v6, v7, x, y);
                      v142 = v145 + 1;
                    }

                    while (v142 < v143);
                  }
                }
              }

              goto LABEL_21;
            }

            if (v27 != 83)
            {
              goto LABEL_19;
            }
          }

          v52 = CFRetained::getObject<SVGPathCommand>(v25, v10);
          if (v52 && (v53 = v52[7]) != 0)
          {
            v54 = v53[1] - *v53;
            if ((v54 & 0x18) != 0)
            {
              v28 = "S/s command was given the wrong number of points.";
              goto LABEL_20;
            }

            v81 = v54 >> 3;
          }

          else
          {
            v81 = 0;
          }

          HIDWORD(v82) = v12 - 67;
          LODWORD(v82) = v12 - 67;
          if ((v82 >> 4) >= 4)
          {
            v7 = y;
            v6 = x;
          }

          if (v81)
          {
            for (i = 0; i < v81; i = v87 + 1)
            {
              v84 = x + x - v6;
              v85 = y + y - v7;
              v6 = CGSVGPathCommandGetFloatAtIndex(v25, i);
              v7 = CGSVGPathCommandGetFloatAtIndex(v25, i + 1);
              v86 = CGSVGPathCommandGetFloatAtIndex(v25, i + 2);
              v87 = i + 3;
              v88 = CGSVGPathCommandGetFloatAtIndex(v25, v87);
              v89 = v27 - 97;
              v90 = x + v6;
              v91 = y + v7;
              v92 = x + v86;
              v93 = y + v88;
              if (((1 << (v27 - 97)) & 0x2D1885) == 0)
              {
                v90 = v6;
                v91 = v7;
                v92 = v86;
                v93 = v88;
              }

              if (v89 > 0x15)
              {
                x = v86;
              }

              else
              {
                v6 = v90;
                v7 = v91;
                x = v92;
              }

              if (v89 <= 0x15)
              {
                y = v93;
              }

              else
              {
                y = v88;
              }

              CGPathAddCurveToPoint(Mutable, 0, v84, v85, v6, v7, x, y);
            }
          }

LABEL_21:
          ++v13;
          v12 = v27;
        }

        while (v13 != v14);
      }
    }

    SVGPath::setCGPath(v151, Mutable);
  }

  return Mutable;
}
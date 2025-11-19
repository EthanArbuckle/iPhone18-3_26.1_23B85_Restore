@interface _OTSVGParserDelegate
- (_OTSVGParserDelegate)initWithUnitsPerEm:(unsigned int)a3;
- (id).cxx_construct;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didEndMappingPrefix:(id)a4;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 didStartMappingPrefix:(id)a4 toURI:(id)a5;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parser:(id)a3 validationErrorOccurred:(id)a4;
@end

@implementation _OTSVGParserDelegate

- (_OTSVGParserDelegate)initWithUnitsPerEm:(unsigned int)a3
{
  v3 = *&a3;
  v14.receiver = self;
  v14.super_class = _OTSVGParserDelegate;
  v4 = [(_OTSVGParserDelegate *)&v14 init];
  v5 = v4;
  if (v4)
  {
    [(_OTSVGParserDelegate *)v4 setErrorOccurred:0];
    [(_OTSVGParserDelegate *)v5 setSkipDepth:0];
    [(_OTSVGParserDelegate *)v5 setUnitsPerEm:v3];
    [(_OTSVGParserDelegate *)v5 setRoot:0];
    __p = 0;
    v12 = 0;
    v13 = 0;
    [(_OTSVGParserDelegate *)v5 setStack:&__p];
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    *v8 = 0u;
    v9 = 0u;
    v10 = 1065353216;
    [(_OTSVGParserDelegate *)v5 setNamespaces:v8];
    std::__hash_table<std::__hash_value_type<std::string,std::stack<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::stack<std::string>>>>::__deallocate_node(v9);
    v6 = v8[0];
    v8[0] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  return v5;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v86 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(_OTSVGParserDelegate *)self skipDepth])
  {
    [(_OTSVGParserDelegate *)self setSkipDepth:[(_OTSVGParserDelegate *)self skipDepth]+ 1];
    goto LABEL_17;
  }

  memset(&__p, 170, sizeof(__p));
  SVG::convertString(&__p, v14);
  v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || __p.__r_.__value_.__l.__size_ != 26 || (*__p.__r_.__value_.__l.__data_ == *"http://www.w3.org/2000/svg" ? (v18 = *(__p.__r_.__value_.__r.__words[0] + 8) == *"ww.w3.org/2000/svg") : (v18 = 0), v18 ? (v19 = *(__p.__r_.__value_.__r.__words[0] + 16) == *"g/2000/svg") : (v19 = 0), v19 ? (v20 = *(__p.__r_.__value_.__r.__words[0] + 24) == *"vg") : (v20 = 0), !v20))
  {
    [(_OTSVGParserDelegate *)self setSkipDepth:1];
    if (v17 < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v63 = v15;
  v64 = v14;
  v65 = v12;
  v66 = v13;
  [(_OTSVGParserDelegate *)self namespaces];
  v61 = v16;
  v21 = v16;
  *v72 = 0u;
  *v73 = 0u;
  v74 = 0xAAAAAAAA3F800000;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v68 = [v21 countByEnumeratingWithState:&v79 objects:&v84 count:16];
  if (!v68)
  {
    goto LABEL_92;
  }

  v67 = *v80;
  do
  {
    for (i = 0; i != v68; ++i)
    {
      if (*v80 != v67)
      {
        objc_enumerationMutation(v21);
      }

      v23 = *(*(&v79 + 1) + 8 * i);
      memset(v78, 0, sizeof(v78));
      SVG::convertString(&v77, v23);
      if (SHIBYTE(v78[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78[1].__r_.__value_.__l.__data_);
      }

      v78[1] = v77;
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v78[1].__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v78[1].__r_.__value_.__l.__size_;
      }

      if (!size || ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (data = &v78[1]) : (data = v78[1].__r_.__value_.__l.__data_), (v26 = memchr(data, 58, size), v27 = v26 - data, v26) ? (v28 = v27 == -1) : (v28 = 1), v28))
      {
        std::string::operator=(v78, &__p);
      }

      else
      {
        memset(&v77, 170, sizeof(v77));
        std::string::basic_string(&v77, &v78[1], 0, v27, &v76);
        std::string::basic_string(&v76, &v78[1], v27 + 1, 0xFFFFFFFFFFFFFFFFLL, &v83);
        if (SHIBYTE(v78[1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78[1].__r_.__value_.__l.__data_);
        }

        v78[1] = v76;
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v77;
        }

        else
        {
          v29 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v77.__r_.__value_.__l.__size_;
        }

        v31 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v76, v29, v30);
        v32 = v70;
        if (!*&v70)
        {
          goto LABEL_64;
        }

        v33 = v31;
        v34 = vcnt_s8(v70);
        v34.i16[0] = vaddlv_u8(v34);
        v35 = v34.u32[0];
        if (v34.u32[0] > 1uLL)
        {
          v36 = v31;
          if (v31 >= *&v70)
          {
            v36 = v31 % *&v70;
          }
        }

        else
        {
          v36 = (*&v70 - 1) & v31;
        }

        v37 = *(v69 + v36);
        if (v37)
        {
          v38 = v21;
          for (j = *v37; j; j = *j)
          {
            v40 = j[1];
            if (v33 == v40)
            {
              if (std::equal_to<std::string>::operator()[abi:nn200100](&v69, j + 2, &v77.__r_.__value_.__l.__data_))
              {
                v51 = j[9] + j[10] - 1;
                p_p = (*(j[6] + v51 / 0xAA) + 24 * (v51 % 0xAA));
                goto LABEL_63;
              }
            }

            else
            {
              if (v35 > 1)
              {
                if (v40 >= *&v32)
                {
                  v40 %= *&v32;
                }
              }

              else
              {
                v40 &= *&v32 - 1;
              }

              if (v40 != v36)
              {
                break;
              }
            }
          }

          p_p = &__p;
LABEL_63:
          v21 = v38;
        }

        else
        {
LABEL_64:
          p_p = &__p;
        }

        std::string::operator=(v78, p_p);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }
      }

      memset(&v77, 170, sizeof(v77));
      v41 = [v21 objectForKeyedSubscript:{v23, v61}];
      SVG::convertString(&v77, v41);

      v42 = SVG::QualifiedNameHash::operator()(v72, v78);
      v43 = v42;
      v44 = v72[1];
      if (!v72[1])
      {
        goto LABEL_83;
      }

      v45 = vcnt_s8(v72[1]);
      v45.i16[0] = vaddlv_u8(v45);
      v46 = v45.u32[0];
      if (v45.u32[0] > 1uLL)
      {
        v47 = v42;
        if (v42 >= v72[1])
        {
          v47 = v42 % v72[1];
        }
      }

      else
      {
        v47 = (v72[1] - 1) & v42;
      }

      v48 = *(v72[0] + v47);
      if (!v48 || (v49 = *v48) == 0)
      {
LABEL_83:
        operator new();
      }

      while (1)
      {
        v50 = v49[1];
        if (v50 == v43)
        {
          break;
        }

        if (v46 > 1)
        {
          if (v50 >= v44)
          {
            v50 %= v44;
          }
        }

        else
        {
          v50 &= v44 - 1;
        }

        if (v50 != v47)
        {
          goto LABEL_83;
        }

LABEL_82:
        v49 = *v49;
        if (!v49)
        {
          goto LABEL_83;
        }
      }

      if (!SVG::QualifiedNamePredicate::operator()(v72, (v49 + 2), v78))
      {
        goto LABEL_82;
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78[0].__r_.__value_.__l.__data_);
      }
    }

    v68 = [v21 countByEnumeratingWithState:&v79 objects:&v84 count:16];
  }

  while (v68);
LABEL_92:

  std::__hash_table<std::__hash_value_type<std::string,std::stack<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::stack<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::stack<std::string>>>>::__deallocate_node(v71);
  v53 = v69;
  v69 = 0;
  if (v53)
  {
    operator delete(v53);
  }

  v13 = v66;
  v54 = [v66 isEqualToString:{@"svg", v61}];
  v55 = *[(_OTSVGParserDelegate *)self root];
  v12 = v65;
  if (v54)
  {
    if (!v55)
    {
      [(_OTSVGParserDelegate *)self unitsPerEm];
      operator new();
    }

    [(_OTSVGParserDelegate *)self setSkipDepth:1];
    goto LABEL_97;
  }

  v15 = v63;
  v14 = v64;
  v16 = v62;
  if (!v55)
  {
    goto LABEL_104;
  }

  [(_OTSVGParserDelegate *)self stack];
  v56 = v84;
  v57 = v85;
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v56 == v57)
  {
LABEL_104:
    [(_OTSVGParserDelegate *)self setErrorOccurred:1];
    [v65 abortParsing];
  }

  else
  {
    if ([v66 isEqualToString:@"g"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"defs"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"use"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"image"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"path"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"rect"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"circle"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"ellipse"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"line"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"polyline"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"polygon"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"linearGradient"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"radialGradient"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"stop"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"pattern"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"clipPath"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    if ([v66 isEqualToString:@"mask"])
    {
      [(_OTSVGParserDelegate *)self stack];
      operator new();
    }

    [(_OTSVGParserDelegate *)self setSkipDepth:1];
    v12 = v65;
    v13 = v66;
LABEL_97:
    v15 = v63;
    v14 = v64;
    v16 = v62;
  }

  v58 = v73[0];
  if (v73[0])
  {
    do
    {
      v59 = *v58;
      if (*(v58 + 87) < 0)
      {
        operator delete(v58[8]);
      }

      if (*(v58 + 63) < 0)
      {
        operator delete(v58[5]);
      }

      if (*(v58 + 39) < 0)
      {
        operator delete(v58[2]);
      }

      operator delete(v58);
      v58 = v59;
    }

    while (v59);
  }

  v60 = v72[0];
  v72[0] = 0;
  if (v60)
  {
    operator delete(v60);
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_16:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_17:
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  if ([(_OTSVGParserDelegate *)self skipDepth:a3])
  {
    v7 = [(_OTSVGParserDelegate *)self skipDepth]- 1;

    [(_OTSVGParserDelegate *)self setSkipDepth:v7];
  }

  else
  {
    self->stack.__end_ = self->stack.__end_ - 8;
  }
}

- (void)parser:(id)a3 didStartMappingPrefix:(id)a4 toURI:(id)a5
{
  p_namespaces = &self->namespaces;
  v9 = a5;
  v10 = a4;
  v33 = a3;
  SVG::convertString(__p, v10);
  v35 = 0u;
  memset(v34, 0, sizeof(v34));
  if ((v37 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v12 = v37;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v38, v11, v12);
  v14 = v13;
  size = self->namespaces.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_24;
  }

  v16 = vcnt_s8(size);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v13;
    if (v13 >= size)
    {
      v18 = v13 % size;
    }
  }

  else
  {
    v18 = (size - 1) & v13;
  }

  v19 = p_namespaces->__table_.__bucket_list_.__ptr_[v18];
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v14)
    {
      break;
    }

    if (v17 > 1)
    {
      if (v21 >= size)
      {
        v21 %= size;
      }
    }

    else
    {
      v21 &= size - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_24;
    }

LABEL_23:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](p_namespaces, v20 + 2, __p))
  {
    goto LABEL_23;
  }

  std::deque<std::string>::~deque[abi:nn200100](v34);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  SVG::convertString(&v38, v9);
  v22 = v20[7];
  v23 = v20[6];
  v24 = v22 - v23;
  if (v22 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = 170 * ((v22 - v23) >> 3) - 1;
  }

  v26 = v20[9];
  v27 = v20[10] + v26;
  if (v25 == v27)
  {
    if (v26 < 0xAA)
    {
      v28 = v20[8];
      v29 = v20[5];
      if (v24 < v28 - v29)
      {
        if (v28 != v22)
        {
          operator new();
        }

        operator new();
      }

      if (v28 == v29)
      {
        v32 = 1;
      }

      else
      {
        v32 = (v28 - v29) >> 2;
      }

      *&v35 = v20 + 5;
      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::Recorder::State *>>(v32);
    }

    v20[9] = (v26 - 170);
    *&v34[0] = *v23;
    v20[6] = v23 + 8;
    std::__split_buffer<SVG::Recorder::State *>::emplace_back<SVG::Recorder::State *&>(v20 + 5, v34);
    v30 = v33;
    v23 = v20[6];
    v27 = v20[9] + v20[10];
  }

  else
  {
    v30 = v33;
  }

  v31 = *&v23[8 * (v27 / 0xAA)] + 24 * (v27 % 0xAA);
  *v31 = v38;
  *(v31 + 16) = v39;
  v20[10] = v20[10] + 1;
}

- (void)parser:(id)a3 didEndMappingPrefix:(id)a4
{
  p_namespaces = &self->namespaces;
  v7 = a4;
  v8 = a3;
  SVG::convertString(&__p, v7);
  if ((v35[1] & 0x800000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v35[1] & 0x800000) == 0)
  {
    v10 = BYTE2(v35[1]);
  }

  else
  {
    v10 = v33;
  }

  v11 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v36, p_p, v10);
  size = self->namespaces.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_24;
  }

  v13 = v11;
  v14 = vcnt_s8(size);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v11;
    if (v11 >= size)
    {
      v16 = v11 % size;
    }
  }

  else
  {
    v16 = (size - 1) & v11;
  }

  v17 = p_namespaces->__table_.__bucket_list_.__ptr_[v16];
  if (v17)
  {
    v18 = *v17;
    if (*v17)
    {
      do
      {
        v19 = v18[1];
        if (v19 == v13)
        {
          if (std::equal_to<std::string>::operator()[abi:nn200100](p_namespaces, v18 + 2, &__p))
          {
            break;
          }
        }

        else
        {
          if (v15 > 1)
          {
            if (v19 >= size)
            {
              v19 %= size;
            }
          }

          else
          {
            v19 &= size - 1;
          }

          if (v19 != v16)
          {
            goto LABEL_24;
          }
        }

        v18 = *v18;
      }

      while (v18);
    }
  }

  else
  {
LABEL_24:
    v18 = 0;
  }

  if (SBYTE2(v35[1]) < 0)
  {
    operator delete(__p);
  }

  v20 = v18[10] - 1;
  v21 = *(v18[6] + (v18[9] + v20) / 0xAA) + 24 * ((v18[9] + v20) % 0xAA);
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
    v20 = v18[10] - 1;
  }

  v18[10] = v20;
  std::deque<std::string>::__maybe_remove_back_spare[abi:nn200100](v18 + 5);
  v22 = v18[10];

  if (!v22)
  {
    v23 = self->namespaces.__table_.__bucket_list_.__deleter_.__size_;
    v24 = v18[1];
    v25 = vcnt_s8(v23);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      if (v24 >= v23)
      {
        v24 %= v23;
      }
    }

    else
    {
      v24 &= v23 - 1;
    }

    v26 = p_namespaces->__table_.__bucket_list_.__ptr_[v24];
    do
    {
      v27 = v26;
      v26 = v26->__next_;
    }

    while (v26 != v18);
    if (v27 == &self->namespaces.__table_.__first_node_)
    {
      goto LABEL_47;
    }

    next = v27[1].__next_;
    if (v25.u32[0] > 1uLL)
    {
      if (next >= v23)
      {
        next %= v23;
      }
    }

    else
    {
      next &= v23 - 1;
    }

    if (next != v24)
    {
LABEL_47:
      if (!*v18)
      {
        goto LABEL_48;
      }

      v29 = *(*v18 + 1);
      if (v25.u32[0] > 1uLL)
      {
        if (v29 >= v23)
        {
          v29 %= v23;
        }
      }

      else
      {
        v29 &= v23 - 1;
      }

      if (v29 != v24)
      {
LABEL_48:
        p_namespaces->__table_.__bucket_list_.__ptr_[v24] = 0;
      }
    }

    v30 = *v18;
    if (*v18)
    {
      v31 = v30[1];
      if (v25.u32[0] > 1uLL)
      {
        if (v31 >= v23)
        {
          v31 %= v23;
        }
      }

      else
      {
        v31 &= v23 - 1;
      }

      if (v31 != v24)
      {
        p_namespaces->__table_.__bucket_list_.__ptr_[v31] = v27;
        v30 = *v18;
      }
    }

    v27->__next_ = v30;
    *v18 = 0;
    --self->namespaces.__table_.__size_;
    __p = v18;
    v33 = p_namespaces;
    v34 = 1;
    memset(v35, 0, 7);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::stack<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::stack<std::string>>,void *>>>>::~unique_ptr[abi:nn200100](&__p);
  }
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v5 = a3;
  if (![(_OTSVGParserDelegate *)self errorOccurred])
  {
    [(_OTSVGParserDelegate *)self setErrorOccurred:1];
    [v5 abortParsing];
  }
}

- (void)parser:(id)a3 validationErrorOccurred:(id)a4
{
  v5 = a3;
  if (![(_OTSVGParserDelegate *)self errorOccurred])
  {
    [(_OTSVGParserDelegate *)self setErrorOccurred:1];
    [v5 abortParsing];
  }
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end
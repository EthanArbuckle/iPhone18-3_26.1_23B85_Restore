void sub_25A34FE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a9);
  std::__function::__value_func<void ()(mlx::core::array const&)>::~__value_func[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void mlx::core::print_graph()
{
  v2[4] = *MEMORY[0x277D85DE8];
  memset(v1, 0, sizeof(v1));
  memset(v0, 0, sizeof(v0));
  v2[0] = &unk_286BF1F48;
  v2[1] = v1;
  v2[2] = v0;
  v2[3] = v2;
  mlx::core::depth_first_traversal();
}

void sub_25A350144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void ***a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, char a26)
{
  *(v27 - 128) = v26;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v27 - 128));
  a21 = &a23;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a21);
  a23 = &a26;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

mlx::core::NodeNamer **mlx::core::print_graph(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_1::operator()(mlx::core::NodeNamer **result, const mlx::core::array **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = result;
    do
    {
      v6 = v5[1];
      name = mlx::core::NodeNamer::get_name(*v5, v2);
      v8 = *(name + 23);
      if (v8 >= 0)
      {
        v9 = name;
      }

      else
      {
        v9 = *name;
      }

      if (v8 >= 0)
      {
        v10 = *(name + 23);
      }

      else
      {
        v10 = name[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v9, v10);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5[1], " [", 2);
      v12 = mlx::core::operator<<(v11, *v2);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", ", 2);
      v14 = *(*v2 + 56);
      LODWORD(v16) = v14;
      BYTE4(v16) = BYTE4(v14);
      v15 = mlx::core::operator<<(v13, &v16);
      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "]", 1);
      if (v2 != (a2[1] - 16))
      {
        result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5[1], ", ", 2);
      }

      v2 = (v2 + 16);
    }

    while (v2 != v3);
  }

  return result;
}

void mlx::core::export_to_dot()
{
  v2[4] = *MEMORY[0x277D85DE8];
  memset(v0, 0, sizeof(v0));
  v1 = 1065353216;
  v2[0] = &unk_286BF1FD8;
  v2[1] = v0;
  v2[3] = v2;
  mlx::core::depth_first_traversal();
}

void sub_25A350488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::__function::__value_func<void ()(mlx::core::array)>::~__value_func[abi:ne200100](&a16);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<char *>>,std::reverse_iterator<std::__wrap_iter<char *>>>(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (a6 > 0x16)
  {
    operator new();
  }

  result[23] = a6;
  while (a3 != a5)
  {
    v8 = *--a3;
    *v7++ = v8;
  }

  *v7 = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::string>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

__n128 std::__function::__func<mlx::core::depth_first_traversal(std::function<void ()(mlx::core::array)>,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::depth_first_traversal(std::function<void ()(mlx::core::array)>,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1EC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlx::core::depth_first_traversal(std::function<void ()(mlx::core::array)>,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::depth_first_traversal(std::function<void ()(mlx::core::array)>,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array const&)>::operator()(uint64_t a1, unint64_t *a2)
{
  v16 = *a2;
  if (!std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(*(a1 + 8), &v16))
  {
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(*(a1 + 8), &v16);
    v4 = *a2;
    v5 = *(*a2 + 200);
    v6 = *(*a2 + 208);
    if (v5 != v6)
    {
      do
      {
        v7 = *(a1 + 8);
        v8 = *v5;
        v5 += 2;
        v15[0] = v8;
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v7, v15);
      }

      while (v5 != v6);
      v4 = *a2;
    }

    v9 = *(v4 + 176);
    v10 = *(v4 + 184);
    if (v9 != v10)
    {
      do
      {
        v11 = *(*(a1 + 16) + 24);
        if (!v11)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v11 + 48))(v11, v9);
        v9 += 16;
      }

      while (v9 != v10);
      v4 = *a2;
    }

    v12 = *(a1 + 24);
    v13 = a2[1];
    v15[0] = v4;
    v15[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v12 + 24);
    if (!v14)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v14 + 48))(v14, v15);
    mlx::core::array::~array(v15);
  }
}

void sub_25A350C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::depth_first_traversal(std::function<void ()(mlx::core::array)>,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::depth_first_traversal(std::function<void ()(mlx::core::array)>,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlx::core::print_graph(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::print_graph(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1F48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlx::core::print_graph(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::print_graph(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(mlx::core::array)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BF1FD8;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array)>::operator()(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 64))
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    if (v3 != v4)
    {
      v5 = result;
      do
      {
        v6 = v5[1];
        v7 = *v3;
        v3 += 2;
        v8 = v7;
        result = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v6, &v8);
      }

      while (v3 != v4);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_1,std::allocator<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_1>,void ()(mlx::core::array)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF2058;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_1,std::allocator<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_1>,void ()(mlx::core::array)>::operator()(uint64_t a1, mlx::core::array *a2)
{
  v4 = *(a1 + 8);
  if (*(*a2 + 64))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "{ ", 2);
    MEMORY[0x25F851380](*(a1 + 8), *(*a2 + 64));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), " [label =", 10);
    (*(**(*a2 + 64) + 40))(*(*a2 + 64), *(a1 + 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), ", shape=rectangle]", 19);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), "; }", 3);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(&v49, MEMORY[0x277D82680]);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
    v7 = *(*a2 + 176);
    v8 = *(*a2 + 184);
    if (v7 != v8)
    {
      v9 = MEMORY[0x277D82680];
      do
      {
        v10 = *(a1 + 8);
        LOBYTE(v49.__locale_) = 34;
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v49, 1);
        name = mlx::core::NodeNamer::get_name(*(a1 + 16), v7);
        v13 = *(name + 23);
        if (v13 >= 0)
        {
          v14 = name;
        }

        else
        {
          v14 = *name;
        }

        if (v13 >= 0)
        {
          v15 = *(name + 23);
        }

        else
        {
          v15 = name[1];
        }

        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v14, v15);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " -> ", 5);
        v18 = MEMORY[0x25F851380](v17, *(*a2 + 64));
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v19 = std::locale::use_facet(&v49, v9);
        (v19->__vftable[2].~facet_0)(v19, 10);
        std::locale::~locale(&v49);
        std::ostream::put();
        std::ostream::flush();
        v7 = (v7 + 16);
      }

      while (v7 != v8);
    }

    mlx::core::array::outputs(a2, &v49);
    locale = v49.__locale_;
    v21 = v50;
    if (v49.__locale_ != v50)
    {
      v22 = MEMORY[0x277D82680];
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), "{ ", 2);
        v23 = *(a1 + 24);
        v51.__locale_ = *locale;
        if (!std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v23, &v51))
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), "rank=sink; ", 11);
        }

        v24 = *(a1 + 8);
        LOBYTE(v51.__locale_) = 34;
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, &v51, 1);
        v26 = mlx::core::NodeNamer::get_name(*(a1 + 16), locale);
        v27 = *(v26 + 23);
        if (v27 >= 0)
        {
          v28 = v26;
        }

        else
        {
          v28 = *v26;
        }

        if (v27 >= 0)
        {
          v29 = *(v26 + 23);
        }

        else
        {
          v29 = v26[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v28, v29);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), "; }", 4);
        std::ios_base::getloc((v30 + *(*v30 - 24)));
        v31 = std::locale::use_facet(&v51, v22);
        (v31->__vftable[2].~facet_0)(v31, 10);
        std::locale::~locale(&v51);
        std::ostream::put();
        std::ostream::flush();
        if (*(*a2 + 64))
        {
          v32 = MEMORY[0x25F851380](*(a1 + 8));
          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " -> ", 5);
          v34 = mlx::core::NodeNamer::get_name(*(a1 + 16), locale);
          v35 = *(v34 + 23);
          if (v35 >= 0)
          {
            v36 = v34;
          }

          else
          {
            v36 = *v34;
          }

          if (v35 >= 0)
          {
            v37 = *(v34 + 23);
          }

          else
          {
            v37 = v34[1];
          }

          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v36, v37);
          LOBYTE(v51.__locale_) = 34;
          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, &v51, 1);
          std::ios_base::getloc((v39 + *(*v39 - 24)));
          v40 = std::locale::use_facet(&v51, v22);
          (v40->__vftable[2].~facet_0)(v40, 10);
          std::locale::~locale(&v51);
          std::ostream::put();
          std::ostream::flush();
        }

        locale += 2;
      }

      while (locale != v21);
    }

    v51.__locale_ = &v49;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v51);
  }

  else
  {
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "{ rank=source; ", 16);
    v42 = mlx::core::NodeNamer::get_name(*(a1 + 16), a2);
    v43 = *(v42 + 23);
    if (v43 >= 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = *v42;
    }

    if (v43 >= 0)
    {
      v45 = *(v42 + 23);
    }

    else
    {
      v45 = v42[1];
    }

    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v44, v45);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "; }", 4);
    std::ios_base::getloc((v47 + *(*v47 - 24)));
    v48 = std::locale::use_facet(&v49, MEMORY[0x277D82680]);
    (v48->__vftable[2].~facet_0)(v48, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
  }
}

uint64_t std::__function::__func<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_1,std::allocator<mlx::core::export_to_dot(std::ostream &,mlx::core::NodeNamer,std::vector<mlx::core::array> const&)::$_1>,void ()(mlx::core::array)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::default_stream(mlx::core::metal *a1)
{
  v5 = a1;
  is_available = mlx::core::metal::is_available(a1);
  if ((is_available & 1) == 0)
  {
    v4 = 1;
    is_available = mlx::core::operator==(&v5, &v4);
    if (is_available)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[default_stream] Cannot get gpu stream without gpu backend.");
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }
  }

  mlx::core::scheduler::scheduler(is_available);
  return mlx::core::scheduler::Scheduler::get_default_stream(&mlx::core::scheduler::scheduler(void)::scheduler, &v5);
}

void *mlx::core::scheduler::scheduler(mlx::core::scheduler *this)
{
  {
    mlx::core::scheduler::Scheduler::Scheduler(&mlx::core::scheduler::scheduler(void)::scheduler);
    __cxa_atexit(mlx::core::scheduler::Scheduler::~Scheduler, &mlx::core::scheduler::scheduler(void)::scheduler, &dword_25A232000);
  }

  return &mlx::core::scheduler::scheduler(void)::scheduler;
}

uint64_t mlx::core::scheduler::Scheduler::get_default_stream(uint64_t a1, int *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::find<int>((a1 + 56), a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v3 = *(v2 + 7);
  return *(v2 + 20);
}

uint64_t *mlx::core::set_default_stream(mlx::core::metal *a1, int a2)
{
  v6 = a1;
  v7 = a2;
  is_available = mlx::core::metal::is_available(a1);
  if ((is_available & 1) == 0)
  {
    v5 = 1;
    is_available = mlx::core::operator==(&v6 + 1, &v5);
    if (is_available)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[set_default_stream] Cannot set gpu stream without gpu backend.");
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }
  }

  mlx::core::scheduler::scheduler(is_available);
  return mlx::core::scheduler::Scheduler::set_default_stream(&mlx::core::scheduler::scheduler(void)::scheduler, &v6);
}

uint64_t *mlx::core::scheduler::Scheduler::set_default_stream(uint64_t a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::find<int>((a1 + 56), (a2 + 4));
  if (!result)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v4 = *a2;
  *(result + 7) = *(a2 + 8);
  *(result + 20) = v4;
  return result;
}

uint64_t mlx::core::get_stream(mlx::core *this)
{
  v1 = this;
  mlx::core::scheduler::scheduler(this);
  return mlx::core::scheduler::Scheduler::get_stream(&mlx::core::scheduler::scheduler(void)::scheduler, v1);
}

uint64_t mlx::core::scheduler::Scheduler::get_stream(mlx::core::scheduler::Scheduler *this, int a2)
{
  v2 = *(this + 4);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 5) - v2) >> 2) <= a2)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = v2 + 12 * a2;
  result = *v3;
  v5 = *(v3 + 8);
  return result;
}

uint64_t mlx::core::new_stream(mlx::core::metal *a1)
{
  v5 = a1;
  is_available = mlx::core::metal::is_available(a1);
  if ((is_available & 1) == 0)
  {
    v4 = 1;
    is_available = mlx::core::operator==(&v5, &v4);
    if (is_available)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[new_stream] Cannot make gpu stream without gpu backend.");
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }
  }

  mlx::core::scheduler::scheduler(is_available);
  return mlx::core::scheduler::Scheduler::new_stream(&mlx::core::scheduler::scheduler(void)::scheduler, &v5);
}

uint64_t mlx::core::scheduler::Scheduler::new_stream(void *a1, _DWORD *a2)
{
  v5 = a1[4];
  v6 = a1[5];
  v4 = (a1 + 4);
  v7 = *(v4 + 16);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2);
  if (v6 >= v7)
  {
    if (v8 + 1 > 0x1555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v5) >> 2);
    v12 = 2 * v11;
    if (2 * v11 <= v8 + 1)
    {
      v12 = v8 + 1;
    }

    if (v11 >= 0xAAAAAAAAAAAAAAALL)
    {
      v13 = 0x1555555555555555;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Stream>>(v4, v13);
    }

    v14 = 12 * v8;
    v15 = *a2;
    *v14 = v8;
    *(v14 + 4) = v15;
    v10 = 12 * v8 + 12;
    v16 = a1[4];
    v17 = a1[5] - v16;
    v18 = 12 * v8 - v17;
    memcpy((v14 - v17), v16, v17);
    v19 = a1[4];
    a1[4] = v18;
    a1[5] = v10;
    a1[6] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v9 = *a2;
    *v6 = v8;
    *(v6 + 4) = v9;
    v10 = v6 + 12;
  }

  a1[5] = v10;
  v23 = 1;
  if (!mlx::core::operator==(a2, &v23))
  {
    operator new();
  }

  v23 = 0;
  std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100]((a1 + 1), &v23);
  mlx::core::metal::new_stream(*(a1[5] - 12), *(a1[5] - 4));
  v20 = a1[5];
  result = *(v20 - 12);
  v22 = *(v20 - 4);
  return result;
}

uint64_t mlx::core::new_stream(mlx::core *this)
{
  v1 = mlx::core::scheduler::scheduler(this);
  v2 = mlx::core::default_device(v1);
  return mlx::core::scheduler::Scheduler::new_stream(&mlx::core::scheduler::scheduler(void)::scheduler, v2);
}

void mlx::core::synchronize(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = a2;
  v2 = 0;
  if (mlx::core::operator==(&v3 + 1, &v2))
  {
    _ZNSt3__115allocate_sharedB8ne200100INS_7promiseIvEENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  mlx::core::metal::synchronize();
}

void sub_25A351DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::future<void> a10, uint64_t a11, std::__shared_weak_count *a12)
{
  __cxa_free_exception(v14);
  std::mutex::unlock(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::future<void>::~future(&a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void mlx::core::synchronize(mlx::core *this)
{
  v1 = mlx::core::default_device(this);
  v2 = mlx::core::default_stream(*v1);

  mlx::core::synchronize(v2, v3);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Stream>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void mlx::core::scheduler::StreamThread::StreamThread(mlx::core::scheduler::StreamThread *this)
{
  *this = 850045863;
  *(this + 14) = 1018212795;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 145) = 0u;
  std::thread::thread<void (mlx::core::scheduler::StreamThread::*)(void),mlx::core::scheduler::StreamThread*,0>();
}

void sub_25A351F30(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v2);
  std::deque<std::function<void ()(void)>>::~deque[abi:ne200100](&v1[1].__m_.__sig);
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::scheduler::StreamThread::thread_fn(std::mutex *this)
{
  v8 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v7 = 0;
    __lk.__m_ = this;
    __lk.__owns_ = 1;
    std::mutex::lock(this);
    while (1)
    {
      if (*&this[1].__m_.__opaque[32])
      {
        std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v6, *(*this[1].__m_.__opaque + ((*&this[1].__m_.__opaque[24] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*&this[1].__m_.__opaque[24] & 0x7FLL));
        std::deque<std::function<void ()(void)>>::pop_front(&this[1]);
        v2 = 1;
        goto LABEL_7;
      }

      if (this[2].__m_.__opaque[24])
      {
        break;
      }

      std::condition_variable::wait(&this[1].__m_.__opaque[40], &__lk);
    }

    v2 = 0;
LABEL_7:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!v2)
    {
      break;
    }

    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v7 + 48))(v7);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A352080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A3521AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (mlx::core::scheduler::StreamThread::*)(void),mlx::core::scheduler::StreamThread*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  return 0;
}

void sub_25A35225C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

mlx::core::scheduler::Scheduler *mlx::core::scheduler::Scheduler::Scheduler(mlx::core::scheduler::Scheduler *this)
{
  *(this + 8) = 0u;
  *this = 0;
  *(this + 56) = 0u;
  v2 = (this + 56);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 12) = 1018212795;
  *(this + 22) = 1065353216;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 850045863;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
  if (mlx::core::metal::is_available(this))
  {
    v8 = 1;
    v3 = mlx::core::scheduler::Scheduler::new_stream(this, &v8);
    v9 = 1;
    v10 = v3;
    v11 = v4;
    std::__hash_table<std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>,std::__unordered_map_hasher<mlx::core::Device::DeviceType,std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>,std::hash<mlx::core::Device::DeviceType>,std::equal_to<mlx::core::Device::DeviceType>,true>,std::__unordered_map_equal<mlx::core::Device::DeviceType,std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>,std::equal_to<mlx::core::Device::DeviceType>,std::hash<mlx::core::Device::DeviceType>,true>,std::allocator<std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>>>::__emplace_unique_key_args<mlx::core::Device::DeviceType,std::pair<mlx::core::Device::DeviceType const,mlx::core::Stream>>(v2, &v9);
  }

  v8 = 0;
  v5 = mlx::core::scheduler::Scheduler::new_stream(this, &v8);
  v9 = 0;
  v10 = v5;
  v11 = v6;
  std::__hash_table<std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>,std::__unordered_map_hasher<mlx::core::Device::DeviceType,std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>,std::hash<mlx::core::Device::DeviceType>,std::equal_to<mlx::core::Device::DeviceType>,true>,std::__unordered_map_equal<mlx::core::Device::DeviceType,std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>,std::equal_to<mlx::core::Device::DeviceType>,std::hash<mlx::core::Device::DeviceType>,true>,std::allocator<std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>>>::__emplace_unique_key_args<mlx::core::Device::DeviceType,std::pair<mlx::core::Device::DeviceType const,mlx::core::Stream>>(v2, &v9);
  return this;
}

void sub_25A352380(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v4);
  std::condition_variable::~condition_variable(v3);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v2);
  v7 = v1[4];
  if (v7)
  {
    v1[5] = v7;
    operator delete(v7);
  }

  v8 = *v5;
  if (*v5)
  {
    v1[2] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>,std::__unordered_map_hasher<mlx::core::Device::DeviceType,std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>,std::hash<mlx::core::Device::DeviceType>,std::equal_to<mlx::core::Device::DeviceType>,true>,std::__unordered_map_equal<mlx::core::Device::DeviceType,std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>,std::equal_to<mlx::core::Device::DeviceType>,std::hash<mlx::core::Device::DeviceType>,true>,std::allocator<std::__hash_value_type<mlx::core::Device::DeviceType,mlx::core::Stream>>>::__emplace_unique_key_args<mlx::core::Device::DeviceType,std::pair<mlx::core::Device::DeviceType const,mlx::core::Stream>>(void *a1, int *a2)
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

void mlx::core::scheduler::Scheduler::~Scheduler(mlx::core::scheduler::Scheduler *this)
{
  v2 = *(this + 4);
  if (v2 != *(this + 5))
  {
    mlx::core::synchronize(*v2, *(v2 + 8));
  }

  v3 = *(this + 1);
  for (i = *(this + 2); v3 != i; ++v3)
  {
    if (*v3)
    {
      mlx::core::scheduler::StreamThread::~StreamThread(*v3);
      MEMORY[0x25F851760]();
    }
  }

  std::mutex::~mutex((this + 144));
  std::condition_variable::~condition_variable(this + 2);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(this + 56);
  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }
}

void mlx::core::scheduler::StreamThread::~StreamThread(mlx::core::scheduler::StreamThread *this)
{
  std::mutex::lock(this);
  *(this + 160) = 1;
  std::mutex::unlock(this);
  std::condition_variable::notify_one((this + 112));
  std::thread::join(this + 21);
  std::thread::~thread(this + 21);
  std::condition_variable::~condition_variable((this + 112));
  std::deque<std::function<void ()(void)>>::~deque[abi:ne200100](this + 8);

  std::mutex::~mutex(this);
}

std::promise<void> *_ZNSt3__120__shared_ptr_emplaceINS_7promiseIvEENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(std::promise<void> *a1)
{
  a1[1].__state_ = 0;
  a1[2].__state_ = 0;
  a1->__state_ = &unk_286BF20D8;
  std::promise<void>::promise(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<std::promise<void>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF20D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<mlx::core::synchronize(mlx::core::Stream)::$_0,std::allocator<mlx::core::synchronize(mlx::core::Stream)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF2128;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx::core::synchronize(mlx::core::Stream)::$_0,std::allocator<mlx::core::synchronize(mlx::core::Stream)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF2128;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::synchronize(mlx::core::Stream)::$_0,std::allocator<mlx::core::synchronize(mlx::core::Stream)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF2128;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<mlx::core::synchronize(mlx::core::Stream)::$_0,std::allocator<mlx::core::synchronize(mlx::core::Stream)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx::core::synchronize(mlx::core::Stream)::$_0,std::allocator<mlx::core::synchronize(mlx::core::Stream)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx::core::synchronize(mlx::core::Stream)::$_0,std::allocator<mlx::core::synchronize(mlx::core::Stream)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::fast::Custom::vjp(uint64_t a1, void *a2, void *a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](v5, a1 + 24);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100]<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>>>(v6, v5);
  mlx::core::vjp(v6, a2, a3);
}

void sub_25A352BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::fast::Custom::jvp(uint64_t a1, mlx::core *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v6 = *a2;
  if (*(a2 + 1) != *a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (v11 >= ((a4[1] - *a4) >> 2) || v10 != *(*a4 + 4 * v11))
      {
        mlx::core::zeros_like((v6 + v9), a2, v4);
      }

      std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(v13, (*a3 + 16 * v11++));
      ++v10;
      v6 = *a2;
      v9 += 16;
    }

    while (v10 < (*(a2 + 1) - *a2) >> 4);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](v14, a1 + 24);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100]<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>>>(v15, v14);
  mlx::core::jvp(v15, a2, v13);
}

void sub_25A352E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::~pair(&a11);
  a25 = &a17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

_OWORD *std::vector<mlx::core::array>::emplace_back<mlx::core::array>(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a1, v10);
    }

    v12 = 0;
    v13 = (16 * v7);
    v15 = 0;
    *v13 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v14 = 16 * v7 + 16;
    std::vector<mlx::core::array>::__swap_out_circular_buffer(a1, &v12);
    v6 = a1[1];
    std::__split_buffer<mlx::core::array>::~__split_buffer(&v12);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    *(a2 + 8) = 0;
    a1[1] = v6;
  }

  a1[1] = v6;
  return v6 - 1;
}

void sub_25A352FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void mlx::core::fast::Custom::vmap(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](v5, a1 + 24);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100]<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>>>(v6, v5);
  memset(__p, 0, sizeof(__p));
  mlx::core::vmap(v6, a3, __p, v7);
}

void sub_25A353118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v22 = *(v20 - 72);
  if (v22)
  {
    *(v20 - 64) = v22;
    operator delete(v22);
  }

  *(v20 - 72) = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 72));
  _Unwind_Resume(a1);
}

void mlx::core::fast::rms_norm(uint64_t **a1, uint64_t *a2, mlx::core *a3, uint64_t a4, float a5)
{
  v51[29] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v7 = **a1;
  v6 = (*a1)[1];
  v8 = v6 - v7;
  if (v6 != v7)
  {
    v14 = *(a2 + 16);
    if (*(a2 + 16))
    {
      v15 = *a2;
      if (*(*a2 + 8) - **a2 != 4)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v50);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "[rms_norm] (*weight) must have 1 dimension but has ", 51);
        v30 = MEMORY[0x25F851380](v29, (*(*a2 + 8) - **a2) >> 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " dimensions.", 12);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v50, &v49);
        std::logic_error::logic_error(exception, &v49);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      if (*(v15 + 48) != *(v7 + v8 - 4))
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v50);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "[rms_norm] (*weight) must have the same size as the last dimension of x but has ", 80);
        v33 = MEMORY[0x25F851380](v32, *(*a2 + 48));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " elements.", 10);
        v34 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v50, &v49);
        std::logic_error::logic_error(v34, &v49);
        v34->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v34, off_279921408, MEMORY[0x277D82610]);
      }

      v16 = v5[7];
      LODWORD(v50[0]) = v16;
      BYTE4(v50[0]) = BYTE4(v16);
      v17 = *(v15 + 56);
      LODWORD(v49.__r_.__value_.__l.__data_) = v17;
      v49.__r_.__value_.__s.__data_[4] = BYTE4(v17);
      v18 = mlx::core::promote_types(v50, &v49);
    }

    else
    {
      v18 = v5[7];
    }

    LODWORD(v48) = v18;
    BYTE4(v48) = BYTE4(v18);
    if (mlx::core::issubdtype(&v48, &mlx::core::floating))
    {
      v20 = mlx::core::to_stream(a3, a4);
      v46 = v20;
      v47 = v19;
      v40[0] = v14;
      v41 = a5;
      v42 = v48;
      v43 = BYTE4(v48);
      v44 = v20;
      v45 = v19;
      if (v14)
      {
        v21 = a2[1];
        v37[0] = *a2;
        v37[1] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
          v19 = v47;
        }

        mlx::core::astype(v37, v48, v20, v19 | 0x100000000, &v38);
        mlx::core::array::~array(v37);
        v50[0] = 1;
        if (mlx::core::operator==(&v46 + 1, v50))
        {
          v23 = *a1;
          memset(__p, 0, sizeof(__p));
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v23, v23[1], (v23[1] - *v23) >> 2);
          operator new();
        }

        v24 = a1[1];
        v50[0] = *a1;
        v50[1] = v24;
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
        }

        v50[2] = v38;
        v50[3] = v39;
        if (v39)
        {
          atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
        }

        memset(v35, 0, sizeof(v35));
        std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v35, v50, v51, 2uLL);
        mlx::core::fast::rms_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(v40, v35);
      }

      mlx::core::array::array<int>();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v50);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "[rms_norm] Received unsupported type ", 37);
    v27 = mlx::core::operator<<(v26, &v48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ".", 1);
    v28 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v50, &v49);
    std::logic_error::logic_error(v28, &v49);
    v28->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v28, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v50);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "[rms_norm] Input must have at least 1 dimension but got input with 0 dimensions.", 80);
  v25 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v50, &v49);
  std::logic_error::logic_error(v25, &v49);
  v25->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v25, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A353860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v41 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a40);
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v40);
  goto LABEL_6;
}

void mlx::core::fast::rms_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(uint64_t a1, uint64_t ***a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = (*a2)[1];
  v4[0] = **a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v4, 10, *(a1 + 16), *(a1 + 24) | 0x100000000, &v5);
  mlx::core::array::~array(v4);
  mlx::core::square(&v5, *(a1 + 16), *(a1 + 24) | 0x100000000);
}

void mlx::core::fast::RMSNorm::vjp(uint64_t a1, uint64_t ***a2, void *a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (a2[1] - *a2 == 32)
  {
    if (a5[1] - *a5 == 16)
    {
      if (a3[1] - *a3 == 16)
      {
        v14[6] = *(a1 + 8);
        v15 = *(a1 + 16);
        v7 = *(a1 + 88);
        v8 = *v5;
        memset(v20, 0, sizeof(v20));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v20, *v8, v8[1], (v8[1] - *v8) >> 2);
        v9 = (*a2)[2];
        memset(v21, 0, sizeof(v21));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v21, *v9, v9[1], (v9[1] - *v9) >> 2);
        memset(v14, 0, 24);
        std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(v14, v20, &v22, 2uLL);
        v10 = *a2;
        v11 = (**a2)[7];
        v16 = v11;
        v17 = BYTE4(v11);
        v12 = v10[2][7];
        v18 = v12;
        v19 = BYTE4(v12);
        memset(__p, 0, sizeof(__p));
        std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype const*,mlx::core::Dtype const*>(__p, &v16, v20, 2uLL);
        operator new();
      }

      mlx::core::fast::RMSNorm::vjp();
    }

    mlx::core::fast::RMSNorm::vjp();
  }

  mlx::core::fast::RMSNorm::vjp();
}

void sub_25A35403C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char *__p, char *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a26);
  for (i = 32; i != -16; i -= 16)
  {
    mlx::core::array::~array((&a27 + i));
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a18;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v30 = (v27 - 112);
  v31 = -48;
  while (1)
  {
    v32 = *(v30 - 1);
    if (v32)
    {
      *v30 = v32;
      operator delete(v32);
    }

    v30 -= 3;
    v31 += 24;
    if (!v31)
    {
      _Unwind_Resume(a1);
    }
  }
}

void mlx::core::fast::layer_norm(uint64_t **a1, uint64_t *a2, uint64_t a3, mlx::core *a4, uint64_t a5, float a6)
{
  v61[27] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if ((*a1)[1] == **a1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "[layer_norm] Input must have at least 1 dimension but got input with 0 dimensions.", 82);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v60, &v59);
    std::logic_error::logic_error(exception, &v59);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v13 = *(a2 + 16);
  v14 = *(a3 + 16);
  if (*(a2 + 16))
  {
    v15 = *a2;
    if (*(*a2 + 8) - **a2 != 4)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v60);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "[layer_norm] weight must have 1 dimension but has ", 50);
      v37 = MEMORY[0x25F851380](v36, (*(*a2 + 8) - **a2) >> 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " dimensions.", 12);
      v38 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v60, &v59);
      std::logic_error::logic_error(v38, &v59);
      v38->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v38, off_279921408, MEMORY[0x277D82610]);
    }

    if ((v14 & 1) == 0)
    {
      v23 = v6[7];
      LODWORD(v60[0]) = v23;
      BYTE4(v60[0]) = BYTE4(v23);
      v24 = *(v15 + 56);
      LODWORD(v59.__r_.__value_.__l.__data_) = v24;
      v59.__r_.__value_.__s.__data_[4] = BYTE4(v24);
      v20 = mlx::core::promote_types(v60, &v59);
      goto LABEL_11;
    }

    if (*(*a3 + 8) - **a3 == 4)
    {
      v16 = v6[7];
      LODWORD(v60[0]) = v16;
      BYTE4(v60[0]) = BYTE4(v16);
      v17 = *(v15 + 56);
      LODWORD(v59.__r_.__value_.__l.__data_) = v17;
      v59.__r_.__value_.__s.__data_[4] = BYTE4(v17);
      v18 = mlx::core::promote_types(v60, &v59);
      LODWORD(v60[0]) = v18;
      BYTE4(v60[0]) = BYTE4(v18);
      v19 = *(*a3 + 56);
      LODWORD(v59.__r_.__value_.__l.__data_) = v19;
      v59.__r_.__value_.__s.__data_[4] = BYTE4(v19);
      v20 = mlx::core::promote_types(v60, &v59);
LABEL_11:
      LODWORD(v58) = v20;
      v22 = HIDWORD(v20);
LABEL_12:
      BYTE4(v58) = v22;
      if (mlx::core::issubdtype(&v58, &mlx::core::floating))
      {
        v26 = mlx::core::to_stream(a4, a5);
        v56 = v26;
        v57 = v25;
        v50[0] = v13;
        v50[1] = v14;
        v51 = a6;
        v52 = v58;
        v53 = BYTE4(v58);
        v54 = v26;
        v55 = v25;
        if (v13)
        {
          v27 = a2[1];
          v47[0] = *a2;
          v47[1] = v27;
          if (v27)
          {
            atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
            v25 = v57;
          }

          mlx::core::astype(v47, v58, v26, v25 | 0x100000000, &v48);
          mlx::core::array::~array(v47);
          if (v14)
          {
            v28 = *(a3 + 8);
            v44[0] = *a3;
            v44[1] = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
            }

            mlx::core::astype(v44, v58, v56, v57 | 0x100000000, &v45);
            mlx::core::array::~array(v44);
            v60[0] = 1;
            if (mlx::core::operator==(&v56 + 1, v60))
            {
              v30 = *a1;
              memset(__p, 0, sizeof(__p));
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v30, v30[1], (v30[1] - *v30) >> 2);
              operator new();
            }

            v31 = a1[1];
            v60[0] = *a1;
            v60[1] = v31;
            if (v31)
            {
              atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
            }

            v60[2] = v48;
            v60[3] = v49;
            if (v49)
            {
              atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
            }

            v60[4] = v45;
            v60[5] = v46;
            if (v46)
            {
              atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
            }

            memset(v42, 0, sizeof(v42));
            std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v42, v60, v61, 3uLL);
            mlx::core::fast::layer_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(v50, v42);
          }

          mlx::core::array::array<int>();
        }

        mlx::core::array::array<int>();
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](v60);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "[layer_norm] Received unsupported type ", 39);
      v34 = mlx::core::operator<<(v33, &v58);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ".", 1);
      v35 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v60, &v59);
      std::logic_error::logic_error(v35, &v59);
      v35->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v35, off_279921408, MEMORY[0x277D82610]);
    }
  }

  else if ((v14 & 1) == 0 || *(*a3 + 8) - **a3 == 4)
  {
    v21 = v6[7];
    LODWORD(v58) = v21;
    v22 = HIDWORD(v21);
    goto LABEL_12;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v60);
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "[layer_norm] bias must have 1 dimension but has ", 48);
  v40 = MEMORY[0x25F851380](v39, (*(*a3 + 8) - **a3) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " dimensions.", 12);
  v41 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v60, &v59);
  std::logic_error::logic_error(v41, &v59);
  v41->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v41, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A35495C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if ((v45 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a44);
      _Unwind_Resume(a1);
    }
  }

  else if (!v45)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v44);
  goto LABEL_6;
}

void mlx::core::fast::layer_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(uint64_t a1, uint64_t ***a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = (*a2)[1];
  v4[0] = **a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v4, 10, *(a1 + 16), *(a1 + 24) | 0x100000000, &v5);
  mlx::core::array::~array(v4);
  mlx::core::mean(&v5, -1, 1, *(a1 + 16), *(a1 + 24) | 0x100000000);
}

void sub_25A354E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  mlx::core::array::~array((v11 - 112));
  mlx::core::array::~array((v11 - 80));
  _Unwind_Resume(a1);
}

void mlx::core::fast::LayerNorm::vjp(uint64_t a1, uint64_t ***a2, void *a3, uint64_t a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (a2[1] - *a2 == 48)
  {
    if (a5[1] - *a5 == 16)
    {
      if (a3[1] - *a3 == 16)
      {
        v16[6] = *(a1 + 8);
        v17 = *(a1 + 16);
        v7 = *(a1 + 88);
        v8 = *v5;
        memset(v24, 0, sizeof(v24));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v24, *v8, v8[1], (v8[1] - *v8) >> 2);
        v9 = (*a2)[2];
        memset(v25, 0, sizeof(v25));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v25, *v9, v9[1], (v9[1] - *v9) >> 2);
        v10 = (*a2)[4];
        memset(v26, 0, sizeof(v26));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v26, *v10, v10[1], (v10[1] - *v10) >> 2);
        memset(v16, 0, 24);
        std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(v16, v24, &v27, 3uLL);
        v11 = *a2;
        v12 = (**a2)[7];
        v18 = v12;
        v19 = BYTE4(v12);
        v13 = v11[2][7];
        v20 = v13;
        v21 = BYTE4(v13);
        v14 = v11[4][7];
        v22 = v14;
        v23 = BYTE4(v14);
        memset(__p, 0, sizeof(__p));
        std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype const*,mlx::core::Dtype const*>(__p, &v18, v24, 3uLL);
        operator new();
      }

      mlx::core::fast::LayerNorm::vjp();
    }

    mlx::core::fast::LayerNorm::vjp();
  }

  mlx::core::fast::LayerNorm::vjp();
}

void sub_25A3552C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char *__p, char *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a26);
  for (i = 48; i != -16; i -= 16)
  {
    mlx::core::array::~array((&a27 + i));
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a18;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v30 = (v27 - 112);
  v31 = -72;
  while (1)
  {
    v32 = *(v30 - 1);
    if (v32)
    {
      *v30 = v32;
      operator delete(v32);
    }

    v30 -= 3;
    v31 += 24;
    if (!v31)
    {
      _Unwind_Resume(a1);
    }
  }
}

void mlx::core::fast::rope(uint64_t ***a1, signed int a2, char a3, char a4, mlx::core *a5, uint64_t a6, float a7, float a8)
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = **a1;
  if ((v9[1] - *v9) > 8)
  {
    v18 = v9[7];
    LODWORD(v61) = v18;
    BYTE4(v61) = BYTE4(v18);
    if (mlx::core::issubdtype(&v61, &mlx::core::floating))
    {
      v19 = v8[2];
      if (v19[6] == 1)
      {
        v20 = v19[7];
        LODWORD(v61) = v20;
        BYTE4(v61) = BYTE4(v20);
        if (mlx::core::issubdtype(&v61, &mlx::core::integer))
        {
          if (*(v8[2] + 60) << 32 != 0x400000000)
          {
            v21 = v8[3];
            v59[0] = v8[2];
            v59[1] = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
            }

            mlx::core::astype(v59, 3, a5, a6, &v61);
            v22 = *a1;
            v23 = v61;
            v61 = 0uLL;
            v24 = v22[3];
            *(v22 + 1) = v23;
            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            mlx::core::array::~array(&v61);
            mlx::core::array::~array(v59);
          }

          if (a1[1] - *a1 != 48 || (v26 = (*a1)[4], v25 = *v26, v26[1] - *v26 == 4) && *v25 == a2 / 2)
          {
            v52 = a2;
            v53 = a3;
            v54 = a7;
            v55 = a8;
            v56 = a4;
            v57 = a5;
            v58 = a6;
            v60.__r_.__value_.__r.__words[0] = mlx::core::to_stream(a5, a6);
            LODWORD(v60.__r_.__value_.__r.__words[1]) = v27;
            *&v61 = 1;
            if (mlx::core::operator==(v60.__r_.__value_.__r.__words + 1, &v61))
            {
              v28 = *v8;
              memset(__p, 0, sizeof(__p));
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v28, v28[1], (v28[1] - *v28) >> 2);
              v29 = (*v8)[7];
              operator new();
            }

            v49 = *a1;
            v50 = a1[2];
            a1[1] = 0;
            a1[2] = 0;
            *a1 = 0;
            mlx::core::fast::rope(std::vector<mlx::core::array>,int,BOOL,float,float,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(&v52, &v49);
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](&v61);
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "[rope] freqs must be one dimensional with size ", 47);
          v45 = MEMORY[0x25F851360](v44, (a2 / 2));
          v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " but got shape ", 15);
          v47 = mlx::core::operator<<(v46, (*a1)[4]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ".", 1);
          exception = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](&v61, &v60);
          std::logic_error::logic_error(exception, &v60);
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](&v61);
        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "[rope] offset must be an integer but got type ", 46);
        v41 = v8[2][7];
        LODWORD(v60.__r_.__value_.__l.__data_) = v41;
        v60.__r_.__value_.__s.__data_[4] = BYTE4(v41);
        v42 = mlx::core::operator<<(v40, &v60);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ".", 1);
        v43 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](&v61, &v60);
        std::logic_error::logic_error(v43, &v60);
        v43->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v43, off_279921408, MEMORY[0x277D82610]);
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&v61);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "[rope] offset must be a scalar but has shape ", 45);
      v38 = mlx::core::operator<<(v37, v8[2]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ".", 1);
      v39 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](&v61, &v60);
      std::logic_error::logic_error(v39, &v60);
      v39->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v39, off_279921408, MEMORY[0x277D82610]);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v61);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "[rope] Input must be a floating type but got ", 45);
    v34 = (*v8)[7];
    LODWORD(v60.__r_.__value_.__l.__data_) = v34;
    v60.__r_.__value_.__s.__data_[4] = BYTE4(v34);
    v35 = mlx::core::operator<<(v33, &v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ".", 1);
    v36 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v61, &v60);
    std::logic_error::logic_error(v36, &v60);
    v36->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v36, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v61);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "[rope] Input must have at least 3 dimensions but got input with ", 64);
  v31 = MEMORY[0x25F851380](v30, ((*v8)[1] - **v8) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " dimensions.", 12);
  v32 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](&v61, &v60);
  std::logic_error::logic_error(v32, &v60);
  v32->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v32, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A355B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v37 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a36);
      _Unwind_Resume(a1);
    }
  }

  else if (!v37)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v36);
  goto LABEL_6;
}

void mlx::core::fast::rope(std::vector<mlx::core::array>,int,BOOL,float,float,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(unsigned int *a1, uint64_t ***a2)
{
  v7[10] = *MEMORY[0x277D85DE8];
  mlx::core::flatten(*a2, 0, (((**a2)[1] - ***a2) >> 2) - 3, *(a1 + 5), *(a1 + 7), &v6);
  if (v6[1] - *v6 > 4uLL)
  {
    v4 = *a1;
    v5 = *a2;
    mlx::core::arange((v6[7] & 0xFFFFFFFFFFLL), *(a1 + 5), *(a1 + 7), v7, *(*v6 + 4));
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A3567B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  std::__split_buffer<mlx::core::array>::~__split_buffer(v72 - 144);
  mlx::core::array::~array((v72 - 224));
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  *(v72 - 224) = &a22;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v72 - 224));
  mlx::core::array::~array((v72 - 208));
  mlx::core::array::~array((v72 - 160));
  v74 = *(v72 - 184);
  if (v74)
  {
    *(v72 - 176) = v74;
    operator delete(v74);
  }

  mlx::core::array::~array(&a70);
  mlx::core::array::~array(&a72);
  mlx::core::array::~array(&STACK[0x208]);
  mlx::core::array::~array(&STACK[0x228]);
  mlx::core::array::~array(&STACK[0x238]);
  mlx::core::array::~array(&STACK[0x248]);
  _Unwind_Resume(a1);
}

void mlx::core::fast::rope(uint64_t *a1, signed int a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, mlx::core *a7, uint64_t a8, float a9)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v16 = a1[1];
  v33 = *a1;
  v34 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = a5[1];
  v35 = *a5;
  v36 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v31 = 0uLL;
  v32 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v31, &v33, v37, 2uLL);
  v18 = *&a4;
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((&v33 + i));
  }

  if (*(a6 + 16) == 1)
  {
    v20 = *(a6 + 8);
    v29[0] = *a6;
    v29[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    }

    mlx::core::astype(v29, 10, a7, a8, &v30);
    v21 = *(&v31 + 1);
    if (*(&v31 + 1) >= v32)
    {
      v24 = (*(&v31 + 1) - v31) >> 4;
      if ((v24 + 1) >> 60)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v25 = (v32 - v31) >> 3;
      if (v25 <= v24 + 1)
      {
        v25 = v24 + 1;
      }

      if (v32 - v31 >= 0x7FFFFFFFFFFFFFF0)
      {
        v26 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      v37[0] = &v31;
      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(&v31, v26);
      }

      v33 = 0;
      v34 = (16 * v24);
      v36 = 0;
      *v34 = v30;
      v30 = 0uLL;
      v35 = 16 * v24 + 16;
      std::vector<mlx::core::array>::__swap_out_circular_buffer(&v31, &v33);
      v22 = *(&v31 + 1);
      std::__split_buffer<mlx::core::array>::~__split_buffer(&v33);
    }

    else
    {
      **(&v31 + 1) = v30;
      v22 = v21 + 16;
      v30 = 0uLL;
    }

    *(&v31 + 1) = v22;
    mlx::core::array::~array(&v30);
    mlx::core::array::~array(v29);
    v18 = 1.0;
    if ((a4 & 0x100000000) == 0)
    {
LABEL_24:
      v27 = v31;
      v28 = v32;
      v32 = 0;
      v31 = 0uLL;
      mlx::core::fast::rope(&v27, a2, a3, 1, a7, a8, v18, a9);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[rope] Only one of base or freqs can have a value.");
  }

  else
  {
    if ((a4 & 0x100000000) != 0)
    {
      goto LABEL_24;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[rope] Neither base nor freqs has a value.");
  }

  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A356E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void **);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va3);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  va_copy(v9, va2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void mlx::core::fast::RoPE::vjp(uint64_t a1, void *a2, uint64_t ***a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a4[1] - *a4 <= 4uLL && !**a4)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    v9 = *(a1 + 88);
    v19 = *(a1 + 92);
    v10 = *(a1 + 96);
    v11 = *(a1 + 104);
    v12 = (*a3)[1];
    v23[0] = **a3;
    v23[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    v13 = *(*a2 + 24);
    v23[2] = *(*a2 + 16);
    v23[3] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = 0uLL;
    v22 = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v21, v23, &v24, 2uLL);
    for (i = 2; i != -2; i -= 2)
    {
      mlx::core::array::~array(&v23[i]);
    }

    if (a2[1] - *a2 == 48)
    {
      std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(&v21, (*a2 + 32));
    }

    v15 = **a3;
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v15, v15[1], (v15[1] - *v15) >> 2);
    v16 = (**a3)[7];
    v17 = *(a1 + 104);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[RoPE::vjp] vjp for offset or frequencies not supported");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A3572E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25)
{
  a23 = &a19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void sub_25A357370()
{
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((v0 + i));
  }

  JUMPOUT(0x25A357368);
}

void mlx::core::fast::scaled_dot_product_attention(uint64_t **a1, std::string::size_type *a2, std::string::size_type *a3, uint64_t a4, uint64_t ***a5, mlx::core *a6, uint64_t a7, float a8)
{
  v173 = *MEMORY[0x277D85DE8];
  v16 = a1[1];
  v169.__r_.__value_.__r.__words[0] = *a1;
  v169.__r_.__value_.__l.__size_ = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = a2[1];
  v169.__r_.__value_.__r.__words[2] = *a2;
  v170 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = a3[1];
  v171 = *a3;
  v172 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 6; i += 2)
  {
    if (*(v169.__r_.__value_.__r.__words[i] + 8) - **(&v169.__r_.__value_.__l.__data_ + i * 8) != 16)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v163);
      v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, "[scaled_dot_product_attention] input with shape ", 48);
      v93 = mlx::core::operator<<(v92, *(&v169.__r_.__value_.__l.__data_ + i * 8));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, " expected to be rank 4", 22);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](&v163, &__p);
      std::logic_error::logic_error(exception, &__p);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }
  }

  for (j = 32; j != -16; j -= 16)
  {
    mlx::core::array::~array((&v169 + j));
  }

  v21 = *(a4 + 23);
  if (v21 < 0)
  {
    v26 = *(a4 + 8);
    if (!v26)
    {
      goto LABEL_37;
    }

    if (v26 == 6 && **a4 == 1937072483 && *(*a4 + 4) == 27745)
    {
LABEL_34:
      if ((v21 & 0x80000000) == 0)
      {
        v25 = a4;
        if (v21 != 6)
        {
          v31 = 0;
          v140 = 0;
          goto LABEL_45;
        }

LABEL_39:
        v32 = *v25 ^ 0x73756163 | *(v25 + 4) ^ 0x6C61;
        v31 = v32 == 0;
        if (v32)
        {
          v140 = 0;
          if (v21 < 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (*a5 != a5[1])
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v163);
            v137 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, "[scaled_dot_product_attention] Invalid mask_arrs for mask_mode ", 63);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v137, "'casusal'. No array masks supported.", 36);
            v138 = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](&v163, &v169);
            std::logic_error::logic_error(v138, &v169);
            v138->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v138, off_279921408, MEMORY[0x277D82610]);
          }

          v140 = 1;
          if (v21 < 0)
          {
            goto LABEL_53;
          }
        }

LABEL_45:
        if (v21 != 5)
        {
          goto LABEL_59;
        }

        if (*a4 != 1634890337 || *(a4 + 4) != 121)
        {
          goto LABEL_60;
        }

        goto LABEL_65;
      }

LABEL_37:
      if (*(a4 + 8) != 6)
      {
        v31 = 0;
        v140 = 0;
LABEL_53:
        if (*(a4 + 8) != 5)
        {
          goto LABEL_61;
        }

        if (**a4 != 1634890337 || *(*a4 + 4) != 121)
        {
          if ((v21 & 0x80000000) == 0)
          {
LABEL_59:
            if (*(a4 + 23))
            {
LABEL_60:
              v139 = 1;
              goto LABEL_69;
            }

            goto LABEL_62;
          }

LABEL_61:
          if (*(a4 + 8))
          {
            goto LABEL_60;
          }

LABEL_62:
          LOBYTE(v21) = v140;
LABEL_63:
          v35 = *a5;
          v36 = a5[1];
          if (*a5 == v36)
          {
            v139 = 1;
            v140 = v21;
            goto LABEL_69;
          }

LABEL_66:
          if (v36 - v35 != 16)
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v163);
            v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, "[scaled_dot_product_attention] Invalid mask_arrs for mask_mode ", 63);
            v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, "'", 1);
            v127 = *(a4 + 23);
            if (v127 >= 0)
            {
              v128 = a4;
            }

            else
            {
              v128 = *a4;
            }

            if (v127 >= 0)
            {
              v129 = *(a4 + 23);
            }

            else
            {
              v129 = *(a4 + 8);
            }

            v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, v128, v129);
            v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, "'. Only 1 mask array is supported, got ", 39);
            v132 = MEMORY[0x25F851380](v131, (a5[1] - *a5) >> 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v132, "arrays.", 7);
            v133 = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](&v163, &v169);
            std::logic_error::logic_error(v133, &v169);
            v133->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v133, off_279921408, MEMORY[0x277D82610]);
          }

          if (((*v35)[1] - **v35) >= 0x11)
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v163);
            v134 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, "[scaled_dot_product_attention] the mask with shape ", 51);
            v135 = mlx::core::operator<<(v134, **a5);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, " expected to have at most rank 4.", 33);
            v136 = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](&v163, &v169);
            std::logic_error::logic_error(v136, &v169);
            v136->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v136, off_279921408, MEMORY[0x277D82610]);
          }

          v139 = 0;
          v140 = v21;
          v31 = 1;
LABEL_69:
          v37 = **a1;
          if ((*a1)[1] == v37)
          {
            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          v38 = *v37;
          v39 = a2[1];
          v169.__r_.__value_.__r.__words[0] = *a2;
          v169.__r_.__value_.__l.__size_ = v39;
          if (v39)
          {
            atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
          }

          v40 = a3[1];
          v169.__r_.__value_.__r.__words[2] = *a3;
          v170 = v40;
          if (v40)
          {
            atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
          }

          for (k = 0; k != 4; k += 2)
          {
            v42 = **(&v169.__r_.__value_.__l.__data_ + k * 8);
            if (*(v169.__r_.__value_.__r.__words[k] + 8) == v42)
            {
              std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
            }

            if (*v42 != v38)
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](&v163);
              v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, "[scaled_dot_product_attention] mismatching batch dimension for input with shape ", 80);
              v96 = mlx::core::operator<<(v95, *(&v169.__r_.__value_.__l.__data_ + k * 8));
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, ".", 1);
              v97 = __cxa_allocate_exception(0x10uLL);
              std::ostringstream::str[abi:ne200100](&v163, &__p);
              std::logic_error::logic_error(v97, &__p);
              v97->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(v97, off_279921408, MEMORY[0x277D82610]);
            }
          }

          for (m = 16; m != -16; m -= 16)
          {
            mlx::core::array::~array((&v169 + m));
          }

          v45 = **a1;
          v44 = (*a1)[1];
          v46 = v44 - v45;
          if (v44 == v45)
          {
            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          v47 = *a2;
          v48 = *(*a2 + 8) - **a2;
          if (!v48)
          {
            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          v49 = v45 + v46;
          v50 = *(*a2 + 8);
          if (*(v49 - 4) != *(v50 - 4))
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v163);
            v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, "[scaled_dot_product_attention] query, keys expected to have matching last dimension; found query shape ", 103);
            v105 = mlx::core::operator<<(v104, *a1);
            v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, " for keys shape ", 16);
            v107 = mlx::core::operator<<(v106, *a2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, ".", 1);
            v108 = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](&v163, &v169);
            std::logic_error::logic_error(v108, &v169);
            v108->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v108, off_279921408, MEMORY[0x277D82610]);
          }

          if (v46 <= 8)
          {
            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          if (v48 <= 8)
          {
            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          if (*(*a3 + 8) - **a3 <= 8uLL)
          {
            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          v51 = *(v50 - 12);
          if (v51 != *(*(*a3 + 8) - 12))
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v163);
            v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, "[scaled_dot_product_attention] keys, values expected to have matching n_kv_heads; found keys with n_heads ", 106);
            if (*(*a2 + 8) - **a2 >= 9uLL)
            {
              v110 = MEMORY[0x25F851360](v109, *(*(*a2 + 8) - 12));
              v111 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, " for values with n_heads ", 25);
              if (*(*a3 + 8) - **a3 > 8uLL)
              {
                v112 = MEMORY[0x25F851360](v111, *(*(*a3 + 8) - 12));
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, ".", 1);
                v113 = __cxa_allocate_exception(0x10uLL);
                std::ostringstream::str[abi:ne200100](&v163, &v169);
                std::logic_error::logic_error(v113, &v169);
                v113->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v113, off_279921408, MEMORY[0x277D82610]);
              }
            }

            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          v52 = *(v49 - 12);
          if (v52 % v51)
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v163);
            v114 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, "[scaled_dot_product_attention] n_heads must be a multiple of n_kv_heads, found n_heads ", 87);
            v115 = MEMORY[0x25F851360](v114, v52);
            v116 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v115, " for n_kv_heads ", 16);
            v117 = MEMORY[0x25F851360](v116, v51);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v117, ".", 1);
            v118 = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](&v163, &v169);
            std::logic_error::logic_error(v118, &v169);
            v118->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v118, off_279921408, MEMORY[0x277D82610]);
          }

          v53 = (*a1)[7];
          LODWORD(v163) = v53;
          BYTE4(v163) = BYTE4(v53);
          v54 = *(v47 + 56);
          LODWORD(v169.__r_.__value_.__l.__data_) = v54;
          v169.__r_.__value_.__s.__data_[4] = BYTE4(v54);
          v55 = mlx::core::promote_types(&v163, &v169);
          LODWORD(v163) = v55;
          BYTE4(v163) = BYTE4(v55);
          v56 = *(*a3 + 56);
          LODWORD(v169.__r_.__value_.__l.__data_) = v56;
          v169.__r_.__value_.__s.__data_[4] = BYTE4(v56);
          v57 = mlx::core::promote_types(&v163, &v169);
          LODWORD(v161) = v57;
          BYTE4(v161) = BYTE4(v57);
          if ((mlx::core::issubdtype(&v161, &mlx::core::floating) & 1) == 0)
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v163);
            v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, "[scaled_dot_product_attention] Received unsupported type ", 57);
            v120 = mlx::core::operator<<(v119, &v161);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v120, ".", 1);
            v121 = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](&v163, &v169);
            std::logic_error::logic_error(v121, &v169);
            v121->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v121, off_279921408, MEMORY[0x277D82610]);
          }

          v58 = a1[1];
          v159[0] = *a1;
          v159[1] = v58;
          if (v58)
          {
            atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
          }

          mlx::core::astype(v159, v161, a6, a7, &v160);
          mlx::core::array::~array(v159);
          v59 = a2[1];
          v156[0] = *a2;
          v156[1] = v59;
          if (v59)
          {
            atomic_fetch_add_explicit(v59 + 1, 1uLL, memory_order_relaxed);
          }

          mlx::core::astype(v156, v161, a6, a7, &v157);
          mlx::core::array::~array(v156);
          v60 = a3[1];
          v153[0] = *a3;
          v153[1] = v60;
          if (v60)
          {
            atomic_fetch_add_explicit(v60 + 1, 1uLL, memory_order_relaxed);
          }

          mlx::core::astype(v153, v161, a6, a7, &v154);
          mlx::core::array::~array(v153);
          *v146 = a8;
          v146[1] = v161;
          v147 = BYTE4(v161);
          v148 = v52;
          v149 = v51;
          v150 = v140;
          v151 = a6;
          v152 = a7;
          v144 = mlx::core::to_stream(a6, a7);
          v145 = v61;
          size = v154->__r_.__value_.__l.__size_;
          if (size == v154->__r_.__value_.__r.__words[0])
          {
            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          v63 = *(v160 + 8);
          if (v63 == *v160)
          {
            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          if ((v63 - *v160) <= 8)
          {
            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          if ((v157[1] - *v157) <= 8)
          {
            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          v64 = *(size - 4);
          if (*(v63 - 4) != v64)
          {
            v69 = 0;
            goto LABEL_123;
          }

          v65 = *(*v160 + 8);
          v66 = *(*v157 + 8);
          HIDWORD(v68) = v64 - 64;
          LODWORD(v68) = v64 - 64;
          v67 = v68 >> 5;
          if (v139 & v31)
          {
            v69 = 0;
            v71 = v64 == 128 || (v64 & 0xFFFFFFEF) == 64;
            if (v65 > v66 || (v140 & 1) == 0 || !v71)
            {
LABEL_116:
              v73 = v65 > 8 || v65 > v66;
              if (!(v73 | (v67 > 6) | (0x38u >> v67) & 1))
              {
                *&v163 = 1;
                v74 = mlx::core::operator==(&v144 + 1, &v163);
LABEL_125:
                v163 = v160;
                if (*(&v160 + 1))
                {
                  atomic_fetch_add_explicit((*(&v160 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                v164 = v157;
                v165 = v158;
                if (v158)
                {
                  atomic_fetch_add_explicit((v158 + 8), 1uLL, memory_order_relaxed);
                }

                v166 = v154;
                v167 = v155;
                if (v155)
                {
                  atomic_fetch_add_explicit((v155 + 8), 1uLL, memory_order_relaxed);
                }

                memset(&v169, 0, sizeof(v169));
                std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v169, &v163, &v168, 3uLL);
                v75 = v69 || v74;
                for (n = 32; n != -16; n -= 16)
                {
                  mlx::core::array::~array((&v163 + n));
                }

                if ((v139 & 1) == 0)
                {
                  v77 = **a5;
                  v78 = (*a5)[1];
                  *&v143 = v77;
                  *(&v143 + 1) = v78;
                  if (v78)
                  {
                    atomic_fetch_add_explicit(v78 + 1, 1uLL, memory_order_relaxed);
                  }

                  v79 = v77[7];
                  LODWORD(v163) = v79;
                  BYTE4(v163) = BYTE4(v79);
                  v80 = mlx::core::promote_types(&v163, &v161);
                  if (v161 != v80)
                  {
                    std::ostringstream::basic_ostringstream[abi:ne200100](&v163);
                    v122 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, "[scaled_dot_product_attention] Mask type must promote to output type. ", 70);
                    v123 = mlx::core::operator<<(v122, &v161);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, ".", 1);
                    v124 = __cxa_allocate_exception(0x10uLL);
                    std::ostringstream::str[abi:ne200100](&v163, &__p);
                    std::logic_error::logic_error(v124, &__p);
                    v124->__vftable = (MEMORY[0x277D828F8] + 16);
                    __cxa_throw(v124, off_279921408, MEMORY[0x277D82610]);
                  }

                  if (v79)
                  {
                    v142 = v143;
                    if (*(&v143 + 1))
                    {
                      atomic_fetch_add_explicit((*(&v143 + 1) + 8), 1uLL, memory_order_relaxed);
                    }

                    mlx::core::astype(&v142, v161, v144, v145 | 0x100000000, &v163);
                    v81 = v163;
                    v163 = 0uLL;
                    v82 = *(&v143 + 1);
                    v143 = v81;
                    if (v82)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v82);
                    }

                    mlx::core::array::~array(&v163);
                    mlx::core::array::~array(&v142);
                  }

                  v83 = *a1;
                  memset(&__p, 0, sizeof(__p));
                  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v83, v83[1], (v83[1] - *v83) >> 2);
                  if (*(*a2 + 8) - **a2 <= 4uLL)
                  {
                    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
                  }

                  *(__p.__r_.__value_.__l.__size_ - 4) = *(*(*a2 + 8) - 8);
                  mlx::core::broadcast_to(&v143, &__p, v144, v145 | 0x100000000, &v141);
                  v84 = v169.__r_.__value_.__l.__size_;
                  if (v169.__r_.__value_.__l.__size_ >= v169.__r_.__value_.__r.__words[2])
                  {
                    v86 = (v169.__r_.__value_.__l.__size_ - v169.__r_.__value_.__r.__words[0]) >> 4;
                    if ((v86 + 1) >> 60)
                    {
                      std::vector<int>::__throw_length_error[abi:ne200100]();
                    }

                    v87 = (v169.__r_.__value_.__r.__words[2] - v169.__r_.__value_.__r.__words[0]) >> 3;
                    if (v87 <= v86 + 1)
                    {
                      v87 = v86 + 1;
                    }

                    if (v169.__r_.__value_.__r.__words[2] - v169.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v88 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v88 = v87;
                    }

                    v166 = &v169;
                    if (v88)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(&v169, v88);
                    }

                    *&v163 = 0;
                    *(&v163 + 1) = 16 * v86;
                    v165 = 0;
                    **(&v163 + 1) = v141;
                    v141 = 0uLL;
                    v164 = (16 * v86 + 16);
                    std::vector<mlx::core::array>::__swap_out_circular_buffer(&v169, &v163);
                    v85 = v169.__r_.__value_.__l.__size_;
                    std::__split_buffer<mlx::core::array>::~__split_buffer(&v163);
                  }

                  else
                  {
                    *v169.__r_.__value_.__l.__size_ = v141;
                    v85 = v84 + 16;
                    v141 = 0uLL;
                  }

                  v169.__r_.__value_.__l.__size_ = v85;
                  mlx::core::array::~array(&v141);
                  if (__p.__r_.__value_.__r.__words[0])
                  {
                    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  mlx::core::array::~array(&v143);
                }

                if (mlx::core::detail::InTracing::grad_counter < 1 && v75)
                {
                  v89 = *v160;
                  v90 = *(v160 + 8) - *v160;
                  if (v90)
                  {
                    LODWORD(v163) = *v89;
                    if (v90 >= 5)
                    {
                      DWORD1(v163) = v89[1];
                      if (v90 != 8)
                      {
                        DWORD2(v163) = v89[2];
                        v91 = v154->__r_.__value_.__l.__size_;
                        if (v91 != v154->__r_.__value_.__r.__words[0])
                        {
                          HIDWORD(v163) = *(v91 - 4);
                          memset(&__p, 0, sizeof(__p));
                          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v163, &v164, 4uLL);
                          memset(&__p, 0, sizeof(__p));
                          operator new();
                        }
                      }
                    }
                  }

                  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
                }

                mlx::core::fast::scaled_dot_product_attention(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,float,std::string const&,std::vector<mlx::core::array> const&,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(v146, &v169);
              }

LABEL_123:
              v74 = 0;
              goto LABEL_125;
            }
          }

          else if (v64 != 64 && v64 != 128 && v64 != 80)
          {
            v69 = 0;
            goto LABEL_116;
          }

          *&v163 = 1;
          v69 = mlx::core::operator==(&v144 + 1, &v163);
          goto LABEL_116;
        }

LABEL_65:
        v35 = *a5;
        v36 = a5[1];
        LOBYTE(v21) = v140;
        goto LABEL_66;
      }

      v25 = *a4;
      goto LABEL_39;
    }

    if (*(a4 + 8) != 5)
    {
      goto LABEL_170;
    }

    v23 = *a4;
  }

  else
  {
    v22 = *(a4 + 23);
    if (!*(a4 + 23))
    {
      v31 = 0;
      goto LABEL_63;
    }

    v23 = a4;
    if (v22 != 5)
    {
      if (v22 != 6)
      {
        goto LABEL_170;
      }

      v24 = *a4 == 1937072483 && *(a4 + 4) == 27745;
      v25 = a4;
      if (!v24)
      {
        goto LABEL_170;
      }

      goto LABEL_39;
    }
  }

  v28 = *v23;
  v29 = *(v23 + 4);
  if (v28 != 1634890337 || v29 != 121)
  {
LABEL_170:
    std::ostringstream::basic_ostringstream[abi:ne200100](&v163);
    v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, "[scaled_dot_product_attention] Invalid mask_mode ", 49);
    v99 = *(a4 + 23);
    if (v99 >= 0)
    {
      v100 = a4;
    }

    else
    {
      v100 = *a4;
    }

    if (v99 >= 0)
    {
      v101 = *(a4 + 23);
    }

    else
    {
      v101 = *(a4 + 8);
    }

    v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, v100, v101);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, ". mask_mode must be 'causal', 'array' or ''.", 44);
    v103 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v163, &v169);
    std::logic_error::logic_error(v103, &v169);
    v103->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v103, off_279921408, MEMORY[0x277D82610]);
  }

  goto LABEL_34;
}

void sub_25A358794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54)
{
  if (*(v56 - 137) < 0)
  {
    operator delete(*(v56 - 160));
    if ((v55 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a54);
      _Unwind_Resume(a1);
    }
  }

  else if (!v55)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v54);
  goto LABEL_6;
}

void mlx::core::fast::scaled_dot_product_attention(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,float,std::string const&,std::vector<mlx::core::array> const&,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(int *a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(**a2 + 56);
  mlx::core::array::array<float>();
}

void sub_25A3590F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array((v25 - 96));
  mlx::core::array::~array((v25 - 80));
  mlx::core::array::~array(&a23);
  mlx::core::array::~array(&a25);
  mlx::core::array::~array((v25 - 128));
  _Unwind_Resume(a1);
}

void mlx::core::fast::pack_and_quantize(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 56);
  mlx::core::array::array<int>();
}

void sub_25A359810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  mlx::core::array::~array(&a27);
  mlx::core::array::~array(&a15);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array((v27 - 128));
  mlx::core::array::~array((v27 - 112));
  _Unwind_Resume(a1);
}

void mlx::core::fast::affine_quantize(uint64_t **a1, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  mlx::core::to_stream(a4, a5);
  if (a2 == 32 || a2 == 64 || a2 == 128)
  {
    if (a3 <= 8 && ((1 << a3) & 0x15C) != 0)
    {
      v8 = *a1;
      if (((*a1)[1] - **a1) > 4)
      {
        if (!(*((*a1)[1] - 4) % a2))
        {
          v36[0] = 0;
          v36[1] = 0;
          v37 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v36, *v8, v8[1], (v8[1] - *v8) >> 2);
          v9 = *a1;
          v10 = (*a1)[1];
          if (v10 != **a1)
          {
            *(v36[1] - 1) = *(v10 - 4) * a3 / 32;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *v9, v9[1], (v9[1] - *v9) >> 2);
            v11 = (*a1)[1];
            if (v11 != **a1)
            {
              v12 = v34;
              *(v34 - 4) = *(v11 - 4) / a2;
              v44 = *v36;
              v13 = v37;
              v36[0] = 0;
              v36[1] = 0;
              v37 = 0;
              v45 = v13;
              memset(v46, 0, sizeof(v46));
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v46, v33, v12, (v12 - v33) >> 2);
              memset(v47, 0, sizeof(v47));
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v47, v33, v34, (v34 - v33) >> 2);
              memset(v32, 0, sizeof(v32));
              std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(v32, &v44, &v48, 3uLL);
              v39 = 4;
              v38 = 3;
              v14 = (*a1)[7];
              v40 = v14;
              v41 = BYTE4(v14);
              v42 = v14;
              v43 = BYTE4(v14);
              memset(__p, 0, sizeof(__p));
              std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype const*,mlx::core::Dtype const*>(__p, &v38, &v44, 3uLL);
              operator new();
            }

            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "[quantize] The last dimension of the matrix needs to be divisible by ", 69);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "the quantization group size ", 28);
        v21 = MEMORY[0x25F851360](v20, a2);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ". However the provided ", 23);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " matrix has shape ", 18);
        mlx::core::operator<<(v23, *a1);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](&v44, &v49);
        std::logic_error::logic_error(exception, &v49);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "[quantize] The matrix to be quantized must have at least 2 dimension ", 69);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "but it has only ", 16);
      v17 = MEMORY[0x25F851380](v16, ((*a1)[1] - **a1) >> 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ".", 1);
      v18 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](&v44, &v49);
      std::logic_error::logic_error(v18, &v49);
      v18->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v18, off_279921408, MEMORY[0x277D82610]);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "[quantize] The requested number of bits ", 40);
    v29 = MEMORY[0x25F851360](v28, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " is not supported. The supported bits are 2, 3, 4, 6 and 8.", 59);
    v30 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v44, &v49);
    std::logic_error::logic_error(v30, &v49);
    v30->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v30, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "[quantize] The requested group size ", 36);
  v26 = MEMORY[0x25F851360](v25, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " is not supported. The supported group sizes are 64 and 128.", 60);
  v27 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](&v44, &v49);
  std::logic_error::logic_error(v27, &v49);
  v27->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v27, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A35A044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (*(v35 - 97) < 0)
  {
    operator delete(*(v35 - 120));
    if ((v34 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a33);
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v33);
  goto LABEL_6;
}

void mlx::core::fast::affine_dequantize(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t a4, uint64_t a5, mlx::core *a6, uint64_t a7)
{
  v68[31] = *MEMORY[0x277D85DE8];
  if (a5 > 0)
  {
    if (a4 > 0)
    {
      v10 = *a1;
      if (((*a1)[1] - **a1) >= 5 && ((*a2)[1] - **a2) >= 5 && ((*a3)[1] - **a3) > 4)
      {
        memset(&__s1, 0, sizeof(__s1));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__s1, *v10, v10[1], (v10[1] - *v10) >> 2);
        v15 = *a2;
        v65 = 0;
        __s2 = 0uLL;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__s2, *v15, v15[1], (v15[1] - *v15) >> 2);
        v16 = *a3;
        v62 = 0;
        v63 = 0;
        v61 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v61, *v16, v16[1], (v16[1] - *v16) >> 2);
        size = __s1.__r_.__value_.__l.__size_;
        *(__s1.__r_.__value_.__l.__size_ - 4) = -1;
        v18 = *(&__s2 + 1);
        *(*(&__s2 + 1) - 4) = -1;
        v19 = v62;
        *(v62 - 4) = -1;
        v20 = __s1.__r_.__value_.__r.__words[0];
        v21 = size - __s1.__r_.__value_.__r.__words[0];
        if (size - __s1.__r_.__value_.__r.__words[0] == v18 - __s2 && !memcmp(__s1.__r_.__value_.__l.__data_, __s2, v21) && v21 == v19 - v61 && !memcmp(v20, v61, v21))
        {
          if (*(*a1 + 14) == 3)
          {
            v22 = (*a1)[1];
            if (v22 != **a1)
            {
              v23 = (*a2)[1];
              if (v23 != **a2)
              {
                v24 = 32 * *(v22 - 4) / a5;
                if (v24 == *(v23 - 4) * a4)
                {
                  v59 = mlx::core::to_stream(a6, a7);
                  v60 = v25;
                  v52 = __s1;
                  memset(&__s1, 0, sizeof(__s1));
                  *v53 = __s2;
                  v54 = v65;
                  __s2 = 0uLL;
                  v65 = 0;
                  v55 = a4;
                  v56 = a5;
                  v58 = v25;
                  v57 = v59;
                  v67[0] = 1;
                  if (mlx::core::operator==(&v59 + 1, v67))
                  {
                    v26 = *a1;
                    v51 = 0uLL;
                    v50 = 0;
                    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v50, *v26, v26[1], (v26[1] - *v26) >> 2);
                    *(v51 - 4) = v24;
                    v51 = 0uLL;
                    v50 = 0;
                    v27 = (*a2)[7];
                    operator new();
                  }

                  v28 = a1[1];
                  v67[0] = *a1;
                  v67[1] = v28;
                  if (v28)
                  {
                    atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
                  }

                  v29 = a2[1];
                  v67[2] = *a2;
                  v67[3] = v29;
                  if (v29)
                  {
                    atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
                  }

                  v30 = a3[1];
                  v67[4] = *a3;
                  v67[5] = v30;
                  if (v30)
                  {
                    atomic_fetch_add_explicit(v30 + 1, 1uLL, memory_order_relaxed);
                  }

                  v50 = 0;
                  v51 = 0uLL;
                  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v50, v67, v68, 3uLL);
                  mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(&v52, &v50);
                }

                std::ostringstream::basic_ostringstream[abi:ne200100](v67);
                v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "[dequantize] Shape of scales and biases does not match the matrix ", 66);
                v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "given the quantization parameters. Provided matrix of shape ", 60);
                v42 = mlx::core::operator<<(v41, *a1);
                v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " and scales/biases of shape ", 28);
                v44 = mlx::core::operator<<(v43, *a2);
                v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " with group_size=", 17);
                v46 = MEMORY[0x25F851360](v45, a4);
                v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " and bits=", 10);
                v48 = MEMORY[0x25F851360](v47, a5);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ".", 1);
                exception = __cxa_allocate_exception(0x10uLL);
                std::ostringstream::str[abi:ne200100](v67, &v52);
                std::logic_error::logic_error(exception, &v52);
                exception->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
              }
            }

            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          v31 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v31, "[dequantize] The matrix should be given as a uint32");
        }

        else
        {
          v31 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v31, "[dequantize] Shape of scales and biases does not match the matrix");
        }

        v31->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v31, off_279921408, MEMORY[0x277D82610]);
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](v67);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "[quantize] The matrix to be quantized must have at least 2 dimension ", 69);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "but it has only ", 16);
      v34 = MEMORY[0x25F851380](v33, ((*a1)[1] - **a1) >> 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ".", 1);
      v35 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v67, &v52);
      std::logic_error::logic_error(v35, &v52);
      v35->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v35, off_279921408, MEMORY[0x277D82610]);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v67);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "[dequantize] Invalid value for group_size: ", 43);
    MEMORY[0x25F851360](v38, a4);
    v39 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v67, &v52);
    std::logic_error::logic_error(v39, &v52);
    v39->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v39, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v67);
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "[dequantize] Invalid value for bits: ", 37);
  MEMORY[0x25F851360](v36, a5);
  v37 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v67, &v52);
  std::logic_error::logic_error(v37, &v52);
  v37->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v37, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A35AB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v50 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a48);
      if (a37)
      {
        operator delete(a37);
      }

      if (a40)
      {
        operator delete(a40);
      }

      if (a44)
      {
        operator delete(a44);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v50)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v49);
  goto LABEL_6;
}

void mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(uint64_t a1, uint64_t ***a2)
{
  v6[7] = *MEMORY[0x277D85DE8];
  v2 = (*a2)[1];
  v6[0] = **a2;
  v6[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 1, 1uLL, memory_order_relaxed);
    v3 = *a2;
  }

  if ((*(a1 + 52) ^ (*(a1 + 52) - 1)) > *(a1 + 52) - 1)
  {
    v4 = 0uLL;
    v5 = 0;
    mlx::core::array::array<int>();
  }

  mlx::core::expand_dims(v6, -1, *(a1 + 56), *(a1 + 64) | 0x100000000);
}

void sub_25A35B4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char *a29, uint64_t a30, char a31)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a29);
  a29 = &a31;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a29);
  mlx::core::array::~array((v31 - 144));
  _Unwind_Resume(a1);
}

void mlx::core::fast::AffineQuantize::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(a1 + 96) == 1)
  {
    v6 = **v5;
    v7 = (*v5)[1];
    if (v7 == v6)
    {
      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    }

    v8 = *(v7 - 4);
    v9 = *(a1 + 92);
    v24 = 0uLL;
    v25 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v24, v6, v7, (v7 - v6) >> 2);
    v10 = *(&v24 + 1);
    *(*(&v24 + 1) - 4) = 32 * v8 / v9;
    *&v31 = v24;
    *(&v31 + 1) = v10;
    v32 = v25;
    v25 = 0;
    v24 = 0uLL;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &v31, &v33, 1uLL);
    if (v31)
    {
      *(&v31 + 1) = v31;
      operator delete(v31);
    }

    v11 = v24;
    if (v24)
    {
      *(&v24 + 1) = v24;
LABEL_19:
      operator delete(v11);
    }
  }

  else
  {
    v12 = *v5;
    v31 = 0uLL;
    v32 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v31, *v12, v12[1], (v12[1] - *v12) >> 2);
    v13 = *v5;
    v14 = (*v5)[1];
    if (v14 == **v5)
    {
      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    }

    *(*(&v31 + 1) - 4) = *(a1 + 92) * *(v14 - 4) / 32;
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v22, *v13, v13[1], (v13[1] - *v13) >> 2);
    v15 = (*v5)[1];
    if (v15 == **v5)
    {
      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    }

    v16 = v22[1];
    *(v22[1] - 1) = *(v15 - 4) / *(a1 + 88);
    __p[0] = 0;
    __p[1] = 0;
    v21 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v22[0], v16, (v16 - v22[0]) >> 2);
    v24 = v31;
    v25 = v32;
    v31 = 0uLL;
    v32 = 0;
    v26 = *v22;
    v27 = v23;
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    v28 = *__p;
    v29 = v21;
    __p[1] = 0;
    v21 = 0;
    __p[0] = 0;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &v24, &v30, 3uLL);
    for (i = 0; i != -72; i -= 24)
    {
      v18 = *(&v28 + i);
      if (v18)
      {
        *(&v28 + i + 8) = v18;
        operator delete(v18);
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v22[0])
    {
      v22[1] = v22[0];
      operator delete(v22[0]);
    }

    v11 = v31;
    if (v31)
    {
      *(&v31 + 1) = v31;
      goto LABEL_19;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_25A35B90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = 0;
  while (1)
  {
    v22 = *(v18 + v21 + 48);
    if (v22)
    {
      *(v18 + v21 + 56) = v22;
      operator delete(v22);
    }

    v21 -= 24;
    if (v21 == -72)
    {
      if (__p)
      {
        operator delete(__p);
      }

      if (a13)
      {
        operator delete(a13);
      }

      v23 = *(v19 - 64);
      if (v23)
      {
        *(v19 - 56) = v23;
        operator delete(v23);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

std::string *mlx::core::fast::write_signature@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, std::string *a9@<X8>, uint64_t *a10, uint64_t *a11, char a12)
{
  a9->__r_.__value_.__r.__words[0] = 0;
  a9->__r_.__value_.__l.__size_ = 0;
  a9->__r_.__value_.__r.__words[2] = 0;
  v17 = *(a2 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 8);
  }

  v18 = *(a3 + 23);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a3 + 8);
  }

  std::string::reserve(a9, v17 + v18 + 0x4000);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  std::string::append(a9, v20, v21);
  if (*a8 != a8[1])
  {
    std::string::append(a9, "template <", 0xAuLL);
    v22 = *a8;
    v23 = a8[1];
    if (*a8 != v23)
    {
      v24 = 0;
      while (1)
      {
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v25 = *(v22 + 32);
        if (v25 == 2)
        {
          break;
        }

        if (v25 == 1)
        {
          HIBYTE(v131) = 4;
          LODWORD(v129) = 1819242338;
          v26 = 4;
        }

        else
        {
          v26 = 0;
          if (!v25)
          {
            HIBYTE(v131) = 3;
            qmemcpy(&v129, "int", 3);
            v26 = 3;
            if (!v24)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }

        if (v24)
        {
          goto LABEL_21;
        }

LABEL_22:
        if ((v26 & 0x80u) == 0)
        {
          v27 = &v129;
        }

        else
        {
          v27 = v129;
        }

        if ((v26 & 0x80u) == 0)
        {
          v28 = v26;
        }

        else
        {
          v28 = v130;
        }

        std::string::append(a9, v27, v28);
        std::string::append(a9, " ", 1uLL);
        v29 = *(v22 + 23);
        if (v29 >= 0)
        {
          v30 = v22;
        }

        else
        {
          v30 = *v22;
        }

        if (v29 >= 0)
        {
          v31 = *(v22 + 23);
        }

        else
        {
          v31 = *(v22 + 8);
        }

        std::string::append(a9, v30, v31);
        if (SHIBYTE(v131) < 0)
        {
          operator delete(v129);
        }

        v22 += 40;
        --v24;
        if (v22 == v23)
        {
          goto LABEL_40;
        }
      }

      HIBYTE(v131) = 8;
      v129 = 0x656D616E65707974;
      v26 = 8;
      if (!v24)
      {
        goto LABEL_22;
      }

LABEL_21:
      std::string::append(a9, ", ", 2uLL);
      v26 = HIBYTE(v131);
      goto LABEL_22;
    }

LABEL_40:
    std::string::append(a9, ">\n", 2uLL);
  }

  std::string::append(a9, "[[kernel]] void ", 0x10uLL);
  v32 = *(a1 + 23);
  if (v32 >= 0)
  {
    v33 = a1;
  }

  else
  {
    v33 = *a1;
  }

  if (v32 >= 0)
  {
    v34 = *(a1 + 23);
  }

  else
  {
    v34 = *(a1 + 8);
  }

  std::string::append(a9, v33, v34);
  std::string::append(a9, "(\n", 2uLL);
  v35 = *a5;
  if (a5[1] == *a5)
  {
    v88 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = *a4;
      mlx::core::get_type_string(*(*(v35 + v37) + 56) & 0xFFFFFFFFFFLL, &v129);
      if (*(*(v35 + v37) + 48) >= 8uLL)
      {
        v42 = "device";
      }

      else
      {
        v42 = "constant";
      }

      std::string::basic_string[abi:ne200100]<0>(&v128, v42);
      if (*(*(v35 + v37) + 8) == **(v35 + v37))
      {
        v43 = "&";
      }

      else
      {
        v43 = "*";
      }

      std::string::basic_string[abi:ne200100]<0>(v126, v43);
      std::string::append(a9, "  const ", 8uLL);
      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v128;
      }

      else
      {
        v44 = v128.__r_.__value_.__r.__words[0];
      }

      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v128.__r_.__value_.__l.__size_;
      }

      std::string::append(a9, v44, size);
      std::string::append(a9, " ", 1uLL);
      if (v131 >= 0)
      {
        v46 = &v129;
      }

      else
      {
        v46 = v129;
      }

      if (v131 >= 0)
      {
        v47 = HIBYTE(v131);
      }

      else
      {
        v47 = v130;
      }

      std::string::append(a9, v46, v47);
      if ((v127 & 0x80u) == 0)
      {
        v48 = v126;
      }

      else
      {
        v48 = v126[0];
      }

      if ((v127 & 0x80u) == 0)
      {
        v49 = v127;
      }

      else
      {
        v49 = v126[1];
      }

      std::string::append(a9, v48, v49);
      std::string::append(a9, " ", 1uLL);
      v50 = *(v41 + v36 + 23);
      v51 = *(v41 + v36 + 8);
      if (v50 >= 0)
      {
        v52 = (v41 + v36);
      }

      else
      {
        v52 = *(v41 + v36);
      }

      if (v50 >= 0)
      {
        v53 = *(v41 + v36 + 23);
      }

      else
      {
        v53 = *(v41 + v36 + 8);
      }

      std::string::append(a9, v52, v53);
      std::string::append(a9, " [[buffer(", 0xAuLL);
      std::to_string(&v125, v40);
      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v125;
      }

      else
      {
        v54 = v125.__r_.__value_.__r.__words[0];
      }

      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v55 = v125.__r_.__value_.__l.__size_;
      }

      std::string::append(a9, v54, v55);
      if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      std::string::append(a9, ")]],\n", 5uLL);
      v56 = v40 + 1;
      if (*(*(v35 + v37) + 8) == **(v35 + v37))
      {
        goto LABEL_160;
      }

      v57 = *a11;
      if (*(*a11 + v38) == 1)
      {
        std::operator+<char>();
        v58 = std::string::append(&v122, "_shape [[buffer(", 0x10uLL);
        v59 = *&v58->__r_.__value_.__l.__data_;
        v123.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
        *&v123.__r_.__value_.__l.__data_ = v59;
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v121, v40 + 1);
        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = &v121;
        }

        else
        {
          v60 = v121.__r_.__value_.__r.__words[0];
        }

        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v61 = v121.__r_.__value_.__l.__size_;
        }

        v62 = std::string::append(&v123, v60, v61);
        v63 = *&v62->__r_.__value_.__l.__data_;
        v124.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
        *&v124.__r_.__value_.__l.__data_ = v63;
        v62->__r_.__value_.__l.__size_ = 0;
        v62->__r_.__value_.__r.__words[2] = 0;
        v62->__r_.__value_.__r.__words[0] = 0;
        v64 = std::string::append(&v124, ")]],\n", 5uLL);
        v65 = *&v64->__r_.__value_.__l.__data_;
        v125.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
        *&v125.__r_.__value_.__l.__data_ = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v125;
        }

        else
        {
          v66 = v125.__r_.__value_.__r.__words[0];
        }

        if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v67 = v125.__r_.__value_.__l.__size_;
        }

        std::string::append(a9, v66, v67);
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v121.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        v56 = v40 + 2;
        v57 = *a11;
      }

      if (*(v57 + v38 + 1) == 1)
      {
        std::operator+<char>();
        v68 = std::string::append(&v122, "_strides [[buffer(", 0x12uLL);
        v69 = *&v68->__r_.__value_.__l.__data_;
        v123.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
        *&v123.__r_.__value_.__l.__data_ = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v121, v56);
        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v121;
        }

        else
        {
          v70 = v121.__r_.__value_.__r.__words[0];
        }

        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v71 = v121.__r_.__value_.__l.__size_;
        }

        v72 = std::string::append(&v123, v70, v71);
        v73 = *&v72->__r_.__value_.__l.__data_;
        v124.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&v124.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = std::string::append(&v124, ")]],\n", 5uLL);
        v75 = *&v74->__r_.__value_.__l.__data_;
        v125.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
        *&v125.__r_.__value_.__l.__data_ = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = &v125;
        }

        else
        {
          v76 = v125.__r_.__value_.__r.__words[0];
        }

        if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v77 = v125.__r_.__value_.__l.__size_;
        }

        std::string::append(a9, v76, v77);
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v121.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        ++v56;
        v57 = *a11;
      }

      if (*(v57 + v38 + 2) != 1)
      {
LABEL_160:
        v40 = v56;
      }

      else
      {
        std::operator+<char>();
        v78 = std::string::append(&v122, "_ndim [[buffer(", 0xFuLL);
        v79 = *&v78->__r_.__value_.__l.__data_;
        v123.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&v123.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v121, v56);
        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = &v121;
        }

        else
        {
          v80 = v121.__r_.__value_.__r.__words[0];
        }

        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v81 = v121.__r_.__value_.__l.__size_;
        }

        v82 = std::string::append(&v123, v80, v81);
        v83 = *&v82->__r_.__value_.__l.__data_;
        v124.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
        *&v124.__r_.__value_.__l.__data_ = v83;
        v82->__r_.__value_.__l.__size_ = 0;
        v82->__r_.__value_.__r.__words[2] = 0;
        v82->__r_.__value_.__r.__words[0] = 0;
        v84 = std::string::append(&v124, ")]],\n", 5uLL);
        v85 = *&v84->__r_.__value_.__l.__data_;
        v125.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
        *&v125.__r_.__value_.__l.__data_ = v85;
        v84->__r_.__value_.__l.__size_ = 0;
        v84->__r_.__value_.__r.__words[2] = 0;
        v84->__r_.__value_.__r.__words[0] = 0;
        if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v86 = &v125;
        }

        else
        {
          v86 = v125.__r_.__value_.__r.__words[0];
        }

        if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v87 = v125.__r_.__value_.__l.__size_;
        }

        std::string::append(a9, v86, v87);
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v121.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        v40 = v56 + 1;
      }

      if (v127 < 0)
      {
        operator delete(v126[0]);
      }

      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v131) < 0)
      {
        operator delete(v129);
      }

      ++v39;
      v35 = *a5;
      v38 += 3;
      v37 += 16;
      v36 += 24;
    }

    while (v39 < (a5[1] - *a5) >> 4);
    v88 = v40;
  }

  v89 = *a6;
  v90 = ",\n";
  if (a6[1] != *a6)
  {
    v91 = 0;
    v92 = 0;
    do
    {
      v93 = a5;
      v94 = v90;
      v95 = *a7;
      std::string::append(a9, "  device ", 9uLL);
      mlx::core::get_type_string(*(v95 + 8 * v92), &v129);
      v90 = v94;
      a5 = v93;
      if (a12)
      {
        std::string::append(a9, "atomic<", 7uLL);
      }

      if (v131 >= 0)
      {
        v96 = &v129;
      }

      else
      {
        v96 = v129;
      }

      if (v131 >= 0)
      {
        v97 = HIBYTE(v131);
      }

      else
      {
        v97 = v130;
      }

      std::string::append(a9, v96, v97);
      if (a12)
      {
        std::string::append(a9, ">", 1uLL);
      }

      std::string::append(a9, "* ", 2uLL);
      v98 = *(v89 + v91 + 23);
      if (v98 >= 0)
      {
        v99 = (v89 + v91);
      }

      else
      {
        v99 = *(v89 + v91);
      }

      if (v98 >= 0)
      {
        v100 = *(v89 + v91 + 23);
      }

      else
      {
        v100 = *(v89 + v91 + 8);
      }

      std::string::append(a9, v99, v100);
      std::string::append(a9, " [[buffer(", 0xAuLL);
      std::to_string(&v128, v88 + v92);
      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = &v128;
      }

      else
      {
        v101 = v128.__r_.__value_.__r.__words[0];
      }

      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v102 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v102 = v128.__r_.__value_.__l.__size_;
      }

      std::string::append(a9, v101, v102);
      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }

      std::string::append(a9, ")]]", 3uLL);
      if (0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3) + ((v93[1] - *v93) >> 4) - 1 <= v88 + v92)
      {
        if (a10[1] == *a10)
        {
          v103 = ") {\n";
        }

        else
        {
          v103 = v90;
        }

        if (a10[1] == *a10)
        {
          v104 = 4;
        }

        else
        {
          v104 = 2;
        }
      }

      else
      {
        v103 = v90;
        v104 = 2;
      }

      std::string::append(a9, v103, v104);
      if (SHIBYTE(v131) < 0)
      {
        operator delete(v129);
      }

      ++v92;
      v89 = *a6;
      v91 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3) > v92);
  }

  v105 = *a10;
  v106 = a10[1];
  if (*a10 != v106)
  {
    v107 = 0;
    do
    {
      v108 = *(v105 + 23);
      if (v108 >= 0)
      {
        v109 = v105;
      }

      else
      {
        v109 = *v105;
      }

      if (v108 >= 0)
      {
        v110 = *(v105 + 23);
      }

      else
      {
        v110 = *(v105 + 8);
      }

      std::string::append(a9, v109, v110);
      if (-1 - 0x5555555555555555 * ((a10[1] - *a10) >> 3) <= v107)
      {
        v111 = ") {\n";
      }

      else
      {
        v111 = v90;
      }

      if (-1 - 0x5555555555555555 * ((a10[1] - *a10) >> 3) <= v107)
      {
        v112 = 4;
      }

      else
      {
        v112 = 2;
      }

      std::string::append(a9, v111, v112);
      ++v107;
      v105 += 24;
    }

    while (v105 != v106);
  }

  v113 = *(a3 + 23);
  if (v113 >= 0)
  {
    v114 = a3;
  }

  else
  {
    v114 = *a3;
  }

  if (v113 >= 0)
  {
    v115 = *(a3 + 23);
  }

  else
  {
    v115 = *(a3 + 8);
  }

  std::string::append(a9, v114, v115);
  return std::string::append(a9, "\n}\n", 3uLL);
}

void sub_25A35C4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 + 23) < 0)
  {
    operator delete(*v46);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::fast::write_template@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "<", 1);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, ", ", 2);
      }

      v7 = *(v4 + 32);
      switch(v7)
      {
        case 2:
          mlx::core::get_type_string(*(v4 + 24), __p);
          if ((v12 & 0x80u) == 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          if ((v12 & 0x80u) == 0)
          {
            v9 = v12;
          }

          else
          {
            v9 = __p[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v8, v9);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }

          break;
        case 1:
          MEMORY[0x25F851330](&v13, *(v4 + 24));
          break;
        case 0:
          MEMORY[0x25F851360](&v13, *(v4 + 24));
          break;
      }

      v4 += 40;
      --v6;
    }

    while (v4 != v5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, ">", 1);
  std::ostringstream::str[abi:ne200100](&v13, a2);
  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x25F8516C0](&v17);
}

void mlx::core::fast::metal_kernel(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v166[0] = *MEMORY[0x277D85DE8];
  if (*a3 == a3[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[metal_kernel] Must specify at least one output.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v8 = a4;
  __src[0] = 0;
  __src[1] = 0;
  v144 = 0;
  v9 = *a2;
  v124 = a2[1];
  if (*a2 == v124)
  {
LABEL_138:
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[36],char const(&)[5],0>(&v146, "dispatch_quadgroups_per_threadgroup", "uint");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[36],char const(&)[5],0>(v147, "dispatch_simdgroups_per_threadgroup", "uint");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[33],char const(&)[6],0>(v148, "dispatch_threads_per_threadgroup", "uint3");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[6],0>(v149, "grid_origin", "uint3");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[6],0>(v150, "grid_size", "uint3");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[31],char const(&)[5],0>(v151, "quadgroup_index_in_threadgroup", "uint");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[27],char const(&)[5],0>(v152, "quadgroups_per_threadgroup", "uint");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[31],char const(&)[5],0>(v153, "simdgroup_index_in_threadgroup", "uint");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[27],char const(&)[5],0>(v154, "simdgroups_per_threadgroup", "uint");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[5],0>(v155, "thread_execution_width", "uint");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[26],char const(&)[5],0>(v156, "thread_index_in_quadgroup", "uint");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[26],char const(&)[5],0>(v157, "thread_index_in_simdgroup", "uint");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[28],char const(&)[5],0>(v158, "thread_index_in_threadgroup", "uint");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[24],char const(&)[6],0>(v159, "thread_position_in_grid", "uint3");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[31],char const(&)[6],0>(v160, "thread_position_in_threadgroup", "uint3");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[29],char const(&)[6],0>(v161, "threadgroup_position_in_grid", "uint3");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[6],0>(v162, "threadgroups_per_grid", "uint3");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[17],char const(&)[6],0>(v163, "threads_per_grid", "uint3");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[5],0>(v164, "threads_per_simdgroup", "uint");
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[24],char const(&)[6],0>(v165, "threads_per_threadgroup", "uint3");
    v140 = 0;
    v141 = 0;
    v142 = 0;
    std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(&v140, &v146, v166, 0x14uLL);
    v72 = 120;
    do
    {
      v73 = &(&v146.__first_)[v72];
      if (*(&v146 + v72 * 8 - 1) < 0)
      {
        operator delete(*(v73 - 3));
      }

      if (*(v73 - 25) < 0)
      {
        operator delete(*(v73 - 6));
      }

      v72 -= 6;
    }

    while (v72 * 8);
    v139 = 0;
    v138 = 0u;
    v74 = v140;
    for (i = v141; v74 != i; v74 += 48)
    {
      v76 = *(v8 + 23);
      if ((v76 & 0x80u) == 0)
      {
        v77 = v8;
      }

      else
      {
        v77 = *v8;
      }

      if ((v76 & 0x80u) != 0)
      {
        v76 = *(v8 + 8);
      }

      v78 = v74[23];
      if (v78 >= 0)
      {
        v79 = v74;
      }

      else
      {
        v79 = *v74;
      }

      if (v78 >= 0)
      {
        v80 = v74[23];
      }

      else
      {
        v80 = *(v74 + 1);
      }

      if (!v80)
      {
        goto LABEL_166;
      }

      if (v76 >= v80)
      {
        v81 = &v77[v76];
        v82 = *v79;
        v83 = v77;
        while (1)
        {
          v84 = v76 - v80;
          if (v84 == -1)
          {
            goto LABEL_199;
          }

          v85 = memchr(v83, v82, v84 + 1);
          if (!v85)
          {
            goto LABEL_199;
          }

          v86 = v85;
          if (!memcmp(v85, v79, v80))
          {
            break;
          }

          v83 = (v86 + 1);
          v76 = v81 - (v86 + 1);
          if (v76 < v80)
          {
            goto LABEL_199;
          }
        }

        if (v86 != v81 && v86 - v77 != -1)
        {
LABEL_166:
          std::operator+<char>();
          v87 = std::string::append(&v133, " ", 1uLL);
          v88 = *&v87->__r_.__value_.__l.__data_;
          v134.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
          *&v134.__r_.__value_.__l.__data_ = v88;
          v87->__r_.__value_.__l.__size_ = 0;
          v87->__r_.__value_.__r.__words[2] = 0;
          v87->__r_.__value_.__r.__words[0] = 0;
          v89 = v74[23];
          if (v89 >= 0)
          {
            v90 = v74;
          }

          else
          {
            v90 = *v74;
          }

          if (v89 >= 0)
          {
            v91 = v74[23];
          }

          else
          {
            v91 = *(v74 + 1);
          }

          v92 = std::string::append(&v134, v90, v91);
          v93 = *&v92->__r_.__value_.__l.__data_;
          v135.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
          *&v135.__r_.__value_.__l.__data_ = v93;
          v92->__r_.__value_.__l.__size_ = 0;
          v92->__r_.__value_.__r.__words[2] = 0;
          v92->__r_.__value_.__r.__words[0] = 0;
          v94 = std::string::append(&v135, " [[", 3uLL);
          v95 = *&v94->__r_.__value_.__l.__data_;
          v136.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
          *&v136.__r_.__value_.__l.__data_ = v95;
          v94->__r_.__value_.__l.__size_ = 0;
          v94->__r_.__value_.__r.__words[2] = 0;
          v94->__r_.__value_.__r.__words[0] = 0;
          v96 = v74[23];
          if (v96 >= 0)
          {
            v97 = v74;
          }

          else
          {
            v97 = *v74;
          }

          if (v96 >= 0)
          {
            v98 = v74[23];
          }

          else
          {
            v98 = *(v74 + 1);
          }

          v99 = std::string::append(&v136, v97, v98);
          v100 = *&v99->__r_.__value_.__l.__data_;
          v137.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
          *&v137.__r_.__value_.__l.__data_ = v100;
          v99->__r_.__value_.__l.__size_ = 0;
          v99->__r_.__value_.__r.__words[2] = 0;
          v99->__r_.__value_.__r.__words[0] = 0;
          v101 = std::string::append(&v137, "]]", 2uLL);
          v102 = v101->__r_.__value_.__r.__words[0];
          v145[0] = v101->__r_.__value_.__l.__size_;
          *(v145 + 7) = *(&v101->__r_.__value_.__r.__words[1] + 7);
          v103 = HIBYTE(v101->__r_.__value_.__r.__words[2]);
          v101->__r_.__value_.__l.__size_ = 0;
          v101->__r_.__value_.__r.__words[2] = 0;
          v101->__r_.__value_.__r.__words[0] = 0;
          v104 = *(&v138 + 1);
          if (*(&v138 + 1) >= v139)
          {
            v107 = 0xAAAAAAAAAAAAAAABLL * ((*(&v138 + 1) - v138) >> 3);
            v108 = v107 + 1;
            if (v107 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v139 - v138) >> 3) > v108)
            {
              v108 = 0x5555555555555556 * ((v139 - v138) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v139 - v138) >> 3) >= 0x555555555555555)
            {
              v109 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v109 = v108;
            }

            v146.__end_cap_.__value_ = &v138;
            if (v109)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v138, v109);
            }

            v110 = 8 * ((*(&v138 + 1) - v138) >> 3);
            v111 = v145[0];
            *v110 = v102;
            *(v110 + 8) = v111;
            *(v110 + 15) = *(v145 + 7);
            *(v110 + 23) = v103;
            v145[0] = 0;
            *(v145 + 7) = 0;
            v106 = 24 * v107 + 24;
            v112 = (v110 - (*(&v138 + 1) - v138));
            memcpy(v112, v138, *(&v138 + 1) - v138);
            v113 = v138;
            v114 = v139;
            *&v138 = v112;
            *(&v138 + 1) = v106;
            v139 = 0;
            v146.__end_ = v113;
            v146.__end_cap_.__value_ = v114;
            v146.__first_ = v113;
            v146.__begin_ = v113;
            std::__split_buffer<std::string>::~__split_buffer(&v146);
          }

          else
          {
            v105 = v145[0];
            **(&v138 + 1) = v102;
            *(v104 + 8) = v105;
            *(v104 + 15) = *(v145 + 7);
            *(v104 + 23) = v103;
            v145[0] = 0;
            *(v145 + 7) = 0;
            v106 = v104 + 24;
          }

          *(&v138 + 1) = v106;
          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v136.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v135.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v134.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v133.__r_.__value_.__l.__data_);
          }
        }
      }

LABEL_199:
      ;
    }

    __src[1] = 0;
    v144 = 0;
    __src[0] = 0;
    v139 = 0;
    v138 = 0uLL;
    memset(v126, 0, sizeof(v126));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v126, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    memset(v127, 0, sizeof(v127));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v127, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v128, *a1, *(a1 + 8));
    }

    else
    {
      v128 = *a1;
    }

    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v129, *a5, *(a5 + 8));
    }

    else
    {
      v129 = *a5;
    }

    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 8));
    }

    else
    {
      __p = *v8;
    }

    v131 = a7;
    v132 = a6;
    *(a8 + 24) = 0;
    operator new();
  }

  while (1)
  {
    if (*(v9 + 23) >= 0)
    {
      v10 = *(v9 + 23);
    }

    else
    {
      v10 = *(v9 + 8);
    }

    std::string::basic_string[abi:ne200100](&v146, v10 + 6);
    if (SHIBYTE(v146.__end_) >= 0)
    {
      first = &v146;
    }

    else
    {
      first = v146.__first_;
    }

    if (v10)
    {
      if (*(v9 + 23) >= 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = *v9;
      }

      memmove(first, v12, v10);
    }

    strcpy(first + v10, "_shape");
    v13 = *(v8 + 23);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = *v8;
    }

    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v8 + 8);
    }

    end_high = SHIBYTE(v146.__end_);
    v16 = v146.__first_;
    v17 = SHIBYTE(v146.__end_) >= 0 ? &v146 : v146.__first_;
    v18 = SHIBYTE(v146.__end_) >= 0 ? HIBYTE(v146.__end_) : v146.__begin_;
    if (!v18)
    {
      break;
    }

    v19 = &v14[v13];
    if (v13 >= v18)
    {
      first_low = SLOBYTE(v17->__first_);
      v23 = v14;
      do
      {
        v24 = v13 - v18;
        if (v24 == -1)
        {
          break;
        }

        v25 = memchr(v23, first_low, v24 + 1);
        if (!v25)
        {
          break;
        }

        v20 = v25;
        if (!memcmp(v25, v17, v18))
        {
          goto LABEL_36;
        }

        v23 = (v20 + 1);
        v13 = v19 - (v20 + 1);
      }

      while (v13 >= v18);
      v20 = v19;
    }

    else
    {
      v20 = &v14[v13];
    }

LABEL_36:
    v21 = v20 != v19 && v20 - v14 != -1;
    if (end_high < 0)
    {
      goto LABEL_43;
    }

LABEL_44:
    if (*(v9 + 23) >= 0)
    {
      v27 = *(v9 + 23);
    }

    else
    {
      v27 = *(v9 + 8);
    }

    std::string::basic_string[abi:ne200100](&v146, v27 + 8);
    v125 = v21;
    if (SHIBYTE(v146.__end_) >= 0)
    {
      v28 = &v146;
    }

    else
    {
      v28 = v146.__first_;
    }

    if (v27)
    {
      if (*(v9 + 23) >= 0)
      {
        v29 = v9;
      }

      else
      {
        v29 = *v9;
      }

      memmove(v28, v29, v27);
    }

    strcpy(v28 + v27, "_strides");
    v30 = *(v8 + 23);
    if ((v30 & 0x80u) == 0)
    {
      v31 = v8;
    }

    else
    {
      v31 = *v8;
    }

    if ((v30 & 0x80u) != 0)
    {
      v30 = *(v8 + 8);
    }

    v32 = SHIBYTE(v146.__end_);
    v33 = v146.__first_;
    if (SHIBYTE(v146.__end_) >= 0)
    {
      v34 = &v146;
    }

    else
    {
      v34 = v146.__first_;
    }

    if (SHIBYTE(v146.__end_) >= 0)
    {
      begin = HIBYTE(v146.__end_);
    }

    else
    {
      begin = v146.__begin_;
    }

    if (!begin)
    {
      v38 = 1;
      if ((SHIBYTE(v146.__end_) & 0x80000000) == 0)
      {
        goto LABEL_85;
      }

LABEL_84:
      operator delete(v33);
      goto LABEL_85;
    }

    v36 = &v31[v30];
    if (v30 >= begin)
    {
      v39 = *v34;
      v40 = v31;
      do
      {
        v41 = v30 - begin;
        if (v41 == -1)
        {
          break;
        }

        v42 = memchr(v40, v39, v41 + 1);
        if (!v42)
        {
          break;
        }

        v37 = v42;
        if (!memcmp(v42, v34, begin))
        {
          goto LABEL_77;
        }

        v40 = (v37 + 1);
        v30 = v36 - (v37 + 1);
      }

      while (v30 >= begin);
      v37 = v36;
    }

    else
    {
      v37 = &v31[v30];
    }

LABEL_77:
    v38 = v37 != v36 && v37 - v31 != -1;
    if (v32 < 0)
    {
      goto LABEL_84;
    }

LABEL_85:
    if (*(v9 + 23) >= 0)
    {
      v44 = *(v9 + 23);
    }

    else
    {
      v44 = *(v9 + 8);
    }

    std::string::basic_string[abi:ne200100](&v146, v44 + 5);
    if (SHIBYTE(v146.__end_) >= 0)
    {
      v45 = &v146;
    }

    else
    {
      v45 = v146.__first_;
    }

    if (v44)
    {
      if (*(v9 + 23) >= 0)
      {
        v46 = v9;
      }

      else
      {
        v46 = *v9;
      }

      memmove(v45, v46, v44);
    }

    strcpy(v45 + v44, "_ndim");
    v47 = *(v8 + 23);
    if ((v47 & 0x80u) == 0)
    {
      v48 = v8;
    }

    else
    {
      v48 = *v8;
    }

    if ((v47 & 0x80u) != 0)
    {
      v47 = *(v8 + 8);
    }

    v49 = SHIBYTE(v146.__end_);
    v50 = v146.__first_;
    if (SHIBYTE(v146.__end_) >= 0)
    {
      v51 = &v146;
    }

    else
    {
      v51 = v146.__first_;
    }

    if (SHIBYTE(v146.__end_) >= 0)
    {
      v52 = HIBYTE(v146.__end_);
    }

    else
    {
      v52 = v146.__begin_;
    }

    if (v52)
    {
      v53 = v38;
      v54 = &v48[v47];
      if (v47 >= v52)
      {
        v58 = *v51;
        v59 = v48;
        do
        {
          v60 = v47 - v52;
          if (v60 == -1)
          {
            break;
          }

          v61 = memchr(v59, v58, v60 + 1);
          if (!v61)
          {
            break;
          }

          v55 = v61;
          if (!memcmp(v61, v51, v52))
          {
            goto LABEL_118;
          }

          v59 = (v55 + 1);
          v47 = v54 - (v55 + 1);
        }

        while (v47 >= v52);
        v55 = v54;
      }

      else
      {
        v55 = &v48[v47];
      }

LABEL_118:
      v56 = v55 != v54 && v55 - v48 != -1;
      v57 = v125;
      v38 = v53;
      v8 = a4;
      if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_126;
      }

LABEL_125:
      operator delete(v50);
      goto LABEL_126;
    }

    v56 = 1;
    v57 = v125;
    if (SHIBYTE(v146.__end_) < 0)
    {
      goto LABEL_125;
    }

LABEL_126:
    v63 = __src[1];
    if (__src[1] >= v144)
    {
      v65 = __src[0];
      v66 = __src[1] - __src[0];
      v67 = 0xAAAAAAAAAAAAAAABLL * (__src[1] - __src[0]);
      v68 = v67 + 1;
      if (v67 + 1 >= 0x5555555555555556)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * (v144 - __src[0]) > v68)
      {
        v68 = 0x5555555555555556 * (v144 - __src[0]);
      }

      if (0xAAAAAAAAAAAAAAABLL * (v144 - __src[0]) >= 0x2AAAAAAAAAAAAAAALL)
      {
        v68 = 0x5555555555555555;
      }

      if (v68)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::fast::CustomKernelShapeInfo>>(__src, v68);
      }

      v69 = (__src[1] - __src[0]);
      *v69 = v57;
      v69[1] = v38;
      v69[2] = v56;
      v64 = (3 * v67 + 3);
      v70 = &v69[-v66];
      memcpy(&v69[-v66], v65, v66);
      v71 = __src[0];
      __src[0] = v70;
      __src[1] = v64;
      v144 = 0;
      if (v71)
      {
        operator delete(v71);
      }
    }

    else
    {
      *__src[1] = v57;
      v63[1] = v38;
      v64 = v63 + 3;
      v63[2] = v56;
    }

    __src[1] = v64;
    v9 += 24;
    if (v9 == v124)
    {
      goto LABEL_138;
    }
  }

  v21 = 1;
  if ((SHIBYTE(v146.__end_) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_43:
  operator delete(v16);
  goto LABEL_44;
}

void sub_25A35D71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v72 + 151) < 0)
  {
    operator delete(*(v72 + 128));
  }

  if (*(v72 + 127) < 0)
  {
    operator delete(*(v72 + 104));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a72);
  v74 = *(v72 + 8);
  if (v74)
  {
    *(v72 + 16) = v74;
    operator delete(v74);
  }

  operator delete(v72);
  mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0::~$_0(&a19);
  a57 = &a61;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a57);
  a61 = &a64;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a61);
  if (__p)
  {
    a68 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v4 = (a1 + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void mlx::core::fast::ScaledDotProductAttention::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::ScaledDotProductAttention::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A35DB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fast::ScaledDotProductAttention::~ScaledDotProductAttention(mlx::core::fast::ScaledDotProductAttention *this)
{
  *this = &unk_286BF2220;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286BF2220;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

void *std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<std::vector<mlx::core::array>&,std::vector<int>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_25A35DC9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::slice(const void ***a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, mlx::core *a6@<X5>, uint64_t a7@<X6>, int ***a8@<X8>)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v18, a2, a2 + 4 * a3, a3);
  *v16 = *a4;
  v17 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *__p = *a5;
  v15 = *(a5 + 16);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  mlx::core::slice(a1, &v18, v16, __p, a6, a7, a8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_25A35DDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::slice(&a13, &a16, (v16 | 8));
  _Unwind_Resume(a1);
}

void mlx::core::fast::rope(std::vector<mlx::core::array>,int,BOOL,float,float,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator() const(std::vector<mlx::core::array>)::{lambda(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array const&)#1}::operator()(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (*a1 == 1)
  {
    mlx::core::multiply(a2, a4, *(a1 + 4), *(a1 + 12));
  }

  mlx::core::multiply(a3, a5, *(a1 + 4), *(a1 + 12));
}

void sub_25A35E244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  std::__split_buffer<mlx::core::array>::~__split_buffer(&a16);
  mlx::core::array::~array(&a13);
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN3mlx4core5arrayES5_S5_EEC2B8ne200100IJLm0ELm1ELm2EEJS5_S5_S5_EJEJEJRS5_S8_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(void *result, void *a2, void *a3, void *a4)
{
  v4 = a2[1];
  *result = *a2;
  result[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  result[2] = *a3;
  result[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[4] = *a4;
  result[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::fast::CustomKernelShapeInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[36],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E3AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[33],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E400(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E454(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E4A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[31],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E4FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[27],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E550(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E5A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[26],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E5F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[28],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E64C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[24],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E6A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[31],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E6F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[29],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E79C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[17],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E7F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_25A35E844(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A35E8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*,std::pair<std::string,std::string>*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::pair<std::string,std::string>::pair[abi:ne200100](this, v6);
      v6 += 3;
      this += 2;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_25A35E9EC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      v4 -= 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_25A35EA8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100]<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>>>(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return result;
}

void *std::__function::__func<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BF2298;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BF2298;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void std::__function::__func<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  memset(v4, 0, sizeof(v4));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v4, *a2, a2[1], (a2[1] - *a2) >> 4);
  v3 = *(a1 + 32);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, v4);
  v5 = v4;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_25A35EDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlx::core::fast::rms_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::rms_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF2378;
  result = *(a1 + 8);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlx::core::fast::rms_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::rms_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlx::core::fast::RMSNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::fast::RMSNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF2408;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlx::core::fast::RMSNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::fast::RMSNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::operator()(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  mlx::core::square(v3, *(a1 + 12), *(a1 + 20) | 0x100000000);
}

void sub_25A35F640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23)
{
  std::__split_buffer<mlx::core::array>::~__split_buffer(v23 - 80);
  mlx::core::array::~array(&a17);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  mlx::core::array::~array(&a21);
  mlx::core::array::~array(&a23);
  mlx::core::array::~array((v23 - 96));
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::fast::RMSNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::fast::RMSNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlx::core::fast::layer_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::layer_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF2488;
  result = *(a1 + 8);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlx::core::fast::layer_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::layer_norm(mlx::core::array const&,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&,float,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlx::core::fast::LayerNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::fast::LayerNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF2508;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlx::core::fast::LayerNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::fast::LayerNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::operator()(uint64_t a1@<X0>, mlx::core::detail::InTracing **a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = -1;
  memset(v5, 0, sizeof(v5));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v5, &v6, &v7, 1uLL);
  mlx::core::number_of_elements(v4, v5, 1, *(*v4 + 56) & 0xFFFFFFFFFFLL, *(a1 + 12), *(a1 + 20) | 0x100000000);
}

void sub_25A3602CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35)
{
  std::__split_buffer<mlx::core::array>::~__split_buffer(v35 - 88);
  mlx::core::array::~array(&a13);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  mlx::core::array::~array(&a21);
  mlx::core::array::~array(&a23);
  mlx::core::array::~array(&a25);
  mlx::core::array::~array(&a27);
  mlx::core::array::~array(&a29);
  mlx::core::array::~array(&a31);
  mlx::core::array::~array(&a33);
  mlx::core::array::~array(&a35);
  mlx::core::array::~array((v35 - 192));
  mlx::core::array::~array((v35 - 176));
  mlx::core::array::~array((v35 - 160));
  mlx::core::array::~array((v35 - 144));
  mlx::core::array::~array((v35 - 104));
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_25A3604F0()
{
  v1 = *(v0 - 128);
  if (v1)
  {
    *(v0 - 120) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x25A3603F4);
}

uint64_t std::__function::__func<mlx::core::fast::LayerNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::fast::LayerNorm::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlx::core::fast::rope(std::vector<mlx::core::array>,int,BOOL,float,float,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::rope(std::vector<mlx::core::array>,int,BOOL,float,float,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF2588;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlx::core::fast::rope(std::vector<mlx::core::array>,int,BOOL,float,float,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::rope(std::vector<mlx::core::array>,int,BOOL,float,float,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  mlx::core::fast::rope(std::vector<mlx::core::array>,int,BOOL,float,float,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()((a1 + 8), &v2);
}

void sub_25A360678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::fast::rope(std::vector<mlx::core::array>,int,BOOL,float,float,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::rope(std::vector<mlx::core::array>,int,BOOL,float,float,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlx::core::fast::RoPE::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::fast::RoPE::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF2608;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlx::core::fast::RoPE::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::fast::RoPE::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::operator()(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 2);
  v3 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v7 = v3;
  v8 = v2;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  mlx::core::fast::rope(&v7, *(a1 + 8), *(a1 + 12), (*(a1 + 24) & 1) == 0, *(a1 + 28), *(a1 + 36) | 0x100000000, *(a1 + 16), *(a1 + 20));
}

void sub_25A360880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array((v13 - 40));
  *(v13 - 48) = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v13 - 48));
  *(v13 - 40) = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::fast::RoPE::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::fast::RoPE::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlx::core::fast::scaled_dot_product_attention(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,float,std::string const&,std::vector<mlx::core::array> const&,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::scaled_dot_product_attention(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,float,std::string const&,std::vector<mlx::core::array> const&,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF2688;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlx::core::fast::scaled_dot_product_attention(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,float,std::string const&,std::vector<mlx::core::array> const&,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::scaled_dot_product_attention(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,float,std::string const&,std::vector<mlx::core::array> const&,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlx::core::fast::affine_quantize(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_quantize(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF2708;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlx::core::fast::affine_quantize(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_quantize(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::operator()(uint64_t a1, uint64_t ***a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = **a2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v3, *v2, v2[1], (v2[1] - *v2) >> 2);
  *(v4 - 4) = -1;
  mlx::core::array::array<int>();
}

void sub_25A361208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39)
{
  v42 = -48;
  v43 = v39;
  do
  {
    mlx::core::array::~array(v43);
    v43 = (v44 - 16);
    v42 += 16;
  }

  while (v42);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  mlx::core::array::~array(&a23);
  mlx::core::array::~array(&a25);
  mlx::core::array::~array(&a27);
  mlx::core::array::~array(&a29);
  mlx::core::array::~array(&a31);
  mlx::core::array::~array(&a37);
  mlx::core::array::~array(&a39);
  mlx::core::array::~array((v40 - 208));
  mlx::core::array::~array((v40 - 184));
  mlx::core::array::~array((v40 - 168));
  mlx::core::array::~array((v40 - 152));
  v45 = *(v40 - 136);
  if (v45)
  {
    *(v40 - 128) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::fast::affine_quantize(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_quantize(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__func(void *a1)
{
  *a1 = &unk_286BF2788;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__func(void *a1)
{
  *a1 = &unk_286BF2788;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void sub_25A361624(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF2788;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 8, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 32, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 2);
  result = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 56) = result;
  *(a2 + 72) = v5;
  return result;
}

void sub_25A3616E4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t std::__function::__func<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0,std::allocator<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BF2808;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v4 = (a1 + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0,std::allocator<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::~__func(uint64_t a1)
{
  std::__function::__func<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0,std::allocator<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::~__func(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0,std::allocator<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF2808;
  result = mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0::$_0(a2 + 8, a1 + 8);
  *(a2 + 182) = 0;
  *(a2 + 178) = 0;
  return result;
}

void std::__function::__func<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0,std::allocator<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::destroy(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0,std::allocator<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  operator delete(a1);
}

void std::__function::__func<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0,std::allocator<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::operator()(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, unsigned __int8 *a9, uint64_t a10)
{
  v12 = *(a5 + 2);
  v13 = *a6;
  v14 = *(a6 + 8);
  v15 = *a8;
  v16 = *a9;
  v17 = *a10;
  v18 = *(a10 + 8);
  v85 = *a5;
  v86 = v12;
  v83[33] = v15;
  v83[34] = v13;
  v84 = v14;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 3) == (a2[1] - *a2) >> 4)
  {
    v20 = a3[1] - *a3;
    if (v20 == *(a1 + 88) - *(a1 + 80))
    {
      if (0xAAAAAAAAAAAAAAABLL * (v20 >> 3) == (a4[1] - *a4) >> 3)
      {
        v81 = mlx::core::to_stream(v17, v18);
        v82 = v23;
        v83[0] = 1;
        if (!mlx::core::operator!=(&v81 + 1, v83))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](v83);
          std::string::basic_string[abi:ne200100]<0>(__p, "");
          std::string::basic_string[abi:ne200100]<0>(v77, "");
          if (*a7 != a7[1])
          {
            std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v76, "\\<|\\>|(,)", 0);
          }

          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "custom_kernel_", 14);
          v25 = *(a1 + 104);
          v26 = *(a1 + 127);
          if (v26 >= 0)
          {
            v27 = a1 + 104;
          }

          else
          {
            v27 = *(a1 + 104);
          }

          if (v26 >= 0)
          {
            v28 = *(a1 + 127);
          }

          else
          {
            v28 = *(a1 + 112);
          }

          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v27, v28);
          if ((v78 & 0x80u) == 0)
          {
            v30 = v77;
          }

          else
          {
            v30 = v77[0];
          }

          if ((v78 & 0x80u) == 0)
          {
            v31 = v78;
          }

          else
          {
            v31 = v77[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
          std::ostringstream::str[abi:ne200100](v83, v76);
          if (SHIBYTE(v76[0].__col_) < 0)
          {
            std::string::__init_copy_ctor_external(&v74, v76[0].__loc_.__locale_, v76[0].__ct_);
          }

          else
          {
            v74 = v76[0];
          }

          mlx::core::fast::write_signature(&v74, a1 + 128, a1 + 152, (a1 + 56), a2, (a1 + 80), a4, a7, &v75, (a1 + 32), (a1 + 8), *(a1 + 176));
          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
          }

          if (*a7 != a7[1])
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v76[0].__loc_.__locale_, __p, v72);
            if (SHIBYTE(v80) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = *&v72[0].__locale_;
            v80 = v73;
            std::string::append(&v75, "\ntemplate [[host_name(", 0x17uLL);
            if (SHIBYTE(v76[0].__col_) >= 0)
            {
              locale = v76;
            }

            else
            {
              locale = v76[0].__loc_.__locale_;
            }

            if (SHIBYTE(v76[0].__col_) >= 0)
            {
              col_high = HIBYTE(v76[0].__col_);
            }

            else
            {
              col_high = v76[0].__ct_;
            }

            std::string::append(&v75, locale, col_high);
            std::string::append(&v75, ")]] [[kernel]] decltype(", 0x19uLL);
            if (v80 >= 0)
            {
              v34 = __p;
            }

            else
            {
              v34 = __p[0];
            }

            if (v80 >= 0)
            {
              v35 = HIBYTE(v80);
            }

            else
            {
              v35 = __p[1];
            }

            std::string::append(&v75, v34, v35);
            std::string::append(&v75, ") ", 2uLL);
            if (v80 >= 0)
            {
              v36 = __p;
            }

            else
            {
              v36 = __p[0];
            }

            if (v80 >= 0)
            {
              v37 = HIBYTE(v80);
            }

            else
            {
              v37 = __p[1];
            }

            std::string::append(&v75, v36, v37);
            std::string::append(&v75, ";\n", 2uLL);
          }

          if (v16)
          {
            v39 = *(a1 + 127);
            if (v39 >= 0)
            {
              v40 = a1 + 104;
            }

            else
            {
              v40 = *(a1 + 104);
            }

            if (v39 >= 0)
            {
              v41 = *(a1 + 127);
            }

            else
            {
              v41 = *(a1 + 112);
            }

            v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
            std::ios_base::getloc((v43 + *(*v43 - 24)));
            v44 = std::locale::use_facet(v72, MEMORY[0x277D82680]);
            (v44->__vftable[2].~facet_0)(v44, 10);
            std::locale::~locale(v72);
            std::ostream::put();
            std::ostream::flush();
            std::ios_base::getloc((v45 + *(*v45 - 24)));
            v46 = std::locale::use_facet(v72, MEMORY[0x277D82680]);
            (v46->__vftable[2].~facet_0)(v46, 10);
            std::locale::~locale(v72);
            std::ostream::put();
            std::ostream::flush();
            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v47 = &v75;
            }

            else
            {
              v47 = v75.__r_.__value_.__r.__words[0];
            }

            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v75.__r_.__value_.__l.__size_;
            }

            v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v47, size);
            std::ios_base::getloc((v49 + *(*v49 - 24)));
            v50 = std::locale::use_facet(v72, MEMORY[0x277D82680]);
            (v50->__vftable[2].~facet_0)(v50, 10);
            std::locale::~locale(v72);
            std::ostream::put();
            std::ostream::flush();
            std::ios_base::getloc((v51 + *(*v51 - 24)));
            v52 = std::locale::use_facet(v72, MEMORY[0x277D82680]);
            (v52->__vftable[2].~facet_0)(v52, 10);
            std::locale::~locale(v72);
            std::ostream::put();
            std::ostream::flush();
          }

          v72[0].__locale_ = 0;
          v72[1].__locale_ = 0;
          v73 = 0;
          std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v72, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
          std::allocate_shared[abi:ne200100]<mlx::core::fast::CustomKernel,std::allocator<mlx::core::fast::CustomKernel>,mlx::core::Stream &,std::string,std::string,std::tuple<int,int,int> &,std::tuple<int,int,int> &,std::vector<mlx::core::fast::CustomKernelShapeInfo> const&,BOOL const&,std::optional<float> &,0>();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "[metal_kernel] Only supports the GPU.");
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](v83);
      v66 = MEMORY[0x25F851380](v65, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 3));
      v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, " but got size ", 14);
      v68 = MEMORY[0x25F851380](v67, (a4[1] - *a4) >> 3);
      v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ".", 1);
      std::endl[abi:ne200100]<char,std::char_traits<char>>(v69);
      v70 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v83, v76);
      std::logic_error::logic_error(v70, v76);
      v70->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v70, off_279921408, MEMORY[0x277D82610]);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v83);
    v60 = MEMORY[0x25F851380](v59, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 3));
    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " but got size ", 14);
    v62 = MEMORY[0x25F851380](v61, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, ".", 1);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v63);
    v64 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v83, v76);
    std::logic_error::logic_error(v64, v76);
    v64->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v64, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v83);
  v54 = MEMORY[0x25F851380](v53, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 3));
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " but got size ", 14);
  v56 = MEMORY[0x25F851380](v55, (a2[1] - *a2) >> 4);
  v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ".", 1);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v57);
  v58 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v83, v76);
  std::logic_error::logic_error(v58, v76);
  v58->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v58, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A36261C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::locale a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v60 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a59);
      _Unwind_Resume(a1);
    }
  }

  else if (!v60)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v59);
  goto LABEL_6;
}

uint64_t std::__function::__func<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0,std::allocator<mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::fast::metal_kernel(std::string const&,std::vector<std::string> const&,std::vector<std::string> const&,std::string const&,std::string const&,BOOL,BOOL)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<mlx::core::fast::CustomKernelShapeInfo>::__init_with_size[abi:ne200100]<mlx::core::fast::CustomKernelShapeInfo*,mlx::core::fast::CustomKernelShapeInfo*>(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * (*(a2 + 8) - *a2));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 24, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 48, *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 72, *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v4 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v4;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v5 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v5;
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v6 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v6;
  }

  *(a1 + 168) = *(a2 + 168);
  return a1;
}

void sub_25A362930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 143) < 0)
  {
    operator delete(*(v2 + 120));
  }

  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<mlx::core::fast::CustomKernelShapeInfo>::__init_with_size[abi:ne200100]<mlx::core::fast::CustomKernelShapeInfo*,mlx::core::fast::CustomKernelShapeInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlx::core::fast::CustomKernelShapeInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A362A18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mlx::core::fast::CustomKernelShapeInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::fast::CustomKernelShapeInfo>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](std::regex_traits<char> *a1, const char *a2, int a3)
{
  v5 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v5[1].__loc_.__locale_) = a3;
  *(&v5[1].__loc_.__locale_ + 4) = 0u;
  *(&v5[1].__col_ + 4) = 0u;
  HIDWORD(v5[2].__ct_) = 0;
  strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

void sub_25A362B34(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x25F8515F0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F851160](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, (v8 + 1), a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    v8 = (v8 + 1);
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = (&v10->__traits_.__loc_.__locale_ + 1);
    }
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F851160](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_25A3634D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25F851760);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x25F851760);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            marked_count = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 1, this->__marked_count_);
            this->__marked_count_ += marked_count;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

            goto LABEL_31;
          }

          if (v11 == 61)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            v13 = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 0, this->__marked_count_);
            this->__marked_count_ += v13;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

LABEL_31:
            v3 = v12 + 1;
            std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v18.__traits_.__loc_);
            return v3;
          }
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v15 = a2[1];
    if (v15 == 66)
    {
      v16 = 1;
    }

    else
    {
      if (v15 != 98)
      {
        return v3;
      }

      v16 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v16);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        p_open_count = &this->__open_count_;
        ++this->__open_count_;
        v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      marked_count = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
LABEL_25:
          --*p_open_count;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(this, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a1, a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v10, v23, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F851160](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_286BF2A90;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_286BF2A90;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:ne200100](uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_286BF2AD8;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_286BF2AD8;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_286BF2AD8;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x25F851760);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 88) & 0xFFF;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * v11;
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_25A364B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<char const*>::__init(std::match_results<const char *> *this, unsigned int __s, const char *__f, const char *__l, BOOL __no_update_pos)
{
  this->__unmatched_.first = __l;
  p_unmatched = &this->__unmatched_;
  this->__unmatched_.second = __l;
  this->__unmatched_.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&this->__matches_, __s, &this->__unmatched_);
  this->__prefix_.first = __f;
  this->__prefix_.second = __f;
  this->__prefix_.matched = 0;
  this->__suffix_ = *p_unmatched;
  if (!__no_update_pos)
  {
    this->__position_start_ = __f;
  }

  this->__ready_ = 1;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_25A364F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v4 = __sz >= v3;
  v5 = __sz - v3;
  if (v5 != 0 && v4)
  {
    std::vector<std::sub_match<char const*>>::__append(this, v5, __x);
  }

  else if (!v4)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append(this, __sz - v2);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F851160](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F851160](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v16);
  return v15;
}

void sub_25A365524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      v8 = v6[10];
      *(a4 + 85) = *(v6 + 85);
      *(a4 + 80) = v8;
      v6 += 12;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v5);
      v5 += 12;
    }
  }
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<std::__state<char>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        v13 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v13;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v8 = v7 + __n;
    if (v7 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v10);
    }

    v14 = 24 * __n;
    v15 = 24 * v7;
    do
    {
      v16 = __x->std::pair<const char *, const char *>;
      *(v15 + 16) = *&__x->matched;
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    begin = this->__begin_;
    v18 = this->__end_;
    v19 = (24 * v7 + this->__begin_ - v18);
    if (v18 != this->__begin_)
    {
      v20 = (24 * v7 + this->__begin_ - v18);
      do
      {
        v21 = begin->std::pair<const char *, const char *>;
        *(v20 + 2) = *&begin->matched;
        *v20 = v21;
        v20 += 24;
        ++begin;
      }

      while (begin != v18);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = (24 * v7 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 16 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = __n + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(this, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * __n);
    v11 = &v10[16 * __n];
    v12 = this->__end_ - this->__begin_;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], this->__begin_, v12);
    begin = this->__begin_;
    this->__begin_ = v13;
    this->__end_ = v11;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A365A34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A365AA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_23;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v5, a3, v7);
        v9 = v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    if (v8 == a3)
    {
      goto LABEL_23;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F851160](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25F851760);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F851160](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      ++v3;
    }

    else if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      if (++v3 != a3)
      {
        while (1)
        {
          v6 = *v3;
          if ((v6 - 48) > 9)
          {
            break;
          }

          if (v5 >= 0x19999999)
          {
            goto LABEL_14;
          }

          v5 = v6 + 10 * v5 - 48;
          if (++v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      if (v5 > a1->__marked_count_)
      {
LABEL_14:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x63)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v6);
    v8 = started->__mask_ | 0x400;
LABEL_18:
    started->__mask_ = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v10);
      v8 = started->__mask_ | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v5);
      v9->__mask_ |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v18 = 13;
          goto LABEL_91;
        }

        v17 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_73;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v18 = 9;
          goto LABEL_91;
        }

        v17 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_99;
        }

        v9 = a2[1];
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_99;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_99;
        }

        v10 = *v4;
        v11 = -48;
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
        {
          v10 |= 0x20u;
          if ((v10 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v11 = -87;
        }

        v6 = 16 * (v11 + v10);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_99;
        }

        v12 = v4[1];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v13 = -87;
        }

        if (v4 + 2 != a3)
        {
          v14 = v4[2];
          v15 = -48;
          if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v14 |= 0x20u;
          if ((v14 - 97) < 6)
          {
            v15 = -87;
LABEL_55:
            v16 = v15 + v14 + 16 * (v13 + v6 + v12);
            if (a4)
            {
              if (*(a4 + 23) < 0)
              {
                a4[1] = 1;
                a4 = *a4;
              }

              else
              {
                *(a4 + 23) = 1;
              }

              *a4 = v16;
              *(a4 + 1) = 0;
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
            }

            v4 += 3;
            return v4;
          }
        }

LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_73:
        v17 = v5;
        if ((v5 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_99;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          *(a4 + 1) = 0;
          return ++v4;
        }

        goto LABEL_78;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 11;
LABEL_91:
        *a4 = v18;
        return ++v4;
      }

      v17 = 11;
    }

LABEL_78:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 12;
        goto LABEL_91;
      }

      v17 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_73;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 10;
        goto LABEL_91;
      }

      v17 = 10;
    }

    goto LABEL_78;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return ++v4;
    }

    v17 = 0;
    goto LABEL_78;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_99;
    }

    goto LABEL_73;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_99;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_99;
  }

  v8 = v7 & 0x1F;
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
}
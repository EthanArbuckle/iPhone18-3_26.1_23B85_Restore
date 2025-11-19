void sub_1001BE9EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *boost::filesystem::path::parent_path@<X0>(boost::filesystem::path *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void *a5@<X8>)
{
  v6 = this;
  if (*(this + 23) < 0)
  {
    v6 = *this;
  }

  parent_path_size = boost::filesystem::path::find_parent_path_size(this, a2, a3, a4);

  return std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a5, v6, &parent_path_size[v6], parent_path_size);
}

boost::filesystem::detail::dir_itr_imp **boost::filesystem::detail::recursive_directory_iterator_construct(void ***a1, std::string *a2, boost::filesystem::path *a3, boost::filesystem::path *a4, boost::system::error_code *a5)
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
  }

  v17 = 0;
  boost::filesystem::detail::directory_iterator_construct(&v17, a2, a3, a4, a5);
  if (!a4 || (v8 = *(a4 + 2), (v8 & 1) == 0) || v8 == 1 && !*a4)
  {
    v18 = 0;
    if (v17 && *(v17 + 6))
    {
      boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v18);
      v16 = 0;
      if (a4)
      {
        v9 = operator new(0x28uLL, &std::nothrow);
        if (v9)
        {
          *v9 = 0;
          v9[2] = 0;
          v9[3] = 0;
          v9[1] = 0;
          *(v9 + 8) = v6;
          v18 = v9;
          atomic_fetch_add(v9, 1u);
          v10 = v9;
          v11 = v16;
        }

        else
        {
          v11 = 0;
          v10 = 0;
        }

        v18 = v11;
        v16 = v10;
        boost::intrusive_ptr<boost::filesystem::detail::recur_dir_itr_imp>::~intrusive_ptr(&v18);
        v13 = v16;
        if (!v16)
        {
          boost::filesystem::detail::directory_iterator_construct(a4);
          goto LABEL_18;
        }
      }

      else
      {
        v12 = operator new(0x28uLL);
        *v12 = 0;
        v12[2] = 0;
        v12[3] = 0;
        v12[1] = 0;
        *(v12 + 8) = v6;
        v18 = v12;
        atomic_fetch_add(v12, 1u);
        v18 = v16;
        v16 = v12;
        boost::intrusive_ptr<boost::filesystem::detail::recur_dir_itr_imp>::~intrusive_ptr(&v18);
        v13 = v16;
      }

      std::vector<boost::filesystem::directory_iterator>::push_back[abi:ne200100](v13 + 1, &v17);
      v14 = *a1;
      *a1 = v16;
      v16 = v14;
LABEL_18:
      boost::intrusive_ptr<boost::filesystem::detail::recur_dir_itr_imp>::~intrusive_ptr(&v16);
      return boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v17);
    }

    boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v18);
  }

  return boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v17);
}

void sub_1001BEBDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  boost::intrusive_ptr<boost::filesystem::detail::recur_dir_itr_imp>::~intrusive_ptr(va);
  boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(va1);
  _Unwind_Resume(a1);
}

void *std::vector<boost::filesystem::directory_iterator>::push_back[abi:ne200100](void *result, void *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
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

    v13[4] = result;
    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<boost::filesystem::directory_iterator>>(result, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[8 * v7];
    v13[0] = v11;
    v13[1] = v12;
    *v12 = *a2;
    *a2 = 0;
    v13[2] = v12 + 8;
    v13[3] = &v11[8 * v10];
    std::vector<boost::filesystem::directory_iterator>::__swap_out_circular_buffer(v3, v13);
    v6 = *(v3 + 8);
    result = std::__split_buffer<boost::filesystem::directory_iterator>::~__split_buffer(v13);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    result[1] = v6;
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_1001BED40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<boost::filesystem::directory_iterator>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double boost::filesystem::detail::recursive_directory_iterator_pop(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  while (1)
  {
    v7 = *(v4 + 16);
    v8 = boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr((v7 - 8));
    *(v4 + 16) = v8;
    if (*(v4 + 8) == v8)
    {
      *&v14 = *a1;
      *a1 = 0;
      boost::intrusive_ptr<boost::filesystem::detail::recur_dir_itr_imp>::~intrusive_ptr(&v14);
      return result;
    }

    v5 = (v7 - 16);
    v14 = 0uLL;
    v15 = 0;
    boost::filesystem::detail::directory_iterator_increment(v5, &v14, v9);
    if ((v15 & 1) != 0 && (v15 != 1 || v14 != 0))
    {
      break;
    }

    *&v12 = 0;
    if (*v5 && *(*v5 + 48))
    {
      boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v12);
      return result;
    }

    boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v12);
  }

  {
    *&v12 = *a1;
    *a1 = 0;
    boost::intrusive_ptr<boost::filesystem::detail::recur_dir_itr_imp>::~intrusive_ptr(&v12);
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v12 = v14;
    v13 = v15;
    boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::recursive_directory_iterator::pop", &v12);
  }

  result = *&v14;
  *a2 = v14;
  a2[2] = v15;
  return result;
}

boost::filesystem::detail::dir_itr_imp **boost::filesystem::detail::anonymous namespace::recursive_directory_iterator_pop_on_error(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    result = boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr((i - 8));
    *(a1 + 16) = result;
    if (*(a1 + 8) == result)
    {
      break;
    }

    v5 = (i - 16);
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    boost::filesystem::detail::directory_iterator_increment(v5, v8, v4);
    if ((v9 & 1) != 0 && (v9 != 1 || LODWORD(v8[0]) != 0))
    {
      continue;
    }

    v7 = 0;
    if (*v5 && *(*v5 + 48))
    {
      return boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v7);
    }

    boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v7);
  }

  return result;
}

double boost::filesystem::detail::recursive_directory_iterator_increment(uint64_t *a1, void *a2, boost::system::error_code *a3)
{
  v5 = *a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v22 = 0uLL;
  v23 = 0;
  v6 = *(v5 + 32);
  if ((v6 & 0x10) != 0)
  {
    *(v5 + 32) = v6 & 0xFFFFFFEF;
    goto LABEL_19;
  }

  if ((*(v5 + 32) & 6) == 2)
  {
    v7 = 0;
    goto LABEL_6;
  }

  boost::filesystem::directory_entry::get_symlink_status((*(*(v5 + 16) - 8) + 8), &v22, &v20);
  v7 = v20;
  if ((v23 & 1) == 0 || (v13 = 1, v23 == 1) && !v22)
  {
    if ((*(v5 + 32) & 2) != 0 || v20 != 4)
    {
LABEL_6:
      boost::filesystem::directory_entry::get_status((*(*(v5 + 16) - 8) + 8), &v22, &v25);
      if ((v23 & 1) != 0 && (v23 != 1 || v22))
      {
        *&v20 = 2;
        *(&v20 + 1) = &boost::system::detail::generic_cat_holder<void>::instance;
        if (boost::system::operator==(&v22, &v20) && v7 == 4 && (~*(v5 + 32) & 6) == 0)
        {
          v22 = 0uLL;
          v13 = 1;
          v23 = 0;
          goto LABEL_20;
        }
      }

      else if (v25 == 3)
      {
        v9 = *(v5 + 16);
        if ((((v9 - *(v5 + 8)) >> 3) - 1) >= 0x7FFFFFFF)
        {
          boost::filesystem::detail::recursive_directory_iterator_increment(&v22, &v23);
          v13 = 0;
          goto LABEL_20;
        }

        v10 = *(v9 - 8);
        v11 = *(v5 + 32);
        *&v20 = 0;
        boost::filesystem::detail::directory_iterator_construct(&v20, (v10 + 8), v11, &v22, v8);
        if ((v23 & 1) == 0 || v23 == 1 && !v22)
        {
          v24 = 0;
          if (v20 && *(v20 + 48))
          {
            boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v24);
            std::vector<boost::filesystem::directory_iterator>::push_back[abi:ne200100]((v5 + 8), &v20);
LABEL_17:
            boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v20);
            return result;
          }

          boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v24);
        }

        boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v20);
      }
    }

LABEL_19:
    v13 = 1;
  }

LABEL_20:
  if ((v23 & 1) != 0 && (v23 != 1 || v22))
  {
LABEL_44:
    if ((*(v5 + 32) & 8) != 0)
    {
      if ((v13 & 1) == 0)
      {
        v21 = 0;
        v20 = 0uLL;
        v18 = (*(v5 + 16) - 8);
        boost::filesystem::detail::directory_iterator_increment(v18, &v20, a3);
        if ((v21 & 1) == 0 || v21 == 1 && !v20)
        {
          v25 = 0;
          if (*v18 && *(*v18 + 48))
          {
            boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v25);
LABEL_55:
            if (!a2)
            {
              exception = __cxa_allocate_exception(0x30uLL);
              v20 = v22;
              v21 = v23;
              boost::filesystem::filesystem_error::filesystem_error(exception, "filesystem::recursive_directory_iterator increment error", &v20);
            }

            result = *&v22;
            *a2 = v22;
            a2[2] = v23;
            return result;
          }

          boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v25);
        }
      }

      if (*(v5 + 8) != *(v5 + 16))
      {
        goto LABEL_55;
      }
    }

    *&v20 = *a1;
    *a1 = 0;
    boost::intrusive_ptr<boost::filesystem::detail::recur_dir_itr_imp>::~intrusive_ptr(&v20);
    goto LABEL_55;
  }

  v15 = *(v5 + 8);
  v14 = *(v5 + 16);
  while (v15 != v14)
  {
    v16 = v14 - 1;
    boost::filesystem::detail::directory_iterator_increment((v14 - 1), &v22, a3);
    if ((v23 & 1) != 0 && (v23 != 1 || v22 != 0))
    {
      goto LABEL_44;
    }

    *&v20 = 0;
    if (*v16 && *(*v16 + 6))
    {
      goto LABEL_17;
    }

    boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v20);
    v14 = boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr((*(v5 + 16) - 8));
    *(v5 + 16) = v14;
    v15 = *(v5 + 8);
  }

  *&v20 = *a1;
  *a1 = 0;
  boost::intrusive_ptr<boost::filesystem::detail::recur_dir_itr_imp>::~intrusive_ptr(&v20);
  return result;
}

void sub_1001BF300(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, boost::filesystem::detail::dir_itr_imp *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (***a13)(boost::system::detail::generic_error_category *__hidden this), boost::filesystem::detail::dir_itr_imp *a14)
{
  boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&a9);
  if (a2 == 2)
  {
    boost::filesystem::detail::recursive_directory_iterator_increment(a1, &a9);
    a12 = 12;
    a13 = &boost::system::detail::generic_cat_holder<void>::instance;
    a14 = a9;
    __cxa_end_catch();
    JUMPOUT(0x1001BF08CLL);
  }

  __clang_call_terminate(a1);
}

void *boost::system::detail::generic_error_category::message@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v4 = strerror(__errnum);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "Unknown error";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

const char *boost::system::detail::generic_error_category::message(boost::system::detail::generic_error_category *this, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t boost::system::operator==(uint64_t *a1, unsigned int *a2)
{
  v4 = a1[2];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = boost::system::error_code::operator std::error_code(a1);
      v7 = v6;
      v16[0] = v5;
      v16[1] = v6;
      v14 = boost::system::error_condition::operator std::error_condition(a2);
      v15 = v8;
      if (((*(*v7 + 32))(v7, v5, &v14) & 1) == 0)
      {
        return (*(*v15 + 40))(v15, v16, v14);
      }

      return 1;
    }

    v10 = a1[1];
  }

  else
  {
    v10 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  if (((*v10)[2])(v10, *a1, a2))
  {
    return 1;
  }

  if (*(a2 + 1))
  {
    v11 = *(a2 + 1);
  }

  else
  {
    v11 = &boost::system::detail::generic_cat_holder<void>::instance;
  }

  v12 = *a2;
  v13 = (*v11)[3];

  return v13();
}

unint64_t boost::system::error_code::operator std::error_code(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = *a1;
      v2 = a1[1];
      v4 = *a1 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v3) = *a1;
      v5 = a1[1];
      v6 = *(v5 + 8);
      if (v6 == 0xB2AB117A257EDFD1)
      {
        std::system_category();
      }

      else if (v6 == 0xB2AB117A257EDFD0)
      {
        std::generic_category();
      }

      else if (!atomic_load_explicit((v5 + 16), memory_order_acquire))
      {
        v7 = operator new(0x10uLL);
        v8 = 0;
        *v7 = off_1004C8268;
        v7[1] = v5;
        atomic_compare_exchange_strong((v5 + 16), &v8, v7);
        if (v8)
        {
          (*(*v7 + 8))(v7);
          v4 = 0;
          return v4 | v3;
        }
      }

      v4 = 0;
    }
  }

  else
  {
    std::system_category();
    v4 = 0;
    LODWORD(v3) = 0;
  }

  return v4 | v3;
}

uint64_t boost::system::error_condition::operator std::error_condition(unsigned int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = *(v1 + 8);
  if (v3 == 0xB2AB117A257EDFD1)
  {
    std::system_category();
    return v2;
  }

  if (v3 != 0xB2AB117A257EDFD0)
  {
    if (!atomic_load_explicit((v1 + 16), memory_order_acquire))
    {
      v5 = operator new(0x10uLL);
      v6 = 0;
      *v5 = off_1004C8268;
      v5[1] = v1;
      atomic_compare_exchange_strong((v1 + 16), &v6, v5);
      if (v6)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  else
  {
LABEL_4:
    std::generic_category();
  }

  return v2;
}

void boost::system::detail::std_category::~std_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  operator delete(v1);
}

uint64_t boost::system::detail::std_category::default_error_condition(boost::system::detail::std_category *this)
{
  v3[0] = (*(**(this + 1) + 8))(*(this + 1));
  v3[1] = v1;
  return boost::system::error_condition::operator std::error_condition(v3);
}

uint64_t boost::system::detail::std_category::equivalent(boost::system::detail::std_category *this, uint64_t a2, const std::error_condition *a3)
{
  cat = a3->__cat_;
  if (cat == this)
  {
    v8 = *(this + 1);
    val = a3->__val_;
    v19 = v8;
    return ((*v8)[2])(v8, a2, &val);
  }

  explicit = std::generic_category();
  if (cat == explicit)
  {
    goto LABEL_13;
  }

  if (qword_1004E53D0 != 0xB2AB117A257EDFD0)
  {
    if (qword_1004E53D0 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(algn_1004E53D8, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v9 = 0;
        *explicit = off_1004C8268;
        *(explicit + 1) = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(algn_1004E53D8, &v9, explicit);
        if (v9)
        {
          (*(*explicit + 8))(explicit);
          explicit = v9;
        }
      }
    }
  }

  if (cat == explicit)
  {
LABEL_13:
    val = a3->__val_;
    v19 = &boost::system::detail::generic_cat_holder<void>::instance;
    goto LABEL_14;
  }

  v10 = a3->__cat_;
  v11 = v10->~error_category;
  if (v12)
  {
    v13 = v12[1];
    val = a3->__val_;
    v19 = v13;
LABEL_14:
    v8 = *(this + 1);
    return ((*v8)[2])(v8, a2, &val);
  }

  v15 = (*(*this + 24))(this, a2);
  return a3->__cat_ == v16 && a3->__val_ == v15;
}

uint64_t boost::system::detail::std_category::equivalent(boost::system::detail::std_category *this, const std::error_code *a2, uint64_t a3)
{
  cat = a2->__cat_;
  if (cat == this)
  {
    val = a2->__val_;
    v11 = *(this + 1);
    v32 = 0;
    if (v11[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v12 = val != 0;
      v13 = v11;
    }

    else
    {
      v12 = ((*v11)[6])(v11, val);
      v13 = *(this + 1);
    }

    v14 = v12 == 0;
    v15 = 2;
    if (!v14)
    {
      v15 = 3;
    }

    LODWORD(v32) = val;
    v33 = v11;
    v34 = v15;
    return ((*v13)[3])(v13, &v32, a3);
  }

  explicit = std::generic_category();
  v8 = qword_1004E53D0;
  if (cat == explicit)
  {
    goto LABEL_20;
  }

  v9 = explicit;
  if (qword_1004E53D0 != 0xB2AB117A257EDFD0)
  {
    if (qword_1004E53D0 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(algn_1004E53D8, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v16 = 0;
        *explicit = off_1004C8268;
        *(explicit + 1) = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(algn_1004E53D8, &v16, explicit);
        if (v16)
        {
          (*(*explicit + 8))(explicit);
          explicit = v16;
        }
      }
    }
  }

  if (cat == explicit)
  {
    v8 = qword_1004E53D0;
LABEL_20:
    v23 = a2->__val_;
    v32 = 0;
    if (v8 >> 1 == 0x595588BD12BF6FE8)
    {
      v24 = v23 != 0;
    }

    else
    {
      v24 = (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, v23);
    }

    v25 = 2;
    if (v24)
    {
      v25 = 3;
    }

    LODWORD(v32) = v23;
    v33 = &boost::system::detail::generic_cat_holder<void>::instance;
    v34 = v25;
    goto LABEL_36;
  }

  v17 = a2->__cat_;
  v18 = v17->~error_category;
  if (v19)
  {
    v20 = a2->__val_;
    v21 = v19[1];
    v32 = 0;
    if (v21[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v22 = v20 != 0;
    }

    else
    {
      v22 = ((*v21)[6])(v21, v20);
    }

    v31 = 2;
    if (v22)
    {
      v31 = 3;
    }

    LODWORD(v32) = v20;
    v33 = v21;
    v34 = v31;
LABEL_36:
    v13 = *(this + 1);
    return ((*v13)[3])(v13, &v32, a3);
  }

  v26 = *(this + 1);
  v27 = v26 == &boost::system::detail::generic_cat_holder<void>::instance;
  v28 = v26[1] == qword_1004E53D0;
  if (!qword_1004E53D0)
  {
    v28 = v27;
  }

  if (!v28)
  {
    return 0;
  }

  v29 = *(*v9 + 40);

  return v29(v9, a2, a3);
}

uint64_t boost::filesystem::detail::anonymous namespace::path_max(boost::filesystem::detail::_anonymous_namespace_ *this)
{
  {
    if (v2)
    {
    }
  }
}

uint64_t boost::filesystem::detail::anonymous namespace::get_path_max(boost::filesystem::detail::_anonymous_namespace_ *this)
{
  *__error() = 0;
  v1 = pathconf("/", 5);
  if (v1 <= 0x400)
  {
    v2 = 1024;
  }

  else
  {
    v2 = v1;
  }

  if (v1 >= 0)
  {
    return v2;
  }

  else
  {
    return 1024;
  }
}

void *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(void *__dst, void *__src, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (v9)
  {
    __dst = memmove(v7, __src, v9);
  }

  *(v7 + v9) = 0;
  return __dst;
}

boost::filesystem::detail::dir_itr_imp **std::vector<boost::filesystem::directory_iterator>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(result) + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<boost::filesystem::directory_iterator>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

uint64_t std::__split_buffer<boost::filesystem::directory_iterator>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

boost::filesystem::detail::dir_itr_imp **boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(boost::filesystem::detail::dir_itr_imp **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    boost::filesystem::detail::dir_itr_imp::~dir_itr_imp(v2);
    operator delete(v3);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    boost::filesystem::detail::dir_itr_imp::~dir_itr_imp(v2);
    operator delete();
  }

  return a1;
}

void boost::filesystem::detail::dir_itr_imp::~dir_itr_imp(boost::filesystem::detail::dir_itr_imp *this)
{
  boost::filesystem::detail::dir_itr_close(this + 6, this + 7, v2);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void ***boost::intrusive_ptr<boost::filesystem::detail::recur_dir_itr_imp>::~intrusive_ptr(void ***a1)
{
  v2 = *a1;
  if (*a1 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v4 = v2 + 1;
    std::vector<boost::filesystem::directory_iterator>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(v2);
  }

  return a1;
}

void std::vector<boost::filesystem::directory_iterator>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void boost::filesystem::detail::absolute(std::string::size_type *this@<X0>, std::string *a2@<X1>, const boost::filesystem::path *a3@<X2>, boost::system::error_code *a4@<X3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
  }

  boost::filesystem::path::find_root_directory(this, a2, a3, a4);
  if (v9)
  {
    if (*(this + 23) < 0)
    {
      v12 = *this;
      v13 = this[1];

      std::string::__init_copy_ctor_external(a5, v12, v13);
    }

    else
    {
      *a5 = *this;
      *(a5 + 16) = this[2];
    }

    return;
  }

  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  else
  {
    v47 = *a2;
  }

  boost::filesystem::path::find_root_directory(a2, v9, v10, v11);
  if (v14)
  {
    goto LABEL_13;
  }

  if (!a3)
  {
    boost::filesystem::detail::current_path(0, &v46);
    boost::filesystem::detail::absolute(&__p, a2, &v46, 0, v44);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    v47 = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    goto LABEL_13;
  }

  boost::filesystem::detail::current_path(a3, &__p);
  v24 = *(a3 + 2);
  if ((v24 & 1) != 0 && (v24 != 1 || *a3))
  {
    memset(&v46, 0, sizeof(v46));
  }

  else
  {
    boost::filesystem::detail::absolute(&v46, a2, &__p, a3, v16);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v47 = v46;
  v45 = *(a3 + 2);
  if ((v45 & 1) == 0 || v45 == 1 && !*a3)
  {
LABEL_13:
    v17 = *(this + 23);
    if ((v17 & 0x80u) != 0)
    {
      v17 = this[1];
    }

    if (v17)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      if (boost::filesystem::path::find_root_name_size(this, v14, v15, v16))
      {
        boost::filesystem::path::root_name(this, v18, v19, v20, &__p);
      }

      else
      {
        boost::filesystem::path::root_name(&v47, v18, v19, v20, &__p);
      }

      if (*(a5 + 23) < 0)
      {
        operator delete(*a5);
      }

      *a5 = __p;
      boost::filesystem::path::find_root_directory(this, v21, v22, v23);
      if (v25)
      {
        boost::filesystem::path::root_directory(this, v25, v26, v27, &__p);
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

        std::string::append(a5, p_p, size);
      }

      else
      {
        boost::filesystem::path::root_directory(&v47, 0, v26, v27, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &__p;
        }

        else
        {
          v33 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a5, v33, v34);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        boost::filesystem::path::relative_path(&v47, v35, v36, v37, &__p);
        boost::filesystem::path::append_v4(a5, &__p, v38, v39);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      boost::filesystem::path::relative_path(this, v30, v31, v32, &__p);
      v42 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = __p.__r_.__value_.__l.__size_;
      }

      if (v42)
      {
        boost::filesystem::path::append_v4(a5, &__p, v40, v41);
        v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v43 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a5 = v47;
      memset(&v47, 0, sizeof(v47));
    }

    goto LABEL_65;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
LABEL_65:
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }
}

void sub_1001C0570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *boost::filesystem::path::root_name@<X0>(boost::filesystem::path *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void *a5@<X8>)
{
  v6 = this;
  if (*(this + 23) < 0)
  {
    v6 = *this;
  }

  root_name_size = boost::filesystem::path::find_root_name_size(this, a2, a3, a4);

  return std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a5, v6, v6 + root_name_size, root_name_size);
}

void *boost::filesystem::path::root_directory@<X0>(boost::filesystem::path *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = this;
  root_directory = boost::filesystem::path::find_root_directory(this, a2, a3, a4);
  if (*(v5 + 23) < 0)
  {
    v5 = *v5;
  }

  return std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a5, &root_directory[v5], &root_directory[v5 + v8], v8);
}

void *boost::filesystem::path::relative_path@<X0>(boost::filesystem::path *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = this;
  relative_path = boost::filesystem::path::find_relative_path(this, a2, a3, a4);
  if (*(v5 + 23) < 0)
  {
    v5 = *v5;
  }

  return std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a5, &relative_path[v5], &relative_path[v5 + v8], v8);
}

void boost::filesystem::detail::canonical(std::string *this@<X0>, std::string *a2@<X1>, const boost::filesystem::path *a3@<X2>, boost::system::error_code *a4@<X3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v72, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    v72 = *this;
  }

  boost::filesystem::path::find_root_directory(this, a2, a3, a4);
  if (!v10)
  {
    boost::filesystem::detail::absolute(this, a2, a3, v9, &v66);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    v72 = v66;
    if (a3)
    {
      v58 = *(a3 + 2);
      if ((v58 & 1) != 0 && (v58 != 1 || *a3))
      {
LABEL_107:
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        goto LABEL_108;
      }
    }
  }

  memset(&v71, 0, sizeof(v71));
  boost::filesystem::detail::status(&v72, &v71, &v70);
  if (v70 == 1)
  {
    if (qword_1004E53D0 >> 1 == 0x595588BD12BF6FE8 || (v14 = 2, (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 2)))
    {
      v14 = 3;
    }

    v71.__r_.__value_.__r.__words[0] = 2;
    v71.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
    v71.__r_.__value_.__r.__words[2] = v14;
    goto LABEL_105;
  }

  if ((v71.__r_.__value_.__s.__data_[16] & 1) != 0 && (v71.__r_.__value_.__r.__words[2] != 1 || LODWORD(v71.__r_.__value_.__l.__data_)))
  {
    goto LABEL_105;
  }

  v15 = boost::filesystem::path::root_path(&v72, v11, v12, v13, &__p);
  v16 = boost::filesystem::detail::dot_path(v15);
  v18 = boost::filesystem::detail::dot_dot_path(v16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v19 = 40;
  while (2)
  {
    boost::filesystem::path::begin(&v72, v17, &v66);
    boost::filesystem::path::end(&v72, &v62);
    while (1)
    {
      if (v67 == v64 && v68 == v65)
      {
        v45 = 6;
        goto LABEL_77;
      }

      if (!boost::filesystem::path::compare_v4(&v66, v16, v20, v17))
      {
        goto LABEL_75;
      }

      if (!boost::filesystem::path::compare_v4(&v66, v18, v23, v17))
      {
        if (boost::filesystem::path::compare_v4(a5, &__p, v24, v25))
        {
          boost::filesystem::path::remove_filename(a5, v22, v23, v17);
        }

        goto LABEL_75;
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v66.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_32;
        }

        v26 = v66.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) != 1)
        {
          goto LABEL_32;
        }

        v26 = &v66;
      }

      if (v26->__r_.__value_.__s.__data_[0] == 47)
      {
        std::string::push_back(a5, 47);
        goto LABEL_75;
      }

LABEL_32:
      boost::filesystem::path::append_v4(a5, &v66, v24, v25);
      boost::filesystem::path::find_root_directory(a5, v27, v28, v29);
      if (v22)
      {
        boost::filesystem::detail::symlink_status(a5, a3, &__str);
        if (a3)
        {
          v30 = *(a3 + 2);
          if ((v30 & 1) != 0 && (v30 != 1 || *a3))
          {
            v45 = 2;
            goto LABEL_77;
          }
        }

        if (LODWORD(__str.__r_.__value_.__l.__data_) == 4)
        {
          break;
        }
      }

LABEL_75:
      boost::filesystem::path::iterator::increment_v4(&v66, v22, v23, v17);
    }

    if (v19)
    {
      boost::filesystem::detail::read_symlink(a5, a3, &__str);
      if (a3)
      {
        v31 = *(a3 + 2);
        if ((v31 & 1) != 0 && (v31 != 1 || *a3))
        {
          v44 = 0;
          v45 = 2;
          goto LABEL_72;
        }
      }

      boost::filesystem::path::remove_filename(a5, v22, v23, v17);
      boost::filesystem::path::find_root_directory(&__str, v32, v33, v34);
      if (v35)
      {
        while (1)
        {
          boost::filesystem::path::iterator::increment_v4(&v66, v35, v36, v37);
          if (v67 == v64 && v68 == v65)
          {
            break;
          }

          if (boost::filesystem::path::compare_v4(&v66, v16, v38, v39))
          {
            boost::filesystem::path::append_v4(&__str, &v66, v36, v37);
          }
        }

        std::string::operator=(&v72, &__str);
        boost::filesystem::path::root_path(&v72, v41, v42, v43, &v60);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v44 = 0;
        __p = v60;
        goto LABEL_71;
      }

      boost::filesystem::path::remove_trailing_separator(&__str);
      if (boost::filesystem::path::compare_v4(&__str, v16, v46, v47))
      {
        if (*(a5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v60, *a5, *(a5 + 8));
        }

        else
        {
          v60 = *a5;
        }

        boost::filesystem::path::append_v4(&v60, &__str, v23, v17);
        boost::filesystem::path::iterator::increment_v4(&v66, v48, v49, v50);
        while (v67 != v64 || v68 != v65)
        {
          if (boost::filesystem::path::compare_v4(&v66, v16, v51, v52))
          {
            boost::filesystem::path::append_v4(&v60, &v66, v55, v56);
          }

          boost::filesystem::path::iterator::increment_v4(&v66, v54, v55, v56);
        }

        std::string::operator=(&v72, &v60);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        v44 = 0;
LABEL_71:
        v45 = 15;
      }

      else
      {
        v45 = 8;
        v44 = 1;
      }

LABEL_72:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      --v19;
      if ((v44 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    if ((qword_1004E53D0 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 62))
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v19 = 0;
    v71.__r_.__value_.__r.__words[0] = 62;
    v71.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
    v45 = 3;
    v71.__r_.__value_.__r.__words[2] = v57;
LABEL_77:
    if (v63 < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (v45 == 15)
    {
      if (*(a5 + 23) < 0)
      {
        **a5 = 0;
        *(a5 + 8) = 0;
      }

      else
      {
        *a5 = 0;
        *(a5 + 23) = 0;
      }

      continue;
    }

    break;
  }

  if (v45 == 6)
  {
    v45 = 1;
  }

  else if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 == 3)
  {
LABEL_105:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      v66 = v71;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::canonical", &v72, &v66);
    }

    *a3 = v71;
    goto LABEL_107;
  }

  if (v45 == 2)
  {
    goto LABEL_107;
  }

LABEL_108:
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }
}

void sub_1001C0D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  _Unwind_Resume(exception_object);
}

int *boost::filesystem::detail::status@<X0>(boost::filesystem::detail *this@<X0>, const boost::filesystem::path *a2@<X1>, int *a3@<X8>)
{
  v5 = this;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  if (*(this + 23) < 0)
  {
    this = *this;
  }

  result = stat(this, &v24);
  if (result)
  {
    result = __error();
    v8 = *result;
    if (a2)
    {
      if (qword_1004E53B8 >> 1 == 0x595588BD12BF6FE8)
      {
        result = (v8 != 0);
      }

      else
      {
        result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v8);
      }

      v18 = 2;
      if (result)
      {
        v18 = 3;
      }

      *a2 = v8;
      *(a2 + 1) = 0;
      *(a2 + 1) = &boost::system::detail::system_cat_holder<void>::instance;
      *(a2 + 2) = v18;
      if (v8 == 20)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0xFFFF;
      }

      v17 = v8 == 2 || v8 == 20;
      if (v8 == 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = v19;
      }
    }

    else
    {
      if (v8 != 2 && v8 != 20)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v23[0] = 0;
        if (qword_1004E53B8 >> 1 == 0x595588BD12BF6FE8)
        {
          v21 = v8 != 0;
        }

        else
        {
          v21 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v8);
        }

        v22 = 2;
        LODWORD(v23[0]) = v8;
        if (v21)
        {
          v22 = 3;
        }

        v23[1] = &boost::system::detail::system_cat_holder<void>::instance;
        v23[2] = v22;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::status", v5, v23);
      }

      v16 = 0;
      v17 = 1;
    }
  }

  else
  {
    v9 = (v24.st_mode - 4096) >> 12;
    if (v9 > 4)
    {
      if (v9 == 5)
      {
        v16 = v24.st_mode & 0xFFF;
        v17 = 5;
        goto LABEL_50;
      }

      v10 = v24.st_mode & 0xFFF;
      v11 = 2;
      if (v9 == 11)
      {
        v12 = 8;
      }

      else
      {
        v12 = 10;
      }

      if (v9 == 11)
      {
        v13 = v24.st_mode & 0xFFF;
      }

      else
      {
        v13 = 0xFFFF;
      }

      v14 = v9 == 7;
    }

    else
    {
      if (!v9)
      {
        v16 = v24.st_mode & 0xFFF;
        v17 = 7;
        goto LABEL_50;
      }

      v10 = v24.st_mode & 0xFFF;
      v11 = 6;
      if (v9 == 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = 10;
      }

      if (v9 == 3)
      {
        v13 = v24.st_mode & 0xFFF;
      }

      else
      {
        v13 = 0xFFFF;
      }

      v14 = v9 == 1;
    }

    if (v14)
    {
      v17 = v11;
    }

    else
    {
      v17 = v12;
    }

    if (v14)
    {
      v16 = v10;
    }

    else
    {
      v16 = v13;
    }
  }

LABEL_50:
  *a3 = v17;
  a3[1] = v16;
  return result;
}

void *boost::filesystem::path::root_path@<X0>(boost::filesystem::path *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void *a5@<X8>)
{
  v6 = this;
  if (*(this + 23) < 0)
  {
    v6 = *this;
  }

  root_path_size = boost::filesystem::path::find_root_path_size(this, a2, a3, a4);

  return std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a5, v6, &root_path_size[v6], root_path_size);
}

int *boost::filesystem::detail::symlink_status@<X0>(boost::filesystem::detail *this@<X0>, const boost::filesystem::path *a2@<X1>, int *a3@<X8>)
{
  v5 = this;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  if (*(this + 23) < 0)
  {
    this = *this;
  }

  result = lstat(this, &v24);
  if (result)
  {
    result = __error();
    v8 = *result;
    if (a2)
    {
      if (qword_1004E53B8 >> 1 == 0x595588BD12BF6FE8)
      {
        result = (v8 != 0);
      }

      else
      {
        result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v8);
      }

      v18 = 2;
      if (result)
      {
        v18 = 3;
      }

      *a2 = v8;
      *(a2 + 1) = 0;
      *(a2 + 1) = &boost::system::detail::system_cat_holder<void>::instance;
      *(a2 + 2) = v18;
      if (v8 == 20)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0xFFFF;
      }

      v17 = v8 == 2 || v8 == 20;
      if (v8 == 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = v19;
      }
    }

    else
    {
      if (v8 != 2 && v8 != 20)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v23[0] = 0;
        if (qword_1004E53B8 >> 1 == 0x595588BD12BF6FE8)
        {
          v21 = v8 != 0;
        }

        else
        {
          v21 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v8);
        }

        v22 = 2;
        LODWORD(v23[0]) = v8;
        if (v21)
        {
          v22 = 3;
        }

        v23[1] = &boost::system::detail::system_cat_holder<void>::instance;
        v23[2] = v22;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::symlink_status", v5, v23);
      }

      v16 = 0;
      v17 = 1;
    }
  }

  else
  {
    v9 = (v24.st_mode - 4096) >> 12;
    if (v9 <= 4)
    {
      if (!v9)
      {
        v16 = v24.st_mode & 0xFFF;
        v17 = 7;
        goto LABEL_57;
      }

      v10 = v24.st_mode & 0xFFF;
      v11 = 6;
      if (v9 == 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = 10;
      }

      if (v9 == 3)
      {
        v13 = v24.st_mode & 0xFFF;
      }

      else
      {
        v13 = 0xFFFF;
      }

      v14 = v9 == 1;
    }

    else
    {
      v10 = v24.st_mode & 0xFFF;
      if ((v24.st_mode - 4096) >> 12 > 8)
      {
        v11 = 4;
        if (v9 == 11)
        {
          v12 = 8;
        }

        else
        {
          v12 = 10;
        }

        if (v9 == 11)
        {
          v13 = v24.st_mode & 0xFFF;
        }

        else
        {
          v13 = 0xFFFF;
        }

        v14 = v9 == 9;
      }

      else
      {
        v11 = 5;
        if (v9 == 7)
        {
          v12 = 2;
        }

        else
        {
          v12 = 10;
        }

        if (v9 == 7)
        {
          v13 = v24.st_mode & 0xFFF;
        }

        else
        {
          v13 = 0xFFFF;
        }

        v14 = v9 == 5;
      }
    }

    if (v14)
    {
      v17 = v11;
    }

    else
    {
      v17 = v12;
    }

    if (v14)
    {
      v16 = v10;
    }

    else
    {
      v16 = v13;
    }
  }

LABEL_57:
  *a3 = v17;
  a3[1] = v16;
  return result;
}

void boost::filesystem::detail::read_symlink(const char **this@<X0>, const boost::filesystem::path *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (*(this + 23) >= 0)
  {
    v7 = this;
  }

  else
  {
    v7 = *this;
  }

  v8 = readlink(v7, v23, 0x400uLL);
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_24:
    v14 = *__error();
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      v20 = 0;
      if (qword_1004E53B8 >> 1 == 0x595588BD12BF6FE8)
      {
        v16 = v14 != 0;
      }

      else
      {
        v16 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v14);
      }

      v17 = 2;
      LODWORD(v20) = v14;
      if (v16)
      {
        v17 = 3;
      }

      v21 = &boost::system::detail::system_cat_holder<void>::instance;
      v22 = v17;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::read_symlink", this, &v20);
    }

    boost::system::error_code::assign(a2, v14, &boost::system::detail::system_cat_holder<void>::instance);
  }

  else if (v8 >= 0x400)
  {
    for (i = 2048; ; i *= 2)
    {
      v10 = operator new[](i);
      v11 = readlink(v7, v10, i);
      if ((v11 & 0x8000000000000000) != 0)
      {
        operator delete[](v10);
        goto LABEL_24;
      }

      if (v11 < i)
      {
        break;
      }

      operator delete[](v10);
      if (i > 0x4000)
      {
        if (!a2)
        {
          v18 = __cxa_allocate_exception(0x30uLL);
          v20 = 0;
          if ((qword_1004E53B8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, 63))
          {
            v19 = 3;
          }

          else
          {
            v19 = 2;
          }

          LODWORD(v20) = 63;
          v21 = &boost::system::detail::system_cat_holder<void>::instance;
          v22 = v19;
          boost::filesystem::filesystem_error::filesystem_error(v18, "boost::filesystem::read_symlink", this, &v20);
        }

        if ((qword_1004E53B8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, 63))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        *a2 = 63;
        *(a2 + 1) = &boost::system::detail::system_cat_holder<void>::instance;
        *(a2 + 2) = v13;
        return;
      }
    }

    std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(a3, v10, &v10[v11], v11);
    if (a2)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
    }

    operator delete[](v10);
  }

  else
  {
    std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(a3, v23, &v23[v8], v8);
    if (a2)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
    }
  }
}

void sub_1001C16F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::filesystem::detail::copy(boost::filesystem::detail *this, std::string::size_type *a2, const boost::filesystem::path *a3, const boost::filesystem::path *a4, boost::system::error_code *a5)
{
  v8 = this;
  if ((a3 & 0x1600) != 0)
  {
    boost::filesystem::detail::symlink_status(this, a4, &v69);
  }

  else
  {
    boost::filesystem::detail::status(this, a4, &v69);
  }

  if (a4)
  {
    v13 = *(a4 + 2);
    if ((v13 & 1) != 0 && (v13 != 1 || *a4))
    {
      return;
    }
  }

  if (LODWORD(v69.__r_.__value_.__l.__data_) <= 1)
  {
    v14 = 2;
    goto LABEL_14;
  }

  if (LODWORD(v69.__r_.__value_.__l.__data_) == 2)
  {
    if ((a3 & 0x800) != 0)
    {
      return;
    }

    if ((a3 & 0x1000) != 0)
    {
      memset(&v69, 0, sizeof(v69));
      boost::filesystem::path::find_root_directory(v8, v9, v10, v11);
      if (v24)
      {
        goto LABEL_132;
      }

      boost::filesystem::detail::current_path(a4, &v68);
      if (a4 && (v27 = *(a4 + 2), (v27 & 1) != 0) && (v27 != 1 || *a4))
      {
        v62 = 0;
      }

      else
      {
        boost::filesystem::path::parent_path(v8, v25, v26, v23, &__p);
        boost::filesystem::detail::absolute(&__p, &v68, a4, v28, v66);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (a4 && (v31 = *(a4 + 2), (v31 & 1) != 0) && (v31 != 1 || *a4))
        {
          v62 = 0;
        }

        else
        {
          boost::filesystem::path::parent_path(a2, v29, v30, v23, &__p);
          boost::filesystem::path::find_root_directory(&__p, v32, v33, v34);
          if (!v35)
          {
            boost::filesystem::detail::absolute(&__p, &v68, a4, v23, &v64);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = v64;
            if (a4)
            {
              v63 = *(a4 + 2);
              if ((v63 & 1) != 0 && (v63 != 1 || *a4))
              {
                goto LABEL_120;
              }
            }
          }

          boost::filesystem::detail::relative(v66, &__p, a4, v23, &v64);
          if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__data_);
          }

          v69 = v64;
          if (a4 && (v37 = *(a4 + 2), (v37 & 1) != 0) && (v37 != 1 || *a4))
          {
LABEL_120:
            v62 = 0;
          }

          else
          {
            v38 = boost::filesystem::detail::dot_path(v36);
            if (boost::filesystem::path::compare_v4(&v69, v38, v39, v40))
            {
              boost::filesystem::path::filename_v4(v8, v41, v42, v43, &v64);
              boost::filesystem::path::append_v4(&v69, &v64, v44, v45);
              if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v64.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              boost::filesystem::path::filename_v4(v8, v41, v42, v43, &v64);
              if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v69.__r_.__value_.__l.__data_);
              }

              v69 = v64;
            }

            v62 = 1;
            v8 = &v69;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (v67 < 0)
        {
          operator delete(v66[0]);
        }
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (v62)
      {
LABEL_132:
        boost::filesystem::detail::create_symlink(v8, a2, a4, v23);
      }

      if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v61 = v69.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((a3 & 0x2000) != 0)
      {

        boost::filesystem::detail::create_hard_link(v8, a2, a4, v11);
        return;
      }

      memset(&v69, 0, sizeof(v69));
      if ((a3 & 0x400) != 0)
      {
        boost::filesystem::detail::symlink_status(a2, &v69, &v68);
      }

      else
      {
        boost::filesystem::detail::status(a2, &v69, &v68);
      }

      if (LODWORD(v68.__r_.__value_.__l.__data_) != 3)
      {
        if (LODWORD(v68.__r_.__value_.__l.__data_))
        {
          boost::filesystem::detail::copy_file(v8, a2, a3, a4, v20);
          return;
        }

        if (!a4)
        {
          goto LABEL_35;
        }

        goto LABEL_84;
      }

      boost::filesystem::path::filename_v4(v8, v17, v18, v19, v66);
      boost::filesystem::operator/(v66, a2, v58, v59, &v68);
      boost::filesystem::detail::copy_file(v8, &v68, a3, a4, v60);
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if ((v67 & 0x80000000) == 0)
      {
        return;
      }

      v61 = v66[0];
    }

    operator delete(v61);
    return;
  }

  if (LODWORD(v69.__r_.__value_.__l.__data_) == 3)
  {
    memset(&v69, 0, sizeof(v69));
    if ((a3 & 0x1000) != 0)
    {
      if (qword_1004E53D0 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 21))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v69.__r_.__value_.__r.__words[0] = 21;
      v69.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
      v69.__r_.__value_.__r.__words[2] = v21;
      if (!a4)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v68 = v69;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::copy", v8, a2, &v68);
LABEL_137:
      }

      goto LABEL_84;
    }

    if ((a3 & 0x400) != 0)
    {
      boost::filesystem::detail::symlink_status(a2, &v69, &v68);
    }

    else
    {
      boost::filesystem::detail::status(a2, &v69, &v68);
    }

    if (LODWORD(v68.__r_.__value_.__l.__data_) == 1)
    {
      boost::filesystem::detail::create_directory(a2, v8, a4, v15);
      if (a4)
      {
        v46 = *(a4 + 2);
        if ((v46 & 1) != 0 && (v46 != 1 || *a4))
        {
          return;
        }
      }
    }

    else if (!LODWORD(v68.__r_.__value_.__l.__data_))
    {
      if (!a4)
      {
LABEL_35:
        exception = __cxa_allocate_exception(0x30uLL);
        v68 = v69;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::copy", v8, a2, &v68);
        goto LABEL_137;
      }

LABEL_84:
      *a4 = v69;
      return;
    }

    if (!a3 || (a3 & 0x100) != 0)
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::detail::directory_iterator_construct(&__p, v8, 0, a4, v16);
      if (!a4 || (v50 = *(a4 + 2), (v50 & 1) == 0) || v50 == 1 && !*a4)
      {
        v64.__r_.__value_.__r.__words[0] = 0;
        v51 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
          do
          {
            if (!v51 || !*(v51 + 48))
            {
              break;
            }

            boost::filesystem::path::filename_v4((v51 + 8), v47, v48, v49, v66);
            if (*(a2 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v68, *a2, a2[1]);
            }

            else
            {
              v68 = *a2;
            }

            boost::filesystem::path::append_v4(&v68, v66, v52, v53);
            boost::filesystem::detail::copy((v51 + 8), &v68, (a3 | 0x4000), a4, v54);
            if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v68.__r_.__value_.__l.__data_);
            }

            if (v67 < 0)
            {
              operator delete(v66[0]);
            }

            if (a4)
            {
              v56 = *(a4 + 2);
              if ((v56 & 1) != 0 && (v56 != 1 || *a4))
              {
                break;
              }
            }

            boost::filesystem::detail::directory_iterator_increment(&__p, a4, v55);
            if (a4)
            {
              v57 = *(a4 + 2);
              if ((v57 & 1) != 0 && (v57 != 1 || *a4))
              {
                break;
              }
            }

            v51 = __p.__r_.__value_.__r.__words[0];
          }

          while (__p.__r_.__value_.__r.__words[0] != v64.__r_.__value_.__r.__words[0]);
        }

        boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v64);
      }

      boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&__p);
    }

    return;
  }

  if (LODWORD(v69.__r_.__value_.__l.__data_) != 4)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x400) != 0)
  {
    return;
  }

  if ((a3 & 0x200) == 0)
  {
LABEL_12:
    v14 = 78;
LABEL_14:

    boost::filesystem::emit_error(v14, v8, a2, a4, "boost::filesystem::copy", v12);
    return;
  }

  boost::filesystem::detail::copy_symlink(v8, a2, a4, v11);
}

void sub_1001C1E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
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

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

void boost::filesystem::detail::copy_symlink(const char **this, const boost::filesystem::path *a2, const boost::filesystem::path *a3, boost::system::error_code *a4)
{
  boost::filesystem::detail::read_symlink(this, a3, &__p);
  if (!a3 || (v7 = *(a3 + 2), (v7 & 1) == 0) || v7 == 1 && !*a3)
  {
    boost::filesystem::detail::create_symlink(&__p, a2, a3, v6);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1001C2028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::filesystem::detail::current_path(boost::filesystem::detail *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = getcwd(v11, 0x400uLL);
  if (v5)
  {
    std::string::__assign_external(a2, v5);
    if (this)
    {
      *this = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
    }
  }

  else if (!boost::filesystem::detail::current_path(boost::system::error_code *)::local::getcwd_error(this))
  {
    for (i = 2048; ; i *= 2)
    {
      v7 = operator new[](i);
      if (getcwd(v7, i))
      {
        break;
      }

      v8 = boost::filesystem::detail::current_path(boost::system::error_code *)::local::getcwd_error(this);
      operator delete[](v7);
      if (v8)
      {
        return;
      }

      if (i > 0x4000)
      {
        boost::filesystem::emit_error(0x3F, this, "boost::filesystem::current_path", v9);
        return;
      }
    }

    std::string::__assign_external(a2, v7);
    if (this)
    {
      *this = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
    }

    operator delete[](v7);
  }
}

void sub_1001C2168(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::filesystem::detail::relative(boost::filesystem::detail *this@<X0>, const boost::filesystem::path *a2@<X1>, const boost::filesystem::path *a3@<X2>, boost::system::error_code *a4@<X3>, std::string *a5@<X8>)
{
  if (a3)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
  }

  memset(&v19, 0, sizeof(v19));
  memset(&__p, 0, sizeof(__p));
  boost::filesystem::path::find_root_directory(this, a2, a3, a4);
  if (v9)
  {
    boost::filesystem::path::find_root_directory(a2, v9, v10, v11);
    if (v12)
    {
      goto LABEL_10;
    }
  }

  boost::filesystem::detail::current_path(&v19, &v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v17;
  if ((v19.__r_.__value_.__s.__data_[16] & 1) == 0 || v19.__r_.__value_.__r.__words[2] == 1 && !LODWORD(v19.__r_.__value_.__l.__data_))
  {
LABEL_10:
    boost::filesystem::detail::weakly_canonical(a2, &__p, &v19, &v16);
    if ((v19.__r_.__value_.__s.__data_[16] & 1) != 0 && (v19.__r_.__value_.__r.__words[2] != 1 || LODWORD(v19.__r_.__value_.__l.__data_)))
    {
      boost::filesystem::detail::relative(&v16);
    }

    else
    {
      boost::filesystem::detail::weakly_canonical(this, &__p, &v19, &v15);
      if ((v19.__r_.__value_.__s.__data_[16] & 1) == 0 || v19.__r_.__value_.__r.__words[2] == 1 && !LODWORD(v19.__r_.__value_.__l.__data_))
      {
        boost::filesystem::path::lexically_relative(&v15, &v16, v13, a5);
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        goto LABEL_20;
      }

      boost::filesystem::detail::relative(&v15, &v16);
    }
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v17 = v19;
    boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::relative", this, a2, &v17);
  }

  *a3 = v19;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  a5->__r_.__value_.__r.__words[0] = 0;
LABEL_20:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1001C237C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_free_exception(v30);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::filesystem::detail::create_symlink(boost::filesystem::detail *this, const boost::filesystem::path *a2, const boost::filesystem::path *a3, boost::system::error_code *a4)
{
  v5 = a2;
  v6 = this;
  if (a3)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
  }

  if (*(this + 23) < 0)
  {
    this = *this;
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  result = symlink(this, a2);
  if ((result & 0x80000000) != 0)
  {
    v8 = *__error();

    return boost::filesystem::emit_error(v8, v6, v5, a3, "boost::filesystem::create_symlink", v9);
  }

  return result;
}

uint64_t boost::filesystem::detail::create_hard_link(boost::filesystem::detail *this, const boost::filesystem::path *a2, const boost::filesystem::path *a3, boost::system::error_code *a4)
{
  v5 = a2;
  v6 = this;
  if (*(this + 23) < 0)
  {
    this = *this;
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  result = link(this, a2);
  if (result && (result = *__error(), result))
  {

    return boost::filesystem::emit_error(result, v6, v5, a3, "boost::filesystem::create_hard_link", v8);
  }

  else if (a3)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
  }

  return result;
}

uint64_t boost::filesystem::detail::copy_file(boost::filesystem::detail *this, const boost::filesystem::path *a2, const boost::filesystem::path *a3, const boost::filesystem::path *a4, boost::system::error_code *a5)
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
  }

  v27 = -1;
  v28 = -1;
  while (1)
  {
    v9 = *(this + 23) >= 0 ? this : *this;
    v10 = open(v9, 0x1000000);
    v28 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      break;
    }

    v11 = *__error();
    if (v11 != 4)
    {
      goto LABEL_33;
    }
  }

  if (fstat(v10, &v26))
  {
LABEL_60:
    v11 = *__error();
    goto LABEL_33;
  }

  st_mode = v26.st_mode;
  if ((v26.st_mode & 0xF000) != 0x8000)
  {
LABEL_61:
    v11 = 78;
    goto LABEL_33;
  }

  if ((v6 & 4) != 0)
  {
    while (1)
    {
      v14 = *(a2 + 23) >= 0 ? a2 : *a2;
      v15 = open(v14, 16777217, st_mode | 0x80u);
      v27 = v15;
      if ((v15 & 0x80000000) == 0)
      {
        break;
      }

      v11 = *__error();
      if (v11 != 4)
      {
        if (v11 != 2)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }
    }

    v20 = 1;
LABEL_37:
    if (fstat(v15, &v25))
    {
      goto LABEL_60;
    }

    v21 = v25.st_mode;
    if ((v25.st_mode & 0xF000) != 0x8000)
    {
      goto LABEL_61;
    }

    if (v26.st_dev != v25.st_dev || v26.st_ino != v25.st_ino)
    {
      if (v20)
      {
        if (v26.st_mtimespec.tv_sec < v25.st_mtimespec.tv_sec || v26.st_mtimespec.tv_sec == v25.st_mtimespec.tv_sec && v26.st_mtimespec.tv_nsec <= v25.st_mtimespec.tv_nsec)
        {
          goto LABEL_34;
        }

        if (ftruncate(v27, 0))
        {
          goto LABEL_60;
        }
      }

      if (v11)
      {
        goto LABEL_33;
      }

      if (v21 == st_mode || !fchmod(v27, st_mode))
      {
        if ((v6 & 0x18) != 0)
        {
          v22 = v27;
          if ((v6 & 0x10) != 0)
          {
            while (fcntl(v22, 51) < 0)
            {
              v11 = *__error();
              if (v11 != 4)
              {
LABEL_56:
                if (v11)
                {
                  goto LABEL_33;
                }

                break;
              }
            }
          }

          else
          {
            while (fcntl(v22, 51) < 0)
            {
              v11 = *__error();
              if (v11 != 4)
              {
                goto LABEL_56;
              }
            }
          }
        }

        v23 = close(v27);
        v27 = -1;
        if ((v23 & 0x80000000) == 0 || (v11 = *__error(), (v11 & 0xFFFFFFDF) == 4))
        {
          v19 = 1;
          goto LABEL_59;
        }

        goto LABEL_33;
      }

      goto LABEL_60;
    }

LABEL_32:
    v11 = 17;
LABEL_33:
    boost::filesystem::emit_error(v11, this, a2, a4, "boost::filesystem::copy_file", v12);
    goto LABEL_34;
  }

LABEL_19:
  if ((v6 & 4) != 0 || (v6 & 3) == 2)
  {
    v17 = 16778753;
  }

  else
  {
    v17 = 16780801;
  }

  do
  {
    if (*(a2 + 23) >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    v15 = open(v18, v17, st_mode | 0x80u);
    v27 = v15;
    if ((v15 & 0x80000000) == 0)
    {
      v20 = 0;
      goto LABEL_37;
    }

    v11 = *__error();
  }

  while (v11 == 4);
  if (v11 != 17)
  {
    goto LABEL_33;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  v19 = 0;
LABEL_59:
  return v19;
}

void sub_1001C27F8(_Unwind_Exception *a1)
{
  _Unwind_Resume(a1);
}

void boost::filesystem::operator/(boost::filesystem::path *a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, unint64_t *a4@<X3>, std::string *a5@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a5, *a2, *(a2 + 8));
  }

  else
  {
    *&a5->__r_.__value_.__l.__data_ = *a2;
    a5->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  boost::filesystem::path::append_v4(a5, a1, a3, a4);
}

void sub_1001C2888(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::detail::create_directory(boost::filesystem::detail *this, const boost::filesystem::path *a2, const boost::filesystem::path *a3, boost::system::error_code *a4)
{
  if (a3)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
  }

  if (a2)
  {
    v7 = a2;
    if (*(a2 + 23) < 0)
    {
      v7 = *a2;
    }

    if (stat(v7, &v15) < 0)
    {
      v10 = *__error();
      goto LABEL_17;
    }

    st_mode = v15.st_mode;
    if ((v15.st_mode & 0xF000) != 0x4000)
    {
      v10 = 20;
LABEL_17:
      boost::filesystem::emit_error(v10, this, a2, a3, "boost::filesystem::create_directory", v8);
      return 0;
    }
  }

  else
  {
    st_mode = 511;
  }

  if (*(this + 23) >= 0)
  {
    v11 = this;
  }

  else
  {
    v11 = *this;
  }

  if (mkdir(v11, st_mode))
  {
    v12 = *__error();
    memset(&v15, 0, 24);
    boost::filesystem::detail::status(this, &v15, &v16);
    if (v16 != 3)
    {
      boost::filesystem::emit_error(v12, this, a3, "boost::filesystem::create_directory", v13);
    }

    return 0;
  }

  return 1;
}

void boost::filesystem::detail::anonymous namespace::fd_wrapper::~fd_wrapper(boost::filesystem::detail::_anonymous_namespace_::fd_wrapper *this)
{
  v1 = *this;
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }
}

uint64_t boost::filesystem::detail::create_directories(std::string *this, const boost::filesystem::path *a2, boost::system::error_code *a3)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (a2)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
    }

    v6 = boost::filesystem::path::end(this, &v44);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
    }

    else
    {
      v42 = v44;
    }

    v43 = v45;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
    }

    else
    {
      v41 = *this;
    }

    v8 = boost::filesystem::detail::dot_path(v6);
    v9 = boost::filesystem::detail::dot_dot_path(v8);
    memset(&v40, 0, sizeof(v40));
    boost::filesystem::path::filename_v4(&v41, v10, v11, v12, &__p);
    while (1)
    {
      boost::filesystem::path::find_relative_path(&v41, v13, v14, v15);
      if (!v16)
      {
LABEL_28:
        v26 = 1;
        goto LABEL_29;
      }

      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = __p.__r_.__value_.__l.__size_;
      }

      if (v19 && boost::filesystem::path::compare_v4(&__p, v8, v17, v18) && boost::filesystem::path::compare_v4(&__p, v9, v17, v18))
      {
        boost::filesystem::detail::status(&v41, &v40, &v38);
        if (v38 == 3)
        {
          goto LABEL_28;
        }

        if (!v38)
        {
          break;
        }
      }

      boost::filesystem::path::iterator::decrement_v4(&v42.__r_.__value_.__l.__data_, v16, v17, v18);
      boost::filesystem::path::remove_filename(&v41, v20, v21, v22);
      boost::filesystem::path::filename_v4(&v41, v23, v24, v25, &v37);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v37;
    }

    if (!a2)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      v37 = v40;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::create_directories", this, &v41, &v37);
    }

    v26 = 0;
    *a2 = v40;
LABEL_29:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v26)
      {
LABEL_51:
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        return v26 & 1;
      }
    }

    else if (!v26)
    {
      goto LABEL_51;
    }

    LOBYTE(v26) = 0;
    while (v43 != v45 || *(&v43 + 1) != *(&v45 + 1))
    {
      boost::filesystem::path::append_v4(&v41, &v42, v17, v18);
      v31 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = v42.__r_.__value_.__l.__size_;
      }

      if (v31)
      {
        if (boost::filesystem::path::compare_v4(&v42, v8, v29, v30))
        {
          if (boost::filesystem::path::compare_v4(&v42, v9, v29, v30))
          {
            LOBYTE(v26) = boost::filesystem::detail::create_directory(&v41, 0, &v40, v30);
            if ((v40.__r_.__value_.__s.__data_[16] & 1) != 0 && (v40.__r_.__value_.__r.__words[2] != 1 || LODWORD(v40.__r_.__value_.__l.__data_)))
            {
              if (!a2)
              {
                v35 = __cxa_allocate_exception(0x30uLL);
                __p = v40;
                boost::filesystem::filesystem_error::filesystem_error(v35, "boost::filesystem::create_directories", this, &v41, &__p);
              }

              LOBYTE(v26) = 0;
              *a2 = v40;
              goto LABEL_51;
            }
          }
        }
      }

      boost::filesystem::path::iterator::increment_v4(&v42, v28, v29, v30);
    }

    goto LABEL_51;
  }

  if (!a2)
  {
    v33 = __cxa_allocate_exception(0x30uLL);
    v44.__r_.__value_.__r.__words[0] = 0;
    if ((qword_1004E53D0 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 22))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    LODWORD(v44.__r_.__value_.__l.__data_) = 22;
    v44.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
    v44.__r_.__value_.__r.__words[2] = v34;
    boost::filesystem::filesystem_error::filesystem_error(v33, "boost::filesystem::create_directories", this, &v44);
  }

  if ((qword_1004E53D0 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 22, a3))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  LOBYTE(v26) = 0;
  *a2 = 22;
  *(a2 + 1) = &boost::system::detail::generic_cat_holder<void>::instance;
  *(a2 + 2) = v7;
  return v26 & 1;
}

void sub_1001C2E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 65) < 0)
  {
    operator delete(*(v34 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::system::error_code::assign(boost::system::error_code *this, uint64_t a2, const boost::system::error_category *a3)
{
  v4 = a2;
  if (*(a3 + 1) >> 1 == 0x595588BD12BF6FE8)
  {
    result = a2 != 0;
  }

  else
  {
    result = (*(*a3 + 48))(a3, a2);
  }

  v7 = 2;
  if (result)
  {
    v7 = 3;
  }

  *this = v4;
  *(this + 1) = 0;
  *(this + 1) = a3;
  *(this + 2) = v7;
  return result;
}

uint64_t boost::filesystem::detail::copy_directory(boost::filesystem::detail *this, const boost::filesystem::path *a2, const boost::filesystem::path *a3, boost::system::error_code *a4)
{
  v6 = this;
  if (a3)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
  }

  if (*(this + 23) < 0)
  {
    this = *this;
  }

  if (stat(this, &v11) < 0 || (*(a2 + 23) >= 0 ? (v7 = a2) : (v7 = *a2), result = mkdir(v7, v11.st_mode), (result & 0x80000000) != 0))
  {
    v9 = __error();
    return boost::filesystem::emit_error(*v9, v6, a2, a3, "boost::filesystem::copy_directory", v10);
  }

  return result;
}

uint64_t boost::filesystem::detail::create_directory_symlink(boost::filesystem::detail *this, const boost::filesystem::path *a2, const boost::filesystem::path *a3, boost::system::error_code *a4)
{
  v5 = a2;
  v6 = this;
  if (a3)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
  }

  if (*(this + 23) < 0)
  {
    this = *this;
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  result = symlink(this, a2);
  if ((result & 0x80000000) != 0)
  {
    v8 = *__error();

    return boost::filesystem::emit_error(v8, v6, v5, a3, "boost::filesystem::create_directory_symlink", v9);
  }

  return result;
}

BOOL boost::filesystem::detail::current_path(boost::system::error_code *)::local::getcwd_error(void *a1)
{
  v3 = *__error();
  if (v3 == 34)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  if (v4)
  {
    boost::filesystem::emit_error(v4, a1, "boost::filesystem::current_path", v2);
  }

  else if (a1)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return v4 != 0;
}

uint64_t boost::filesystem::detail::current_path(boost::filesystem::detail *this, const boost::filesystem::path *a2, boost::system::error_code *a3)
{
  v4 = this;
  if (*(this + 23) < 0)
  {
    this = *this;
  }

  result = chdir(this);
  if (result && (result = *__error(), result))
  {

    return boost::filesystem::emit_error(result, v4, a2, "boost::filesystem::current_path", v6);
  }

  else if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  return result;
}

BOOL boost::filesystem::detail::equivalent(const char **this, const boost::filesystem::path *a2, const boost::filesystem::path *a3, boost::system::error_code *a4)
{
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = stat(v7, &v17);
  if (*(this + 23) >= 0)
  {
    v9 = this;
  }

  else
  {
    v9 = *this;
  }

  v10 = stat(v9, &v16);
  if (!(v10 | v8))
  {
    return v16.st_dev == v17.st_dev && v16.st_ino == v17.st_ino;
  }

  if (v10)
  {
    v13 = v8 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = __error();
    boost::filesystem::emit_error(*v14, this, a2, a3, "boost::filesystem::equivalent", v15);
  }

  return 0;
}

off_t boost::filesystem::detail::file_size(boost::filesystem::detail *this, const boost::filesystem::path *a2, boost::system::error_code *a3)
{
  v4 = this;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  if (*(this + 23) < 0)
  {
    this = *this;
  }

  if (stat(this, &v7) < 0)
  {
    boost::filesystem::detail::file_size();
    return -1;
  }

  if ((v7.st_mode & 0xF000) != 0x8000)
  {
    boost::filesystem::emit_error(0x4E, v4, a2, "boost::filesystem::file_size", v5);
    return -1;
  }

  return v7.st_size;
}

uint64_t boost::filesystem::detail::hard_link_count(boost::filesystem::detail *this, const boost::filesystem::path *a2, boost::system::error_code *a3)
{
  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  if (*(this + 23) < 0)
  {
    this = *this;
  }

  if ((stat(this, &v4) & 0x80000000) == 0)
  {
    return v4.st_nlink;
  }

  boost::filesystem::detail::hard_link_count();
  return -1;
}

void boost::filesystem::detail::initial_path(boost::filesystem::detail *this@<X0>, std::string *a2@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_16, memory_order_acquire) & 1) == 0)
  {
    v5 = this;
    boost::filesystem::detail::initial_path();
    this = v5;
  }

  v4 = *&byte_10052D7E8[8];
  if (byte_10052D7E8[23] >= 0)
  {
    v4 = byte_10052D7E8[23];
  }

  if (v4)
  {
    if (this)
    {
      *this = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
    }
  }

  else
  {
    boost::filesystem::detail::current_path(this, &v6);
    if (byte_10052D7E8[23] < 0)
    {
      operator delete(*byte_10052D7E8);
    }

    *byte_10052D7E8 = v6;
  }

  if (byte_10052D7E8[23] < 0)
  {
    std::string::__init_copy_ctor_external(a2, *byte_10052D7E8, *&byte_10052D7E8[8]);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *byte_10052D7E8;
    a2->__r_.__value_.__r.__words[2] = *&byte_10052D7E8[16];
  }
}

BOOL boost::filesystem::detail::is_empty(std::string *this, const boost::filesystem::path *a2, boost::system::error_code *a3)
{
  v4 = this;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    this = this->__r_.__value_.__r.__words[0];
  }

  if (stat(this, &v8) < 0)
  {
    boost::filesystem::detail::is_empty();
    return 0;
  }

  else if ((v8.st_mode & 0xF000) == 0x4000)
  {
    v10 = 0;
    boost::filesystem::detail::directory_iterator_construct(&v10, v4, 0, a2, v5);
    v9 = 0;
    if (v10)
    {
      v6 = *(v10 + 6) == 0;
    }

    else
    {
      v6 = 1;
    }

    boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v9);
    boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v10);
  }

  else
  {
    return v8.st_size == 0;
  }

  return v6;
}

__darwin_time_t boost::filesystem::detail::creation_time(boost::filesystem::detail *this, const boost::filesystem::path *a2, boost::system::error_code *a3)
{
  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  if (*(this + 23) < 0)
  {
    this = *this;
  }

  if ((stat(this, &v4) & 0x80000000) == 0)
  {
    return v4.st_birthtimespec.tv_sec;
  }

  boost::filesystem::detail::creation_time();
  return 0x8000000000000000;
}

__darwin_time_t boost::filesystem::detail::last_write_time(boost::filesystem::detail *this, const boost::filesystem::path *a2, boost::system::error_code *a3)
{
  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  if (*(this + 23) < 0)
  {
    this = *this;
  }

  if ((stat(this, &v4) & 0x80000000) == 0)
  {
    return v4.st_mtimespec.tv_sec;
  }

  boost::filesystem::detail::last_write_time();
  return 0x8000000000000000;
}

uint64_t boost::filesystem::detail::last_write_time(boost::filesystem::detail *this, const boost::filesystem::path *a2, void *a3, boost::system::error_code *a4)
{
  v5 = this;
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (*(this + 23) < 0)
  {
    this = *this;
  }

  if (stat(this, &v9) < 0)
  {
    return boost::filesystem::detail::last_write_time();
  }

  v8.actime = v9.st_atimespec.tv_sec;
  v8.modtime = a2;
  if (*(v5 + 23) >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *v5;
  }

  result = utime(v6, &v8);
  if ((result & 0x80000000) != 0)
  {
    return boost::filesystem::detail::last_write_time();
  }

  return result;
}

int *boost::filesystem::detail::permissions(int *result, unsigned int a2, uint64_t a3)
{
  if ((~a2 & 0x3000) != 0)
  {
    v4 = a2;
    v5 = result;
    v16 = 0uLL;
    v17 = 0;
    if ((a2 & 0x4000) != 0)
    {
      result = boost::filesystem::detail::symlink_status(result, &v16, &v14);
    }

    else
    {
      result = boost::filesystem::detail::status(result, &v16, &v14);
    }

    if ((v17 & 1) != 0 && (v17 != 1 || v16))
    {
      if (a3)
      {
        *a3 = v16;
        v8 = v17;
LABEL_25:
        *(a3 + 16) = v8;
        return result;
      }

      exception = __cxa_allocate_exception(0x30uLL);
      v12 = v16;
      v13 = v17;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::permissions", v5, &v12);
LABEL_34:
    }

    if ((v4 & 0x1000) != 0)
    {
      v4 |= v15;
    }

    else if ((v4 & 0x2000) != 0)
    {
      v4 = v15 & ~v4;
    }

    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    result = fchmodat(-2, v6, v4 & 0xFFF, (v4 >> 9) & 0x20);
    if (result)
    {
      v7 = *__error();
      if (a3)
      {
        if ((qword_1004E53D0 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
        {
          result = (v7 != 0);
        }

        else
        {
          result = (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, v7);
        }

        v8 = 2;
        if (result)
        {
          v8 = 3;
        }

        *a3 = v7;
        *(a3 + 4) = 0;
        *(a3 + 8) = &boost::system::detail::generic_cat_holder<void>::instance;
        goto LABEL_25;
      }

      exception = __cxa_allocate_exception(0x30uLL);
      *&v12 = 0;
      if ((qword_1004E53D0 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
      {
        v10 = v7 != 0;
      }

      else
      {
        v10 = (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, v7);
      }

      v11 = 2;
      LODWORD(v12) = v7;
      if (v10)
      {
        v11 = 3;
      }

      *(&v12 + 1) = &boost::system::detail::generic_cat_holder<void>::instance;
      v13 = v11;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::permissions", v5, &v12);
      goto LABEL_34;
    }
  }

  return result;
}

void boost::filesystem::detail::weakly_canonical(std::string *this@<X0>, std::string *a2@<X1>, std::string *a3@<X2>, std::string *a4@<X8>)
{
  v7 = this;
  memset(&v39, 0, sizeof(v39));
  v9 = boost::filesystem::path::end(this, &v37);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = v37;
  }

  v36 = v38;
  if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v7->__r_.__value_.__l.__data_, v7->__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = *v7;
  }

  while (1)
  {
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_13;
    }

    v9 = boost::filesystem::detail::status(&v34, &v39, &v32);
    if (LODWORD(v32.__r_.__value_.__l.__data_) != 1)
    {
      break;
    }

    boost::filesystem::path::remove_filename(&v34, v11, v12, v13);
    boost::filesystem::path::iterator::decrement_v4(&v35.__r_.__value_.__l.__data_, v14, v15, v16);
  }

  if (LODWORD(v32.__r_.__value_.__l.__data_))
  {
LABEL_13:
    v17 = boost::filesystem::detail::dot_path(v9);
    v20 = boost::filesystem::detail::dot_dot_path(v17);
    v21 = 0;
    memset(&__p, 0, sizeof(__p));
    while (v36 != v38 || *(&v36 + 1) != *(&v38 + 1))
    {
      boost::filesystem::path::append_v4(&__p, &v35, v18, v19);
      v21 = v21 || !boost::filesystem::path::compare_v4(&v35, v17, v24, v25) || !boost::filesystem::path::compare_v4(&v35, v20, v24, v25);
      boost::filesystem::path::iterator::increment_v4(&v35, v23, v24, v25);
    }

    v26 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = v34.__r_.__value_.__l.__size_;
    }

    if (!v26)
    {
      goto LABEL_37;
    }

    boost::filesystem::detail::canonical(&v34, a2, &v39, v19, &v32);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    v34 = v32;
    if ((v39.__r_.__value_.__s.__data_[16] & 1) != 0 && (v39.__r_.__value_.__r.__words[2] != 1 || LODWORD(v39.__r_.__value_.__l.__data_)))
    {
      if (!a3)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v32 = v39;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::weakly_canonical", &v34, &v32);
      }

      *a3 = v39;
    }

    else
    {
      v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v29 = __p.__r_.__value_.__l.__size_;
      }

      if (v29)
      {
        boost::filesystem::path::append_v4(&v34, &__p, v27, v28);
        if (v21)
        {
          v7 = &v34;
LABEL_37:
          boost::filesystem::path::lexically_normal_v4(v7, v19, a4);
          goto LABEL_40;
        }
      }

      *a4 = v34;
      a4 = &v34;
    }

    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
LABEL_40:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_42;
  }

  if (!a3)
  {
    v30 = __cxa_allocate_exception(0x30uLL);
    __p = v39;
    boost::filesystem::filesystem_error::filesystem_error(v30, "boost::filesystem::weakly_canonical", &v34, &__p);
  }

  *a3 = v39;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  a4->__r_.__value_.__r.__words[0] = 0;
LABEL_42:
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }
}

void sub_1001C3C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  __cxa_free_exception(v41);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

double boost::filesystem::detail::remove(boost::filesystem::detail *this, const boost::filesystem::path *a2, boost::system::error_code *a3)
{
  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  v13 = 0uLL;
  v14 = 0;
  boost::filesystem::detail::symlink_status(this, &v13, &v11);
  if (v11 != 1)
  {
    if (v11 == 3)
    {
      if (*(this + 23) >= 0)
      {
        v7 = this;
      }

      else
      {
        v7 = *this;
      }

      if (rmdir(v7))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11)
      {
        if (*(this + 23) >= 0)
        {
          v6 = this;
        }

        else
        {
          v6 = *this;
        }

        if (!unlink(v6))
        {
          return result;
        }

LABEL_15:
        v9 = *__error();
        if (v9 != 2 && v9 != 20)
        {
          boost::filesystem::emit_error(v9, this, a2, "boost::filesystem::remove", v8);
        }

        return result;
      }

      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v11 = v13;
        v12 = v14;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::remove", this, &v11);
      }

      result = *&v13;
      *a2 = v13;
      *(a2 + 2) = v14;
    }
  }

  return result;
}

uint64_t boost::filesystem::detail::remove_all(boost::filesystem::detail *this, const boost::filesystem::path *a2, boost::system::error_code *a3)
{
  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }
}

uint64_t boost::filesystem::detail::anonymous namespace::remove_all_impl(boost::filesystem::detail::_anonymous_namespace_ *this, const boost::filesystem::path *a2, boost::system::error_code *a3)
{
  v27 = 0uLL;
  v28 = 0;
  boost::filesystem::detail::symlink_status(this, &v27, &v25);
  result = 0;
  v7 = v25;
  if (v25 != 1)
  {
    if (!v25)
    {
      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v25 = v27;
        v26 = v28;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::remove_all", this, &v25);
      }

      *a2 = v27;
      *(a2 + 2) = v28;
      return -1;
    }

    if (v25 == 3)
    {
      *&v27 = 0;
      boost::filesystem::detail::directory_iterator_construct(&v27, this, 0, a2, v5);
      if (a2)
      {
        v9 = *(a2 + 2);
        if ((v9 & 1) != 0 && (v9 != 1 || *a2))
        {
          boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v27);
          return -1;
        }
      }

      *&v25 = 0;
      v10 = v27;
      if (v27)
      {
        v11 = 0;
        v12 = 0;
        while (v10 && *(v10 + 48) || v12 && *(v12 + 48))
        {
          if (a2 && (v14 = *(a2 + 2), (v14 & 1) != 0) && (v14 != 1 || *a2) || (boost::filesystem::detail::directory_iterator_increment(&v27, a2, v13), a2) && (v15 = *(a2 + 2), (v15 & 1) != 0) && (v15 != 1 || *a2))
          {
            v16 = 0;
            goto LABEL_29;
          }

          v12 = v25;
          v10 = v27;
          if (v27 == v25)
          {
            break;
          }
        }
      }

      else
      {
        v11 = 0;
      }

      v16 = 1;
LABEL_29:
      boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v25);
      boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v27);
      if ((v16 & 1) == 0)
      {
        return -1;
      }
    }

    else
    {
      v11 = 0;
    }

    if (v7 == 1)
    {
      goto LABEL_39;
    }

    if (v7 == 3)
    {
      if (*(this + 23) >= 0)
      {
        v17 = this;
      }

      else
      {
        v17 = *this;
      }

      if (rmdir(v17))
      {
LABEL_36:
        v18 = __error();
        v20 = 0;
        v21 = *v18;
        if (v21 == 2 || v21 == 20)
        {
LABEL_40:
          if (a2)
          {
LABEL_41:
            v22 = *(a2 + 2);
            if ((v22 & 1) != 0 && (v22 != 1 || *a2))
            {
              return -1;
            }
          }

          return v20 + v11;
        }

        boost::filesystem::emit_error(v21, this, a2, "boost::filesystem::remove", v19);
LABEL_39:
        v20 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      if (*(this + 23) >= 0)
      {
        v23 = this;
      }

      else
      {
        v23 = *this;
      }

      if (unlink(v23))
      {
        goto LABEL_36;
      }
    }

    v20 = 1;
    if (a2)
    {
      goto LABEL_41;
    }

    return v20 + v11;
  }

  return result;
}

void boost::filesystem::detail::rename(const std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2, std::error_code *a3, boost::system::error_code *a4)
{
  v5 = a2;
  v6 = this;
  if ((this->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    this = this->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a2 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(this, a2, a3);
  if (v7 && (v8 = *__error(), v8))
  {

    boost::filesystem::emit_error(v8, v6, v5, a3, "boost::filesystem::rename", v9);
  }

  else if (a3)
  {
    *&a3->__val_ = 0;
    a3->__cat_ = 0;
    *&a3[1].__val_ = 0;
  }
}

uint64_t boost::filesystem::detail::resize_file(boost::filesystem::detail *this, int64_t a2, boost::filesystem::path *a3, boost::system::error_code *a4, const char *a5)
{
  v6 = this;
  if (a2 < 0)
  {
    result = 27;
  }

  else
  {
    if (*(this + 23) < 0)
    {
      this = *this;
    }

    result = truncate(this, a2);
    if (!result || (result = *__error(), !result))
    {
      if (a3)
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        *(a3 + 2) = 0;
      }

      return result;
    }
  }

  return boost::filesystem::emit_error(result, v6, a3, "boost::filesystem::resize_file", a5);
}

uint64_t boost::filesystem::detail::space@<X0>(boost::filesystem::detail *this@<X0>, const boost::filesystem::path *a2@<X1>, void *a3@<X8>)
{
  v5 = this;
  a3[1] = -1;
  a3[2] = -1;
  *a3 = -1;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  if (*(this + 23) < 0)
  {
    this = *this;
  }

  result = statfs(this, &v11);
  if (result)
  {
    result = *__error();
    if (result)
    {
      return boost::filesystem::emit_error(result, v5, a2, "boost::filesystem::space", v8);
    }
  }

  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  f_bsize = v11.f_bsize;
  v10 = v11.f_bfree * v11.f_bsize;
  *a3 = v11.f_blocks * v11.f_bsize;
  a3[1] = v10;
  a3[2] = v11.f_bavail * f_bsize;
  return result;
}

void boost::filesystem::detail::temp_directory_path(boost::filesystem::detail *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  v5 = getenv("TMPDIR");
  if (!v5)
  {
    v5 = getenv("TMP");
    if (!v5)
    {
      v5 = getenv("TEMP");
      if (!v5)
      {
        v5 = getenv("TEMPDIR");
      }
    }
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = "/tmp";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v6);
  v8 = HIBYTE(v12);
  if (v12 < 0)
  {
    v8 = __p[1];
  }

  if (!v8)
  {
    goto LABEL_20;
  }

  boost::filesystem::detail::status(__p, this, &v10);
  if (!this || (v9 = *(this + 2), (v9 & 1) == 0) || v9 == 1 && !*this)
  {
    if (v10 == 3)
    {
LABEL_18:
      *a2 = *__p;
      *(a2 + 16) = v12;
      return;
    }

LABEL_20:
    boost::filesystem::emit_error(0x14, __p, this, "boost::filesystem::temp_directory_path", v7);
    goto LABEL_18;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001C4498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::filesystem::detail::system_complete(boost::filesystem::detail *this@<X0>, const boost::filesystem::path *a2@<X1>, boost::system::error_code *a3@<X2>, unint64_t *a4@<X3>, std::string *a5@<X8>)
{
  v7 = *(this + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(this + 1);
  }

  if (v7)
  {
    boost::filesystem::path::find_root_directory(this, a2, a3, a4);
    if (!v9)
    {
      boost::filesystem::detail::current_path(0, &v15);
      boost::filesystem::path::append_v4(&v15, this, v13, v14);
      *&a5->__r_.__value_.__l.__data_ = *&v15.__r_.__value_.__l.__data_;
      v10 = v15.__r_.__value_.__r.__words[2];
      goto LABEL_12;
    }

    v8 = *(this + 23);
  }

  if ((v8 & 0x80) == 0)
  {
    *&a5->__r_.__value_.__l.__data_ = *this;
    v10 = *(this + 2);
LABEL_12:
    a5->__r_.__value_.__r.__words[2] = v10;
    return;
  }

  v11 = *this;
  v12 = *(this + 1);

  std::string::__init_copy_ctor_external(a5, v11, v12);
}

void sub_1001C4570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *boost::filesystem::path::filename_v4@<X0>(boost::filesystem::path *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = this;
  filename_v4_size = boost::filesystem::path::find_filename_v4_size(this, a2, a3, a4);
  v8 = *(v5 + 23);
  if (v8 < 0)
  {
    v9 = v5;
    v5 = *v5;
    v8 = *(v9 + 1);
  }

  return std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a5, v5 + v8 - filename_v4_size, v5 + v8, filename_v4_size);
}

ssize_t boost::filesystem::detail::anonymous namespace::copy_file_data_read_write(boost::filesystem::detail::_anonymous_namespace_ *this)
{
  v1 = __chkstk_darwin(this);
  v5 = v4;
  v6 = v1;
  if (v2 == -1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v2 + 1;
  }

  if (v7 <= v3)
  {
    v7 = v3;
  }

  if (v7 <= 0x2000)
  {
    v7 = 0x2000;
  }

  if (v7 >= 0x40000)
  {
    LODWORD(v7) = 0x40000;
  }

  v8 = (v7 - 1) | ((v7 - 1) >> 1) | (((v7 - 1) | ((v7 - 1) >> 1)) >> 2);
  v9 = v8 | (v8 >> 4) | ((v8 | (v8 >> 4)) >> 8);
  v10 = (v9 | HIWORD(v9)) + 1;
  v11 = operator new[](v10, &std::nothrow);
  if (!v11)
  {
  }

  v12 = v11;
  operator delete[](v12);
  return v13;
}

ssize_t boost::filesystem::detail::anonymous namespace::copy_file_data_read_write_impl(boost::filesystem::detail::_anonymous_namespace_ *this, int a2, char *a3, size_t a4)
{
  v7 = this;
  result = read(this, a3, a4);
  if (result)
  {
    v9 = result;
    do
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        v10 = 0;
        while (1)
        {
          v11 = write(a2, &a3[v10], v9 - v10);
          if (v11 < 0)
          {
            result = *__error();
            if (result != 4)
            {
              return result;
            }
          }

          else
          {
            v10 += v11;
          }

          if (v10 >= v9)
          {
            goto LABEL_12;
          }
        }
      }

      result = *__error();
      if (result != 4)
      {
        break;
      }

LABEL_12:
      result = read(v7, a3, a4);
      v9 = result;
    }

    while (result);
  }

  return result;
}

void std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t OUTLINED_FUNCTION_0_7(boost::filesystem *a1, uint64_t a2, uint64_t a3, boost::system::error_code *a4, const char *a5)
{

  return boost::filesystem::emit_error(a1, v6, v5, a4, a5);
}

int *OUTLINED_FUNCTION_1_5()
{

  return __error();
}

void boost::filesystem::path::append_v3(boost::filesystem::path *this, const boost::filesystem::path *a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  v4 = *(a2 + 1);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v5)
  {
    if (this == a2)
    {
      if (v2 < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, v4);
      }

      else
      {
        __p = *a2;
      }

      boost::filesystem::path::append_v3(this, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v8 = *a2;
      if ((v2 & 0x80u) == 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      if (*v9 != 47)
      {
        boost::filesystem::path::append_separator_if_needed(this);
        v2 = *(a2 + 23);
        v8 = *a2;
        v4 = *(a2 + 1);
        v3 = *(a2 + 23);
      }

      if (v3 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = v8;
      }

      if (v3 >= 0)
      {
        v4 = v2;
      }

      std::string::append(this, v10, v4);
    }
  }
}

void sub_1001C49C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type boost::filesystem::path::append_separator_if_needed(std::string *this)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    if (!*(&this->__r_.__value_.__s + 23))
    {
      return 0;
    }

    v2 = this + size;
LABEL_6:
    if (*(v2 - 1) != 47)
    {
      std::string::push_back(this, 47);
      return size;
    }

    return 0;
  }

  size = this->__r_.__value_.__l.__size_;
  if (size)
  {
    v2 = (this->__r_.__value_.__r.__words[0] + size);
    goto LABEL_6;
  }

  return size;
}

void boost::filesystem::path::append_v3(std::string *this, std::string *__src, std::string *a3)
{
  if (__src == a3)
  {
    return;
  }

  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v7 = this->__r_.__value_.__r.__words[0];
    if (this->__r_.__value_.__r.__words[0] <= __src)
    {
      size = this->__r_.__value_.__l.__size_;
LABEL_7:
      if ((v7 + size) > __src)
      {
        std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__dst, __src, a3, a3 - __src);
        boost::filesystem::path::append_v3(this, __dst);
        boost::filesystem::detail::relative(__dst);
        return;
      }
    }
  }

  else if (this <= __src)
  {
    v7 = this;
    goto LABEL_7;
  }

  if (__src->__r_.__value_.__s.__data_[0] != 47)
  {
    boost::filesystem::path::append_separator_if_needed(this);
  }

  std::string::append[abi:ne200100]<char const*,0>(this, __src, a3);
}

void sub_1001C4B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
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

void sub_1001C4C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::filesystem::path::append_v4(boost::filesystem::path *this, const boost::filesystem::path *a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(a2 + 23);
  v6 = *(a2 + 1);
  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 1);
  }

  if (v7)
  {
    v8 = a2;
    if (this == a2)
    {
      if (v5 < 0)
      {
        std::string::__init_copy_ctor_external(&__n, *a2, v6);
      }

      else
      {
        __n = *a2;
      }

      boost::filesystem::path::append_v4(this, &__n);
      if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__n.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (v5 >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      __n.__r_.__value_.__r.__words[0] = 0;
      {
LABEL_25:
        std::string::operator=(this, v8);
        return;
      }

      v19 = 0;
      v11 = *(this + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v12 = *this;
        v11 = *(this + 1);
      }

      else
      {
        v12 = this;
      }

      v13 = __n.__r_.__value_.__r.__words[0];
      if (__n.__r_.__value_.__r.__words[0])
      {
        if (__n.__r_.__value_.__r.__words[0] != v19)
        {
          goto LABEL_25;
        }

        v14 = this;
        if (*(this + 23) < 0)
        {
          v14 = *this;
        }

        v15 = *(v8 + 23);
        v16 = *v8;
        v17 = v15 >= 0 ? v8 : *v8;
        if (memcmp(v14, v17, __n.__r_.__value_.__r.__words[0]))
        {
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v15) = *(v8 + 23);
        v16 = *v8;
      }

      if ((v15 & 0x80u) != 0)
      {
        v8 = v16;
      }

      if (*(v8 + v13) != 47)
      {
        boost::filesystem::path::append_separator_if_needed(this);
      }

      std::string::append(this, v8 + v13, &v7[-v13]);
    }
  }

  else if (boost::filesystem::path::find_filename_v4_size(this, a2, v6, a4))
  {

    std::string::push_back(this, 47);
  }
}

void sub_1001C4E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *anonymous namespace::find_root_directory_start(_anonymous_namespace_ *this, const char *a2, void *a3, unint64_t *a4)
{
  *a3 = 0;
  if (a2 && *this == 47)
  {
    if (a2 == 1 || *(this + 1) != 47)
    {
      return 0;
    }

    v5 = a2 - 2;
    if (a2 != 2)
    {
      v6 = this + 2;
      if (*(this + 2) == 47)
      {
        return 0;
      }

      v8 = memchr(v6, 47, v5);
      v9 = (v8 - v6);
      if (!v8)
      {
        v9 = v5;
      }

      a2 = v9 + 2;
    }

    *a3 = a2;
  }

  return a2;
}

void boost::filesystem::path::append_v4(std::string *this, char *__src, std::string *a3, unint64_t *a4)
{
  if (__src != a3)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v8 = this->__r_.__value_.__r.__words[0];
      if (this->__r_.__value_.__r.__words[0] <= __src)
      {
        size = this->__r_.__value_.__l.__size_;
LABEL_11:
        if (v8 + size > __src)
        {
          std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__n, __src, a3, a3 - __src);
          boost::filesystem::path::append_v4(this, __n, v14, v15);
          boost::filesystem::detail::relative(__n);
          return;
        }
      }
    }

    else if (this <= __src)
    {
      v8 = this;
      goto LABEL_11;
    }

    __n[0] = 0;
    {
      goto LABEL_21;
    }

    v17 = 0;
    v10 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
      v10 = this->__r_.__value_.__l.__size_;
    }

    else
    {
      v11 = this;
    }

    v12 = __n[0];
    if (!__n[0])
    {
      goto LABEL_22;
    }

    if (__n[0] != v17)
    {
      goto LABEL_21;
    }

    v13 = this;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = this->__r_.__value_.__r.__words[0];
    }

    if (!memcmp(v13, __src, __n[0]))
    {
LABEL_22:
      if (__src[v12] != 47)
      {
        boost::filesystem::path::append_separator_if_needed(this);
      }

      std::string::append[abi:ne200100]<char const*,0>(this, &__src[v12], a3);
    }

    else
    {
LABEL_21:
      std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(this, __src, a3, a3 - __src);
    }

    return;
  }

  if (boost::filesystem::path::find_filename_v4_size(this, __src, a3, a4))
  {

    std::string::push_back(this, 47);
  }
}

void sub_1001C50A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::path::compare_v3(std::string *this, std::string *a2, uint64_t a3, unint64_t *a4)
{
  boost::filesystem::path::begin(this, a4, &v14);
  memset(v13, 0, 24);
  v13[3] = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v13[4] = size;
  boost::filesystem::path::begin(a2, v6, &__p);
  memset(v11, 0, 24);
  v11[3] = a2;
  v8 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v8 & 0x80u) != 0)
  {
    v8 = a2->__r_.__value_.__l.__size_;
  }

  v11[4] = v8;
  v9 = boost::filesystem::detail::lex_compare_v3(&v14, v13, &__p, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v9;
}

uint64_t boost::filesystem::detail::lex_compare_v3(std::string *a1, uint64_t a2, std::string *a3, uint64_t a4)
{
  data = a1[1].__r_.__value_.__l.__data_;
  size = a1[1].__r_.__value_.__l.__size_;
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (data == v8 && size == v9)
  {
LABEL_16:
    v8 = data;
    v9 = size;
  }

  else if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, &a3->__r_.__value_.__l.__data_) & 0x80) == 0)
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, &a1->__r_.__value_.__l.__data_) & 0x80) != 0)
      {
        return 1;
      }

      boost::filesystem::path::iterator::increment_v3(a1, v14, v15, v16);
      boost::filesystem::path::iterator::increment_v3(a3, v17, v18, v19);
      data = a1[1].__r_.__value_.__l.__data_;
      size = a1[1].__r_.__value_.__l.__size_;
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      if (data == v8 && size == v9)
      {
        goto LABEL_16;
      }

      if (a3[1].__r_.__value_.__r.__words[0] == *(a4 + 24) && a3[1].__r_.__value_.__l.__size_ == *(a4 + 32))
      {
        goto LABEL_17;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_17:
  if (data != v8 || size != v9)
  {
    return 1;
  }

  if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

std::string *boost::filesystem::path::begin@<X0>(std::string *this@<X0>, unint64_t *a2@<X3>, std::string *a3@<X8>)
{
  v3 = this;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3[1].__r_.__value_.__r.__words[0] = this;
  v5 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  size = this->__r_.__value_.__l.__size_;
  if (v5 >= 0)
  {
    v7 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = this->__r_.__value_.__l.__size_;
  }

  a3[1].__r_.__value_.__l.__size_ = 0;
  if (v5 < 0)
  {
    if (!size)
    {
      return this;
    }

    v15.__r_.__value_.__r.__words[0] = 0;
    this = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!v5)
    {
      return this;
    }

    v15.__r_.__value_.__r.__words[0] = 0;
  }

  v8 = v15.__r_.__value_.__r.__words[0];
  if (v15.__r_.__value_.__r.__words[0])
  {
    goto LABEL_10;
  }

  v9 = this;
  if (this < v7)
  {
    a3[1].__r_.__value_.__l.__size_ = this;
    v8 = 1;
    goto LABEL_13;
  }

  v10 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
  v11 = v10 < 0;
  if (v10 >= 0)
  {
    v12 = v3;
  }

  else
  {
    v12 = v3->__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    v8 = v3->__r_.__value_.__l.__size_;
  }

  else
  {
    v8 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
  }

  if (!v8)
  {
LABEL_25:
    if (!v8)
    {
      return this;
    }

LABEL_10:
    v9 = 0;
LABEL_13:
    this = std::string::basic_string(&v15, v3, v9, v8, &v16);
    *a3 = v15;
    return this;
  }

  v13 = 0;
  while (v12->__r_.__value_.__s.__data_[v13] != 47)
  {
    if (v8 == ++v13)
    {
      goto LABEL_25;
    }
  }

  if (v13 == -1)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  if (v8 != v13)
  {
    v8 = v14;
  }

  if (v8)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t boost::filesystem::path::end@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = this;
  v2 = *(this + 23);
  if (v2 < 0)
  {
    v2 = *(this + 8);
  }

  a2[4] = v2;
  return this;
}

uint64_t boost::filesystem::path::compare_v4(std::string *this, std::string *a2, uint64_t a3, unint64_t *a4)
{
  boost::filesystem::path::begin(this, a4, &v14);
  memset(v13, 0, 24);
  v13[3] = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v13[4] = size;
  boost::filesystem::path::begin(a2, v6, &__p);
  memset(v11, 0, 24);
  v11[3] = a2;
  v8 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v8 & 0x80u) != 0)
  {
    v8 = a2->__r_.__value_.__l.__size_;
  }

  v11[4] = v8;
  v9 = boost::filesystem::detail::lex_compare_v4(&v14, v13, &__p, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v9;
}

uint64_t boost::filesystem::detail::lex_compare_v4(std::string *a1, uint64_t a2, std::string *a3, uint64_t a4)
{
  data = a1[1].__r_.__value_.__l.__data_;
  size = a1[1].__r_.__value_.__l.__size_;
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (data == v8 && size == v9)
  {
LABEL_16:
    v8 = data;
    v9 = size;
  }

  else if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, &a3->__r_.__value_.__l.__data_) & 0x80) == 0)
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, &a1->__r_.__value_.__l.__data_) & 0x80) != 0)
      {
        return 1;
      }

      boost::filesystem::path::iterator::increment_v4(a1, v14, v15, v16);
      boost::filesystem::path::iterator::increment_v4(a3, v17, v18, v19);
      data = a1[1].__r_.__value_.__l.__data_;
      size = a1[1].__r_.__value_.__l.__size_;
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      if (data == v8 && size == v9)
      {
        goto LABEL_16;
      }

      if (a3[1].__r_.__value_.__r.__words[0] == *(a4 + 24) && a3[1].__r_.__value_.__l.__size_ == *(a4 + 32))
      {
        goto LABEL_17;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_17:
  if (data != v8 || size != v9)
  {
    return 1;
  }

  if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

std::string *boost::filesystem::path::erase_redundant_separator(std::string *this, std::string::size_type a2)
{
  if (a2)
  {
    v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    v3 = v2 < 0 ? this->__r_.__value_.__l.__size_ : SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v3 > a2)
    {
      v4 = a2 + 1;
      if ((v2 & 0x80000000) != 0)
      {
        v5 = *(this->__r_.__value_.__r.__words[0] + v4);
      }

      else
      {
        v5 = this->__r_.__value_.__s.__data_[v4];
      }

      if (v5 == 47)
      {
        return std::string::erase(this, a2, 1uLL);
      }
    }
  }

  return this;
}

boost::filesystem::path *boost::filesystem::path::remove_filename(boost::filesystem::path *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  parent_path_size = boost::filesystem::path::find_parent_path_size(this, a2, a3, a4);
  v6 = *(this + 23);
  if (v6 < 0)
  {
    v8 = *this;
    v7 = (*this + *(this + 1));
  }

  else
  {
    v7 = this + v6;
    v8 = this;
  }

  std::string::erase(this, parent_path_size, v7 - (v8 + parent_path_size));
  return this;
}

const char *boost::filesystem::path::find_parent_path_size(boost::filesystem::path *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    this = *this;
    v5 = *(v4 + 1);
  }

  v20 = 0;
  v7 = *(v4 + 23);
  v8 = *v4;
  if (v5 >= v20)
  {
    v9 = v20;
  }

  else
  {
    v9 = v5;
  }

  if (v7 >= 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = *v4;
  }

  v11 = v10 - 1;
  v12 = v5;
  while (v12 > v20)
  {
    v13 = v12 - 1;
    v14 = (v12--)[v11];
    if (v14 == 47)
    {
      v9 = v13 + 1;
      break;
    }
  }

  if (v9 >= v20)
  {
    v15 = v20;
  }

  else
  {
    v15 = v9;
  }

  if (v7 >= 0)
  {
    v16 = v4;
  }

  else
  {
    v16 = *v4;
  }

  v17 = v16 - 1;
  v18 = v9;
  while (v18 > v20)
  {
    if (v18[v17] != 47)
    {
      return v18;
    }

    if (root_directory_start == --v18)
    {
      if (v5 == v9)
      {
        return root_directory_start;
      }

      else
      {
        return root_directory_start + 1;
      }
    }
  }

  if (v5 == v9)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

std::string *boost::filesystem::path::remove_trailing_separator(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (!size)
    {
      return this;
    }
  }

  else
  {
    if (!*(&this->__r_.__value_.__s + 23))
    {
      return this;
    }

    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  v4 = size - 1;
  if ((v2 & 0x80000000) != 0)
  {
    v6 = this->__r_.__value_.__r.__words[0];
    if (*(this->__r_.__value_.__r.__words[0] + v4) == 47)
    {
      v5 = (v6 + this->__r_.__value_.__l.__size_);
      goto LABEL_10;
    }
  }

  else if (this->__r_.__value_.__s.__data_[v4] == 47)
  {
    v5 = this + v2;
    v6 = this;
LABEL_10:
    std::string::erase(this, &v5[~v6], 1uLL);
  }

  return this;
}

std::string *boost::filesystem::path::replace_extension(std::string *this, const boost::filesystem::path *a2, uint64_t a3, unint64_t *a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  boost::filesystem::path::extension_v4(this, a4, &__p);
  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  v8 = size - v7;
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v8 <= v9)
    {
      *(&this->__r_.__value_.__s + 23) = v8;
      v10 = this;
      goto LABEL_10;
    }

LABEL_27:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (this->__r_.__value_.__l.__size_ < v8)
  {
    goto LABEL_27;
  }

  v10 = this->__r_.__value_.__r.__words[0];
  this->__r_.__value_.__l.__size_ = v8;
LABEL_10:
  v10->__r_.__value_.__s.__data_[v8] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = *(a2 + 23);
  if (v11 < 0)
  {
    if (!*(a2 + 1))
    {
      return this;
    }

    v12 = *a2;
  }

  else
  {
    v12 = a2;
    if (!*(a2 + 23))
    {
      return this;
    }
  }

  if (*v12 != 46)
  {
    std::string::push_back(this, 46);
    LOBYTE(v11) = *(a2 + 23);
  }

  if ((v11 & 0x80u) == 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if ((v11 & 0x80u) == 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(a2 + 1);
  }

  std::string::append(this, v13, v14);
  return this;
}

void sub_1001C588C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::path::find_root_name_size(boost::filesystem::path *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = 0;
  v4 = *(this + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = this;
    this = *this;
    v4 = *(v5 + 1);
  }

  return v7;
}

const char *boost::filesystem::path::find_root_path_size(boost::filesystem::path *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  v9 = 0;
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    this = *this;
    v5 = *(v4 + 1);
  }

  v7 = *(v4 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = *(v4 + 1);
  }

  if (root_directory_start < v7)
  {
    return root_directory_start + 1;
  }

  else
  {
    return v9;
  }
}

const char *boost::filesystem::path::find_root_directory(boost::filesystem::path *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    this = *this;
    v5 = *(v4 + 1);
  }

  if ((*(v4 + 23) & 0x8000000000000000) != 0)
  {
    v7 = *(v4 + 1);
  }

  return result;
}

const char *boost::filesystem::path::find_relative_path(boost::filesystem::path *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  v14 = 0;
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    this = *this;
    v5 = *(v4 + 1);
  }

  result = v14;
  v8 = *(v4 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = *(v4 + 1);
    if (root_directory_start >= v9)
    {
LABEL_16:
      v13 = *(v4 + 1);
      return result;
    }
  }

  else
  {
    v9 = *(v4 + 23);
    if (root_directory_start >= v8)
    {
      return result;
    }
  }

  v10 = root_directory_start + 1;
  if (v9 <= (root_directory_start + 1))
  {
    result = root_directory_start + 1;
  }

  else
  {
    result = v9;
  }

  while (v10 < v9)
  {
    v11 = v4;
    if ((v8 & 0x80000000) != 0)
    {
      v11 = *v4;
    }

    v12 = (v10++)[v11];
    if (v12 != 47)
    {
      result = v10 - 1;
      break;
    }
  }

  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

void boost::filesystem::path::filename_v3(boost::filesystem::path *this@<X0>, unint64_t *a2@<X3>, std::string *a3@<X8>)
{
  v3 = this;
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    this = *this;
    v5 = *(v3 + 1);
  }

  v28 = 0;
  if (root_directory_start >= v5)
  {
    LOBYTE(v7) = *(v3 + 23);
  }

  else
  {
    v7 = *(v3 + 23);
    v8 = v3;
    if (v7 < 0)
    {
      v8 = *v3;
    }

    if (*(v8 + v5 - 1) == 47)
    {
      v9 = *v3;
      if (v7 >= 0)
      {
        v9 = v3;
      }

      v10 = v9 - 2;
      v11 = v5;
      while (1)
      {
        v12 = (v11 - 1);
        if (v11 - 1 <= root_directory_start)
        {
          break;
        }

        v13 = v10[v11--];
        if (v13 != 47)
        {
          if (root_directory_start != v12)
          {
            goto LABEL_16;
          }

          break;
        }
      }

      v5 = 1;
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

LABEL_16:
  if (v28 == v5)
  {
    root_directory_start = 0;
    if ((v7 & 0x80) == 0)
    {
LABEL_19:

      std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a3, &root_directory_start[v3], &root_directory_start[v3 + v5], v5);
      return;
    }

LABEL_18:
    v3 = *v3;
    goto LABEL_19;
  }

  v14 = *v3;
  if (v5 >= v28)
  {
    v15 = v28;
  }

  else
  {
    v15 = v5;
  }

  if ((v7 & 0x80u) == 0)
  {
    v16 = v3;
  }

  else
  {
    v16 = *v3;
  }

  v17 = v16 - 1;
  v18 = v5;
  while (v18 > v28)
  {
    v19 = v18 - 1;
    v20 = v17[v18--];
    if (v20 == 47)
    {
      v15 = v19 + 1;
      break;
    }
  }

  v5 -= v15;
  if (v5)
  {
LABEL_47:
    root_directory_start = v15;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v15 <= v28)
  {
    goto LABEL_46;
  }

  v21 = (v15 - 1);
  v22 = (v7 & 0x80u) == 0 ? v3 : *v3;
  if (v21[v22] != 47)
  {
    goto LABEL_46;
  }

  if (v21 >= root_directory_start)
  {
    v21 = root_directory_start;
  }

  v23 = v22 - 2;
  v24 = v15;
  while (1)
  {
    v25 = (v24 - 1);
    if (v24 - 1 <= root_directory_start)
    {
      break;
    }

    v26 = v23[v24--];
    if (v26 != 47)
    {
      goto LABEL_45;
    }
  }

  v25 = v21;
LABEL_45:
  if (v25 == root_directory_start)
  {
LABEL_46:
    v5 = 0;
    goto LABEL_47;
  }

  if (byte_10052D81F < 0)
  {

    std::string::__init_copy_ctor_external(a3, v27, *(&v27 + 1));
  }

  else
  {
    a3->__r_.__value_.__r.__words[2] = unk_10052D818;
  }
}

const char *boost::filesystem::path::find_filename_v4_size(boost::filesystem::path *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    this = *this;
    v5 = *(v4 + 1);
  }

  v13 = 0;
  if (v5 >= v13)
  {
    v6 = v13;
  }

  else
  {
    v6 = v5;
  }

  if (*(v4 + 23) >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = *v4;
  }

  v8 = v7 - 1;
  v9 = v5;
  while (v9 > v13)
  {
    v10 = v9 - 1;
    v11 = (v9--)[v8];
    if (v11 == 47)
    {
      v6 = v10 + 1;
      return (v5 - v6);
    }
  }

  return (v5 - v6);
}

std::string *boost::filesystem::path::stem_v3@<X0>(boost::filesystem::path *this@<X0>, unint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  boost::filesystem::path::filename_v3(this, a2, a3);
  if (result)
  {
    if (result)
    {
      v9 = *(a3 + 23);
      v10 = (v9 & 0x80u) == 0 ? a3 : *a3;
      v11 = (v9 & 0x80u) == 0 ? *(a3 + 23) : *(a3 + 8);
      if (v11)
      {
        v12 = v11 + v10;
        v13 = v10 - 1;
        while (v11)
        {
          v14 = *(v13 + v11);
          --v12;
          --v11;
          if (v14 == 46)
          {
            if (v11 != -1)
            {
              v15 = v9;
              v16 = a3 + v9;
              if (v15 < 0)
              {
                v16 = *a3 + *(a3 + 8);
              }

              return std::string::erase(a3, v11, v16 - v12);
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

void sub_1001C5DBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *boost::filesystem::path::stem_v4@<X0>(boost::filesystem::path *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  boost::filesystem::path::filename_v4(this, a2, a3, a4, a5);
  if (result)
  {
    if (result)
    {
      v11 = *(a5 + 23);
      v12 = (v11 & 0x80u) == 0 ? a5 : *a5;
      v13 = (v11 & 0x80u) == 0 ? *(a5 + 23) : *(a5 + 8);
      if (v13)
      {
        v14 = v13 + v12;
        v15 = v12 - 1;
        while (v13)
        {
          v16 = *(v15 + v13);
          --v14;
          --v13;
          if (v16 == 46)
          {
            if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v17 = v11;
              v18 = a5 + v11;
              if (v17 < 0)
              {
                v18 = *a5 + *(a5 + 8);
              }

              return std::string::erase(a5, v13, v18 - v14);
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

void sub_1001C5E98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::filesystem::path::extension_v3(boost::filesystem::path *this@<X0>, unint64_t *a2@<X3>, void *a3@<X8>)
{
  boost::filesystem::path::filename_v3(this, a2, &__p);
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v10 = p_p + size;
      v11 = ~size;
      while (v11 != -1)
      {
        v12 = *--v10;
        ++v11;
        if (v12 == 46)
        {
          if (!v11)
          {
            break;
          }

          std::string::basic_string[abi:ne200100]<0>(a3, v10);
          goto LABEL_15;
        }
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
LABEL_15:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1001C5F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::filesystem::path::extension_v4(boost::filesystem::path *this@<X0>, unint64_t *a2@<X3>, std::string *a3@<X8>)
{
  v3 = this;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    this = *this;
    v5 = *(v3 + 1);
  }

  v18 = 0;
  v6 = *(v3 + 23);
  v7 = *v3;
  if (v5 >= v18)
  {
    v8 = v18;
  }

  else
  {
    v8 = v5;
  }

  if (v6 >= 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = *v3;
  }

  v10 = v9 - 1;
  v11 = v5;
  while (v11 > v18)
  {
    v12 = v11 - 1;
    v13 = (v11--)[v10];
    if (v13 == 47)
    {
      v8 = v12 + 1;
      break;
    }
  }

  v14 = (v5 - v8);
  if (v5 != v8)
  {
    v15 = v6 >= 0 ? v3 : *v3;
    if (v8[v15] != 46 || v14 != 1 && (v14 != 2 || v8[v15 + 1] != 46))
    {
      v16 = 0;
      while (&v5[v16] > v8)
      {
        v17 = v5[v15 - 1 + v16--];
        if (v17 == 46)
        {
          if (&v5[v16] > v8)
          {
            std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(a3, &v5[v16 + v15], &v5[v15], -v16);
          }

          return;
        }
      }
    }
  }
}

void sub_1001C60BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::filesystem::path::lexically_relative(std::string *this@<X0>, const boost::filesystem::path *a2@<X1>, unint64_t *a3@<X3>, std::string *a4@<X8>)
{
  boost::filesystem::path::begin(this, a3, &v47);
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  boost::filesystem::path::begin(a2, v7, &v45);
  if (*(a2 + 23) >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 1);
  }

  v12 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = v47;
  }

  v40 = v48;
  v13 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v45;
  }

  v38 = v46;
  while (v40 != __PAIR128__(size, this))
  {
    v14 = v38 == a2 && *(&v38 + 1) == v11;
    if (v14 || boost::filesystem::path::compare_v4(&v39, &v37, v9, v10))
    {
      break;
    }

    boost::filesystem::path::iterator::increment_v4(&v39, v15, v16, v17);
    boost::filesystem::path::iterator::increment_v4(&v37, v18, v19, v20);
  }

  std::pair<boost::filesystem::path::iterator,boost::filesystem::path::iterator>::pair[abi:ne200100]<boost::filesystem::path::iterator&,boost::filesystem::path::iterator&,0>(&v41, &v39, &v37);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v42 == v48 && v44 == v46)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_67;
  }

  if (v42 == __PAIR128__(size, this) && v44 == __PAIR128__(v11, a2))
  {
    if ((byte_10052D81F & 0x80000000) == 0)
    {
      v23 = unk_10052D818;
LABEL_65:
      a4->__r_.__value_.__r.__words[2] = v23;
      goto LABEL_67;
    }

LABEL_66:
    goto LABEL_67;
  }

  v24 = 0;
  while (v44 != a2 || *(&v44 + 1) != v11)
  {
    {
      v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v29 = __p.__r_.__value_.__l.__size_;
      }

      {
        ++v24;
      }
    }

    else
    {
      --v24;
    }

    boost::filesystem::path::iterator::increment_v4(&__p, v26, v27, v28);
  }

  if (v24 < 0)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_67;
  }

  if (v24)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    v30 = v24 + 1;
    a4->__r_.__value_.__r.__words[2] = 0;
    do
    {
      --v30;
    }

    while (v30 > 1);
  }

  else
  {
    if (v42 == this && *(&v42 + 1) == size)
    {
      goto LABEL_63;
    }

    v36 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = v41.__r_.__value_.__l.__size_;
    }

    if (!v36)
    {
LABEL_63:
      if ((byte_10052D81F & 0x80000000) == 0)
      {
        v23 = unk_10052D818;
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
  }

  while (v42 != this || *(&v42 + 1) != size)
  {
    boost::filesystem::path::append_v4(a4, &v41, v21, v22);
    boost::filesystem::path::iterator::increment_v4(&v41, v32, v33, v34);
  }

LABEL_67:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_71:
      if ((v12 & 0x80000000) == 0)
      {
        return;
      }

LABEL_75:
      operator delete(v47.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v45.__r_.__value_.__l.__data_);
  if (v12 < 0)
  {
    goto LABEL_75;
  }
}

void sub_1001C6480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::pair<boost::filesystem::path::iterator,boost::filesystem::path::iterator>::~pair(&a30);
  if (v30 < 0)
  {
    operator delete(*(v31 - 176));
  }

  if (a11 < 0)
  {
    operator delete(*(v31 - 136));
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<boost::filesystem::path::iterator,boost::filesystem::path::iterator>::~pair(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void boost::filesystem::path::lexically_normal_v3(boost::filesystem::path *this@<X0>, unint64_t *a2@<X3>, std::string *a3@<X8>)
{
  v3 = this;
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v3 = *this;
    v5 = *(this + 1);
  }

  v27 = 0;
  v7 = v27;
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a3, v3, v3 + v27, v27);
  if (root_directory_start < v5)
  {
    std::string::push_back(a3, 47);
    v7 = (root_directory_start + 1);
  }

  if (v7 >= v5)
  {
    return;
  }

  v8 = v7;
  while (*(v3 + v8) == 47)
  {
    if (v5 == ++v8)
    {
      return;
    }
  }

  while (1)
  {
    v14 = v3 + v8;
    v15 = &v5[-v8];
    v16 = memchr(v3 + v8, 47, &v5[-v8]);
    if (v16)
    {
      v15 = v16 - v14;
    }

    if (v15 != 2)
    {
      if (v15 == 1 && *v14 == 46)
      {
        v17 = 1;
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (*v14 == 46 && v14[1] == 46)
    {
      v18 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      if ((v18 & 0x8000000000000000) != 0)
      {
        size = a3->__r_.__value_.__l.__size_;
        if (size <= v7)
        {
          goto LABEL_56;
        }
      }

      else
      {
        size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
        if (v7 >= v18)
        {
          goto LABEL_56;
        }
      }

      v13 = a3->__r_.__value_.__r.__words[0];
      if (size >= v7)
      {
        v10 = v7;
      }

      else
      {
        v10 = size;
      }

      if ((v18 & 0x80000000) == 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = a3->__r_.__value_.__r.__words[0];
      }

      v21 = &v20[-1].__r_.__value_.__r.__words[2] + 7;
      v22 = size;
      while (v22 > v7)
      {
        v23 = v22 - 1;
        v24 = *(v21 + v22--);
        if (v24 == 47)
        {
          v10 = v23 + 1;
          break;
        }
      }

      if (size - v10 != 2 || ((v18 & 0x80000000) == 0 ? (v25 = a3) : (v25 = a3->__r_.__value_.__r.__words[0]), v25->__r_.__value_.__s.__data_[v10] != 46 || v25->__r_.__value_.__s.__data_[v10 + 1] != 46))
      {
        if (v10 > v7)
        {
          v9 = (v18 & 0x80000000) == 0 ? a3 : a3->__r_.__value_.__r.__words[0];
          if (*(v9 + v10 - 1) == 47)
          {
            --v10;
          }
        }

        v11 = (v18 & 0x80000000) != 0;
        if ((v18 & 0x80000000) == 0)
        {
          v12 = a3 + v18;
        }

        else
        {
          v12 = v13 + a3->__r_.__value_.__l.__size_;
        }

        if (!v11)
        {
          v13 = a3;
        }

        std::string::erase(a3, v10, v12 - (v13 + v10));
        goto LABEL_57;
      }
    }

LABEL_56:
    boost::filesystem::path::append_separator_if_needed(a3);
    std::string::append(a3, v3 + v8, v15);
LABEL_57:
    v17 = 0;
LABEL_58:
    v8 += v15;
    if (v8 == v5)
    {
      break;
    }

    if (v8 < v5)
    {
      while (*(v3 + v8) == 47)
      {
        if (++v8 >= v5)
        {
          goto LABEL_62;
        }
      }
    }

    if (v8 == v5)
    {
      goto LABEL_62;
    }
  }

  v26 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((v26 & 0x80u) != 0)
  {
    v26 = a3->__r_.__value_.__l.__size_;
  }

  if (((v26 != 0) & ~v17) == 0)
  {
LABEL_62:
    boost::filesystem::path::append_separator_if_needed(a3);
    std::string::push_back(a3, 46);
  }
}

void sub_1001C6800(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::filesystem::path::lexically_normal_v4(boost::filesystem::path *this@<X0>, unint64_t *a2@<X3>, std::string *a3@<X8>)
{
  v3 = this;
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v3 = *this;
    v5 = *(this + 1);
  }

  v33 = 0;
  v7 = v33;
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a3, v3, v3 + v33, v33);
  if (root_directory_start < v5)
  {
    std::string::push_back(a3, 47);
    v7 = (root_directory_start + 1);
  }

  if (v7 >= v5)
  {
    return;
  }

  v8 = v7;
  while (*(v3 + v8) == 47)
  {
    if (v5 == ++v8)
    {
      return;
    }
  }

  do
  {
    v14 = v3 + v8;
    v15 = &v5[-v8];
    v16 = memchr(v3 + v8, 47, &v5[-v8]);
    if (v16)
    {
      v15 = v16 - v14;
    }

    v8 += v15;
    if (v15 == 2)
    {
      if (*v14 != 46 || v14[1] != 46)
      {
        goto LABEL_57;
      }

      v17 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      if ((v17 & 0x8000000000000000) != 0)
      {
        size = a3->__r_.__value_.__l.__size_;
        if (size <= v7)
        {
          goto LABEL_57;
        }
      }

      else
      {
        size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
        if (v7 >= v17)
        {
          goto LABEL_57;
        }
      }

      v13 = a3->__r_.__value_.__r.__words[0];
      if (size >= v7)
      {
        v10 = v7;
      }

      else
      {
        v10 = size;
      }

      if ((v17 & 0x80000000) == 0)
      {
        v19 = a3;
      }

      else
      {
        v19 = a3->__r_.__value_.__r.__words[0];
      }

      v20 = &v19[-1].__r_.__value_.__r.__words[2] + 7;
      v21 = size;
      while (v21 > v7)
      {
        v22 = v21 - 1;
        v23 = *(v20 + v21--);
        if (v23 == 47)
        {
          v10 = v22 + 1;
          break;
        }
      }

      if (size - v10 != 2 || ((v17 & 0x80000000) == 0 ? (v24 = a3) : (v24 = a3->__r_.__value_.__r.__words[0]), v24->__r_.__value_.__s.__data_[v10] != 46 || v24->__r_.__value_.__s.__data_[v10 + 1] != 46))
      {
        if (v10 > v7)
        {
          v9 = (v17 & 0x80000000) == 0 ? a3 : a3->__r_.__value_.__r.__words[0];
          if (*(v9 + v10 - 1) == 47)
          {
            --v10;
          }
        }

        v11 = (v17 & 0x80000000) != 0;
        if ((v17 & 0x80000000) == 0)
        {
          v12 = a3 + v17;
        }

        else
        {
          v12 = v13 + a3->__r_.__value_.__l.__size_;
        }

        if (!v11)
        {
          v13 = a3;
        }

        std::string::erase(a3, v10, v12 - (v13 + v10));
LABEL_58:
        if (v8 == v5)
        {
          goto LABEL_79;
        }

        goto LABEL_10;
      }

LABEL_57:
      boost::filesystem::path::append_separator_if_needed(a3);
      std::string::append(a3, v14, v15);
      goto LABEL_58;
    }

    if (v15 != 1 || *v14 != 46)
    {
      goto LABEL_57;
    }

    if (v8 == v5)
    {
      break;
    }

LABEL_10:
    if (v8 < v5)
    {
      while (*(v3 + v8) == 47)
      {
        if (++v8 >= v5)
        {
          goto LABEL_60;
        }
      }
    }
  }

  while (v8 != v5);
LABEL_60:
  v25 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v26 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    v27 = a3->__r_.__value_.__l.__size_;
    if (!v27)
    {
      goto LABEL_79;
    }

    if (v27 == 1)
    {
      goto LABEL_78;
    }

LABEL_66:
    v28 = v27 - 1;
    if ((v26 & 0x80) != 0)
    {
      if (*(a3->__r_.__value_.__r.__words[0] + v28) != 46)
      {
        goto LABEL_78;
      }

      v29 = a3->__r_.__value_.__l.__size_;
    }

    else
    {
      if (a3->__r_.__value_.__s.__data_[v28] != 46)
      {
        goto LABEL_78;
      }

      v29 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    v30 = v29 - 2;
    if ((v26 & 0x80) != 0)
    {
      v31 = a3->__r_.__value_.__r.__words[0];
      if (*(a3->__r_.__value_.__r.__words[0] + v30) != 46)
      {
        goto LABEL_78;
      }

      v25 = a3->__r_.__value_.__l.__size_;
      if (v25 == 2)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (a3->__r_.__value_.__s.__data_[v30] != 46)
      {
        goto LABEL_78;
      }

      if (v26 == 2)
      {
        goto LABEL_79;
      }

      v31 = a3;
    }

    if (v31->__r_.__value_.__s.__data_[v25 - 3] != 47)
    {
      goto LABEL_78;
    }
  }

  else if (*(&a3->__r_.__value_.__s + 23))
  {
    if (v26 != 1)
    {
      v27 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      goto LABEL_66;
    }

LABEL_78:
    boost::filesystem::path::append_separator_if_needed(a3);
  }

LABEL_79:
  v32 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((v32 & 0x80u) != 0)
  {
    v32 = a3->__r_.__value_.__l.__size_;
  }

  if (!v32)
  {
    std::string::push_back(a3, 46);
  }
}

void sub_1001C6B60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
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
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

void boost::filesystem::path::iterator::increment_v3(std::string *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  data = this[1].__r_.__value_.__l.__data_;
  v6 = data[23];
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(data + 1);
  }

  v7 = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
  if (v7 < 0)
  {
    p_size = &v4[1].__r_.__value_.__l.__size_;
    v9 = v4[1].__r_.__value_.__l.__size_ + v4->__r_.__value_.__l.__size_;
    v4[1].__r_.__value_.__l.__size_ = v9;
    if (v9 >= v6)
    {
      *v4->__r_.__value_.__l.__data_ = 0;
      v4->__r_.__value_.__l.__size_ = 0;
      return;
    }
  }

  else
  {
    p_size = &v4[1].__r_.__value_.__l.__size_;
    v9 = v4[1].__r_.__value_.__l.__size_ + v7;
    v4[1].__r_.__value_.__l.__size_ = v9;
    if (v9 >= v6)
    {
      v4->__r_.__value_.__s.__data_[0] = 0;
      *(&v4->__r_.__value_.__s + 23) = 0;
      return;
    }
  }

  v10 = data;
  if (data[23] < 0)
  {
    v10 = *data;
  }

  if (v10[v9] == 47)
  {
    v24 = 0;
    if (data[23] < 0)
    {
      data = *data;
    }

    v9 = *p_size;
    if (*p_size == root_directory_start)
    {
      v12 = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
      if (v12 < 0)
      {
        if (v4->__r_.__value_.__l.__size_ == v24)
        {
          v4->__r_.__value_.__l.__size_ = 1;
          v4 = v4->__r_.__value_.__r.__words[0];
          goto LABEL_19;
        }
      }

      else if (v24 == v12)
      {
        *(&v4->__r_.__value_.__s + 23) = 1;
LABEL_19:
        LOWORD(v4->__r_.__value_.__l.__data_) = 47;
        return;
      }
    }

    data = v4[1].__r_.__value_.__l.__data_;
    if (v9 == v6)
    {
LABEL_25:
      if (v6 - 1 >= root_directory_start)
      {
        v14 = root_directory_start;
      }

      else
      {
        v14 = v6 - 1;
      }

      if (data[23] >= 0)
      {
        v15 = data;
      }

      else
      {
        v15 = *data;
      }

      v16 = v15 - 2;
      v17 = v6;
      while (1)
      {
        v18 = v17 - 1;
        if (v17 - 1 <= root_directory_start)
        {
          break;
        }

        v19 = (v17--)[v16];
        if (v19 != 47)
        {
          goto LABEL_36;
        }
      }

      v18 = v14;
LABEL_36:
      v9 = v6;
      if (v18 != root_directory_start)
      {
        v4[1].__r_.__value_.__l.__size_ = (v6 - 1);
        return;
      }
    }

    else
    {
      while (1)
      {
        v13 = data;
        if (data[23] < 0)
        {
          v13 = *data;
        }

        if (v13[v9] != 47)
        {
          break;
        }

        *p_size = ++v9;
        if (v6 == v9)
        {
          goto LABEL_25;
        }
      }
    }
  }

  v20 = data[23];
  if (v20 < 0)
  {
    v21 = *data;
    v22 = *(data + 1);
  }

  else
  {
    v21 = data;
    v22 = data[23];
  }

  if (v22 <= v9)
  {
    goto LABEL_47;
  }

  v23 = v9;
  while (v23[v21] != 47)
  {
    if (v22 == ++v23)
    {
      goto LABEL_47;
    }
  }

  if (v22 == v23 || v23 == -1)
  {
LABEL_47:
    v23 = v6;
  }

  if ((v20 & 0x80000000) != 0)
  {
    data = *data;
  }

  std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v4, &data[v9], &v23[data], &v23[-v9]);
}

void boost::filesystem::path::iterator::increment_v4(std::string *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  data = this[1].__r_.__value_.__l.__data_;
  v6 = data[23];
  if (v6 < 0)
  {
    v7 = *(data + 1);
  }

  else
  {
    v7 = data[23];
  }

  v8 = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
  if (v8 < 0)
  {
    if (v4->__r_.__value_.__l.__size_)
    {
      goto LABEL_13;
    }
  }

  else if (*(&v4->__r_.__value_.__s + 23))
  {
    goto LABEL_13;
  }

  size = v4[1].__r_.__value_.__l.__size_;
  if ((size + 1) == v7)
  {
    v10 = data;
    if ((v6 & 0x80000000) != 0)
    {
      v10 = *data;
    }

    if (v10[size] == 47)
    {
      v4[1].__r_.__value_.__l.__size_ = v7;
      return;
    }
  }

LABEL_13:
  if ((v8 & 0x80000000) != 0)
  {
    p_size = &v4[1].__r_.__value_.__l.__size_;
    v12 = v4[1].__r_.__value_.__l.__size_ + v4->__r_.__value_.__l.__size_;
    v4[1].__r_.__value_.__l.__size_ = v12;
    if (v12 >= v7)
    {
LABEL_63:
      *v4->__r_.__value_.__l.__data_ = 0;
      v4->__r_.__value_.__l.__size_ = 0;
      return;
    }
  }

  else
  {
    p_size = &v4[1].__r_.__value_.__l.__size_;
    v12 = v4[1].__r_.__value_.__l.__size_ + v8;
    v4[1].__r_.__value_.__l.__size_ = v12;
    if (v12 >= v7)
    {
LABEL_15:
      v4->__r_.__value_.__s.__data_[0] = 0;
      *(&v4->__r_.__value_.__s + 23) = 0;
      return;
    }
  }

  v13 = data;
  if (data[23] < 0)
  {
    v13 = *data;
  }

  if (v13[v12] == 47)
  {
    v27 = 0;
    if (data[23] < 0)
    {
      data = *data;
    }

    v12 = *p_size;
    if (*p_size == root_directory_start)
    {
      v15 = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
      if (v15 < 0)
      {
        if (v4->__r_.__value_.__l.__size_ == v27)
        {
          v4->__r_.__value_.__l.__size_ = 1;
          v4 = v4->__r_.__value_.__r.__words[0];
          goto LABEL_28;
        }
      }

      else if (v27 == v15)
      {
        *(&v4->__r_.__value_.__s + 23) = 1;
LABEL_28:
        LOWORD(v4->__r_.__value_.__l.__data_) = 47;
        return;
      }
    }

    for (data = v4[1].__r_.__value_.__l.__data_; v7 != v12; *p_size = ++v12)
    {
      v16 = data;
      if (data[23] < 0)
      {
        v16 = *data;
      }

      if (v16[v12] != 47)
      {
        goto LABEL_46;
      }
    }

    v17 = v7 - 1 >= root_directory_start ? root_directory_start : v7 - 1;
    v18 = data[23] >= 0 ? data : *data;
    v19 = v18 - 2;
    v20 = v7;
    while (1)
    {
      v21 = v20 - 1;
      if (v20 - 1 <= root_directory_start)
      {
        break;
      }

      v22 = (v20--)[v19];
      if (v22 != 47)
      {
        goto LABEL_45;
      }
    }

    v21 = v17;
LABEL_45:
    v12 = v7;
    if (v21 != root_directory_start)
    {
      v4[1].__r_.__value_.__l.__size_ = (v7 - 1);
      if ((SHIBYTE(v4->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_63;
    }
  }

LABEL_46:
  v23 = data[23];
  if (v23 < 0)
  {
    v24 = *data;
    v25 = *(data + 1);
  }

  else
  {
    v24 = data;
    v25 = data[23];
  }

  if (v25 <= v12)
  {
    goto LABEL_56;
  }

  v26 = v12;
  while (v26[v24] != 47)
  {
    if (v25 == ++v26)
    {
      goto LABEL_56;
    }
  }

  if (v25 == v26 || v26 == -1)
  {
LABEL_56:
    v26 = v7;
  }

  if ((v23 & 0x80000000) != 0)
  {
    data = *data;
  }

  std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v4, &data[v12], &v26[data], &v26[-v12]);
}

void boost::filesystem::path::iterator::decrement_v3(char **this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  v5 = this[3];
  v6 = v5[23];
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = v5;
    v5 = *v5;
    v6 = *(v7 + 1);
  }

  v34 = 0;
  v9 = *(v4 + 4);
  if (root_directory_start >= v6 || v9 != root_directory_start)
  {
    if (v6 >= 2 && v9 == v6)
    {
      v12 = *(v4 + 3);
      v13 = v6 - 1;
      v14 = v12;
      if (*(v12 + 23) < 0)
      {
        v14 = *v12;
      }

      if (v13[v14] == 47)
      {
        if (v13 >= root_directory_start)
        {
          v15 = root_directory_start;
        }

        else
        {
          v15 = v6 - 1;
        }

        if (*(v12 + 23) < 0)
        {
          v12 = *v12;
        }

        v16 = v12 - 2;
        while (1)
        {
          v17 = v6 - 1;
          if (v6 - 1 <= root_directory_start)
          {
            break;
          }

          v18 = (v6--)[v16];
          if (v18 != 47)
          {
            goto LABEL_25;
          }
        }

        v17 = v15;
LABEL_25:
        if (v17 != root_directory_start)
        {
          *(v4 + 4) = v13;

          return;
        }
      }
    }

    v19 = v34;
    v20 = v9 + 1;
    while (1)
    {
      v21 = v20 - 1;
      if ((v20 - 1) <= v34)
      {
        break;
      }

      if (v20 - root_directory_start == 2)
      {
        *(v4 + 4) = root_directory_start;
        if (*(v4 + 23) < 0)
        {
          *(v4 + 1) = 1;
          v4 = *v4;
        }

        else
        {
          *(v4 + 23) = 1;
        }

        *v4 = 47;
        return;
      }

      v22 = *(v4 + 3);
      v23 = v22;
      if (*(v22 + 23) < 0)
      {
        v23 = *v22;
      }

      v24 = (v20--)[v23 - 2];
      if (v24 != 47)
      {
        v25 = *v22;
        if (*(v22 + 23) >= 0)
        {
          v25 = *(v4 + 3);
        }

        v26 = v21 - 1;
        v27 = v21;
        while (1)
        {
          v28 = v27;
          if ((v26 + 1) <= v34)
          {
            break;
          }

          v29 = (v26--)[v25];
          --v27;
          if (v29 == 47)
          {
            v30 = (v26 + 2);
            goto LABEL_47;
          }
        }

        v30 = v34;
LABEL_47:
        *(v4 + 4) = v30;
        if (*(v22 + 23) < 0)
        {
          v22 = *v22;
        }

        if (v19 <= v28)
        {
          v19 = v28;
        }

        v32 = &v21[-v19];
        v31 = (v22 + v30);
        v33 = &v21[v22];
        goto LABEL_41;
      }
    }
  }

  *(v4 + 4) = 0;
  v31 = *(v4 + 3);
  if (v31[23] < 0)
  {
    v31 = *v31;
  }

  v32 = v34;
  v33 = &v31[v34];
LABEL_41:

  std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v4, v31, v33, v32);
}

void boost::filesystem::path::iterator::decrement_v4(char **this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  v5 = this[3];
  v6 = v5[23];
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = v5;
    v5 = *v5;
    v6 = *(v7 + 1);
  }

  v34 = 0;
  v9 = *(v4 + 4);
  if (root_directory_start >= v6 || v9 != root_directory_start)
  {
    if (v6 >= 2 && v9 == v6)
    {
      v12 = *(v4 + 3);
      v13 = v6 - 1;
      v14 = v12;
      if (*(v12 + 23) < 0)
      {
        v14 = *v12;
      }

      if (v13[v14] == 47)
      {
        if (v13 >= root_directory_start)
        {
          v15 = root_directory_start;
        }

        else
        {
          v15 = v6 - 1;
        }

        if (*(v12 + 23) < 0)
        {
          v12 = *v12;
        }

        v16 = v12 - 2;
        while (1)
        {
          v17 = v6 - 1;
          if (v6 - 1 <= root_directory_start)
          {
            break;
          }

          v18 = (v6--)[v16];
          if (v18 != 47)
          {
            goto LABEL_25;
          }
        }

        v17 = v15;
LABEL_25:
        if (v17 != root_directory_start)
        {
          *(v4 + 4) = v13;
          if (*(v4 + 23) < 0)
          {
            **v4 = 0;
            *(v4 + 1) = 0;
          }

          else
          {
            *v4 = 0;
            *(v4 + 23) = 0;
          }

          return;
        }
      }
    }

    v19 = v34;
    v20 = v9 + 1;
    while (1)
    {
      v21 = v20 - 1;
      if ((v20 - 1) <= v34)
      {
        break;
      }

      if (v20 - root_directory_start == 2)
      {
        *(v4 + 4) = root_directory_start;
        if (*(v4 + 23) < 0)
        {
          *(v4 + 1) = 1;
          v4 = *v4;
        }

        else
        {
          *(v4 + 23) = 1;
        }

        *v4 = 47;
        return;
      }

      v22 = *(v4 + 3);
      v23 = v22;
      if (*(v22 + 23) < 0)
      {
        v23 = *v22;
      }

      v24 = (v20--)[v23 - 2];
      if (v24 != 47)
      {
        v25 = *v22;
        if (*(v22 + 23) >= 0)
        {
          v25 = *(v4 + 3);
        }

        v26 = v21 - 1;
        v27 = v21;
        while (1)
        {
          v28 = v27;
          if ((v26 + 1) <= v34)
          {
            break;
          }

          v29 = (v26--)[v25];
          --v27;
          if (v29 == 47)
          {
            v30 = (v26 + 2);
            goto LABEL_47;
          }
        }

        v30 = v34;
LABEL_47:
        *(v4 + 4) = v30;
        if (*(v22 + 23) < 0)
        {
          v22 = *v22;
        }

        if (v19 <= v28)
        {
          v19 = v28;
        }

        v32 = &v21[-v19];
        v31 = (v22 + v30);
        v33 = &v21[v22];
        goto LABEL_41;
      }
    }
  }

  *(v4 + 4) = 0;
  v31 = *(v4 + 3);
  if (v31[23] < 0)
  {
    v31 = *v31;
  }

  v32 = v34;
  v33 = &v31[v34];
LABEL_41:

  std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v4, v31, v33, v32);
}

void anonymous namespace::path_locale_deleter::~path_locale_deleter(_anonymous_namespace_::path_locale_deleter *this)
{
  {
    operator delete(v1);
  }
}

const std::locale::facet *boost::filesystem::path::codecvt(boost::filesystem::path *this)
{
  if (!explicit)
  {
    explicit = operator new(8uLL);
    v3 = 0;
    if (v3)
    {
      std::locale::~locale(explicit);
      operator delete(v4);
      explicit = v3;
    }
  }

  return std::locale::use_facet(explicit, &std::codecvt<wchar_t,char,__mbstate_t>::id);
}

void boost::filesystem::path::imbue(const std::locale *this@<X0>, std::locale *a2@<X8>)
{
  v5 = operator new(8uLL);
  if (v6)
  {
    std::locale::locale(a2, v6);
    std::locale::~locale(v6);

    operator delete(v7);
  }

  else
  {
  }
}

void anonymous namespace::default_locale(std::locale *a1@<X8>)
{
  std::locale::locale(&v5);
  v3 = operator new(0x18uLL);
  boost::filesystem::detail::utf8_codecvt_facet::utf8_codecvt_facet(v3, 0);
  v4 = std::locale::id::__get(&std::codecvt<wchar_t,char,__mbstate_t>::id);
  std::locale::__install_ctor(a1, &v5, v3, v4);
  std::locale::~locale(&v5);
}

void sub_1001C76C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  operator delete(v10);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

std::string *std::pair<boost::filesystem::path::iterator,boost::filesystem::path::iterator>::pair[abi:ne200100]<boost::filesystem::path::iterator&,boost::filesystem::path::iterator&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    this[2].__r_.__value_.__l.__size_ = *(a3 + 2);
    *&this[1].__r_.__value_.__r.__words[2] = v7;
  }

  *&this[2].__r_.__value_.__r.__words[2] = *(a3 + 24);
  return this;
}

void sub_1001C7780(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t global constructor keyed to_032768()
{
}

std::codecvt<wchar_t, char, mbstate_t> *boost::filesystem::detail::utf8_codecvt_facet::utf8_codecvt_facet(std::codecvt<wchar_t, char, mbstate_t> *this, size_t a2)
{
  result = std::codecvt<wchar_t,char,__mbstate_t>::codecvt(this, a2);
  result->__vftable = off_1004C82C8;
  return result;
}

{
  result = std::codecvt<wchar_t,char,__mbstate_t>::codecvt(this, a2);
  result->__vftable = off_1004C82C8;
  return result;
}

void boost::filesystem::detail::utf8_codecvt_facet::~utf8_codecvt_facet(std::codecvt<wchar_t, char, mbstate_t> *this)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(this);

  operator delete(v1);
}

uint64_t boost::filesystem::detail::utf8_codecvt_facet::do_in(uint64_t a1, uint64_t a2, char *a3, unsigned __int8 *a4, char **a5, unsigned int *a6, unsigned int *a7, unsigned int **a8)
{
  if (a3 == a4 || a6 == a7)
  {
LABEL_30:
    *a5 = a3;
    *a8 = a6;
    return a3 != a4;
  }

  else
  {
    while (*a3 >= -64)
    {
      v8 = *a3;
      if (v8 >= 0xFE)
      {
        break;
      }

      if ((v8 & 0x80) != 0)
      {
        if ((v8 & 0xE0) == 0xC0)
        {
          v9 = 1;
        }

        else if ((v8 & 0xF0) == 0xE0)
        {
          v9 = 2;
        }

        else
        {
          if ((v8 & 0xFC) == 0xF8)
          {
            v10 = 4;
          }

          else
          {
            v10 = 5;
          }

          if ((v8 & 0xF8) == 0xF0)
          {
            v9 = 3;
          }

          else
          {
            v9 = v10;
          }
        }

        v8 -= boost::filesystem::detail::detail::get_octet1_modifier_table(void)::octet1_modifier_table[v9];
        if (++a3 != a4)
        {
          v11 = v9;
          v12 = 1;
          while (*a3 < -64)
          {
            v8 = *a3++ + (v8 << 6) - 128;
            v13 = v11 == v12;
            v14 = v11 != v12++;
            if (v13 || a3 == a4)
            {
              goto LABEL_27;
            }
          }

          break;
        }

        v12 = 1;
        v14 = 1;
LABEL_27:
        if (a3 == a4 && v14)
        {
          *a5 = &a3[-v12];
          *a8 = a6;
          return 1;
        }
      }

      else
      {
        ++a3;
      }

      *a6++ = v8;
      if (a3 == a4 || a6 == a7)
      {
        goto LABEL_30;
      }
    }

    *a5 = a3;
    *a8 = a6;
    return 2;
  }
}

BOOL boost::filesystem::detail::utf8_codecvt_facet::do_out(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int **a5, _BYTE *a6, _BYTE *a7, void *a8)
{
  if (a3 == a4 || a6 == a7)
  {
LABEL_31:
    *a5 = a3;
    *a8 = a6;
    return a3 != a4;
  }

  else
  {
    while (1)
    {
      v8 = *a3;
      if (*a3 >= 128)
      {
        if (v8 >= 0x800)
        {
          if (v8 >= 0x10000)
          {
            if (v8 >> 26)
            {
              v9 = 5;
            }

            else
            {
              v9 = 4;
            }

            if (v8 < 0x200000)
            {
              v9 = 3;
            }
          }

          else
          {
            v9 = 2;
          }
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }

      *a6++ = v8 / (1 << (6 * v9)) + LOBYTE(boost::filesystem::detail::detail::get_octet1_modifier_table(void)::octet1_modifier_table[v9]);
      v10 = v9 != 0;
      if (!v9 || a6 == a7)
      {
        v19 = 1;
      }

      else
      {
        v11 = 6 * v9 - 6;
        v12 = -1;
        do
        {
          v13 = *a3 / (1 << v11);
          v14 = v13 & 0x3F;
          v16 = -v13;
          v15 = v16 < 0;
          v17 = v16 & 0x3F;
          if (v15)
          {
            LOBYTE(v18) = v14;
          }

          else
          {
            v18 = -v17;
          }

          *a6++ = v18 ^ 0x80;
          v10 = v11 != 0;
          --v12;
          if (!v11)
          {
            break;
          }

          v11 -= 6;
        }

        while (a6 != a7);
        v19 = -v12;
      }

      if (a6 == a7 && v10)
      {
        break;
      }

      if (++a3 == a4 || a6 == a7)
      {
        goto LABEL_31;
      }
    }

    *a5 = a3;
    *a8 = &a6[-v19];
    return 1;
  }
}

uint64_t boost::filesystem::detail::utf8_codecvt_facet::get_cont_octet_out_count(unsigned int a1)
{
  if (a1 >> 26)
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 0x200000)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (a1 >= 0x10000)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (a1 >= 0x800)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a1 >= 128)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t boost::filesystem::detail::utf8_codecvt_facet::do_length(boost::filesystem::detail::utf8_codecvt_facet *this, __mbstate_t *a2, const char *a3, const char *a4, unint64_t a5)
{
  LODWORD(v5) = a3;
  if (a5)
  {
    LODWORD(v5) = a3;
    if (a3 < a4)
    {
      v6 = 1;
      v5 = a3;
      do
      {
        v7 = *v5;
        if (v7 < 0)
        {
          if ((v7 & 0xE0) == 0xC0)
          {
            v8 = 2;
          }

          else if ((v7 & 0xF0) == 0xE0)
          {
            v8 = 3;
          }

          else
          {
            v9 = v7 & 0xF8;
            if ((v7 & 0xFC) == 0xF8)
            {
              v8 = 5;
            }

            else
            {
              v8 = 6;
            }

            if (v9 == 240)
            {
              v8 = 4;
            }
          }
        }

        else
        {
          v8 = 1;
        }

        if (&a4[-v5] < v8)
        {
          break;
        }

        v5 += v8;
        if (v6 >= a5)
        {
          break;
        }

        ++v6;
      }

      while (v5 < a4);
    }
  }

  return (v5 - a3);
}

uint64_t boost::filesystem::detail::utf8_codecvt_facet::get_octet_count(boost::filesystem::detail::utf8_codecvt_facet *this)
{
  if ((this & 0xFC) == 0xF8)
  {
    v1 = 5;
  }

  else
  {
    v1 = 6;
  }

  if ((this & 0xF8) == 0xF0)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if ((this & 0xF0) == 0xE0)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if ((this & 0xE0) == 0xC0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if ((this & 0x80) != 0)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

const char *ot::Mac::rcp2_m154_status_string(ot::Mac *this)
{
  for (i = 0; i < 0x29u; ++i)
  {
    if (this == *(&ot::Mac::rcp2_m154_status_string_lookup_table + 16 * i))
    {
      return *(&ot::Mac::rcp2_m154_status_string_lookup_table + 2 * i + 1);
    }
  }

  return "UNRECOGNIZED";
}

void ot::Mac::Mac::LogVendorRCP2(ot::Mac::Mac *a1, ot::Mac::TxFrame *a2, const char *a3, unsigned __int8 a4, unsigned __int8 a5, int a6)
{
  v121 = a1;
  v120 = a2;
  v119 = a3;
  v118 = a4;
  v117 = a5;
  v116 = a6;
  v114 = a1;
  Rcp2FrameVersion = ot::Mac::TxFrame::GetRcp2FrameVersion(a2);
  if ((Rcp2FrameVersion - 2) <= 2)
  {
    v102 = v118;
    v103 = v117;
    v104 = 0.25 * ot::Mac::TxFrame::GetTxPower(v120);
    TxRetryCount = ot::Mac::TxFrame::GetTxRetryCount(v120);
    v106 = otThreadErrorToString(v116);
    v100 = v125;
    ot::Mac::Frame::ToInfoString(v120, v125);
    v107 = ot::String<(unsigned short)150>::AsCString(v125);
    v101 = 100;
    v108 = ot::Mac::Mac::GetCcaFailureRatePercent(v114) / 0x64;
    v109 = ot::Mac::Mac::GetCcaFailureRatePercent(v114) % 0x64;
    v110 = v119;
    v111 = ot::Mac::rcp2_m154_status_string(*(v120 + 57));
    v112 = *(v120 + 57);
    v113 = &v43;
    v44 = v117;
    v45 = v104;
    v46 = TxRetryCount;
    v47 = v106;
    v48 = v107;
    v49 = v108;
    v50 = v109;
    v51 = v119;
    v52 = v111;
    v53 = v112;
    Antenna = ot::Mac::TxFrame::GetAntenna(v120);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Mac", "Frame tx attempt %d/%d failed, txPower=%f, retryCount=%d, error:%s, %s, ccaFailureRate:%d.%02d%%%s, RCP2Status=%s (0x%02X) antenna=%d", v118, v6, v7, v8, v9, v10, v118);
    goto LABEL_6;
  }

  if (Rcp2FrameVersion == 5)
  {
LABEL_6:
    v87 = v118;
    v88 = v117;
    v89 = 0.25 * ot::Mac::TxFrame::GetTxPower(v120);
    v90 = ot::Mac::TxFrame::GetTxRetryCount(v120);
    v91 = otThreadErrorToString(v116);
    v85 = v124;
    ot::Mac::Frame::ToInfoString(v120, v124);
    v92 = ot::String<(unsigned short)150>::AsCString(v85);
    CcaFailureRatePercent = ot::Mac::Mac::GetCcaFailureRatePercent(v114);
    v86 = 100;
    v93 = CcaFailureRatePercent / 0x64;
    v12 = ot::Mac::Mac::GetCcaFailureRatePercent(v114);
    v94 = v12 % v86;
    v95 = v119;
    v96 = ot::Mac::rcp2_m154_status_string(*(v120 + 57));
    v97 = *(v120 + 57);
    v98 = ot::Mac::TxFrame::GetAntenna(v120);
    PcapMode = ot::Mac::TxFrame::GetPcapMode(v120);
    v99 = &v43;
    v44 = v88;
    v45 = v89;
    v46 = v90;
    v47 = v91;
    v48 = v92;
    v49 = v93;
    v50 = v94;
    v51 = v95;
    v52 = v96;
    v53 = v97;
    Antenna = v98;
    v55 = PcapMode;
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Mac", "Frame tx attempt %d/%d failed, txPower=%f, retryCount=%d, error:%s, %s, ccaFailureRate:%d.%02d%%%s, RCP2Status=%s (0x%02X) antenna=%d, pcap mode=%d", v88, v87, v14, v15, v16, v17, v87);
    v18 = ot::Mac::TxFrame::GetPcapMode(v120);
    ot::Mac::Mac::UpdatePcapStats(v114, v18, v19, v20, v21, v22, v23, v24);
    return;
  }

  if (Rcp2FrameVersion == 6)
  {
    v71 = v118;
    v72 = v117;
    v73 = 0.25 * ot::Mac::TxFrame::GetTxPower(v120);
    v74 = ot::Mac::TxFrame::GetTxRetryCount(v120);
    v75 = otThreadErrorToString(v116);
    RCPTimeStamp = ot::Mac::TxFrame::GetRCPTimeStamp(v120);
    v69 = v123;
    ot::Mac::Frame::ToInfoString(v120, v123);
    v77 = ot::String<(unsigned short)150>::AsCString(v123);
    v70 = 100;
    v78 = ot::Mac::Mac::GetCcaFailureRatePercent(v114) / 0x64;
    v79 = ot::Mac::Mac::GetCcaFailureRatePercent(v114) % 0x64;
    v80 = v119;
    v81 = ot::Mac::rcp2_m154_status_string(*(v120 + 57));
    v82 = *(v120 + 57);
    v83 = ot::Mac::TxFrame::GetAntenna(v120);
    v84 = &v43;
    v44 = v117;
    v45 = v73;
    v46 = v74;
    v47 = v75;
    v48 = RCPTimeStamp;
    v49 = v77;
    v50 = v78;
    v51 = v79;
    v52 = v119;
    v53 = v81;
    Antenna = v82;
    v55 = v83;
    v56 = ot::Mac::TxFrame::GetPcapMode(v120);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Mac", "Frame tx attempt %d/%d failed, txPower=%f, retryCount=%d, error:%s, rcpTs:%u, %s, ccaFailureRate:%d.%02d%%%s, RCP2Status=%s (0x%02X) antenna=%d, pcap mode=%d", v74, v117, v118, v25, v26, v27, v118);
    v28 = ot::Mac::TxFrame::GetPcapMode(v120);
    ot::Mac::Mac::UpdatePcapStats(v114, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    v59 = v118;
    v60 = v117;
    v61 = 0.25 * ot::Mac::TxFrame::GetTxPower(v120);
    v62 = ot::Mac::TxFrame::GetTxRetryCount(v120);
    v63 = otThreadErrorToString(v116);
    v57 = v122;
    ot::Mac::Frame::ToInfoString(v120, v122);
    v64 = ot::String<(unsigned short)150>::AsCString(v122);
    v58 = 100;
    v65 = ot::Mac::Mac::GetCcaFailureRatePercent(v114) / 0x64;
    v66 = ot::Mac::Mac::GetCcaFailureRatePercent(v114) % 0x64;
    v67 = v119;
    v35 = ot::Mac::rcp2_m154_status_string(*(v120 + 57));
    v36 = *(v120 + 57);
    v68 = &v43;
    v44 = v117;
    v45 = v61;
    v46 = v62;
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v50 = v66;
    v51 = v119;
    v52 = v35;
    v53 = v36;
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Mac", "Frame tx attempt %d/%d failed, txPower=%f, retryCount=%d, error:%s, %s, ccaFailureRate:%d.%02d%%%s, RCP2Status=%s (0x%02X)", v37, v38, v39, v40, v41, v42, v118);
  }
}

uint64_t ot::Mac::TxFrame::GetRcp2FrameVersion(ot::Mac::TxFrame *this)
{
  return *(this + 56);
}

{
  return ot::Mac::TxFrame::GetRcp2FrameVersion(this);
}

uint64_t ot::Mac::TxFrame::GetTxPower(ot::Mac::TxFrame *this)
{
  return *(this + 44);
}

{
  return ot::Mac::TxFrame::GetTxPower(this);
}

uint64_t ot::Mac::TxFrame::GetTxRetryCount(ot::Mac::TxFrame *this)
{
  return *(this + 42);
}

{
  return ot::Mac::TxFrame::GetTxRetryCount(this);
}

uint64_t ot::String<(unsigned short)150>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)150>::AsCString(a1);
}

uint64_t ot::Mac::Mac::GetCcaFailureRatePercent(ot::Mac::Mac *this)
{
  return ot::SuccessRateTracker::GetFailureRatePercent((this + 524));
}

{
  return ot::Mac::Mac::GetCcaFailureRatePercent(this);
}

uint64_t ot::Mac::TxFrame::GetAntenna(ot::Mac::TxFrame *this)
{
  return *(this + 46);
}

{
  return ot::Mac::TxFrame::GetAntenna(this);
}

uint64_t ot::Mac::TxFrame::GetPcapMode(ot::Mac::TxFrame *this)
{
  return *(this + 58);
}

{
  return ot::Mac::TxFrame::GetPcapMode(this);
}

uint64_t ot::Mac::TxFrame::GetRCPTimeStamp(ot::Mac::TxFrame *this)
{
  return *(this + 15);
}

{
  return ot::Mac::TxFrame::GetRCPTimeStamp(this);
}

uint64_t ot::SuccessRateTracker::GetFailureRatePercent(ot::SuccessRateTracker *this)
{
  return (10000 * *this / 0xFFFF);
}

{
  return ot::SuccessRateTracker::GetFailureRatePercent(this);
}

uint64_t ot::Spinel::RadioSpinel::GetVendorRFState(ot::Spinel::RadioSpinel *this, void (*a2)(unsigned __int8, unsigned __int8 *, void *), uint64_t a3)
{
  v7 = this;
  v6 = a2;
  v5 = a3;
  v4 = ot::Spinel::RadioSpinel::Set(this, 15538, "L", 0);
  ot::Spinel::mRFStateCallback = v6;
  ot::Spinel::mRFStateContext = v5;
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorDutyCycle(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 15395, "LLbb", a2, a2 + 4, a2 + 8, a2 + 9);
  ot::Spinel::Logger::LogIfFail1(a1, "Get Duty Cycle failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorRxOnIdleUseQOSPercentagePolicyConfig(ot::Spinel::RadioSpinel *this, BOOL *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15396, "b", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get Vendor RX_ON_IDLE_USE_QOS_PERCENTAGE_POLICY Config", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetTimelineLogLevel(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15516, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get Timeline log level failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexCollectionDuration(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15517, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get Coex Collection Duration failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexCounter(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 15518, "t(CSSSSSSSSSSSSS)", a2, a2 + 1, a2 + 3, a2 + 5, a2 + 7, a2 + 9, a2 + 11, a2 + 13, a2 + 15, a2 + 17, a2 + 19, a2 + 21, a2 + 23, a2 + 25);
  ot::Spinel::Logger::LogIfFail1(a1, "Get Coex Counters failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexStateEvent(const char **this, void (*a2)(unsigned __int8, unsigned __int8 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  otLogInfoPlat("%s: success go to GetVendorCoexStateEvent", a2, a3, a4, a5, a6, a7, a8, "GetVendorCoexStateEvent");
  ot::Spinel::mCoexStateCallback = a2;
  ot::Spinel::Logger::LogIfFail1(this, "Get Coex State Event failed", 0);
  return 0;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorDutyCycle(ot::Spinel::RadioSpinel *this, unsigned int a2, unsigned int a3, char a4)
{
  v6 = ot::Spinel::RadioSpinel::Set(this, 0x3C23u, "LLbb", a2, a3, 0, a4 & 1);
  ot::Spinel::Logger::LogIfFail1(this, "Set Duty Cycle failed", v6);
  return v6;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorRxOnIdleUseQOSPercentagePolicyConfig(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C24u, "b", a2 & 1);
  ot::Spinel::Logger::LogIfFail1(this, "Set Vendor RX_ON_IDLE_USE_QOS_PERCENTAGE_POLICY Config", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetTimelineLogLevel(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15516, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set Timeline log level failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexCollectionDuration(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15517, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set Coex Collection Duration failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexCollection(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15518, "b", a2 & 1);
  ot::Spinel::Logger::LogIfFail1(this, "Set Coex Collection failed", v4);
  return v4;
}

uint64_t otPlatVendorGetRFState(uint64_t a1, void (*a2)(unsigned __int8, unsigned __int8 *, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  otLogInfoPlat("otPlatVendorGetRFState", a2, a3, a4, a5, a6, a7, a8, v10);
  RadioSpinel = ot::Posix::Radio::GetRadioSpinel(&sRadio);
  return ot::Spinel::RadioSpinel::GetVendorRFState(RadioSpinel, a2, a3);
}

uint64_t otPlatVendorSetDutyCycle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a2;
  v12 = a3;
  v11 = a4;
  if (!a2)
  {
    goto LABEL_13;
  }

  if (!(a2 % 0x4E2) && a2 >= 0x4E2 && a2 <= 0x493E)
  {
    if (a3 % 0x3A98 || a3 < 0x3A98 || a3 > 0xE6B68)
    {
      otLogInfoPlat("BT Load: Invalid interval time! y value should be MULTIPLE of 15000us and max value can be 63*15000=945000.", a2, a3, a4, a5, a6, a7, a8, v10);
      return 7;
    }

    if (a3 < a2 || (a3 - a2) < 0x64)
    {
      otLogInfoPlat("BT Load: Invalid Input! Requirement: X < Y and Y - X > 100", a2, a3, a4, a5, a6, a7, a8, v10);
      return 7;
    }

LABEL_13:
    RadioSpinel = ot::Posix::Radio::GetRadioSpinel(&sRadio);
    return ot::Spinel::RadioSpinel::SetVendorDutyCycle(RadioSpinel, v13, v12, v11 & 1);
  }

  otLogInfoPlat("BT Load: Invalid high duty time! x value should be MULTIPLE of 1250us and max value can be 15*1250=18750.", a2, a3, a4, a5, a6, a7, a8, v10);
  return 7;
}

uint64_t ot::Cli::Interpreter::Process<27894625410694749ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  ot::Cli::Utils::GetInstancePtr((a1 + 16));
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "This command is not applicable to this platform");
  }

  else if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetVendorRFState((a1 + 432), a2);
  }

  return v4;
}

uint64_t ot::Cli::Utils::GetInstancePtr(ot::Cli::Utils *this)
{
  return *this;
}

{
  return ot::Cli::Utils::GetInstancePtr(this);
}

BOOL ot::Utils::CmdLineParser::Arg::IsEmpty(ot::Utils::CmdLineParser::Arg *this)
{
  return *this == 0;
}

{
  return ot::Utils::CmdLineParser::Arg::IsEmpty(this);
}

uint64_t ot::Cli::Interpreter::Process<5506771640909644592ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v5 = 0;
  ot::Cli::Utils::GetInstancePtr((a1 + 16));
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "This command is not applicable to this platform");
  }

  else if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetDutyCycle((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetDutyCycle((a1 + 432), a2, v2);
  }

  return v5;
}

uint64_t ot::Cli::Interpreter::Process<10542062831847721859ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  ot::Cli::Utils::GetInstancePtr((a1 + 16));
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "This command is not applicable to this platform");
  }

  else if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetTimelineLogLevel((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetTimelineLogLevel((a1 + 432), a2);
  }

  return v4;
}

uint64_t ot::Cli::Interpreter::Process<2720438644259256559ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v5 = 0;
  ot::Cli::Utils::GetInstancePtr((a1 + 16));
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "This command is not applicable to this platform");
  }

  else if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetCoexCollectionDuration((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetCoexCollectionDuration((a1 + 432), a2, v2);
  }

  return v5;
}

uint64_t ot::Cli::Interpreter::Process<15578538707854125405ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v5 = 0;
  ot::Cli::Utils::GetInstancePtr((a1 + 16));
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "This command is not applicable to this platform");
  }

  else if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetCoexCounter((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetCoexCollection((a1 + 432), a2, v2);
  }

  return v5;
}

uint64_t ot::Cli::Vendor::HandleRFStateReply(ot::Cli::Vendor *this, unsigned __int8 a2, unsigned __int8 *a3)
{
  v3 = "ON";
  if (a3[4])
  {
    v4 = "ON";
  }

  else
  {
    v4 = "OFF";
  }

  v23 = v4;
  if (!a3[8])
  {
    v3 = "OFF";
  }

  v24 = v3;
  if (a3[9])
  {
    v22 = "HEAD";
  }

  else
  {
    v22 = "BODY";
  }

  v5 = a3[7];
  v6 = a3[6];
  v7 = a3[5];
  v8 = a3[10];
  v9 = a3[11];
  v10 = a3[12];
  v11 = a3[13];
  v12 = a3[14];
  v13 = a3[15];
  v14 = a3[20];
  v15 = a3[21];
  v16 = "ON";
  if (a3[24])
  {
    v17 = "ON";
  }

  else
  {
    v17 = "OFF";
  }

  if (a3[25])
  {
    v18 = "ON";
  }

  else
  {
    v18 = "OFF";
  }

  if (a3[26])
  {
    v19 = "ON";
  }

  else
  {
    v19 = "OFF";
  }

  if (a3[29])
  {
    v20 = "ON";
  }

  else
  {
    v20 = "OFF";
  }

  if (((a3[29] >> 1) & 1) == 0)
  {
    v16 = "OFF";
  }

  return ot::Cli::Utils::OutputLine(this, "  cell_ant:%s,\n                   cell_ant_val:%d \n                   pcap:%d \n                   bt_ant_Val:%d \n                   wifi_5g_state:%s \n                   head_body:%s \n                   mode:%d \n                   current_cc:%d \n                   epa_status_ant[0~3]:%d %d %d %d \n                   target_power_ant[0~3]:%2.2f %2.2f %2.2f %2.2f \n                   rstrain_status:%d \n                   coex_operating_mode:%d \n                   mrc_status:%d \n                   band_code:%d  \n                   wifi_2g_state:%s \n                   rc1_state: %s \n                   bt_status:%s \n                   default_ant:%d \n                   current_ant:%d \n                   tpc:%s \n                   antenna_diversity:%s \n", v23, v7, v6, v5, v24, v22, v8, v9, v10, v11, v12, v13, a3[16] / 4.0, a3[17] / 4.0, a3[18] / 4.0, a3[19] / 4.0, v14, v15, a3[22], a3[23], v17, v18, v19, a3[27], a3[28], v20, v16);
}

uint64_t ot::Cli::Vendor::ProcessGetDutyCycle(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = this;
  v8 = a2;
  DutyCycle = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  DutyCycle = otPlatVendorGetDutyCycle(InstancePtr, v5);
  if (!DutyCycle)
  {
    ot::Cli::Utils::OutputLine(this, "High Duty = %uus, Interval = %uus, Datapoll Align is %d", v5[0], v5[1], v6 & 1);
  }

  return DutyCycle;
}

uint64_t ot::Cli::Vendor::ProcessGetTimelineLogLevel(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  TimelineLogLevel = 0;
  ot::Cli::Utils::GetInstancePtr(this);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    ot::Cli::Utils::OutputLine(this, "This command is not applicable to this platform");
  }

  else
  {
    v5 = 0;
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    TimelineLogLevel = otPlatVendorGetTimelineLogLevel(InstancePtr, &v5);
    if (!TimelineLogLevel)
    {
      ot::Cli::Utils::OutputLine(this, "Timeline log level = %u", v5);
    }
  }

  return TimelineLogLevel;
}

uint64_t ot::Cli::Vendor::ProcessGetCoexCollectionDuration(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  CoexCollectionDuration = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  CoexCollectionDuration = otPlatVendorGetCoexCollectionDuration(InstancePtr, &v5);
  if (!CoexCollectionDuration)
  {
    ot::Cli::Utils::OutputLine(this, "Coex State Duration is %d", v5);
  }

  return CoexCollectionDuration;
}

uint64_t ot::Cli::Vendor::ProcessGetCoexCounter(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v22 = this;
  v21 = a2;
  v5 = this;
  v20 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  if (!otPlatVendorGetCoexCounter(InstancePtr, &v6))
  {
    v4[15] = &v6;
    v4[16] = v4;
    ot::Cli::Utils::OutputLine(v5, "coex state is:\n\t\t\t\trssi_average:%d \n\t\t\t\tnum_of_tx_req:%d \n\t\t\t\tnum_of_rtx:%d \n\t\t\t\tnum_of_tx_granted:%d \n\t\t\t\tnum_of_tx_cca_failed:%d \n\t\t\t\tnum_of_tx_acked_packets:%d \n\t\t\t\taverage_backoff_time:%d \n\t\t\t\taverage_tx_power:%d \n\t\t\t\tnum_of_rx_granted:%d \n\t\t\t\tnum_of_rx_granted_ack:%d \n\t\t\t\tnum_of_good_rx:%d \n\t\t\t\tnum_of_rx_sync_TO:%d \n\t\t\t\tnum_of_rx_granted_WIFI:%d \n\t\t\t\tnum_of_rx_granted_ack_WIFI:%d \n", v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  }

  return v20;
}

uint64_t ot::Cli::Vendor::ProcessSetDutyCycle(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v17 = this;
  v16 = a2;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v15 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(a2, &v14, a3);
  if (!v15)
  {
    if (!v14)
    {
      ot::Cli::Utils::OutputLine(this, "Disable Duty Cycle functionality");
LABEL_7:
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      return otPlatVendorSetDutyCycle(InstancePtr, v14, v13, v12, v6, v7, v8, v9);
    }

    v15 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v16 + 1, &v13, v3);
    if (!v15)
    {
      v15 = ot::Utils::CmdLineParser::Arg::ParseAsBool(v16 + 2, &v12, v4);
      if (!v15)
      {
        ot::Cli::Utils::OutputLine(this, "Set high duty = %uus, interval = %uus, datapullalign = %u", v14, v13, v12);
        goto LABEL_7;
      }
    }
  }

  return v15;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsUint32(ot::Utils::CmdLineParser **this, char *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::ParseAsUint32(*this, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsUint32(this, a2, a3);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsBool(ot::Utils::CmdLineParser **this, BOOL *a2, BOOL *a3)
{
  return ot::Utils::CmdLineParser::ParseAsBool(*this, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsBool(this, a2, a3);
}

uint64_t ot::Cli::Vendor::ProcessSetTimelineLogLevel(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  ot::Cli::Utils::GetInstancePtr(this);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    ot::Cli::Utils::OutputLine(this, "This command is not applicable to this platform");
  }

  else
  {
    v6 = 0;
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetTimelineLogLevel(InstancePtr, v6);
      if (!v7)
      {
        persist_timelinelog_level();
      }
    }
  }

  return v7;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsUint8(ot::Utils::CmdLineParser **this, char *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::ParseAsUint8(*this, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsUint8(this, a2, a3);
}

uint64_t ot::Cli::Vendor::ProcessSetCoexCollectionDuration(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(a2, &v6, a3);
  if (!v7)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    v7 = otPlatVendorSetCoexCollectionDuration(InstancePtr, v6);
    if (!v7)
    {
      if (v6)
      {
        ot::Cli::Utils::OutputLine(this, "Set Coex State Duration as %d msec", v6);
      }

      else
      {
        ot::Cli::Utils::OutputLine(this, "Disable Coex State report");
      }
    }
  }

  return v7;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsUint16(ot::Utils::CmdLineParser **this, char *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::ParseAsUint16(*this, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsUint16(this, a2, a3);
}

uint64_t ot::Cli::Vendor::ProcessSetCoexCollection(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, BOOL *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v7 = ot::Utils::CmdLineParser::Arg::ParseAsBool(a2, &v6, a3);
  if (!v7)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    v7 = otPlatVendorResetOrStopCoexCollection(InstancePtr, v6);
    if (!v7)
    {
      ot::Cli::Utils::OutputLine(this, "Set Set Coex Collection as %u", v6);
    }
  }

  return v7;
}

void sub_1001CA040(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001CB024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void xpc::dict::object_proxy::operator=(uint64_t a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v6 = xpc::dict::operator*(*a1);
  v7 = *(a1 + 8);
  v8 = *a2;
  xpc_dictionary_set_value(v6, v7, v8);

  *a3 = *a2;
  v9 = xpc_null_create();
  v10 = *a2;
  *a2 = v9;
}

void sub_1001CBB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, id location, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (a40)
  {
    (*(*a40 + 8))(a40);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001CD5C8(_Unwind_Exception *a1)
{
  operator delete(v2);
  v6 = *(v4 - 208);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  objc_destroyWeak((v4 - 200));
  _Unwind_Resume(a1);
}

void sub_1001CDD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, id location)
{
  operator delete(v27);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001CE3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  operator delete(v27);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001CE728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33)
{
  v40 = v34;

  objc_destroyWeak((v38 + 32));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  objc_destroyWeak((v37 + 32));
  objc_destroyWeak((v36 + 32));

  objc_destroyWeak((v39 - 88));
  _Unwind_Resume(a1);
}

void sub_1001CEC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::any_cast<unsigned char>(void *a1)
{
  v1 = boost::any_cast<unsigned char>(a1);
  if (!v1)
  {
    v3.__vftable = 0;
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  return *v1;
}

void sub_1001CF368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  objc_destroyWeak((v36 - 72));
  _Unwind_Resume(a1);
}

void sub_1001CF4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001CFD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, id location)
{
  v38 = v37;

  operator delete(v36);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a34)
  {
    (*(*a34 + 8))(a34);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D0298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, id location, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (v38 < 0)
  {
    operator delete(v36);
  }

  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D0B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, id location, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (a28)
  {
    (*(*a28 + 8))(a28);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D154C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (*(v66 - 89) < 0)
  {
    operator delete(*(v66 - 112));
  }

  v68 = *(v66 - 184);
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  v69 = *(v66 - 176);
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  if (v65 < 0)
  {
    operator delete(v64);
  }

  objc_destroyWeak((v66 - 168));
  _Unwind_Resume(a1);
}

void sub_1001D2218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  v44 = *(v42 - 96);
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  objc_destroyWeak((v42 - 88));
  _Unwind_Resume(a1);
}

void sub_1001D2A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v55 - 121) < 0)
  {
    operator delete(*(v55 - 144));
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v55 - 184, *(v55 - 176));

  objc_destroyWeak((v55 - 160));
  _Unwind_Resume(a1);
}

void sub_1001D2E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  objc_destroyWeak((v22 - 24));
  _Unwind_Resume(a1);
}

void sub_1001D354C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1001D38F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D3F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, id location)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}